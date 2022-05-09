; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/rtl8188e_dm.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/rtl8188e_dm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.HT_caps_element = type { %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i8, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
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
%struct.P2P_PS_Offload_t = type { i8 }
%struct.rereg_nd_name_data = type { ptr, [16 x i8], i8, i8 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.br_ext_info = type { i32, i32, i32, i32, [6 x i8], i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188e_InitHalDm(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %odmpriv = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38
  %call.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 64) #3
  %0 = and i8 %call.i, -33
  %call2.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 64, i8 noundef zeroext %0) #3
  %dmpriv.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 37
  %AntDivCfg.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 40
  %1 = ptrtoint ptr %AntDivCfg.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %AntDivCfg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 83951672, i32 83951736
  %3 = ptrtoint ptr %dmpriv.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.store.select.i, ptr %dmpriv.i, align 4
  %conv.i = zext i32 %spec.store.select.i to i64
  tail call void @ODM_CmnInfoUpdate(ptr noundef %odmpriv, i32 noundef 0, i64 noundef %conv.i) #3
  %cur_wireless_mode.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 7
  tail call void @ODM_CmnInfoHook(ptr noundef %odmpriv, i32 noundef 2, ptr noundef %cur_wireless_mode.i) #3
  %nCur40MhzPrimeSC.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 9
  tail call void @ODM_CmnInfoHook(ptr noundef %odmpriv, i32 noundef 3, ptr noundef %nCur40MhzPrimeSC.i) #3
  %CurrentChannelBW.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 7
  tail call void @ODM_CmnInfoHook(ptr noundef %odmpriv, i32 noundef 4, ptr noundef %CurrentChannelBW.i) #3
  %CurrentChannel.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 8
  tail call void @ODM_CmnInfoHook(ptr noundef %odmpriv, i32 noundef 5, ptr noundef %CurrentChannel.i) #3
  %bScanInProcess.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 2
  tail call void @ODM_CmnInfoHook(ptr noundef %odmpriv, i32 noundef 6, ptr noundef %bScanInProcess.i) #3
  %bpower_saving.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 14, i32 6
  tail call void @ODM_CmnInfoHook(ptr noundef %odmpriv, i32 noundef 7, ptr noundef %bpower_saving.i) #3
  %TRxAntDivType.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 41
  %4 = ptrtoint ptr %TRxAntDivType.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %TRxAntDivType.i, align 2
  %conv4.i = zext i8 %5 to i32
  tail call void @ODM_CmnInfoInit(ptr noundef %odmpriv, i32 noundef 10, i32 noundef %conv4.i) #3
  %uglygep.i = getelementptr i8, ptr %Adapter, i32 19328
  %6 = call ptr @memset(ptr %uglygep.i, i32 0, i32 128)
  tail call void @ODM_DMInit(ptr noundef %odmpriv) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_DMInit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188e_HalDmWatchDog(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_init_completed1 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 26
  %0 = ptrtoint ptr %hw_init_completed1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_init_completed1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  %4 = and i32 %3, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %asoc_sta_count = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 11, i32 5
  %6 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asoc_sta_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp sgt i32 %7, 2
  %spec.select = zext i1 %cmp to i8
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %8 = trunc i32 %3 to i8
  %9 = and i8 %8, 1
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then5
  %bLinked.0 = phi i8 [ %spec.select, %if.then5 ], [ %9, %if.else ]
  %odmpriv = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38
  %conv = zext i8 %bLinked.0 to i64
  tail call void @ODM_CmnInfoUpdate(ptr noundef %odmpriv, i32 noundef 8, i64 noundef %conv) #3
  tail call void @ODM_DMWatchdog(ptr noundef %odmpriv) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_CmnInfoUpdate(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_DMWatchdog(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188e_init_dm_priv(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dmpriv = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 37
  %0 = call ptr @memset(ptr %dmpriv, i32 0, i32 16)
  %haldata.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19
  %odmpriv.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38
  %1 = call ptr @memset(ptr %odmpriv.i, i32 0, i32 3352)
  %2 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %Adapter, ptr %odmpriv.i, align 8
  %3 = ptrtoint ptr %haldata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %haldata.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp eq i32 %4, 1
  %cond.i = zext i1 %cmp.i to i32
  tail call void @ODM_CmnInfoInit(ptr noundef %odmpriv.i, i32 noundef 1, i32 noundef %cond.i) #3
  %TRxAntDivType.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 41
  %5 = ptrtoint ptr %TRxAntDivType.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %TRxAntDivType.i, align 2
  %conv.i = zext i8 %6 to i32
  tail call void @ODM_CmnInfoInit(ptr noundef %odmpriv.i, i32 noundef 10, i32 noundef %conv.i) #3
  %7 = ptrtoint ptr %dmpriv to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 83886080, ptr %dmpriv, align 4
  tail call void @ODM_CmnInfoUpdate(ptr noundef %odmpriv.i, i32 noundef 0, i64 noundef 83886080) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @AntDivCompare8188E(ptr nocapture noundef readonly %Adapter, ptr nocapture noundef readonly %dst, ptr nocapture noundef %src) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %AntDivCfg = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 40
  %0 = ptrtoint ptr %AntDivCfg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %AntDivCfg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then:                                          ; preds = %entry
  %Rssi = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 5
  %2 = ptrtoint ptr %Rssi to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %Rssi, align 1
  %Rssi2 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 5
  %4 = ptrtoint ptr %Rssi2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %Rssi2, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp3.not = icmp slt i32 %3, %5
  br i1 %cmp3.not, label %if.then.if.end10_crit_edge, label %if.then5

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %Rssi2 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %3, ptr %Rssi2, align 1
  %Optimum_antenna = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 10, i32 2
  %7 = ptrtoint ptr %Optimum_antenna to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %Optimum_antenna, align 1
  %Optimum_antenna9 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 10, i32 2
  %9 = ptrtoint ptr %Optimum_antenna9 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %Optimum_antenna9, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @AntDivBeforeLink8188E(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %DM_SWAT_Table = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 25
  %AntDivCfg = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 40
  %0 = ptrtoint ptr %AntDivCfg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %AntDivCfg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %SWAS_NoLink_State = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 25, i32 1
  %4 = ptrtoint ptr %SWAS_NoLink_State to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %SWAS_NoLink_State, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp5 = icmp eq i8 %5, 0
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %SWAS_NoLink_State to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %SWAS_NoLink_State, align 1
  %7 = ptrtoint ptr %DM_SWAT_Table to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %DM_SWAT_Table, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp10 = icmp eq i8 %8, 1
  %conv12 = select i1 %cmp10, i8 2, i8 1
  %9 = ptrtoint ptr %DM_SWAT_Table to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv12, ptr %DM_SWAT_Table, align 1
  %call15 = tail call zeroext i8 @rtw_antenna_select_cmd(ptr noundef %Adapter, i8 noundef zeroext %conv12, i8 noundef zeroext 0) #3
  br label %cleanup

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %SWAS_NoLink_State to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %SWAS_NoLink_State, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %if.then7 ], [ 0, %if.else ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_antenna_select_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_CmnInfoHook(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_CmnInfoInit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
