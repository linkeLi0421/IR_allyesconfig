; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/odm_HWConfig.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/odm_HWConfig.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_info = type { i8, i8, [3 x i8], [3 x i8], i8, i8, i8, [3 x i8], [3 x i8] }
%struct.odm_dm_struct = type { ptr, i8, i8, i8, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x ptr], i16, [32 x %struct.odm_ra_info], %struct.odm_phy_dbg_info, %struct.fast_ant_train, %struct.rtw_dig, %struct.rtl_ps, %struct.false_alarm_stats, %struct.sw_ant_switch, %struct.edca_turbo, i8, %struct.odm_rate_adapt, %struct.odm_rf_cal, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.odm_ra_info = type { i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, [5 x i16], i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.odm_phy_dbg_info = type { [3 x i8], i64, i64, i64, [3 x i32] }
%struct.fast_ant_train = type { i8, i8, i8, [32 x i8], [32 x i8], [32 x i8], [32 x i32], [32 x i32], [32 x i32], [32 x i32], i8, i8 }
%struct.rtw_dig = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32 }
%struct.rtl_ps = type { i8, i8, i8, i32, i32, i32, i32 }
%struct.false_alarm_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sw_ant_switch = type { i8, i8, i8 }
%struct.edca_turbo = type { i8, i8, i32 }
%struct.odm_rate_adapt = type { i8, i8, i8, i32 }
%struct.odm_rf_cal = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, [2 x i8], [2 x i8], i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [2 x i8], i8, [8 x i8], i8, %struct.ijk_matrix_regs_set, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [16 x i32], [4 x i32], [9 x i32], [9 x i32], [2 x [2 x i32]], i8, i8, i8, i8, i8 }
%struct.ijk_matrix_regs_set = type { i8, [1 x [8 x i32]] }
%struct.phy_status_rpt = type { [3 x %struct.phy_rx_agc_info], [2 x i8], i8, i8, i8, i8, i8, [2 x i8], [2 x i8], [2 x i8], [3 x i8], i8, [3 x i8], [2 x i8], [2 x i8], i8, i8, i8 }
%struct.phy_rx_agc_info = type { i8 }
%struct.odm_per_pkt_info = type { i8, i8, i8, i8, i8 }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.led_priv, ptr, %struct.wifidirect_info, %struct.hal_data_8188e, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, i32, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, %struct.spinlock, [16 x ptr], i32, [6 x i8], [6 x i8], [4 x i8], ptr, [6 x i8], [4 x i8], %struct.br_ext_info, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i8, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect, %struct.timer_list, i8, i8, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.wlan_bcn_info }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.ndis_802_11_config, i32, [16 x i8], %struct.wlan_phy_info, i32, [768 x i8] }
%struct.ndis_802_11_config = type { i32, i32, i32, i32, %struct.ndis_802_11_config_fh }
%struct.ndis_802_11_config_fh = type { i32, i32, i32, i32 }
%struct.wlan_phy_info = type { i8, i8, i8, i8 }
%struct.wlan_bcn_info = type { i8, i32, i32, i32, i16, i8 }
%struct.qos_priv = type { i32 }
%struct.ht_priv = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.rt_link_detect = type { i32, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlme_ext_priv = type { ptr, i8, %struct.atomic_t, i16, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.rt_channel_info], %struct.p2p_channels, [13 x i8], [13 x i8], %struct.ss_res, %struct.mlme_ext_info, %struct.timer_list, %struct.timer_list, i16, i8, i8, i32, i64, i8, i8, i8, i16, i8 }
%struct.atomic_t = type { i32 }
%struct.rt_channel_info = type { i8, i32, i32 }
%struct.p2p_channels = type { [10 x %struct.p2p_reg_class], i32 }
%struct.p2p_reg_class = type { i8, [20 x i8], i32 }
%struct.ss_res = type { i32, i32, i32, i32, i8, i8, [9 x %struct.ndis_802_11_ssid], [51 x %struct.rtw_ieee80211_channel] }
%struct.rtw_ieee80211_channel = type { i16, i32 }
%struct.mlme_ext_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i8], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ADDBA_request, %struct.WMM_para_element, %struct.HT_caps_element, %struct.HT_info_element, %struct.wlan_bssid_ex, [32 x %struct.FW_Sta_Info] }
%struct.ADDBA_request = type { i8, i8, i16, i16, i16 }
%struct.WMM_para_element = type { i8, i8, [4 x %struct.AC_param] }
%struct.AC_param = type { i8, i8, i16 }
%struct.HT_caps_element = type { %union.anon.100 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i8, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.io_priv = type { ptr, %struct.intf_hdl }
%struct.intf_hdl = type { ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.semaphore, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, i32, ptr, i8, i8, i8, i64, i64, i64, i64, i64, ptr, i8, [4 x i8], %struct.semaphore, i8, %struct.tasklet_struct, i32, i32, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i16, i32, %struct.mutex, %struct.submit_ctx }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.102, i32 }
%union.anon.102 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, i32, i32, i32, i32, %struct.semaphore, i8, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, i8, i8, i8, [2 x i32], [2 x i8], i32, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.signal_stat = type { i8, i8, i32, i32 }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, i8, i8, i32, i32, i32, [32 x ptr], i16, i16, i16, %struct.wlan_acl_pool }
%struct.wlan_acl_pool = type { i32, i32, [16 x %struct.rtw_wlan_acl_node], %struct.__queue }
%struct.rtw_wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i32, i32, [4 x %union.Keytype], [4 x %union.Keytype], [4 x %union.Keytype], %union.pn48, %union.pn48, %struct.arc4_ctx, %struct.arc4_ctx, i32, i32, i32, i32, i32, i32, [512 x i8], i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.ndis_802_11_wep, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.rt_pmkid_list], i8, i8 }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.ndis_802_11_wep = type { i32, i32, i32, [16 x i8] }
%struct.rt_pmkid_list = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
%struct.registry_priv = type <{ i8, i8, i8, i8, %struct.ndis_802_11_ssid, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wlan_bssid_ex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], [16 x i8], i8, [2 x i8] }>
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i32, %struct.work_struct, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, %struct.timer_list, i32, i8, i32, i32, i32, i8, i8 }
%struct.eeprom_priv = type { i8, i8, i8, i8, [6 x i8], i16, i8, [3 x i8], [512 x i8] }
%struct.led_priv = type { %struct.LED_871x, i8 }
%struct.LED_871x = type { ptr, i32, i32, i8, i8, i8, i32, i8, i8, i8, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wifidirect_info = type { ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.tx_provdisc_req_info, %struct.rx_provdisc_req_info, %struct.tx_invite_req_info, [10 x %struct.profile_info], %struct.tx_invite_resp_info, %struct.tx_nego_req_info, %struct.group_id_info, %struct.scan_limit_info, %struct.scan_limit_info, i32, i32, i32, [6 x i8], [6 x i8], [4 x i8], i8, i8, i8, [8 x i8], [7 x i8], i8, [6 x i8], [6 x i8], i8, [32 x i8], i8, i8, i8, i8, i16, i8, [32 x i8], i8, [32 x i8], i8, i8, i8, i32, i16, i32, [100 x i8], i32, i32, i8, i8, i8, i8, [2 x i8], [2 x i32], [2 x i32], [2 x i32] }
%struct.tx_provdisc_req_info = type { i16, [2 x i16], %struct.ndis_802_11_ssid, [6 x i8], [6 x i8], i8 }
%struct.rx_provdisc_req_info = type { [6 x i8], [4 x i8] }
%struct.tx_invite_req_info = type { i8, i8, [32 x i8], i8, [6 x i8], [6 x i8], i8, i8 }
%struct.profile_info = type { i8, [32 x i8], [6 x i8] }
%struct.tx_invite_resp_info = type { i8 }
%struct.tx_nego_req_info = type { [2 x i16], [6 x i8], i8 }
%struct.group_id_info = type { [6 x i8], [32 x i8] }
%struct.scan_limit_info = type { i8, [2 x i8] }
%struct.hal_data_8188e = type { %struct.HAL_VERSION, i16, i16, i16, i16, i8, i32, i32, i8, i8, i16, i8, i8, [14 x i8], [14 x i8], [4 x i8], [4 x i8], [3 x [14 x i8]], [3 x [14 x i8]], [3 x [14 x i8]], [3 x [14 x i8]], i8, i8, i8, i8, i8, [13 x [16 x i32]], i8, i8, i32, [2 x %struct.bb_reg_def], [2 x i32], i8, i8, i8, i8, i8, %struct.dm_priv, %struct.odm_dm_struct, i8, i8, i8, i8, i8, i8, i8, i16, %struct.P2P_PS_Offload_t, i8, i32, i8, i8, i32, i8, i8, i8, i8 }
%struct.HAL_VERSION = type { i32, i32, i32, i8 }
%struct.bb_reg_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_priv = type { i32, i32, i32, i32 }
%struct.P2P_PS_Offload_t = type { i8 }
%struct.rereg_nd_name_data = type { ptr, [16 x i8], i8, i8 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.br_ext_info = type { i32, i32, i32, i32, [6 x i8], i32 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [6 x i8], i8, i16, [8 x i8], i8, [32 x i8], i16, [32 x i8], i8, i8, %struct.rssi_sta, i8, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }

@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_PhyStatusQuery(ptr noundef %dm_odm, ptr noundef %pPhyInfo, ptr nocapture noundef readonly %pPhyStatus, ptr nocapture noundef readonly %pPktinfo, ptr nocapture noundef writeonly %adapt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pPktinfo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pPktinfo, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %2 = icmp ult i8 %1, 4
  %RxMIMOSignalQuality.i = getelementptr %struct.phy_info, ptr %pPhyInfo, i32 0, i32 2
  %3 = ptrtoint ptr %RxMIMOSignalQuality.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %RxMIMOSignalQuality.i, align 1
  %arrayidx8.i = getelementptr %struct.phy_info, ptr %pPhyInfo, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %arrayidx8.i, align 1
  br i1 %2, label %if.then.i, label %if.end166.2.i

if.then.i:                                        ; preds = %entry
  %NumQryPhyStatusCCK.i = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 20, i32 2
  %5 = ptrtoint ptr %NumQryPhyStatusCCK.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %NumQryPhyStatusCCK.i, align 8
  %inc.i = add i64 %6, 1
  store i64 %inc.i, ptr %NumQryPhyStatusCCK.i, align 8
  %bCckHighPower.i = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 1
  %7 = ptrtoint ptr %bCckHighPower.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bCckHighPower.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not.i = icmp eq i8 %8, 0
  %cck_agc_rpt_ofdm_cfosho_a.i = getelementptr inbounds %struct.phy_status_rpt, ptr %pPhyStatus, i32 0, i32 3
  %9 = ptrtoint ptr %cck_agc_rpt_ofdm_cfosho_a.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cck_agc_rpt_ofdm_cfosho_a.i, align 1
  %11 = lshr i8 %10, 5
  %12 = and i8 %10, 31
  %conv16.i = zext i8 %11 to i32
  %13 = zext i32 %conv16.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv16.i, label %if.then.unreachabledefault.i [
    i32 7, label %sw.bb.i
    i32 6, label %sw.bb23.i
    i32 5, label %sw.bb29.i
    i32 4, label %sw.bb35.i
    i32 3, label %sw.bb41.i
    i32 2, label %sw.bb47.i
    i32 1, label %sw.bb62.i
    i32 0, label %sw.bb67.i
  ]

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %12)
  %cmp18.i = icmp ult i8 %12, 28
  br i1 %cmp18.i, label %if.then20.i, label %sw.bb.i.sw.epilog.thread.i_crit_edge

sw.bb.i.sw.epilog.thread.i_crit_edge:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.thread.i

if.then20.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  %.neg379.i = mul nsw i8 %12, -2
  %add.i = add nsw i8 %.neg379.i, -46
  br label %sw.epilog.thread.i

sw.bb23.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %.neg378.i = mul nsw i8 %12, -2
  %add27.i = add nsw i8 %.neg378.i, -44
  br label %sw.epilog.thread.i

sw.bb29.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %.neg377.i = mul nsw i8 %12, -2
  %add33.i = add nsw i8 %.neg377.i, -28
  br label %sw.epilog.thread.i

sw.bb35.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %.neg376.i = mul nsw i8 %12, -2
  %add39.i = add nsw i8 %.neg376.i, -22
  br label %sw.epilog.thread.i

sw.bb41.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %.neg375.i = mul nsw i8 %12, -2
  %add45.i = add nsw i8 %.neg375.i, -10
  br label %sw.epilog.thread.i

sw.bb47.i:                                        ; preds = %if.then.i
  %.neg373.i = mul nsw i8 %12, -2
  br i1 %tobool9.not.i, label %if.else55.i, label %if.then49.i

if.then49.i:                                      ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #5
  %add53.i = add nsw i8 %.neg373.i, -2
  br label %sw.epilog.i

if.else55.i:                                      ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #5
  %add59.i = add nsw i8 %.neg373.i, 4
  br label %sw.epilog.i

sw.bb62.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %.neg372.i = mul nsw i8 %12, -2
  %sub65.i = add nsw i8 %.neg372.i, 8
  br label %sw.epilog.i

sw.bb67.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %.neg.i = mul nsw i8 %12, -2
  %sub70.i = add nsw i8 %.neg.i, 14
  br label %sw.epilog.i

if.then.unreachabledefault.i:                     ; preds = %if.then.i
  unreachable

sw.epilog.thread.i:                               ; preds = %sw.bb41.i, %sw.bb35.i, %sw.bb29.i, %sw.bb23.i, %if.then20.i, %sw.bb.i.sw.epilog.thread.i_crit_edge
  %rx_pwr_all.0.ph.i = phi i8 [ -100, %sw.bb.i.sw.epilog.thread.i_crit_edge ], [ %add.i, %if.then20.i ], [ %add27.i, %sw.bb23.i ], [ %add33.i, %sw.bb29.i ], [ %add39.i, %sw.bb35.i ], [ %add45.i, %sw.bb41.i ]
  %add.i438.i = add nsw i8 %rx_pwr_all.0.ph.i, 106
  br label %14

sw.epilog.i:                                      ; preds = %sw.bb67.i, %sw.bb62.i, %if.else55.i, %if.then49.i
  %rx_pwr_all.0.i = phi i8 [ %sub70.i, %sw.bb67.i ], [ %sub65.i, %sw.bb62.i ], [ %add53.i, %if.then49.i ], [ %add59.i, %if.else55.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %rx_pwr_all.0.i)
  %cmp6.i.i = icmp sgt i8 %rx_pwr_all.0.i, -7
  %add.i.i = add nsw i8 %rx_pwr_all.0.i, 106
  %spec.select.i = select i1 %cmp6.i.i, i8 100, i8 %add.i.i
  br label %14

14:                                               ; preds = %sw.epilog.i, %sw.epilog.thread.i
  %.in.in.i = phi i8 [ %rx_pwr_all.0.ph.i, %sw.epilog.thread.i ], [ %rx_pwr_all.0.i, %sw.epilog.i ]
  %15 = phi i8 [ %add.i438.i, %sw.epilog.thread.i ], [ %spec.select.i, %sw.epilog.i ]
  %add73439.i = add nsw i8 %.in.in.i, 6
  %.in.i = add nsw i8 %.in.in.i, -14
  call void @__sanitizer_cov_trace_const_cmp1(i8 -119, i8 %.in.i)
  %16 = icmp ult i8 %.in.i, -119
  %retval.0.i.i = select i1 %16, i8 0, i8 %15
  br i1 %tobool9.not.i, label %if.then76.i, label %.if.end107.i_crit_edge

.if.end107.i_crit_edge:                           ; preds = %14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end107.i

if.then76.i:                                      ; preds = %14
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %retval.0.i.i)
  %cmp78.i = icmp ugt i8 %retval.0.i.i, 79
  br i1 %cmp78.i, label %if.then80.i, label %if.else89.i

if.then80.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv77.i = zext i8 %retval.0.i.i to i32
  %sub82.i = add nsw i32 %conv77.i, -80
  %shl.i = shl nuw nsw i32 %sub82.i, 1
  %17 = lshr i32 %sub82.i, 1
  %add86.i = add nuw nsw i32 %shl.i, %17
  %18 = trunc i32 %add86.i to i8
  %conv88.i = add nuw i8 %18, 80
  br label %if.end101.i

if.else89.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %retval.0.i.i)
  %cmp91.not.i = icmp ne i8 %retval.0.i.i, 79
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %retval.0.i.i)
  %cmp94.i = icmp ugt i8 %retval.0.i.i, 19
  %or.cond.i = and i1 %cmp91.not.i, %cmp94.i
  %add98.i = add nuw nsw i8 %retval.0.i.i, 3
  %spec.select382.i = select i1 %or.cond.i, i8 %add98.i, i8 %retval.0.i.i
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.else89.i, %if.then80.i
  %PWDB_ALL.0.i = phi i8 [ %conv88.i, %if.then80.i ], [ %spec.select382.i, %if.else89.i ]
  %19 = tail call i8 @llvm.umin.i8(i8 %PWDB_ALL.0.i, i8 100) #3
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.end101.i, %.if.end107.i_crit_edge
  %PWDB_ALL.1.i = phi i8 [ %retval.0.i.i, %.if.end107.i_crit_edge ], [ %19, %if.end101.i ]
  %20 = ptrtoint ptr %pPhyInfo to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %PWDB_ALL.1.i, ptr %pPhyInfo, align 1
  %recvpower.i = getelementptr inbounds %struct.phy_info, ptr %pPhyInfo, i32 0, i32 5
  %21 = ptrtoint ptr %recvpower.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %add73439.i, ptr %recvpower.i, align 1
  %bPacketMatchBSSID.i = getelementptr inbounds %struct.odm_per_pkt_info, ptr %pPktinfo, i32 0, i32 2
  %22 = ptrtoint ptr %bPacketMatchBSSID.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bPacketMatchBSSID.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool108.not.i = icmp eq i8 %23, 0
  br i1 %tobool108.not.i, label %if.end107.i.if.then251.i_crit_edge, label %if.then109.i

if.end107.i.if.then251.i_crit_edge:               ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then251.i

if.then109.i:                                     ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %PWDB_ALL.1.i)
  %cmp112.i = icmp ugt i8 %PWDB_ALL.1.i, 40
  br i1 %cmp112.i, label %if.then109.i.if.end132.i_crit_edge, label %if.else115.i

if.then109.i.if.end132.i_crit_edge:               ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end132.i

if.else115.i:                                     ; preds = %if.then109.i
  %cck_sig_qual_ofdm_pwdb_all.i = getelementptr inbounds %struct.phy_status_rpt, ptr %pPhyStatus, i32 0, i32 2
  %24 = ptrtoint ptr %cck_sig_qual_ofdm_pwdb_all.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cck_sig_qual_ofdm_pwdb_all.i, align 1
  %conv116.i = zext i8 %25 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %25)
  %cmp117.i = icmp ugt i8 %25, 64
  br i1 %cmp117.i, label %if.else115.i.if.end132.i_crit_edge, label %if.else120.i

if.else115.i.if.end132.i_crit_edge:               ; preds = %if.else115.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end132.i

if.else120.i:                                     ; preds = %if.else115.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %25)
  %cmp122.i = icmp ult i8 %25, 20
  br i1 %cmp122.i, label %if.else120.i.if.end132.i_crit_edge, label %if.else125.i

if.else120.i.if.end132.i_crit_edge:               ; preds = %if.else120.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end132.i

if.else125.i:                                     ; preds = %if.else120.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub127.i = sub nsw i16 64, %conv116.i
  %mul128.i = mul nsw i16 %sub127.i, 100
  %div425.i = sdiv i16 %mul128.i, 44
  %conv129.i = trunc i16 %div425.i to i8
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.else125.i, %if.else120.i.if.end132.i_crit_edge, %if.else115.i.if.end132.i_crit_edge, %if.then109.i.if.end132.i_crit_edge
  %SQ.0.i = phi i8 [ %conv129.i, %if.else125.i ], [ 100, %if.then109.i.if.end132.i_crit_edge ], [ 0, %if.else115.i.if.end132.i_crit_edge ], [ 100, %if.else120.i.if.end132.i_crit_edge ]
  %SignalQuality.i = getelementptr inbounds %struct.phy_info, ptr %pPhyInfo, i32 0, i32 1
  %26 = ptrtoint ptr %SignalQuality.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %SQ.0.i, ptr %SignalQuality.i, align 1
  %27 = ptrtoint ptr %RxMIMOSignalQuality.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %SQ.0.i, ptr %RxMIMOSignalQuality.i, align 1
  %28 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %arrayidx8.i, align 1
  br label %if.then251.i

if.end166.2.i:                                    ; preds = %entry
  %PhyDbgInfo139.i = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 20
  %NumQryPhyStatusOFDM.i = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 20, i32 3
  %29 = ptrtoint ptr %NumQryPhyStatusOFDM.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %NumQryPhyStatusOFDM.i, align 8
  %inc140.i = add i64 %30, 1
  store i64 %inc140.i, ptr %NumQryPhyStatusOFDM.i, align 8
  %RFPathRxEnable.i = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 2
  %31 = ptrtoint ptr %RFPathRxEnable.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %RFPathRxEnable.i, align 1
  %33 = and i8 %32, 1
  %34 = ptrtoint ptr %pPhyStatus to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i = load i8, ptr %pPhyStatus, align 1
  %35 = shl i8 %bf.load.i, 1
  %36 = and i8 %35, 126
  %sub156.i = add nsw i8 %36, -110
  %signal_strength.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 30
  %37 = ptrtoint ptr %signal_strength.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %sub156.i, ptr %signal_strength.i, align 1
  %arrayidx170.i = getelementptr %struct.phy_info, ptr %pPhyInfo, i32 0, i32 7, i32 0
  %38 = ptrtoint ptr %arrayidx170.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %sub156.i, ptr %arrayidx170.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %36)
  %39 = icmp ult i8 %36, 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 109, i8 %36)
  %cmp6.i383.i = icmp ugt i8 %36, 109
  %add.i384.i = add nsw i8 %36, -10
  %spec.select.i385.i = select i1 %cmp6.i383.i, i8 100, i8 %add.i384.i
  %retval.0.i386.i = select i1 %39, i8 0, i8 %spec.select.i385.i
  %arrayidx179.i = getelementptr %struct.phy_info, ptr %pPhyInfo, i32 0, i32 3, i32 0
  %40 = ptrtoint ptr %arrayidx179.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %retval.0.i386.i, ptr %arrayidx179.i, align 1
  %arrayidx181.i = getelementptr %struct.phy_status_rpt, ptr %pPhyStatus, i32 0, i32 10, i32 0
  %41 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx181.i, align 1
  %43 = lshr i8 %42, 1
  %arrayidx186.i = getelementptr %struct.phy_info, ptr %pPhyInfo, i32 0, i32 8, i32 0
  %44 = ptrtoint ptr %arrayidx186.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx186.i, align 1
  %45 = load i8, ptr %arrayidx181.i, align 1
  %46 = lshr i8 %45, 1
  %47 = ptrtoint ptr %PhyDbgInfo139.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %PhyDbgInfo139.i, align 1
  %48 = ptrtoint ptr %RFPathRxEnable.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %RFPathRxEnable.i, align 1
  %50 = lshr i8 %49, 1
  %.lobit.i = and i8 %50, 1
  %spec.select380.1.i = add nuw nsw i8 %.lobit.i, %33
  %arrayidx152.1.i = getelementptr [3 x %struct.phy_rx_agc_info], ptr %pPhyStatus, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx152.1.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.1.i = load i8, ptr %arrayidx152.1.i, align 1
  %52 = shl i8 %bf.load.1.i, 1
  %53 = and i8 %52, 126
  %sub156.1.i = add nsw i8 %53, -110
  %arrayidx170.1.i = getelementptr %struct.phy_info, ptr %pPhyInfo, i32 0, i32 7, i32 1
  %54 = ptrtoint ptr %arrayidx170.1.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %sub156.1.i, ptr %arrayidx170.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %53)
  %55 = icmp ult i8 %53, 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 109, i8 %53)
  %cmp6.i383.1.i = icmp ugt i8 %53, 109
  %add.i384.1.i = add nsw i8 %53, -10
  %spec.select.i385.1.i = select i1 %cmp6.i383.1.i, i8 100, i8 %add.i384.1.i
  %retval.0.i386.1.i = select i1 %55, i8 0, i8 %spec.select.i385.1.i
  %add176.1.i = add i8 %retval.0.i386.1.i, %retval.0.i386.i
  %arrayidx179.1.i = getelementptr %struct.phy_info, ptr %pPhyInfo, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %arrayidx179.1.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %retval.0.i386.1.i, ptr %arrayidx179.1.i, align 1
  %arrayidx181.1.i = getelementptr %struct.phy_status_rpt, ptr %pPhyStatus, i32 0, i32 10, i32 1
  %57 = ptrtoint ptr %arrayidx181.1.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx181.1.i, align 1
  %59 = lshr i8 %58, 1
  %arrayidx186.1.i = getelementptr %struct.phy_info, ptr %pPhyInfo, i32 0, i32 8, i32 1
  %60 = ptrtoint ptr %arrayidx186.1.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx186.1.i, align 1
  %61 = load i8, ptr %arrayidx181.1.i, align 1
  %62 = lshr i8 %61, 1
  %arrayidx195.1.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 20, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx195.1.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx195.1.i, align 1
  %64 = ptrtoint ptr %RFPathRxEnable.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %RFPathRxEnable.i, align 1
  %66 = lshr i8 %65, 2
  %.lobit434.i = and i8 %66, 1
  %spec.select380.2.i = add nuw nsw i8 %spec.select380.1.i, %.lobit434.i
  %arrayidx152.2.i = getelementptr [3 x %struct.phy_rx_agc_info], ptr %pPhyStatus, i32 0, i32 2
  %67 = ptrtoint ptr %arrayidx152.2.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load.2.i = load i8, ptr %arrayidx152.2.i, align 1
  %68 = shl i8 %bf.load.2.i, 1
  %69 = and i8 %68, 126
  %sub156.2.i = add nsw i8 %69, -110
  %arrayidx170.2.i = getelementptr %struct.phy_info, ptr %pPhyInfo, i32 0, i32 7, i32 2
  %70 = ptrtoint ptr %arrayidx170.2.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %sub156.2.i, ptr %arrayidx170.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %69)
  %71 = icmp ult i8 %69, 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 109, i8 %69)
  %cmp6.i383.2.i = icmp ugt i8 %69, 109
  %add.i384.2.i = add nsw i8 %69, -10
  %spec.select.i385.2.i = select i1 %cmp6.i383.2.i, i8 100, i8 %add.i384.2.i
  %retval.0.i386.2.i = select i1 %71, i8 0, i8 %spec.select.i385.2.i
  %arrayidx179.2.i = getelementptr %struct.phy_info, ptr %pPhyInfo, i32 0, i32 3, i32 2
  %72 = ptrtoint ptr %arrayidx179.2.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %retval.0.i386.2.i, ptr %arrayidx179.2.i, align 1
  %arrayidx181.2.i = getelementptr %struct.phy_status_rpt, ptr %pPhyStatus, i32 0, i32 10, i32 2
  %73 = ptrtoint ptr %arrayidx181.2.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx181.2.i, align 1
  %75 = lshr i8 %74, 1
  %arrayidx186.2.i = getelementptr %struct.phy_info, ptr %pPhyInfo, i32 0, i32 8, i32 2
  %76 = ptrtoint ptr %arrayidx186.2.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx186.2.i, align 1
  %77 = load i8, ptr %arrayidx181.2.i, align 1
  %78 = lshr i8 %77, 1
  %arrayidx195.2.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 20, i32 0, i32 2
  %79 = ptrtoint ptr %arrayidx195.2.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %arrayidx195.2.i, align 1
  %cck_sig_qual_ofdm_pwdb_all197.i = getelementptr inbounds %struct.phy_status_rpt, ptr %pPhyStatus, i32 0, i32 2
  %80 = ptrtoint ptr %cck_sig_qual_ofdm_pwdb_all197.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %cck_sig_qual_ofdm_pwdb_all197.i, align 1
  %82 = lshr i8 %81, 1
  %sub201.i = add nsw i8 %82, -110
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %81)
  %83 = icmp ult i8 %81, 22
  call void @__sanitizer_cov_trace_const_cmp1(i8 -37, i8 %81)
  %cmp6.i387.i = icmp ugt i8 %81, -37
  %add.i388.i = add nsw i8 %82, -10
  %spec.select.i389.i = select i1 %cmp6.i387.i, i8 100, i8 %add.i388.i
  %retval.0.i390.i = select i1 %83, i8 0, i8 %spec.select.i389.i
  %84 = ptrtoint ptr %pPhyInfo to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %retval.0.i390.i, ptr %pPhyInfo, align 1
  %RxPower.i = getelementptr inbounds %struct.phy_info, ptr %pPhyInfo, i32 0, i32 4
  %85 = ptrtoint ptr %RxPower.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %sub201.i, ptr %RxPower.i, align 1
  %recvpower205.i = getelementptr inbounds %struct.phy_info, ptr %pPhyInfo, i32 0, i32 5
  %86 = ptrtoint ptr %recvpower205.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %sub201.i, ptr %recvpower205.i, align 1
  %87 = ptrtoint ptr %pPktinfo to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %pPktinfo, align 1
  %89 = add i8 %88, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %89)
  %90 = icmp ult i8 %89, 8
  %Max_spatial_stream.0.i = select i1 %90, i32 2, i32 1
  %bPacketMatchBSSID227.i = getelementptr inbounds %struct.odm_per_pkt_info, ptr %pPktinfo, i32 0, i32 2
  %91 = ptrtoint ptr %bPacketMatchBSSID227.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bPacketMatchBSSID227.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool228.not.peel.i = icmp eq i8 %92, 0
  br i1 %tobool228.not.peel.i, label %if.end166.2.i.for.inc246.peel.i_crit_edge, label %if.end238.peel.i

if.end166.2.i.for.inc246.peel.i_crit_edge:        ; preds = %if.end166.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc246.peel.i

if.end238.peel.i:                                 ; preds = %if.end166.2.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx225.peel.i = getelementptr %struct.phy_status_rpt, ptr %pPhyStatus, i32 0, i32 9, i32 0
  %93 = ptrtoint ptr %arrayidx225.peel.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx225.peel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp.i.peel.i = icmp slt i8 %94, 0
  %conv.i.peel.i = sext i8 %94 to i32
  %sub.i.peel.i = sub nsw i32 0, %conv.i.peel.i
  %95 = tail call i32 @llvm.smin.i32(i32 %sub.i.peel.i, i32 33) #3
  %96 = trunc i32 %95 to i8
  %.op.i.peel.i = mul i8 %96, 3
  %conv9.i.peel.i = select i1 %cmp.i.peel.i, i8 %.op.i.peel.i, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %conv9.i.peel.i)
  %cmp11.i.peel.i = icmp eq i8 %conv9.i.peel.i, 99
  %spec.store.select.i.peel.i = select i1 %cmp11.i.peel.i, i8 100, i8 %conv9.i.peel.i
  %SignalQuality237.i = getelementptr inbounds %struct.phy_info, ptr %pPhyInfo, i32 0, i32 1
  %97 = ptrtoint ptr %SignalQuality237.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %spec.store.select.i.peel.i, ptr %SignalQuality237.i, align 1
  %98 = ptrtoint ptr %RxMIMOSignalQuality.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %spec.store.select.i.peel.i, ptr %RxMIMOSignalQuality.i, align 1
  br label %for.inc246.peel.i

for.inc246.peel.i:                                ; preds = %if.end238.peel.i, %if.end166.2.i.for.inc246.peel.i_crit_edge
  br i1 %90, label %for.inc246.peel.i.for.body223.i_crit_edge, label %for.inc246.peel.i.if.else255.i_crit_edge

for.inc246.peel.i.if.else255.i_crit_edge:         ; preds = %for.inc246.peel.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else255.i

for.inc246.peel.i.for.body223.i_crit_edge:        ; preds = %for.inc246.peel.i
  br label %for.body223.i

for.body223.i:                                    ; preds = %for.inc246.i.for.body223.i_crit_edge, %for.inc246.peel.i.for.body223.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc246.i.for.body223.i_crit_edge ], [ 1, %for.inc246.peel.i.for.body223.i_crit_edge ]
  %99 = ptrtoint ptr %bPacketMatchBSSID227.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %bPacketMatchBSSID227.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool228.not.i = icmp eq i8 %100, 0
  br i1 %tobool228.not.i, label %for.body223.i.for.inc246.i_crit_edge, label %if.end238.i

for.body223.i.for.inc246.i_crit_edge:             ; preds = %for.body223.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc246.i

if.end238.i:                                      ; preds = %for.body223.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx225.i = getelementptr %struct.phy_status_rpt, ptr %pPhyStatus, i32 0, i32 9, i32 %indvars.iv.i
  %101 = ptrtoint ptr %arrayidx225.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx225.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp.i.i = icmp slt i8 %102, 0
  %conv.i.i = sext i8 %102 to i32
  %sub.i.i = sub nsw i32 0, %conv.i.i
  %103 = tail call i32 @llvm.smin.i32(i32 %sub.i.i, i32 33) #3
  %104 = trunc i32 %103 to i8
  %.op.i.i = mul i8 %104, 3
  %conv9.i.i = select i1 %cmp.i.i, i8 %.op.i.i, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %conv9.i.i)
  %cmp11.i.i = icmp eq i8 %conv9.i.i, 99
  %spec.store.select.i.i = select i1 %cmp11.i.i, i8 100, i8 %conv9.i.i
  %arrayidx244.i = getelementptr %struct.phy_info, ptr %pPhyInfo, i32 0, i32 2, i32 %indvars.iv.i
  %105 = ptrtoint ptr %arrayidx244.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %spec.store.select.i.i, ptr %arrayidx244.i, align 1
  br label %for.inc246.i

for.inc246.i:                                     ; preds = %if.end238.i, %for.body223.i.for.inc246.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %Max_spatial_stream.0.i
  br i1 %exitcond.not.i, label %for.inc246.i.if.else255.i_crit_edge, label %for.inc246.i.for.body223.i_crit_edge, !llvm.loop !10

for.inc246.i.for.body223.i_crit_edge:             ; preds = %for.inc246.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body223.i

for.inc246.i.if.else255.i_crit_edge:              ; preds = %for.inc246.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else255.i

if.then251.i:                                     ; preds = %if.end132.i, %if.end107.i.if.then251.i_crit_edge
  %conv252.i = zext i8 %PWDB_ALL.1.i to i32
  %106 = add nsw i32 %conv252.i, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %106)
  %107 = icmp ult i32 %106, 50
  br i1 %107, label %if.then251.i.if.end269.sink.split.i_crit_edge, label %if.else.i.i

if.then251.i.if.end269.sink.split.i_crit_edge:    ; preds = %if.then251.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end269.sink.split.i

if.else.i.i:                                      ; preds = %if.then251.i
  %108 = add nsw i32 %conv252.i, -41
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %108)
  %109 = icmp ult i32 %108, 10
  br i1 %109, label %if.then5.i.i, label %if.else6.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i391.i = shl nuw nsw i32 %conv252.i, 1
  br label %if.end269.sink.split.i

if.else6.i.i:                                     ; preds = %if.else.i.i
  %110 = add nsw i32 %conv252.i, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %110)
  %111 = icmp ult i32 %110, 10
  br i1 %111, label %if.then10.i.i, label %if.else13.i.i

if.then10.i.i:                                    ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %add12.i.i = add nuw nsw i32 %conv252.i, 36
  br label %if.end269.sink.split.i

if.else13.i.i:                                    ; preds = %if.else6.i.i
  %112 = add nsw i32 %conv252.i, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %112)
  %113 = icmp ult i32 %112, 10
  br i1 %113, label %if.then17.i.i, label %if.else20.i.i

if.then17.i.i:                                    ; preds = %if.else13.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %add19.i.i = add nuw nsw i32 %conv252.i, 34
  br label %if.end269.sink.split.i

if.else20.i.i:                                    ; preds = %if.else13.i.i
  %114 = add nsw i32 %conv252.i, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %114)
  %115 = icmp ult i32 %114, 11
  br i1 %115, label %if.then24.i.i, label %if.else28.i.i

if.then24.i.i:                                    ; preds = %if.else20.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %116 = shl nuw nsw i8 %PWDB_ALL.1.i, 1
  %div7.lhs.trunc.i.i = add nsw i8 %116, -20
  %div78.i.i = udiv i8 %div7.lhs.trunc.i.i, 3
  %narrow.i.i = add nuw nsw i8 %div78.i.i, 42
  %add27.i.i = zext i8 %narrow.i.i to i32
  br label %if.end269.sink.split.i

if.else28.i.i:                                    ; preds = %if.else20.i.i
  %117 = add nsw i32 %conv252.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %117)
  %118 = icmp ult i32 %117, 5
  br i1 %118, label %if.then32.i.i, label %if.else37.i.i

if.then32.i.i:                                    ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %119 = mul nuw nsw i32 %conv252.i, 3
  %div359.lhs.trunc.i.i = add nuw nsw i32 %119, 241
  %div3591014.i.i = lshr i32 %div359.lhs.trunc.i.i, 1
  %div359.zext.i.i = and i32 %div3591014.i.i, 127
  %add36.i.i = add nuw nsw i32 %div359.zext.i.i, 22
  br label %if.end269.sink.split.i

if.else37.i.i:                                    ; preds = %if.else28.i.i
  %120 = add nsw i32 %conv252.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %120)
  %121 = icmp ult i32 %120, 4
  br i1 %121, label %if.then41.i.i, label %if.else37.i.i.if.end269.sink.split.i_crit_edge

if.else37.i.i.if.end269.sink.split.i_crit_edge:   ; preds = %if.else37.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end269.sink.split.i

if.then41.i.i:                                    ; preds = %if.else37.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %122 = mul nuw nsw i32 %conv252.i, 3
  %div4411.lhs.trunc.i.i = add nuw nsw i32 %122, 253
  %div44111213.i.i = lshr i32 %div4411.lhs.trunc.i.i, 1
  %div4411.zext.i.i = and i32 %div44111213.i.i, 127
  %add45.i.i = add nuw nsw i32 %div4411.zext.i.i, 6
  br label %if.end269.sink.split.i

if.else255.i:                                     ; preds = %for.inc246.i.if.else255.i_crit_edge, %for.inc246.peel.i.if.else255.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select380.2.i)
  %cmp257.not.i = icmp eq i8 %spec.select380.2.i, 0
  br i1 %cmp257.not.i, label %if.else255.i.odm_RxPhyStatus92CSeries_Parsing.exit_crit_edge, label %if.then259.i

if.else255.i.odm_RxPhyStatus92CSeries_Parsing.exit_crit_edge: ; preds = %if.else255.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %odm_RxPhyStatus92CSeries_Parsing.exit

if.then259.i:                                     ; preds = %if.else255.i
  %add176.2.i = add i8 %add176.1.i, %retval.0.i386.2.i
  %123 = udiv i8 %add176.2.i, %spec.select380.2.i
  %conv264.i = zext i8 %123 to i32
  %124 = add nsw i32 %conv264.i, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %124)
  %125 = icmp ult i32 %124, 50
  br i1 %125, label %if.then259.i.if.end269.sink.split.i_crit_edge, label %if.else.i392.i

if.then259.i.if.end269.sink.split.i_crit_edge:    ; preds = %if.then259.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end269.sink.split.i

if.else.i392.i:                                   ; preds = %if.then259.i
  %126 = add nsw i32 %conv264.i, -41
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %126)
  %127 = icmp ult i32 %126, 10
  br i1 %127, label %if.then5.i394.i, label %if.else6.i395.i

if.then5.i394.i:                                  ; preds = %if.else.i392.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i393.i = shl nuw nsw i32 %conv264.i, 1
  br label %if.end269.sink.split.i

if.else6.i395.i:                                  ; preds = %if.else.i392.i
  %128 = add nsw i32 %conv264.i, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %128)
  %129 = icmp ult i32 %128, 10
  br i1 %129, label %if.then10.i397.i, label %if.else13.i398.i

if.then10.i397.i:                                 ; preds = %if.else6.i395.i
  call void @__sanitizer_cov_trace_pc() #5
  %add12.i396.i = add nuw nsw i32 %conv264.i, 36
  br label %if.end269.sink.split.i

if.else13.i398.i:                                 ; preds = %if.else6.i395.i
  %130 = add nsw i32 %conv264.i, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %130)
  %131 = icmp ult i32 %130, 10
  br i1 %131, label %if.then17.i400.i, label %if.else20.i401.i

if.then17.i400.i:                                 ; preds = %if.else13.i398.i
  call void @__sanitizer_cov_trace_pc() #5
  %add19.i399.i = add nuw nsw i32 %conv264.i, 34
  br label %if.end269.sink.split.i

if.else20.i401.i:                                 ; preds = %if.else13.i398.i
  %132 = add nsw i32 %conv264.i, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %132)
  %133 = icmp ult i32 %132, 11
  br i1 %133, label %if.then24.i406.i, label %if.else28.i407.i

if.then24.i406.i:                                 ; preds = %if.else20.i401.i
  call void @__sanitizer_cov_trace_pc() #5
  %134 = shl nuw nsw i8 %123, 1
  %div7.lhs.trunc.i402.i = add nsw i8 %134, -20
  %div78.i403.i = udiv i8 %div7.lhs.trunc.i402.i, 3
  %narrow.i404.i = add nuw nsw i8 %div78.i403.i, 42
  %add27.i405.i = zext i8 %narrow.i404.i to i32
  br label %if.end269.sink.split.i

if.else28.i407.i:                                 ; preds = %if.else20.i401.i
  %135 = add nsw i32 %conv264.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %135)
  %136 = icmp ult i32 %135, 5
  br i1 %136, label %if.then32.i412.i, label %if.else37.i413.i

if.then32.i412.i:                                 ; preds = %if.else28.i407.i
  call void @__sanitizer_cov_trace_pc() #5
  %137 = mul nuw nsw i32 %conv264.i, 3
  %div359.lhs.trunc.i408.i = add nuw nsw i32 %137, 241
  %div3591014.i409.i = lshr i32 %div359.lhs.trunc.i408.i, 1
  %div359.zext.i410.i = and i32 %div3591014.i409.i, 127
  %add36.i411.i = add nuw nsw i32 %div359.zext.i410.i, 22
  br label %if.end269.sink.split.i

if.else37.i413.i:                                 ; preds = %if.else28.i407.i
  %138 = add nsw i32 %conv264.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %138)
  %139 = icmp ult i32 %138, 4
  br i1 %139, label %if.then41.i418.i, label %if.else37.i413.i.if.end269.sink.split.i_crit_edge

if.else37.i413.i.if.end269.sink.split.i_crit_edge: ; preds = %if.else37.i413.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end269.sink.split.i

if.then41.i418.i:                                 ; preds = %if.else37.i413.i
  call void @__sanitizer_cov_trace_pc() #5
  %140 = mul nuw nsw i32 %conv264.i, 3
  %div4411.lhs.trunc.i414.i = add nuw nsw i32 %140, 253
  %div44111213.i415.i = lshr i32 %div4411.lhs.trunc.i414.i, 1
  %div4411.zext.i416.i = and i32 %div44111213.i415.i, 127
  %add45.i417.i = add nuw nsw i32 %div4411.zext.i416.i, 6
  br label %if.end269.sink.split.i

if.end269.sink.split.i:                           ; preds = %if.then41.i418.i, %if.else37.i413.i.if.end269.sink.split.i_crit_edge, %if.then32.i412.i, %if.then24.i406.i, %if.then17.i400.i, %if.then10.i397.i, %if.then5.i394.i, %if.then259.i.if.end269.sink.split.i_crit_edge, %if.then41.i.i, %if.else37.i.i.if.end269.sink.split.i_crit_edge, %if.then32.i.i, %if.then24.i.i, %if.then17.i.i, %if.then10.i.i, %if.then5.i.i, %if.then251.i.if.end269.sink.split.i_crit_edge
  %RetSig.0.i419.sink.i = phi i32 [ %sub.i391.i, %if.then5.i.i ], [ %add12.i.i, %if.then10.i.i ], [ %add19.i.i, %if.then17.i.i ], [ %add27.i.i, %if.then24.i.i ], [ %add36.i.i, %if.then32.i.i ], [ %add45.i.i, %if.then41.i.i ], [ 100, %if.then251.i.if.end269.sink.split.i_crit_edge ], [ 0, %if.else37.i.i.if.end269.sink.split.i_crit_edge ], [ %sub.i393.i, %if.then5.i394.i ], [ %add12.i396.i, %if.then10.i397.i ], [ %add19.i399.i, %if.then17.i400.i ], [ %add27.i405.i, %if.then24.i406.i ], [ %add36.i411.i, %if.then32.i412.i ], [ %add45.i417.i, %if.then41.i418.i ], [ 100, %if.then259.i.if.end269.sink.split.i_crit_edge ], [ %conv264.i, %if.else37.i413.i.if.end269.sink.split.i_crit_edge ]
  %conv266.i = trunc i32 %RetSig.0.i419.sink.i to i8
  %SignalStrength267.i = getelementptr inbounds %struct.phy_info, ptr %pPhyInfo, i32 0, i32 6
  %141 = ptrtoint ptr %SignalStrength267.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv266.i, ptr %SignalStrength267.i, align 1
  br label %odm_RxPhyStatus92CSeries_Parsing.exit

odm_RxPhyStatus92CSeries_Parsing.exit:            ; preds = %if.end269.sink.split.i, %if.else255.i.odm_RxPhyStatus92CSeries_Parsing.exit_crit_edge
  %ant_sel.i = getelementptr inbounds %struct.phy_status_rpt, ptr %pPhyStatus, i32 0, i32 17
  %142 = ptrtoint ptr %ant_sel.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load270.i = load i8, ptr %ant_sel.i, align 1
  %bf.lshr.i = lshr i8 %bf.load270.i, 7
  %DM_FatTable.i = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21
  %143 = ptrtoint ptr %DM_FatTable.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %bf.lshr.i, ptr %DM_FatTable.i, align 8
  %bf.load271.i = load i8, ptr %ant_sel.i, align 1
  %bf.lshr272.i = lshr i8 %bf.load271.i, 6
  %bf.clear273.i = and i8 %bf.lshr272.i, 1
  %antsel_rx_keep_1.i = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 1
  %144 = ptrtoint ptr %antsel_rx_keep_1.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %bf.clear273.i, ptr %antsel_rx_keep_1.i, align 1
  %bf.load275.i = load i8, ptr %ant_sel.i, align 1
  %bf.clear276.i = and i8 %bf.load275.i, 1
  %antsel_rx_keep_2278.i = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 21, i32 2
  %145 = ptrtoint ptr %antsel_rx_keep_2278.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %bf.clear276.i, ptr %antsel_rx_keep_2278.i, align 2
  %StationID.i = getelementptr inbounds %struct.odm_per_pkt_info, ptr %pPktinfo, i32 0, i32 1
  %146 = ptrtoint ptr %StationID.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %StationID.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %147)
  %cmp.i = icmp eq i8 %147, -1
  br i1 %cmp.i, label %odm_RxPhyStatus92CSeries_Parsing.exit.odm_Process_RSSIForDM.exit_crit_edge, label %if.end.i

odm_RxPhyStatus92CSeries_Parsing.exit.odm_Process_RSSIForDM.exit_crit_edge: ; preds = %odm_RxPhyStatus92CSeries_Parsing.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %odm_Process_RSSIForDM.exit

if.end.i:                                         ; preds = %odm_RxPhyStatus92CSeries_Parsing.exit
  %conv.i = zext i8 %147 to i32
  %arrayidx.i = getelementptr %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 17, i32 %conv.i
  %148 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %149, null
  br i1 %tobool.not.i, label %if.end.i.odm_Process_RSSIForDM.exit_crit_edge, label %if.end4.i

if.end.i.odm_Process_RSSIForDM.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %odm_Process_RSSIForDM.exit

if.end4.i:                                        ; preds = %if.end.i
  %bPacketMatchBSSID.i5 = getelementptr inbounds %struct.odm_per_pkt_info, ptr %pPktinfo, i32 0, i32 2
  %150 = ptrtoint ptr %bPacketMatchBSSID.i5 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %bPacketMatchBSSID.i5, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool5.not.i = icmp eq i8 %151, 0
  br i1 %tobool5.not.i, label %if.end4.i.odm_Process_RSSIForDM.exit_crit_edge, label %if.end7.i

if.end4.i.odm_Process_RSSIForDM.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %odm_Process_RSSIForDM.exit

if.end7.i:                                        ; preds = %if.end4.i
  %152 = ptrtoint ptr %pPktinfo to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %pPktinfo, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %153)
  %154 = icmp ult i8 %153, 4
  %AntDivType.i = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 6
  %155 = ptrtoint ptr %AntDivType.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %AntDivType.i, align 8
  %.off.i = add i8 %156, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %if.then23.i, label %if.end7.i.if.end39.i_crit_edge

if.end7.i.if.end39.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39.i

if.then23.i:                                      ; preds = %if.end7.i
  %bPacketToSelf.i = getelementptr inbounds %struct.odm_per_pkt_info, ptr %pPktinfo, i32 0, i32 3
  %157 = ptrtoint ptr %bPacketToSelf.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %bPacketToSelf.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool24.not.i = icmp eq i8 %158, 0
  br i1 %tobool24.not.i, label %lor.lhs.false26.i, label %if.then23.i.if.then29.i_crit_edge

if.then23.i.if.then29.i_crit_edge:                ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then29.i

lor.lhs.false26.i:                                ; preds = %if.then23.i
  %bPacketBeacon.i = getelementptr inbounds %struct.odm_per_pkt_info, ptr %pPktinfo, i32 0, i32 4
  %159 = ptrtoint ptr %bPacketBeacon.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %bPacketBeacon.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool27.not.i = icmp eq i8 %160, 0
  br i1 %tobool27.not.i, label %lor.lhs.false26.i.if.end39.i_crit_edge, label %lor.lhs.false26.i.if.then29.i_crit_edge

lor.lhs.false26.i.if.then29.i_crit_edge:          ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then29.i

lor.lhs.false26.i.if.end39.i_crit_edge:           ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39.i

if.then29.i:                                      ; preds = %lor.lhs.false26.i.if.then29.i_crit_edge, %if.then23.i.if.then29.i_crit_edge
  %shl.i6 = shl nuw nsw i8 %bf.clear276.i, 2
  %shl32.i = shl nuw nsw i8 %bf.clear273.i, 1
  %or.i = or i8 %shl.i6, %shl32.i
  %or34.i = or i8 %or.i, %bf.lshr.i
  %161 = ptrtoint ptr %pPhyInfo to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %pPhyInfo, align 1
  tail call void @ODM_AntselStatistics_88E(ptr noundef %dm_odm, i8 noundef zeroext %or34.i, i32 noundef %conv.i, i8 noundef zeroext %162) #3
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then29.i, %lor.lhs.false26.i.if.end39.i_crit_edge, %if.end7.i.if.end39.i_crit_edge
  %rssi_stat.i = getelementptr inbounds %struct.sta_info, ptr %149, i32 0, i32 77
  %UndecoratedSmoothedCCK40.i = getelementptr inbounds %struct.sta_info, ptr %149, i32 0, i32 77, i32 1
  %163 = ptrtoint ptr %UndecoratedSmoothedCCK40.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %UndecoratedSmoothedCCK40.i, align 4
  %UndecoratedSmoothedOFDM42.i = getelementptr inbounds %struct.sta_info, ptr %149, i32 0, i32 77, i32 2
  %165 = ptrtoint ptr %UndecoratedSmoothedOFDM42.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %UndecoratedSmoothedOFDM42.i, align 8
  %bPacketToSelf45.i = getelementptr inbounds %struct.odm_per_pkt_info, ptr %pPktinfo, i32 0, i32 3
  %167 = ptrtoint ptr %bPacketToSelf45.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %bPacketToSelf45.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool46.not.i = icmp eq i8 %168, 0
  br i1 %tobool46.not.i, label %lor.lhs.false48.i, label %if.end39.i.if.then52.i_crit_edge

if.end39.i.if.then52.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then52.i

lor.lhs.false48.i:                                ; preds = %if.end39.i
  %bPacketBeacon49.i = getelementptr inbounds %struct.odm_per_pkt_info, ptr %pPktinfo, i32 0, i32 4
  %169 = ptrtoint ptr %bPacketBeacon49.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %bPacketBeacon49.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool50.not.i = icmp eq i8 %170, 0
  br i1 %tobool50.not.i, label %lor.lhs.false48.i.odm_Process_RSSIForDM.exit_crit_edge, label %lor.lhs.false48.i.if.then52.i_crit_edge

lor.lhs.false48.i.if.then52.i_crit_edge:          ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then52.i

lor.lhs.false48.i.odm_Process_RSSIForDM.exit_crit_edge: ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %odm_Process_RSSIForDM.exit

if.then52.i:                                      ; preds = %lor.lhs.false48.i.if.then52.i_crit_edge, %if.end39.i.if.then52.i_crit_edge
  br i1 %154, label %if.else136.i, label %if.then54.i

if.then54.i:                                      ; preds = %if.then52.i
  %RxMIMOSignalStrength.i = getelementptr inbounds %struct.phy_info, ptr %pPhyInfo, i32 0, i32 3
  %arrayidx55.i = getelementptr %struct.phy_info, ptr %pPhyInfo, i32 0, i32 3, i32 1
  %171 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx55.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %cmp57.i = icmp eq i8 %172, 0
  %173 = ptrtoint ptr %RxMIMOSignalStrength.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %RxMIMOSignalStrength.i, align 1
  br i1 %cmp57.i, label %if.then59.i, label %if.else.i

if.then59.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv62.i = zext i8 %174 to i32
  br label %if.end112.i

if.else.i:                                        ; preds = %if.then54.i
  %175 = tail call i8 @llvm.umax.i8(i8 %174, i8 %172) #3
  %176 = tail call i8 @llvm.umin.i8(i8 %174, i8 %172) #3
  %conv82.i = zext i8 %175 to i32
  %conv83.i = zext i8 %176 to i32
  %sub.i = sub nsw i32 %conv82.i, %conv83.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i)
  %cmp84.i = icmp slt i32 %sub.i, 3
  br i1 %cmp84.i, label %if.else.i.if.end112.i_crit_edge, label %if.else88.i

if.else.i.if.end112.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end112.i

if.else88.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub.i)
  %cmp92.i = icmp ult i32 %sub.i, 6
  br i1 %cmp92.i, label %if.then94.i, label %if.else97.i

if.then94.i:                                      ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub96.i = add nsw i32 %conv82.i, -1
  br label %if.end112.i

if.else97.i:                                      ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub.i)
  %cmp101.i = icmp ult i32 %sub.i, 10
  br i1 %cmp101.i, label %if.then103.i, label %if.else106.i

if.then103.i:                                     ; preds = %if.else97.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub105.i = add nsw i32 %conv82.i, -2
  br label %if.end112.i

if.else106.i:                                     ; preds = %if.else97.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub108.i = add nsw i32 %conv82.i, -3
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.else106.i, %if.then103.i, %if.then94.i, %if.else.i.if.end112.i_crit_edge, %if.then59.i
  %RSSI_Ave.0.i = phi i32 [ %conv62.i, %if.then59.i ], [ %sub96.i, %if.then94.i ], [ %sub105.i, %if.then103.i ], [ %sub108.i, %if.else106.i ], [ %conv82.i, %if.else.i.if.end112.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %166)
  %cmp113.i = icmp slt i32 %166, 1
  %177 = ptrtoint ptr %pPhyInfo to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %pPhyInfo, align 1
  %conv117.i = zext i8 %178 to i32
  br i1 %cmp113.i, label %if.end112.i.if.end130.i_crit_edge, label %if.else118.i

if.end112.i.if.end130.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end130.i

if.else118.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_cmp4(i32 %166, i32 %conv117.i)
  %cmp121.i = icmp ult i32 %166, %conv117.i
  %mul.i = mul i32 %166, 19
  %add.i8 = add i32 %RSSI_Ave.0.i, %mul.i
  %div.i = sdiv i32 %add.i8, 20
  %add124.i = zext i1 %cmp121.i to i32
  %spec.select.i9 = add nsw i32 %div.i, %add124.i
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.else118.i, %if.end112.i.if.end130.i_crit_edge
  %UndecoratedSmoothedOFDM.0.i = phi i32 [ %conv117.i, %if.end112.i.if.end130.i_crit_edge ], [ %spec.select.i9, %if.else118.i ]
  %PacketMap.i = getelementptr inbounds %struct.sta_info, ptr %149, i32 0, i32 77, i32 3
  %179 = ptrtoint ptr %PacketMap.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %PacketMap.i, align 8
  %shl132.i = shl i64 %180, 1
  %or133.i = or i64 %shl132.i, 1
  store i64 %or133.i, ptr %PacketMap.i, align 8
  br label %if.end169.i

if.else136.i:                                     ; preds = %if.then52.i
  %181 = ptrtoint ptr %pPhyInfo to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %pPhyInfo, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %164)
  %cmp139.i = icmp slt i32 %164, 1
  %conv143.i = zext i8 %182 to i32
  br i1 %cmp139.i, label %if.else136.i.if.end163.i_crit_edge, label %if.else144.i

if.else136.i.if.end163.i_crit_edge:               ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end163.i

if.else144.i:                                     ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %conv143.i)
  %cmp147.i = icmp ult i32 %164, %conv143.i
  %mul150.i = mul i32 %164, 19
  %add153.i = add i32 %mul150.i, %conv143.i
  %div154.i = sdiv i32 %add153.i, 20
  %add155.i = zext i1 %cmp147.i to i32
  %spec.select339.i = add nsw i32 %div154.i, %add155.i
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.else144.i, %if.else136.i.if.end163.i_crit_edge
  %UndecoratedSmoothedCCK.0.i = phi i32 [ %conv143.i, %if.else136.i.if.end163.i_crit_edge ], [ %spec.select339.i, %if.else144.i ]
  %PacketMap165.i = getelementptr inbounds %struct.sta_info, ptr %149, i32 0, i32 77, i32 3
  %183 = ptrtoint ptr %PacketMap165.i to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %PacketMap165.i, align 8
  %shl166.i = shl i64 %184, 1
  store i64 %shl166.i, ptr %PacketMap165.i, align 8
  br label %if.end169.i

if.end169.i:                                      ; preds = %if.end163.i, %if.end130.i
  %UndecoratedSmoothedCCK.1.i = phi i32 [ %UndecoratedSmoothedCCK.0.i, %if.end163.i ], [ %164, %if.end130.i ]
  %UndecoratedSmoothedOFDM.1.i = phi i32 [ %166, %if.end163.i ], [ %UndecoratedSmoothedOFDM.0.i, %if.end130.i ]
  %ValidBit.i = getelementptr inbounds %struct.sta_info, ptr %149, i32 0, i32 77, i32 4
  %185 = ptrtoint ptr %ValidBit.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %ValidBit.i, align 8
  %inc.i10 = add i8 %186, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %186)
  %cmp172.inv.i = icmp ult i8 %186, 64
  %storemerge.i = select i1 %cmp172.inv.i, i8 %inc.i10, i8 64
  %187 = ptrtoint ptr %ValidBit.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %storemerge.i, ptr %ValidBit.i, align 8
  %PacketMap188.i = getelementptr inbounds %struct.sta_info, ptr %149, i32 0, i32 77, i32 3
  %188 = ptrtoint ptr %PacketMap188.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %PacketMap188.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end169.i
  %OFDM_pkt.0335.i = phi i32 [ 0, %if.end169.i ], [ %add192.i, %for.body.i.for.body.i_crit_edge ]
  %i.0334.i = phi i8 [ 0, %if.end169.i ], [ %inc193.i, %for.body.i.for.body.i_crit_edge ]
  %sh_prom.i = zext i8 %i.0334.i to i64
  %shr.i = lshr i64 %189, %sh_prom.i
  %conv190.i = trunc i64 %shr.i to i32
  %and.i = and i32 %conv190.i, 1
  %add192.i = add i32 %and.i, %OFDM_pkt.0335.i
  %inc193.i = add nuw i8 %i.0334.i, 1
  %cmp185.i = icmp ult i8 %inc193.i, %storemerge.i
  br i1 %cmp185.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %storemerge.i)
  %cond.i = icmp eq i8 %storemerge.i, 64
  br i1 %cond.i, label %if.then199.i, label %if.then216.i

if.then199.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %shl200.i = shl i32 %add192.i, 4
  %190 = tail call i32 @llvm.umin.i32(i32 %shl200.i, i32 64) #3
  %mul205.i = mul i32 %190, %UndecoratedSmoothedOFDM.1.i
  %sub206.i = sub nuw nsw i32 64, %190
  %mul207.i = mul i32 %sub206.i, %UndecoratedSmoothedCCK.1.i
  %add208.i = add i32 %mul207.i, %mul205.i
  %shr209.i = lshr i32 %add208.i, 6
  br label %if.end230.i

if.then216.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv184.le.i = zext i8 %storemerge.i to i32
  %mul217.i = mul i32 %add192.i, %UndecoratedSmoothedOFDM.1.i
  %sub221.i = sub i32 %conv184.le.i, %add192.i
  %mul222.i = mul i32 %sub221.i, %UndecoratedSmoothedCCK.1.i
  %add223.i = add i32 %mul222.i, %mul217.i
  %div227.i = udiv i32 %add223.i, %conv184.le.i
  br label %if.end230.i

if.end230.i:                                      ; preds = %if.then216.i, %if.then199.i
  %UndecoratedSmoothedPWDB.0.i = phi i32 [ %shr209.i, %if.then199.i ], [ %div227.i, %if.then216.i ]
  %191 = ptrtoint ptr %UndecoratedSmoothedCCK40.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %UndecoratedSmoothedCCK.1.i, ptr %UndecoratedSmoothedCCK40.i, align 4
  %192 = ptrtoint ptr %UndecoratedSmoothedOFDM42.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %UndecoratedSmoothedOFDM.1.i, ptr %UndecoratedSmoothedOFDM42.i, align 8
  %193 = ptrtoint ptr %rssi_stat.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %UndecoratedSmoothedPWDB.0.i, ptr %rssi_stat.i, align 8
  br label %odm_Process_RSSIForDM.exit

odm_Process_RSSIForDM.exit:                       ; preds = %if.end230.i, %lor.lhs.false48.i.odm_Process_RSSIForDM.exit_crit_edge, %if.end4.i.odm_Process_RSSIForDM.exit_crit_edge, %if.end.i.odm_Process_RSSIForDM.exit_crit_edge, %odm_RxPhyStatus92CSeries_Parsing.exit.odm_Process_RSSIForDM.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ODM_ConfigRFWithHeaderFile(ptr noundef %dm_odm, i32 noundef %content, i32 noundef %rfpath) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rfpath)
  %cmp = icmp eq i32 %rfpath, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @ODM_ReadAndConfig_RadioA_1T_8188E(ptr noundef %dm_odm) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ODM_ReadAndConfig_RadioA_1T_8188E(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ODM_ConfigBBWithHeaderFile(ptr noundef %dm_odm, i32 noundef %config_tp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %config_tp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %config_tp, label %entry.if.end8_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then2
    i32 3, label %if.then6
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @ODM_ReadAndConfig_PHY_REG_1T_8188E(ptr noundef %dm_odm) #3
  br label %if.end8

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 @ODM_ReadAndConfig_AGC_TAB_1T_8188E(ptr noundef %dm_odm) #3
  br label %if.end8

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @ODM_ReadAndConfig_PHY_REG_PG_8188E(ptr noundef %dm_odm) #3
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then2, %if.then, %entry.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ODM_ReadAndConfig_PHY_REG_1T_8188E(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ODM_ReadAndConfig_AGC_TAB_1T_8188E(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_ReadAndConfig_PHY_REG_PG_8188E(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ODM_ConfigMACWithHeaderFile(ptr noundef %dm_odm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ODM_ReadAndConfig_MAC_REG_8188E(ptr noundef %dm_odm) #3
  %conv1 = and i32 %call, 255
  ret i32 %conv1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ODM_ReadAndConfig_MAC_REG_8188E(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_AntselStatistics_88E(ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.peeled.count", i32 1}
