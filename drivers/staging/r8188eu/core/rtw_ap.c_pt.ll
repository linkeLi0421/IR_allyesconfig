; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/core/rtw_ap.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/core/rtw_ap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [6 x i8], i8, i16, [8 x i8], i8, [32 x i8], i16, [32 x i8], i8, i8, %struct.rssi_sta, i8, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.ndis_802_11_var_ie = type { i8, i8, [1 x i8] }

@init_mlme_ap_info.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&pmlmepriv->bcn_update_lock\00", [36 x i8] zeroinitializer }, align 32
@init_mlme_ap_info.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&((&pacl_list->acl_node_q)->lock)\00", [62 x i8] zeroinitializer }, align 32
@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@expire_timeout_chk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016R8188EU: auth expire %6ph\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"expire_timeout_chk\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/r8188eu/core/rtw_ap.c\00", [58 x i8] zeroinitializer }, align 32
@expire_timeout_chk._entry_ptr = internal global ptr @expire_timeout_chk._entry, section ".printk_index", align 4
@expire_timeout_chk._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016R8188EU: asoc expire %pM, state = 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@expire_timeout_chk._entry_ptr.8 = internal global ptr @expire_timeout_chk._entry.6, section ".printk_index", align 4
@expire_timeout_chk._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\016R8188EU: %s sta:%pM, sleepq_len:%u, free_xmitframe_cnt:%u, asoc_list_cnt:%u, clear sleep_q\0A\00", [34 x i8] zeroinitializer }, align 32
@expire_timeout_chk._entry_ptr.11 = internal global ptr @expire_timeout_chk._entry.9, section ".printk_index", align 4
@expire_timeout_chk._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016R8188EU: asoc check, sta(%pM) is alive\0A\00", [54 x i8] zeroinitializer }, align 32
@expire_timeout_chk._entry_ptr.14 = internal global ptr @expire_timeout_chk._entry.12, section ".printk_index", align 4
@expire_timeout_chk._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016R8188EU: ack check for asoc expire, keep_alive_trycnt =%d\0A\00", [35 x i8] zeroinitializer }, align 32
@expire_timeout_chk._entry_ptr.17 = internal global ptr @expire_timeout_chk._entry.15, section ".printk_index", align 4
@expire_timeout_chk._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@expire_timeout_chk._entry_ptr.19 = internal global ptr @expire_timeout_chk._entry.18, section ".printk_index", align 4
@add_RATid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016R8188EU: %s => mac_id:%d , raid:%d , bitmap = 0x%x, arg = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"add_RATid\00", [22 x i8] zeroinitializer }, align 32
@add_RATid._entry_ptr = internal global ptr @add_RATid._entry, section ".printk_index", align 4
@add_RATid._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.5, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016R8188EU: station aid %d exceed the max number\0A\00", [47 x i8] zeroinitializer }, align 32
@add_RATid._entry_ptr.24 = internal global ptr @add_RATid._entry.22, section ".printk_index", align 4
@update_bmc_sta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016R8188EU: update_bmc_sta, mask = 0x%x, arg = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"update_bmc_sta\00", [17 x i8] zeroinitializer }, align 32
@update_bmc_sta._entry_ptr = internal global ptr @update_bmc_sta._entry, section ".printk_index", align 4
@update_bmc_sta._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.5, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016R8188EU: add_RATid_bmc_sta error!\0A\00", [59 x i8] zeroinitializer }, align 32
@update_bmc_sta._entry_ptr.29 = internal global ptr @update_bmc_sta._entry.27, section ".printk_index", align 4
@update_sta_info_apmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016R8188EU: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"update_sta_info_apmode\00", [41 x i8] zeroinitializer }, align 32
@update_sta_info_apmode._entry_ptr = internal global ptr @update_sta_info_apmode._entry, section ".printk_index", align 4
@bss_cap_update_on_sta_join._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016R8188EU: HT: STA %pM HT Capabilities Info: 0x%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bss_cap_update_on_sta_join\00", [37 x i8] zeroinitializer }, align 32
@bss_cap_update_on_sta_join._entry_ptr = internal global ptr @bss_cap_update_on_sta_join._entry, section ".printk_index", align 4
@bss_cap_update_on_sta_join._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.5, i32 946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016R8188EU: %s STA %pM - no greenfield, num of non-gf stations %d\0A\00", [62 x i8] zeroinitializer }, align 32
@bss_cap_update_on_sta_join._entry_ptr.36 = internal global ptr @bss_cap_update_on_sta_join._entry.34, section ".printk_index", align 4
@bss_cap_update_on_sta_join._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.5, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016R8188EU: %s STA %pM - 20 MHz HT, num of 20MHz HT STAs %d\0A\00", [36 x i8] zeroinitializer }, align 32
@bss_cap_update_on_sta_join._entry_ptr.39 = internal global ptr @bss_cap_update_on_sta_join._entry.37, section ".printk_index", align 4
@bss_cap_update_on_sta_join._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.5, i32 966, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016R8188EU: %s STA %pM - no HT, num of non-HT stations %d\0A\00", [38 x i8] zeroinitializer }, align 32
@bss_cap_update_on_sta_join._entry_ptr.42 = internal global ptr @bss_cap_update_on_sta_join._entry.40, section ".printk_index", align 4
@bss_cap_update_on_sta_join._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.33, ptr @.str.5, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016R8188EU: %s, updated =%d\0A\00", [36 x i8] zeroinitializer }, align 32
@bss_cap_update_on_sta_join._entry_ptr.45 = internal global ptr @bss_cap_update_on_sta_join._entry.43, section ".printk_index", align 4
@bss_cap_update_on_sta_leave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.46, ptr @.str.5, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bss_cap_update_on_sta_leave\00", [36 x i8] zeroinitializer }, align 32
@bss_cap_update_on_sta_leave._entry_ptr = internal global ptr @bss_cap_update_on_sta_leave._entry, section ".printk_index", align 4
@rtw_sta_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 1096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016R8188EU: %s(%s)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtw_sta_flush\00", [18 x i8] zeroinitializer }, align 32
@rtw_sta_flush._entry_ptr = internal global ptr @rtw_sta_flush._entry, section ".printk_index", align 4
@stop_ap_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.5, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016R8188EU: %s, free acl_node_queue, num =%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stop_ap_mode\00", [19 x i8] zeroinitializer }, align 32
@stop_ap_mode._entry_ptr = internal global ptr @stop_ap_mode._entry, section ".printk_index", align 4
@update_bcn_fixed_ie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.51, ptr @.str.5, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"update_bcn_fixed_ie\00", [44 x i8] zeroinitializer }, align 32
@update_bcn_fixed_ie._entry_ptr = internal global ptr @update_bcn_fixed_ie._entry, section ".printk_index", align 4
@update_bcn_erpinfo_ie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.5, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016R8188EU: %s, ERP_enable =%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"update_bcn_erpinfo_ie\00", [42 x i8] zeroinitializer }, align 32
@update_bcn_erpinfo_ie._entry_ptr = internal global ptr @update_bcn_erpinfo_ie._entry, section ".printk_index", align 4
@update_bcn_htcap_ie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.54, ptr @.str.5, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"update_bcn_htcap_ie\00", [44 x i8] zeroinitializer }, align 32
@update_bcn_htcap_ie._entry_ptr = internal global ptr @update_bcn_htcap_ie._entry, section ".printk_index", align 4
@update_bcn_rsn_ie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.55, ptr @.str.5, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"update_bcn_rsn_ie\00", [46 x i8] zeroinitializer }, align 32
@update_bcn_rsn_ie._entry_ptr = internal global ptr @update_bcn_rsn_ie._entry, section ".printk_index", align 4
@update_bcn_htinfo_ie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.56, ptr @.str.5, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"update_bcn_htinfo_ie\00", [43 x i8] zeroinitializer }, align 32
@update_bcn_htinfo_ie._entry_ptr = internal global ptr @update_bcn_htinfo_ie._entry, section ".printk_index", align 4
@update_bcn_vendor_spec_ie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.57, ptr @.str.5, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"update_bcn_vendor_spec_ie\00", [38 x i8] zeroinitializer }, align 32
@update_bcn_vendor_spec_ie._entry_ptr = internal global ptr @update_bcn_vendor_spec_ie._entry, section ".printk_index", align 4
@RTW_WPA_OUI = external dso_local global [0 x i8], align 1
@WMM_OUI = external dso_local global [0 x i8], align 1
@WPS_OUI = external dso_local global [0 x i8], align 1
@P2P_OUI = external dso_local global [0 x i8], align 1
@update_bcn_vendor_spec_ie._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.5, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016R8188EU: unknown OUI type!\0A\00", [34 x i8] zeroinitializer }, align 32
@update_bcn_vendor_spec_ie._entry_ptr.60 = internal global ptr @update_bcn_vendor_spec_ie._entry.58, section ".printk_index", align 4
@update_bcn_wpa_ie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.61, ptr @.str.5, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"update_bcn_wpa_ie\00", [46 x i8] zeroinitializer }, align 32
@update_bcn_wpa_ie._entry_ptr = internal global ptr @update_bcn_wpa_ie._entry, section ".printk_index", align 4
@update_bcn_wmm_ie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.62, ptr @.str.5, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"update_bcn_wmm_ie\00", [46 x i8] zeroinitializer }, align 32
@update_bcn_wmm_ie._entry_ptr = internal global ptr @update_bcn_wmm_ie._entry, section ".printk_index", align 4
@update_bcn_wps_ie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.63, ptr @.str.5, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"update_bcn_wps_ie\00", [46 x i8] zeroinitializer }, align 32
@update_bcn_wps_ie._entry_ptr = internal global ptr @update_bcn_wps_ie._entry, section ".printk_index", align 4
@rtw_ht_operation_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.5, i32 763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016R8188EU: %s current operation mode = 0x%X\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtw_ht_operation_update\00", [40 x i8] zeroinitializer }, align 32
@rtw_ht_operation_update._entry_ptr = internal global ptr @rtw_ht_operation_update._entry, section ".printk_index", align 4
@rtw_ht_operation_update._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.5, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016R8188EU: %s new operation mode = 0x%X changes =%d\0A\00", [43 x i8] zeroinitializer }, align 32
@rtw_ht_operation_update._entry_ptr.68 = internal global ptr @rtw_ht_operation_update._entry.66, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 5, i64 42, i64 45, i64 48, i64 61, i64 221, i64 255]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 18, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 21, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 182, i32 5 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 252, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 258, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 291, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 296, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 303, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 383, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 400, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 458, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 477, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 499, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 931, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 944, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 954, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 964, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 978, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1041, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1096, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1239, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 557, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 569, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 596, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 606, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 601, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 676, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 687, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 611, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 616, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 631, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 762, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.293 = private constant [41 x i8] c"../drivers/staging/r8188eu/core/rtw_ap.c\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 814, i32 2 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @add_RATid._entry, ptr @add_RATid._entry.22, ptr @add_RATid._entry_ptr, ptr @add_RATid._entry_ptr.24, ptr @bss_cap_update_on_sta_join._entry, ptr @bss_cap_update_on_sta_join._entry.34, ptr @bss_cap_update_on_sta_join._entry.37, ptr @bss_cap_update_on_sta_join._entry.40, ptr @bss_cap_update_on_sta_join._entry.43, ptr @bss_cap_update_on_sta_join._entry_ptr, ptr @bss_cap_update_on_sta_join._entry_ptr.36, ptr @bss_cap_update_on_sta_join._entry_ptr.39, ptr @bss_cap_update_on_sta_join._entry_ptr.42, ptr @bss_cap_update_on_sta_join._entry_ptr.45, ptr @bss_cap_update_on_sta_leave._entry, ptr @bss_cap_update_on_sta_leave._entry_ptr, ptr @expire_timeout_chk._entry, ptr @expire_timeout_chk._entry.12, ptr @expire_timeout_chk._entry.15, ptr @expire_timeout_chk._entry.18, ptr @expire_timeout_chk._entry.6, ptr @expire_timeout_chk._entry.9, ptr @expire_timeout_chk._entry_ptr, ptr @expire_timeout_chk._entry_ptr.11, ptr @expire_timeout_chk._entry_ptr.14, ptr @expire_timeout_chk._entry_ptr.17, ptr @expire_timeout_chk._entry_ptr.19, ptr @expire_timeout_chk._entry_ptr.8, ptr @rtw_ht_operation_update._entry, ptr @rtw_ht_operation_update._entry.66, ptr @rtw_ht_operation_update._entry_ptr, ptr @rtw_ht_operation_update._entry_ptr.68, ptr @rtw_sta_flush._entry, ptr @rtw_sta_flush._entry_ptr, ptr @stop_ap_mode._entry, ptr @stop_ap_mode._entry_ptr, ptr @update_bcn_erpinfo_ie._entry, ptr @update_bcn_erpinfo_ie._entry_ptr, ptr @update_bcn_fixed_ie._entry, ptr @update_bcn_fixed_ie._entry_ptr, ptr @update_bcn_htcap_ie._entry, ptr @update_bcn_htcap_ie._entry_ptr, ptr @update_bcn_htinfo_ie._entry, ptr @update_bcn_htinfo_ie._entry_ptr, ptr @update_bcn_rsn_ie._entry, ptr @update_bcn_rsn_ie._entry_ptr, ptr @update_bcn_vendor_spec_ie._entry, ptr @update_bcn_vendor_spec_ie._entry.58, ptr @update_bcn_vendor_spec_ie._entry_ptr, ptr @update_bcn_vendor_spec_ie._entry_ptr.60, ptr @update_bcn_wmm_ie._entry, ptr @update_bcn_wmm_ie._entry_ptr, ptr @update_bcn_wpa_ie._entry, ptr @update_bcn_wpa_ie._entry_ptr, ptr @update_bcn_wps_ie._entry, ptr @update_bcn_wps_ie._entry_ptr, ptr @update_bmc_sta._entry, ptr @update_bmc_sta._entry.27, ptr @update_bmc_sta._entry_ptr, ptr @update_bmc_sta._entry_ptr.29, ptr @update_sta_info_apmode._entry, ptr @update_sta_info_apmode._entry_ptr, ptr @init_mlme_ap_info.__key, ptr @.str, ptr @init_mlme_ap_info.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_mlme_ap_info.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_mlme_ap_info.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expire_timeout_chk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expire_timeout_chk._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expire_timeout_chk._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expire_timeout_chk._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expire_timeout_chk._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expire_timeout_chk._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_RATid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_RATid._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_bmc_sta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_bmc_sta._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_sta_info_apmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bss_cap_update_on_sta_join._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bss_cap_update_on_sta_join._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bss_cap_update_on_sta_join._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bss_cap_update_on_sta_join._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bss_cap_update_on_sta_join._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bss_cap_update_on_sta_leave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_sta_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_ap_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_bcn_fixed_ie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_bcn_erpinfo_ie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_bcn_htcap_ie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_bcn_rsn_ie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_bcn_htinfo_ie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_bcn_vendor_spec_ie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_bcn_vendor_spec_ie._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_bcn_wpa_ie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_bcn_wmm_ie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_bcn_wps_ie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ht_operation_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ht_operation_update._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_mlme_ap_info(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bcn_update_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 62
  tail call void @__raw_spin_lock_init(ptr noundef %bcn_update_lock, ptr noundef nonnull @.str, ptr noundef nonnull @init_mlme_ap_info.__key, i16 noundef signext 3) #8
  %acl_node_q = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3
  %0 = ptrtoint ptr %acl_node_q to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %acl_node_q, ptr %acl_node_q, align 4
  %prev.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %acl_node_q, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_mlme_ap_info.__key.1, i16 noundef signext 3) #8
  %update_bcn.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 63
  %2 = ptrtoint ptr %update_bcn.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %update_bcn.i, align 4
  %bstart_bss.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %3 = ptrtoint ptr %bstart_bss.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bstart_bss.i, align 8
  %num_sta_non_erp.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 38
  %num_sta_no_ht.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 24
  %4 = ptrtoint ptr %num_sta_no_ht.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_sta_no_ht.i, align 4
  %uglygep.i = getelementptr i8, ptr %padapter, i32 7696
  %5 = call ptr @memset(ptr %uglygep.i, i32 0, i32 128)
  %acl_list.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22
  %wps_beacon_ie.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 46
  %6 = ptrtoint ptr %wps_beacon_ie.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %wps_beacon_ie.i, align 4
  %wps_probe_resp_ie.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 47
  %7 = ptrtoint ptr %wps_probe_resp_ie.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %wps_probe_resp_ie.i, align 4
  %wps_assoc_resp_ie.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 48
  %8 = ptrtoint ptr %wps_assoc_resp_ie.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %wps_assoc_resp_ie.i, align 4
  %p2p_beacon_ie.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 52
  %9 = ptrtoint ptr %p2p_beacon_ie.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %p2p_beacon_ie.i, align 4
  %p2p_probe_resp_ie.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 54
  %10 = ptrtoint ptr %p2p_probe_resp_ie.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %p2p_probe_resp_ie.i, align 4
  %11 = call ptr @memset(ptr %num_sta_non_erp.i, i32 0, i32 30)
  %12 = ptrtoint ptr %acl_node_q to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %acl_node_q, ptr %acl_node_q, align 4
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %acl_node_q, ptr %prev.i, align 4
  %num.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 1
  %14 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %num.i, align 4
  %15 = ptrtoint ptr %acl_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %acl_list.i, align 4
  %arrayidx4.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 0
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %arrayidx4.i, ptr %arrayidx4.i, align 4
  %prev.i37.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i37.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx4.i, ptr %prev.i37.i, align 4
  %valid.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 0, i32 2
  %18 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %valid.i, align 2
  %arrayidx4.1.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %arrayidx4.1.i, ptr %arrayidx4.1.i, align 4
  %prev.i37.1.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i37.1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx4.1.i, ptr %prev.i37.1.i, align 4
  %valid.1.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 1, i32 2
  %21 = ptrtoint ptr %valid.1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %valid.1.i, align 2
  %arrayidx4.2.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 2
  %22 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx4.2.i, ptr %arrayidx4.2.i, align 4
  %prev.i37.2.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 2, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i37.2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx4.2.i, ptr %prev.i37.2.i, align 4
  %valid.2.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 2, i32 2
  %24 = ptrtoint ptr %valid.2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %valid.2.i, align 2
  %arrayidx4.3.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 3
  %25 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %arrayidx4.3.i, ptr %arrayidx4.3.i, align 4
  %prev.i37.3.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 3, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i37.3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx4.3.i, ptr %prev.i37.3.i, align 4
  %valid.3.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 3, i32 2
  %27 = ptrtoint ptr %valid.3.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %valid.3.i, align 2
  %arrayidx4.4.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 4
  %28 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx4.4.i, ptr %arrayidx4.4.i, align 4
  %prev.i37.4.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 4, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i37.4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx4.4.i, ptr %prev.i37.4.i, align 4
  %valid.4.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 4, i32 2
  %30 = ptrtoint ptr %valid.4.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %valid.4.i, align 2
  %arrayidx4.5.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 5
  %31 = ptrtoint ptr %arrayidx4.5.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %arrayidx4.5.i, ptr %arrayidx4.5.i, align 4
  %prev.i37.5.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 5, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i37.5.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx4.5.i, ptr %prev.i37.5.i, align 4
  %valid.5.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 5, i32 2
  %33 = ptrtoint ptr %valid.5.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %valid.5.i, align 2
  %arrayidx4.6.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 6
  %34 = ptrtoint ptr %arrayidx4.6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %arrayidx4.6.i, ptr %arrayidx4.6.i, align 4
  %prev.i37.6.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 6, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i37.6.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx4.6.i, ptr %prev.i37.6.i, align 4
  %valid.6.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 6, i32 2
  %36 = ptrtoint ptr %valid.6.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %valid.6.i, align 2
  %arrayidx4.7.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 7
  %37 = ptrtoint ptr %arrayidx4.7.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %arrayidx4.7.i, ptr %arrayidx4.7.i, align 4
  %prev.i37.7.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 7, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i37.7.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx4.7.i, ptr %prev.i37.7.i, align 4
  %valid.7.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 7, i32 2
  %39 = ptrtoint ptr %valid.7.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %valid.7.i, align 2
  %arrayidx4.8.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 8
  %40 = ptrtoint ptr %arrayidx4.8.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %arrayidx4.8.i, ptr %arrayidx4.8.i, align 4
  %prev.i37.8.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 8, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i37.8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx4.8.i, ptr %prev.i37.8.i, align 4
  %valid.8.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 8, i32 2
  %42 = ptrtoint ptr %valid.8.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %valid.8.i, align 2
  %arrayidx4.9.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 9
  %43 = ptrtoint ptr %arrayidx4.9.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %arrayidx4.9.i, ptr %arrayidx4.9.i, align 4
  %prev.i37.9.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 9, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i37.9.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx4.9.i, ptr %prev.i37.9.i, align 4
  %valid.9.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 9, i32 2
  %45 = ptrtoint ptr %valid.9.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %valid.9.i, align 2
  %arrayidx4.10.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 10
  %46 = ptrtoint ptr %arrayidx4.10.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %arrayidx4.10.i, ptr %arrayidx4.10.i, align 4
  %prev.i37.10.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 10, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i37.10.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx4.10.i, ptr %prev.i37.10.i, align 4
  %valid.10.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 10, i32 2
  %48 = ptrtoint ptr %valid.10.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %valid.10.i, align 2
  %arrayidx4.11.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 11
  %49 = ptrtoint ptr %arrayidx4.11.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %arrayidx4.11.i, ptr %arrayidx4.11.i, align 4
  %prev.i37.11.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 11, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i37.11.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %arrayidx4.11.i, ptr %prev.i37.11.i, align 4
  %valid.11.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 11, i32 2
  %51 = ptrtoint ptr %valid.11.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %valid.11.i, align 2
  %arrayidx4.12.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 12
  %52 = ptrtoint ptr %arrayidx4.12.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %arrayidx4.12.i, ptr %arrayidx4.12.i, align 4
  %prev.i37.12.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 12, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i37.12.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx4.12.i, ptr %prev.i37.12.i, align 4
  %valid.12.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 12, i32 2
  %54 = ptrtoint ptr %valid.12.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %valid.12.i, align 2
  %arrayidx4.13.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 13
  %55 = ptrtoint ptr %arrayidx4.13.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %arrayidx4.13.i, ptr %arrayidx4.13.i, align 4
  %prev.i37.13.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 13, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i37.13.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx4.13.i, ptr %prev.i37.13.i, align 4
  %valid.13.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 13, i32 2
  %57 = ptrtoint ptr %valid.13.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %valid.13.i, align 2
  %arrayidx4.14.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 14
  %58 = ptrtoint ptr %arrayidx4.14.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %arrayidx4.14.i, ptr %arrayidx4.14.i, align 4
  %prev.i37.14.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 14, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i37.14.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx4.14.i, ptr %prev.i37.14.i, align 4
  %valid.14.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 14, i32 2
  %60 = ptrtoint ptr %valid.14.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %valid.14.i, align 2
  %arrayidx4.15.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 15
  %61 = ptrtoint ptr %arrayidx4.15.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %arrayidx4.15.i, ptr %arrayidx4.15.i, align 4
  %prev.i37.15.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 15, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i37.15.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %arrayidx4.15.i, ptr %prev.i37.15.i, align 4
  %valid.15.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 15, i32 2
  %63 = ptrtoint ptr %valid.15.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %valid.15.i, align 2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @start_ap_mode(ptr noundef %padapter) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %update_bcn = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 63
  %0 = ptrtoint ptr %update_bcn to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %update_bcn, align 4
  %bstart_bss = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %1 = ptrtoint ptr %bstart_bss to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bstart_bss, align 8
  %num_sta_non_erp = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 38
  %num_sta_no_ht = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 24
  %2 = ptrtoint ptr %num_sta_no_ht to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %num_sta_no_ht, align 4
  %uglygep = getelementptr i8, ptr %padapter, i32 7696
  %3 = call ptr @memset(ptr %uglygep, i32 0, i32 128)
  %acl_list = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22
  %wps_beacon_ie = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 46
  %4 = ptrtoint ptr %wps_beacon_ie to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %wps_beacon_ie, align 4
  %wps_probe_resp_ie = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 47
  %5 = ptrtoint ptr %wps_probe_resp_ie to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %wps_probe_resp_ie, align 4
  %wps_assoc_resp_ie = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 48
  %6 = ptrtoint ptr %wps_assoc_resp_ie to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %wps_assoc_resp_ie, align 4
  %p2p_beacon_ie = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 52
  %7 = ptrtoint ptr %p2p_beacon_ie to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %p2p_beacon_ie, align 4
  %p2p_probe_resp_ie = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 54
  %8 = ptrtoint ptr %p2p_probe_resp_ie to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %p2p_probe_resp_ie, align 4
  %acl_node_q = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3
  %9 = call ptr @memset(ptr %num_sta_non_erp, i32 0, i32 30)
  %10 = ptrtoint ptr %acl_node_q to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %acl_node_q, ptr %acl_node_q, align 4
  %prev.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %acl_node_q, ptr %prev.i, align 4
  %num = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 1
  %12 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %num, align 4
  %13 = ptrtoint ptr %acl_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %acl_list, align 4
  %arrayidx4 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 0
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %arrayidx4, ptr %arrayidx4, align 4
  %prev.i37 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx4, ptr %prev.i37, align 4
  %valid = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 0, i32 2
  %16 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %valid, align 2
  %arrayidx4.1 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %arrayidx4.1, ptr %arrayidx4.1, align 4
  %prev.i37.1 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i37.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx4.1, ptr %prev.i37.1, align 4
  %valid.1 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 1, i32 2
  %19 = ptrtoint ptr %valid.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %valid.1, align 2
  %arrayidx4.2 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 2
  %20 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %arrayidx4.2, ptr %arrayidx4.2, align 4
  %prev.i37.2 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 2, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i37.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx4.2, ptr %prev.i37.2, align 4
  %valid.2 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 2, i32 2
  %22 = ptrtoint ptr %valid.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %valid.2, align 2
  %arrayidx4.3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 3
  %23 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %arrayidx4.3, ptr %arrayidx4.3, align 4
  %prev.i37.3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 3, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i37.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx4.3, ptr %prev.i37.3, align 4
  %valid.3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 3, i32 2
  %25 = ptrtoint ptr %valid.3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %valid.3, align 2
  %arrayidx4.4 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 4
  %26 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %arrayidx4.4, ptr %arrayidx4.4, align 4
  %prev.i37.4 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 4, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i37.4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx4.4, ptr %prev.i37.4, align 4
  %valid.4 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 4, i32 2
  %28 = ptrtoint ptr %valid.4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %valid.4, align 2
  %arrayidx4.5 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 5
  %29 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %arrayidx4.5, ptr %arrayidx4.5, align 4
  %prev.i37.5 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 5, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i37.5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx4.5, ptr %prev.i37.5, align 4
  %valid.5 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 5, i32 2
  %31 = ptrtoint ptr %valid.5 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %valid.5, align 2
  %arrayidx4.6 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 6
  %32 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %arrayidx4.6, ptr %arrayidx4.6, align 4
  %prev.i37.6 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 6, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i37.6 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx4.6, ptr %prev.i37.6, align 4
  %valid.6 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 6, i32 2
  %34 = ptrtoint ptr %valid.6 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %valid.6, align 2
  %arrayidx4.7 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 7
  %35 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %arrayidx4.7, ptr %arrayidx4.7, align 4
  %prev.i37.7 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 7, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i37.7 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx4.7, ptr %prev.i37.7, align 4
  %valid.7 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 7, i32 2
  %37 = ptrtoint ptr %valid.7 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %valid.7, align 2
  %arrayidx4.8 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 8
  %38 = ptrtoint ptr %arrayidx4.8 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %arrayidx4.8, ptr %arrayidx4.8, align 4
  %prev.i37.8 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 8, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i37.8 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx4.8, ptr %prev.i37.8, align 4
  %valid.8 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 8, i32 2
  %40 = ptrtoint ptr %valid.8 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %valid.8, align 2
  %arrayidx4.9 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 9
  %41 = ptrtoint ptr %arrayidx4.9 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %arrayidx4.9, ptr %arrayidx4.9, align 4
  %prev.i37.9 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 9, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i37.9 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx4.9, ptr %prev.i37.9, align 4
  %valid.9 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 9, i32 2
  %43 = ptrtoint ptr %valid.9 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %valid.9, align 2
  %arrayidx4.10 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 10
  %44 = ptrtoint ptr %arrayidx4.10 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %arrayidx4.10, ptr %arrayidx4.10, align 4
  %prev.i37.10 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 10, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i37.10 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx4.10, ptr %prev.i37.10, align 4
  %valid.10 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 10, i32 2
  %46 = ptrtoint ptr %valid.10 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %valid.10, align 2
  %arrayidx4.11 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 11
  %47 = ptrtoint ptr %arrayidx4.11 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %arrayidx4.11, ptr %arrayidx4.11, align 4
  %prev.i37.11 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 11, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i37.11 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx4.11, ptr %prev.i37.11, align 4
  %valid.11 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 11, i32 2
  %49 = ptrtoint ptr %valid.11 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %valid.11, align 2
  %arrayidx4.12 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 12
  %50 = ptrtoint ptr %arrayidx4.12 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %arrayidx4.12, ptr %arrayidx4.12, align 4
  %prev.i37.12 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 12, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i37.12 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx4.12, ptr %prev.i37.12, align 4
  %valid.12 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 12, i32 2
  %52 = ptrtoint ptr %valid.12 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %valid.12, align 2
  %arrayidx4.13 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 13
  %53 = ptrtoint ptr %arrayidx4.13 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %arrayidx4.13, ptr %arrayidx4.13, align 4
  %prev.i37.13 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 13, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i37.13 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx4.13, ptr %prev.i37.13, align 4
  %valid.13 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 13, i32 2
  %55 = ptrtoint ptr %valid.13 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %valid.13, align 2
  %arrayidx4.14 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 14
  %56 = ptrtoint ptr %arrayidx4.14 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %arrayidx4.14, ptr %arrayidx4.14, align 4
  %prev.i37.14 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 14, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i37.14 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx4.14, ptr %prev.i37.14, align 4
  %valid.14 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 14, i32 2
  %58 = ptrtoint ptr %valid.14 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %valid.14, align 2
  %arrayidx4.15 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 15
  %59 = ptrtoint ptr %arrayidx4.15 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %arrayidx4.15, ptr %arrayidx4.15, align 4
  %prev.i37.15 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 15, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i37.15 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx4.15, ptr %prev.i37.15, align 4
  %valid.15 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 15, i32 2
  %61 = ptrtoint ptr %valid.15 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %valid.15, align 2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_mlme_ap_info(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17
  %update_bcn = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 63
  %0 = ptrtoint ptr %update_bcn to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %update_bcn, align 4
  %bstart_bss = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %1 = ptrtoint ptr %bstart_bss to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bstart_bss, align 8
  %call = tail call i32 @rtw_sta_flush(ptr noundef %padapter)
  %2 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mlmext_info, align 4
  tail call void @rtw_free_all_stainfo(ptr noundef %padapter) #8
  %call1 = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #8
  %sta_hash_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock) #8
  %call2 = tail call i32 @rtw_free_stainfo(ptr noundef %padapter, ptr noundef %call1) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_sta_flush(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %bc_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bc_addr) #8
  %0 = call ptr @memset(ptr %bc_addr, i32 255, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %1 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %2 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pnetdev, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef %3) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %4 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp4.not = icmp eq i32 %and, 3
  br i1 %cmp4.not, label %if.end6, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %asoc_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #8
  %asoc_list = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 10
  %6 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asoc_list, align 4
  %cmp7.not35 = icmp eq ptr %asoc_list, %7
  br i1 %cmp7.not35, label %if.end6.while.end_crit_edge, label %while.body.lr.ph

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end6
  %asoc_list_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 13
  br label %while.body

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %while.body.lr.ph
  %plist.036 = phi ptr [ %7, %while.body.lr.ph ], [ %9, %list_del_init.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %plist.036, i32 -2836
  %8 = ptrtoint ptr %plist.036 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plist.036, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plist.036) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %plist.036, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %plist.036 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %plist.036, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %plist.036 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %plist.036, ptr %plist.036, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %plist.036, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %plist.036, ptr %prev.i3.i, align 4
  %18 = ptrtoint ptr %asoc_list_cnt to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %asoc_list_cnt, align 4
  %dec = add i8 %19, -1
  store i8 %dec, ptr %asoc_list_cnt, align 4
  %call11 = tail call zeroext i8 @ap_free_sta(ptr noundef %padapter, ptr noundef %add.ptr, i1 noundef zeroext true, i16 noundef zeroext 3)
  %cmp7.not = icmp eq ptr %asoc_list, %9
  br i1 %cmp7.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %if.end6.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #8
  %call14 = call i32 @issue_deauth(ptr noundef %padapter, ptr noundef nonnull %bc_addr, i16 noundef zeroext 3) #8
  call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #8
  %20 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %asoc_list, align 4
  %cmp.not9.i = icmp eq ptr %asoc_list, %21
  br i1 %cmp.not9.i, label %while.end.associated_clients_update.exit_crit_edge, label %while.end.while.body.i_crit_edge

while.end.while.body.i_crit_edge:                 ; preds = %while.end
  br label %while.body.i

while.end.associated_clients_update.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %associated_clients_update.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.end.while.body.i_crit_edge
  %plist.010.i = phi ptr [ %23, %while.body.i.while.body.i_crit_edge ], [ %21, %while.end.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %plist.010.i, i32 -2836
  %22 = ptrtoint ptr %plist.010.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %plist.010.i, align 4
  call void @VCS_update(ptr noundef %padapter, ptr noundef %add.ptr.i) #8
  %cmp.not.i = icmp eq ptr %asoc_list, %23
  br i1 %cmp.not.i, label %while.body.i.associated_clients_update.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.associated_clients_update.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %associated_clients_update.exit

associated_clients_update.exit:                   ; preds = %while.body.i.associated_clients_update.exit_crit_edge, %while.end.associated_clients_update.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %associated_clients_update.exit, %do.end3.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bc_addr) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_all_stainfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_bcmc_stainfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @expire_timeout_chk(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %chk_alive_list = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %chk_alive_list) #8
  %auth_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 12
  %0 = call ptr @memset(ptr %chk_alive_list, i32 255, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %auth_list_lock) #8
  %auth_list = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 11
  %1 = ptrtoint ptr %auth_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %auth_list, align 4
  %cmp.not373 = icmp eq ptr %auth_list, %2
  br i1 %cmp.not373, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %auth_list_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 14
  %sta_hash_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %while.body.lr.ph
  %plist.0374 = phi ptr [ %2, %while.body.lr.ph ], [ %4, %if.end20.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %plist.0374, i32 -2844
  %3 = ptrtoint ptr %plist.0374 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %plist.0374, align 4
  %expire_to = getelementptr i8, ptr %plist.0374, i32 8
  %5 = ptrtoint ptr %expire_to to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %expire_to, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.not = icmp eq i32 %6, 0
  br i1 %cmp2.not, label %while.body.if.end20_crit_edge, label %if.then

while.body.if.end20_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then:                                          ; preds = %while.body
  %dec = add i32 %6, -1
  %7 = ptrtoint ptr %expire_to to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dec, ptr %expire_to, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp5 = icmp eq i32 %dec, 0
  br i1 %cmp5, label %if.then6, label %if.then.if.end20_crit_edge

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then6:                                         ; preds = %if.then
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plist.0374) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.list_del_init.exit_crit_edge

if.then6.list_del_init.exit_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %plist.0374, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %plist.0374 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %plist.0374, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then6.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %plist.0374 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %plist.0374, ptr %plist.0374, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %plist.0374, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %plist.0374, ptr %prev.i3.i, align 4
  %16 = ptrtoint ptr %auth_list_cnt to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %auth_list_cnt, align 1
  %dec8 = add i8 %17, -1
  store i8 %dec8, ptr %auth_list_cnt, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %18 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp9 = icmp ugt i32 %18, 4
  br i1 %cmp9, label %do.end, label %list_del_init.exit.do.end14_crit_edge

list_del_init.exit.do.end14_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

do.end:                                           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %hwaddr = getelementptr i8, ptr %plist.0374, i32 -2224
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %hwaddr) #11
  br label %do.end14

do.end14:                                         ; preds = %do.end, %list_del_init.exit.do.end14_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %auth_list_lock) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock) #8
  %call16 = tail call i32 @rtw_free_stainfo(ptr noundef %padapter, ptr noundef %add.ptr) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %auth_list_lock) #8
  br label %if.end20

if.end20:                                         ; preds = %do.end14, %if.then.if.end20_crit_edge, %while.body.if.end20_crit_edge
  %cmp.not = icmp eq ptr %auth_list, %4
  br i1 %cmp.not, label %if.end20.while.end_crit_edge, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end20.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %auth_list_lock) #8
  %asoc_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #8
  %asoc_list = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 10
  %19 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %asoc_list, align 4
  %cmp24.not376383 = icmp eq ptr %asoc_list, %20
  br i1 %cmp24.not376383, label %while.end.associated_clients_update.exit.sink.split_crit_edge, label %while.body25.lr.ph.lr.ph

while.end.associated_clients_update.exit.sink.split_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %associated_clients_update.exit.sink.split

while.body25.lr.ph.lr.ph:                         ; preds = %while.end
  %expire_to34 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 17
  %asoc_list_cnt98 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 13
  %free_xmitframe_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 9
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 44
  %tim_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  %active_keep_alive_check = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 29
  br label %while.body25.lr.ph

while.body25.lr.ph:                               ; preds = %cleanup.while.body25.lr.ph_crit_edge, %while.body25.lr.ph.lr.ph
  %plist.1.ph386 = phi ptr [ %20, %while.body25.lr.ph.lr.ph ], [ %22, %cleanup.while.body25.lr.ph_crit_edge ]
  %updated.0.ph385 = phi i8 [ 0, %while.body25.lr.ph.lr.ph ], [ %updated.0377, %cleanup.while.body25.lr.ph_crit_edge ]
  %chk_alive_num.0.ph384 = phi i8 [ 0, %while.body25.lr.ph.lr.ph ], [ %chk_alive_num.2, %cleanup.while.body25.lr.ph_crit_edge ]
  br label %while.body25

while.body25:                                     ; preds = %if.end130.while.body25_crit_edge, %while.body25.lr.ph
  %plist.1378 = phi ptr [ %plist.1.ph386, %while.body25.lr.ph ], [ %22, %if.end130.while.body25_crit_edge ]
  %updated.0377 = phi i8 [ %updated.0.ph385, %while.body25.lr.ph ], [ %updated.2, %if.end130.while.body25_crit_edge ]
  %add.ptr28 = getelementptr i8, ptr %plist.1378, i32 -2836
  %21 = ptrtoint ptr %plist.1378 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %plist.1378, align 4
  %last_rx_data_pkts.i = getelementptr i8, ptr %plist.1378, i32 -1972
  %23 = ptrtoint ptr %last_rx_data_pkts.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %last_rx_data_pkts.i, align 8
  %last_rx_ctrl_pkts.i = getelementptr i8, ptr %plist.1378, i32 -1980
  %25 = ptrtoint ptr %last_rx_ctrl_pkts.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %last_rx_ctrl_pkts.i, align 8
  %add.i = add i64 %26, %24
  %rx_data_pkts.i = getelementptr i8, ptr %plist.1378, i32 -2036
  %27 = ptrtoint ptr %rx_data_pkts.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rx_data_pkts.i, align 8
  %rx_ctrl_pkts.i = getelementptr i8, ptr %plist.1378, i32 -2044
  %29 = ptrtoint ptr %rx_ctrl_pkts.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %rx_ctrl_pkts.i, align 8
  %add4.i = add i64 %30, %28
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %add4.i)
  %cmp.i.not = icmp eq i64 %add.i, %add4.i
  %sta_stats.i = getelementptr i8, ptr %plist.1378, i32 -2092
  %31 = ptrtoint ptr %sta_stats.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %sta_stats.i, align 8
  %last_rx_mgnt_pkts.i = getelementptr i8, ptr %plist.1378, i32 -2028
  %33 = ptrtoint ptr %last_rx_mgnt_pkts.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %last_rx_mgnt_pkts.i, align 8
  %rx_beacon_pkts.i = getelementptr i8, ptr %plist.1378, i32 -2084
  %34 = ptrtoint ptr %rx_beacon_pkts.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %rx_beacon_pkts.i, align 8
  %last_rx_beacon_pkts.i = getelementptr i8, ptr %plist.1378, i32 -2020
  %36 = ptrtoint ptr %last_rx_beacon_pkts.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %last_rx_beacon_pkts.i, align 8
  %rx_probereq_pkts.i = getelementptr i8, ptr %plist.1378, i32 -2076
  %37 = ptrtoint ptr %rx_probereq_pkts.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %rx_probereq_pkts.i, align 8
  %last_rx_probereq_pkts.i = getelementptr i8, ptr %plist.1378, i32 -2012
  %39 = ptrtoint ptr %last_rx_probereq_pkts.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %last_rx_probereq_pkts.i, align 8
  %rx_probersp_pkts.i = getelementptr i8, ptr %plist.1378, i32 -2068
  %40 = ptrtoint ptr %rx_probersp_pkts.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rx_probersp_pkts.i, align 8
  %last_rx_probersp_pkts.i = getelementptr i8, ptr %plist.1378, i32 -2004
  %42 = ptrtoint ptr %last_rx_probersp_pkts.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %last_rx_probersp_pkts.i, align 8
  %rx_probersp_bm_pkts.i = getelementptr i8, ptr %plist.1378, i32 -2060
  %43 = ptrtoint ptr %rx_probersp_bm_pkts.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %rx_probersp_bm_pkts.i, align 8
  %last_rx_probersp_bm_pkts.i = getelementptr i8, ptr %plist.1378, i32 -1996
  %45 = ptrtoint ptr %last_rx_probersp_bm_pkts.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %last_rx_probersp_bm_pkts.i, align 8
  %rx_probersp_uo_pkts.i = getelementptr i8, ptr %plist.1378, i32 -2052
  %46 = ptrtoint ptr %rx_probersp_uo_pkts.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %rx_probersp_uo_pkts.i, align 8
  %last_rx_probersp_uo_pkts.i = getelementptr i8, ptr %plist.1378, i32 -1988
  %48 = ptrtoint ptr %last_rx_probersp_uo_pkts.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %last_rx_probersp_uo_pkts.i, align 8
  %49 = ptrtoint ptr %last_rx_ctrl_pkts.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %30, ptr %last_rx_ctrl_pkts.i, align 8
  %50 = ptrtoint ptr %last_rx_data_pkts.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %28, ptr %last_rx_data_pkts.i, align 8
  br i1 %cmp.i.not, label %lor.lhs.false, label %while.body25.if.then33_crit_edge

while.body25.if.then33_crit_edge:                 ; preds = %while.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

lor.lhs.false:                                    ; preds = %while.body25
  %expire_to31 = getelementptr i8, ptr %plist.1378, i32 16
  %51 = ptrtoint ptr %expire_to31 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %expire_to31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool32.not = icmp eq i32 %52, 0
  br i1 %tobool32.not, label %lor.lhs.false.if.then33_crit_edge, label %if.else

lor.lhs.false.if.then33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

if.then33:                                        ; preds = %lor.lhs.false.if.then33_crit_edge, %while.body25.if.then33_crit_edge
  %53 = ptrtoint ptr %expire_to34 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %expire_to34, align 4
  %expire_to35 = getelementptr i8, ptr %plist.1378, i32 16
  %55 = ptrtoint ptr %expire_to35 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %expire_to35, align 4
  %keep_alive_trycnt = getelementptr i8, ptr %plist.1378, i32 333
  %56 = ptrtoint ptr %keep_alive_trycnt to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %keep_alive_trycnt, align 1
  %under_exist_checking = getelementptr i8, ptr %plist.1378, i32 332
  %57 = ptrtoint ptr %under_exist_checking to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %under_exist_checking, align 8
  br label %if.end38

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %dec37 = add i32 %52, -1
  %58 = ptrtoint ptr %expire_to31 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %dec37, ptr %expire_to31, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then33
  %expire_to39 = getelementptr i8, ptr %plist.1378, i32 16
  %59 = ptrtoint ptr %expire_to39 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %expire_to39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp40 = icmp eq i32 %60, 0
  br i1 %cmp40, label %if.then42, label %if.else97

if.then42:                                        ; preds = %if.end38
  %61 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %62)
  %cmp44 = icmp eq i8 %62, 1
  br i1 %cmp44, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %expire_to39.le435 = getelementptr i8, ptr %plist.1378, i32 16
  %63 = ptrtoint ptr %expire_to34 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %expire_to34, align 4
  %65 = ptrtoint ptr %expire_to39.le435 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %expire_to39.le435, align 4
  br label %cleanup

if.end49:                                         ; preds = %if.then42
  %state = getelementptr i8, ptr %plist.1378, i32 -2232
  %66 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %state, align 4
  %68 = and i32 %67, 1028
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %68)
  %69 = icmp eq i32 %68, 4
  br i1 %69, label %if.then55, label %if.end66

if.then55:                                        ; preds = %if.end49
  %expire_to39.le = getelementptr i8, ptr %plist.1378, i32 16
  %70 = ptrtoint ptr %expire_to34 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %expire_to34, align 4
  %72 = ptrtoint ptr %expire_to39.le to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %expire_to39.le, align 4
  %or = or i32 %67, 1024
  %73 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or, ptr %state, align 4
  %aid = getelementptr i8, ptr %plist.1378, i32 -2228
  %74 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %aid, align 8
  %shl = shl nuw i32 1, %75
  %76 = ptrtoint ptr %tim_bitmap to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %tim_bitmap, align 2
  %78 = trunc i32 %shl to i16
  %conv61 = or i16 %77, %78
  store i16 %conv61, ptr %tim_bitmap, align 2
  tail call void @update_beacon(ptr noundef %padapter, i8 noundef zeroext 5, ptr noundef null, i8 noundef zeroext 0)
  %79 = ptrtoint ptr %active_keep_alive_check to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %active_keep_alive_check, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool62.not = icmp eq i8 %80, 0
  br i1 %tobool62.not, label %if.then55.cleanup_crit_edge, label %if.then55.if.then69_crit_edge

if.then55.if.then69_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end66:                                         ; preds = %if.end49
  %81 = ptrtoint ptr %active_keep_alive_check to i32
  call void @__asan_load1_noabort(i32 %81)
  %.pr = load i8, ptr %active_keep_alive_check, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool68.not = icmp eq i8 %.pr, 0
  br i1 %tobool68.not, label %if.end78, label %if.end66.if.then69_crit_edge

if.end66.if.then69_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69

if.then69:                                        ; preds = %if.end66.if.then69_crit_edge, %if.then55.if.then69_crit_edge
  %call70 = tail call i32 @rtw_stainfo_offset(ptr noundef %stapriv, ptr noundef %add.ptr28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call70)
  %82 = icmp ult i32 %call70, 32
  br i1 %82, label %if.then75, label %if.then69.cleanup_crit_edge

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then75:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  %conv76 = trunc i32 %call70 to i8
  %inc = add i8 %chk_alive_num.0.ph384, 1
  %idxprom = zext i8 %chk_alive_num.0.ph384 to i32
  %arrayidx = getelementptr [32 x i8], ptr %chk_alive_list, i32 0, i32 %idxprom
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv76, ptr %arrayidx, align 1
  br label %cleanup

if.end78:                                         ; preds = %if.end66
  %call.i.i346 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plist.1378) #8
  br i1 %call.i.i346, label %if.end.i.i349, label %if.end78.list_del_init.exit351_crit_edge

if.end78.list_del_init.exit351_crit_edge:         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit351

if.end.i.i349:                                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i347 = getelementptr inbounds %struct.list_head, ptr %plist.1378, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i.i347 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i347, align 4
  %86 = ptrtoint ptr %plist.1378 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %plist.1378, align 4
  %prev1.i.i.i348 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i348 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev1.i.i.i348, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %87, ptr %85, align 4
  br label %list_del_init.exit351

list_del_init.exit351:                            ; preds = %if.end.i.i349, %if.end78.list_del_init.exit351_crit_edge
  %90 = ptrtoint ptr %plist.1378 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %plist.1378, ptr %plist.1378, align 4
  %prev.i3.i350 = getelementptr inbounds %struct.list_head, ptr %plist.1378, i32 0, i32 1
  %91 = ptrtoint ptr %prev.i3.i350 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %plist.1378, ptr %prev.i3.i350, align 4
  %92 = ptrtoint ptr %asoc_list_cnt98 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %asoc_list_cnt98, align 4
  %dec80 = add i8 %93, -1
  store i8 %dec80, ptr %asoc_list_cnt98, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %94 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %94)
  %cmp82 = icmp ugt i32 %94, 4
  br i1 %cmp82, label %do.end87, label %list_del_init.exit351.cleanup.thread_crit_edge

list_del_init.exit351.cleanup.thread_crit_edge:   ; preds = %list_del_init.exit351
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

do.end87:                                         ; preds = %list_del_init.exit351
  call void @__sanitizer_cov_trace_pc() #10
  %hwaddr89 = getelementptr i8, ptr %plist.1378, i32 -2216
  %95 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %state, align 4
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %hwaddr89, i32 noundef %96) #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end87, %list_del_init.exit351.cleanup.thread_crit_edge
  %call96 = tail call zeroext i8 @ap_free_sta(ptr noundef %padapter, ptr noundef %add.ptr28, i1 noundef zeroext true, i16 noundef zeroext 3)
  br label %if.end130

cleanup:                                          ; preds = %if.then75, %if.then69.cleanup_crit_edge, %if.then55.cleanup_crit_edge, %if.then46
  %chk_alive_num.2 = phi i8 [ %chk_alive_num.0.ph384, %if.then46 ], [ %inc, %if.then75 ], [ %chk_alive_num.0.ph384, %if.then69.cleanup_crit_edge ], [ %chk_alive_num.0.ph384, %if.then55.cleanup_crit_edge ]
  %cmp24.not376 = icmp eq ptr %asoc_list, %22
  br i1 %cmp24.not376, label %cleanup.while.end131_crit_edge, label %cleanup.while.body25.lr.ph_crit_edge

cleanup.while.body25.lr.ph_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body25.lr.ph

cleanup.while.end131_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end131

if.else97:                                        ; preds = %if.end38
  %sleepq_len = getelementptr i8, ptr %plist.1378, i32 -2236
  %97 = ptrtoint ptr %sleepq_len to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sleepq_len, align 8
  %99 = ptrtoint ptr %asoc_list_cnt98 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %asoc_list_cnt98, align 4
  %conv99 = zext i8 %100 to i32
  %div.rhs.trunc = zext i8 %100 to i16
  %div362 = udiv i16 256, %div.rhs.trunc
  %div.zext = zext i16 %div362 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %div.zext)
  %cmp100 = icmp ugt i32 %98, %div.zext
  br i1 %cmp100, label %land.lhs.true102, label %if.else97.if.end130_crit_edge

if.else97.if.end130_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

land.lhs.true102:                                 ; preds = %if.else97
  %101 = ptrtoint ptr %free_xmitframe_cnt to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %free_xmitframe_cnt, align 8
  %div106344 = lshr i32 %div.zext, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %div106344)
  %cmp107 = icmp ult i32 %102, %div106344
  br i1 %cmp107, label %do.body110, label %land.lhs.true102.if.end130_crit_edge

land.lhs.true102.if.end130_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

do.body110:                                       ; preds = %land.lhs.true102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %103 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %103)
  %cmp111 = icmp ugt i32 %103, 4
  br i1 %cmp111, label %do.end116, label %do.body110.do.end128_crit_edge

do.body110.do.end128_crit_edge:                   ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end128

do.end116:                                        ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #10
  %hwaddr118 = getelementptr i8, ptr %plist.1378, i32 -2216
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, ptr noundef %hwaddr118, i32 noundef %98, i32 noundef %102, i32 noundef %conv99) #11
  br label %do.end128

do.end128:                                        ; preds = %do.end116, %do.body110.do.end128_crit_edge
  tail call void @wakeup_sta_to_xmit(ptr noundef %padapter, ptr noundef %add.ptr28) #8
  br label %if.end130

if.end130:                                        ; preds = %do.end128, %land.lhs.true102.if.end130_crit_edge, %if.else97.if.end130_crit_edge, %cleanup.thread
  %updated.2 = phi i8 [ %updated.0377, %do.end128 ], [ %updated.0377, %land.lhs.true102.if.end130_crit_edge ], [ %updated.0377, %if.else97.if.end130_crit_edge ], [ %call96, %cleanup.thread ]
  %cmp24.not = icmp eq ptr %asoc_list, %22
  br i1 %cmp24.not, label %if.end130.while.end131_crit_edge, label %if.end130.while.body25_crit_edge

if.end130.while.body25_crit_edge:                 ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body25

if.end130.while.end131_crit_edge:                 ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end131

while.end131:                                     ; preds = %if.end130.while.end131_crit_edge, %cleanup.while.end131_crit_edge
  %chk_alive_num.0.ph.lcssa = phi i8 [ %chk_alive_num.0.ph384, %if.end130.while.end131_crit_edge ], [ %chk_alive_num.2, %cleanup.while.end131_crit_edge ]
  %updated.0.lcssa = phi i8 [ %updated.2, %if.end130.while.end131_crit_edge ], [ %updated.0377, %cleanup.while.end131_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %chk_alive_num.0.ph.lcssa)
  %tobool133.not = icmp eq i8 %chk_alive_num.0.ph.lcssa, 0
  br i1 %tobool133.not, label %while.end131.if.end240_crit_edge, label %if.then134

while.end131.if.end240_crit_edge:                 ; preds = %while.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end240

if.then134:                                       ; preds = %while.end131
  %call137 = tail call zeroext i8 @rtw_get_oper_ch(ptr noundef %padapter) #8
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 4
  %104 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %cur_channel, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %call137, i8 %105)
  %cmp140.not = icmp eq i8 %call137, %105
  br i1 %cmp140.not, label %if.then134.if.end145_crit_edge, label %if.then142

if.then134.if.end145_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then142:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #10
  %call143 = tail call zeroext i8 @rtw_get_oper_ch(ptr noundef %padapter) #8
  %106 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %cur_channel, align 2
  tail call void @SelectChannel(ptr noundef %padapter, i8 noundef zeroext %107) #8
  br label %if.end145

if.end145:                                        ; preds = %if.then142, %if.then134.if.end145_crit_edge
  %backup_oper_channel.0 = phi i8 [ %call143, %if.then142 ], [ 0, %if.then134.if.end145_crit_edge ]
  %asoc_list_cnt227 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 13
  %expire_to183 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 17
  %umax = zext i8 %chk_alive_num.0.ph.lcssa to i32
  br label %for.body

for.body:                                         ; preds = %cleanup231.for.body_crit_edge, %if.end145
  %updated.3390 = phi i8 [ %updated.0.lcssa, %if.end145 ], [ %updated.4, %cleanup231.for.body_crit_edge ]
  %i.0389 = phi i32 [ 0, %if.end145 ], [ %inc234, %cleanup231.for.body_crit_edge ]
  %arrayidx149 = getelementptr [32 x i8], ptr %chk_alive_list, i32 0, i32 %i.0389
  %108 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx149, align 1
  %conv150 = zext i8 %109 to i32
  %call151 = tail call ptr @rtw_get_stainfo_by_offset(ptr noundef %stapriv, i32 noundef %conv150) #8
  %state152 = getelementptr inbounds %struct.sta_info, ptr %call151, i32 0, i32 7
  %110 = ptrtoint ptr %state152 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %state152, align 4
  %and153 = and i32 %111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  %hwaddr160 = getelementptr inbounds %struct.sta_info, ptr %call151, i32 0, i32 11
  %. = select i1 %tobool154.not, i32 3, i32 1
  %call162 = tail call i32 @issue_nulldata(ptr noundef %padapter, ptr noundef %hwaddr160, i32 noundef 0, i32 noundef %., i32 noundef 50) #8
  %keep_alive_trycnt164 = getelementptr inbounds %struct.sta_info, ptr %call151, i32 0, i32 76
  %112 = ptrtoint ptr %keep_alive_trycnt164 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %keep_alive_trycnt164, align 1
  %inc165 = add i8 %113, 1
  store i8 %inc165, ptr %keep_alive_trycnt164, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call162)
  %cmp166 = icmp eq i32 %call162, 1
  br i1 %cmp166, label %do.body169, label %if.else186

do.body169:                                       ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %114 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %114)
  %cmp170 = icmp ugt i32 %114, 4
  br i1 %cmp170, label %do.end175, label %do.body169.do.end182_crit_edge

do.body169.do.end182_crit_edge:                   ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end182

do.end175:                                        ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #10
  %hwaddr177 = getelementptr inbounds %struct.sta_info, ptr %call151, i32 0, i32 11
  %call179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %hwaddr177) #11
  br label %do.end182

do.end182:                                        ; preds = %do.end175, %do.body169.do.end182_crit_edge
  %115 = ptrtoint ptr %expire_to183 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %expire_to183, align 4
  %expire_to184 = getelementptr inbounds %struct.sta_info, ptr %call151, i32 0, i32 36
  %117 = ptrtoint ptr %expire_to184 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %expire_to184, align 4
  %118 = ptrtoint ptr %keep_alive_trycnt164 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %keep_alive_trycnt164, align 1
  br label %cleanup231

if.else186:                                       ; preds = %for.body
  %conv188 = zext i8 %inc165 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %inc165)
  %cmp189 = icmp ult i8 %inc165, 4
  br i1 %cmp189, label %do.body192, label %if.end208

do.body192:                                       ; preds = %if.else186
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %119 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %119)
  %cmp193 = icmp ugt i32 %119, 4
  br i1 %cmp193, label %do.end198, label %do.body192.do.end205_crit_edge

do.body192.do.end205_crit_edge:                   ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end205

do.end198:                                        ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #10
  %call202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv188) #11
  br label %do.end205

do.end205:                                        ; preds = %do.end198, %do.body192.do.end205_crit_edge
  %expire_to206 = getelementptr inbounds %struct.sta_info, ptr %call151, i32 0, i32 36
  %120 = ptrtoint ptr %expire_to206 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1, ptr %expire_to206, align 4
  br label %cleanup231

if.end208:                                        ; preds = %if.else186
  %121 = ptrtoint ptr %keep_alive_trycnt164 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %keep_alive_trycnt164, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %122 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %122)
  %cmp211 = icmp ugt i32 %122, 4
  br i1 %cmp211, label %do.end216, label %if.end208.do.end224_crit_edge

if.end208.do.end224_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end224

do.end216:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #10
  %hwaddr218 = getelementptr inbounds %struct.sta_info, ptr %call151, i32 0, i32 11
  %123 = ptrtoint ptr %state152 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %state152, align 4
  %call221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %hwaddr218, i32 noundef %124) #11
  br label %do.end224

do.end224:                                        ; preds = %do.end216, %if.end208.do.end224_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #8
  %asoc_list226 = getelementptr inbounds %struct.sta_info, ptr %call151, i32 0, i32 34
  %call.i.i352 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %asoc_list226) #8
  br i1 %call.i.i352, label %if.end.i.i355, label %do.end224.list_del_init.exit357_crit_edge

do.end224.list_del_init.exit357_crit_edge:        ; preds = %do.end224
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit357

if.end.i.i355:                                    ; preds = %do.end224
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i353 = getelementptr inbounds %struct.sta_info, ptr %call151, i32 0, i32 34, i32 1
  %125 = ptrtoint ptr %prev.i.i353 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %prev.i.i353, align 4
  %127 = ptrtoint ptr %asoc_list226 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %asoc_list226, align 4
  %prev1.i.i.i354 = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %prev1.i.i.i354 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %126, ptr %prev1.i.i.i354, align 4
  %130 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %128, ptr %126, align 4
  br label %list_del_init.exit357

list_del_init.exit357:                            ; preds = %if.end.i.i355, %do.end224.list_del_init.exit357_crit_edge
  %131 = ptrtoint ptr %asoc_list226 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %asoc_list226, ptr %asoc_list226, align 4
  %prev.i3.i356 = getelementptr inbounds %struct.sta_info, ptr %call151, i32 0, i32 34, i32 1
  %132 = ptrtoint ptr %prev.i3.i356 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %asoc_list226, ptr %prev.i3.i356, align 4
  %133 = ptrtoint ptr %asoc_list_cnt227 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %asoc_list_cnt227, align 4
  %dec228 = add i8 %134, -1
  store i8 %dec228, ptr %asoc_list_cnt227, align 4
  %call229 = tail call zeroext i8 @ap_free_sta(ptr noundef %padapter, ptr noundef %call151, i1 noundef zeroext true, i16 noundef zeroext 3)
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #8
  br label %cleanup231

cleanup231:                                       ; preds = %list_del_init.exit357, %do.end205, %do.end182
  %updated.4 = phi i8 [ %updated.3390, %do.end182 ], [ %updated.3390, %do.end205 ], [ %call229, %list_del_init.exit357 ]
  %inc234 = add nuw nsw i32 %i.0389, 1
  %exitcond.not = icmp eq i32 %inc234, %umax
  br i1 %exitcond.not, label %for.end, label %cleanup231.for.body_crit_edge

cleanup231.for.body_crit_edge:                    ; preds = %cleanup231
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %backup_oper_channel.0)
  %cmp236.not = icmp eq i8 %backup_oper_channel.0, 0
  br i1 %cmp236.not, label %for.end.if.end240_crit_edge, label %if.then238

for.end.if.end240_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end240

if.then238:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @SelectChannel(ptr noundef %padapter, i8 noundef zeroext %backup_oper_channel.0) #8
  br label %if.end240

if.end240:                                        ; preds = %if.then238, %for.end.if.end240_crit_edge, %while.end131.if.end240_crit_edge
  %updated.5 = phi i8 [ %updated.0.lcssa, %while.end131.if.end240_crit_edge ], [ %updated.4, %if.then238 ], [ %updated.4, %for.end.if.end240_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %updated.5)
  %tobool.not.i = icmp eq i8 %updated.5, 0
  br i1 %tobool.not.i, label %if.end240.associated_clients_update.exit_crit_edge, label %if.then.i

if.end240.associated_clients_update.exit_crit_edge: ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #10
  br label %associated_clients_update.exit

if.then.i:                                        ; preds = %if.end240
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #8
  %135 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %asoc_list, align 4
  %cmp.not9.i = icmp eq ptr %asoc_list, %136
  br i1 %cmp.not9.i, label %if.then.i.associated_clients_update.exit.sink.split_crit_edge, label %if.then.i.while.body.i_crit_edge

if.then.i.while.body.i_crit_edge:                 ; preds = %if.then.i
  br label %while.body.i

if.then.i.associated_clients_update.exit.sink.split_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %associated_clients_update.exit.sink.split

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.i.while.body.i_crit_edge
  %plist.010.i = phi ptr [ %138, %while.body.i.while.body.i_crit_edge ], [ %136, %if.then.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %plist.010.i, i32 -2836
  %137 = ptrtoint ptr %plist.010.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %plist.010.i, align 4
  tail call void @VCS_update(ptr noundef %padapter, ptr noundef %add.ptr.i) #8
  %cmp.not.i = icmp eq ptr %asoc_list, %138
  br i1 %cmp.not.i, label %while.body.i.associated_clients_update.exit.sink.split_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.associated_clients_update.exit.sink.split_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %associated_clients_update.exit.sink.split

associated_clients_update.exit.sink.split:        ; preds = %while.body.i.associated_clients_update.exit.sink.split_crit_edge, %if.then.i.associated_clients_update.exit.sink.split_crit_edge, %while.end.associated_clients_update.exit.sink.split_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #8
  br label %associated_clients_update.exit

associated_clients_update.exit:                   ; preds = %associated_clients_update.exit.sink.split, %if.end240.associated_clients_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %chk_alive_list) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_beacon(ptr noundef %padapter, i8 noundef zeroext %ie_id, ptr nocapture noundef readonly %oui, i8 noundef zeroext %tx) local_unnamed_addr #0 align 64 {
entry:
  %wps_ielen.i.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  %tmp_len.i = alloca i32, align 4
  %tim_ielen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %padapter, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bstart_bss = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %0 = ptrtoint ptr %bstart_bss to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bstart_bss, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %bcn_update_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 62
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock) #8
  %2 = zext i8 %ie_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %ie_id, label %if.end3.sw.epilog_crit_edge [
    i8 -1, label %sw.bb
    i8 5, label %sw.bb4
    i8 42, label %sw.bb5
    i8 45, label %sw.bb6
    i8 48, label %sw.bb7
    i8 61, label %sw.bb8
    i8 -35, label %sw.bb9
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %3 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp ugt i32 %3, 4
  br i1 %cmp.i, label %do.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.51) #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end3
  %IEs.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 38, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_len.i) #8
  %4 = ptrtoint ptr %tmp_len.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp_len.i, align 4, !annotation !148
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tim_ielen.i) #8
  %5 = ptrtoint ptr %tim_ielen.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %tim_ielen.i, align 4, !annotation !148
  %tim_bitmap.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  %6 = ptrtoint ptr %tim_bitmap.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tim_bitmap.i, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #8
  %tim_bitmap_le.sroa.0.0.extract.shift.i = lshr i16 %8, 8
  %tim_bitmap_le.sroa.0.0.extract.trunc.i = trunc i16 %tim_bitmap_le.sroa.0.0.extract.shift.i to i8
  %tim_bitmap_le.sroa.6.0.extract.trunc.i = trunc i16 %8 to i8
  %add.ptr.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 38, i32 12, i32 12
  %IELength.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 38, i32 11
  %9 = ptrtoint ptr %IELength.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %IELength.i, align 1
  %sub.i = add i32 %10, -12
  %call.i27 = call ptr @rtw_get_ie(ptr noundef %add.ptr.i, i32 noundef 5, ptr noundef nonnull %tim_ielen.i, i32 noundef %sub.i) #8
  %tobool.not.i = icmp eq ptr %call.i27, null
  br i1 %tobool.not.i, label %sw.bb4.if.else.i_crit_edge, label %land.lhs.true.i

sw.bb4.if.else.i_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb4
  %11 = ptrtoint ptr %tim_ielen.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tim_ielen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %12, 2
  %13 = ptrtoint ptr %tim_ielen.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add.i, ptr %tim_ielen.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %call.i27, i32 %add.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call.i27 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %IEs.i to i32
  %14 = ptrtoint ptr %IELength.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %IELength.i, align 1
  %add.neg.i = add i32 %sub.ptr.rhs.cast.i, -2
  %16 = add i32 %12, %sub.ptr.lhs.cast.i
  %17 = sub i32 %add.neg.i, %16
  %sub4.i = add i32 %17, %15
  br label %if.end21.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb4.if.else.i_crit_edge
  %18 = ptrtoint ptr %tim_ielen.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %tim_ielen.i, align 4
  %Ssid.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 38, i32 3
  %19 = ptrtoint ptr %Ssid.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %Ssid.i, align 1
  %add6.i = add i32 %20, 14
  %21 = ptrtoint ptr %IELength.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %IELength.i, align 1
  %sub9.i = add i32 %22, -12
  %call10.i = call ptr @rtw_get_ie(ptr noundef %add.ptr.i, i32 noundef 1, ptr noundef nonnull %tmp_len.i, i32 noundef %sub9.i) #8
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.else.i.if.end.i_crit_edge, label %if.then12.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %tmp_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tmp_len.i, align 4
  %add13.i = add i32 %20, 16
  %add14.i = add i32 %add13.i, %24
  br label %if.end.i

if.end.i:                                         ; preds = %if.then12.i, %if.else.i.if.end.i_crit_edge
  %offset.0.i = phi i32 [ %add14.i, %if.then12.i ], [ %add6.i, %if.else.i.if.end.i_crit_edge ]
  %add15.i = add i32 %offset.0.i, 3
  %add.ptr16.i = getelementptr i8, ptr %IEs.i, i32 %add15.i
  %25 = ptrtoint ptr %IELength.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %IELength.i, align 1
  %27 = ptrtoint ptr %tim_ielen.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tim_ielen.i, align 4
  %29 = add i32 %26, -3
  %30 = add i32 %offset.0.i, %28
  %sub19.i = sub i32 %29, %30
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end.i, %if.then.i
  %dst_ie.0.i = phi ptr [ %call.i27, %if.then.i ], [ %add.ptr16.i, %if.end.i ]
  %premainder_ie.0.i = phi ptr [ %add.ptr1.i, %if.then.i ], [ %add.ptr16.i, %if.end.i ]
  %remainder_ielen.0.i = phi i32 [ %sub4.i, %if.then.i ], [ %sub19.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remainder_ielen.0.i)
  %cmp22.not.i = icmp eq i32 %remainder_ielen.0.i, 0
  br i1 %cmp22.not.i, label %if.end21.i.if.end30.i_crit_edge, label %if.end8.i.i

if.end21.i.if.end30.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.end8.i.i:                                      ; preds = %if.end21.i
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %remainder_ielen.0.i, i32 noundef 2592) #12
  %tobool25.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool25.not.i, label %if.end8.i.i.if.end30.i_crit_edge, label %land.lhs.true26.i

if.end8.i.i.if.end30.i_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

land.lhs.true26.i:                                ; preds = %if.end8.i.i
  %tobool27.not.i = icmp eq ptr %premainder_ie.0.i, null
  br i1 %tobool27.not.i, label %land.lhs.true26.i.if.end30.i_crit_edge, label %if.then28.i

land.lhs.true26.i.if.end30.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then28.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = call ptr @memcpy(ptr %call9.i.i, ptr %premainder_ie.0.i, i32 %remainder_ielen.0.i)
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %land.lhs.true26.i.if.end30.i_crit_edge, %if.end8.i.i.if.end30.i_crit_edge, %if.end21.i.if.end30.i_crit_edge
  %pbackup_remainder_ie.0.i = phi ptr [ %call9.i.i, %if.then28.i ], [ %call9.i.i, %land.lhs.true26.i.if.end30.i_crit_edge ], [ null, %if.end8.i.i.if.end30.i_crit_edge ], [ null, %if.end21.i.if.end30.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %dst_ie.0.i, i32 1
  %32 = ptrtoint ptr %dst_ie.0.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 5, ptr %dst_ie.0.i, align 1
  %33 = ptrtoint ptr %tim_bitmap.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %tim_bitmap.i, align 2
  %conv.i = zext i16 %34 to i32
  %and.i = and i32 %conv.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool32.not.i = icmp eq i32 %and.i, 0
  %and36.i = and i32 %conv.i, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %or.cond.i = or i1 %tobool32.not.i, %tobool37.not.i
  %storemerge.i = select i1 %or.cond.i, i32 4, i32 5
  %35 = ptrtoint ptr %tim_ielen.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %storemerge.i, ptr %tim_ielen.i, align 4
  %conv41.i = trunc i32 %storemerge.i to i8
  %incdec.ptr42.i = getelementptr i8, ptr %dst_ie.0.i, i32 2
  %36 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv41.i, ptr %incdec.ptr.i, align 1
  %incdec.ptr43.i = getelementptr i8, ptr %dst_ie.0.i, i32 3
  %37 = ptrtoint ptr %incdec.ptr42.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %incdec.ptr42.i, align 1
  %incdec.ptr44.i = getelementptr i8, ptr %dst_ie.0.i, i32 4
  %38 = ptrtoint ptr %incdec.ptr43.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %incdec.ptr43.i, align 1
  %39 = ptrtoint ptr %tim_bitmap.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %tim_bitmap.i, align 2
  %41 = trunc i16 %40 to i8
  %42 = and i8 %41, 1
  %dst_ie.1.i = getelementptr i8, ptr %dst_ie.0.i, i32 5
  %43 = ptrtoint ptr %incdec.ptr44.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %incdec.ptr44.i, align 1
  %44 = load i32, ptr %tim_ielen.i, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %44, label %if.end30.i.if.end64.i_crit_edge [
    i32 4, label %if.then56.i
    i32 5, label %if.then61.i
  ]

if.end30.i.if.end64.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

if.then56.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr57.i = getelementptr i8, ptr %dst_ie.0.i, i32 6
  %46 = ptrtoint ptr %dst_ie.1.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %tim_bitmap_le.sroa.0.0.extract.trunc.i, ptr %dst_ie.1.i, align 1
  br label %if.end64.i

if.then61.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %dst_ie.1.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %tim_bitmap_le.sroa.0.0.extract.trunc.i, ptr %dst_ie.1.i, align 1
  %tim_bitmap_le.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %dst_ie.0.i, i32 6
  %48 = ptrtoint ptr %tim_bitmap_le.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %tim_bitmap_le.sroa.6.0.extract.trunc.i, ptr %tim_bitmap_le.sroa.6.0..sroa_idx.i, align 1
  %add.ptr62.i = getelementptr i8, ptr %dst_ie.0.i, i32 7
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then61.i, %if.then56.i, %if.end30.i.if.end64.i_crit_edge
  %dst_ie.2.i = phi ptr [ %incdec.ptr57.i, %if.then56.i ], [ %add.ptr62.i, %if.then61.i ], [ %dst_ie.1.i, %if.end30.i.if.end64.i_crit_edge ]
  %tobool65.not.i = icmp eq ptr %pbackup_remainder_ie.0.i, null
  br i1 %tobool65.not.i, label %if.end64.i.update_BCNTIM.exit_crit_edge, label %if.then66.i

if.end64.i.update_BCNTIM.exit_crit_edge:          ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_BCNTIM.exit

if.then66.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = call ptr @memcpy(ptr %dst_ie.2.i, ptr %pbackup_remainder_ie.0.i, i32 %remainder_ielen.0.i)
  call void @kfree(ptr noundef nonnull %pbackup_remainder_ie.0.i) #8
  br label %update_BCNTIM.exit

update_BCNTIM.exit:                               ; preds = %if.then66.i, %if.end64.i.update_BCNTIM.exit_crit_edge
  %sub.ptr.lhs.cast68.i = ptrtoint ptr %dst_ie.2.i to i32
  %sub.ptr.rhs.cast69.i = ptrtoint ptr %IEs.i to i32
  %sub.ptr.sub70.i = sub i32 %remainder_ielen.0.i, %sub.ptr.rhs.cast69.i
  %add71.i = add i32 %sub.ptr.sub70.i, %sub.ptr.lhs.cast68.i
  %50 = ptrtoint ptr %IELength.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %add71.i, ptr %IELength.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tim_ielen.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_len.i) #8
  %call73.i = call zeroext i8 @set_tx_beacon_cmd(ptr noundef nonnull %padapter) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #8
  %51 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %len.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %52 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %cmp.i28 = icmp ugt i32 %52, 4
  br i1 %cmp.i28, label %do.end.i31, label %sw.bb5.do.end3.i_crit_edge

sw.bb5.do.end3.i_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i31:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %ERP_enable.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 18
  %53 = ptrtoint ptr %ERP_enable.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ERP_enable.i, align 2
  %conv.i29 = zext i8 %54 to i32
  %call.i30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef %conv.i29) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i31, %sw.bb5.do.end3.i_crit_edge
  %ERP_enable4.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 18
  %55 = ptrtoint ptr %ERP_enable4.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ERP_enable4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i32 = icmp eq i8 %56, 0
  br i1 %tobool.not.i32, label %do.end3.i.update_bcn_erpinfo_ie.exit_crit_edge, label %if.end6.i

do.end3.i.update_bcn_erpinfo_ie.exit_crit_edge:   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_bcn_erpinfo_ie.exit

if.end6.i:                                        ; preds = %do.end3.i
  %add.ptr.i33 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 38, i32 12, i32 12
  %IELength.i34 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 38, i32 11
  %57 = ptrtoint ptr %IELength.i34 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %IELength.i34, align 1
  %sub.i35 = add i32 %58, -12
  %call7.i = call ptr @rtw_get_ie(ptr noundef %add.ptr.i33, i32 noundef 42, ptr noundef nonnull %len.i, i32 noundef %sub.i35) #8
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end6.i.update_bcn_erpinfo_ie.exit_crit_edge, label %land.lhs.true.i36

if.end6.i.update_bcn_erpinfo_ie.exit_crit_edge:   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_bcn_erpinfo_ie.exit

land.lhs.true.i36:                                ; preds = %if.end6.i
  %59 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp9.not.i = icmp eq i32 %60, 0
  br i1 %cmp9.not.i, label %land.lhs.true.i36.update_bcn_erpinfo_ie.exit_crit_edge, label %if.then11.i

land.lhs.true.i36.update_bcn_erpinfo_ie.exit_crit_edge: ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_bcn_erpinfo_ie.exit

if.then11.i:                                      ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #10
  %num_sta_non_erp.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 38
  %61 = ptrtoint ptr %num_sta_non_erp.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_sta_non_erp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp12.i = icmp eq i32 %62, 1
  %data.i = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %call7.i, i32 0, i32 2
  %63 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %data.i, align 1
  %65 = and i8 %64, -4
  %masksel.i = select i1 %cmp12.i, i8 3, i8 0
  %.sink.i = or i8 %65, %masksel.i
  store i8 %.sink.i, ptr %data.i, align 1
  %num_sta_no_short_preamble.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 40
  %66 = ptrtoint ptr %num_sta_no_short_preamble.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_sta_no_short_preamble.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp22.i = icmp sgt i32 %67, 0
  %68 = and i8 %.sink.i, -5
  %masksel56.i = select i1 %cmp22.i, i8 4, i8 0
  %.sink55.i = or i8 %masksel56.i, %68
  %69 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %.sink55.i, ptr %data.i, align 1
  call void @ERP_IE_handler(ptr noundef nonnull %padapter, ptr noundef nonnull %call7.i) #8
  br label %update_bcn_erpinfo_ie.exit

update_bcn_erpinfo_ie.exit:                       ; preds = %if.then11.i, %land.lhs.true.i36.update_bcn_erpinfo_ie.exit_crit_edge, %if.end6.i.update_bcn_erpinfo_ie.exit_crit_edge, %do.end3.i.update_bcn_erpinfo_ie.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %70 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %70)
  %cmp.i37 = icmp ugt i32 %70, 4
  br i1 %cmp.i37, label %do.end.i39, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i39:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %call.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.54) #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %71 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %71)
  %cmp.i40 = icmp ugt i32 %71, 4
  br i1 %cmp.i40, label %do.end.i42, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i42:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %call.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.55) #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %72 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %cmp.i43 = icmp ugt i32 %72, 4
  br i1 %cmp.i43, label %do.end.i45, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i45:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %call.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.56) #11
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %73 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %73)
  %cmp.i46 = icmp ugt i32 %73, 4
  br i1 %cmp.i46, label %do.end.i48, label %sw.bb9.do.end2.i_crit_edge

sw.bb9.do.end2.i_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2.i

do.end.i48:                                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  %call.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.57) #11
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i48, %sw.bb9.do.end2.i_crit_edge
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @RTW_WPA_OUI, ptr noundef dereferenceable(4) %oui, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i49 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i49, label %if.then4.i, label %if.else.i51

if.then4.i:                                       ; preds = %do.end2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %74 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %74)
  %cmp.i.i50 = icmp ugt i32 %74, 4
  br i1 %cmp.i.i50, label %do.end.i.i, label %if.then4.i.sw.epilog_crit_edge

if.then4.i.sw.epilog_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.61) #11
  br label %sw.epilog

if.else.i51:                                      ; preds = %do.end2.i
  %bcmp36.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @WMM_OUI, ptr noundef dereferenceable(4) %oui, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp36.i)
  %tobool6.not.i = icmp eq i32 %bcmp36.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else8.i

if.then7.i:                                       ; preds = %if.else.i51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %75 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %75)
  %cmp.i39.i = icmp ugt i32 %75, 4
  br i1 %cmp.i39.i, label %do.end.i41.i, label %if.then7.i.sw.epilog_crit_edge

if.then7.i.sw.epilog_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i41.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.62) #11
  br label %sw.epilog

if.else8.i:                                       ; preds = %if.else.i51
  %bcmp37.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @WPS_OUI, ptr noundef dereferenceable(4) %oui, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp37.i)
  %tobool10.not.i = icmp eq i32 %bcmp37.i, 0
  br i1 %tobool10.not.i, label %if.then11.i52, label %if.else12.i

if.then11.i52:                                    ; preds = %if.else8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wps_ielen.i.i) #8
  %76 = ptrtoint ptr %wps_ielen.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %wps_ielen.i.i, align 4
  %IEs.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 38, i32 12
  %IELength.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 38, i32 11
  %77 = ptrtoint ptr %IELength.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %IELength.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %79 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %79)
  %cmp.i42.i = icmp ugt i32 %79, 4
  br i1 %cmp.i42.i, label %do.end.i44.i, label %if.then11.i52.do.end3.i.i_crit_edge

if.then11.i52.do.end3.i.i_crit_edge:              ; preds = %if.then11.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i

do.end.i44.i:                                     ; preds = %if.then11.i52
  call void @__sanitizer_cov_trace_pc() #10
  %call.i43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.63) #11
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i44.i, %if.then11.i52.do.end3.i.i_crit_edge
  %add.ptr.i.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 38, i32 12, i32 12
  %sub.i.i = add i32 %78, -12
  %call4.i.i = call ptr @rtw_get_wps_ie(ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef null, ptr noundef nonnull %wps_ielen.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool.not.i.i, label %do.end3.i.i.update_bcn_wps_ie.exit.i_crit_edge, label %lor.lhs.false.i.i

do.end3.i.i.update_bcn_wps_ie.exit.i_crit_edge:   ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_bcn_wps_ie.exit.i

lor.lhs.false.i.i:                                ; preds = %do.end3.i.i
  %80 = ptrtoint ptr %wps_ielen.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %wps_ielen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp5.i.i = icmp eq i32 %81, 0
  br i1 %cmp5.i.i, label %lor.lhs.false.i.i.update_bcn_wps_ie.exit.i_crit_edge, label %if.end7.i.i

lor.lhs.false.i.i.update_bcn_wps_ie.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_bcn_wps_ie.exit.i

if.end7.i.i:                                      ; preds = %lor.lhs.false.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call4.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %IEs.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.ptr8.i.i = getelementptr i8, ptr %call4.i.i, i32 %81
  %82 = add i32 %81, %sub.ptr.sub.i.i
  %sub10.i.i = sub i32 %78, %82
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %82)
  %cmp11.not.i.i = icmp eq i32 %78, %82
  br i1 %cmp11.not.i.i, label %if.end7.i.i.if.end17.i.i_crit_edge, label %if.end8.i.i.i

if.end7.i.i.if.end17.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

if.end8.i.i.i:                                    ; preds = %if.end7.i.i
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %sub10.i.i, i32 noundef 2592) #12
  %tobool14.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool14.not.i.i, label %if.end8.i.i.i.if.end17.i.i_crit_edge, label %if.then15.i.i

if.end8.i.i.i.if.end17.i.i_crit_edge:             ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

if.then15.i.i:                                    ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = call ptr @memcpy(ptr %call9.i.i.i, ptr %add.ptr8.i.i, i32 %sub10.i.i)
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then15.i.i, %if.end8.i.i.i.if.end17.i.i_crit_edge, %if.end7.i.i.if.end17.i.i_crit_edge
  %pbackup_remainder_ie.0.i.i = phi ptr [ %call9.i.i.i, %if.then15.i.i ], [ null, %if.end8.i.i.i.if.end17.i.i_crit_edge ], [ null, %if.end7.i.i.if.end17.i.i_crit_edge ]
  %wps_beacon_ie.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 46
  %84 = ptrtoint ptr %wps_beacon_ie.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wps_beacon_ie.i.i, align 4
  %tobool18.not.i.i = icmp eq ptr %85, null
  br i1 %tobool18.not.i.i, label %if.end17.i.i.exit.i.i_crit_edge, label %if.end20.i.i

if.end17.i.i.exit.i.i_crit_edge:                  ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i.i

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %arrayidx.i.i = getelementptr i8, ptr %85, i32 1
  %86 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %87 to i32
  %88 = ptrtoint ptr %wps_ielen.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv.i.i, ptr %wps_ielen.i.i, align 4
  %add.i.i = add i32 %sub.ptr.sub.i.i, 2
  %add21.i.i = add i32 %add.i.i, %sub10.i.i
  %add22.i.i = add i32 %add21.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 769, i32 %add22.i.i)
  %cmp23.i.i = icmp ult i32 %add22.i.i, 769
  br i1 %cmp23.i.i, label %if.then25.i.i, label %if.end20.i.i.exit.i.i_crit_edge

if.end20.i.i.exit.i.i_crit_edge:                  ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i.i

if.then25.i.i:                                    ; preds = %if.end20.i.i
  %add26.i.i = add nuw nsw i32 %conv.i.i, 2
  %89 = call ptr @memcpy(ptr %call4.i.i, ptr %85, i32 %add26.i.i)
  %tobool29.not.i.i = icmp eq ptr %pbackup_remainder_ie.0.i.i, null
  br i1 %tobool29.not.i.i, label %if.then25.i.i.if.end31.i.i_crit_edge, label %if.then30.i.i

if.then25.i.i.if.end31.i.i_crit_edge:             ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i.i

if.then30.i.i:                                    ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %wps_ielen.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %wps_ielen.i.i, align 4
  %add27.i.i = add i32 %91, 2
  %add.ptr28.i.i = getelementptr i8, ptr %call4.i.i, i32 %add27.i.i
  %92 = call ptr @memcpy(ptr %add.ptr28.i.i, ptr %pbackup_remainder_ie.0.i.i, i32 %sub10.i.i)
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then30.i.i, %if.then25.i.i.if.end31.i.i_crit_edge
  %93 = ptrtoint ptr %wps_ielen.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %wps_ielen.i.i, align 4
  %add34.i.i = add i32 %94, %add21.i.i
  %95 = ptrtoint ptr %IELength.i.i to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %add34.i.i, ptr %IELength.i.i, align 1
  br label %exit.i.i

exit.i.i:                                         ; preds = %if.end31.i.i, %if.end20.i.i.exit.i.i_crit_edge, %if.end17.i.i.exit.i.i_crit_edge
  call void @kfree(ptr noundef %pbackup_remainder_ie.0.i.i) #8
  br label %update_bcn_wps_ie.exit.i

update_bcn_wps_ie.exit.i:                         ; preds = %exit.i.i, %lor.lhs.false.i.i.update_bcn_wps_ie.exit.i_crit_edge, %do.end3.i.i.update_bcn_wps_ie.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wps_ielen.i.i) #8
  br label %sw.epilog

if.else12.i:                                      ; preds = %if.else8.i
  %bcmp38.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @P2P_OUI, ptr noundef dereferenceable(4) %oui, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp38.i)
  %tobool14.not.i = icmp eq i32 %bcmp38.i, 0
  br i1 %tobool14.not.i, label %if.else12.i.sw.epilog_crit_edge, label %do.body17.i

if.else12.i.sw.epilog_crit_edge:                  ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body17.i:                                      ; preds = %if.else12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %96 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %96)
  %cmp18.i = icmp ugt i32 %96, 4
  br i1 %cmp18.i, label %do.end21.i, label %do.body17.i.sw.epilog_crit_edge

do.body17.i.sw.epilog_crit_edge:                  ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end21.i:                                       ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #10
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end21.i, %do.body17.i.sw.epilog_crit_edge, %if.else12.i.sw.epilog_crit_edge, %update_bcn_wps_ie.exit.i, %do.end.i41.i, %if.then7.i.sw.epilog_crit_edge, %do.end.i.i, %if.then4.i.sw.epilog_crit_edge, %do.end.i45, %sw.bb8.sw.epilog_crit_edge, %do.end.i42, %sw.bb7.sw.epilog_crit_edge, %do.end.i39, %sw.bb6.sw.epilog_crit_edge, %update_bcn_erpinfo_ie.exit, %update_BCNTIM.exit, %do.end.i, %sw.bb.sw.epilog_crit_edge, %if.end3.sw.epilog_crit_edge
  %update_bcn = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 63
  %97 = ptrtoint ptr %update_bcn to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %update_bcn, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tx)
  %tobool11.not = icmp eq i8 %tx, 0
  br i1 %tobool11.not, label %sw.epilog.cleanup_crit_edge, label %if.then12

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call = call zeroext i8 @set_tx_beacon_cmd(ptr noundef nonnull %padapter) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_stainfo_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @ap_free_sta(ptr noundef %padapter, ptr noundef %psta, i1 noundef zeroext %active, i16 noundef zeroext %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %psta, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 11
  %call = tail call i32 @send_delba(ptr noundef %padapter, i8 noundef zeroext 0, ptr noundef %hwaddr) #8
  %call3 = tail call i32 @send_delba(ptr noundef %padapter, i8 noundef zeroext 1, ptr noundef %hwaddr) #8
  %agg_enable_bitmap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33, i32 8
  %0 = ptrtoint ptr %agg_enable_bitmap to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %agg_enable_bitmap, align 1
  %candidate_tid_bitmap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33, i32 9
  %1 = ptrtoint ptr %candidate_tid_bitmap to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %candidate_tid_bitmap, align 8
  br i1 %active, label %if.then6, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @issue_deauth(ptr noundef %padapter, ptr noundef %hwaddr, i16 noundef zeroext %reason) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 9
  %2 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_id, align 4
  %4 = trunc i32 %3 to i8
  %conv = add i8 %4, 3
  %call11 = tail call zeroext i8 @rtw_clearstakey_cmd(ptr noundef %padapter, ptr noundef nonnull %psta, i8 noundef zeroext %conv, i8 noundef zeroext 1) #8
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull %psta) #8
  %state = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 7
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %and = and i32 %6, -2
  store i32 %and, ptr %state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull %psta) #8
  tail call void @rtw_indicate_sta_disassoc_event(ptr noundef %padapter, ptr noundef nonnull %psta) #8
  tail call void @report_del_sta_event(ptr noundef %padapter, ptr noundef %hwaddr, i16 noundef zeroext %reason) #8
  %call15 = tail call zeroext i8 @bss_cap_update_on_sta_leave(ptr noundef %padapter, ptr noundef nonnull %psta)
  %sta_hash_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock) #8
  %call16 = tail call i32 @rtw_free_stainfo(ptr noundef %padapter, ptr noundef nonnull %psta) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %call15, %if.end10 ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_sta_to_xmit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_get_oper_ch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @SelectChannel(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo_by_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @issue_nulldata(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @associated_clients_update(ptr noundef %padapter, i8 noundef zeroext %updated) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %updated)
  %tobool.not = icmp eq i8 %updated, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %asoc_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #8
  %asoc_list = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 10
  %0 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc_list, align 4
  %cmp.not9 = icmp eq ptr %asoc_list, %1
  br i1 %cmp.not9, label %if.then.while.end_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then.while.body_crit_edge
  %plist.010 = phi ptr [ %3, %while.body.while.body_crit_edge ], [ %1, %if.then.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %plist.010, i32 -2836
  %2 = ptrtoint ptr %plist.010 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plist.010, align 4
  tail call void @VCS_update(ptr noundef %padapter, ptr noundef %add.ptr) #8
  %cmp.not = icmp eq ptr %asoc_list, %3
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #8
  br label %if.end

if.end:                                           ; preds = %while.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @add_RATid(ptr noundef %padapter, ptr noundef %psta, i8 noundef zeroext %rssi_level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %psta, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %htpriv = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33
  %state = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.0168 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %tx_ra_bitmap.0167 = phi i32 [ %tx_ra_bitmap.1, %for.inc.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 19, i32 %i.0168
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.then5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = and i8 %3, 127
  %call = tail call i32 @rtw_get_bit_value_from_ieee_value(i8 noundef zeroext %4) #8
  %or = or i32 %call, %tx_ra_bitmap.0167
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %for.body.for.inc_crit_edge
  %tx_ra_bitmap.1 = phi i32 [ %or, %if.then5 ], [ %tx_ra_bitmap.0167, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0168, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %5 = ptrtoint ptr %htpriv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %for.end.if.end29_crit_edge, label %for.cond13.preheader

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

for.cond13.preheader:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %mcs = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33, i32 10, i32 2
  %7 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mcs, align 1
  %conv19 = zext i8 %8 to i32
  %and20 = shl nuw nsw i32 %conv19, 12
  %9 = and i32 %and20, 4096
  %tx_ra_bitmap.3 = or i32 %9, %tx_ra_bitmap.1
  %and20.1 = shl nuw nsw i32 %conv19, 12
  %10 = and i32 %and20.1, 8192
  %tx_ra_bitmap.3.1 = or i32 %10, %tx_ra_bitmap.3
  %and20.2 = shl nuw nsw i32 %conv19, 12
  %11 = and i32 %and20.2, 16384
  %tx_ra_bitmap.3.2 = or i32 %11, %tx_ra_bitmap.3.1
  %and20.3 = shl nuw nsw i32 %conv19, 12
  %12 = and i32 %and20.3, 32768
  %tx_ra_bitmap.3.3 = or i32 %12, %tx_ra_bitmap.3.2
  %and20.4 = shl nuw nsw i32 %conv19, 12
  %13 = and i32 %and20.4, 65536
  %tx_ra_bitmap.3.4 = or i32 %13, %tx_ra_bitmap.3.3
  %and20.5 = shl nuw nsw i32 %conv19, 12
  %14 = and i32 %and20.5, 131072
  %tx_ra_bitmap.3.5 = or i32 %14, %tx_ra_bitmap.3.4
  %and20.6 = shl nuw nsw i32 %conv19, 12
  %15 = and i32 %and20.6, 262144
  %tx_ra_bitmap.3.6 = or i32 %15, %tx_ra_bitmap.3.5
  %and20.7 = shl nuw nsw i32 %conv19, 12
  %16 = and i32 %and20.7, 524288
  %tx_ra_bitmap.3.7 = or i32 %16, %tx_ra_bitmap.3.6
  %sgi = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33, i32 7
  %17 = ptrtoint ptr %sgi to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sgi, align 2
  br label %if.end29

if.end29:                                         ; preds = %for.cond13.preheader, %for.end.if.end29_crit_edge
  %shortGIrate.0 = phi i8 [ %18, %for.cond13.preheader ], [ 0, %for.end.if.end29_crit_edge ]
  %tx_ra_bitmap.4 = phi i32 [ %tx_ra_bitmap.3.7, %for.cond13.preheader ], [ %tx_ra_bitmap.1, %for.end.if.end29_crit_edge ]
  %DSConfig = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 6, i32 7, i32 3
  %19 = ptrtoint ptr %DSConfig to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %DSConfig, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %20)
  %cmp30 = icmp ugt i32 %20, 14
  br i1 %cmp30, label %if.end29.if.end56_crit_edge, label %if.else36

if.end29.if.end56_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.else36:                                        ; preds = %if.end29
  %and37 = and i32 %tx_ra_bitmap.4, 268431360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else43, label %if.else36.if.end56_crit_edge

if.else36.if.end56_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.else43:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  %and44 = and i32 %tx_ra_bitmap.4, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %. = select i1 %tobool45.not, i8 1, i8 3
  br label %if.end56

if.end56:                                         ; preds = %if.else43, %if.else36.if.end56_crit_edge, %if.end29.if.end56_crit_edge
  %sta_band.0 = phi i8 [ 0, %if.end29.if.end56_crit_edge ], [ 11, %if.else36.if.end56_crit_edge ], [ %., %if.else43 ]
  %wireless_mode = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 28
  %21 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %sta_band.0, ptr %wireless_mode, align 4
  %call57 = tail call zeroext i8 @networktype_to_raid(i8 noundef zeroext %sta_band.0) #8
  %and58 = and i32 %tx_ra_bitmap.4, 268435455
  %call59 = tail call zeroext i8 @get_highest_rate_idx(i32 noundef %and58) #8
  %22 = and i8 %call59, 63
  %aid = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 8
  %23 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %aid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %24)
  %cmp62 = icmp ult i32 %24, 32
  br i1 %cmp62, label %if.then64, label %do.body99

if.then64:                                        ; preds = %if.end56
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 9
  %25 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mac_id, align 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %shortGIrate.0)
  %tobool70.not = icmp eq i8 %shortGIrate.0, 0
  %spec.select.v = select i1 %tobool70.not, i8 -128, i8 -96
  %spec.select = or i8 %28, %spec.select.v
  %conv76 = zext i8 %call57 to i32
  %shl77 = shl i32 %conv76, 28
  %or79 = or i32 %shl77, %tx_ra_bitmap.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %29 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp80 = icmp ugt i32 %29, 4
  br i1 %cmp80, label %do.end, label %if.then64.do.end90_crit_edge

if.then64.do.end90_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end90

do.end:                                           ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  %conv86 = zext i8 %spec.select to i32
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %26, i32 noundef %conv76, i32 noundef %or79, i32 noundef %conv86) #11
  br label %do.end90

do.end90:                                         ; preds = %do.end, %if.then64.do.end90_crit_edge
  tail call void @rtl8188e_Add_RateATid(ptr noundef %padapter, i32 noundef %or79, i8 noundef zeroext %spec.select, i8 noundef zeroext %rssi_level) #8
  %or93 = or i8 %22, 64
  %spec.select165 = select i1 %tobool70.not, i8 %22, i8 %or93
  %raid95 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 25
  %30 = ptrtoint ptr %raid95 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call57, ptr %raid95, align 2
  %init_rate97 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 26
  %31 = ptrtoint ptr %init_rate97 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %spec.select165, ptr %init_rate97, align 1
  br label %cleanup

do.body99:                                        ; preds = %if.end56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %32 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp100 = icmp ugt i32 %32, 4
  br i1 %cmp100, label %do.end105, label %do.body99.cleanup_crit_edge

do.body99.cleanup_crit_edge:                      ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end105:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #10
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %24) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end105, %do.body99.cleanup_crit_edge, %do.end90, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_bit_value_from_ieee_value(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @networktype_to_raid(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @get_highest_rate_idx(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_Add_RateATid(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_bmc_sta(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body47, label %if.then

if.then:                                          ; preds = %entry
  %aid = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %aid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %aid, align 8
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 9
  %1 = ptrtoint ptr %mac_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %mac_id, align 4
  %qos_option = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %qos_option to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %qos_option, align 8
  %htpriv = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 33
  %3 = ptrtoint ptr %htpriv to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %htpriv, align 8
  %ieee8021x_blocked = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 12
  %4 = ptrtoint ptr %ieee8021x_blocked to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ieee8021x_blocked, align 4
  %sta_stats = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 29
  %5 = call ptr @memset(ptr %sta_stats, i32 0, i32 168)
  %SupportedRates = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 6, i32 9
  %call2 = tail call i32 @rtw_get_rateset_len(ptr noundef %SupportedRates) #8
  %call4 = tail call i32 @rtw_check_network_type(ptr noundef %SupportedRates, i32 noundef %call2, i32 noundef 1) #8
  %bssrateset = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 19
  %6 = call ptr @memcpy(ptr %bssrateset, ptr %SupportedRates, i32 %call2)
  %bssratelen = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 20
  %7 = ptrtoint ptr %bssratelen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2, ptr %bssratelen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp99 = icmp sgt i32 %call2, 0
  br i1 %cmp99, label %if.then.for.body_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %tx_ra_bitmap.0101 = phi i32 [ %tx_ra_bitmap.1, %for.inc.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %i.0100 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sta_info, ptr %call, i32 0, i32 19, i32 %i.0100
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.then9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = and i8 %9, 127
  %call14 = tail call i32 @rtw_get_bit_value_from_ieee_value(i8 noundef zeroext %10) #8
  %or = or i32 %call14, %tx_ra_bitmap.0101
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %for.body.for.inc_crit_edge
  %tx_ra_bitmap.1 = phi i32 [ %or, %if.then9 ], [ %tx_ra_bitmap.0101, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, %call2
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  %tx_ra_bitmap.0.lcssa = phi i32 [ 0, %if.then.for.end_crit_edge ], [ %tx_ra_bitmap.1, %for.inc.for.end_crit_edge ]
  %DSConfig = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 6, i32 7, i32 3
  %11 = ptrtoint ptr %DSConfig to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %DSConfig, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %12)
  %cmp15 = icmp ugt i32 %12, 14
  %tx_ra_bitmap.0. = select i1 %cmp15, i32 %tx_ra_bitmap.0.lcssa, i32 15
  %not.cmp15 = xor i1 %cmp15, true
  %. = zext i1 %not.cmp15 to i8
  %call19 = tail call zeroext i8 @networktype_to_raid(i8 noundef zeroext %.) #8
  %and20 = and i32 %tx_ra_bitmap.0., 268435455
  %call21 = tail call zeroext i8 @get_highest_rate_idx(i32 noundef %and20) #8
  %13 = and i8 %call21, 63
  tail call void @rtl8188e_SetHalODMVar(ptr noundef %padapter, ptr noundef nonnull %call, i1 noundef zeroext true) #8
  %14 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac_id, align 4
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 31
  %conv29 = or i8 %17, -128
  %conv30 = zext i8 %call19 to i32
  %shl = shl i32 %conv30, 28
  %or32 = or i32 %shl, %tx_ra_bitmap.0.
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %18 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp33 = icmp ugt i32 %18, 4
  br i1 %cmp33, label %do.end, label %for.end.do.end41_crit_edge

for.end.do.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv37 = zext i8 %conv29 to i32
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %or32, i32 noundef %conv37) #11
  br label %do.end41

do.end41:                                         ; preds = %do.end, %for.end.do.end41_crit_edge
  tail call void @rtl8188e_Add_RateATid(ptr noundef %padapter, i32 noundef %or32, i8 noundef zeroext %conv29, i8 noundef zeroext 0) #8
  %raid42 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 25
  %19 = ptrtoint ptr %raid42 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call19, ptr %raid42, align 2
  %init_rate44 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 26
  %20 = ptrtoint ptr %init_rate44 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %13, ptr %init_rate44, align 1
  tail call void @rtw_sta_media_status_rpt(ptr noundef %padapter, ptr noundef nonnull %call, i32 noundef 1) #8
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull %call) #8
  %state = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 7
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull %call) #8
  br label %if.end59

do.body47:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %22 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp48 = icmp ugt i32 %22, 4
  br i1 %cmp48, label %do.end53, label %do.body47.if.end59_crit_edge

do.body47.if.end59_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.end53:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  br label %if.end59

if.end59:                                         ; preds = %do.end53, %do.body47.if.end59_crit_edge, %do.end41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_rateset_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_check_network_type(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_SetHalODMVar(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sta_media_status_rpt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_sta_info_apmode(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %htpriv1 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33
  %aid = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 8
  %0 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aid, align 8
  %add = add i32 %1, 1
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 9
  %2 = ptrtoint ptr %mac_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %mac_id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %3 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  tail call void @rtl8188e_SetHalODMVar(ptr noundef %padapter, ptr noundef %psta, i1 noundef zeroext true) #8
  %4 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %securitypriv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp5 = icmp eq i32 %5, 2
  %spec.select = zext i1 %cmp5 to i32
  %6 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %6, align 4
  tail call void @VCS_update(ptr noundef %padapter, ptr noundef %psta) #8
  %8 = ptrtoint ptr %htpriv1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %htpriv1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.else25, label %if.then9

if.then9:                                         ; preds = %do.end4
  %ampdu_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26, i32 1
  %10 = ptrtoint ptr %ampdu_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ampdu_enable, align 4
  %ampdu_enable10 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33, i32 1
  %12 = ptrtoint ptr %ampdu_enable10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ampdu_enable10, align 4
  %ht_cap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33, i32 10
  %13 = ptrtoint ptr %ht_cap to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %ht_cap, align 1
  %ht_cap11 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26, i32 10
  %15 = ptrtoint ptr %ht_cap11 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %ht_cap11, align 1
  %17 = and i16 %16, %14
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %and = zext i16 %18 to i32
  %and14 = and i32 %and, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then9.if.end17_crit_edge, label %if.then16

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then16:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %sgi = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33, i32 7
  %19 = ptrtoint ptr %sgi to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %sgi, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then9.if.end17_crit_edge
  %and21 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end17.if.end24_crit_edge, label %if.then23

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %cur_bwmode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 5
  %20 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cur_bwmode, align 1
  %bwmode = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33, i32 5
  %22 = ptrtoint ptr %bwmode to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %bwmode, align 4
  %cur_ch_offset = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 6
  %23 = ptrtoint ptr %cur_ch_offset to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cur_ch_offset, align 8
  %ch_offset = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33, i32 6
  %25 = ptrtoint ptr %ch_offset to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %ch_offset, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end17.if.end24_crit_edge
  %qos_option = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 10
  %26 = ptrtoint ptr %qos_option to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %qos_option, align 8
  br label %if.end30

if.else25:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %ampdu_enable26 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33, i32 1
  %27 = ptrtoint ptr %ampdu_enable26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ampdu_enable26, align 4
  %sgi27 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33, i32 7
  %28 = ptrtoint ptr %sgi27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %sgi27, align 2
  %bwmode28 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33, i32 5
  %29 = ptrtoint ptr %bwmode28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %bwmode28, align 4
  %ch_offset29 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33, i32 6
  %30 = ptrtoint ptr %ch_offset29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %ch_offset29, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.else25, %if.end24
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 11
  %call31 = tail call i32 @send_delba(ptr noundef %padapter, i8 noundef zeroext 0, ptr noundef %hwaddr) #8
  %call34 = tail call i32 @send_delba(ptr noundef %padapter, i8 noundef zeroext 1, ptr noundef %hwaddr) #8
  %agg_enable_bitmap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33, i32 8
  %31 = ptrtoint ptr %agg_enable_bitmap to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %agg_enable_bitmap, align 1
  %candidate_tid_bitmap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33, i32 9
  %32 = ptrtoint ptr %candidate_tid_bitmap to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %candidate_tid_bitmap, align 4
  %sta_stats = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 29
  %33 = call ptr @memset(ptr %sta_stats, i32 0, i32 168)
  tail call void @_raw_spin_lock_bh(ptr noundef %psta) #8
  %state = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 7
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state, align 4
  %or = or i32 %35, 1
  store i32 %or, ptr %state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %psta) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @VCS_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_delba(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @set_tx_beacon_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bss_cap_update_on_sta_join(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 41
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %no_short_preamble_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 52
  %2 = ptrtoint ptr %no_short_preamble_set to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %no_short_preamble_set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end26_crit_edge

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then2:                                         ; preds = %if.then
  %4 = ptrtoint ptr %no_short_preamble_set to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %no_short_preamble_set, align 1
  %num_sta_no_short_preamble = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 40
  %5 = ptrtoint ptr %num_sta_no_short_preamble to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_sta_no_short_preamble, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %num_sta_no_short_preamble, align 4
  %cur_wireless_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %7 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cur_wireless_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp ugt i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6 = icmp eq i32 %6, 0
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.then8, label %if.then2.if.end26_crit_edge

if.then2.if.end26_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then8:                                         ; preds = %if.then2
  %tobool.not.i = icmp eq ptr %padapter, null
  br i1 %tobool.not.i, label %if.then8.if.end26_crit_edge, label %if.end.i

if.then8.if.end26_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end.i:                                         ; preds = %if.then8
  %bstart_bss.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %9 = ptrtoint ptr %bstart_bss.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bstart_bss.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not.i = icmp eq i8 %10, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end26_crit_edge, label %if.end3.i

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end3.i:                                        ; preds = %if.end.i
  %bcn_update_lock.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 62
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %11 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.i.i = icmp ugt i32 %11, 4
  br i1 %cmp.i.i, label %if.end3.i.if.end26.sink.split.sink.split_crit_edge, label %if.end3.i.if.end26.sink.split_crit_edge

if.end3.i.if.end26.sink.split_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.sink.split

if.end3.i.if.end26.sink.split.sink.split_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.sink.split.sink.split

if.else:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.else.if.end26_crit_edge, label %if.then12

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then12:                                        ; preds = %if.else
  %12 = ptrtoint ptr %no_short_preamble_set to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %no_short_preamble_set, align 1
  %num_sta_no_short_preamble14 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 40
  %13 = ptrtoint ptr %num_sta_no_short_preamble14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_sta_no_short_preamble14, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %num_sta_no_short_preamble14, align 4
  %cur_wireless_mode15 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %15 = ptrtoint ptr %cur_wireless_mode15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cur_wireless_mode15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp17 = icmp ugt i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp21 = icmp eq i32 %dec, 0
  %or.cond272 = select i1 %cmp17, i1 %cmp21, i1 false
  br i1 %or.cond272, label %if.then23, label %if.then12.if.end26_crit_edge

if.then12.if.end26_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then23:                                        ; preds = %if.then12
  %tobool.not.i275 = icmp eq ptr %padapter, null
  br i1 %tobool.not.i275, label %if.then23.if.end26_crit_edge, label %if.end.i278

if.then23.if.end26_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end.i278:                                      ; preds = %if.then23
  %bstart_bss.i276 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %17 = ptrtoint ptr %bstart_bss.i276 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bstart_bss.i276, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i277 = icmp eq i8 %18, 0
  br i1 %tobool1.not.i277, label %if.end.i278.if.end26_crit_edge, label %if.end3.i280

if.end.i278.if.end26_crit_edge:                   ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end3.i280:                                     ; preds = %if.end.i278
  %bcn_update_lock.i279 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 62
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock.i279) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %19 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp.i.i281 = icmp ugt i32 %19, 4
  br i1 %cmp.i.i281, label %if.end3.i280.if.end26.sink.split.sink.split_crit_edge, label %if.end3.i280.if.end26.sink.split_crit_edge

if.end3.i280.if.end26.sink.split_crit_edge:       ; preds = %if.end3.i280
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.sink.split

if.end3.i280.if.end26.sink.split.sink.split_crit_edge: ; preds = %if.end3.i280
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.sink.split.sink.split

if.end26.sink.split.sink.split:                   ; preds = %if.end3.i280.if.end26.sink.split.sink.split_crit_edge, %if.end3.i.if.end26.sink.split.sink.split_crit_edge
  %bcn_update_lock.i279.sink.ph = phi ptr [ %bcn_update_lock.i, %if.end3.i.if.end26.sink.split.sink.split_crit_edge ], [ %bcn_update_lock.i279, %if.end3.i280.if.end26.sink.split.sink.split_crit_edge ]
  %call.i.i282 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.51) #11
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.end26.sink.split.sink.split, %if.end3.i280.if.end26.sink.split_crit_edge, %if.end3.i.if.end26.sink.split_crit_edge
  %bcn_update_lock.i279.sink = phi ptr [ %bcn_update_lock.i, %if.end3.i.if.end26.sink.split_crit_edge ], [ %bcn_update_lock.i279, %if.end3.i280.if.end26.sink.split_crit_edge ], [ %bcn_update_lock.i279.sink.ph, %if.end26.sink.split.sink.split ]
  %update_bcn.i284 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 63
  %20 = ptrtoint ptr %update_bcn.i284 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %update_bcn.i284, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock.i279.sink) #8
  %call.i286 = tail call zeroext i8 @set_tx_beacon_cmd(ptr noundef nonnull %padapter) #8
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.end.i278.if.end26_crit_edge, %if.then23.if.end26_crit_edge, %if.then12.if.end26_crit_edge, %if.else.if.end26_crit_edge, %if.end.i.if.end26_crit_edge, %if.then8.if.end26_crit_edge, %if.then2.if.end26_crit_edge, %if.then.if.end26_crit_edge
  %beacon_updated.0 = phi i8 [ 0, %if.then12.if.end26_crit_edge ], [ 0, %if.else.if.end26_crit_edge ], [ 0, %if.then.if.end26_crit_edge ], [ 0, %if.then2.if.end26_crit_edge ], [ 1, %if.then8.if.end26_crit_edge ], [ 1, %if.end.i.if.end26_crit_edge ], [ 1, %if.then23.if.end26_crit_edge ], [ 1, %if.end.i278.if.end26_crit_edge ], [ 1, %if.end26.sink.split ]
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %tobool29.not = icmp sgt i32 %22, -1
  %nonerp_set42 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 50
  %23 = ptrtoint ptr %nonerp_set42 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nonerp_set42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool43.not = icmp eq i8 %24, 0
  br i1 %tobool29.not, label %if.else41, label %if.then30

if.then30:                                        ; preds = %if.end26
  br i1 %tobool43.not, label %if.then32, label %if.then30.if.end54_crit_edge

if.then30.if.end54_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then32:                                        ; preds = %if.then30
  %25 = ptrtoint ptr %nonerp_set42 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %nonerp_set42, align 1
  %num_sta_non_erp = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 38
  %26 = ptrtoint ptr %num_sta_non_erp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_sta_non_erp, align 4
  %inc34 = add i32 %27, 1
  store i32 %inc34, ptr %num_sta_non_erp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp36 = icmp eq i32 %27, 0
  br i1 %cmp36, label %if.then32.if.end54.sink.split_crit_edge, label %if.then32.if.end54_crit_edge

if.then32.if.end54_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then32.if.end54.sink.split_crit_edge:          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.sink.split

if.else41:                                        ; preds = %if.end26
  br i1 %tobool43.not, label %if.else41.if.end54_crit_edge, label %if.then44

if.else41.if.end54_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then44:                                        ; preds = %if.else41
  %28 = ptrtoint ptr %nonerp_set42 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %nonerp_set42, align 1
  %num_sta_non_erp46 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 38
  %29 = ptrtoint ptr %num_sta_non_erp46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_sta_non_erp46, align 4
  %dec47 = add i32 %30, -1
  store i32 %dec47, ptr %num_sta_non_erp46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec47)
  %cmp49 = icmp eq i32 %dec47, 0
  br i1 %cmp49, label %if.then44.if.end54.sink.split_crit_edge, label %if.then44.if.end54_crit_edge

if.then44.if.end54_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then44.if.end54.sink.split_crit_edge:          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.sink.split

if.end54.sink.split:                              ; preds = %if.then44.if.end54.sink.split_crit_edge, %if.then32.if.end54.sink.split_crit_edge
  tail call void @update_beacon(ptr noundef %padapter, i8 noundef zeroext 42, ptr noundef null, i8 noundef zeroext 1)
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %if.then44.if.end54_crit_edge, %if.else41.if.end54_crit_edge, %if.then32.if.end54_crit_edge, %if.then30.if.end54_crit_edge
  %beacon_updated.1 = phi i8 [ %beacon_updated.0, %if.then30.if.end54_crit_edge ], [ %beacon_updated.0, %if.then32.if.end54_crit_edge ], [ %beacon_updated.0, %if.then44.if.end54_crit_edge ], [ %beacon_updated.0, %if.else41.if.end54_crit_edge ], [ 1, %if.end54.sink.split ]
  %capability = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 40
  %31 = ptrtoint ptr %capability to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %capability, align 8
  %33 = and i16 %32, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool57.not = icmp eq i16 %33, 0
  %no_short_slot_time_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 51
  %34 = ptrtoint ptr %no_short_slot_time_set to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %no_short_slot_time_set, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool59.not = icmp eq i8 %35, 0
  br i1 %tobool57.not, label %if.then58, label %if.else74

if.then58:                                        ; preds = %if.end54
  br i1 %tobool59.not, label %if.then60, label %if.then58.if.end92_crit_edge

if.then58.if.end92_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then60:                                        ; preds = %if.then58
  %36 = ptrtoint ptr %no_short_slot_time_set to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %no_short_slot_time_set, align 2
  %num_sta_no_short_slot_time = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 39
  %37 = ptrtoint ptr %num_sta_no_short_slot_time to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_sta_no_short_slot_time, align 4
  %inc62 = add i32 %38, 1
  store i32 %inc62, ptr %num_sta_no_short_slot_time, align 4
  %cur_wireless_mode63 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %39 = ptrtoint ptr %cur_wireless_mode63 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cur_wireless_mode63, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp65 = icmp ugt i8 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp69 = icmp eq i32 %38, 0
  %or.cond273 = select i1 %cmp65, i1 %cmp69, i1 false
  br i1 %or.cond273, label %if.then71, label %if.then60.if.end92_crit_edge

if.then60.if.end92_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then71:                                        ; preds = %if.then60
  %tobool.not.i288 = icmp eq ptr %padapter, null
  br i1 %tobool.not.i288, label %if.then71.if.end92_crit_edge, label %if.end.i291

if.then71.if.end92_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.end.i291:                                      ; preds = %if.then71
  %bstart_bss.i289 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %41 = ptrtoint ptr %bstart_bss.i289 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bstart_bss.i289, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool1.not.i290 = icmp eq i8 %42, 0
  br i1 %tobool1.not.i290, label %if.end.i291.if.end92_crit_edge, label %if.end3.i293

if.end.i291.if.end92_crit_edge:                   ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.end3.i293:                                     ; preds = %if.end.i291
  %bcn_update_lock.i292 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 62
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock.i292) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %43 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp.i.i294 = icmp ugt i32 %43, 4
  br i1 %cmp.i.i294, label %if.end3.i293.if.end92.sink.split.sink.split_crit_edge, label %if.end3.i293.if.end92.sink.split_crit_edge

if.end3.i293.if.end92.sink.split_crit_edge:       ; preds = %if.end3.i293
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.sink.split

if.end3.i293.if.end92.sink.split.sink.split_crit_edge: ; preds = %if.end3.i293
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.sink.split.sink.split

if.else74:                                        ; preds = %if.end54
  br i1 %tobool59.not, label %if.else74.if.end92_crit_edge, label %if.then77

if.else74.if.end92_crit_edge:                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then77:                                        ; preds = %if.else74
  %44 = ptrtoint ptr %no_short_slot_time_set to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %no_short_slot_time_set, align 2
  %num_sta_no_short_slot_time79 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 39
  %45 = ptrtoint ptr %num_sta_no_short_slot_time79 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_sta_no_short_slot_time79, align 4
  %dec80 = add i32 %46, -1
  store i32 %dec80, ptr %num_sta_no_short_slot_time79, align 4
  %cur_wireless_mode81 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %47 = ptrtoint ptr %cur_wireless_mode81 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cur_wireless_mode81, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp83 = icmp ugt i8 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec80)
  %cmp87 = icmp eq i32 %dec80, 0
  %or.cond274 = select i1 %cmp83, i1 %cmp87, i1 false
  br i1 %or.cond274, label %if.then89, label %if.then77.if.end92_crit_edge

if.then77.if.end92_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then89:                                        ; preds = %if.then77
  %tobool.not.i301 = icmp eq ptr %padapter, null
  br i1 %tobool.not.i301, label %if.then89.if.end92_crit_edge, label %if.end.i304

if.then89.if.end92_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.end.i304:                                      ; preds = %if.then89
  %bstart_bss.i302 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %49 = ptrtoint ptr %bstart_bss.i302 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bstart_bss.i302, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool1.not.i303 = icmp eq i8 %50, 0
  br i1 %tobool1.not.i303, label %if.end.i304.if.end92_crit_edge, label %if.end3.i306

if.end.i304.if.end92_crit_edge:                   ; preds = %if.end.i304
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.end3.i306:                                     ; preds = %if.end.i304
  %bcn_update_lock.i305 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 62
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock.i305) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %51 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %cmp.i.i307 = icmp ugt i32 %51, 4
  br i1 %cmp.i.i307, label %if.end3.i306.if.end92.sink.split.sink.split_crit_edge, label %if.end3.i306.if.end92.sink.split_crit_edge

if.end3.i306.if.end92.sink.split_crit_edge:       ; preds = %if.end3.i306
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.sink.split

if.end3.i306.if.end92.sink.split.sink.split_crit_edge: ; preds = %if.end3.i306
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.sink.split.sink.split

if.end92.sink.split.sink.split:                   ; preds = %if.end3.i306.if.end92.sink.split.sink.split_crit_edge, %if.end3.i293.if.end92.sink.split.sink.split_crit_edge
  %bcn_update_lock.i305.sink.ph = phi ptr [ %bcn_update_lock.i292, %if.end3.i293.if.end92.sink.split.sink.split_crit_edge ], [ %bcn_update_lock.i305, %if.end3.i306.if.end92.sink.split.sink.split_crit_edge ]
  %call.i.i308 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.51) #11
  br label %if.end92.sink.split

if.end92.sink.split:                              ; preds = %if.end92.sink.split.sink.split, %if.end3.i306.if.end92.sink.split_crit_edge, %if.end3.i293.if.end92.sink.split_crit_edge
  %bcn_update_lock.i305.sink = phi ptr [ %bcn_update_lock.i292, %if.end3.i293.if.end92.sink.split_crit_edge ], [ %bcn_update_lock.i305, %if.end3.i306.if.end92.sink.split_crit_edge ], [ %bcn_update_lock.i305.sink.ph, %if.end92.sink.split.sink.split ]
  %update_bcn.i310 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 63
  %52 = ptrtoint ptr %update_bcn.i310 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %update_bcn.i310, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock.i305.sink) #8
  %call.i312 = tail call zeroext i8 @set_tx_beacon_cmd(ptr noundef nonnull %padapter) #8
  br label %if.end92

if.end92:                                         ; preds = %if.end92.sink.split, %if.end.i304.if.end92_crit_edge, %if.then89.if.end92_crit_edge, %if.then77.if.end92_crit_edge, %if.else74.if.end92_crit_edge, %if.end.i291.if.end92_crit_edge, %if.then71.if.end92_crit_edge, %if.then60.if.end92_crit_edge, %if.then58.if.end92_crit_edge
  %beacon_updated.2 = phi i8 [ %beacon_updated.1, %if.then77.if.end92_crit_edge ], [ %beacon_updated.1, %if.else74.if.end92_crit_edge ], [ %beacon_updated.1, %if.then58.if.end92_crit_edge ], [ %beacon_updated.1, %if.then60.if.end92_crit_edge ], [ 1, %if.then71.if.end92_crit_edge ], [ 1, %if.end.i291.if.end92_crit_edge ], [ 1, %if.then89.if.end92_crit_edge ], [ 1, %if.end.i304.if.end92_crit_edge ], [ 1, %if.end92.sink.split ]
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags, align 4
  %and94 = and i32 %54, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.else162, label %if.then96

if.then96:                                        ; preds = %if.end92
  %ht_cap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33, i32 10
  %55 = ptrtoint ptr %ht_cap to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %ht_cap, align 1
  %57 = tail call i16 @llvm.bswap.i16(i16 %56)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %58 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %58)
  %cmp97 = icmp ugt i32 %58, 4
  br i1 %cmp97, label %do.end, label %if.then96.do.end104_crit_edge

if.then96.do.end104_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end104

do.end:                                           ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 11
  %conv101 = zext i16 %57 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %hwaddr, i32 noundef %conv101) #11
  br label %do.end104

do.end104:                                        ; preds = %do.end, %if.then96.do.end104_crit_edge
  %no_ht_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 54
  %59 = ptrtoint ptr %no_ht_set to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %no_ht_set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool105.not = icmp eq i8 %60, 0
  br i1 %tobool105.not, label %do.end104.if.end109_crit_edge, label %if.then106

do.end104.if.end109_crit_edge:                    ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then106:                                       ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %no_ht_set to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %no_ht_set, align 1
  %num_sta_no_ht = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 24
  %62 = ptrtoint ptr %num_sta_no_ht to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_sta_no_ht, align 4
  %dec108 = add i32 %63, -1
  store i32 %dec108, ptr %num_sta_no_ht, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %do.end104.if.end109_crit_edge
  %conv110 = zext i16 %57 to i32
  %and111 = and i32 %conv110, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %cmp112 = icmp eq i32 %and111, 0
  br i1 %cmp112, label %if.then114, label %if.end109.if.end135_crit_edge

if.end109.if.end135_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then114:                                       ; preds = %if.end109
  %no_ht_gf_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 53
  %64 = ptrtoint ptr %no_ht_gf_set to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %no_ht_gf_set, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool115.not = icmp eq i8 %65, 0
  br i1 %tobool115.not, label %if.then116, label %if.then114.do.body120_crit_edge

if.then114.do.body120_crit_edge:                  ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body120

if.then116:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %no_ht_gf_set to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %no_ht_gf_set, align 4
  %num_sta_ht_no_gf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 42
  %67 = ptrtoint ptr %num_sta_ht_no_gf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_sta_ht_no_gf, align 4
  %inc118 = add i32 %68, 1
  store i32 %inc118, ptr %num_sta_ht_no_gf, align 4
  br label %do.body120

do.body120:                                       ; preds = %if.then116, %if.then114.do.body120_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %69 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %69)
  %cmp121 = icmp ugt i32 %69, 4
  br i1 %cmp121, label %do.end126, label %do.body120.if.end135_crit_edge

do.body120.if.end135_crit_edge:                   ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

do.end126:                                        ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #10
  %hwaddr128 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 11
  %num_sta_ht_no_gf130 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 42
  %70 = ptrtoint ptr %num_sta_ht_no_gf130 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_sta_ht_no_gf130, align 4
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, ptr noundef %hwaddr128, i32 noundef %71) #11
  br label %if.end135

if.end135:                                        ; preds = %do.end126, %do.body120.if.end135_crit_edge, %if.end109.if.end135_crit_edge
  %and137 = and i32 %conv110, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %cmp138 = icmp eq i32 %and137, 0
  br i1 %cmp138, label %if.then140, label %if.end135.if.end189_crit_edge

if.end135.if.end189_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.then140:                                       ; preds = %if.end135
  %ht_20mhz_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 55
  %72 = ptrtoint ptr %ht_20mhz_set to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ht_20mhz_set, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool141.not = icmp eq i8 %73, 0
  br i1 %tobool141.not, label %if.then142, label %if.then140.do.body146_crit_edge

if.then140.do.body146_crit_edge:                  ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body146

if.then142:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %ht_20mhz_set to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %ht_20mhz_set, align 2
  %num_sta_ht_20mhz = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 43
  %75 = ptrtoint ptr %num_sta_ht_20mhz to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_sta_ht_20mhz, align 4
  %inc144 = add i32 %76, 1
  store i32 %inc144, ptr %num_sta_ht_20mhz, align 4
  br label %do.body146

do.body146:                                       ; preds = %if.then142, %if.then140.do.body146_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %77 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %77)
  %cmp147 = icmp ugt i32 %77, 4
  br i1 %cmp147, label %do.end152, label %do.body146.if.end189_crit_edge

do.body146.if.end189_crit_edge:                   ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

do.end152:                                        ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #10
  %hwaddr154 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 11
  %num_sta_ht_20mhz156 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 43
  %78 = ptrtoint ptr %num_sta_ht_20mhz156 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_sta_ht_20mhz156, align 4
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33, ptr noundef %hwaddr154, i32 noundef %79) #11
  br label %if.end189

if.else162:                                       ; preds = %if.end92
  %no_ht_set163 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 54
  %80 = ptrtoint ptr %no_ht_set163 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %no_ht_set163, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool164.not = icmp eq i8 %81, 0
  br i1 %tobool164.not, label %if.then165, label %if.else162.if.end169_crit_edge

if.else162.if.end169_crit_edge:                   ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169

if.then165:                                       ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %no_ht_set163 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %no_ht_set163, align 1
  %num_sta_no_ht167 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 24
  %83 = ptrtoint ptr %num_sta_no_ht167 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_sta_no_ht167, align 4
  %inc168 = add i32 %84, 1
  store i32 %inc168, ptr %num_sta_no_ht167, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then165, %if.else162.if.end169_crit_edge
  %htpriv170 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26
  %85 = ptrtoint ptr %htpriv170 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %htpriv170, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool171.not = icmp eq i32 %86, 0
  br i1 %tobool171.not, label %if.end169.if.end189_crit_edge, label %do.body173

if.end169.if.end189_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

do.body173:                                       ; preds = %if.end169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %87 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %87)
  %cmp174 = icmp ugt i32 %87, 4
  br i1 %cmp174, label %do.end179, label %do.body173.if.end189_crit_edge

do.body173.if.end189_crit_edge:                   ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

do.end179:                                        ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #10
  %hwaddr181 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 11
  %num_sta_no_ht183 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 24
  %88 = ptrtoint ptr %num_sta_no_ht183 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_sta_no_ht183, align 4
  %call184 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.33, ptr noundef %hwaddr181, i32 noundef %89) #11
  br label %if.end189

if.end189:                                        ; preds = %do.end179, %do.body173.if.end189_crit_edge, %if.end169.if.end189_crit_edge, %do.end152, %do.body146.if.end189_crit_edge, %if.end135.if.end189_crit_edge
  %call190 = tail call fastcc i32 @rtw_ht_operation_update(ptr noundef %padapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call190)
  %cmp191 = icmp slt i32 %call190, 1
  %tobool.not.i314 = icmp eq ptr %padapter, null
  %or.cond335 = or i1 %tobool.not.i314, %cmp191
  br i1 %or.cond335, label %if.end189.if.end194_crit_edge, label %if.end.i317

if.end189.if.end194_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end194

if.end.i317:                                      ; preds = %if.end189
  %bstart_bss.i315 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %90 = ptrtoint ptr %bstart_bss.i315 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %bstart_bss.i315, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool1.not.i316 = icmp eq i8 %91, 0
  br i1 %tobool1.not.i316, label %if.end.i317.if.end194_crit_edge, label %if.end3.i319

if.end.i317.if.end194_crit_edge:                  ; preds = %if.end.i317
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end194

if.end3.i319:                                     ; preds = %if.end.i317
  %bcn_update_lock.i318 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 62
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock.i318) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %92 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %92)
  %cmp.i37.i = icmp ugt i32 %92, 4
  br i1 %cmp.i37.i, label %do.end.i39.i, label %if.end3.i319.if.end.i326_crit_edge

if.end3.i319.if.end.i326_crit_edge:               ; preds = %if.end3.i319
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i326

do.end.i39.i:                                     ; preds = %if.end3.i319
  call void @__sanitizer_cov_trace_pc() #10
  %call.i38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.54) #11
  br label %if.end.i326

if.end.i326:                                      ; preds = %do.end.i39.i, %if.end3.i319.if.end.i326_crit_edge
  %update_bcn.i320 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 63
  %93 = ptrtoint ptr %update_bcn.i320 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %update_bcn.i320, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock.i318) #8
  %94 = ptrtoint ptr %bstart_bss.i315 to i32
  call void @__asan_load1_noabort(i32 %94)
  %.pr = load i8, ptr %bstart_bss.i315, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool1.not.i325 = icmp eq i8 %.pr, 0
  br i1 %tobool1.not.i325, label %if.end.i326.if.end194_crit_edge, label %if.end3.i328

if.end.i326.if.end194_crit_edge:                  ; preds = %if.end.i326
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end194

if.end3.i328:                                     ; preds = %if.end.i326
  %bcn_update_lock.i327 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 62
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock.i327) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %95 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %95)
  %cmp.i43.i = icmp ugt i32 %95, 4
  br i1 %cmp.i43.i, label %do.end.i45.i, label %if.end3.i328.sw.epilog.i330_crit_edge

if.end3.i328.sw.epilog.i330_crit_edge:            ; preds = %if.end3.i328
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i330

do.end.i45.i:                                     ; preds = %if.end3.i328
  call void @__sanitizer_cov_trace_pc() #10
  %call.i44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.56) #11
  br label %sw.epilog.i330

sw.epilog.i330:                                   ; preds = %do.end.i45.i, %if.end3.i328.sw.epilog.i330_crit_edge
  %update_bcn.i329 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 63
  %96 = ptrtoint ptr %update_bcn.i329 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %update_bcn.i329, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock.i327) #8
  %call.i331 = tail call zeroext i8 @set_tx_beacon_cmd(ptr noundef nonnull %padapter) #8
  br label %if.end194

if.end194:                                        ; preds = %sw.epilog.i330, %if.end.i326.if.end194_crit_edge, %if.end.i317.if.end194_crit_edge, %if.end189.if.end194_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %beacon_updated.2)
  %tobool.not.i333 = icmp eq i8 %beacon_updated.2, 0
  br i1 %tobool.not.i333, label %if.end194.associated_clients_update.exit_crit_edge, label %if.then.i

if.end194.associated_clients_update.exit_crit_edge: ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #10
  br label %associated_clients_update.exit

if.then.i:                                        ; preds = %if.end194
  %asoc_list_lock.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock.i) #8
  %asoc_list.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 10
  %97 = ptrtoint ptr %asoc_list.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %asoc_list.i, align 4
  %cmp.not9.i = icmp eq ptr %asoc_list.i, %98
  br i1 %cmp.not9.i, label %if.then.i.while.end.i_crit_edge, label %if.then.i.while.body.i_crit_edge

if.then.i.while.body.i_crit_edge:                 ; preds = %if.then.i
  br label %while.body.i

if.then.i.while.end.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.i.while.body.i_crit_edge
  %plist.010.i = phi ptr [ %100, %while.body.i.while.body.i_crit_edge ], [ %98, %if.then.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %plist.010.i, i32 -2836
  %99 = ptrtoint ptr %plist.010.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %plist.010.i, align 4
  tail call void @VCS_update(ptr noundef %padapter, ptr noundef %add.ptr.i) #8
  %cmp.not.i = icmp eq ptr %asoc_list.i, %100
  br i1 %cmp.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.then.i.while.end.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock.i) #8
  br label %associated_clients_update.exit

associated_clients_update.exit:                   ; preds = %while.end.i, %if.end194.associated_clients_update.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %101 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %101)
  %cmp196 = icmp ugt i32 %101, 4
  br i1 %cmp196, label %do.end201, label %associated_clients_update.exit.do.end207_crit_edge

associated_clients_update.exit.do.end207_crit_edge: ; preds = %associated_clients_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end207

do.end201:                                        ; preds = %associated_clients_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv203 = zext i8 %beacon_updated.2 to i32
  %call204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.33, i32 noundef %conv203) #11
  br label %do.end207

do.end207:                                        ; preds = %do.end201, %associated_clients_update.exit.do.end207_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw_ht_operation_update(ptr nocapture noundef %padapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %htpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26
  %0 = ptrtoint ptr %htpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp ugt i32 %2, 4
  br i1 %cmp, label %do.end, label %do.body.do.end6_crit_edge

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %ht_op_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 45
  %3 = ptrtoint ptr %ht_op_mode to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ht_op_mode, align 4
  %conv = zext i16 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef %conv) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %ht_op_mode7 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 45
  %5 = ptrtoint ptr %ht_op_mode7 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ht_op_mode7, align 4
  %7 = and i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool9.not = icmp eq i16 %7, 0
  %num_sta_ht_no_gf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 42
  %8 = ptrtoint ptr %num_sta_ht_no_gf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_sta_ht_no_gf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %land.lhs.true, label %land.lhs.true19

land.lhs.true:                                    ; preds = %do.end6
  br i1 %tobool10.not, label %land.lhs.true.if.end30_crit_edge, label %if.then11

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i16 %6, 4
  br label %if.end30.sink.split

land.lhs.true19:                                  ; preds = %do.end6
  br i1 %tobool10.not, label %if.then23, label %land.lhs.true19.if.end30_crit_edge

land.lhs.true19.if.end30_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then23:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  %and26 = and i16 %6, -5
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.then23, %if.then11
  %and26.sink = phi i16 [ %and26, %if.then23 ], [ %or, %if.then11 ]
  %10 = ptrtoint ptr %ht_op_mode7 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %and26.sink, ptr %ht_op_mode7, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %land.lhs.true19.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge
  %op_mode_changes.0 = phi i32 [ 0, %land.lhs.true19.if.end30_crit_edge ], [ 0, %land.lhs.true.if.end30_crit_edge ], [ 1, %if.end30.sink.split ]
  %11 = ptrtoint ptr %ht_op_mode7 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ht_op_mode7, align 4
  %13 = and i16 %12, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool34.not = icmp eq i16 %13, 0
  %num_sta_no_ht = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 24
  %14 = ptrtoint ptr %num_sta_no_ht to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_sta_no_ht, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool36.not = icmp eq i32 %15, 0
  br i1 %tobool34.not, label %land.lhs.true35, label %land.lhs.true49

land.lhs.true35:                                  ; preds = %if.end30
  br i1 %tobool36.not, label %lor.lhs.false, label %land.lhs.true35.if.then38_crit_edge

land.lhs.true35.if.then38_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

lor.lhs.false:                                    ; preds = %land.lhs.true35
  %olbc_ht = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 44
  %16 = ptrtoint ptr %olbc_ht to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %olbc_ht, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool37.not = icmp eq i32 %17, 0
  br i1 %tobool37.not, label %lor.lhs.false.if.end63_crit_edge, label %lor.lhs.false.if.then38_crit_edge

lor.lhs.false.if.then38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

lor.lhs.false.if.end63_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then38:                                        ; preds = %lor.lhs.false.if.then38_crit_edge, %land.lhs.true35.if.then38_crit_edge
  %18 = or i16 %12, 16
  br label %if.end63.sink.split

land.lhs.true49:                                  ; preds = %if.end30
  br i1 %tobool36.not, label %land.lhs.true53, label %land.lhs.true49.if.end63_crit_edge

land.lhs.true49.if.end63_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.lhs.true53:                                  ; preds = %land.lhs.true49
  %olbc_ht54 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 44
  %19 = ptrtoint ptr %olbc_ht54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %olbc_ht54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool55.not = icmp eq i32 %20, 0
  br i1 %tobool55.not, label %if.then56, label %land.lhs.true53.if.end63_crit_edge

land.lhs.true53.if.end63_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then56:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #10
  %and59 = and i16 %12, -17
  br label %if.end63.sink.split

if.end63.sink.split:                              ; preds = %if.then56, %if.then38
  %and59.sink = phi i16 [ %and59, %if.then56 ], [ %18, %if.then38 ]
  %21 = ptrtoint ptr %ht_op_mode7 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %and59.sink, ptr %ht_op_mode7, align 4
  %inc61 = add nuw nsw i32 %op_mode_changes.0, 1
  br label %if.end63

if.end63:                                         ; preds = %if.end63.sink.split, %land.lhs.true53.if.end63_crit_edge, %land.lhs.true49.if.end63_crit_edge, %lor.lhs.false.if.end63_crit_edge
  %op_mode_changes.1 = phi i32 [ %op_mode_changes.0, %land.lhs.true53.if.end63_crit_edge ], [ %op_mode_changes.0, %land.lhs.true49.if.end63_crit_edge ], [ %op_mode_changes.0, %lor.lhs.false.if.end63_crit_edge ], [ %inc61, %if.end63.sink.split ]
  %num_sta_no_ht64 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 24
  %22 = ptrtoint ptr %num_sta_no_ht64 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_sta_no_ht64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool65.not = icmp eq i32 %23, 0
  br i1 %tobool65.not, label %lor.lhs.false66, label %if.end63.if.end86_crit_edge

if.end63.if.end86_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

lor.lhs.false66:                                  ; preds = %if.end63
  %24 = ptrtoint ptr %ht_op_mode7 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ht_op_mode7, align 4
  %26 = and i16 %25, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool70.not = icmp eq i16 %26, 0
  br i1 %tobool70.not, label %if.else72, label %lor.lhs.false66.if.end86_crit_edge

lor.lhs.false66.if.end86_crit_edge:               ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.else72:                                        ; preds = %lor.lhs.false66
  %ht_cap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26, i32 10
  %27 = ptrtoint ptr %ht_cap to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %ht_cap, align 1
  %29 = and i16 %28, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool75.not = icmp eq i16 %29, 0
  br i1 %tobool75.not, label %if.else72.if.else79_crit_edge, label %land.lhs.true76

if.else72.if.else79_crit_edge:                    ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else79

land.lhs.true76:                                  ; preds = %if.else72
  %num_sta_ht_20mhz = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 43
  %30 = ptrtoint ptr %num_sta_ht_20mhz to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_sta_ht_20mhz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool77.not = icmp eq i32 %31, 0
  br i1 %tobool77.not, label %land.lhs.true76.if.else79_crit_edge, label %land.lhs.true76.if.end86_crit_edge

land.lhs.true76.if.end86_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

land.lhs.true76.if.else79_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else79

if.else79:                                        ; preds = %land.lhs.true76.if.else79_crit_edge, %if.else72.if.else79_crit_edge
  %olbc_ht80 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 44
  %32 = ptrtoint ptr %olbc_ht80 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %olbc_ht80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool81.not = icmp ne i32 %33, 0
  %. = zext i1 %tobool81.not to i32
  br label %if.end86

if.end86:                                         ; preds = %if.else79, %land.lhs.true76.if.end86_crit_edge, %lor.lhs.false66.if.end86_crit_edge, %if.end63.if.end86_crit_edge
  %new_op_mode.0 = phi i32 [ 3, %lor.lhs.false66.if.end86_crit_edge ], [ 3, %if.end63.if.end86_crit_edge ], [ 2, %land.lhs.true76.if.end86_crit_edge ], [ %., %if.else79 ]
  %34 = ptrtoint ptr %ht_op_mode7 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ht_op_mode7, align 4
  %and89 = and i16 %35, 3
  %conv91 = zext i16 %and89 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %new_op_mode.0, i32 %conv91)
  %cmp93.not = icmp eq i32 %new_op_mode.0, %conv91
  br i1 %cmp93.not, label %if.end86.do.body107_crit_edge, label %if.then95

if.end86.do.body107_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body107

if.then95:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %36 = and i16 %35, -4
  %37 = trunc i32 %new_op_mode.0 to i16
  %conv104 = or i16 %36, %37
  %38 = ptrtoint ptr %ht_op_mode7 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv104, ptr %ht_op_mode7, align 4
  %inc105 = add nuw nsw i32 %op_mode_changes.1, 1
  br label %do.body107

do.body107:                                       ; preds = %if.then95, %if.end86.do.body107_crit_edge
  %op_mode_changes.2 = phi i32 [ %inc105, %if.then95 ], [ %op_mode_changes.1, %if.end86.do.body107_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %39 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp108 = icmp ugt i32 %39, 4
  br i1 %cmp108, label %do.end113, label %do.body107.cleanup_crit_edge

do.body107.cleanup_crit_edge:                     ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end113:                                        ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %ht_op_mode7 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ht_op_mode7, align 4
  %conv116 = zext i16 %41 to i32
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.65, i32 noundef %conv116, i32 noundef %op_mode_changes.2) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end113, %do.body107.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %op_mode_changes.2, %do.end113 ], [ %op_mode_changes.2, %do.body107.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @bss_cap_update_on_sta_leave(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %psta, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %no_short_preamble_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 52
  %0 = ptrtoint ptr %no_short_preamble_set to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %no_short_preamble_set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %if.then2

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then2:                                         ; preds = %if.end
  %2 = ptrtoint ptr %no_short_preamble_set to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %no_short_preamble_set, align 1
  %num_sta_no_short_preamble = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 40
  %3 = ptrtoint ptr %num_sta_no_short_preamble to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_sta_no_short_preamble, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %num_sta_no_short_preamble, align 4
  %cur_wireless_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %5 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cur_wireless_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp ugt i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp6 = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.then8, label %if.then2.if.end10_crit_edge

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.then2
  %tobool.not.i = icmp eq ptr %padapter, null
  br i1 %tobool.not.i, label %if.then8.if.end10_crit_edge, label %if.end.i

if.then8.if.end10_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.i:                                         ; preds = %if.then8
  %bstart_bss.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %7 = ptrtoint ptr %bstart_bss.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bstart_bss.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end10_crit_edge, label %if.end3.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end3.i:                                        ; preds = %if.end.i
  %bcn_update_lock.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 62
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %9 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp.i.i = icmp ugt i32 %9, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end3.i.sw.epilog.i_crit_edge

if.end3.i.sw.epilog.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

do.end.i.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.51) #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i.i, %if.end3.i.sw.epilog.i_crit_edge
  %update_bcn.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 63
  %10 = ptrtoint ptr %update_bcn.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %update_bcn.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock.i) #8
  %call.i = tail call zeroext i8 @set_tx_beacon_cmd(ptr noundef nonnull %padapter) #8
  br label %if.end10

if.end10:                                         ; preds = %sw.epilog.i, %if.end.i.if.end10_crit_edge, %if.then8.if.end10_crit_edge, %if.then2.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %beacon_updated.0 = phi i8 [ 0, %if.then2.if.end10_crit_edge ], [ 0, %if.end.if.end10_crit_edge ], [ 1, %if.then8.if.end10_crit_edge ], [ 1, %if.end.i.if.end10_crit_edge ], [ 1, %sw.epilog.i ]
  %nonerp_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 50
  %11 = ptrtoint ptr %nonerp_set to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nonerp_set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not = icmp eq i8 %12, 0
  br i1 %tobool11.not, label %if.end10.if.end20_crit_edge, label %if.then12

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then12:                                        ; preds = %if.end10
  %13 = ptrtoint ptr %nonerp_set to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %nonerp_set, align 1
  %num_sta_non_erp = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 38
  %14 = ptrtoint ptr %num_sta_non_erp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_sta_non_erp, align 4
  %dec14 = add i32 %15, -1
  store i32 %dec14, ptr %num_sta_non_erp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec14)
  %cmp16 = icmp eq i32 %dec14, 0
  br i1 %cmp16, label %if.then18, label %if.then12.if.end20_crit_edge

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @update_beacon(ptr noundef %padapter, i8 noundef zeroext 42, ptr noundef null, i8 noundef zeroext 1)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then12.if.end20_crit_edge, %if.end10.if.end20_crit_edge
  %beacon_updated.1 = phi i8 [ 1, %if.then18 ], [ %beacon_updated.0, %if.then12.if.end20_crit_edge ], [ %beacon_updated.0, %if.end10.if.end20_crit_edge ]
  %no_short_slot_time_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 51
  %16 = ptrtoint ptr %no_short_slot_time_set to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %no_short_slot_time_set, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool21.not = icmp eq i8 %17, 0
  br i1 %tobool21.not, label %if.end20.if.end35_crit_edge, label %if.then22

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then22:                                        ; preds = %if.end20
  %18 = ptrtoint ptr %no_short_slot_time_set to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %no_short_slot_time_set, align 2
  %num_sta_no_short_slot_time = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 39
  %19 = ptrtoint ptr %num_sta_no_short_slot_time to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_sta_no_short_slot_time, align 4
  %dec24 = add i32 %20, -1
  store i32 %dec24, ptr %num_sta_no_short_slot_time, align 4
  %cur_wireless_mode25 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %21 = ptrtoint ptr %cur_wireless_mode25 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cur_wireless_mode25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp27 = icmp ugt i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec24)
  %cmp31 = icmp eq i32 %dec24, 0
  %or.cond96 = select i1 %cmp27, i1 %cmp31, i1 false
  br i1 %or.cond96, label %if.then33, label %if.then22.if.end35_crit_edge

if.then22.if.end35_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then33:                                        ; preds = %if.then22
  %tobool.not.i97 = icmp eq ptr %padapter, null
  br i1 %tobool.not.i97, label %if.then33.if.end35_crit_edge, label %if.end.i100

if.then33.if.end35_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end.i100:                                      ; preds = %if.then33
  %bstart_bss.i98 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %23 = ptrtoint ptr %bstart_bss.i98 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bstart_bss.i98, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool1.not.i99 = icmp eq i8 %24, 0
  br i1 %tobool1.not.i99, label %if.end.i100.if.end35_crit_edge, label %if.end3.i102

if.end.i100.if.end35_crit_edge:                   ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end3.i102:                                     ; preds = %if.end.i100
  %bcn_update_lock.i101 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 62
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock.i101) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %25 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp.i.i103 = icmp ugt i32 %25, 4
  br i1 %cmp.i.i103, label %do.end.i.i105, label %if.end3.i102.sw.epilog.i107_crit_edge

if.end3.i102.sw.epilog.i107_crit_edge:            ; preds = %if.end3.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i107

do.end.i.i105:                                    ; preds = %if.end3.i102
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.51) #11
  br label %sw.epilog.i107

sw.epilog.i107:                                   ; preds = %do.end.i.i105, %if.end3.i102.sw.epilog.i107_crit_edge
  %update_bcn.i106 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 63
  %26 = ptrtoint ptr %update_bcn.i106 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %update_bcn.i106, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock.i101) #8
  %call.i108 = tail call zeroext i8 @set_tx_beacon_cmd(ptr noundef nonnull %padapter) #8
  br label %if.end35

if.end35:                                         ; preds = %sw.epilog.i107, %if.end.i100.if.end35_crit_edge, %if.then33.if.end35_crit_edge, %if.then22.if.end35_crit_edge, %if.end20.if.end35_crit_edge
  %beacon_updated.2 = phi i8 [ %beacon_updated.1, %if.then22.if.end35_crit_edge ], [ %beacon_updated.1, %if.end20.if.end35_crit_edge ], [ 1, %if.then33.if.end35_crit_edge ], [ 1, %if.end.i100.if.end35_crit_edge ], [ 1, %sw.epilog.i107 ]
  %no_ht_gf_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 53
  %27 = ptrtoint ptr %no_ht_gf_set to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %no_ht_gf_set, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool36.not = icmp eq i8 %28, 0
  br i1 %tobool36.not, label %if.end35.if.end40_crit_edge, label %if.then37

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %no_ht_gf_set to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %no_ht_gf_set, align 4
  %num_sta_ht_no_gf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 42
  %30 = ptrtoint ptr %num_sta_ht_no_gf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_sta_ht_no_gf, align 4
  %dec39 = add i32 %31, -1
  store i32 %dec39, ptr %num_sta_ht_no_gf, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end35.if.end40_crit_edge
  %no_ht_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 54
  %32 = ptrtoint ptr %no_ht_set to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %no_ht_set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool41.not = icmp eq i8 %33, 0
  br i1 %tobool41.not, label %if.end40.if.end45_crit_edge, label %if.then42

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %no_ht_set to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %no_ht_set, align 1
  %num_sta_no_ht = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 24
  %35 = ptrtoint ptr %num_sta_no_ht to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_sta_no_ht, align 4
  %dec44 = add i32 %36, -1
  store i32 %dec44, ptr %num_sta_no_ht, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end40.if.end45_crit_edge
  %ht_20mhz_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 55
  %37 = ptrtoint ptr %ht_20mhz_set to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ht_20mhz_set, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool46.not = icmp eq i8 %38, 0
  br i1 %tobool46.not, label %if.end45.if.end50_crit_edge, label %if.then47

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %ht_20mhz_set to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %ht_20mhz_set, align 2
  %num_sta_ht_20mhz = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 43
  %40 = ptrtoint ptr %num_sta_ht_20mhz to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_sta_ht_20mhz, align 4
  %dec49 = add i32 %41, -1
  store i32 %dec49, ptr %num_sta_ht_20mhz, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end45.if.end50_crit_edge
  %call = tail call fastcc i32 @rtw_ht_operation_update(ptr noundef %padapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp51 = icmp slt i32 %call, 1
  %tobool.not.i110 = icmp eq ptr %padapter, null
  %or.cond129 = or i1 %tobool.not.i110, %cmp51
  br i1 %or.cond129, label %if.end50.do.body_crit_edge, label %if.end.i113

if.end50.do.body_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i113:                                      ; preds = %if.end50
  %bstart_bss.i111 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %42 = ptrtoint ptr %bstart_bss.i111 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bstart_bss.i111, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool1.not.i112 = icmp eq i8 %43, 0
  br i1 %tobool1.not.i112, label %if.end.i113.do.body_crit_edge, label %if.end3.i115

if.end.i113.do.body_crit_edge:                    ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end3.i115:                                     ; preds = %if.end.i113
  %bcn_update_lock.i114 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 62
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock.i114) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %44 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %cmp.i37.i = icmp ugt i32 %44, 4
  br i1 %cmp.i37.i, label %do.end.i39.i, label %if.end3.i115.if.end.i122_crit_edge

if.end3.i115.if.end.i122_crit_edge:               ; preds = %if.end3.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i122

do.end.i39.i:                                     ; preds = %if.end3.i115
  call void @__sanitizer_cov_trace_pc() #10
  %call.i38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.54) #11
  br label %if.end.i122

if.end.i122:                                      ; preds = %do.end.i39.i, %if.end3.i115.if.end.i122_crit_edge
  %update_bcn.i116 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 63
  %45 = ptrtoint ptr %update_bcn.i116 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %update_bcn.i116, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock.i114) #8
  %46 = ptrtoint ptr %bstart_bss.i111 to i32
  call void @__asan_load1_noabort(i32 %46)
  %.pr = load i8, ptr %bstart_bss.i111, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool1.not.i121 = icmp eq i8 %.pr, 0
  br i1 %tobool1.not.i121, label %if.end.i122.do.body_crit_edge, label %if.end3.i124

if.end.i122.do.body_crit_edge:                    ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end3.i124:                                     ; preds = %if.end.i122
  %bcn_update_lock.i123 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 62
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock.i123) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %47 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %cmp.i43.i = icmp ugt i32 %47, 4
  br i1 %cmp.i43.i, label %do.end.i45.i, label %if.end3.i124.sw.epilog.i126_crit_edge

if.end3.i124.sw.epilog.i126_crit_edge:            ; preds = %if.end3.i124
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i126

do.end.i45.i:                                     ; preds = %if.end3.i124
  call void @__sanitizer_cov_trace_pc() #10
  %call.i44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.56) #11
  br label %sw.epilog.i126

sw.epilog.i126:                                   ; preds = %do.end.i45.i, %if.end3.i124.sw.epilog.i126_crit_edge
  %update_bcn.i125 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 63
  %48 = ptrtoint ptr %update_bcn.i125 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %update_bcn.i125, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock.i123) #8
  %call.i127 = tail call zeroext i8 @set_tx_beacon_cmd(ptr noundef nonnull %padapter) #8
  br label %do.body

do.body:                                          ; preds = %sw.epilog.i126, %if.end.i122.do.body_crit_edge, %if.end.i113.do.body_crit_edge, %if.end50.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %49 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %cmp55 = icmp ugt i32 %49, 4
  br i1 %cmp55, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv59 = zext i8 %beacon_updated.2 to i32
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.46, i32 noundef %conv59) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ %beacon_updated.2, %do.end ], [ %beacon_updated.2, %do.body.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @issue_deauth(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_clearstakey_cmd(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_indicate_sta_disassoc_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @report_del_sta_event(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sta_info_update(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 41
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %and = lshr i32 %1, 9
  %and.lobit = and i32 %and, 1
  %2 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and.lobit, ptr %2, align 8
  %qospriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 23
  %4 = ptrtoint ptr %qospriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qospriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp ne i32 %5, 0
  %and7 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %not.tobool8.not = xor i1 %tobool8.not, true
  %spec.select34 = zext i1 %not.tobool8.not to i32
  %6 = and i1 %tobool8.not, %cmp.not
  br i1 %6, label %entry.if.end21_crit_edge, label %7

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

7:                                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select34, ptr %2, align 8
  br label %if.end21

if.end21:                                         ; preds = %7, %entry.if.end21_crit_edge
  %9 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select34, ptr %9, align 8
  %htpriv15 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26
  %11 = ptrtoint ptr %htpriv15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %htpriv15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool17.not = icmp eq i32 %12, 0
  %spec.store.select = select i1 %tobool17.not, i32 0, i32 %spec.select34
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.store.select, ptr %9, align 8
  tail call void @update_sta_info_apmode(ptr noundef %padapter, ptr noundef %psta)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stop_ap_mode(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_node_q = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3
  %update_bcn = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 63
  %0 = ptrtoint ptr %update_bcn to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %update_bcn, align 4
  %bstart_bss = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %1 = ptrtoint ptr %bstart_bss to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bstart_bss, align 8
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %ndisencryptstatus = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 30
  %2 = call ptr @memset(ptr %securitypriv, i32 0, i32 6776)
  %3 = ptrtoint ptr %ndisencryptstatus to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %ndisencryptstatus, align 8
  %lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %4 = ptrtoint ptr %acl_node_q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acl_node_q, align 4
  %cmp.not42 = icmp eq ptr %acl_node_q, %5
  br i1 %cmp.not42, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %num = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %plist.043 = phi ptr [ %5, %while.body.lr.ph ], [ %7, %if.end.while.body_crit_edge ]
  %6 = ptrtoint ptr %plist.043 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plist.043, align 4
  %valid = getelementptr inbounds %struct.rtw_wlan_acl_node, ptr %plist.043, i32 0, i32 2
  %8 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %valid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.body
  %10 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %valid, align 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plist.043) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %plist.043, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %plist.043 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plist.043, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %plist.043 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %plist.043, ptr %plist.043, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %plist.043, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %plist.043, ptr %prev.i3.i, align 4
  %19 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num, align 4
  %dec = add i32 %20, -1
  store i32 %dec, ptr %num, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %while.body.if.end_crit_edge
  %cmp.not = icmp eq ptr %acl_node_q, %7
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %21 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp6 = icmp ugt i32 %21, 4
  br i1 %cmp6, label %do.end, label %while.end.do.end14_crit_edge

while.end.do.end14_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %num10 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 1
  %22 = ptrtoint ptr %num10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num10, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %23) #11
  br label %do.end14

do.end14:                                         ; preds = %do.end, %while.end.do.end14_crit_edge
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  %call15 = tail call i32 @rtw_sta_flush(ptr noundef %padapter)
  tail call void @rtw_free_all_stainfo(ptr noundef %padapter) #8
  %call16 = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #8
  %sta_hash_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock) #8
  %call17 = tail call i32 @rtw_free_stainfo(ptr noundef %padapter, ptr noundef %call16) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #8
  %call19 = tail call i32 @rtw_init_bcmc_stainfo(ptr noundef %padapter) #8
  tail call void @rtw_free_mlme_priv_ie_data(ptr noundef %mlmepriv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_init_bcmc_stainfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_mlme_priv_ie_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_ie(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ERP_IE_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_wps_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @init_mlme_ap_info.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 18, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @init_mlme_ap_info.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 21, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 182, i32 5}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @expire_timeout_chk._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @expire_timeout_chk._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 252, i32 4}
!14 = !{ptr @expire_timeout_chk._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @expire_timeout_chk._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 258, i32 5}
!18 = !{ptr @expire_timeout_chk._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @expire_timeout_chk._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 291, i32 5}
!22 = !{ptr @expire_timeout_chk._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @expire_timeout_chk._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 296, i32 5}
!26 = !{ptr @expire_timeout_chk._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @expire_timeout_chk._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @expire_timeout_chk._entry.18, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 303, i32 4}
!30 = !{ptr @expire_timeout_chk._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 383, i32 3}
!33 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @add_RATid._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @add_RATid._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 400, i32 3}
!38 = !{ptr @add_RATid._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @add_RATid._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 458, i32 4}
!42 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @update_bmc_sta._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @update_bmc_sta._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 477, i32 3}
!47 = !{ptr @update_bmc_sta._entry.27, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @update_bmc_sta._entry_ptr.29, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 499, i32 2}
!51 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @update_sta_info_apmode._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @update_sta_info_apmode._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 931, i32 3}
!56 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @bss_cap_update_on_sta_join._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @bss_cap_update_on_sta_join._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 944, i32 4}
!61 = !{ptr @bss_cap_update_on_sta_join._entry.34, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @bss_cap_update_on_sta_join._entry_ptr.36, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 954, i32 4}
!65 = !{ptr @bss_cap_update_on_sta_join._entry.37, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @bss_cap_update_on_sta_join._entry_ptr.39, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 964, i32 4}
!69 = !{ptr @bss_cap_update_on_sta_join._entry.40, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @bss_cap_update_on_sta_join._entry_ptr.42, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.44, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 978, i32 2}
!73 = !{ptr @bss_cap_update_on_sta_join._entry.43, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @bss_cap_update_on_sta_join._entry_ptr.45, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.46, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 1041, i32 2}
!77 = !{ptr @bss_cap_update_on_sta_leave._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @bss_cap_update_on_sta_leave._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 1096, i32 2}
!81 = !{ptr @.str.48, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @rtw_sta_flush._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @rtw_sta_flush._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 1239, i32 2}
!86 = !{ptr @.str.50, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @stop_ap_mode._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @stop_ap_mode._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 557, i32 2}
!91 = !{ptr @update_bcn_fixed_ie._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @update_bcn_fixed_ie._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 569, i32 2}
!95 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @update_bcn_erpinfo_ie._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @update_bcn_erpinfo_ie._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 596, i32 2}
!100 = !{ptr @update_bcn_htcap_ie._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @update_bcn_htcap_ie._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 606, i32 2}
!104 = !{ptr @update_bcn_rsn_ie._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @update_bcn_rsn_ie._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 601, i32 2}
!108 = !{ptr @update_bcn_htinfo_ie._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @update_bcn_htinfo_ie._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 676, i32 2}
!112 = !{ptr @update_bcn_vendor_spec_ie._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @update_bcn_vendor_spec_ie._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 687, i32 3}
!116 = !{ptr @update_bcn_vendor_spec_ie._entry.58, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @update_bcn_vendor_spec_ie._entry_ptr.60, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 611, i32 2}
!120 = !{ptr @update_bcn_wpa_ie._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @update_bcn_wpa_ie._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 616, i32 2}
!124 = !{ptr @update_bcn_wmm_ie._entry, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @update_bcn_wmm_ie._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 631, i32 2}
!128 = !{ptr @update_bcn_wps_ie._entry, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @update_bcn_wps_ie._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 762, i32 2}
!132 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @rtw_ht_operation_update._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @rtw_ht_operation_update._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/staging/r8188eu/core/rtw_ap.c", i32 814, i32 2}
!137 = !{ptr @rtw_ht_operation_update._entry.66, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @rtw_ht_operation_update._entry_ptr.68, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{!"auto-init"}
