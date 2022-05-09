; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.hal_com_data = type { %struct.hal_version, i32, i32, i32, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i16, i16, i32, i8, i8, i8, i8, i8, i32, i8, [4 x i8], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, %struct.efuse_hal, [4 x [14 x i8]], [4 x [14 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], i8, i8, i8, i8, i8, [2 x [84 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [4 x [2 x [3 x [14 x [2 x i8]]]]], [2 x [3 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], i8, i8, i8, i8, i8, i8, i8, [13 x [16 x i32]], i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x %struct.bb_register_def], [2 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, %struct.submit_ctx, i32, i32, i32, [4 x i8], %struct.spinlock, i8, i8, i8, i16, [3 x i32], %struct.dm_priv, %struct.dm_odm_t, %struct.bt_coexist, i32, i32 }
%struct.hal_version = type { i32, i32, i32, i32, i8 }
%struct.efuse_hal = type { i8, i32, [512 x i8], [512 x i8], [512 x i8], i16, i8, [3 x [512 x i8]], [1024 x i8], [1024 x i8], i16, [3 x [512 x i8]], [1024 x i8], [1024 x i8] }
%struct.bb_register_def = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_priv = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, [2 x [2 x i32]], i8, i8, i8, i8, i8, [16 x i32], [4 x i32], [9 x i32], [9 x i32], [6 x i8], [2 x i8], i8, i8, i8, i8, [2 x i8], [8 x i8], i8, i32, i32, i32, i32, i32, i32, [32 x i8] }
%struct.bt_coexist = type { i8, i8, i8, i8 }
%struct.txpwrtrack_cfg = type { i8, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@OFDMSwingTable_New = external dso_local local_unnamed_addr global [43 x i32], align 4
@CCKSwingTable_Ch1_Ch13_New = external dso_local local_unnamed_addr global [33 x [8 x i8]], align 1
@CCKSwingTable_Ch14_New = external dso_local local_unnamed_addr global [33 x [8 x i8]], align 1
@DeltaSwingTableIdx_2GA_P_8188E = internal global { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\00\00\01\01\02\02\03\03\04\04\04\04\04\04\04\04\05\05\07\07\08\08\08\09\09\09\09\09", [34 x i8] zeroinitializer }, align 32
@DeltaSwingTableIdx_2GA_N_8188E = internal global { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\00\02\02\03\03\04\04\04\04\05\05\06\06\07\07\07\07\08\08\09\09\0A\0A\0A\0B\0B\0B\0B", [34 x i8] zeroinitializer }, align 32
@__const.phy_IQCalibrate_8723B.ADDA_REG = private unnamed_addr constant [16 x i32] [i32 2140, i32 3692, i32 3696, i32 3700, i32 3704, i32 3708, i32 3712, i32 3716, i32 3720, i32 3724, i32 3792, i32 3796, i32 3800, i32 3804, i32 3808, i32 3820], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@___asan_gen_.5 = private unnamed_addr constant [31 x i8] c"DeltaSwingTableIdx_2GA_P_8188E\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 34, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [31 x i8] c"DeltaSwingTableIdx_2GA_N_8188E\00", align 1
@___asan_gen_.9 = private constant [50 x i8] c"../drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 30, i32 11 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @DeltaSwingTableIdx_2GA_P_8188E, ptr @DeltaSwingTableIdx_2GA_N_8188E], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DeltaSwingTableIdx_2GA_P_8188E to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DeltaSwingTableIdx_2GA_N_8188E to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @DoIQK_8723B(ptr nocapture %pDM_Odm, i8 zeroext %DeltaThermalIndex, i8 zeroext %ThermalValue, i8 zeroext %Threshold) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_TxPwrTrackSetPwr_8723B(ptr noundef %pDM_Odm, i32 noundef %Method, i8 noundef zeroext %RFPath, i8 noundef zeroext %ChannelMappedIndex) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_Odm, align 8
  %HalData = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %HalData, align 8
  %pForcedDataRate = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 58
  %4 = ptrtoint ptr %pForcedDataRate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pForcedDataRate, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %TxRate2 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 81
  %8 = ptrtoint ptr %TxRate2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %TxRate2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp.not = icmp eq i8 %9, -1
  br i1 %cmp.not, label %if.then.if.end67_crit_edge, label %if.then4

if.then.if.end67_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call zeroext i8 @HwRateToMRate(i8 noundef zeroext %9) #8
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv6 = trunc i16 %7 to i8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %TxRate.0 = phi i8 [ %conv6, %if.else ], [ %call, %if.then4 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %TxRate.0)
  %cmp9.not = icmp eq i8 %TxRate.0, -1
  %10 = add i8 %TxRate.0, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %10)
  %11 = icmp ult i8 %10, 21
  %or.cond = or i1 %cmp9.not, %11
  br i1 %or.cond, label %if.end7.if.end67_crit_edge, label %if.else19

if.end7.if.end67_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.else19:                                        ; preds = %if.end7
  %12 = add i8 %TxRate.0, -12
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %12)
  %13 = icmp ult i8 %12, 85
  br i1 %13, label %if.else19.if.end67_crit_edge, label %if.else28

if.else19.if.end67_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.else28:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %TxRate.0)
  %cmp30 = icmp eq i8 %TxRate.0, 108
  br i1 %cmp30, label %if.else28.if.end67_crit_edge, label %if.else33

if.else28.if.end67_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.else33:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %TxRate.0)
  %14 = icmp slt i8 %TxRate.0, -125
  br i1 %14, label %if.else33.if.end67_crit_edge, label %if.else42

if.else33.if.end67_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.else42:                                        ; preds = %if.else33
  %15 = add i8 %TxRate.0, 125
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %16 = icmp ult i8 %15, 2
  br i1 %16, label %if.else42.if.end67_crit_edge, label %if.else51

if.else42.if.end67_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.else51:                                        ; preds = %if.else42
  %17 = add i8 %TxRate.0, 123
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %18 = icmp ult i8 %17, 3
  br i1 %18, label %if.else51.if.end67_crit_edge, label %if.else60

if.else51.if.end67_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.else60:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #10
  %DefaultOfdmIndex = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 165
  %19 = ptrtoint ptr %DefaultOfdmIndex to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %DefaultOfdmIndex, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.else60, %if.else51.if.end67_crit_edge, %if.else42.if.end67_crit_edge, %if.else33.if.end67_crit_edge, %if.else28.if.end67_crit_edge, %if.else19.if.end67_crit_edge, %if.end7.if.end67_crit_edge, %if.then.if.end67_crit_edge
  %PwrTrackingLimit_OFDM.0 = phi i8 [ %20, %if.else60 ], [ 34, %if.end7.if.end67_crit_edge ], [ 36, %if.else19.if.end67_crit_edge ], [ 34, %if.else28.if.end67_crit_edge ], [ 38, %if.else33.if.end67_crit_edge ], [ 36, %if.else42.if.end67_crit_edge ], [ 34, %if.else51.if.end67_crit_edge ], [ 34, %if.then.if.end67_crit_edge ]
  %21 = zext i32 %Method to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %Method, label %if.end67.cleanup_crit_edge [
    i32 1, label %if.then70
    i32 0, label %if.then80
    i32 2, label %if.then132
  ]

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pDM_Odm, align 8
  %idxprom = zext i8 %RFPath to i32
  %arrayidx = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 168, i32 %idxprom
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  %arrayidx74 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 169, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx74, align 1
  %Modify_TxAGC_Flag_PathA = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 172
  %27 = ptrtoint ptr %Modify_TxAGC_Flag_PathA to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %Modify_TxAGC_Flag_PathA, align 2
  %Modify_TxAGC_Flag_PathA_CCK = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 176
  %28 = ptrtoint ptr %Modify_TxAGC_Flag_PathA_CCK to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %Modify_TxAGC_Flag_PathA_CCK, align 2
  %CurrentChannel = getelementptr inbounds %struct.hal_com_data, ptr %3, i32 0, i32 10
  %29 = ptrtoint ptr %CurrentChannel to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %CurrentChannel, align 8
  tail call void @PHY_SetTxPowerIndexByRateSection(ptr noundef %23, i8 noundef zeroext %RFPath, i8 noundef zeroext %30, i8 noundef zeroext 0) #8
  %31 = ptrtoint ptr %CurrentChannel to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %CurrentChannel, align 8
  tail call void @PHY_SetTxPowerIndexByRateSection(ptr noundef %23, i8 noundef zeroext %RFPath, i8 noundef zeroext %32, i8 noundef zeroext 1) #8
  %33 = ptrtoint ptr %CurrentChannel to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %CurrentChannel, align 8
  tail call void @PHY_SetTxPowerIndexByRateSection(ptr noundef %23, i8 noundef zeroext %RFPath, i8 noundef zeroext %34, i8 noundef zeroext 2) #8
  br label %cleanup

if.then80:                                        ; preds = %if.end67
  %DefaultOfdmIndex81 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 165
  %35 = ptrtoint ptr %DefaultOfdmIndex81 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %DefaultOfdmIndex81, align 1
  %idxprom84 = zext i8 %RFPath to i32
  %arrayidx85 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 168, i32 %idxprom84
  %37 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx85, align 1
  %add = add i8 %38, %36
  %DefaultCckIndex = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 166
  %39 = ptrtoint ptr %DefaultCckIndex to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %DefaultCckIndex, align 2
  %add93 = add i8 %40, %38
  %41 = tail call i8 @llvm.umin.i8(i8 %add, i8 %PwrTrackingLimit_OFDM.0)
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %add93)
  %cmp108 = icmp ugt i8 %add93, 32
  br i1 %cmp108, label %if.then80.if.end117_crit_edge, label %if.else111

if.then80.if.end117_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.else111:                                       ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  %BbSwingIdxCck = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 162
  %42 = ptrtoint ptr %BbSwingIdxCck to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %BbSwingIdxCck, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp113 = icmp eq i8 %43, 0
  %spec.select = select i1 %cmp113, i8 0, i8 %add93
  br label %if.end117

if.end117:                                        ; preds = %if.else111, %if.then80.if.end117_crit_edge
  %Final_CCK_Swing_Index.0 = phi i8 [ 32, %if.then80.if.end117_crit_edge ], [ %spec.select, %if.else111 ]
  %idxprom118 = zext i8 %ChannelMappedIndex to i32
  %Value = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 34, i32 %idxprom118, i32 1
  %44 = ptrtoint ptr %Value to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %Value, align 4
  %arrayidx128 = getelementptr [8 x i32], ptr %Value, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx128, align 4
  tail call fastcc void @setIqkMatrix_8723B(ptr noundef %pDM_Odm, i8 noundef zeroext %41, i8 noundef zeroext %RFPath, i32 noundef %45, i32 noundef %47)
  tail call fastcc void @setCCKFilterCoefficient(ptr noundef %pDM_Odm, i8 noundef zeroext %Final_CCK_Swing_Index.0)
  br label %cleanup

if.then132:                                       ; preds = %if.end67
  %DefaultOfdmIndex133 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 165
  %48 = ptrtoint ptr %DefaultOfdmIndex133 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %DefaultOfdmIndex133, align 1
  %idxprom136 = zext i8 %RFPath to i32
  %arrayidx137 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 168, i32 %idxprom136
  %50 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx137, align 1
  %add139 = add i8 %51, %49
  %DefaultCckIndex141 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 166
  %52 = ptrtoint ptr %DefaultCckIndex141 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %DefaultCckIndex141, align 2
  %add147 = add i8 %53, %51
  call void @__sanitizer_cov_trace_cmp1(i8 %add139, i8 %PwrTrackingLimit_OFDM.0)
  %cmp151 = icmp ugt i8 %add139, %PwrTrackingLimit_OFDM.0
  br i1 %cmp151, label %if.then153, label %if.else177

if.then153:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i8 %add139, %PwrTrackingLimit_OFDM.0
  %arrayidx159 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 169, i32 %idxprom136
  %54 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %sub, ptr %arrayidx159, align 1
  %idxprom162 = zext i8 %ChannelMappedIndex to i32
  %Value164 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 34, i32 %idxprom162, i32 1
  %55 = ptrtoint ptr %Value164 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %Value164, align 4
  %arrayidx173 = getelementptr [8 x i32], ptr %Value164, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx173, align 4
  tail call fastcc void @setIqkMatrix_8723B(ptr noundef %pDM_Odm, i8 noundef zeroext %PwrTrackingLimit_OFDM.0, i8 noundef zeroext %RFPath, i32 noundef %56, i32 noundef %58)
  %Modify_TxAGC_Flag_PathA174 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 172
  %59 = ptrtoint ptr %Modify_TxAGC_Flag_PathA174 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %Modify_TxAGC_Flag_PathA174, align 2
  %CurrentChannel175 = getelementptr inbounds %struct.hal_com_data, ptr %3, i32 0, i32 10
  %60 = ptrtoint ptr %CurrentChannel175 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %CurrentChannel175, align 8
  tail call void @PHY_SetTxPowerIndexByRateSection(ptr noundef %1, i8 noundef zeroext %RFPath, i8 noundef zeroext %61, i8 noundef zeroext 1) #8
  %62 = ptrtoint ptr %CurrentChannel175 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %CurrentChannel175, align 8
  tail call void @PHY_SetTxPowerIndexByRateSection(ptr noundef %1, i8 noundef zeroext %RFPath, i8 noundef zeroext %63, i8 noundef zeroext 2) #8
  br label %if.end228

if.else177:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add139)
  %cmp179 = icmp eq i8 %add139, 0
  br i1 %cmp179, label %if.then181, label %if.else202

if.then181:                                       ; preds = %if.else177
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx184 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 169, i32 %idxprom136
  %64 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %arrayidx184, align 1
  %idxprom187 = zext i8 %ChannelMappedIndex to i32
  %Value189 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 34, i32 %idxprom187, i32 1
  %65 = ptrtoint ptr %Value189 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %Value189, align 4
  %arrayidx198 = getelementptr [8 x i32], ptr %Value189, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx198, align 4
  tail call fastcc void @setIqkMatrix_8723B(ptr noundef %pDM_Odm, i8 noundef zeroext 0, i8 noundef zeroext %RFPath, i32 noundef %66, i32 noundef %68)
  %Modify_TxAGC_Flag_PathA199 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 172
  %69 = ptrtoint ptr %Modify_TxAGC_Flag_PathA199 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %Modify_TxAGC_Flag_PathA199, align 2
  %CurrentChannel200 = getelementptr inbounds %struct.hal_com_data, ptr %3, i32 0, i32 10
  %70 = ptrtoint ptr %CurrentChannel200 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %CurrentChannel200, align 8
  tail call void @PHY_SetTxPowerIndexByRateSection(ptr noundef %1, i8 noundef zeroext %RFPath, i8 noundef zeroext %71, i8 noundef zeroext 1) #8
  %72 = ptrtoint ptr %CurrentChannel200 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %CurrentChannel200, align 8
  tail call void @PHY_SetTxPowerIndexByRateSection(ptr noundef %1, i8 noundef zeroext %RFPath, i8 noundef zeroext %73, i8 noundef zeroext 2) #8
  br label %if.end228

if.else202:                                       ; preds = %if.else177
  %idxprom205 = zext i8 %ChannelMappedIndex to i32
  %Value207 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 34, i32 %idxprom205, i32 1
  %74 = ptrtoint ptr %Value207 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %Value207, align 4
  %arrayidx216 = getelementptr [8 x i32], ptr %Value207, i32 0, i32 1
  %76 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx216, align 4
  tail call fastcc void @setIqkMatrix_8723B(ptr noundef %pDM_Odm, i8 noundef zeroext %add139, i8 noundef zeroext %RFPath, i32 noundef %75, i32 noundef %77)
  %Modify_TxAGC_Flag_PathA217 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 172
  %78 = ptrtoint ptr %Modify_TxAGC_Flag_PathA217 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %Modify_TxAGC_Flag_PathA217, align 2, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool218.not = icmp eq i8 %79, 0
  br i1 %tobool218.not, label %if.else202.if.end228_crit_edge, label %if.then219

if.else202.if.end228_crit_edge:                   ; preds = %if.else202
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end228

if.then219:                                       ; preds = %if.else202
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx222 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 169, i32 %idxprom136
  %80 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %arrayidx222, align 1
  %CurrentChannel223 = getelementptr inbounds %struct.hal_com_data, ptr %3, i32 0, i32 10
  %81 = ptrtoint ptr %CurrentChannel223 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %CurrentChannel223, align 8
  tail call void @PHY_SetTxPowerIndexByRateSection(ptr noundef %1, i8 noundef zeroext %RFPath, i8 noundef zeroext %82, i8 noundef zeroext 1) #8
  %83 = ptrtoint ptr %CurrentChannel223 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %CurrentChannel223, align 8
  tail call void @PHY_SetTxPowerIndexByRateSection(ptr noundef %1, i8 noundef zeroext %RFPath, i8 noundef zeroext %84, i8 noundef zeroext 2) #8
  %85 = ptrtoint ptr %Modify_TxAGC_Flag_PathA217 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %Modify_TxAGC_Flag_PathA217, align 2
  br label %if.end228

if.end228:                                        ; preds = %if.then219, %if.else202.if.end228_crit_edge, %if.then181, %if.then153
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %add147)
  %cmp231 = icmp ugt i8 %add147, 28
  br i1 %cmp231, label %if.then233, label %if.else240

if.then233:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #10
  %sub236 = add i8 %add147, -28
  %Remnant_CCKSwingIdx = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 170
  %86 = ptrtoint ptr %Remnant_CCKSwingIdx to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %sub236, ptr %Remnant_CCKSwingIdx, align 8
  tail call fastcc void @setCCKFilterCoefficient(ptr noundef %pDM_Odm, i8 noundef zeroext 28)
  %Modify_TxAGC_Flag_PathA_CCK238 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 176
  %87 = ptrtoint ptr %Modify_TxAGC_Flag_PathA_CCK238 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %Modify_TxAGC_Flag_PathA_CCK238, align 2
  %CurrentChannel239 = getelementptr inbounds %struct.hal_com_data, ptr %3, i32 0, i32 10
  %88 = ptrtoint ptr %CurrentChannel239 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %CurrentChannel239, align 8
  tail call void @PHY_SetTxPowerIndexByRateSection(ptr noundef %1, i8 noundef zeroext %RFPath, i8 noundef zeroext %89, i8 noundef zeroext 0) #8
  br label %cleanup

if.else240:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add147)
  %cmp242 = icmp eq i8 %add147, 0
  br i1 %cmp242, label %if.then244, label %if.else248

if.then244:                                       ; preds = %if.else240
  call void @__sanitizer_cov_trace_pc() #10
  %Remnant_CCKSwingIdx245 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 170
  %90 = ptrtoint ptr %Remnant_CCKSwingIdx245 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %Remnant_CCKSwingIdx245, align 8
  tail call fastcc void @setCCKFilterCoefficient(ptr noundef %pDM_Odm, i8 noundef zeroext 0)
  %Modify_TxAGC_Flag_PathA_CCK246 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 176
  %91 = ptrtoint ptr %Modify_TxAGC_Flag_PathA_CCK246 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %Modify_TxAGC_Flag_PathA_CCK246, align 2
  %CurrentChannel247 = getelementptr inbounds %struct.hal_com_data, ptr %3, i32 0, i32 10
  %92 = ptrtoint ptr %CurrentChannel247 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %CurrentChannel247, align 8
  tail call void @PHY_SetTxPowerIndexByRateSection(ptr noundef %1, i8 noundef zeroext %RFPath, i8 noundef zeroext %93, i8 noundef zeroext 0) #8
  br label %cleanup

if.else248:                                       ; preds = %if.else240
  tail call fastcc void @setCCKFilterCoefficient(ptr noundef %pDM_Odm, i8 noundef zeroext %add147)
  %Modify_TxAGC_Flag_PathA_CCK249 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 176
  %94 = ptrtoint ptr %Modify_TxAGC_Flag_PathA_CCK249 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %Modify_TxAGC_Flag_PathA_CCK249, align 2, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool250.not = icmp eq i8 %95, 0
  br i1 %tobool250.not, label %if.else248.cleanup_crit_edge, label %if.then251

if.else248.cleanup_crit_edge:                     ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then251:                                       ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #10
  %Remnant_CCKSwingIdx252 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 170
  %96 = ptrtoint ptr %Remnant_CCKSwingIdx252 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %Remnant_CCKSwingIdx252, align 8
  %CurrentChannel253 = getelementptr inbounds %struct.hal_com_data, ptr %3, i32 0, i32 10
  %97 = ptrtoint ptr %CurrentChannel253 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %CurrentChannel253, align 8
  tail call void @PHY_SetTxPowerIndexByRateSection(ptr noundef %1, i8 noundef zeroext %RFPath, i8 noundef zeroext %98, i8 noundef zeroext 0) #8
  %99 = ptrtoint ptr %Modify_TxAGC_Flag_PathA_CCK249 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %Modify_TxAGC_Flag_PathA_CCK249, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then251, %if.else248.cleanup_crit_edge, %if.then244, %if.then233, %if.end117, %if.then70, %if.end67.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @HwRateToMRate(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_SetTxPowerIndexByRateSection(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setIqkMatrix_8723B(ptr nocapture noundef readonly %pDM_Odm, i8 noundef zeroext %OFDM_index, i8 noundef zeroext %RFPath, i32 noundef %IqkResult_X, i32 noundef %IqkResult_Y) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i8 @llvm.umin.i8(i8 %OFDM_index, i8 42)
  %idxprom = zext i8 %0 to i32
  %arrayidx = getelementptr [43 x i32], ptr @OFDMSwingTable_New, i32 0, i32 %idxprom
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %IqkResult_X)
  %cmp2.not = icmp eq i32 %IqkResult_X, 0
  br i1 %cmp2.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %entry
  %shr = lshr i32 %2, 22
  %and5 = and i32 %IqkResult_X, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp6.not = icmp eq i32 %and5, 0
  %or = or i32 %IqkResult_X, -1024
  %spec.select = select i1 %cmp6.not, i32 %IqkResult_X, i32 %or
  %mul = mul i32 %shr, %spec.select
  %3 = lshr i32 %mul, 8
  %and11 = and i32 %3, 1023
  %and12 = and i32 %IqkResult_Y, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13.not = icmp eq i32 %and12, 0
  %or16 = or i32 %IqkResult_Y, -1024
  %IqkResult_Y.addr.0 = select i1 %cmp13.not, i32 %IqkResult_Y, i32 %or16
  %mul18 = mul i32 %shr, %IqkResult_Y.addr.0
  %4 = lshr i32 %mul18, 8
  %5 = zext i8 %RFPath to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %RFPath, label %if.then4.if.end62_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb33
  ]

if.then4.if.end62_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

sw.bb:                                            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %shl = and i32 %2, -4194304
  %and22 = shl i32 %4, 16
  %shl23 = and i32 %and22, 4128768
  %or24 = or i32 %and11, %shl
  %or25 = or i32 %or24, %shl23
  %6 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %7, i32 noundef 3200, i32 noundef -1, i32 noundef %or25) #8
  %and26 = lshr i32 %mul18, 14
  %8 = and i32 %and26, 15
  %9 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %10, i32 noundef 3220, i32 noundef -268435456, i32 noundef %8) #8
  %shr30100 = lshr i32 %mul, 7
  %and31 = and i32 %shr30100, 1
  %11 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %12, i32 noundef 3148, i32 noundef 16777216, i32 noundef %and31) #8
  br label %if.end62

sw.bb33:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %shl34 = and i32 %2, -4194304
  %and35 = shl i32 %4, 16
  %shl36 = and i32 %and35, 4128768
  %or37 = or i32 %and11, %shl34
  %or38 = or i32 %or37, %shl36
  %13 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %14, i32 noundef 3208, i32 noundef -1, i32 noundef %or38) #8
  %and40 = lshr i32 %mul18, 14
  %15 = and i32 %and40, 15
  %16 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %17, i32 noundef 3228, i32 noundef -268435456, i32 noundef %15) #8
  %shr4499 = lshr i32 %mul, 7
  %and45 = and i32 %shr4499, 1
  %18 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %19, i32 noundef 3148, i32 noundef 268435456, i32 noundef %and45) #8
  br label %if.end62

if.else:                                          ; preds = %entry
  %20 = zext i8 %RFPath to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %RFPath, label %if.else.if.end62_crit_edge [
    i8 0, label %sw.bb48
    i8 1, label %sw.bb54
  ]

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

sw.bb48:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %22, i32 noundef 3200, i32 noundef -1, i32 noundef %2) #8
  %23 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %24, i32 noundef 3220, i32 noundef -268435456, i32 noundef 0) #8
  %25 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %26, i32 noundef 3148, i32 noundef 16777216, i32 noundef 0) #8
  br label %if.end62

sw.bb54:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %28, i32 noundef 3208, i32 noundef -1, i32 noundef %2) #8
  %29 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %30, i32 noundef 3228, i32 noundef -268435456, i32 noundef 0) #8
  %31 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %32, i32 noundef 3148, i32 noundef 268435456, i32 noundef 0) #8
  br label %if.end62

if.end62:                                         ; preds = %sw.bb54, %sw.bb48, %if.else.if.end62_crit_edge, %sw.bb33, %sw.bb, %if.then4.if.end62_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setCCKFilterCoefficient(ptr nocapture noundef readonly %pDM_Odm, i8 noundef zeroext %CCKSwingIndex) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bCCKinCH14 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 25
  %0 = ptrtoint ptr %bCCKinCH14 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bCCKinCH14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pDM_Odm, align 8
  %idxprom = zext i8 %CCKSwingIndex to i32
  %CCKSwingTable_Ch1_Ch13_New.CCKSwingTable_Ch14_New = select i1 %tobool.not, ptr @CCKSwingTable_Ch1_Ch13_New, ptr @CCKSwingTable_Ch14_New
  %arrayidx39 = getelementptr [33 x [8 x i8]], ptr %CCKSwingTable_Ch1_Ch13_New.CCKSwingTable_Ch14_New, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx39, align 1
  %call41 = tail call i32 @rtw_write8(ptr noundef %3, i32 noundef 2594, i8 noundef zeroext %5) #8
  %6 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pDM_Odm, align 8
  %arrayidx45 = getelementptr [33 x [8 x i8]], ptr %CCKSwingTable_Ch1_Ch13_New.CCKSwingTable_Ch14_New, i32 0, i32 %idxprom, i32 1
  %8 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx45, align 1
  %call46 = tail call i32 @rtw_write8(ptr noundef %7, i32 noundef 2595, i8 noundef zeroext %9) #8
  %10 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pDM_Odm, align 8
  %arrayidx50 = getelementptr [33 x [8 x i8]], ptr %CCKSwingTable_Ch1_Ch13_New.CCKSwingTable_Ch14_New, i32 0, i32 %idxprom, i32 2
  %12 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx50, align 1
  %call51 = tail call i32 @rtw_write8(ptr noundef %11, i32 noundef 2596, i8 noundef zeroext %13) #8
  %14 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pDM_Odm, align 8
  %arrayidx55 = getelementptr [33 x [8 x i8]], ptr %CCKSwingTable_Ch1_Ch13_New.CCKSwingTable_Ch14_New, i32 0, i32 %idxprom, i32 3
  %16 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx55, align 1
  %call56 = tail call i32 @rtw_write8(ptr noundef %15, i32 noundef 2597, i8 noundef zeroext %17) #8
  %18 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pDM_Odm, align 8
  %arrayidx60 = getelementptr [33 x [8 x i8]], ptr %CCKSwingTable_Ch1_Ch13_New.CCKSwingTable_Ch14_New, i32 0, i32 %idxprom, i32 4
  %20 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx60, align 1
  %call61 = tail call i32 @rtw_write8(ptr noundef %19, i32 noundef 2598, i8 noundef zeroext %21) #8
  %22 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pDM_Odm, align 8
  %arrayidx65 = getelementptr [33 x [8 x i8]], ptr %CCKSwingTable_Ch1_Ch13_New.CCKSwingTable_Ch14_New, i32 0, i32 %idxprom, i32 5
  %24 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx65, align 1
  %call66 = tail call i32 @rtw_write8(ptr noundef %23, i32 noundef 2599, i8 noundef zeroext %25) #8
  %26 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pDM_Odm, align 8
  %arrayidx70 = getelementptr [33 x [8 x i8]], ptr %CCKSwingTable_Ch1_Ch13_New.CCKSwingTable_Ch14_New, i32 0, i32 %idxprom, i32 6
  %28 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx70, align 1
  %call71 = tail call i32 @rtw_write8(ptr noundef %27, i32 noundef 2600, i8 noundef zeroext %29) #8
  %30 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pDM_Odm, align 8
  %arrayidx75 = getelementptr [33 x [8 x i8]], ptr %CCKSwingTable_Ch1_Ch13_New.CCKSwingTable_Ch14_New, i32 0, i32 %idxprom, i32 7
  %32 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx75, align 1
  %call76 = tail call i32 @rtw_write8(ptr noundef %31, i32 noundef 2601, i8 noundef zeroext %33) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ConfigureTxpowerTrack_8723B(ptr nocapture noundef writeonly %pConfig) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pConfig to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 33, ptr %pConfig, align 4
  %SwingTableSize_OFDM = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %pConfig, i32 0, i32 1
  %1 = ptrtoint ptr %SwingTableSize_OFDM to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 43, ptr %SwingTableSize_OFDM, align 1
  %Threshold_IQK = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %pConfig, i32 0, i32 2
  %2 = ptrtoint ptr %Threshold_IQK to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %Threshold_IQK, align 2
  %AverageThermalNum = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %pConfig, i32 0, i32 3
  %3 = ptrtoint ptr %AverageThermalNum to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %AverageThermalNum, align 1
  %RfPathCount = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %pConfig, i32 0, i32 4
  %4 = ptrtoint ptr %RfPathCount to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %RfPathCount, align 4
  %ThermalRegAddr = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %pConfig, i32 0, i32 5
  %5 = ptrtoint ptr %ThermalRegAddr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 66, ptr %ThermalRegAddr, align 4
  %ODM_TxPwrTrackSetPwr = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %pConfig, i32 0, i32 6
  %6 = ptrtoint ptr %ODM_TxPwrTrackSetPwr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ODM_TxPwrTrackSetPwr_8723B, ptr %ODM_TxPwrTrackSetPwr, align 4
  %DoIQK = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %pConfig, i32 0, i32 7
  %7 = ptrtoint ptr %DoIQK to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @DoIQK_8723B, ptr %DoIQK, align 4
  %PHY_LCCalibrate = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %pConfig, i32 0, i32 8
  %8 = ptrtoint ptr %PHY_LCCalibrate to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @PHY_LCCalibrate_8723B, ptr %PHY_LCCalibrate, align 4
  %GetDeltaSwingTable = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %pConfig, i32 0, i32 9
  %9 = ptrtoint ptr %GetDeltaSwingTable to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @GetDeltaSwingTable_8723B, ptr %GetDeltaSwingTable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_LCCalibrate_8723B(ptr nocapture noundef %pDM_Odm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %SupportAbility = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 13
  %0 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %SupportAbility, align 4
  %and = and i32 %1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %pbScanInProcess = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 49
  %2 = ptrtoint ptr %pbScanInProcess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pbScanInProcess, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not21.not = icmp eq i8 %5, 0
  br i1 %tobool5.not21.not, label %while.cond.preheader.while.end9_crit_edge, label %while.cond.preheader.while.cond6.preheader_crit_edge

while.cond.preheader.while.cond6.preheader_crit_edge: ; preds = %while.cond.preheader
  br label %while.cond6.preheader

while.cond.preheader.while.end9_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end9

while.cond6.preheader:                            ; preds = %while.end.while.cond6.preheader_crit_edge, %while.cond.preheader.while.cond6.preheader_crit_edge
  %timecount.022 = phi i32 [ %add, %while.end.while.cond6.preheader_crit_edge ], [ 0, %while.cond.preheader.while.cond6.preheader_crit_edge ]
  br label %while.body8

while.body8:                                      ; preds = %while.body8.while.body8_crit_edge, %while.cond6.preheader
  %__ms.020 = phi i32 [ 50, %while.cond6.preheader ], [ %dec, %while.body8.while.body8_crit_edge ]
  %dec = add nsw i32 %__ms.020, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #8
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %while.end, label %while.body8.while.body8_crit_edge

while.body8.while.body8_crit_edge:                ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body8

while.end:                                        ; preds = %while.body8
  %add = add nuw nsw i32 %timecount.022, 50
  %7 = ptrtoint ptr %pbScanInProcess to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pbScanInProcess, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp ne i8 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1950, i32 %timecount.022)
  %cmp = icmp ult i32 %timecount.022, 1950
  %or.cond = select i1 %tobool5.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.end.while.cond6.preheader_crit_edge, label %while.end.while.end9_crit_edge

while.end.while.end9_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end9

while.end.while.cond6.preheader_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond6.preheader

while.end9:                                       ; preds = %while.end.while.end9_crit_edge, %while.cond.preheader.while.end9_crit_edge
  %bLCKInProgress = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 59
  %11 = ptrtoint ptr %bLCKInProgress to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %bLCKInProgress, align 1
  %12 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pDM_Odm, align 8
  %call.i = tail call zeroext i8 @rtw_read8(ptr noundef %13, i32 noundef 3331) #8
  %14 = and i8 %call.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not.i = icmp eq i8 %14, 0
  %15 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pDM_Odm, align 8
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.end9
  call void @__sanitizer_cov_trace_pc() #10
  %and5.i = and i8 %call.i, -113
  %call7.i = tail call i32 @rtw_write8(ptr noundef %16, i32 noundef 3331, i8 noundef zeroext %and5.i) #8
  %call15.i = tail call i32 @rtw_hal_read_rfreg(ptr noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 4095) #8
  %17 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pDM_Odm, align 8
  %and20.i = and i32 %call15.i, 589823
  %or.i = or i32 %and20.i, 65536
  tail call void @rtw_hal_write_rfreg(ptr noundef %18, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef %or.i) #8
  br label %if.end27.i

if.else.i:                                        ; preds = %while.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = tail call i32 @rtw_write8(ptr noundef %16, i32 noundef 1314, i8 noundef zeroext -1) #8
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %if.then.i
  %RF_Amode.0.i = phi i32 [ %call15.i, %if.then.i ], [ 0, %if.else.i ]
  %call28.i = tail call i32 @rtw_hal_read_rfreg(ptr noundef %13, i32 noundef 0, i32 noundef 24, i32 noundef 4095) #8
  %19 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %20, i32 noundef 0, i32 noundef 176, i32 noundef 1048575, i32 noundef 916448) #8
  %21 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pDM_Odm, align 8
  %or31.i = or i32 %call28.i, 32768
  tail call void @rtw_hal_write_rfreg(ptr noundef %22, i32 noundef 0, i32 noundef 24, i32 noundef 4095, i32 noundef %or31.i) #8
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end27.i
  %__ms.01.i = phi i32 [ 100, %if.end27.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.01.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #8
  %tobool32.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool32.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %24 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %25, i32 noundef 0, i32 noundef 176, i32 noundef 1048575, i32 noundef 917472) #8
  %SupportInterface.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 14
  %26 = ptrtoint ptr %SupportInterface.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %SupportInterface.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %27)
  %cmp35.i = icmp eq i8 %27, 4
  br i1 %cmp35.i, label %land.lhs.true.i, label %while.end.i.if.end42.i_crit_edge

while.end.i.if.end42.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

land.lhs.true.i:                                  ; preds = %while.end.i
  %PackageType.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 20
  %28 = ptrtoint ptr %PackageType.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %PackageType.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp38.i = icmp ugt i8 %29, 1
  br i1 %cmp38.i, label %if.then40.i, label %land.lhs.true.i.if.end42.i_crit_edge

land.lhs.true.i.if.end42.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

if.then40.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %31, i32 noundef 0, i32 noundef 24, i32 noundef 4095, i32 noundef %call28.i) #8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then40.i, %land.lhs.true.i.if.end42.i_crit_edge, %while.end.i.if.end42.i_crit_edge
  %32 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pDM_Odm, align 8
  br i1 %cmp.not.i, label %if.else55.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  %call49.i = tail call i32 @rtw_write8(ptr noundef %33, i32 noundef 3331, i8 noundef zeroext %call.i) #8
  %34 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pDM_Odm, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %35, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef %RF_Amode.0.i) #8
  br label %phy_LCCalibrate_8723B.exit

if.else55.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  %call57.i = tail call i32 @rtw_write8(ptr noundef %33, i32 noundef 1314, i8 noundef zeroext 0) #8
  br label %phy_LCCalibrate_8723B.exit

phy_LCCalibrate_8723B.exit:                       ; preds = %if.else55.i, %if.then47.i
  %36 = ptrtoint ptr %bLCKInProgress to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %bLCKInProgress, align 1
  br label %cleanup

cleanup:                                          ; preds = %phy_LCCalibrate_8723B.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @GetDeltaSwingTable_8723B(ptr noundef %pDM_Odm, ptr nocapture noundef writeonly %TemperatureUP_A, ptr nocapture noundef writeonly %TemperatureDOWN_A, ptr nocapture noundef writeonly %TemperatureUP_B, ptr nocapture noundef writeonly %TemperatureDOWN_B) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_Odm, align 8
  %HalData = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %HalData, align 8
  %CurrentChannel = getelementptr inbounds %struct.hal_com_data, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %CurrentChannel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %CurrentChannel, align 8
  %6 = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %6)
  %7 = icmp ult i8 %6, 14
  br i1 %7, label %if.then, label %if.else28

if.then:                                          ; preds = %entry
  %pForcedDataRate = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 58
  %8 = ptrtoint ptr %pForcedDataRate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pForcedDataRate, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 2
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %11, label %if.else [
    i16 2, label %if.then.if.then20_crit_edge
    i16 4, label %if.then.if.then20_crit_edge51
    i16 11, label %if.then.if.then20_crit_edge52
    i16 22, label %if.then.if.then20_crit_edge53
  ]

if.then.if.then20_crit_edge53:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.then.if.then20_crit_edge52:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.then.if.then20_crit_edge51:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.then.if.then20_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.then20:                                        ; preds = %if.then.if.then20_crit_edge, %if.then.if.then20_crit_edge51, %if.then.if.then20_crit_edge52, %if.then.if.then20_crit_edge53
  %DeltaSwingTableIdx_2GCCKA_P = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 40
  %13 = ptrtoint ptr %TemperatureUP_A to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %DeltaSwingTableIdx_2GCCKA_P, ptr %TemperatureUP_A, align 4
  %DeltaSwingTableIdx_2GCCKA_N = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 41
  %14 = ptrtoint ptr %TemperatureDOWN_A to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %DeltaSwingTableIdx_2GCCKA_N, ptr %TemperatureDOWN_A, align 4
  %DeltaSwingTableIdx_2GCCKB_P = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 42
  %15 = ptrtoint ptr %TemperatureUP_B to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %DeltaSwingTableIdx_2GCCKB_P, ptr %TemperatureUP_B, align 4
  %DeltaSwingTableIdx_2GCCKB_N = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 43
  br label %if.end29

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %DeltaSwingTableIdx_2GA_P = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 44
  %16 = ptrtoint ptr %TemperatureUP_A to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %DeltaSwingTableIdx_2GA_P, ptr %TemperatureUP_A, align 4
  %DeltaSwingTableIdx_2GA_N = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 45
  %17 = ptrtoint ptr %TemperatureDOWN_A to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %DeltaSwingTableIdx_2GA_N, ptr %TemperatureDOWN_A, align 4
  %DeltaSwingTableIdx_2GB_P = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 46
  %18 = ptrtoint ptr %TemperatureUP_B to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %DeltaSwingTableIdx_2GB_P, ptr %TemperatureUP_B, align 4
  %DeltaSwingTableIdx_2GB_N = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 47
  br label %if.end29

if.else28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %TemperatureUP_A to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @DeltaSwingTableIdx_2GA_P_8188E, ptr %TemperatureUP_A, align 4
  %20 = ptrtoint ptr %TemperatureDOWN_A to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @DeltaSwingTableIdx_2GA_N_8188E, ptr %TemperatureDOWN_A, align 4
  %21 = ptrtoint ptr %TemperatureUP_B to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @DeltaSwingTableIdx_2GA_P_8188E, ptr %TemperatureUP_B, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.else, %if.then20
  %DeltaSwingTableIdx_2GCCKB_N.sink = phi ptr [ %DeltaSwingTableIdx_2GCCKB_N, %if.then20 ], [ %DeltaSwingTableIdx_2GB_N, %if.else ], [ @DeltaSwingTableIdx_2GA_N_8188E, %if.else28 ]
  %22 = ptrtoint ptr %TemperatureDOWN_B to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %DeltaSwingTableIdx_2GCCKB_N.sink, ptr %TemperatureDOWN_B, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_SetIQCbyRFpath(ptr noundef readonly %pDM_Odm, i32 noundef %RFpath) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %TxIQC_8723B = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 65
  %arrayidx = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 65, i32 1
  %arrayidx1 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 65, i32 1, i32 1
  %arrayidx2 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 65, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end109_crit_edge, label %land.lhs.true

entry.if.end109_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

land.lhs.true:                                    ; preds = %entry
  %RxIQC_8723B = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 66
  %arrayidx3 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 66, i32 1
  %arrayidx5 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 66, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not = icmp eq i32 %3, 0
  br i1 %cmp6.not, label %land.lhs.true.if.end109_crit_edge, label %land.lhs.true7

land.lhs.true.if.end109_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

land.lhs.true7:                                   ; preds = %land.lhs.true
  %arrayidx10 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 65, i32 0, i32 1
  %arrayidx11 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 65, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12.not = icmp eq i32 %5, 0
  br i1 %cmp12.not, label %land.lhs.true7.if.end109_crit_edge, label %land.lhs.true13

land.lhs.true7.if.end109_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

land.lhs.true13:                                  ; preds = %land.lhs.true7
  %arrayidx17 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 66, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp18.not = icmp eq i32 %7, 0
  br i1 %cmp18.not, label %land.lhs.true13.if.end109_crit_edge, label %if.then

land.lhs.true13.if.end109_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then:                                          ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %RFpath)
  %tobool.not = icmp eq i32 %RFpath, 0
  %8 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pDM_Odm, align 8
  br i1 %tobool.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %arrayidx27 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 65, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx27, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %9, i32 noundef %11, i32 noundef -1, i32 noundef %13) #8
  %14 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pDM_Odm, align 8
  %16 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx1, align 4
  %18 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %15, i32 noundef %17, i32 noundef -1, i32 noundef %19) #8
  %20 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pDM_Odm, align 8
  %arrayidx40 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 65, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx40, align 4
  %arrayidx45 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 65, i32 1, i32 2, i32 1
  %24 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx45, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %21, i32 noundef %23, i32 noundef -1, i32 noundef %25) #8
  %26 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pDM_Odm, align 8
  %28 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx3, align 4
  %30 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx5, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %27, i32 noundef %29, i32 noundef -1, i32 noundef %31) #8
  %32 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pDM_Odm, align 8
  %arrayidx58 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 66, i32 1, i32 1
  %34 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx58, align 4
  %arrayidx63 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 66, i32 1, i32 1, i32 1
  %36 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx63, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %33, i32 noundef %35, i32 noundef -1, i32 noundef %37) #8
  br label %if.end109

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %TxIQC_8723B to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %TxIQC_8723B, align 4
  %arrayidx72 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 65, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx72, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %9, i32 noundef %39, i32 noundef -1, i32 noundef %41) #8
  %42 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pDM_Odm, align 8
  %44 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx10, align 4
  %46 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx11, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %43, i32 noundef %45, i32 noundef -1, i32 noundef %47) #8
  %48 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pDM_Odm, align 8
  %arrayidx85 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 65, i32 0, i32 2
  %50 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx85, align 4
  %arrayidx90 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 65, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx90, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %49, i32 noundef %51, i32 noundef -1, i32 noundef %53) #8
  %54 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pDM_Odm, align 8
  %56 = ptrtoint ptr %RxIQC_8723B to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %RxIQC_8723B, align 4
  %58 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx17, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %55, i32 noundef %57, i32 noundef -1, i32 noundef %59) #8
  %60 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pDM_Odm, align 8
  %arrayidx103 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 66, i32 0, i32 1
  %62 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx103, align 4
  %arrayidx108 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 66, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx108, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %61, i32 noundef %63, i32 noundef -1, i32 noundef %65) #8
  br label %if.end109

if.end109:                                        ; preds = %if.else, %if.then19, %land.lhs.true13.if.end109_crit_edge, %land.lhs.true7.if.end109_crit_edge, %land.lhs.true.if.end109_crit_edge, %entry.if.end109_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_write_bbreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_IQCalibrate_8723B(ptr noundef %padapter, i1 noundef zeroext %bReCovery, i1 noundef zeroext %bRestore, i1 noundef zeroext %Is2ant, i8 noundef zeroext %RF_Path) local_unnamed_addr #1 align 64 {
entry:
  %result = alloca [4 x [8 x i32]], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %odmpriv = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %result) #8
  %2 = call ptr @memset(ptr %result, i32 255, i32 128)
  %SupportAbility = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 13
  %3 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %SupportAbility, align 4
  %and = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup300_crit_edge, label %if.end8

entry.cleanup300_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup300

if.end8:                                          ; preds = %entry
  %bIQKInProgress = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 36
  %5 = ptrtoint ptr %bIQKInProgress to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bIQKInProgress, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.cleanup300_crit_edge

if.end8.cleanup300_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup300

if.end11:                                         ; preds = %if.end8
  %7 = ptrtoint ptr %bIQKInProgress to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %bIQKInProgress, align 1
  br i1 %bRestore, label %if.then15, label %if.end11.if.end88_crit_edge

if.end11.if.end88_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then15:                                        ; preds = %if.end11
  %8 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %odmpriv, align 8
  %call17 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %9, i32 noundef 2376, i32 noundef 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp ne i32 %call17, 0
  %idxprom = zext i1 %cmp to i32
  %arrayidx22 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 65, i32 %idxprom, i32 0
  %10 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx22, align 4
  %arrayidx29 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 65, i32 %idxprom, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp30 = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp33 = icmp eq i32 %13, 0
  %or.cond = select i1 %cmp30, i1 true, i1 %cmp33
  br i1 %or.cond, label %if.then15.for.end_crit_edge, label %if.end36

if.then15.for.end_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end36:                                         ; preds = %if.then15
  %14 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %15, i32 noundef %11, i32 noundef -1, i32 noundef %13) #8
  %arrayidx22.1 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 65, i32 %idxprom, i32 1
  %16 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx22.1, align 4
  %arrayidx29.1 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 65, i32 %idxprom, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx29.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp30.1 = icmp eq i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp33.1 = icmp eq i32 %19, 0
  %or.cond.1 = select i1 %cmp30.1, i1 true, i1 %cmp33.1
  br i1 %or.cond.1, label %if.end36.for.end_crit_edge, label %if.end36.1

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end36.1:                                       ; preds = %if.end36
  %20 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %21, i32 noundef %17, i32 noundef -1, i32 noundef %19) #8
  %arrayidx22.2 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 65, i32 %idxprom, i32 2
  %22 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx22.2, align 4
  %arrayidx29.2 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 65, i32 %idxprom, i32 2, i32 1
  %24 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx29.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp30.2 = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp33.2 = icmp eq i32 %25, 0
  %or.cond.2 = select i1 %cmp30.2, i1 true, i1 %cmp33.2
  br i1 %or.cond.2, label %if.end36.1.for.end_crit_edge, label %if.end36.2

if.end36.1.for.end_crit_edge:                     ; preds = %if.end36.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end36.2:                                       ; preds = %if.end36.1
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %27, i32 noundef %23, i32 noundef -1, i32 noundef %25) #8
  br label %for.end

for.end:                                          ; preds = %if.end36.2, %if.end36.1.for.end_crit_edge, %if.end36.for.end_crit_edge, %if.then15.for.end_crit_edge
  %bResult.0 = phi i32 [ 255, %if.then15.for.end_crit_edge ], [ 255, %if.end36.for.end_crit_edge ], [ 255, %if.end36.1.for.end_crit_edge ], [ 0, %if.end36.2 ]
  %arrayidx46 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 66, i32 %idxprom, i32 0
  %28 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46, align 4
  %arrayidx53 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 66, i32 %idxprom, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp54 = icmp eq i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp57 = icmp eq i32 %31, 0
  %or.cond429 = select i1 %cmp54, i1 true, i1 %cmp57
  br i1 %or.cond429, label %for.end.for.end64_crit_edge, label %if.end60

for.end.for.end64_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end64

if.end60:                                         ; preds = %for.end
  %32 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %33, i32 noundef %29, i32 noundef -1, i32 noundef %31) #8
  %arrayidx46.1 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 66, i32 %idxprom, i32 1
  %34 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx46.1, align 4
  %arrayidx53.1 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 66, i32 %idxprom, i32 1, i32 1
  %36 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx53.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp54.1 = icmp eq i32 %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp57.1 = icmp eq i32 %37, 0
  %or.cond429.1 = select i1 %cmp54.1, i1 true, i1 %cmp57.1
  br i1 %or.cond429.1, label %if.end60.for.end64_crit_edge, label %if.end60.1

if.end60.for.end64_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end64

if.end60.1:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %39, i32 noundef %35, i32 noundef -1, i32 noundef %37) #8
  br label %for.end64

for.end64:                                        ; preds = %if.end60.1, %if.end60.for.end64_crit_edge, %for.end.for.end64_crit_edge
  %bResult.1 = phi i32 [ 255, %for.end.for.end64_crit_edge ], [ 255, %if.end60.for.end64_crit_edge ], [ %bResult.0, %if.end60.1 ]
  %TxLOK = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 74
  %40 = ptrtoint ptr %TxLOK to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %TxLOK, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp67 = icmp eq i32 %41, 0
  br i1 %cmp67, label %for.end64.if.end88_crit_edge, label %if.end78

for.end64.if.end88_crit_edge:                     ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.end78:                                         ; preds = %for.end64
  %42 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %43, i32 noundef 0, i32 noundef 8, i32 noundef 1048575, i32 noundef %41) #8
  %44 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %odmpriv, align 8
  %arrayidx77 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 74, i32 1
  %46 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx77, align 4
  tail call void @rtw_hal_write_rfreg(ptr noundef %45, i32 noundef 1, i32 noundef 8, i32 noundef 1048575, i32 noundef %47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bResult.1)
  %cmp80 = icmp eq i32 %bResult.1, 0
  br i1 %cmp80, label %if.end78.cleanup300_crit_edge, label %if.end78.if.end88_crit_edge

if.end78.if.end88_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.end78.cleanup300_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup300

if.end88:                                         ; preds = %if.end78.if.end88_crit_edge, %for.end64.if.end88_crit_edge, %if.end11.if.end88_crit_edge
  br i1 %bReCovery, label %if.then90, label %if.end93

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %IQK_BB_backup_recover = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 63
  %48 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %HalData, align 8
  %odmpriv.i = getelementptr inbounds %struct.hal_com_data, ptr %49, i32 0, i32 141
  %50 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %odmpriv.i, align 8
  %52 = ptrtoint ptr %IQK_BB_backup_recover to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %IQK_BB_backup_recover, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %51, i32 noundef 3092, i32 noundef -1, i32 noundef %53) #8
  %54 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %odmpriv.i, align 8
  %arrayidx1.i.1 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 63, i32 1
  %56 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx1.i.1, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %55, i32 noundef 3100, i32 noundef -1, i32 noundef %57) #8
  %58 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %odmpriv.i, align 8
  %arrayidx1.i.2 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 63, i32 2
  %60 = ptrtoint ptr %arrayidx1.i.2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx1.i.2, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %59, i32 noundef 3148, i32 noundef -1, i32 noundef %61) #8
  %62 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %odmpriv.i, align 8
  %arrayidx1.i.3 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 63, i32 3
  %64 = ptrtoint ptr %arrayidx1.i.3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx1.i.3, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %63, i32 noundef 3192, i32 noundef -1, i32 noundef %65) #8
  %66 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %odmpriv.i, align 8
  %arrayidx1.i.4 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 63, i32 4
  %68 = ptrtoint ptr %arrayidx1.i.4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx1.i.4, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %67, i32 noundef 3200, i32 noundef -1, i32 noundef %69) #8
  %70 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %odmpriv.i, align 8
  %arrayidx1.i.5 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 63, i32 5
  %72 = ptrtoint ptr %arrayidx1.i.5 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx1.i.5, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %71, i32 noundef 3208, i32 noundef -1, i32 noundef %73) #8
  %74 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %odmpriv.i, align 8
  %arrayidx1.i.6 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 63, i32 6
  %76 = ptrtoint ptr %arrayidx1.i.6 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx1.i.6, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %75, i32 noundef 3220, i32 noundef -1, i32 noundef %77) #8
  %78 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %odmpriv.i, align 8
  %arrayidx1.i.7 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 63, i32 7
  %80 = ptrtoint ptr %arrayidx1.i.7 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx1.i.7, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %79, i32 noundef 3228, i32 noundef -1, i32 noundef %81) #8
  %82 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %odmpriv.i, align 8
  %arrayidx1.i.8 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 63, i32 8
  %84 = ptrtoint ptr %arrayidx1.i.8 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx1.i.8, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %83, i32 noundef 3232, i32 noundef -1, i32 noundef %85) #8
  br label %cleanup300

if.end93:                                         ; preds = %if.end88
  %86 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %odmpriv, align 8
  %call95 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %87, i32 noundef 1892, i32 noundef -1) #8
  %uglygep515 = getelementptr inbounds i8, ptr %result, i32 96
  %88 = call ptr @memset(ptr %result, i32 0, i32 128)
  br label %for.body120

for.body120:                                      ; preds = %for.body120.backedge, %if.end93
  %i.3508 = phi i8 [ 0, %if.end93 ], [ %i.3508.be, %for.body120.backedge ]
  call fastcc void @phy_IQCalibrate_8723B(ptr noundef %padapter, ptr noundef nonnull %result, i8 noundef zeroext %i.3508, i1 noundef zeroext %Is2ant, i8 noundef zeroext %RF_Path)
  %trunc = trunc i8 %i.3508 to i2
  %89 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.4)
  switch i2 %trunc, label %for.body120.for.body120.backedge_crit_edge [
    i2 1, label %if.then126
    i2 -2, label %if.then137
  ]

for.body120.for.body120.backedge_crit_edge:       ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body120.backedge

if.then126:                                       ; preds = %for.body120
  %call128 = call fastcc zeroext i1 @phy_SimularityCompare_8723B(ptr noundef nonnull %result, i8 noundef zeroext 0, i8 noundef zeroext 1)
  br i1 %call128, label %if.then126.if.end236_crit_edge, label %if.then126.for.body120.backedge_crit_edge

if.then126.for.body120.backedge_crit_edge:        ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body120.backedge

if.then126.if.end236_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end236

for.body120.backedge:                             ; preds = %if.then126.for.body120.backedge_crit_edge, %for.body120.for.body120.backedge_crit_edge
  %i.3508.be = phi i8 [ 2, %if.then126.for.body120.backedge_crit_edge ], [ 1, %for.body120.for.body120.backedge_crit_edge ]
  br label %for.body120

if.then137:                                       ; preds = %for.body120
  %call139 = call fastcc zeroext i1 @phy_SimularityCompare_8723B(ptr noundef nonnull %result, i8 noundef zeroext 0, i8 noundef zeroext 2)
  br i1 %call139, label %if.then137.if.end236_crit_edge, label %if.end143

if.then137.if.end236_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end236

if.end143:                                        ; preds = %if.then137
  %call145 = call fastcc zeroext i1 @phy_SimularityCompare_8723B(ptr noundef nonnull %result, i8 noundef zeroext 1, i8 noundef zeroext 2)
  br i1 %call145, label %if.end143.if.end236_crit_edge, label %for.body154.preheader

if.end143.if.end236_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end236

for.body154.preheader:                            ; preds = %if.end143
  %90 = ptrtoint ptr %uglygep515 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %uglygep515, align 4
  %arrayidx157.1 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 1
  %92 = ptrtoint ptr %arrayidx157.1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx157.1, align 4
  %add.1 = add i32 %93, %91
  %arrayidx157.2 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 2
  %94 = ptrtoint ptr %arrayidx157.2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx157.2, align 4
  %add.2 = add i32 %95, %add.1
  %arrayidx157.3 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 3
  %96 = ptrtoint ptr %arrayidx157.3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx157.3, align 4
  %add.3 = add i32 %97, %add.2
  %arrayidx157.4 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 4
  %98 = ptrtoint ptr %arrayidx157.4 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx157.4, align 4
  %add.4 = add i32 %99, %add.3
  %arrayidx157.5 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 5
  %100 = ptrtoint ptr %arrayidx157.5 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx157.5, align 4
  %add.5 = add i32 %101, %add.4
  %arrayidx157.6 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 6
  %102 = ptrtoint ptr %arrayidx157.6 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx157.6, align 4
  %add.6 = add i32 %103, %add.5
  %arrayidx157.7 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 7
  %104 = ptrtoint ptr %arrayidx157.7 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx157.7, align 4
  %add.7 = sub i32 0, %add.6
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %add.7)
  %cmp161.not = icmp eq i32 %105, %add.7
  br i1 %cmp161.not, label %if.end244.thread, label %for.body154.preheader.if.end236_crit_edge

for.body154.preheader.if.end236_crit_edge:        ; preds = %for.body154.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end236

if.end236:                                        ; preds = %for.body154.preheader.if.end236_crit_edge, %if.end143.if.end236_crit_edge, %if.then137.if.end236_crit_edge, %if.then126.if.end236_crit_edge
  %conv197526 = phi i32 [ 0, %if.then137.if.end236_crit_edge ], [ 3, %for.body154.preheader.if.end236_crit_edge ], [ 1, %if.end143.if.end236_crit_edge ], [ 0, %if.then126.if.end236_crit_edge ]
  %arrayidx202 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv197526
  %106 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx202, align 4
  %RegE94205 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 1
  %108 = ptrtoint ptr %RegE94205 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %RegE94205, align 4
  %arrayidx208 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv197526, i32 1
  %109 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx208, align 4
  %RegE9C210 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 2
  %111 = ptrtoint ptr %RegE9C210 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %RegE9C210, align 8
  %arrayidx213 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv197526, i32 2
  %112 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx213, align 4
  %arrayidx216 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv197526, i32 4
  %114 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx216, align 4
  %RegEB4218 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 3
  %116 = ptrtoint ptr %RegEB4218 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %RegEB4218, align 4
  %arrayidx221 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv197526, i32 5
  %117 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx221, align 4
  %RegEBC223 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 4
  %119 = ptrtoint ptr %RegEBC223 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %RegEBC223, align 8
  %arrayidx226 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv197526, i32 6
  %120 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx226, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp237.not = icmp eq i32 %107, 0
  br i1 %cmp237.not, label %if.end236.if.end244_crit_edge, label %if.then3.i

if.end236.if.end244_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end244

if.then3.i:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp242 = icmp eq i32 %113, 0
  %122 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %HalData, align 8
  %odmpriv.i431 = getelementptr inbounds %struct.hal_com_data, ptr %123, i32 0, i32 141
  %124 = ptrtoint ptr %odmpriv.i431 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %odmpriv.i431, align 8
  %call.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %125, i32 noundef 3200, i32 noundef -1) #8
  %shr.i = lshr i32 %call.i, 22
  %126 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx202, align 4
  %and5.i = and i32 %127, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp6.not.i = icmp eq i32 %and5.i, 0
  %or.i = or i32 %127, -1024
  %spec.select.i = select i1 %cmp6.not.i, i32 %127, i32 %or.i
  %mul.i = mul i32 %spec.select.i, %shr.i
  %shr9.i = lshr i32 %mul.i, 8
  %128 = ptrtoint ptr %odmpriv.i431 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %odmpriv.i431, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %129, i32 noundef 3200, i32 noundef 1023, i32 noundef %shr9.i) #8
  %130 = ptrtoint ptr %odmpriv.i431 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %odmpriv.i431, align 8
  %shr13.i = lshr i32 %mul.i, 7
  %and14.i = and i32 %shr13.i, 1
  tail call void @rtw_hal_write_bbreg(ptr noundef %131, i32 noundef 3148, i32 noundef -2147483648, i32 noundef %and14.i) #8
  %132 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx208, align 4
  %and18.i = and i32 %133, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %cmp19.not.i = icmp eq i32 %and18.i, 0
  %or22.i = or i32 %133, -1024
  %Y.0.i = select i1 %cmp19.not.i, i32 %133, i32 %or22.i
  %mul24.i = mul i32 %Y.0.i, %shr.i
  %shr25.i = lshr i32 %mul24.i, 8
  %134 = ptrtoint ptr %odmpriv.i431 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %odmpriv.i431, align 8
  %and27.i = lshr i32 %mul24.i, 14
  %136 = and i32 %and27.i, 15
  tail call void @rtw_hal_write_bbreg(ptr noundef %135, i32 noundef 3220, i32 noundef -268435456, i32 noundef %136) #8
  %TxIQC_8723B.i = getelementptr inbounds %struct.hal_com_data, ptr %123, i32 0, i32 141, i32 157, i32 65
  %137 = ptrtoint ptr %TxIQC_8723B.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 3220, ptr %TxIQC_8723B.i, align 4
  %138 = ptrtoint ptr %odmpriv.i431 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %odmpriv.i431, align 8
  %call33.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %139, i32 noundef 3220, i32 noundef -1) #8
  %arrayidx37.i = getelementptr %struct.hal_com_data, ptr %123, i32 0, i32 141, i32 157, i32 65, i32 0, i32 0, i32 1
  %140 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %call33.i, ptr %arrayidx37.i, align 4
  %141 = ptrtoint ptr %odmpriv.i431 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %odmpriv.i431, align 8
  %and39.i = and i32 %shr25.i, 63
  tail call void @rtw_hal_write_bbreg(ptr noundef %142, i32 noundef 3200, i32 noundef 4128768, i32 noundef %and39.i) #8
  %arrayidx42.i = getelementptr %struct.hal_com_data, ptr %123, i32 0, i32 141, i32 157, i32 65, i32 0, i32 1
  %143 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 3200, ptr %arrayidx42.i, align 4
  %144 = ptrtoint ptr %odmpriv.i431 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %odmpriv.i431, align 8
  %call45.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %145, i32 noundef 3200, i32 noundef -1) #8
  %arrayidx49.i = getelementptr %struct.hal_com_data, ptr %123, i32 0, i32 141, i32 157, i32 65, i32 0, i32 1, i32 1
  %146 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %call45.i, ptr %arrayidx49.i, align 4
  %147 = ptrtoint ptr %odmpriv.i431 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %odmpriv.i431, align 8
  %shr52.i = lshr i32 %mul24.i, 7
  %and53.i = and i32 %shr52.i, 1
  tail call void @rtw_hal_write_bbreg(ptr noundef %148, i32 noundef 3148, i32 noundef 536870912, i32 noundef %and53.i) #8
  %arrayidx56.i = getelementptr %struct.hal_com_data, ptr %123, i32 0, i32 141, i32 157, i32 65, i32 0, i32 2
  %149 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 3148, ptr %arrayidx56.i, align 4
  %150 = ptrtoint ptr %odmpriv.i431 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %odmpriv.i431, align 8
  %call59.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %151, i32 noundef 3148, i32 noundef -1) #8
  %arrayidx63.i = getelementptr %struct.hal_com_data, ptr %123, i32 0, i32 141, i32 157, i32 65, i32 0, i32 2, i32 1
  %152 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %call59.i, ptr %arrayidx63.i, align 4
  br i1 %cmp242, label %if.then65.i, label %if.end84.i

if.then65.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %RxIQC_8723B.i = getelementptr inbounds %struct.hal_com_data, ptr %123, i32 0, i32 141, i32 157, i32 66
  %arrayidx67.i = getelementptr %struct.hal_com_data, ptr %123, i32 0, i32 141, i32 157, i32 66, i32 0, i32 1
  %153 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 3232, ptr %arrayidx67.i, align 4
  %154 = ptrtoint ptr %odmpriv.i431 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %odmpriv.i431, align 8
  %call70.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %155, i32 noundef 3232, i32 noundef -1) #8
  %and71.i = and i32 %call70.i, 268435455
  %arrayidx75.i = getelementptr %struct.hal_com_data, ptr %123, i32 0, i32 141, i32 157, i32 66, i32 0, i32 1, i32 1
  %156 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %and71.i, ptr %arrayidx75.i, align 4
  %157 = ptrtoint ptr %RxIQC_8723B.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 3092, ptr %RxIQC_8723B.i, align 4
  %arrayidx83.i = getelementptr %struct.hal_com_data, ptr %123, i32 0, i32 141, i32 157, i32 66, i32 0, i32 0, i32 1
  %158 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 1073742080, ptr %arrayidx83.i, align 4
  br label %if.end244

if.end84.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %159 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx213, align 4
  %161 = ptrtoint ptr %odmpriv.i431 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %odmpriv.i431, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %162, i32 noundef 3092, i32 noundef 1023, i32 noundef %160) #8
  %arrayidx91.i = getelementptr [8 x i32], ptr %result, i32 %conv197526, i32 3
  %163 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx91.i, align 4
  %and92.i = and i32 %164, 63
  %165 = ptrtoint ptr %odmpriv.i431 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %odmpriv.i431, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %166, i32 noundef 3092, i32 noundef 64512, i32 noundef %and92.i) #8
  %RxIQC_8723B94.i = getelementptr inbounds %struct.hal_com_data, ptr %123, i32 0, i32 141, i32 157, i32 66
  %167 = ptrtoint ptr %RxIQC_8723B94.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 3092, ptr %RxIQC_8723B94.i, align 4
  %168 = ptrtoint ptr %odmpriv.i431 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %odmpriv.i431, align 8
  %call99.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %169, i32 noundef 3092, i32 noundef -1) #8
  %arrayidx103.i = getelementptr %struct.hal_com_data, ptr %123, i32 0, i32 141, i32 157, i32 66, i32 0, i32 0, i32 1
  %170 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %call99.i, ptr %arrayidx103.i, align 4
  %171 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx91.i, align 4
  %173 = lshr i32 %172, 6
  %and108.i = and i32 %173, 15
  %174 = ptrtoint ptr %odmpriv.i431 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %odmpriv.i431, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %175, i32 noundef 3232, i32 noundef -268435456, i32 noundef %and108.i) #8
  %arrayidx112.i = getelementptr %struct.hal_com_data, ptr %123, i32 0, i32 141, i32 157, i32 66, i32 0, i32 1
  %176 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 3232, ptr %arrayidx112.i, align 4
  %177 = ptrtoint ptr %odmpriv.i431 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %odmpriv.i431, align 8
  %call115.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %178, i32 noundef 3232, i32 noundef -1) #8
  %arrayidx119.i = getelementptr %struct.hal_com_data, ptr %123, i32 0, i32 141, i32 157, i32 66, i32 0, i32 1, i32 1
  %179 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %call115.i, ptr %arrayidx119.i, align 4
  br label %if.end244

if.end244:                                        ; preds = %if.end84.i, %if.then65.i, %if.end236.if.end244_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp245.not = icmp eq i32 %115, 0
  br i1 %cmp245.not, label %if.end244.for.cond257.preheader_crit_edge, label %if.then3.i466

if.end244.for.cond257.preheader_crit_edge:        ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond257.preheader

if.end244.thread:                                 ; preds = %for.body154.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %RegEB4229 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 3
  %180 = ptrtoint ptr %RegEB4229 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 256, ptr %RegEB4229, align 4
  %RegE94231 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 1
  %181 = ptrtoint ptr %RegE94231 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 256, ptr %RegE94231, align 4
  %RegEBC233 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 4
  %182 = ptrtoint ptr %RegEBC233 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %RegEBC233, align 8
  %RegE9C235 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 2
  %183 = ptrtoint ptr %RegE9C235 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %RegE9C235, align 8
  br label %if.end277

if.then3.i466:                                    ; preds = %if.end244
  %184 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %HalData, align 8
  %odmpriv.i434 = getelementptr inbounds %struct.hal_com_data, ptr %185, i32 0, i32 141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp250 = icmp eq i32 %121, 0
  %186 = ptrtoint ptr %odmpriv.i434 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %odmpriv.i434, align 8
  %call.i437 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %187, i32 noundef 3208, i32 noundef -1) #8
  %shr.i438 = lshr i32 %call.i437, 22
  %arrayidx4.i = getelementptr [8 x i32], ptr %result, i32 %conv197526, i32 4
  %188 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx4.i, align 4
  %and5.i439 = and i32 %189, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i439)
  %cmp6.not.i440 = icmp eq i32 %and5.i439, 0
  %or.i441 = or i32 %189, -1024
  %spec.select.i442 = select i1 %cmp6.not.i440, i32 %189, i32 %or.i441
  %mul.i443 = mul i32 %spec.select.i442, %shr.i438
  %shr9.i444 = lshr i32 %mul.i443, 8
  %190 = ptrtoint ptr %odmpriv.i434 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %odmpriv.i434, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %191, i32 noundef 3208, i32 noundef 1023, i32 noundef %shr9.i444) #8
  %192 = ptrtoint ptr %odmpriv.i434 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %odmpriv.i434, align 8
  %shr13.i445 = lshr i32 %mul.i443, 7
  %and14.i446 = and i32 %shr13.i445, 1
  tail call void @rtw_hal_write_bbreg(ptr noundef %193, i32 noundef 3148, i32 noundef 134217728, i32 noundef %and14.i446) #8
  %arrayidx17.i447 = getelementptr [8 x i32], ptr %result, i32 %conv197526, i32 5
  %194 = ptrtoint ptr %arrayidx17.i447 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx17.i447, align 4
  %and18.i448 = and i32 %195, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i448)
  %cmp19.not.i449 = icmp eq i32 %and18.i448, 0
  %or22.i450 = or i32 %195, -1024
  %Y.0.i451 = select i1 %cmp19.not.i449, i32 %195, i32 %or22.i450
  %mul24.i452 = mul i32 %Y.0.i451, %shr.i438
  %shr25.i453 = lshr i32 %mul24.i452, 8
  %196 = ptrtoint ptr %odmpriv.i434 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %odmpriv.i434, align 8
  %and27.i454 = lshr i32 %mul24.i452, 14
  %198 = and i32 %and27.i454, 15
  tail call void @rtw_hal_write_bbreg(ptr noundef %197, i32 noundef 3228, i32 noundef -268435456, i32 noundef %198) #8
  %arrayidx29.i = getelementptr %struct.hal_com_data, ptr %185, i32 0, i32 141, i32 157, i32 65, i32 1
  %199 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 3220, ptr %arrayidx29.i, align 4
  %200 = ptrtoint ptr %odmpriv.i434 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %odmpriv.i434, align 8
  %call33.i455 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %201, i32 noundef 3228, i32 noundef -1) #8
  %arrayidx37.i456 = getelementptr %struct.hal_com_data, ptr %185, i32 0, i32 141, i32 157, i32 65, i32 1, i32 0, i32 1
  %202 = ptrtoint ptr %arrayidx37.i456 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %call33.i455, ptr %arrayidx37.i456, align 4
  %203 = ptrtoint ptr %odmpriv.i434 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %odmpriv.i434, align 8
  %and39.i457 = and i32 %shr25.i453, 63
  tail call void @rtw_hal_write_bbreg(ptr noundef %204, i32 noundef 3208, i32 noundef 4128768, i32 noundef %and39.i457) #8
  %arrayidx42.i458 = getelementptr %struct.hal_com_data, ptr %185, i32 0, i32 141, i32 157, i32 65, i32 1, i32 1
  %205 = ptrtoint ptr %arrayidx42.i458 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 3200, ptr %arrayidx42.i458, align 4
  %206 = ptrtoint ptr %odmpriv.i434 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %odmpriv.i434, align 8
  %call45.i459 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %207, i32 noundef 3208, i32 noundef -1) #8
  %arrayidx49.i460 = getelementptr %struct.hal_com_data, ptr %185, i32 0, i32 141, i32 157, i32 65, i32 1, i32 1, i32 1
  %208 = ptrtoint ptr %arrayidx49.i460 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %call45.i459, ptr %arrayidx49.i460, align 4
  %209 = ptrtoint ptr %odmpriv.i434 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %odmpriv.i434, align 8
  %shr52.i461 = lshr i32 %mul24.i452, 7
  %and53.i462 = and i32 %shr52.i461, 1
  tail call void @rtw_hal_write_bbreg(ptr noundef %210, i32 noundef 3148, i32 noundef 33554432, i32 noundef %and53.i462) #8
  %arrayidx56.i463 = getelementptr %struct.hal_com_data, ptr %185, i32 0, i32 141, i32 157, i32 65, i32 1, i32 2
  %211 = ptrtoint ptr %arrayidx56.i463 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 3148, ptr %arrayidx56.i463, align 4
  %212 = ptrtoint ptr %odmpriv.i434 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %odmpriv.i434, align 8
  %call59.i464 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %213, i32 noundef 3148, i32 noundef -1) #8
  %arrayidx63.i465 = getelementptr %struct.hal_com_data, ptr %185, i32 0, i32 141, i32 157, i32 65, i32 1, i32 2, i32 1
  %214 = ptrtoint ptr %arrayidx63.i465 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %call59.i464, ptr %arrayidx63.i465, align 4
  br i1 %cmp250, label %if.then65.i468, label %if.end84.i474

if.then65.i468:                                   ; preds = %if.then3.i466
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx66.i = getelementptr %struct.hal_com_data, ptr %185, i32 0, i32 141, i32 157, i32 66, i32 1
  %215 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 3092, ptr %arrayidx66.i, align 4
  %arrayidx72.i = getelementptr %struct.hal_com_data, ptr %185, i32 0, i32 141, i32 157, i32 66, i32 1, i32 0, i32 1
  %216 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 1073742080, ptr %arrayidx72.i, align 4
  %arrayidx75.i467 = getelementptr %struct.hal_com_data, ptr %185, i32 0, i32 141, i32 157, i32 66, i32 1, i32 1
  %217 = ptrtoint ptr %arrayidx75.i467 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 3232, ptr %arrayidx75.i467, align 4
  %218 = ptrtoint ptr %odmpriv.i434 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %odmpriv.i434, align 8
  %call78.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %219, i32 noundef 3232, i32 noundef -1) #8
  %and79.i = and i32 %call78.i, 268435455
  br label %cleanup.sink.split.i

if.end84.i474:                                    ; preds = %if.then3.i466
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx87.i469 = getelementptr [8 x i32], ptr %result, i32 %conv197526, i32 6
  %220 = ptrtoint ptr %arrayidx87.i469 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx87.i469, align 4
  %222 = ptrtoint ptr %odmpriv.i434 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %odmpriv.i434, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %223, i32 noundef 3100, i32 noundef 1023, i32 noundef %221) #8
  %arrayidx91.i470 = getelementptr [8 x i32], ptr %result, i32 %conv197526, i32 7
  %224 = ptrtoint ptr %arrayidx91.i470 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx91.i470, align 4
  %and92.i471 = and i32 %225, 63
  %226 = ptrtoint ptr %odmpriv.i434 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %odmpriv.i434, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %227, i32 noundef 3100, i32 noundef 64512, i32 noundef %and92.i471) #8
  %arrayidx95.i = getelementptr %struct.hal_com_data, ptr %185, i32 0, i32 141, i32 157, i32 66, i32 1
  %228 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 3092, ptr %arrayidx95.i, align 4
  %229 = ptrtoint ptr %odmpriv.i434 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %odmpriv.i434, align 8
  %call99.i472 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %230, i32 noundef 3100, i32 noundef -1) #8
  %arrayidx103.i473 = getelementptr %struct.hal_com_data, ptr %185, i32 0, i32 141, i32 157, i32 66, i32 1, i32 0, i32 1
  %231 = ptrtoint ptr %arrayidx103.i473 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %call99.i472, ptr %arrayidx103.i473, align 4
  %232 = ptrtoint ptr %arrayidx91.i470 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx91.i470, align 4
  %arrayidx111.i = getelementptr %struct.hal_com_data, ptr %185, i32 0, i32 141, i32 157, i32 66, i32 1, i32 1
  %234 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 3232, ptr %arrayidx111.i, align 4
  %235 = shl i32 %233, 22
  %shl.i = and i32 %235, -268435456
  %236 = ptrtoint ptr %odmpriv.i434 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %odmpriv.i434, align 8
  %call114.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %237, i32 noundef 3232, i32 noundef -1) #8
  %and115.i = and i32 %call114.i, 268435455
  %or116.i = or i32 %and115.i, %shl.i
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end84.i474, %if.then65.i468
  %or116.sink.i = phi i32 [ %or116.i, %if.end84.i474 ], [ %and79.i, %if.then65.i468 ]
  %arrayidx120.i = getelementptr %struct.hal_com_data, ptr %185, i32 0, i32 141, i32 157, i32 66, i32 1, i32 1, i32 1
  %238 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %or116.sink.i, ptr %arrayidx120.i, align 4
  br label %for.cond257.preheader

for.cond257.preheader:                            ; preds = %cleanup.sink.split.i, %if.end244.for.cond257.preheader_crit_edge
  %Value = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 34, i32 0, i32 1
  %arrayidx265 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv197526, i32 0
  %239 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx265, align 4
  %241 = ptrtoint ptr %Value to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %Value, align 4
  %arrayidx265.1 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv197526, i32 1
  %242 = ptrtoint ptr %arrayidx265.1 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx265.1, align 4
  %arrayidx270.1 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 34, i32 0, i32 1, i32 0, i32 1
  %244 = ptrtoint ptr %arrayidx270.1 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %243, ptr %arrayidx270.1, align 4
  %arrayidx265.2 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv197526, i32 2
  %245 = ptrtoint ptr %arrayidx265.2 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx265.2, align 4
  %arrayidx270.2 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 34, i32 0, i32 1, i32 0, i32 2
  %247 = ptrtoint ptr %arrayidx270.2 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %arrayidx270.2, align 4
  %arrayidx265.3 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv197526, i32 3
  %248 = ptrtoint ptr %arrayidx265.3 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx265.3, align 4
  %arrayidx270.3 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 34, i32 0, i32 1, i32 0, i32 3
  %250 = ptrtoint ptr %arrayidx270.3 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %249, ptr %arrayidx270.3, align 4
  %arrayidx265.4 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv197526, i32 4
  %251 = ptrtoint ptr %arrayidx265.4 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx265.4, align 4
  %arrayidx270.4 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 34, i32 0, i32 1, i32 0, i32 4
  %253 = ptrtoint ptr %arrayidx270.4 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %252, ptr %arrayidx270.4, align 4
  %arrayidx265.5 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv197526, i32 5
  %254 = ptrtoint ptr %arrayidx265.5 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx265.5, align 4
  %arrayidx270.5 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 34, i32 0, i32 1, i32 0, i32 5
  %256 = ptrtoint ptr %arrayidx270.5 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %arrayidx270.5, align 4
  %arrayidx265.6 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv197526, i32 6
  %257 = ptrtoint ptr %arrayidx265.6 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx265.6, align 4
  %arrayidx270.6 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 34, i32 0, i32 1, i32 0, i32 6
  %259 = ptrtoint ptr %arrayidx270.6 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %258, ptr %arrayidx270.6, align 4
  %arrayidx265.7 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv197526, i32 7
  %260 = ptrtoint ptr %arrayidx265.7 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx265.7, align 4
  %arrayidx270.7 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 34, i32 0, i32 1, i32 0, i32 7
  %262 = ptrtoint ptr %arrayidx270.7 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %arrayidx270.7, align 4
  %IQKMatrixRegSetting275 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 34
  %263 = ptrtoint ptr %IQKMatrixRegSetting275 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 1, ptr %IQKMatrixRegSetting275, align 8
  br label %if.end277

if.end277:                                        ; preds = %for.cond257.preheader, %if.end244.thread
  %IQK_BB_backup_recover280 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 63
  %264 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %HalData, align 8
  %odmpriv.i476 = getelementptr inbounds %struct.hal_com_data, ptr %265, i32 0, i32 141
  %266 = ptrtoint ptr %odmpriv.i476 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %odmpriv.i476, align 8
  %call1.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %267, i32 noundef 3092, i32 noundef -1) #8
  %268 = ptrtoint ptr %IQK_BB_backup_recover280 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %call1.i, ptr %IQK_BB_backup_recover280, align 4
  %269 = ptrtoint ptr %odmpriv.i476 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %odmpriv.i476, align 8
  %call1.i.1 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %270, i32 noundef 3100, i32 noundef -1) #8
  %arrayidx2.i.1 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 63, i32 1
  %271 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %call1.i.1, ptr %arrayidx2.i.1, align 4
  %272 = ptrtoint ptr %odmpriv.i476 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %odmpriv.i476, align 8
  %call1.i.2 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %273, i32 noundef 3148, i32 noundef -1) #8
  %arrayidx2.i.2 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 63, i32 2
  %274 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %call1.i.2, ptr %arrayidx2.i.2, align 4
  %275 = ptrtoint ptr %odmpriv.i476 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %odmpriv.i476, align 8
  %call1.i.3 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %276, i32 noundef 3192, i32 noundef -1) #8
  %arrayidx2.i.3 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 63, i32 3
  %277 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %call1.i.3, ptr %arrayidx2.i.3, align 4
  %278 = ptrtoint ptr %odmpriv.i476 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %odmpriv.i476, align 8
  %call1.i.4 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %279, i32 noundef 3200, i32 noundef -1) #8
  %arrayidx2.i.4 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 63, i32 4
  %280 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %call1.i.4, ptr %arrayidx2.i.4, align 4
  %281 = ptrtoint ptr %odmpriv.i476 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %odmpriv.i476, align 8
  %call1.i.5 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %282, i32 noundef 3208, i32 noundef -1) #8
  %arrayidx2.i.5 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 63, i32 5
  %283 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %call1.i.5, ptr %arrayidx2.i.5, align 4
  %284 = ptrtoint ptr %odmpriv.i476 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %odmpriv.i476, align 8
  %call1.i.6 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %285, i32 noundef 3220, i32 noundef -1) #8
  %arrayidx2.i.6 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 63, i32 6
  %286 = ptrtoint ptr %arrayidx2.i.6 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %call1.i.6, ptr %arrayidx2.i.6, align 4
  %287 = ptrtoint ptr %odmpriv.i476 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %odmpriv.i476, align 8
  %call1.i.7 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %288, i32 noundef 3228, i32 noundef -1) #8
  %arrayidx2.i.7 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 63, i32 7
  %289 = ptrtoint ptr %arrayidx2.i.7 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %call1.i.7, ptr %arrayidx2.i.7, align 4
  %290 = ptrtoint ptr %odmpriv.i476 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %odmpriv.i476, align 8
  %call1.i.8 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %291, i32 noundef 3232, i32 noundef -1) #8
  %arrayidx2.i.8 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 63, i32 8
  %292 = ptrtoint ptr %arrayidx2.i.8 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %call1.i.8, ptr %arrayidx2.i.8, align 4
  %293 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %294, i32 noundef 1892, i32 noundef -1, i32 noundef %call95) #8
  %295 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %296, i32 noundef 0, i32 noundef 239, i32 noundef 524288, i32 noundef 1) #8
  %297 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %298, i32 noundef 0, i32 noundef 48, i32 noundef 1048575, i32 noundef 98304) #8
  %299 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %300, i32 noundef 0, i32 noundef 49, i32 noundef 1048575, i32 noundef 31) #8
  %301 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %302, i32 noundef 0, i32 noundef 50, i32 noundef 1048575, i32 noundef 942455) #8
  %303 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %304, i32 noundef 0, i32 noundef 237, i32 noundef 32, i32 noundef 1) #8
  %305 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %306, i32 noundef 0, i32 noundef 67, i32 noundef 1048575, i32 noundef 196797) #8
  br i1 %Is2ant, label %if.then290, label %if.end277.if.end297_crit_edge

if.end277.if.end297_crit_edge:                    ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end297

if.then290:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %RF_Path)
  %cmp292 = icmp ne i8 %RF_Path, 0
  %. = zext i1 %cmp292 to i32
  tail call void @ODM_SetIQCbyRFpath(ptr noundef %odmpriv, i32 noundef %.)
  br label %if.end297

if.end297:                                        ; preds = %if.then290, %if.end277.if.end297_crit_edge
  %307 = ptrtoint ptr %bIQKInProgress to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 0, ptr %bIQKInProgress, align 1
  br label %cleanup300

cleanup300:                                       ; preds = %if.end297, %if.then90, %if.end78.cleanup300_crit_edge, %if.end8.cleanup300_crit_edge, %entry.cleanup300_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %result) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_read_bbreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_write_rfreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phy_IQCalibrate_8723B(ptr noundef %padapter, ptr nocapture noundef writeonly %result, i8 noundef zeroext %t, i1 noundef zeroext %is2T, i8 noundef zeroext %RF_Path) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %odmpriv = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141
  %2 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %odmpriv, align 8
  %call = tail call i32 @rtw_hal_read_bbreg(ptr noundef %3, i32 noundef 3152, i32 noundef 255) #8
  %4 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %odmpriv, align 8
  %call2 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %5, i32 noundef 3160, i32 noundef 255) #8
  %conv4 = zext i8 %t to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %t)
  %cmp = icmp eq i8 %t, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ADDA_backup = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 61
  %6 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %HalData, align 8
  %odmpriv.i = getelementptr inbounds %struct.hal_com_data, ptr %7, i32 0, i32 141
  %8 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %odmpriv.i, align 8
  %call1.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %9, i32 noundef 2140, i32 noundef -1) #8
  %10 = ptrtoint ptr %ADDA_backup to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call1.i, ptr %ADDA_backup, align 4
  %11 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %odmpriv.i, align 8
  %call1.i.1 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %12, i32 noundef 3692, i32 noundef -1) #8
  %arrayidx2.i.1 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 61, i32 1
  %13 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call1.i.1, ptr %arrayidx2.i.1, align 4
  %14 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %odmpriv.i, align 8
  %call1.i.2 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %15, i32 noundef 3696, i32 noundef -1) #8
  %arrayidx2.i.2 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 61, i32 2
  %16 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call1.i.2, ptr %arrayidx2.i.2, align 4
  %17 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %odmpriv.i, align 8
  %call1.i.3 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %18, i32 noundef 3700, i32 noundef -1) #8
  %arrayidx2.i.3 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 61, i32 3
  %19 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call1.i.3, ptr %arrayidx2.i.3, align 4
  %20 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %odmpriv.i, align 8
  %call1.i.4 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %21, i32 noundef 3704, i32 noundef -1) #8
  %arrayidx2.i.4 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 61, i32 4
  %22 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call1.i.4, ptr %arrayidx2.i.4, align 4
  %23 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %odmpriv.i, align 8
  %call1.i.5 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %24, i32 noundef 3708, i32 noundef -1) #8
  %arrayidx2.i.5 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 61, i32 5
  %25 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call1.i.5, ptr %arrayidx2.i.5, align 4
  %26 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %odmpriv.i, align 8
  %call1.i.6 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %27, i32 noundef 3712, i32 noundef -1) #8
  %arrayidx2.i.6 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 61, i32 6
  %28 = ptrtoint ptr %arrayidx2.i.6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call1.i.6, ptr %arrayidx2.i.6, align 4
  %29 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %odmpriv.i, align 8
  %call1.i.7 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %30, i32 noundef 3716, i32 noundef -1) #8
  %arrayidx2.i.7 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 61, i32 7
  %31 = ptrtoint ptr %arrayidx2.i.7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call1.i.7, ptr %arrayidx2.i.7, align 4
  %32 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %odmpriv.i, align 8
  %call1.i.8 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %33, i32 noundef 3720, i32 noundef -1) #8
  %arrayidx2.i.8 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 61, i32 8
  %34 = ptrtoint ptr %arrayidx2.i.8 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call1.i.8, ptr %arrayidx2.i.8, align 4
  %35 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %odmpriv.i, align 8
  %call1.i.9 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %36, i32 noundef 3724, i32 noundef -1) #8
  %arrayidx2.i.9 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 61, i32 9
  %37 = ptrtoint ptr %arrayidx2.i.9 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call1.i.9, ptr %arrayidx2.i.9, align 4
  %38 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %odmpriv.i, align 8
  %call1.i.10 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %39, i32 noundef 3792, i32 noundef -1) #8
  %arrayidx2.i.10 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 61, i32 10
  %40 = ptrtoint ptr %arrayidx2.i.10 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call1.i.10, ptr %arrayidx2.i.10, align 4
  %41 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %odmpriv.i, align 8
  %call1.i.11 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %42, i32 noundef 3796, i32 noundef -1) #8
  %arrayidx2.i.11 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 61, i32 11
  %43 = ptrtoint ptr %arrayidx2.i.11 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call1.i.11, ptr %arrayidx2.i.11, align 4
  %44 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %odmpriv.i, align 8
  %call1.i.12 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %45, i32 noundef 3800, i32 noundef -1) #8
  %arrayidx2.i.12 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 61, i32 12
  %46 = ptrtoint ptr %arrayidx2.i.12 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call1.i.12, ptr %arrayidx2.i.12, align 4
  %47 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %odmpriv.i, align 8
  %call1.i.13 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %48, i32 noundef 3804, i32 noundef -1) #8
  %arrayidx2.i.13 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 61, i32 13
  %49 = ptrtoint ptr %arrayidx2.i.13 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call1.i.13, ptr %arrayidx2.i.13, align 4
  %50 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %odmpriv.i, align 8
  %call1.i.14 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %51, i32 noundef 3808, i32 noundef -1) #8
  %arrayidx2.i.14 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 61, i32 14
  %52 = ptrtoint ptr %arrayidx2.i.14 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call1.i.14, ptr %arrayidx2.i.14, align 4
  %53 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %odmpriv.i, align 8
  %call1.i.15 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %54, i32 noundef 3820, i32 noundef -1) #8
  %arrayidx2.i.15 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 61, i32 15
  %55 = ptrtoint ptr %arrayidx2.i.15 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call1.i.15, ptr %arrayidx2.i.15, align 4
  %IQK_MAC_backup = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 62
  %56 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %HalData, align 8
  %odmpriv.i264 = getelementptr inbounds %struct.hal_com_data, ptr %57, i32 0, i32 141
  %58 = ptrtoint ptr %odmpriv.i264 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %odmpriv.i264, align 8
  %call.i = tail call zeroext i8 @rtw_read8(ptr noundef %59, i32 noundef 1314) #8
  %conv.i = zext i8 %call.i to i32
  %60 = ptrtoint ptr %IQK_MAC_backup to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv.i, ptr %IQK_MAC_backup, align 4
  %61 = ptrtoint ptr %odmpriv.i264 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %odmpriv.i264, align 8
  %call.1.i = tail call zeroext i8 @rtw_read8(ptr noundef %62, i32 noundef 1360) #8
  %conv.1.i = zext i8 %call.1.i to i32
  %arrayidx1.1.i = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 62, i32 1
  %63 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv.1.i, ptr %arrayidx1.1.i, align 4
  %64 = ptrtoint ptr %odmpriv.i264 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %odmpriv.i264, align 8
  %call.2.i = tail call zeroext i8 @rtw_read8(ptr noundef %65, i32 noundef 1361) #8
  %conv.2.i = zext i8 %call.2.i to i32
  %arrayidx1.2.i = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 62, i32 2
  %66 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv.2.i, ptr %arrayidx1.2.i, align 4
  %67 = ptrtoint ptr %odmpriv.i264 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %odmpriv.i264, align 8
  %call4.i = tail call i32 @rtw_read32(ptr noundef %68, i32 noundef 64) #8
  %arrayidx5.i = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 62, i32 3
  %69 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call4.i, ptr %arrayidx5.i, align 4
  %IQK_BB_backup = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 64
  %70 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %HalData, align 8
  %odmpriv.i266 = getelementptr inbounds %struct.hal_com_data, ptr %71, i32 0, i32 141
  %72 = ptrtoint ptr %odmpriv.i266 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %odmpriv.i266, align 8
  %call1.i269 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %73, i32 noundef 3076, i32 noundef -1) #8
  %74 = ptrtoint ptr %IQK_BB_backup to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call1.i269, ptr %IQK_BB_backup, align 4
  %75 = ptrtoint ptr %odmpriv.i266 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %odmpriv.i266, align 8
  %call1.i269.1 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %76, i32 noundef 3080, i32 noundef -1) #8
  %arrayidx2.i270.1 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 64, i32 1
  %77 = ptrtoint ptr %arrayidx2.i270.1 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call1.i269.1, ptr %arrayidx2.i270.1, align 4
  %78 = ptrtoint ptr %odmpriv.i266 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %odmpriv.i266, align 8
  %call1.i269.2 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %79, i32 noundef 2164, i32 noundef -1) #8
  %arrayidx2.i270.2 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 64, i32 2
  %80 = ptrtoint ptr %arrayidx2.i270.2 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call1.i269.2, ptr %arrayidx2.i270.2, align 4
  %81 = ptrtoint ptr %odmpriv.i266 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %odmpriv.i266, align 8
  %call1.i269.3 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %82, i32 noundef 2920, i32 noundef -1) #8
  %arrayidx2.i270.3 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 64, i32 3
  %83 = ptrtoint ptr %arrayidx2.i270.3 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call1.i269.3, ptr %arrayidx2.i270.3, align 4
  %84 = ptrtoint ptr %odmpriv.i266 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %odmpriv.i266, align 8
  %call1.i269.4 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %85, i32 noundef 2924, i32 noundef -1) #8
  %arrayidx2.i270.4 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 64, i32 4
  %86 = ptrtoint ptr %arrayidx2.i270.4 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call1.i269.4, ptr %arrayidx2.i270.4, align 4
  %87 = ptrtoint ptr %odmpriv.i266 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %odmpriv.i266, align 8
  %call1.i269.5 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %88, i32 noundef 2160, i32 noundef -1) #8
  %arrayidx2.i270.5 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 64, i32 5
  %89 = ptrtoint ptr %arrayidx2.i270.5 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call1.i269.5, ptr %arrayidx2.i270.5, align 4
  %90 = ptrtoint ptr %odmpriv.i266 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %odmpriv.i266, align 8
  %call1.i269.6 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %91, i32 noundef 2144, i32 noundef -1) #8
  %arrayidx2.i270.6 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 64, i32 6
  %92 = ptrtoint ptr %arrayidx2.i270.6 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call1.i269.6, ptr %arrayidx2.i270.6, align 4
  %93 = ptrtoint ptr %odmpriv.i266 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %odmpriv.i266, align 8
  %call1.i269.7 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %94, i32 noundef 2148, i32 noundef -1) #8
  %arrayidx2.i270.7 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 64, i32 7
  %95 = ptrtoint ptr %arrayidx2.i270.7 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call1.i269.7, ptr %arrayidx2.i270.7, align 4
  %96 = ptrtoint ptr %odmpriv.i266 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %odmpriv.i266, align 8
  %call1.i269.8 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %97, i32 noundef 2564, i32 noundef -1) #8
  %arrayidx2.i270.8 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 64, i32 8
  %98 = ptrtoint ptr %arrayidx2.i270.8 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %call1.i269.8, ptr %arrayidx2.i270.8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %99 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %HalData, align 8
  %odmpriv.i276 = getelementptr inbounds %struct.hal_com_data, ptr %100, i32 0, i32 141
  %101 = ptrtoint ptr %odmpriv.i276 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %odmpriv.i276, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %102, i32 noundef 2140, i32 noundef -1, i32 noundef 29360148) #8
  %103 = ptrtoint ptr %odmpriv.i276 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %odmpriv.i276, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %104, i32 noundef 3692, i32 noundef -1, i32 noundef 29360148) #8
  %105 = ptrtoint ptr %odmpriv.i276 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %odmpriv.i276, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %106, i32 noundef 3696, i32 noundef -1, i32 noundef 29360148) #8
  %107 = ptrtoint ptr %odmpriv.i276 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %odmpriv.i276, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %108, i32 noundef 3700, i32 noundef -1, i32 noundef 29360148) #8
  %109 = ptrtoint ptr %odmpriv.i276 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %odmpriv.i276, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %110, i32 noundef 3704, i32 noundef -1, i32 noundef 29360148) #8
  %111 = ptrtoint ptr %odmpriv.i276 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %odmpriv.i276, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %112, i32 noundef 3708, i32 noundef -1, i32 noundef 29360148) #8
  %113 = ptrtoint ptr %odmpriv.i276 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %odmpriv.i276, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %114, i32 noundef 3712, i32 noundef -1, i32 noundef 29360148) #8
  %115 = ptrtoint ptr %odmpriv.i276 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %odmpriv.i276, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %116, i32 noundef 3716, i32 noundef -1, i32 noundef 29360148) #8
  %117 = ptrtoint ptr %odmpriv.i276 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %odmpriv.i276, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %118, i32 noundef 3720, i32 noundef -1, i32 noundef 29360148) #8
  %119 = ptrtoint ptr %odmpriv.i276 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %odmpriv.i276, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %120, i32 noundef 3724, i32 noundef -1, i32 noundef 29360148) #8
  %121 = ptrtoint ptr %odmpriv.i276 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %odmpriv.i276, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %122, i32 noundef 3792, i32 noundef -1, i32 noundef 29360148) #8
  %123 = ptrtoint ptr %odmpriv.i276 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %odmpriv.i276, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %124, i32 noundef 3796, i32 noundef -1, i32 noundef 29360148) #8
  %125 = ptrtoint ptr %odmpriv.i276 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %odmpriv.i276, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %126, i32 noundef 3800, i32 noundef -1, i32 noundef 29360148) #8
  %127 = ptrtoint ptr %odmpriv.i276 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %odmpriv.i276, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %128, i32 noundef 3804, i32 noundef -1, i32 noundef 29360148) #8
  %129 = ptrtoint ptr %odmpriv.i276 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %odmpriv.i276, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %130, i32 noundef 3808, i32 noundef -1, i32 noundef 29360148) #8
  %131 = ptrtoint ptr %odmpriv.i276 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %odmpriv.i276, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %132, i32 noundef 3820, i32 noundef -1, i32 noundef 29360148) #8
  %IQK_MAC_backup16 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 62
  %133 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %HalData, align 8
  %odmpriv.i278 = getelementptr inbounds %struct.hal_com_data, ptr %134, i32 0, i32 141
  %135 = ptrtoint ptr %odmpriv.i278 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %odmpriv.i278, align 8
  %call.i279 = tail call i32 @rtw_write8(ptr noundef %136, i32 noundef 1314, i8 noundef zeroext 63) #8
  %137 = ptrtoint ptr %odmpriv.i278 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %odmpriv.i278, align 8
  %arrayidx3.i281 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 62, i32 1
  %139 = ptrtoint ptr %arrayidx3.i281 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx3.i281, align 4
  %141 = trunc i32 %140 to i8
  %conv.i282 = and i8 %141, -9
  %call4.i283 = tail call i32 @rtw_write8(ptr noundef %138, i32 noundef 1360, i8 noundef zeroext %conv.i282) #8
  %142 = ptrtoint ptr %odmpriv.i278 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %odmpriv.i278, align 8
  %arrayidx3.1.i = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 62, i32 2
  %144 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx3.1.i, align 4
  %146 = trunc i32 %145 to i8
  %conv.1.i284 = and i8 %146, -9
  %call4.1.i = tail call i32 @rtw_write8(ptr noundef %143, i32 noundef 1361, i8 noundef zeroext %conv.1.i284) #8
  %147 = ptrtoint ptr %odmpriv.i278 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %odmpriv.i278, align 8
  %arrayidx7.i = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 62, i32 3
  %149 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx7.i, align 4
  %151 = trunc i32 %150 to i8
  %conv9.i = and i8 %151, -33
  %call10.i = tail call i32 @rtw_write8(ptr noundef %148, i32 noundef 64, i8 noundef zeroext %conv9.i) #8
  %152 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %153, i32 noundef 2564, i32 noundef 251658240, i32 noundef 15) #8
  %154 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %155, i32 noundef 3076, i32 noundef -1, i32 noundef 60839424) #8
  %156 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %157, i32 noundef 3080, i32 noundef -1, i32 noundef 524516) #8
  %158 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %159, i32 noundef 2164, i32 noundef -1, i32 noundef 572538880) #8
  %160 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %161, i32 noundef 3624, i32 noundef -256, i32 noundef 0) #8
  %162 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %163, i32 noundef 0, i32 noundef 239, i32 noundef 524288, i32 noundef 1) #8
  %164 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %165, i32 noundef 0, i32 noundef 48, i32 noundef 1048575, i32 noundef 196608) #8
  %166 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %167, i32 noundef 0, i32 noundef 49, i32 noundef 1048575, i32 noundef 31) #8
  %168 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %169, i32 noundef 0, i32 noundef 50, i32 noundef 1048575, i32 noundef 1015735) #8
  %170 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %171, i32 noundef 0, i32 noundef 237, i32 noundef 32, i32 noundef 1) #8
  %172 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %173, i32 noundef 0, i32 noundef 67, i32 noundef 1048575, i32 noundef 397245) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %RF_Path)
  %cmp.i = icmp eq i8 %RF_Path, 0
  %or.cond.i = or i1 %cmp.i, %is2T
  %..i = select i1 %or.cond.i, i32 0, i32 640
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %cmp29 = phi i1 [ true, %if.end ], [ false, %for.inc.for.body_crit_edge ]
  %174 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %HalData, align 8
  %odmpriv.i286 = getelementptr inbounds %struct.hal_com_data, ptr %175, i32 0, i32 141
  %176 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %odmpriv.i286, align 8
  %call.i287 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %177, i32 noundef 2376, i32 noundef -1) #8
  %178 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %179, i32 noundef 3624, i32 noundef -256, i32 noundef 0) #8
  %180 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %181, i32 noundef 0, i32 noundef 239, i32 noundef 524288, i32 noundef 1) #8
  %182 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %183, i32 noundef 0, i32 noundef 48, i32 noundef 1048575, i32 noundef 98304) #8
  %184 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %185, i32 noundef 0, i32 noundef 49, i32 noundef 1048575, i32 noundef 63) #8
  %186 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %187, i32 noundef 0, i32 noundef 50, i32 noundef 1048575, i32 noundef 819079) #8
  %188 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %189, i32 noundef 3648, i32 noundef -1, i32 noundef 16808960) #8
  %190 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %191, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #8
  %192 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %193, i32 noundef 3632, i32 noundef -1, i32 noundef 402689052) #8
  %194 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %195, i32 noundef 3636, i32 noundef -1, i32 noundef 939559964) #8
  %196 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %197, i32 noundef 3664, i32 noundef -1, i32 noundef 939559964) #8
  %198 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %199, i32 noundef 3668, i32 noundef -1, i32 noundef 939559964) #8
  %200 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %201, i32 noundef 3640, i32 noundef -1, i32 noundef -2112683030) #8
  %202 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %203, i32 noundef 3644, i32 noundef -1, i32 noundef 672202752) #8
  %204 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %205, i32 noundef 3672, i32 noundef -1, i32 noundef -2112815104) #8
  %206 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %207, i32 noundef 3676, i32 noundef -1, i32 noundef 672202752) #8
  %208 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %209, i32 noundef 3660, i32 noundef -1, i32 noundef 4598033) #8
  %210 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %211, i32 noundef 3624, i32 noundef -256, i32 noundef 8421376) #8
  %212 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %213, i32 noundef 2376, i32 noundef -1, i32 noundef %..i) #8
  %214 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %215, i32 noundef 1892, i32 noundef -1, i32 noundef 2048) #8
  %216 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %217, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #8
  %218 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %219, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %220 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %220(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %221 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %221(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %222 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %222(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %223 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %223(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %224 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %224(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %225 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %225(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %226 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %226(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %227 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %227(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %228 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %228(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %229 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %229(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %230 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %230(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %231 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %231(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %232 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %232(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %233 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %233(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %234 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %234(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %235 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %235(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %236 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %236(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %237 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %237(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %238 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %238(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %239 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %239(i32 noundef 214748000) #8
  %240 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %241, i32 noundef 2376, i32 noundef -1, i32 noundef %call.i287) #8
  %242 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %243, i32 noundef 1892, i32 noundef -1, i32 noundef 6144) #8
  %244 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %odmpriv.i286, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %245, i32 noundef 3624, i32 noundef -256, i32 noundef 0) #8
  %246 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %odmpriv.i286, align 8
  %call29.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %247, i32 noundef 3756, i32 noundef -1) #8
  %248 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %odmpriv.i286, align 8
  %call31.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %249, i32 noundef 3732, i32 noundef -1) #8
  %250 = ptrtoint ptr %odmpriv.i286 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %odmpriv.i286, align 8
  %call33.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %251, i32 noundef 3740, i32 noundef -1) #8
  %and39.i = and i32 %call29.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %land.lhs.true.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %252 = and i32 %call33.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %cmp35.not.i = icmp eq i32 %252, 0
  %and.i = lshr i32 %call33.i, 16
  %shr.i = and i32 %and.i, 1023
  %sub.i = sub nuw nsw i32 1024, %shr.i
  %spec.select.i = select i1 %cmp35.not.i, i32 %shr.i, i32 %sub.i
  %and41.i = lshr i32 %call31.i, 16
  %shr42.i = and i32 %and41.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %shr.i)
  %cmp48.not.i = icmp ne i32 %shr.i, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %shr42.i)
  %cmp53.i = icmp ult i32 %shr42.i, 272
  %or.cond111.i = select i1 %cmp53.i, i1 %cmp48.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %shr42.i)
  %cmp58.i = icmp ugt i32 %shr42.i, 240
  %or.cond112.i = and i1 %cmp58.i, %or.cond111.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.select.i)
  %cmp61.i = icmp ult i32 %spec.select.i, 15
  %or.cond113.i = select i1 %or.cond112.i, i1 %cmp61.i, i1 false
  br i1 %or.cond113.i, label %if.then36, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then36:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %253 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %254, i32 noundef 3624, i32 noundef -256, i32 noundef 0) #8
  %255 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %odmpriv, align 8
  %call39 = tail call i32 @rtw_hal_read_rfreg(ptr noundef %256, i32 noundef 0, i32 noundef 8, i32 noundef 1048575) #8
  %TxLOK = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 74
  %257 = ptrtoint ptr %TxLOK to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %call39, ptr %TxLOK, align 8
  %258 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %odmpriv, align 8
  %call42 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %259, i32 noundef 3732, i32 noundef -1) #8
  %and = lshr i32 %call42, 16
  %shr = and i32 %and, 1023
  %arrayidx43 = getelementptr [8 x i32], ptr %result, i32 %conv4
  %260 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %shr, ptr %arrayidx43, align 4
  %261 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %odmpriv, align 8
  %call46 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %262, i32 noundef 3740, i32 noundef -1) #8
  %and47 = lshr i32 %call46, 16
  %shr48 = and i32 %and47, 1023
  %arrayidx51 = getelementptr [8 x i32], ptr %result, i32 %conv4, i32 1
  %263 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %shr48, ptr %arrayidx51, align 4
  br label %for.body56.preheader

for.inc:                                          ; preds = %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  br i1 %cmp29, label %for.inc.for.body_crit_edge, label %for.inc.for.body56.preheader_crit_edge

for.inc.for.body56.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body56.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body56.preheader:                             ; preds = %for.inc.for.body56.preheader_crit_edge, %if.then36
  br label %for.body56

for.body56:                                       ; preds = %for.inc78.for.body56_crit_edge, %for.body56.preheader
  %cmp54 = phi i1 [ false, %for.inc78.for.body56_crit_edge ], [ true, %for.body56.preheader ]
  %264 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %HalData, align 8
  %odmpriv.i289 = getelementptr inbounds %struct.hal_com_data, ptr %265, i32 0, i32 141
  %266 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %odmpriv.i289, align 8
  %call.i290 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %267, i32 noundef 2376, i32 noundef -1) #8
  %268 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %269, i32 noundef 3624, i32 noundef -256, i32 noundef 0) #8
  %270 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %271, i32 noundef 0, i32 noundef 239, i32 noundef 524288, i32 noundef 1) #8
  %272 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %273, i32 noundef 0, i32 noundef 48, i32 noundef 1048575, i32 noundef 98304) #8
  %274 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %275, i32 noundef 0, i32 noundef 49, i32 noundef 1048575, i32 noundef 31) #8
  %276 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %277, i32 noundef 0, i32 noundef 50, i32 noundef 1048575, i32 noundef 1015735) #8
  %278 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %279, i32 noundef 3624, i32 noundef -256, i32 noundef 8421376) #8
  %280 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %281, i32 noundef 3648, i32 noundef -1, i32 noundef 16808960) #8
  %282 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %283, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #8
  %284 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %285, i32 noundef 3632, i32 noundef -1, i32 noundef 402689052) #8
  %286 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %287, i32 noundef 3636, i32 noundef -1, i32 noundef 939559964) #8
  %288 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %289, i32 noundef 3664, i32 noundef -1, i32 noundef 939559964) #8
  %290 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %291, i32 noundef 3668, i32 noundef -1, i32 noundef 939559964) #8
  %292 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %293, i32 noundef 3640, i32 noundef -1, i32 noundef -2112679952) #8
  %294 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %295, i32 noundef 3644, i32 noundef -1, i32 noundef 672202752) #8
  %296 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %297, i32 noundef 3672, i32 noundef -1, i32 noundef -2112815104) #8
  %298 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %299, i32 noundef 3676, i32 noundef -1, i32 noundef 672202752) #8
  %300 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %301, i32 noundef 3660, i32 noundef -1, i32 noundef 4630801) #8
  %302 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %303, i32 noundef 3624, i32 noundef -256, i32 noundef 8421376) #8
  %304 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %305, i32 noundef 2376, i32 noundef -1, i32 noundef %..i) #8
  %306 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %307, i32 noundef 1892, i32 noundef -1, i32 noundef 2048) #8
  %308 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %309, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #8
  %310 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %311, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %312 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %312(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %313 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %313(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %314 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %314(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %315 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %315(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %316 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %316(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %317 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %317(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %318 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %318(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %319 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %319(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %320 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %320(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %321 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %321(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %322 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %322(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %323 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %323(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %324 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %324(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %325 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %325(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %326 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %326(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %327 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %327(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %328 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %328(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %329 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %329(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %330 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %330(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %331 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %331(i32 noundef 214748000) #8
  %332 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %333, i32 noundef 2376, i32 noundef -1, i32 noundef %call.i290) #8
  %334 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %335, i32 noundef 1892, i32 noundef -1, i32 noundef 6144) #8
  %336 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %337, i32 noundef 3624, i32 noundef -256, i32 noundef 0) #8
  %338 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %odmpriv.i289, align 8
  %call30.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %339, i32 noundef 3756, i32 noundef -1) #8
  %340 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %odmpriv.i289, align 8
  %call32.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %341, i32 noundef 3732, i32 noundef -1) #8
  %342 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %odmpriv.i289, align 8
  %call34.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %343, i32 noundef 3740, i32 noundef -1) #8
  %and.i294 = lshr i32 %call34.i, 16
  %shr.i295 = and i32 %and.i294, 1023
  %and40.i = and i32 %call30.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %land.lhs.true.i298, label %for.body56.for.inc78_crit_edge

for.body56.for.inc78_crit_edge:                   ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc78

land.lhs.true.i298:                               ; preds = %for.body56
  %344 = and i32 %call34.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %344)
  %cmp36.not.i = icmp eq i32 %344, 0
  %sub.i296 = sub nuw nsw i32 1024, %shr.i295
  %spec.select.i297 = select i1 %cmp36.not.i, i32 %shr.i295, i32 %sub.i296
  %and42.i = and i32 %call32.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %shr.i295)
  %cmp49.not.i = icmp ne i32 %shr.i295, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 17825792, i32 %and42.i)
  %cmp54.i = icmp ult i32 %and42.i, 17825792
  %or.cond251.i = select i1 %cmp54.i, i1 %cmp49.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 15728640, i32 %and42.i)
  %cmp59.i = icmp ugt i32 %and42.i, 15728640
  %or.cond252.i = and i1 %cmp59.i, %or.cond251.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.select.i297)
  %cmp62.i = icmp ult i32 %spec.select.i297, 15
  %or.cond253.i = select i1 %or.cond252.i, i1 %cmp62.i, i1 false
  br i1 %or.cond253.i, label %if.then64.i, label %land.lhs.true.i298.for.inc78_crit_edge

land.lhs.true.i298.for.inc78_crit_edge:           ; preds = %land.lhs.true.i298
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc78

if.then64.i:                                      ; preds = %land.lhs.true.i298
  %or70.i = or i32 %and42.i, %shr.i295
  %or73.i = or i32 %or70.i, -2147451904
  %345 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %346, i32 noundef 3648, i32 noundef -1, i32 noundef %or73.i) #8
  %347 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %348, i32 noundef 3624, i32 noundef -256, i32 noundef 0) #8
  %349 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %350, i32 noundef 0, i32 noundef 239, i32 noundef 524288, i32 noundef 1) #8
  %351 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %352, i32 noundef 0, i32 noundef 48, i32 noundef 1048575, i32 noundef 98304) #8
  %353 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %354, i32 noundef 0, i32 noundef 49, i32 noundef 1048575, i32 noundef 31) #8
  %355 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %356, i32 noundef 0, i32 noundef 50, i32 noundef 1048575, i32 noundef 1015159) #8
  %357 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %358, i32 noundef 0, i32 noundef 223, i32 noundef 1048575, i32 noundef 3968) #8
  %359 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %360, i32 noundef 0, i32 noundef 85, i32 noundef 1048575, i32 noundef 262687) #8
  %361 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %362, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #8
  %363 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %364, i32 noundef 3632, i32 noundef -1, i32 noundef 939559964) #8
  %365 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %366, i32 noundef 3636, i32 noundef -1, i32 noundef 402689052) #8
  %367 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %368, i32 noundef 3664, i32 noundef -1, i32 noundef 939559964) #8
  %369 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %370, i32 noundef 3668, i32 noundef -1, i32 noundef 939559964) #8
  %371 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %372, i32 noundef 3640, i32 noundef -1, i32 noundef -2112815104) #8
  %373 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %374, i32 noundef 3644, i32 noundef -1, i32 noundef 672333855) #8
  %375 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %376, i32 noundef 3672, i32 noundef -1, i32 noundef -2112815104) #8
  %377 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %378, i32 noundef 3676, i32 noundef -1, i32 noundef 672202752) #8
  %379 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %380, i32 noundef 3660, i32 noundef -1, i32 noundef 4630737) #8
  %381 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %382, i32 noundef 3624, i32 noundef -256, i32 noundef 8421376) #8
  %383 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %384, i32 noundef 2376, i32 noundef -1, i32 noundef %..i) #8
  %385 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %386, i32 noundef 1892, i32 noundef -1, i32 noundef 2048) #8
  %387 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %388, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #8
  %389 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %390, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %391 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %391(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %392 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %392(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %393 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %393(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %394 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %394(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %395 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %395(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %396 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %396(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %397 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %397(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %398 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %398(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %399 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %399(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %400 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %400(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %401 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %401(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %402 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %402(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %403 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %403(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %404 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %404(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %405 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %405(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %406 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %406(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %407 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %407(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %408 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %408(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %409 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %409(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %410 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %410(i32 noundef 214748000) #8
  %411 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %412, i32 noundef 2376, i32 noundef -1, i32 noundef %call.i290) #8
  %413 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %414, i32 noundef 1892, i32 noundef -1, i32 noundef 6144) #8
  %415 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %416, i32 noundef 3624, i32 noundef -256, i32 noundef 0) #8
  %417 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %odmpriv.i289, align 8
  %call117.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %418, i32 noundef 3756, i32 noundef -1) #8
  %419 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %odmpriv.i289, align 8
  %call119.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %420, i32 noundef 3748, i32 noundef -1) #8
  %421 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %422, i32 noundef 3624, i32 noundef -256, i32 noundef 0) #8
  %423 = ptrtoint ptr %odmpriv.i289 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %odmpriv.i289, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %424, i32 noundef 0, i32 noundef 223, i32 noundef 1048575, i32 noundef 1920) #8
  %and130.i = and i32 %call117.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.i)
  %tobool131.not.i = icmp eq i32 %and130.i, 0
  br i1 %tobool131.not.i, label %land.lhs.true132.i, label %if.then64.i.for.inc78_crit_edge

if.then64.i.for.inc78_crit_edge:                  ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc78

land.lhs.true132.i:                               ; preds = %if.then64.i
  %425 = and i32 %call117.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %425)
  %cmp125.not.i = icmp eq i32 %425, 0
  %and122.i = lshr i32 %call117.i, 16
  %shr123.i = and i32 %and122.i, 1023
  %sub128.i = sub nuw nsw i32 1024, %shr123.i
  %spec.select255.i = select i1 %cmp125.not.i, i32 %shr123.i, i32 %sub128.i
  %and133.i = lshr i32 %call119.i, 16
  %shr134.i = and i32 %and133.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %shr123.i)
  %cmp140.not.i = icmp ne i32 %shr123.i, 54
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %shr134.i)
  %cmp145.i = icmp ult i32 %shr134.i, 272
  %or.cond257.i = select i1 %cmp145.i, i1 %cmp140.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %shr134.i)
  %cmp150.i = icmp ugt i32 %shr134.i, 240
  %or.cond258.i = and i1 %cmp150.i, %or.cond257.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.select255.i)
  %cmp153.i = icmp ult i32 %spec.select255.i, 15
  %or.cond259.i = select i1 %or.cond258.i, i1 %cmp153.i, i1 false
  br i1 %or.cond259.i, label %if.then62, label %land.lhs.true132.i.for.inc78_crit_edge

land.lhs.true132.i.for.inc78_crit_edge:           ; preds = %land.lhs.true132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc78

if.then62:                                        ; preds = %land.lhs.true132.i
  call void @__sanitizer_cov_trace_pc() #10
  %426 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %odmpriv, align 8
  %call64 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %427, i32 noundef 3748, i32 noundef -1) #8
  %and65 = lshr i32 %call64, 16
  %shr66 = and i32 %and65, 1023
  %arrayidx69 = getelementptr [8 x i32], ptr %result, i32 %conv4, i32 2
  %428 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 %shr66, ptr %arrayidx69, align 4
  %429 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %odmpriv, align 8
  %call71 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %430, i32 noundef 3756, i32 noundef -1) #8
  %and72 = lshr i32 %call71, 16
  %shr73 = and i32 %and72, 1023
  %arrayidx76 = getelementptr [8 x i32], ptr %result, i32 %conv4, i32 3
  %431 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %431)
  store i32 %shr73, ptr %arrayidx76, align 4
  br label %for.end80

for.inc78:                                        ; preds = %land.lhs.true132.i.for.inc78_crit_edge, %if.then64.i.for.inc78_crit_edge, %land.lhs.true.i298.for.inc78_crit_edge, %for.body56.for.inc78_crit_edge
  br i1 %cmp54, label %for.inc78.for.body56_crit_edge, label %for.inc78.for.end80_crit_edge

for.inc78.for.end80_crit_edge:                    ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end80

for.inc78.for.body56_crit_edge:                   ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body56

for.end80:                                        ; preds = %for.inc78.for.end80_crit_edge, %if.then62
  br i1 %is2T, label %for.end80.for.body91_crit_edge, label %for.end80.if.end149_crit_edge

for.end80.if.end149_crit_edge:                    ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

for.end80.for.body91_crit_edge:                   ; preds = %for.end80
  br label %for.body91

for.body91:                                       ; preds = %for.inc118.for.body91_crit_edge, %for.end80.for.body91_crit_edge
  %cmp89 = phi i1 [ false, %for.inc118.for.body91_crit_edge ], [ true, %for.end80.for.body91_crit_edge ]
  %432 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %HalData, align 8
  %odmpriv.i301 = getelementptr inbounds %struct.hal_com_data, ptr %433, i32 0, i32 141
  %434 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %odmpriv.i301, align 8
  %call.i302 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %435, i32 noundef 2376, i32 noundef -1) #8
  %436 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %437, i32 noundef 3624, i32 noundef -256, i32 noundef 0) #8
  %438 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %439, i32 noundef 0, i32 noundef 237, i32 noundef 32, i32 noundef 1) #8
  %440 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %441, i32 noundef 0, i32 noundef 67, i32 noundef 1048575, i32 noundef 200641) #8
  %442 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %443, i32 noundef 3648, i32 noundef -1, i32 noundef 16808960) #8
  %444 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %445, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #8
  %446 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %447, i32 noundef 3632, i32 noundef -1, i32 noundef 402689052) #8
  %448 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %449, i32 noundef 3636, i32 noundef -1, i32 noundef 939559964) #8
  %450 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %451, i32 noundef 3664, i32 noundef -1, i32 noundef 939559964) #8
  %452 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %453, i32 noundef 3668, i32 noundef -1, i32 noundef 939559964) #8
  %454 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %455, i32 noundef 3640, i32 noundef -1, i32 noundef -2112683030) #8
  %456 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %457, i32 noundef 3644, i32 noundef -1, i32 noundef 672202752) #8
  %458 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %459, i32 noundef 3672, i32 noundef -1, i32 noundef -2112815104) #8
  %460 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %461, i32 noundef 3676, i32 noundef -1, i32 noundef 672202752) #8
  %462 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %463, i32 noundef 3660, i32 noundef -1, i32 noundef 4598033) #8
  %464 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %465, i32 noundef 3624, i32 noundef -256, i32 noundef 8421376) #8
  %466 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %467, i32 noundef 2376, i32 noundef -1, i32 noundef 640) #8
  %468 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %469, i32 noundef 1892, i32 noundef -1, i32 noundef 2048) #8
  %470 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %471, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #8
  %472 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %473, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %474 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %474(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %475 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %475(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %476 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %476(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %477 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %477(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %478 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %478(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %479 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %479(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %480 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %480(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %481 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %481(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %482 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %482(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %483 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %483(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %484 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %484(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %485 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %485(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %486 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %486(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %487 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %487(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %488 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %488(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %489 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %489(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %490 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %490(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %491 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %491(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %492 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %492(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %493 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %493(i32 noundef 214748000) #8
  %494 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %495, i32 noundef 2376, i32 noundef -1, i32 noundef %call.i302) #8
  %496 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %497, i32 noundef 1892, i32 noundef -1, i32 noundef 6144) #8
  %498 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %odmpriv.i301, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %499, i32 noundef 3624, i32 noundef -256, i32 noundef 0) #8
  %500 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %odmpriv.i301, align 8
  %call24.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %501, i32 noundef 3756, i32 noundef -1) #8
  %502 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %odmpriv.i301, align 8
  %call26.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %503, i32 noundef 3732, i32 noundef -1) #8
  %504 = ptrtoint ptr %odmpriv.i301 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %odmpriv.i301, align 8
  %call28.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %505, i32 noundef 3740, i32 noundef -1) #8
  %and30.i = and i32 %call24.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %phy_PathB_IQK_8723B.exit, label %for.body91.for.inc118_crit_edge

for.body91.for.inc118_crit_edge:                  ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc118

phy_PathB_IQK_8723B.exit:                         ; preds = %for.body91
  %506 = and i32 %call28.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %506)
  %cmp.not.i = icmp eq i32 %506, 0
  %and.i303 = lshr i32 %call28.i, 16
  %shr.i304 = and i32 %and.i303, 1023
  %sub.i305 = sub nuw nsw i32 1024, %shr.i304
  %spec.select.i306 = select i1 %cmp.not.i, i32 %shr.i304, i32 %sub.i305
  %and32.i = lshr i32 %call26.i, 16
  %shr33.i = and i32 %and32.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %shr.i304)
  %cmp38.not.i = icmp ne i32 %shr.i304, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %shr33.i)
  %cmp42.i = icmp ult i32 %shr33.i, 272
  %or.cond83.i = select i1 %cmp42.i, i1 %cmp38.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %shr33.i)
  %cmp46.i = icmp ugt i32 %shr33.i, 240
  %or.cond84.i = and i1 %cmp46.i, %or.cond83.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.select.i306)
  %cmp48.i = icmp ult i32 %spec.select.i306, 15
  %or.cond85.i = select i1 %or.cond84.i, i1 %cmp48.i, i1 false
  br i1 %or.cond85.i, label %if.then96, label %phy_PathB_IQK_8723B.exit.for.inc118_crit_edge

phy_PathB_IQK_8723B.exit.for.inc118_crit_edge:    ; preds = %phy_PathB_IQK_8723B.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc118

if.then96:                                        ; preds = %phy_PathB_IQK_8723B.exit
  call void @__sanitizer_cov_trace_pc() #10
  %507 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %508, i32 noundef 3624, i32 noundef -256, i32 noundef 0) #8
  %509 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %odmpriv, align 8
  %call99 = tail call i32 @rtw_hal_read_rfreg(ptr noundef %510, i32 noundef 1, i32 noundef 8, i32 noundef 1048575) #8
  %arrayidx102 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 74, i32 1
  %511 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %511)
  store i32 %call99, ptr %arrayidx102, align 4
  %512 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %odmpriv, align 8
  %call104 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %513, i32 noundef 3732, i32 noundef -1) #8
  %and105 = lshr i32 %call104, 16
  %shr106 = and i32 %and105, 1023
  %arrayidx109 = getelementptr [8 x i32], ptr %result, i32 %conv4, i32 4
  %514 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 %shr106, ptr %arrayidx109, align 4
  %515 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %odmpriv, align 8
  %call111 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %516, i32 noundef 3740, i32 noundef -1) #8
  %and112 = lshr i32 %call111, 16
  %shr113 = and i32 %and112, 1023
  %arrayidx116 = getelementptr [8 x i32], ptr %result, i32 %conv4, i32 5
  %517 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %517)
  store i32 %shr113, ptr %arrayidx116, align 4
  br label %for.body124.preheader

for.inc118:                                       ; preds = %phy_PathB_IQK_8723B.exit.for.inc118_crit_edge, %for.body91.for.inc118_crit_edge
  br i1 %cmp89, label %for.inc118.for.body91_crit_edge, label %for.inc118.for.body124.preheader_crit_edge

for.inc118.for.body124.preheader_crit_edge:       ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body124.preheader

for.inc118.for.body91_crit_edge:                  ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body91

for.body124.preheader:                            ; preds = %for.inc118.for.body124.preheader_crit_edge, %if.then96
  br label %for.body124

for.body124:                                      ; preds = %for.inc146.for.body124_crit_edge, %for.body124.preheader
  %cmp122 = phi i1 [ false, %for.inc146.for.body124_crit_edge ], [ true, %for.body124.preheader ]
  %518 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %HalData, align 8
  %odmpriv.i309 = getelementptr inbounds %struct.hal_com_data, ptr %519, i32 0, i32 141
  %520 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %odmpriv.i309, align 8
  %call.i310 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %521, i32 noundef 2376, i32 noundef -1) #8
  %522 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %523, i32 noundef 3624, i32 noundef -256, i32 noundef 0) #8
  %524 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %525, i32 noundef 2376, i32 noundef -1, i32 noundef 640) #8
  %526 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %527, i32 noundef 0, i32 noundef 239, i32 noundef 524288, i32 noundef 1) #8
  %528 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %529, i32 noundef 0, i32 noundef 48, i32 noundef 1048575, i32 noundef 98304) #8
  %530 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %531, i32 noundef 0, i32 noundef 49, i32 noundef 1048575, i32 noundef 31) #8
  %532 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %533, i32 noundef 0, i32 noundef 50, i32 noundef 1048575, i32 noundef 1015735) #8
  %534 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %535, i32 noundef 0, i32 noundef 237, i32 noundef 32, i32 noundef 1) #8
  %536 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %537, i32 noundef 0, i32 noundef 67, i32 noundef 1048575, i32 noundef 200653) #8
  %538 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %539, i32 noundef 3648, i32 noundef -1, i32 noundef 16808960) #8
  %540 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %541, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #8
  %542 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %543, i32 noundef 3632, i32 noundef -1, i32 noundef 402689052) #8
  %544 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %545, i32 noundef 3636, i32 noundef -1, i32 noundef 939559964) #8
  %546 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %547, i32 noundef 3664, i32 noundef -1, i32 noundef 939559964) #8
  %548 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %549, i32 noundef 3668, i32 noundef -1, i32 noundef 939559964) #8
  %550 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %551, i32 noundef 3640, i32 noundef -1, i32 noundef -2112679952) #8
  %552 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %553, i32 noundef 3644, i32 noundef -1, i32 noundef 672202752) #8
  %554 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %555, i32 noundef 3672, i32 noundef -1, i32 noundef -2112815104) #8
  %556 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %557, i32 noundef 3676, i32 noundef -1, i32 noundef 672202752) #8
  %558 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %559, i32 noundef 3660, i32 noundef -1, i32 noundef 4630801) #8
  %560 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %561, i32 noundef 3624, i32 noundef -256, i32 noundef 8421376) #8
  %562 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %563, i32 noundef 2376, i32 noundef -1, i32 noundef 640) #8
  %564 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %565, i32 noundef 1892, i32 noundef -1, i32 noundef 2048) #8
  %566 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %567, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #8
  %568 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %569, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %570 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %570(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %571 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %571(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %572 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %572(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %573 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %573(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %574 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %574(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %575 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %575(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %576 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %576(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %577 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %577(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %578 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %578(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %579 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %579(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %580 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %580(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %581 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %581(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %582 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %582(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %583 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %583(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %584 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %584(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %585 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %585(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %586 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %586(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %587 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %587(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %588 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %588(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %589 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %589(i32 noundef 214748000) #8
  %590 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %591, i32 noundef 2376, i32 noundef -1, i32 noundef %call.i310) #8
  %592 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %593, i32 noundef 1892, i32 noundef -1, i32 noundef 6144) #8
  %594 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %595, i32 noundef 3624, i32 noundef -256, i32 noundef 0) #8
  %596 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %odmpriv.i309, align 8
  %call29.i311 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %597, i32 noundef 3756, i32 noundef -1) #8
  %598 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %odmpriv.i309, align 8
  %call31.i312 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %599, i32 noundef 3732, i32 noundef -1) #8
  %600 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %odmpriv.i309, align 8
  %call33.i313 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %601, i32 noundef 3740, i32 noundef -1) #8
  %and.i314 = lshr i32 %call33.i313, 16
  %shr.i315 = and i32 %and.i314, 1023
  %and35.i = and i32 %call29.i311, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %land.lhs.true.i320, label %for.body124.for.inc146_crit_edge

for.body124.for.inc146_crit_edge:                 ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc146

land.lhs.true.i320:                               ; preds = %for.body124
  %602 = and i32 %call33.i313, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %602)
  %cmp.not.i316 = icmp eq i32 %602, 0
  %sub.i317 = sub nuw nsw i32 1024, %shr.i315
  %spec.select.i318 = select i1 %cmp.not.i316, i32 %shr.i315, i32 %sub.i317
  %and37.i = and i32 %call31.i312, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %shr.i315)
  %cmp43.not.i = icmp ne i32 %shr.i315, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 17825792, i32 %and37.i)
  %cmp47.i = icmp ult i32 %and37.i, 17825792
  %or.cond1.i = select i1 %cmp47.i, i1 %cmp43.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 15728640, i32 %and37.i)
  %cmp51.i = icmp ugt i32 %and37.i, 15728640
  %or.cond2.i = and i1 %cmp51.i, %or.cond1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.select.i318)
  %cmp53.i319 = icmp ult i32 %spec.select.i318, 15
  %or.cond3.i = select i1 %or.cond2.i, i1 %cmp53.i319, i1 false
  br i1 %or.cond3.i, label %if.then54.i, label %land.lhs.true.i320.for.inc146_crit_edge

land.lhs.true.i320.for.inc146_crit_edge:          ; preds = %land.lhs.true.i320
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc146

if.then54.i:                                      ; preds = %land.lhs.true.i320
  %or58.i = or i32 %and37.i, %shr.i315
  %or61.i = or i32 %or58.i, -2147451904
  %603 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %604, i32 noundef 3648, i32 noundef -1, i32 noundef %or61.i) #8
  %605 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %606, i32 noundef 3624, i32 noundef -256, i32 noundef 0) #8
  %607 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %608, i32 noundef 0, i32 noundef 239, i32 noundef 524288, i32 noundef 1) #8
  %609 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %610, i32 noundef 0, i32 noundef 48, i32 noundef 1048575, i32 noundef 98304) #8
  %611 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %612, i32 noundef 0, i32 noundef 49, i32 noundef 1048575, i32 noundef 31) #8
  %613 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %614, i32 noundef 0, i32 noundef 50, i32 noundef 1048575, i32 noundef 1015159) #8
  %615 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %616, i32 noundef 0, i32 noundef 237, i32 noundef 32, i32 noundef 1) #8
  %617 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %618, i32 noundef 0, i32 noundef 67, i32 noundef 1048575, i32 noundef 200381) #8
  %619 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %620, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #8
  %621 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %622, i32 noundef 3632, i32 noundef -1, i32 noundef 939559964) #8
  %623 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %624, i32 noundef 3636, i32 noundef -1, i32 noundef 402689052) #8
  %625 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %626, i32 noundef 3664, i32 noundef -1, i32 noundef 939559964) #8
  %627 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %628, i32 noundef 3668, i32 noundef -1, i32 noundef 939559964) #8
  %629 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %630, i32 noundef 3640, i32 noundef -1, i32 noundef -2112815104) #8
  %631 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %632, i32 noundef 3644, i32 noundef -1, i32 noundef 672333855) #8
  %633 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %634, i32 noundef 3672, i32 noundef -1, i32 noundef -2112815104) #8
  %635 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %636, i32 noundef 3676, i32 noundef -1, i32 noundef 672202752) #8
  %637 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %638, i32 noundef 3660, i32 noundef -1, i32 noundef 4630737) #8
  %639 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %640, i32 noundef 3624, i32 noundef -256, i32 noundef 8421376) #8
  %641 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %642, i32 noundef 2376, i32 noundef -1, i32 noundef 640) #8
  %643 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %644, i32 noundef 1892, i32 noundef -1, i32 noundef 2048) #8
  %645 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %646, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #8
  %647 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %648, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %649 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %649(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %650 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %650(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %651 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %651(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %652 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %652(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %653 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %653(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %654 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %654(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %655 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %655(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %656 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %656(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %657 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %657(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %658 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %658(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %659 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %659(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %660 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %660(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %661 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %661(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %662 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %662(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %663 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %663(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %664 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %664(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %665 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %665(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %666 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %666(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %667 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %667(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %668 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %668(i32 noundef 214748000) #8
  %669 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %670, i32 noundef 2376, i32 noundef -1, i32 noundef %call.i310) #8
  %671 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %672, i32 noundef 1892, i32 noundef -1, i32 noundef 6144) #8
  %673 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %odmpriv.i309, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %674, i32 noundef 3624, i32 noundef -256, i32 noundef 0) #8
  %675 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %odmpriv.i309, align 8
  %call95.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %676, i32 noundef 3756, i32 noundef -1) #8
  %677 = ptrtoint ptr %odmpriv.i309 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %odmpriv.i309, align 8
  %call97.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %678, i32 noundef 3748, i32 noundef -1) #8
  %and106.i = and i32 %call95.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i, label %land.lhs.true108.i, label %if.then54.i.for.inc146_crit_edge

if.then54.i.for.inc146_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc146

land.lhs.true108.i:                               ; preds = %if.then54.i
  %679 = and i32 %call95.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %679)
  %cmp101.not.i = icmp eq i32 %679, 0
  %and98.i = lshr i32 %call95.i, 16
  %shr99.i = and i32 %and98.i, 1023
  %sub104.i = sub nuw nsw i32 1024, %shr99.i
  %spec.select4.i = select i1 %cmp101.not.i, i32 %shr99.i, i32 %sub104.i
  %and109.i = lshr i32 %call97.i, 16
  %shr110.i = and i32 %and109.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %shr99.i)
  %cmp116.not.i = icmp ne i32 %shr99.i, 54
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %shr110.i)
  %cmp121.i = icmp ult i32 %shr110.i, 272
  %or.cond6.i = select i1 %cmp121.i, i1 %cmp116.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %shr110.i)
  %cmp126.i = icmp ugt i32 %shr110.i, 240
  %or.cond7.i = and i1 %cmp126.i, %or.cond6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.select4.i)
  %cmp129.i = icmp ult i32 %spec.select4.i, 15
  %or.cond8.i = select i1 %or.cond7.i, i1 %cmp129.i, i1 false
  br i1 %or.cond8.i, label %if.then130, label %land.lhs.true108.i.for.inc146_crit_edge

land.lhs.true108.i.for.inc146_crit_edge:          ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc146

if.then130:                                       ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #10
  %680 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %odmpriv, align 8
  %call132 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %681, i32 noundef 3748, i32 noundef -1) #8
  %and133 = lshr i32 %call132, 16
  %shr134 = and i32 %and133, 1023
  %arrayidx137 = getelementptr [8 x i32], ptr %result, i32 %conv4, i32 6
  %682 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %682)
  store i32 %shr134, ptr %arrayidx137, align 4
  %683 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %odmpriv, align 8
  %call139 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %684, i32 noundef 3756, i32 noundef -1) #8
  %and140 = lshr i32 %call139, 16
  %shr141 = and i32 %and140, 1023
  %arrayidx144 = getelementptr [8 x i32], ptr %result, i32 %conv4, i32 7
  %685 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %685)
  store i32 %shr141, ptr %arrayidx144, align 4
  br label %if.end149

for.inc146:                                       ; preds = %land.lhs.true108.i.for.inc146_crit_edge, %if.then54.i.for.inc146_crit_edge, %land.lhs.true.i320.for.inc146_crit_edge, %for.body124.for.inc146_crit_edge
  br i1 %cmp122, label %for.inc146.for.body124_crit_edge, label %for.inc146.if.end149_crit_edge

for.inc146.if.end149_crit_edge:                   ; preds = %for.inc146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

for.inc146.for.body124_crit_edge:                 ; preds = %for.inc146
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body124

if.end149:                                        ; preds = %for.inc146.if.end149_crit_edge, %if.then130, %for.end80.if.end149_crit_edge
  %686 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %687, i32 noundef 3624, i32 noundef -256, i32 noundef 0) #8
  br i1 %cmp, label %if.end149.if.end178_crit_edge, label %if.then154

if.end149.if.end178_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end178

if.then154:                                       ; preds = %if.end149
  %ADDA_backup157 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 61
  %688 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %HalData, align 8
  %odmpriv.i323 = getelementptr inbounds %struct.hal_com_data, ptr %689, i32 0, i32 141
  br label %for.body.i327

for.body.i327:                                    ; preds = %for.body.i327.for.body.i327_crit_edge, %if.then154
  %i.06.i = phi i32 [ %inc.i325, %for.body.i327.for.body.i327_crit_edge ], [ 0, %if.then154 ]
  %690 = ptrtoint ptr %odmpriv.i323 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %odmpriv.i323, align 8
  %arrayidx.i324 = getelementptr i32, ptr @__const.phy_IQCalibrate_8723B.ADDA_REG, i32 %i.06.i
  %692 = ptrtoint ptr %arrayidx.i324 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load i32, ptr %arrayidx.i324, align 4
  %arrayidx1.i = getelementptr i32, ptr %ADDA_backup157, i32 %i.06.i
  %694 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load i32, ptr %arrayidx1.i, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %691, i32 noundef %693, i32 noundef -1, i32 noundef %695) #8
  %inc.i325 = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i326 = icmp eq i32 %inc.i325, 16
  br i1 %exitcond.not.i326, label %_PHY_ReloadADDARegisters8723B.exit, label %for.body.i327.for.body.i327_crit_edge

for.body.i327.for.body.i327_crit_edge:            ; preds = %for.body.i327
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i327

_PHY_ReloadADDARegisters8723B.exit:               ; preds = %for.body.i327
  %696 = ptrtoint ptr %IQK_MAC_backup16 to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load i32, ptr %IQK_MAC_backup16, align 4
  %conv.i328 = trunc i32 %697 to i8
  %call.i329 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1314, i8 noundef zeroext %conv.i328) #8
  %698 = ptrtoint ptr %arrayidx3.i281 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load i32, ptr %arrayidx3.i281, align 4
  %conv.1.i332 = trunc i32 %699 to i8
  %call.1.i333 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext %conv.1.i332) #8
  %700 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load i32, ptr %arrayidx3.1.i, align 4
  %conv.2.i336 = trunc i32 %701 to i8
  %call.2.i337 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1361, i8 noundef zeroext %conv.2.i336) #8
  %702 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load i32, ptr %arrayidx7.i, align 4
  %call4.i340 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 64, i32 noundef %703) #8
  %IQK_BB_backup165 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 64
  %704 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %HalData, align 8
  %odmpriv.i342 = getelementptr inbounds %struct.hal_com_data, ptr %705, i32 0, i32 141
  %706 = ptrtoint ptr %odmpriv.i342 to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %odmpriv.i342, align 8
  %708 = ptrtoint ptr %IQK_BB_backup165 to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load i32, ptr %IQK_BB_backup165, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %707, i32 noundef 3076, i32 noundef -1, i32 noundef %709) #8
  %710 = ptrtoint ptr %odmpriv.i342 to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %odmpriv.i342, align 8
  %arrayidx1.i345.1 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 64, i32 1
  %712 = ptrtoint ptr %arrayidx1.i345.1 to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load i32, ptr %arrayidx1.i345.1, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %711, i32 noundef 3080, i32 noundef -1, i32 noundef %713) #8
  %714 = ptrtoint ptr %odmpriv.i342 to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %odmpriv.i342, align 8
  %arrayidx1.i345.2 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 64, i32 2
  %716 = ptrtoint ptr %arrayidx1.i345.2 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load i32, ptr %arrayidx1.i345.2, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %715, i32 noundef 2164, i32 noundef -1, i32 noundef %717) #8
  %718 = ptrtoint ptr %odmpriv.i342 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %odmpriv.i342, align 8
  %arrayidx1.i345.3 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 64, i32 3
  %720 = ptrtoint ptr %arrayidx1.i345.3 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load i32, ptr %arrayidx1.i345.3, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %719, i32 noundef 2920, i32 noundef -1, i32 noundef %721) #8
  %722 = ptrtoint ptr %odmpriv.i342 to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %odmpriv.i342, align 8
  %arrayidx1.i345.4 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 64, i32 4
  %724 = ptrtoint ptr %arrayidx1.i345.4 to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load i32, ptr %arrayidx1.i345.4, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %723, i32 noundef 2924, i32 noundef -1, i32 noundef %725) #8
  %726 = ptrtoint ptr %odmpriv.i342 to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %odmpriv.i342, align 8
  %arrayidx1.i345.5 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 64, i32 5
  %728 = ptrtoint ptr %arrayidx1.i345.5 to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load i32, ptr %arrayidx1.i345.5, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %727, i32 noundef 2160, i32 noundef -1, i32 noundef %729) #8
  %730 = ptrtoint ptr %odmpriv.i342 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %odmpriv.i342, align 8
  %arrayidx1.i345.6 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 64, i32 6
  %732 = ptrtoint ptr %arrayidx1.i345.6 to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load i32, ptr %arrayidx1.i345.6, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %731, i32 noundef 2144, i32 noundef -1, i32 noundef %733) #8
  %734 = ptrtoint ptr %odmpriv.i342 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %odmpriv.i342, align 8
  %arrayidx1.i345.7 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 64, i32 7
  %736 = ptrtoint ptr %arrayidx1.i345.7 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load i32, ptr %arrayidx1.i345.7, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %735, i32 noundef 2148, i32 noundef -1, i32 noundef %737) #8
  %738 = ptrtoint ptr %odmpriv.i342 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %odmpriv.i342, align 8
  %arrayidx1.i345.8 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 64, i32 8
  %740 = ptrtoint ptr %arrayidx1.i345.8 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load i32, ptr %arrayidx1.i345.8, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %739, i32 noundef 2564, i32 noundef -1, i32 noundef %741) #8
  %742 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %743, i32 noundef 3152, i32 noundef 255, i32 noundef 80) #8
  %744 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %odmpriv, align 8
  %conv169 = and i32 %call, 255
  tail call void @rtw_hal_write_bbreg(ptr noundef %745, i32 noundef 3152, i32 noundef 255, i32 noundef %conv169) #8
  br i1 %is2T, label %if.then171, label %_PHY_ReloadADDARegisters8723B.exit.if.end175_crit_edge

_PHY_ReloadADDARegisters8723B.exit.if.end175_crit_edge: ; preds = %_PHY_ReloadADDARegisters8723B.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

if.then171:                                       ; preds = %_PHY_ReloadADDARegisters8723B.exit
  call void @__sanitizer_cov_trace_pc() #10
  %746 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %747, i32 noundef 3160, i32 noundef 255, i32 noundef 80) #8
  %748 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %odmpriv, align 8
  %conv174 = and i32 %call2, 255
  tail call void @rtw_hal_write_bbreg(ptr noundef %749, i32 noundef 3160, i32 noundef 255, i32 noundef %conv174) #8
  br label %if.end175

if.end175:                                        ; preds = %if.then171, %_PHY_ReloadADDARegisters8723B.exit.if.end175_crit_edge
  %750 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %751, i32 noundef 3632, i32 noundef -1, i32 noundef 16813056) #8
  %752 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %odmpriv, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %753, i32 noundef 3636, i32 noundef -1, i32 noundef 16813056) #8
  br label %if.end178

if.end178:                                        ; preds = %if.end175, %if.end149.if.end178_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @phy_SimularityCompare_8723B(ptr nocapture noundef %result, i8 noundef zeroext %c1, i8 noundef zeroext %c2) unnamed_addr #6 align 64 {
if.end38:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %c1 to i32
  %idxprom16 = zext i8 %c2 to i32
  %arrayidx34 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 0
  %0 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx34, align 4
  %arrayidx37 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 0
  %2 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp39 = icmp sgt i32 %1, %3
  %sub = sub i32 %1, %3
  %sub40 = sub i32 %3, %1
  %cond = select i1 %cmp39, i32 %sub, i32 %sub40
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond)
  %cmp41 = icmp ugt i32 %cond, 5
  %spec.select = zext i1 %cmp41 to i32
  %arrayidx7.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7.1, align 4
  %and.1 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp8.not.1 = icmp eq i32 %and.1, 0
  %or.1 = or i32 %5, -1024
  %tmp1.0.1 = select i1 %cmp8.not.1, i32 %5, i32 %or.1
  %arrayidx18.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 1
  %6 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx18.1, align 4
  %and19.1 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.1)
  %cmp20.not.1 = icmp eq i32 %and19.1, 0
  %or25.1 = or i32 %7, -1024
  %spec.select.1 = select i1 %cmp20.not.1, i32 %7, i32 %or25.1
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp1.0.1, i32 %spec.select.1)
  %cmp39.1 = icmp sgt i32 %tmp1.0.1, %spec.select.1
  %sub.1 = sub i32 %tmp1.0.1, %spec.select.1
  %sub40.1 = sub i32 %spec.select.1, %tmp1.0.1
  %cond.1 = select i1 %cmp39.1, i32 %sub.1, i32 %sub40.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.1)
  %cmp41.1 = icmp ugt i32 %cond.1, 5
  %or76.1 = or i32 %spec.select, 2
  %SimularityBitMap.1.1 = select i1 %cmp41.1, i32 %or76.1, i32 %spec.select
  %arrayidx34.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 2
  %8 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx34.2, align 4
  %arrayidx37.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 2
  %10 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx37.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp39.2 = icmp sgt i32 %9, %11
  %sub.2 = sub i32 %9, %11
  %sub40.2 = sub i32 %11, %9
  %cond.2 = select i1 %cmp39.2, i32 %sub.2, i32 %sub40.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.2)
  %cmp41.2 = icmp ugt i32 %cond.2, 5
  br i1 %cmp41.2, label %land.lhs.true.2, label %if.end38.if.end38.3_crit_edge

if.end38.if.end38.3_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.3

land.lhs.true.2:                                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %SimularityBitMap.1.1)
  %tobool.not.2 = icmp eq i32 %SimularityBitMap.1.1, 0
  br i1 %tobool.not.2, label %if.then46.2, label %if.else74.2

if.then46.2:                                      ; preds = %land.lhs.true.2
  %arrayidx49.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 2
  %12 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx49.2, align 4
  %arrayidx52.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 3
  %14 = ptrtoint ptr %arrayidx52.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx52.2, align 4
  %add53.2 = sub i32 0, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add53.2)
  %cmp54.2 = icmp eq i32 %13, %add53.2
  br i1 %cmp54.2, label %if.then46.2.if.end38.3_crit_edge, label %if.else57.2

if.then46.2.if.end38.3_crit_edge:                 ; preds = %if.then46.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.3

if.else57.2:                                      ; preds = %if.then46.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx60.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 2
  %16 = ptrtoint ptr %arrayidx60.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx60.2, align 4
  %arrayidx64.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 3
  %18 = ptrtoint ptr %arrayidx64.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx64.2, align 4
  %add65.2 = sub i32 0, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add65.2)
  %cmp66.2 = icmp eq i32 %17, %add65.2
  %spec.select30 = select i1 %cmp66.2, i8 %c1, i8 -1
  %spec.select31 = select i1 %cmp66.2, i32 0, i32 4
  br label %if.end38.3

if.else74.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  %or76.2 = or i32 %SimularityBitMap.1.1, 4
  br label %if.end38.3

if.end38.3:                                       ; preds = %if.else74.2, %if.else57.2, %if.then46.2.if.end38.3_crit_edge, %if.end38.if.end38.3_crit_edge
  %final_candidate.sroa.0.2 = phi i8 [ -1, %if.else74.2 ], [ -1, %if.end38.if.end38.3_crit_edge ], [ %c2, %if.then46.2.if.end38.3_crit_edge ], [ %spec.select30, %if.else57.2 ]
  %SimularityBitMap.1.2 = phi i32 [ %or76.2, %if.else74.2 ], [ %SimularityBitMap.1.1, %if.end38.if.end38.3_crit_edge ], [ 0, %if.then46.2.if.end38.3_crit_edge ], [ %spec.select31, %if.else57.2 ]
  %arrayidx7.3 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 3
  %20 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx7.3, align 4
  %and.3 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %cmp8.not.3 = icmp eq i32 %and.3, 0
  %or.3 = or i32 %21, -1024
  %tmp1.0.3 = select i1 %cmp8.not.3, i32 %21, i32 %or.3
  %arrayidx18.3 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 3
  %22 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx18.3, align 4
  %and19.3 = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.3)
  %cmp20.not.3 = icmp eq i32 %and19.3, 0
  %or25.3 = or i32 %23, -1024
  %spec.select.3 = select i1 %cmp20.not.3, i32 %23, i32 %or25.3
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp1.0.3, i32 %spec.select.3)
  %cmp39.3 = icmp sgt i32 %tmp1.0.3, %spec.select.3
  %sub.3 = sub i32 %tmp1.0.3, %spec.select.3
  %sub40.3 = sub i32 %spec.select.3, %tmp1.0.3
  %cond.3 = select i1 %cmp39.3, i32 %sub.3, i32 %sub40.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.3)
  %cmp41.3 = icmp ugt i32 %cond.3, 5
  %or76.3 = or i32 %SimularityBitMap.1.2, 8
  %spec.select32 = select i1 %cmp41.3, i32 %or76.3, i32 %SimularityBitMap.1.2
  %arrayidx34.4 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 4
  %24 = ptrtoint ptr %arrayidx34.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx34.4, align 4
  %arrayidx37.4 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 4
  %26 = ptrtoint ptr %arrayidx37.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx37.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp39.4 = icmp sgt i32 %25, %27
  %sub.4 = sub i32 %25, %27
  %sub40.4 = sub i32 %27, %25
  %cond.4 = select i1 %cmp39.4, i32 %sub.4, i32 %sub40.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.4)
  %cmp41.4 = icmp ugt i32 %cond.4, 5
  %or76.4 = or i32 %spec.select32, 16
  %SimularityBitMap.1.4 = select i1 %cmp41.4, i32 %or76.4, i32 %spec.select32
  %arrayidx7.5 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 5
  %28 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx7.5, align 4
  %and.5 = and i32 %29, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %cmp8.not.5 = icmp eq i32 %and.5, 0
  %or.5 = or i32 %29, -1024
  %tmp1.0.5 = select i1 %cmp8.not.5, i32 %29, i32 %or.5
  %arrayidx18.5 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 5
  %30 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx18.5, align 4
  %and19.5 = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.5)
  %cmp20.not.5 = icmp eq i32 %and19.5, 0
  %or25.5 = or i32 %31, -1024
  %spec.select.5 = select i1 %cmp20.not.5, i32 %31, i32 %or25.5
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp1.0.5, i32 %spec.select.5)
  %cmp39.5 = icmp sgt i32 %tmp1.0.5, %spec.select.5
  %sub.5 = sub i32 %tmp1.0.5, %spec.select.5
  %sub40.5 = sub i32 %spec.select.5, %tmp1.0.5
  %cond.5 = select i1 %cmp39.5, i32 %sub.5, i32 %sub40.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.5)
  %cmp41.5 = icmp ugt i32 %cond.5, 5
  %or76.5 = or i32 %SimularityBitMap.1.4, 32
  %SimularityBitMap.1.5 = select i1 %cmp41.5, i32 %or76.5, i32 %SimularityBitMap.1.4
  %arrayidx34.6 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 6
  %32 = ptrtoint ptr %arrayidx34.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx34.6, align 4
  %arrayidx37.6 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 6
  %34 = ptrtoint ptr %arrayidx37.6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx37.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp39.6 = icmp sgt i32 %33, %35
  %sub.6 = sub i32 %33, %35
  %sub40.6 = sub i32 %35, %33
  %cond.6 = select i1 %cmp39.6, i32 %sub.6, i32 %sub40.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.6)
  %cmp41.6 = icmp ugt i32 %cond.6, 5
  br i1 %cmp41.6, label %land.lhs.true.6, label %if.end38.3.if.end38.7_crit_edge

if.end38.3.if.end38.7_crit_edge:                  ; preds = %if.end38.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.7

land.lhs.true.6:                                  ; preds = %if.end38.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %SimularityBitMap.1.5)
  %tobool.not.6 = icmp eq i32 %SimularityBitMap.1.5, 0
  br i1 %tobool.not.6, label %if.then46.6, label %if.else74.6

if.then46.6:                                      ; preds = %land.lhs.true.6
  %arrayidx49.6 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 6
  %36 = ptrtoint ptr %arrayidx49.6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx49.6, align 4
  %arrayidx52.6 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 7
  %38 = ptrtoint ptr %arrayidx52.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx52.6, align 4
  %add53.6 = sub i32 0, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %add53.6)
  %cmp54.6 = icmp eq i32 %37, %add53.6
  br i1 %cmp54.6, label %if.then46.6.if.end38.7_crit_edge, label %if.else57.6

if.then46.6.if.end38.7_crit_edge:                 ; preds = %if.then46.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.7

if.else57.6:                                      ; preds = %if.then46.6
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx60.6 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 6
  %40 = ptrtoint ptr %arrayidx60.6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx60.6, align 4
  %arrayidx64.6 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 7
  %42 = ptrtoint ptr %arrayidx64.6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx64.6, align 4
  %add65.6 = sub i32 0, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %add65.6)
  %cmp66.6 = icmp eq i32 %41, %add65.6
  %spec.select33 = select i1 %cmp66.6, i8 %c1, i8 -1
  %spec.select34 = select i1 %cmp66.6, i32 0, i32 64
  br label %if.end38.7

if.else74.6:                                      ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #10
  %or76.6 = or i32 %SimularityBitMap.1.5, 64
  br label %if.end38.7

if.end38.7:                                       ; preds = %if.else74.6, %if.else57.6, %if.then46.6.if.end38.7_crit_edge, %if.end38.3.if.end38.7_crit_edge
  %final_candidate.sroa.12.2 = phi i8 [ -1, %if.else74.6 ], [ -1, %if.end38.3.if.end38.7_crit_edge ], [ %c2, %if.then46.6.if.end38.7_crit_edge ], [ %spec.select33, %if.else57.6 ]
  %SimularityBitMap.1.6 = phi i32 [ %or76.6, %if.else74.6 ], [ %SimularityBitMap.1.5, %if.end38.3.if.end38.7_crit_edge ], [ 0, %if.then46.6.if.end38.7_crit_edge ], [ %spec.select34, %if.else57.6 ]
  %arrayidx7.7 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 7
  %44 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx7.7, align 4
  %and.7 = and i32 %45, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %cmp8.not.7 = icmp eq i32 %and.7, 0
  %or.7 = or i32 %45, -1024
  %tmp1.0.7 = select i1 %cmp8.not.7, i32 %45, i32 %or.7
  %arrayidx18.7 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 7
  %46 = ptrtoint ptr %arrayidx18.7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx18.7, align 4
  %and19.7 = and i32 %47, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.7)
  %cmp20.not.7 = icmp eq i32 %and19.7, 0
  %or25.7 = or i32 %47, -1024
  %spec.select.7 = select i1 %cmp20.not.7, i32 %47, i32 %or25.7
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp1.0.7, i32 %spec.select.7)
  %cmp39.7 = icmp sgt i32 %tmp1.0.7, %spec.select.7
  %sub.7 = sub i32 %tmp1.0.7, %spec.select.7
  %sub40.7 = sub i32 %spec.select.7, %tmp1.0.7
  %cond.7 = select i1 %cmp39.7, i32 %sub.7, i32 %sub40.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.7)
  %cmp41.7 = icmp ugt i32 %cond.7, 5
  br i1 %cmp41.7, label %for.inc.7.thread, label %for.inc.7

for.inc.7.thread:                                 ; preds = %if.end38.7
  call void @__sanitizer_cov_trace_pc() #10
  %or76.7 = or i32 %SimularityBitMap.1.6, 128
  br label %if.else110

for.inc.7:                                        ; preds = %if.end38.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %SimularityBitMap.1.6)
  %cmp79 = icmp eq i32 %SimularityBitMap.1.6, 0
  br i1 %cmp79, label %for.body84.preheader, label %for.inc.7.if.else110_crit_edge

for.inc.7.if.else110_crit_edge:                   ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else110

for.body84.preheader:                             ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %final_candidate.sroa.0.2)
  %cmp86.not = icmp eq i8 %final_candidate.sroa.0.2, -1
  br i1 %cmp86.not, label %for.body84.preheader.for.inc106_crit_edge, label %for.body95.lr.ph

for.body84.preheader.for.inc106_crit_edge:        ; preds = %for.body84.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc106

for.body95.lr.ph:                                 ; preds = %for.body84.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom97 = zext i8 %final_candidate.sroa.0.2 to i32
  %arrayidx99 = getelementptr [8 x i32], ptr %result, i32 %idxprom97, i32 0
  %48 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx99, align 4
  %arrayidx101 = getelementptr [8 x i32], ptr %result, i32 3, i32 0
  %50 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx101, align 4
  %arrayidx99.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom97, i32 1
  %51 = ptrtoint ptr %arrayidx99.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx99.1, align 4
  %arrayidx101.1 = getelementptr [8 x i32], ptr %result, i32 3, i32 1
  %53 = ptrtoint ptr %arrayidx101.1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx101.1, align 4
  br label %for.inc106

for.inc106:                                       ; preds = %for.body95.lr.ph, %for.body84.preheader.for.inc106_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %final_candidate.sroa.12.2)
  %cmp86.not.1 = icmp eq i8 %final_candidate.sroa.12.2, -1
  br i1 %cmp86.not.1, label %for.inc106.cleanup_crit_edge, label %for.body95.lr.ph.1

for.inc106.cleanup_crit_edge:                     ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body95.lr.ph.1:                               ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom97.1 = zext i8 %final_candidate.sroa.12.2 to i32
  %arrayidx99.125 = getelementptr [8 x i32], ptr %result, i32 %idxprom97.1, i32 4
  %54 = ptrtoint ptr %arrayidx99.125 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx99.125, align 4
  %arrayidx101.126 = getelementptr [8 x i32], ptr %result, i32 3, i32 4
  %56 = ptrtoint ptr %arrayidx101.126 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx101.126, align 4
  %arrayidx99.1.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom97.1, i32 5
  br label %cleanup.sink.split

if.else110:                                       ; preds = %for.inc.7.if.else110_crit_edge, %for.inc.7.thread
  %SimularityBitMap.1.729 = phi i32 [ %or76.7, %for.inc.7.thread ], [ %SimularityBitMap.1.6, %for.inc.7.if.else110_crit_edge ]
  %and111 = and i32 %SimularityBitMap.1.729, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %for.cond114.preheader, label %if.else110.if.end126_crit_edge

if.else110.if.end126_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

for.cond114.preheader:                            ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx120 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 0
  %57 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx120, align 4
  %arrayidx122 = getelementptr [8 x i32], ptr %result, i32 3, i32 0
  %59 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx122, align 4
  %arrayidx120.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 1
  %60 = ptrtoint ptr %arrayidx120.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx120.1, align 4
  %arrayidx122.1 = getelementptr [8 x i32], ptr %result, i32 3, i32 1
  %62 = ptrtoint ptr %arrayidx122.1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx122.1, align 4
  br label %if.end126

if.end126:                                        ; preds = %for.cond114.preheader, %if.else110.if.end126_crit_edge
  %and127 = and i32 %SimularityBitMap.1.729, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %for.cond130.preheader, label %if.end126.if.end142_crit_edge

if.end126.if.end142_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end142

for.cond130.preheader:                            ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx136 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 2
  %63 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx136, align 4
  %arrayidx138 = getelementptr [8 x i32], ptr %result, i32 3, i32 2
  %65 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx138, align 4
  %arrayidx136.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 3
  %66 = ptrtoint ptr %arrayidx136.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx136.1, align 4
  %arrayidx138.1 = getelementptr [8 x i32], ptr %result, i32 3, i32 3
  %68 = ptrtoint ptr %arrayidx138.1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx138.1, align 4
  br label %if.end142

if.end142:                                        ; preds = %for.cond130.preheader, %if.end126.if.end142_crit_edge
  %and143 = and i32 %SimularityBitMap.1.729, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %for.cond146.preheader, label %if.end142.if.end158_crit_edge

if.end142.if.end158_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

for.cond146.preheader:                            ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx152 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 4
  %69 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx152, align 4
  %arrayidx154 = getelementptr [8 x i32], ptr %result, i32 3, i32 4
  %71 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx154, align 4
  %arrayidx152.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 5
  %72 = ptrtoint ptr %arrayidx152.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx152.1, align 4
  %arrayidx154.1 = getelementptr [8 x i32], ptr %result, i32 3, i32 5
  %74 = ptrtoint ptr %arrayidx154.1 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx154.1, align 4
  br label %if.end158

if.end158:                                        ; preds = %for.cond146.preheader, %if.end142.if.end158_crit_edge
  %and159 = and i32 %SimularityBitMap.1.729, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %for.cond162.preheader, label %if.end158.cleanup_crit_edge

if.end158.cleanup_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond162.preheader:                            ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx168 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 6
  %75 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx168, align 4
  %arrayidx170 = getelementptr [8 x i32], ptr %result, i32 3, i32 6
  %77 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx170, align 4
  %arrayidx168.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.cond162.preheader, %for.body95.lr.ph.1
  %arrayidx99.1.1.sink = phi ptr [ %arrayidx99.1.1, %for.body95.lr.ph.1 ], [ %arrayidx168.1, %for.cond162.preheader ]
  %.sink35 = phi i32 [ 5, %for.body95.lr.ph.1 ], [ 7, %for.cond162.preheader ]
  %78 = ptrtoint ptr %arrayidx99.1.1.sink to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx99.1.1.sink, align 4
  %arrayidx101.1.1 = getelementptr [8 x i32], ptr %result, i32 3, i32 %.sink35
  %80 = ptrtoint ptr %arrayidx101.1.1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx101.1.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end158.cleanup_crit_edge, %for.inc106.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end158.cleanup_crit_edge ], [ %cmp86.not, %for.inc106.cleanup_crit_edge ], [ false, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_read_rfreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_read32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @DeltaSwingTableIdx_2GA_P_8188E, !1, !"DeltaSwingTableIdx_2GA_P_8188E", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c", i32 34, i32 11}
!2 = !{ptr @DeltaSwingTableIdx_2GA_N_8188E, !3, !"DeltaSwingTableIdx_2GA_N_8188E", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c", i32 30, i32 11}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i8 0, i8 2}
