; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/os_dep/mlme_linux.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/os_dep/mlme_linux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rt_pmkid_list = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.iw_point = type { ptr, i16, i16 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [6 x i8], i8, i16, [8 x i8], i8, [32 x i8], i16, [32 x i8], i8, i8, %struct.rssi_sta, i8, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.sockaddr = type { i16, [14 x i8] }

@rtw_init_mlme_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&pmlmepriv->assoc_timer)\00", [38 x i8] zeroinitializer }, align 32
@rtw_init_mlme_timer.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&pmlmepriv->scan_to_timer)\00", [36 x i8] zeroinitializer }, align 32
@rtw_init_mlme_timer.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(&pmlmepriv->dynamic_chk_timer)\00", [32 x i8] zeroinitializer }, align 32
@backup_pmkid = internal global { [16 x %struct.rt_pmkid_list], [256 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ASSOCINFO(ReqIEs =\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@init_addba_retry_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&psta->addba_retry_timer)\00", [37 x i8] zeroinitializer }, align 32
@init_mlme_ext_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&pmlmeext->survey_timer)\00", [38 x i8] zeroinitializer }, align 32
@init_mlme_ext_timer.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&pmlmeext->link_timer)\00", [40 x i8] zeroinitializer }, align 32
@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@rtw_indicate_sta_assoc_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016R8188EU: +rtw_indicate_sta_assoc_event\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtw_indicate_sta_assoc_event\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/staging/r8188eu/os_dep/mlme_linux.c\00", [52 x i8] zeroinitializer }, align 32
@rtw_indicate_sta_assoc_event._entry_ptr = internal global ptr @rtw_indicate_sta_assoc_event._entry, section ".printk_index", align 4
@rtw_indicate_sta_disassoc_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.14, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016R8188EU: +rtw_indicate_sta_disassoc_event\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtw_indicate_sta_disassoc_event\00", [32 x i8] zeroinitializer }, align 32
@rtw_indicate_sta_disassoc_event._entry_ptr = internal global ptr @rtw_indicate_sta_disassoc_event._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 36, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 37, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 38, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"backup_pmkid\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 56, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 119, i32 19 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 123, i32 20 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 155, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 162, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 163, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 184, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [47 x i8] c"../drivers/staging/r8188eu/os_dep/mlme_linux.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 207, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @rtw_indicate_sta_assoc_event._entry, ptr @rtw_indicate_sta_assoc_event._entry_ptr, ptr @rtw_indicate_sta_disassoc_event._entry, ptr @rtw_indicate_sta_disassoc_event._entry_ptr, ptr @rtw_init_mlme_timer.__key, ptr @.str, ptr @rtw_init_mlme_timer.__key.1, ptr @.str.2, ptr @rtw_init_mlme_timer.__key.3, ptr @.str.4, ptr @backup_pmkid, ptr @.str.5, ptr @.str.6, ptr @init_addba_retry_timer.__key, ptr @.str.8, ptr @init_mlme_ext_timer.__key, ptr @.str.9, ptr @init_mlme_ext_timer.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_mlme_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_mlme_timer.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_mlme_timer.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backup_pmkid to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_addba_retry_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_mlme_ext_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_mlme_ext_timer.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_indicate_sta_assoc_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_indicate_sta_disassoc_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_join_timeout_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1192
  tail call void @_rtw_join_timeout_handler(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtw_join_timeout_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_scan_timeout_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1248
  tail call void @rtw_scan_timeout_handler(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_scan_timeout_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_init_mlme_timer(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %assoc_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 18
  tail call void @init_timer_key(ptr noundef %assoc_timer, ptr noundef nonnull @rtw_join_timeout_handler, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @rtw_init_mlme_timer.__key) #7
  %scan_to_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 21
  tail call void @init_timer_key(ptr noundef %scan_to_timer, ptr noundef nonnull @_rtw_scan_timeout_handler, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @rtw_init_mlme_timer.__key.1) #7
  %dynamic_chk_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 28
  tail call void @init_timer_key(ptr noundef %dynamic_chk_timer, ptr noundef nonnull @_dynamic_check_timer_handlder, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @rtw_init_mlme_timer.__key.3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_dynamic_check_timer_handlder(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1384
  tail call void @rtw_dynamic_check_timer_handlder(ptr noundef %add.ptr) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %0, 200
  %call.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_os_indicate_connect(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw_indicate_wx_assoc_event(ptr noundef %adapter) #7
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 37
  %0 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnetdev, align 4
  tail call void @netif_carrier_on(ptr noundef %1) #7
  %arrayidx = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @find_vpid(i32 noundef %3) #7
  %call3 = tail call i32 @kill_pid(ptr noundef %call, i32 noundef 14, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_indicate_wx_assoc_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_os_indicate_scan_done(ptr noundef %padapter, i1 noundef zeroext %aborted) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @indicate_wx_scan_complete_event(ptr noundef %padapter) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @indicate_wx_scan_complete_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_reset_securitypriv(ptr nocapture noundef %adapter) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %securitypriv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %PMKIDList = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 42
  %2 = call ptr @memcpy(ptr @backup_pmkid, ptr %PMKIDList, i32 1024)
  %PMKIDIndex = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 43
  %3 = ptrtoint ptr %PMKIDIndex to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %PMKIDIndex, align 4
  %btkip_countermeasure = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 39
  %5 = ptrtoint ptr %btkip_countermeasure to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %btkip_countermeasure, align 4
  %btkip_countermeasure_time = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 41
  %7 = ptrtoint ptr %btkip_countermeasure_time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %btkip_countermeasure_time, align 8
  %9 = call ptr @memset(ptr %securitypriv, i32 0, i32 6776)
  %10 = call ptr @memcpy(ptr %PMKIDList, ptr @backup_pmkid, i32 1024)
  store i8 %4, ptr %PMKIDIndex, align 4
  store i8 %6, ptr %btkip_countermeasure, align 4
  store i32 %8, ptr %btkip_countermeasure_time, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %securitypriv to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %securitypriv, align 8
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %dot11PrivacyAlgrthm, align 4
  %dot11PrivacyKeyIndex = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 2
  %13 = ptrtoint ptr %dot11PrivacyKeyIndex to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %dot11PrivacyKeyIndex, align 8
  %dot118021XGrpPrivacy = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 5
  %14 = ptrtoint ptr %dot118021XGrpPrivacy to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dot118021XGrpPrivacy, align 4
  %dot118021XGrpKeyid = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 6
  %15 = ptrtoint ptr %dot118021XGrpKeyid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %dot118021XGrpKeyid, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 29
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %16, align 4
  %18 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 30
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %18, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_os_indicate_disconnect(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 37
  %0 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnetdev, align 4
  tail call void @netif_carrier_off(ptr noundef %1) #7
  tail call void @rtw_indicate_wx_disassoc_event(ptr noundef %adapter) #7
  %securitypriv.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12
  %2 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %securitypriv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %PMKIDList.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 42
  %4 = call ptr @memcpy(ptr @backup_pmkid, ptr %PMKIDList.i, i32 1024)
  %PMKIDIndex.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 43
  %5 = ptrtoint ptr %PMKIDIndex.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %PMKIDIndex.i, align 4
  %btkip_countermeasure.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 39
  %7 = ptrtoint ptr %btkip_countermeasure.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %btkip_countermeasure.i, align 4
  %btkip_countermeasure_time.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 41
  %9 = ptrtoint ptr %btkip_countermeasure_time.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %btkip_countermeasure_time.i, align 8
  %11 = call ptr @memset(ptr %securitypriv.i, i32 0, i32 6776)
  %12 = call ptr @memcpy(ptr %PMKIDList.i, ptr @backup_pmkid, i32 1024)
  store i8 %6, ptr %PMKIDIndex.i, align 4
  store i8 %8, ptr %btkip_countermeasure.i, align 4
  store i32 %10, ptr %btkip_countermeasure_time.i, align 8
  br label %rtw_reset_securitypriv.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %securitypriv.i, align 8
  %dot11PrivacyAlgrthm.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %dot11PrivacyAlgrthm.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dot11PrivacyAlgrthm.i, align 4
  %dot11PrivacyKeyIndex.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %dot11PrivacyKeyIndex.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %dot11PrivacyKeyIndex.i, align 8
  %dot118021XGrpPrivacy.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 5
  %16 = ptrtoint ptr %dot118021XGrpPrivacy.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %dot118021XGrpPrivacy.i, align 4
  %dot118021XGrpKeyid.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 6
  %17 = ptrtoint ptr %dot118021XGrpKeyid.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %dot118021XGrpKeyid.i, align 8
  br label %rtw_reset_securitypriv.exit

rtw_reset_securitypriv.exit:                      ; preds = %if.else.i, %if.then.i
  %18 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 29
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %18, align 4
  %20 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 30
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %20, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_indicate_wx_disassoc_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_report_sec_ie(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %authmode, ptr nocapture noundef readonly %sec_ie) local_unnamed_addr #0 align 64 {
entry:
  %wrqu = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu) #7
  %0 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %authmode)
  %cmp = icmp eq i8 %authmode, -35
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 256) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %2 = call ptr @memcpy(ptr %call7.i.i, ptr @.str.5, i32 19)
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 18
  %arrayidx = getelementptr i8, ptr %sec_ie, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %4)
  %cmp5 = icmp ult i8 %4, -2
  %conv4 = zext i8 %4 to i32
  %add = add nuw nsw i32 %conv4, 2
  %cond = select i1 %cmp5, i32 %add, i32 256
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %conv751 = phi i32 [ 0, %if.end ], [ %conv7, %for.body.for.body_crit_edge ]
  %i.050 = phi i8 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %p.049 = phi ptr [ %add.ptr, %if.end ], [ %add.ptr13, %for.body.for.body_crit_edge ]
  %arrayidx10 = getelementptr i8, ptr %sec_ie, i32 %conv751
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %6 to i32
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.049, ptr noundef nonnull @.str.6, i32 noundef %conv11)
  %add.ptr13 = getelementptr i8, ptr %p.049, i32 %call12
  %inc = add i8 %i.050, 1
  %conv7 = zext i8 %inc to i32
  %cmp8 = icmp ugt i32 %cond, %conv7
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 10496, ptr %add.ptr13, align 1
  %add.ptr15 = getelementptr i8, ptr %add.ptr13, i32 1
  %8 = call ptr @memset(ptr %wrqu, i32 0, i32 16)
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr15 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call7.i.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv16 = trunc i32 %sub.ptr.sub to i16
  %conv18 = and i32 %sub.ptr.sub, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv18)
  %cmp19 = icmp eq i32 %conv18, 0
  %spec.select = select i1 %cmp19, i16 %conv16, i16 256
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %spec.select, ptr %0, align 4
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 37
  %10 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pnetdev, align 4
  call void @wireless_send_event(ptr noundef %11, i32 noundef 35842, ptr noundef nonnull %wrqu, ptr noundef nonnull %call7.i.i) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu) #7
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wireless_send_event(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_addba_retry_timer(ptr nocapture noundef readnone %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %addba_retry_timer = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 30
  tail call void @init_timer_key(ptr noundef %addba_retry_timer, ptr noundef nonnull @_addba_timer_hdl, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_addba_retry_timer.__key) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_addba_timer_hdl(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -912
  tail call void @addba_timer_hdl(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_mlme_ext_timer(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %survey_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  tail call void @init_timer_key(ptr noundef %survey_timer, ptr noundef nonnull @_survey_timer_hdl, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_mlme_ext_timer.__key) #7
  %link_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 19
  tail call void @init_timer_key(ptr noundef %link_timer, ptr noundef nonnull @_link_timer_hdl, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_mlme_ext_timer.__key.10) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_survey_timer_hdl(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -5044
  tail call void @survey_timer_hdl(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_link_timer_hdl(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -5092
  tail call void @link_timer_hdl(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_indicate_sta_assoc_event(ptr nocapture noundef readonly %padapter, ptr noundef readonly %psta) local_unnamed_addr #0 align 64 {
entry:
  %wrqu = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu) #7
  %tobool.not = icmp eq ptr %psta, null
  %0 = getelementptr inbounds i8, ptr %wrqu, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %aid = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 8
  %2 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp = icmp ugt i32 %3, 32
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %sub = add nsw i32 %3, -1
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 18, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp4.not = icmp eq ptr %5, %psta
  br i1 %cmp4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %6 = ptrtoint ptr %wrqu to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %wrqu, align 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %wrqu, i32 0, i32 1
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 11
  %7 = call ptr @memcpy(ptr %sa_data, ptr %hwaddr, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %8 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp8 = icmp ugt i32 %8, 4
  br i1 %cmp8, label %do.end, label %if.end6.do.end13_crit_edge

if.end6.do.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %do.end13

do.end13:                                         ; preds = %do.end, %if.end6.do.end13_crit_edge
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %9 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pnetdev, align 4
  call void @wireless_send_event(ptr noundef %10, i32 noundef 35843, ptr noundef nonnull %wrqu, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_indicate_sta_disassoc_event(ptr nocapture noundef readonly %padapter, ptr noundef readonly %psta) local_unnamed_addr #0 align 64 {
entry:
  %wrqu = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu) #7
  %tobool.not = icmp eq ptr %psta, null
  %0 = getelementptr inbounds i8, ptr %wrqu, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %aid = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 8
  %2 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp = icmp ugt i32 %3, 32
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %sub = add nsw i32 %3, -1
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 18, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp4.not = icmp eq ptr %5, %psta
  br i1 %cmp4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %6 = ptrtoint ptr %wrqu to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %wrqu, align 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %wrqu, i32 0, i32 1
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 11
  %7 = call ptr @memcpy(ptr %sa_data, ptr %hwaddr, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %8 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp8 = icmp ugt i32 %8, 4
  br i1 %cmp8, label %do.end, label %if.end6.do.end13_crit_edge

if.end6.do.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %do.end13

do.end13:                                         ; preds = %do.end, %if.end6.do.end13_crit_edge
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %9 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pnetdev, align 4
  call void @wireless_send_event(ptr noundef %10, i32 noundef 35844, ptr noundef nonnull %wrqu, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_dynamic_check_timer_handlder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @addba_timer_hdl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @survey_timer_hdl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @link_timer_hdl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !18, !20, !21, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @rtw_init_mlme_timer.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/os_dep/mlme_linux.c", i32 36, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @rtw_init_mlme_timer.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/r8188eu/os_dep/mlme_linux.c", i32 37, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtw_init_mlme_timer.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/os_dep/mlme_linux.c", i32 38, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/r8188eu/os_dep/mlme_linux.c", i32 119, i32 19}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/r8188eu/os_dep/mlme_linux.c", i32 123, i32 20}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/r8188eu/os_dep/mlme_linux.c", i32 124, i32 19}
!15 = !{ptr @init_addba_retry_timer.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/staging/r8188eu/os_dep/mlme_linux.c", i32 155, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @init_mlme_ext_timer.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/staging/r8188eu/os_dep/mlme_linux.c", i32 162, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @init_mlme_ext_timer.__key.10, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/staging/r8188eu/os_dep/mlme_linux.c", i32 163, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/r8188eu/os_dep/mlme_linux.c", i32 184, i32 2}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rtw_indicate_sta_assoc_event._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @rtw_indicate_sta_assoc_event._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/r8188eu/os_dep/mlme_linux.c", i32 207, i32 2}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rtw_indicate_sta_disassoc_event._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @rtw_indicate_sta_disassoc_event._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @backup_pmkid, !36, !"backup_pmkid", i1 false, i1 false}
!36 = !{!"../drivers/staging/r8188eu/os_dep/mlme_linux.c", i32 56, i32 29}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
