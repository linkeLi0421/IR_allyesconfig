; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/odm_CfoTracking.c"
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
%struct.odm_packet_info = type { i8, i8, i8, i8, i8 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_CfoTrackingReset(ptr nocapture noundef %pDM_VOID) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_VOID, align 8
  %HalData.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %HalData.i, align 8
  %CrystalCap.i = getelementptr inbounds %struct.hal_com_data, ptr %3, i32 0, i32 75
  %4 = ptrtoint ptr %CrystalCap.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %CrystalCap.i, align 4
  %6 = and i8 %5, 63
  %DefXCap = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140, i32 4
  %7 = ptrtoint ptr %DefXCap to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %DefXCap, align 4
  %bAdjust = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140, i32 2
  %8 = ptrtoint ptr %bAdjust to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %bAdjust, align 2
  %CrystalCap1.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140, i32 3
  %9 = ptrtoint ptr %CrystalCap1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %CrystalCap1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %6)
  %cmp.i = icmp eq i8 %10, %6
  br i1 %cmp.i, label %entry.odm_SetCrystalCap.exit_crit_edge, label %if.end.i

entry.odm_SetCrystalCap.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %odm_SetCrystalCap.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %CrystalCap1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %6, ptr %CrystalCap1.i, align 1
  %conv7.i = zext i8 %6 to i32
  %or.i = mul nuw nsw i32 %conv7.i, 65
  tail call void @rtw_hal_write_bbreg(ptr noundef %1, i32 noundef 44, i32 noundef 16773120, i32 noundef %or.i) #4
  br label %odm_SetCrystalCap.exit

odm_SetCrystalCap.exit:                           ; preds = %if.end.i, %entry.odm_SetCrystalCap.exit_crit_edge
  %DM_CfoTrack.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140
  %12 = ptrtoint ptr %DM_CfoTrack.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %DM_CfoTrack.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp.i7 = icmp eq i8 %13, 1
  br i1 %cmp.i7, label %odm_SetCrystalCap.exit.odm_SetATCStatus.exit_crit_edge, label %if.end.i8

odm_SetCrystalCap.exit.odm_SetATCStatus.exit_crit_edge: ; preds = %odm_SetCrystalCap.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %odm_SetATCStatus.exit

if.end.i8:                                        ; preds = %odm_SetCrystalCap.exit
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %15, i32 noundef 3372, i32 noundef 2048, i32 noundef 1) #4
  %16 = ptrtoint ptr %DM_CfoTrack.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %DM_CfoTrack.i, align 4
  br label %odm_SetATCStatus.exit

odm_SetATCStatus.exit:                            ; preds = %if.end.i8, %odm_SetCrystalCap.exit.odm_SetATCStatus.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_CfoTrackingInit(ptr nocapture noundef %pDM_VOID) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %DM_CfoTrack = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140
  %0 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_VOID, align 8
  %HalData.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %HalData.i, align 8
  %CrystalCap.i = getelementptr inbounds %struct.hal_com_data, ptr %3, i32 0, i32 75
  %4 = ptrtoint ptr %CrystalCap.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %CrystalCap.i, align 4
  %6 = and i8 %5, 63
  %CrystalCap = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140, i32 3
  %7 = ptrtoint ptr %CrystalCap to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %CrystalCap, align 1
  %DefXCap = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140, i32 4
  %8 = ptrtoint ptr %DefXCap to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %6, ptr %DefXCap, align 4
  %call.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %1, i32 noundef 3372, i32 noundef 2048) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp ne i32 %call.i, 0
  %frombool = zext i1 %tobool.i to i8
  %9 = ptrtoint ptr %DM_CfoTrack to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %DM_CfoTrack, align 4
  %bAdjust = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140, i32 2
  %10 = ptrtoint ptr %bAdjust to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %bAdjust, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_CfoTracking(ptr noundef %pDM_VOID) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %CrystalCap1 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140, i32 3
  %0 = ptrtoint ptr %CrystalCap1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %CrystalCap1, align 1
  %conv = zext i8 %1 to i32
  %SupportAbility = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 13
  %2 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %SupportAbility, align 4
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %bLinked = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 62
  %4 = ptrtoint ptr %bLinked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bLinked, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.then4_crit_edge, label %lor.lhs.false

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %bOneEntryOnly = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 66
  %6 = ptrtoint ptr %bOneEntryOnly to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bOneEntryOnly, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.then4_crit_edge, label %if.else

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %8 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pDM_VOID, align 8
  %HalData.i.i = getelementptr inbounds %struct.adapter, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %HalData.i.i, align 8
  %CrystalCap.i.i = getelementptr inbounds %struct.hal_com_data, ptr %11, i32 0, i32 75
  %12 = ptrtoint ptr %CrystalCap.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %CrystalCap.i.i, align 4
  %14 = and i8 %13, 63
  %DefXCap.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140, i32 4
  %15 = ptrtoint ptr %DefXCap.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %DefXCap.i, align 4
  %bAdjust.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140, i32 2
  %16 = ptrtoint ptr %bAdjust.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %bAdjust.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %14)
  %cmp.i.i = icmp eq i8 %1, %14
  br i1 %cmp.i.i, label %if.then4.odm_SetCrystalCap.exit.i_crit_edge, label %if.end.i.i

if.then4.odm_SetCrystalCap.exit.i_crit_edge:      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %odm_SetCrystalCap.exit.i

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %CrystalCap1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %14, ptr %CrystalCap1, align 1
  %conv7.i.i = zext i8 %14 to i32
  %or.i.i = mul nuw nsw i32 %conv7.i.i, 65
  tail call void @rtw_hal_write_bbreg(ptr noundef %9, i32 noundef 44, i32 noundef 16773120, i32 noundef %or.i.i) #4
  br label %odm_SetCrystalCap.exit.i

odm_SetCrystalCap.exit.i:                         ; preds = %if.end.i.i, %if.then4.odm_SetCrystalCap.exit.i_crit_edge
  %DM_CfoTrack.i.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140
  %18 = ptrtoint ptr %DM_CfoTrack.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %DM_CfoTrack.i.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp.i7.i = icmp eq i8 %19, 1
  br i1 %cmp.i7.i, label %odm_SetCrystalCap.exit.i.cleanup_crit_edge, label %if.end.i8.i

odm_SetCrystalCap.exit.i.cleanup_crit_edge:       ; preds = %odm_SetCrystalCap.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i8.i:                                      ; preds = %odm_SetCrystalCap.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %21, i32 noundef 3372, i32 noundef 2048, i32 noundef 1) #4
  %22 = ptrtoint ptr %DM_CfoTrack.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %DM_CfoTrack.i.i, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %packetCount = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140, i32 7
  %23 = ptrtoint ptr %packetCount to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %packetCount, align 4
  %packetCount_pre = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140, i32 8
  %25 = ptrtoint ptr %packetCount_pre to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %packetCount_pre, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp = icmp eq i32 %24, %26
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.end7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.else
  %27 = ptrtoint ptr %packetCount_pre to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %packetCount_pre, align 4
  %CFO_tail = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140, i32 5
  %28 = ptrtoint ptr %CFO_tail to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %CFO_tail, align 4
  %mul = mul i32 %29, 3125
  %div = sdiv i32 %mul, 1280
  %CFO_ave_pre = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140, i32 6
  %30 = ptrtoint ptr %CFO_ave_pre to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %CFO_ave_pre, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %div)
  %cmp10.not = icmp slt i32 %31, %div
  %sub = sub i32 %31, %div
  %sub14 = sub i32 %div, %31
  %cond = select i1 %cmp10.not, i32 %sub14, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %cond)
  %cmp15 = icmp sgt i32 %cond, 20
  br i1 %cmp15, label %land.lhs.true, label %if.end7.if.else25_crit_edge

if.end7.if.else25_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else25

land.lhs.true:                                    ; preds = %if.end7
  %largeCFOHit = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140, i32 1
  %32 = ptrtoint ptr %largeCFOHit to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %largeCFOHit, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp19 = icmp eq i8 %33, 0
  br i1 %cmp19, label %land.lhs.true21, label %land.lhs.true.if.else25_crit_edge

land.lhs.true.if.else25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else25

land.lhs.true21:                                  ; preds = %land.lhs.true
  %bAdjust = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140, i32 2
  %34 = ptrtoint ptr %bAdjust to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bAdjust, align 2, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool22.not = icmp eq i8 %35, 0
  br i1 %tobool22.not, label %if.then23, label %land.lhs.true21.if.else25_crit_edge

land.lhs.true21.if.else25_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else25

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %largeCFOHit to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %largeCFOHit, align 1
  br label %cleanup

if.else25:                                        ; preds = %land.lhs.true21.if.else25_crit_edge, %land.lhs.true.if.else25_crit_edge, %if.end7.if.else25_crit_edge
  %largeCFOHit26 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140, i32 1
  %37 = ptrtoint ptr %largeCFOHit26 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %largeCFOHit26, align 1
  %38 = ptrtoint ptr %CFO_ave_pre to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div, ptr %CFO_ave_pre, align 4
  %bAdjust29 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140, i32 2
  %39 = ptrtoint ptr %bAdjust29 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bAdjust29, align 2, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp32 = icmp eq i8 %40, 0
  br i1 %cmp32, label %if.then34, label %if.else43

if.then34:                                        ; preds = %if.else25
  %41 = add i32 %mul, -26880
  call void @__sanitizer_cov_trace_const_cmp4(i32 -53759, i32 %41)
  %42 = icmp ult i32 %41, -53759
  br i1 %42, label %if.then34.if.end52.sink.split_crit_edge, label %if.then34.if.end52_crit_edge

if.then34.if.end52_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

if.then34.if.end52.sink.split_crit_edge:          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52.sink.split

if.else43:                                        ; preds = %if.else25
  %43 = add i32 %mul, 12799
  call void @__sanitizer_cov_trace_const_cmp4(i32 25599, i32 %43)
  %44 = icmp ult i32 %43, 25599
  br i1 %44, label %if.else43.if.end52.sink.split_crit_edge, label %if.else43.if.end52_crit_edge

if.else43.if.end52_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

if.else43.if.end52.sink.split_crit_edge:          ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52.sink.split

if.end52.sink.split:                              ; preds = %if.else43.if.end52.sink.split_crit_edge, %if.then34.if.end52.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.then34.if.end52.sink.split_crit_edge ], [ 0, %if.else43.if.end52.sink.split_crit_edge ]
  %45 = ptrtoint ptr %bAdjust29 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.sink, ptr %bAdjust29, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.end52.sink.split, %if.else43.if.end52_crit_edge, %if.then34.if.end52_crit_edge
  %bBtEnabled = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 67
  %46 = ptrtoint ptr %bBtEnabled to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bBtEnabled, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool53.not = icmp eq i8 %47, 0
  br i1 %tobool53.not, label %if.end52.if.end56_crit_edge, label %if.then54

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

if.then54:                                        ; preds = %if.end52
  %48 = ptrtoint ptr %bAdjust29 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %bAdjust29, align 2
  %DefXCap = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140, i32 4
  %49 = ptrtoint ptr %DefXCap to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %DefXCap, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %50)
  %cmp.i = icmp eq i8 %1, %50
  br i1 %cmp.i, label %if.then54.if.end104_crit_edge, label %if.end.i

if.then54.if.end104_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end104

if.end.i:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %CrystalCap1 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %CrystalCap1, align 1
  %52 = and i8 %50, 63
  %53 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pDM_VOID, align 8
  %conv7.i = zext i8 %52 to i32
  %or.i = mul nuw nsw i32 %conv7.i, 65
  tail call void @rtw_hal_write_bbreg(ptr noundef %54, i32 noundef 44, i32 noundef 16773120, i32 noundef %or.i) #4
  br label %if.end56

if.end56:                                         ; preds = %if.end.i, %if.end52.if.end56_crit_edge
  %55 = ptrtoint ptr %bAdjust29 to i32
  call void @__asan_load1_noabort(i32 %55)
  %.pr = load i8, ptr %bAdjust29, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool58.not = icmp eq i8 %.pr, 0
  br i1 %tobool58.not, label %if.end56.if.end104_crit_edge, label %if.then59

if.end56.if.end104_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end104

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_const_cmp4(i32 14079, i32 %mul)
  %cmp60 = icmp sgt i32 %mul, 14079
  br i1 %cmp60, label %if.then83, label %if.else66

if.else66:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14079, i32 %mul)
  %cmp67 = icmp slt i32 %mul, -14079
  br i1 %cmp67, label %if.then89, label %if.else66.if.end93_crit_edge

if.else66.if.end93_crit_edge:                     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end93

if.then83:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  %sub64 = add nsw i32 %div, 1014
  %56 = lshr i32 %sub64, 2
  %conv65 = add nuw nsw i32 %56, 1
  %conv84 = and i32 %conv65, 255
  %add85 = add nuw nsw i32 %conv84, %conv
  br label %if.end93

if.then89:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #6
  %sub71 = sub nsw i32 10, %div
  %57 = lshr i32 %sub71, 2
  %conv74 = add nuw nsw i32 %57, 1
  %conv90 = and i32 %conv74, 255
  %sub91 = sub nsw i32 %conv, %conv90
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %if.then83, %if.else66.if.end93_crit_edge
  %CrystalCap.0 = phi i32 [ %add85, %if.then83 ], [ %sub91, %if.then89 ], [ %conv, %if.else66.if.end93_crit_edge ]
  %58 = tail call i32 @llvm.smax.i32(i32 %CrystalCap.0, i32 0)
  %59 = tail call i32 @llvm.umin.i32(i32 %58, i32 63)
  %60 = trunc i32 %59 to i8
  %61 = ptrtoint ptr %CrystalCap1 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %CrystalCap1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %60)
  %cmp.i175 = icmp eq i8 %62, %60
  br i1 %cmp.i175, label %if.end93.if.end104_crit_edge, label %if.end.i178

if.end93.if.end104_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end104

if.end.i178:                                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %CrystalCap1 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %60, ptr %CrystalCap1, align 1
  %64 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pDM_VOID, align 8
  %or.i177 = mul nuw nsw i32 %59, 65
  tail call void @rtw_hal_write_bbreg(ptr noundef %65, i32 noundef 44, i32 noundef 16773120, i32 noundef %or.i177) #4
  br label %if.end104

if.end104:                                        ; preds = %if.end.i178, %if.end93.if.end104_crit_edge, %if.end56.if.end104_crit_edge, %if.then54.if.end104_crit_edge
  %66 = add i32 %mul, 102399
  call void @__sanitizer_cov_trace_const_cmp4(i32 204799, i32 %66)
  %67 = icmp ult i32 %66, 204799
  %DM_CfoTrack.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 140
  %68 = ptrtoint ptr %DM_CfoTrack.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %DM_CfoTrack.i, align 4, !range !9
  br i1 %67, label %if.then110, label %if.else111

if.then110:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp.i180 = icmp eq i8 %69, 0
  br i1 %cmp.i180, label %if.then110.cleanup_crit_edge, label %if.end.i181

if.then110.cleanup_crit_edge:                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i181:                                      ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #6
  %70 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %71, i32 noundef 3372, i32 noundef 2048, i32 noundef 0) #4
  %72 = ptrtoint ptr %DM_CfoTrack.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %DM_CfoTrack.i, align 4
  br label %cleanup

if.else111:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp.i183 = icmp eq i8 %69, 1
  br i1 %cmp.i183, label %if.else111.cleanup_crit_edge, label %if.end.i184

if.else111.cleanup_crit_edge:                     ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i184:                                      ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #6
  %73 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pDM_VOID, align 8
  tail call void @rtw_hal_write_bbreg(ptr noundef %74, i32 noundef 3372, i32 noundef 2048, i32 noundef 1) #4
  %75 = ptrtoint ptr %DM_CfoTrack.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %DM_CfoTrack.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i184, %if.else111.cleanup_crit_edge, %if.end.i181, %if.then110.cleanup_crit_edge, %if.then23, %if.else.cleanup_crit_edge, %if.end.i8.i, %odm_SetCrystalCap.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_parsing_cfo(ptr nocapture noundef %dm_void, ptr nocapture noundef readonly %pkt_info_void, ptr nocapture noundef readonly %cfotail) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %SupportAbility = getelementptr inbounds %struct.dm_odm_t, ptr %dm_void, i32 0, i32 13
  %0 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %SupportAbility, align 4
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %station_id = getelementptr inbounds %struct.odm_packet_info, ptr %pkt_info_void, i32 0, i32 1
  %2 = ptrtoint ptr %station_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %station_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %cfotail to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cfotail, align 1
  %conv6 = sext i8 %5 to i32
  %arrayidx8 = getelementptr %struct.dm_odm_t, ptr %dm_void, i32 0, i32 140, i32 5, i32 0
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv6, ptr %arrayidx8, align 4
  %arrayidx.1 = getelementptr i8, ptr %cfotail, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.1, align 1
  %conv6.1 = sext i8 %8 to i32
  %arrayidx8.1 = getelementptr %struct.dm_odm_t, ptr %dm_void, i32 0, i32 140, i32 5, i32 1
  %9 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv6.1, ptr %arrayidx8.1, align 4
  %packetCount = getelementptr inbounds %struct.dm_odm_t, ptr %dm_void, i32 0, i32 140, i32 7
  %10 = ptrtoint ptr %packetCount to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %packetCount, align 4
  %inc14 = add i32 %11, 1
  store i32 %inc14, ptr %packetCount, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_write_bbreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_read_bbreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i8 0, i8 2}
