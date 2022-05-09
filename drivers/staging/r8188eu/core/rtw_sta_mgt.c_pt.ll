; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/core/rtw_sta_mgt.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/core/rtw_sta_mgt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, i8, i8, i32, i32, i32, [32 x ptr], i16, i16, i16, %struct.wlan_acl_pool }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wlan_acl_pool = type { i32, i32, [16 x %struct.rtw_wlan_acl_node], %struct.__queue }
%struct.rtw_wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [6 x i8], i8, i16, [8 x i8], i8, [32 x i8], i16, [32 x i8], i8, i8, %struct.rssi_sta, i8, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.ht_priv = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.led_priv, ptr, %struct.wifidirect_info, %struct.hal_data_8188e, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, i32, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, %struct.spinlock, [16 x ptr], i32, [6 x i8], [6 x i8], [4 x i8], ptr, [6 x i8], [4 x i8], %struct.br_ext_info, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i8, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect, %struct.timer_list, i8, i8, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8 }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.wlan_bcn_info }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.ndis_802_11_config, i32, [16 x i8], %struct.wlan_phy_info, i32, [768 x i8] }
%struct.ndis_802_11_config = type { i32, i32, i32, i32, %struct.ndis_802_11_config_fh }
%struct.ndis_802_11_config_fh = type { i32, i32, i32, i32 }
%struct.wlan_phy_info = type { i8, i8, i8, i8 }
%struct.wlan_bcn_info = type { i8, i32, i32, i32, i16, i8 }
%struct.qos_priv = type { i32 }
%struct.rt_link_detect = type { i32, i32, i32, i8, i8, i8, i8, i8, i8 }
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
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i32, i32, [4 x %union.Keytype], [4 x %union.Keytype], [4 x %union.Keytype], %union.pn48, %union.pn48, %struct.arc4_ctx, %struct.arc4_ctx, i32, i32, i32, i32, i32, i32, [512 x i8], i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.ndis_802_11_wep, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.rt_pmkid_list], i8, i8 }
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
%struct.br_ext_info = type { i32, i32, i32, i32, [6 x i8], i32 }

@_rtw_init_sta_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&((&pstapriv->free_sta_queue)->lock)\00", [59 x i8] zeroinitializer }, align 32
@_rtw_init_sta_priv.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&pstapriv->sta_hash_lock\00", [39 x i8] zeroinitializer }, align 32
@_rtw_init_sta_priv.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&((&pstapriv->sleep_q)->lock)\00", [34 x i8] zeroinitializer }, align 32
@_rtw_init_sta_priv.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&((&pstapriv->wakeup_q)->lock)\00", [33 x i8] zeroinitializer }, align 32
@_rtw_init_sta_priv.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&pstapriv->asoc_list_lock\00", [38 x i8] zeroinitializer }, align 32
@_rtw_init_sta_priv.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&pstapriv->auth_list_lock\00", [38 x i8] zeroinitializer }, align 32
@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@rtw_stainfo_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016R8188EU: %s invalid offset(%d), out of range!!!\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw_stainfo_offset\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/r8188eu/core/rtw_sta_mgt.c\00", [53 x i8] zeroinitializer }, align 32
@rtw_stainfo_offset._entry_ptr = internal global ptr @rtw_stainfo_offset._entry, section ".printk_index", align 4
@rtw_get_stainfo_by_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.14, ptr @.str.13, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw_get_stainfo_by_offset\00", [38 x i8] zeroinitializer }, align 32
@rtw_get_stainfo_by_offset._entry_ptr = internal global ptr @rtw_get_stainfo_by_offset._entry, section ".printk_index", align 4
@rtw_alloc_stainfo.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"&((&preorder_ctrl->pending_recvframe_queue)->lock)\00", [45 x i8] zeroinitializer }, align 32
@_rtw_init_stainfo.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&psta->lock\00", [20 x i8] zeroinitializer }, align 32
@_rtw_init_stainfo.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&((&psta->sleep_q)->lock)\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 64, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 66, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 69, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 70, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 89, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 90, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 107, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 115, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 214, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 18, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [46 x i8] c"../drivers/staging/r8188eu/core/rtw_sta_mgt.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 21, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @rtw_get_stainfo_by_offset._entry, ptr @rtw_get_stainfo_by_offset._entry_ptr, ptr @rtw_stainfo_offset._entry, ptr @rtw_stainfo_offset._entry_ptr, ptr @_rtw_init_sta_priv.__key, ptr @.str, ptr @_rtw_init_sta_priv.__key.1, ptr @.str.2, ptr @_rtw_init_sta_priv.__key.3, ptr @.str.4, ptr @_rtw_init_sta_priv.__key.5, ptr @.str.6, ptr @_rtw_init_sta_priv.__key.7, ptr @.str.8, ptr @_rtw_init_sta_priv.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @rtw_alloc_stainfo.__key, ptr @.str.15, ptr @_rtw_init_stainfo.__key, ptr @.str.16, ptr @_rtw_init_stainfo.__key.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_sta_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_sta_priv.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_sta_priv.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_sta_priv.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_sta_priv.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_sta_priv.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_stainfo_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_get_stainfo_by_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_alloc_stainfo.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_stainfo.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_stainfo.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_init_sta_priv(ptr noundef %pstapriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @vzalloc(i32 noundef 103428) #10
  %0 = ptrtoint ptr %pstapriv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %pstapriv, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 4
  %1 = ptrtoint ptr %call to i32
  %and = and i32 %1, 3
  %idx.neg = sub nsw i32 0, %and
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %pstainfo_buf = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 1
  %2 = ptrtoint ptr %pstainfo_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr4, ptr %pstainfo_buf, align 4
  %free_sta_queue = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 2
  %3 = ptrtoint ptr %free_sta_queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %free_sta_queue, ptr %free_sta_queue, align 4
  %prev.i = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %free_sta_queue, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 2, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @_rtw_init_sta_priv.__key, i16 noundef signext 3) #7
  %sta_hash_lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %sta_hash_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @_rtw_init_sta_priv.__key.1, i16 noundef signext 3) #7
  %asoc_sta_count = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 5
  %5 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %asoc_sta_count, align 4
  %sleep_q = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 6
  %6 = ptrtoint ptr %sleep_q to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %sleep_q, ptr %sleep_q, align 4
  %prev.i77 = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i77 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sleep_q, ptr %prev.i77, align 4
  %lock18 = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 6, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock18, ptr noundef nonnull @.str.4, ptr noundef nonnull @_rtw_init_sta_priv.__key.3, i16 noundef signext 3) #7
  %wakeup_q = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 7
  %8 = ptrtoint ptr %wakeup_q to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %wakeup_q, ptr %wakeup_q, align 4
  %prev.i78 = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 7, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %wakeup_q, ptr %prev.i78, align 4
  %lock28 = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 7, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock28, ptr noundef nonnull @.str.6, ptr noundef nonnull @_rtw_init_sta_priv.__key.5, i16 noundef signext 3) #7
  %10 = ptrtoint ptr %pstainfo_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pstainfo_buf, align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end
  %i.085 = phi i32 [ 0, %if.end ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %psta.083 = phi ptr [ %11, %if.end ], [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ]
  %12 = call ptr @memset(ptr %psta.083, i32 0, i32 3232)
  tail call void @__raw_spin_lock_init(ptr noundef %psta.083, ptr noundef nonnull @.str.16, ptr noundef nonnull @_rtw_init_stainfo.__key, i16 noundef signext 3) #7
  %list.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 1
  %13 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list.i, ptr %prev.i.i, align 4
  %hash_list.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 2
  %15 = ptrtoint ptr %hash_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %hash_list.i, ptr %hash_list.i, align 4
  %prev.i30.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i30.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %hash_list.i, ptr %prev.i30.i, align 4
  %sleep_q.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 5
  %17 = ptrtoint ptr %sleep_q.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %sleep_q.i, ptr %sleep_q.i, align 4
  %prev.i31.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 5, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i31.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sleep_q.i, ptr %prev.i31.i, align 4
  %lock4.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 5, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock4.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @_rtw_init_stainfo.__key.17, i16 noundef signext 3) #7
  %sleepq_len.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 6
  %19 = ptrtoint ptr %sleepq_len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %sleepq_len.i, align 8
  %sta_xmitpriv.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 3
  tail call void @_rtw_init_sta_xmit_priv(ptr noundef %sta_xmitpriv.i) #7
  %sta_recvpriv.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 4
  tail call void @_rtw_init_sta_recv_priv(ptr noundef %sta_recvpriv.i) #7
  %asoc_list.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 34
  %20 = ptrtoint ptr %asoc_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %asoc_list.i, ptr %asoc_list.i, align 4
  %prev.i32.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 34, i32 1
  %21 = ptrtoint ptr %prev.i32.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %asoc_list.i, ptr %prev.i32.i, align 4
  %auth_list.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 35
  %22 = ptrtoint ptr %auth_list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %auth_list.i, ptr %auth_list.i, align 4
  %prev.i33.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 35, i32 1
  %23 = ptrtoint ptr %prev.i33.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %auth_list.i, ptr %prev.i33.i, align 4
  %expire_to.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 36
  %24 = ptrtoint ptr %expire_to.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %expire_to.i, align 4
  %flags.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 41
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %flags.i, align 4
  %capability.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 40
  %26 = ptrtoint ptr %capability.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %capability.i, align 8
  %bpairwise_key_installed.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 48
  %27 = ptrtoint ptr %bpairwise_key_installed.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %bpairwise_key_installed.i, align 8
  %nonerp_set.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 50
  %under_exist_checking.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 75
  %28 = ptrtoint ptr %under_exist_checking.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %under_exist_checking.i, align 8
  %keep_alive_trycnt.i = getelementptr inbounds %struct.sta_info, ptr %psta.083, i32 0, i32 76
  %29 = ptrtoint ptr %keep_alive_trycnt.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %keep_alive_trycnt.i, align 1
  %30 = call ptr @memset(ptr %nonerp_set.i, i32 0, i32 6)
  %arrayidx = getelementptr %struct.sta_priv, ptr %pstapriv, i32 0, i32 4, i32 %i.085
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i79 = getelementptr %struct.sta_priv, ptr %pstapriv, i32 0, i32 4, i32 %i.085, i32 1
  %32 = ptrtoint ptr %prev.i79 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx, ptr %prev.i79, align 4
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %34, ptr noundef %free_sta_queue) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list.i, ptr %prev.i, align 4
  %36 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %free_sta_queue, ptr %list.i, align 4
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %list.i, ptr %34, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %incdec.ptr = getelementptr %struct.sta_info, ptr %psta.083, i32 1
  %inc = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sta_dz_bitmap = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 19
  %39 = ptrtoint ptr %sta_dz_bitmap to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %sta_dz_bitmap, align 4
  %tim_bitmap = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 20
  %40 = ptrtoint ptr %tim_bitmap to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %tim_bitmap, align 2
  %asoc_list = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 10
  %41 = ptrtoint ptr %asoc_list to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %asoc_list, ptr %asoc_list, align 4
  %prev.i81 = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 10, i32 1
  %42 = ptrtoint ptr %prev.i81 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %asoc_list, ptr %prev.i81, align 4
  %auth_list = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 11
  %43 = ptrtoint ptr %auth_list to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %auth_list, ptr %auth_list, align 4
  %prev.i82 = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 11, i32 1
  %44 = ptrtoint ptr %prev.i82 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %auth_list, ptr %prev.i82, align 4
  %asoc_list_lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %asoc_list_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @_rtw_init_sta_priv.__key.7, i16 noundef signext 3) #7
  %auth_list_lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %auth_list_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @_rtw_init_sta_priv.__key.9, i16 noundef signext 3) #7
  %asoc_list_cnt = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 13
  %45 = ptrtoint ptr %asoc_list_cnt to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %asoc_list_cnt, align 4
  %auth_list_cnt = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 14
  %46 = ptrtoint ptr %auth_list_cnt to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %auth_list_cnt, align 1
  %auth_to = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 15
  %47 = ptrtoint ptr %auth_to to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3, ptr %auth_to, align 4
  %assoc_to = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 16
  %48 = ptrtoint ptr %assoc_to to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %assoc_to, align 4
  %expire_to = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 17
  %49 = ptrtoint ptr %expire_to to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %expire_to, align 4
  %max_num_sta = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 21
  %50 = ptrtoint ptr %max_num_sta to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 32, ptr %max_num_sta, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_stainfo_offset(ptr nocapture noundef readonly %stapriv, ptr noundef %sta) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %pstainfo_buf = getelementptr inbounds %struct.sta_priv, ptr %stapriv, i32 0, i32 1
  %0 = ptrtoint ptr %pstainfo_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pstainfo_buf, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %sta to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %div = udiv i32 %sub.ptr.sub, 3232
  call void @__sanitizer_cov_trace_const_cmp4(i32 103424, i32 %sub.ptr.sub)
  %cmp = icmp ult i32 %sub.ptr.sub, 103424
  br i1 %cmp, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp2 = icmp ugt i32 %2, 4
  br i1 %cmp2, label %do.end, label %do.body.if.end7_crit_edge

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %div) #11
  br label %if.end7

if.end7:                                          ; preds = %do.end, %do.body.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret i32 %div
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_stainfo_by_offset(ptr nocapture noundef readonly %stapriv, i32 noundef %offset) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %offset)
  %0 = icmp ult i32 %offset, 32
  br i1 %0, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %1 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp2 = icmp ugt i32 %1, 4
  br i1 %cmp2, label %do.end, label %do.body.if.end6_crit_edge

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14, i32 noundef %offset) #11
  br label %if.end6

if.end6:                                          ; preds = %do.end, %do.body.if.end6_crit_edge, %entry.if.end6_crit_edge
  %pstainfo_buf = getelementptr inbounds %struct.sta_priv, ptr %stapriv, i32 0, i32 1
  %2 = ptrtoint ptr %pstainfo_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pstainfo_buf, align 4
  %mul = mul i32 %offset, 3232
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_free_sta_priv(ptr noundef %pstapriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pstapriv, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %sta_hash_lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock) #7
  br label %for.body

for.body:                                         ; preds = %for.inc7.for.body_crit_edge, %if.then
  %index.025 = phi i32 [ 0, %if.then ], [ %inc8, %for.inc7.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sta_priv, ptr %pstapriv, i32 0, i32 4, i32 %index.025
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp1.not23 = icmp eq ptr %arrayidx, %1
  br i1 %cmp1.not23, label %for.body.for.inc7_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.for.inc7_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc7

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body.while.body_crit_edge
  %plist.024 = phi ptr [ %3, %while.body.while.body_crit_edge ], [ %1, %for.body.while.body_crit_edge ]
  %2 = ptrtoint ptr %plist.024 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plist.024, align 4
  %reordering_ctrl_timer = getelementptr i8, ptr %plist.024, i32 972
  %call.i = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer) #7
  %reordering_ctrl_timer.1 = getelementptr i8, ptr %plist.024, i32 1084
  %call.i.1 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.1) #7
  %reordering_ctrl_timer.2 = getelementptr i8, ptr %plist.024, i32 1196
  %call.i.2 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.2) #7
  %reordering_ctrl_timer.3 = getelementptr i8, ptr %plist.024, i32 1308
  %call.i.3 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.3) #7
  %reordering_ctrl_timer.4 = getelementptr i8, ptr %plist.024, i32 1420
  %call.i.4 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.4) #7
  %reordering_ctrl_timer.5 = getelementptr i8, ptr %plist.024, i32 1532
  %call.i.5 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.5) #7
  %reordering_ctrl_timer.6 = getelementptr i8, ptr %plist.024, i32 1644
  %call.i.6 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.6) #7
  %reordering_ctrl_timer.7 = getelementptr i8, ptr %plist.024, i32 1756
  %call.i.7 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.7) #7
  %reordering_ctrl_timer.8 = getelementptr i8, ptr %plist.024, i32 1868
  %call.i.8 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.8) #7
  %reordering_ctrl_timer.9 = getelementptr i8, ptr %plist.024, i32 1980
  %call.i.9 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.9) #7
  %reordering_ctrl_timer.10 = getelementptr i8, ptr %plist.024, i32 2092
  %call.i.10 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.10) #7
  %reordering_ctrl_timer.11 = getelementptr i8, ptr %plist.024, i32 2204
  %call.i.11 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.11) #7
  %reordering_ctrl_timer.12 = getelementptr i8, ptr %plist.024, i32 2316
  %call.i.12 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.12) #7
  %reordering_ctrl_timer.13 = getelementptr i8, ptr %plist.024, i32 2428
  %call.i.13 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.13) #7
  %reordering_ctrl_timer.14 = getelementptr i8, ptr %plist.024, i32 2540
  %call.i.14 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.14) #7
  %reordering_ctrl_timer.15 = getelementptr i8, ptr %plist.024, i32 2652
  %call.i.15 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.15) #7
  %cmp1.not = icmp eq ptr %arrayidx, %3
  br i1 %cmp1.not, label %while.body.for.inc7_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.for.inc7_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc7

for.inc7:                                         ; preds = %while.body.for.inc7_crit_edge, %for.body.for.inc7_crit_edge
  %inc8 = add nuw nsw i32 %index.025, 1
  %exitcond.not = icmp eq i32 %inc8, 32
  br i1 %exitcond.not, label %for.end9, label %for.inc7.for.body_crit_edge

for.inc7.for.body_crit_edge:                      ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end9:                                         ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #7
  %4 = ptrtoint ptr %pstapriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pstapriv, align 4
  tail call void @vfree(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %for.end9, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_alloc_stainfo(ptr noundef %pstapriv, ptr nocapture noundef readonly %hwaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %free_sta_queue = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 2
  %lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 2, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %0 = ptrtoint ptr %free_sta_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_sta_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %free_sta_queue
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  br label %exit

if.else:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -44
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.else.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  %10 = call ptr @memset(ptr %add.ptr, i32 0, i32 3232)
  tail call void @__raw_spin_lock_init(ptr noundef %add.ptr, ptr noundef nonnull @.str.16, ptr noundef nonnull @_rtw_init_stainfo.__key, i16 noundef signext 3) #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %1, ptr %1, align 4
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %prev.i3.i, align 4
  %hash_list.i = getelementptr i8, ptr %1, i32 8
  %13 = ptrtoint ptr %hash_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %hash_list.i, ptr %hash_list.i, align 4
  %prev.i30.i = getelementptr i8, ptr %1, i32 12
  %14 = ptrtoint ptr %prev.i30.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %hash_list.i, ptr %prev.i30.i, align 4
  %sleep_q.i = getelementptr i8, ptr %1, i32 504
  %15 = ptrtoint ptr %sleep_q.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %sleep_q.i, ptr %sleep_q.i, align 4
  %prev.i31.i = getelementptr i8, ptr %1, i32 508
  %16 = ptrtoint ptr %prev.i31.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sleep_q.i, ptr %prev.i31.i, align 4
  %lock4.i = getelementptr i8, ptr %1, i32 512
  tail call void @__raw_spin_lock_init(ptr noundef %lock4.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @_rtw_init_stainfo.__key.17, i16 noundef signext 3) #7
  %sleepq_len.i = getelementptr i8, ptr %1, i32 556
  %17 = ptrtoint ptr %sleepq_len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sleepq_len.i, align 8
  %sta_xmitpriv.i = getelementptr i8, ptr %1, i32 16
  tail call void @_rtw_init_sta_xmit_priv(ptr noundef %sta_xmitpriv.i) #7
  %sta_recvpriv.i = getelementptr i8, ptr %1, i32 372
  tail call void @_rtw_init_sta_recv_priv(ptr noundef %sta_recvpriv.i) #7
  %asoc_list.i = getelementptr i8, ptr %1, i32 2792
  %18 = ptrtoint ptr %asoc_list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %asoc_list.i, ptr %asoc_list.i, align 4
  %prev.i32.i = getelementptr i8, ptr %1, i32 2796
  %19 = ptrtoint ptr %prev.i32.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %asoc_list.i, ptr %prev.i32.i, align 4
  %auth_list.i = getelementptr i8, ptr %1, i32 2800
  %20 = ptrtoint ptr %auth_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %auth_list.i, ptr %auth_list.i, align 4
  %prev.i33.i = getelementptr i8, ptr %1, i32 2804
  %21 = ptrtoint ptr %prev.i33.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %auth_list.i, ptr %prev.i33.i, align 4
  %expire_to.i = getelementptr i8, ptr %1, i32 2808
  %22 = ptrtoint ptr %expire_to.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %expire_to.i, align 4
  %flags.i = getelementptr i8, ptr %1, i32 2952
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %flags.i, align 4
  %capability.i = getelementptr i8, ptr %1, i32 2948
  %24 = ptrtoint ptr %capability.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %capability.i, align 8
  %bpairwise_key_installed.i = getelementptr i8, ptr %1, i32 2980
  %25 = ptrtoint ptr %bpairwise_key_installed.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %bpairwise_key_installed.i, align 8
  %nonerp_set.i = getelementptr i8, ptr %1, i32 3013
  %under_exist_checking.i = getelementptr i8, ptr %1, i32 3124
  %26 = ptrtoint ptr %under_exist_checking.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %under_exist_checking.i, align 8
  %keep_alive_trycnt.i = getelementptr i8, ptr %1, i32 3125
  %27 = ptrtoint ptr %keep_alive_trycnt.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %keep_alive_trycnt.i, align 1
  %28 = call ptr @memset(ptr %nonerp_set.i, i32 0, i32 6)
  %hwaddr4 = getelementptr i8, ptr %1, i32 576
  %29 = call ptr @memcpy(ptr %hwaddr4, ptr %hwaddr, i32 6)
  %30 = ptrtoint ptr %hwaddr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hwaddr, align 1
  %conv.i64 = zext i8 %31 to i32
  %arrayidx1.i = getelementptr i8, ptr %hwaddr, i32 1
  %32 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %33 to i32
  %34 = shl nuw nsw i32 %conv.i64, 4
  %35 = shl nuw nsw i32 %conv2.i, 2
  %shl3.i = xor i32 %35, %34
  %arrayidx4.i = getelementptr i8, ptr %hwaddr, i32 2
  %36 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %37 to i32
  %xor6.i = xor i32 %shl3.i, %conv5.i
  %arrayidx8.i = getelementptr i8, ptr %hwaddr, i32 3
  %38 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %39 to i32
  %arrayidx12.i = getelementptr i8, ptr %hwaddr, i32 4
  %40 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %41 to i32
  %42 = shl nuw nsw i32 %xor6.i, 6
  %43 = shl nuw nsw i32 %conv9.i, 4
  %44 = shl nuw nsw i32 %conv13.i, 2
  %45 = xor i32 %44, %43
  %shl15.i = xor i32 %45, %42
  %arrayidx16.i = getelementptr i8, ptr %hwaddr, i32 5
  %46 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %47 to i32
  %xor18.i = xor i32 %45, %conv17.i
  %shr.i = lshr i32 %shl15.i, 8
  %xor19.i = xor i32 %xor18.i, %shr.i
  %and.i = and i32 %xor19.i, 31
  %arrayidx = getelementptr %struct.sta_priv, ptr %pstapriv, i32 0, i32 4, i32 %and.i
  %sta_hash_lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock) #7
  %prev.i = getelementptr %struct.sta_priv, ptr %pstapriv, i32 0, i32 4, i32 %and.i, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i, align 4
  %call.i.i65 = tail call zeroext i1 @__list_add_valid(ptr noundef %hash_list.i, ptr noundef %49, ptr noundef %arrayidx) #7
  br i1 %call.i.i65, label %if.end.i.i66, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i66:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %hash_list.i, ptr %prev.i, align 4
  %51 = ptrtoint ptr %hash_list.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx, ptr %hash_list.i, align 4
  %52 = ptrtoint ptr %prev.i30.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev.i30.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %hash_list.i, ptr %49, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i66, %list_del_init.exit.list_add_tail.exit_crit_edge
  %asoc_sta_count = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 5
  %54 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %asoc_sta_count, align 4
  %inc = add i32 %55, 1
  store i32 %inc, ptr %asoc_sta_count, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #7
  %rxcache = getelementptr i8, ptr %1, i32 472
  %56 = call ptr @memset(ptr %rxcache, i32 255, i32 32)
  %padapter = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 8
  %57 = ptrtoint ptr %padapter to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %padapter, align 4
  tail call void @init_addba_retry_timer(ptr noundef %58, ptr noundef %add.ptr) #7
  %recvreorder_ctrl = getelementptr i8, ptr %1, i32 916
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %list_add_tail.exit
  %i.169 = phi i32 [ 0, %list_add_tail.exit ], [ %inc25, %for.body13.for.body13_crit_edge ]
  %arrayidx14 = getelementptr [16 x %struct.recv_reorder_ctrl], ptr %recvreorder_ctrl, i32 0, i32 %i.169
  %59 = ptrtoint ptr %padapter to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %padapter, align 4
  %61 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %arrayidx14, align 4
  %enable = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %arrayidx14, i32 0, i32 1
  %62 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %enable, align 4
  %indicate_seq = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %arrayidx14, i32 0, i32 2
  %63 = ptrtoint ptr %indicate_seq to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -1, ptr %indicate_seq, align 2
  %wend_b = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %arrayidx14, i32 0, i32 3
  %64 = ptrtoint ptr %wend_b to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -1, ptr %wend_b, align 4
  %wsize_b = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %arrayidx14, i32 0, i32 4
  %65 = ptrtoint ptr %wsize_b to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 64, ptr %wsize_b, align 2
  %pending_recvframe_queue = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %arrayidx14, i32 0, i32 5
  %66 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %pending_recvframe_queue, ptr %pending_recvframe_queue, align 4
  %prev.i67 = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %arrayidx14, i32 0, i32 5, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i67 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %pending_recvframe_queue, ptr %prev.i67, align 4
  %lock20 = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %arrayidx14, i32 0, i32 5, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock20, ptr noundef nonnull @.str.15, ptr noundef nonnull @rtw_alloc_stainfo.__key, i16 noundef signext 3) #7
  tail call void @rtw_init_recv_timer(ptr noundef %arrayidx14) #7
  %inc25 = add nuw nsw i32 %i.169, 1
  %exitcond.not = icmp eq i32 %inc25, 16
  br i1 %exitcond.not, label %for.end26, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body13

for.end26:                                        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  %rssi_stat = getelementptr i8, ptr %1, i32 3132
  %68 = ptrtoint ptr %rssi_stat to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %rssi_stat, align 8
  %UndecoratedSmoothedCCK = getelementptr i8, ptr %1, i32 3136
  %69 = ptrtoint ptr %UndecoratedSmoothedCCK to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %UndecoratedSmoothedCCK, align 4
  %RxMgmtFrameSeqNum = getelementptr i8, ptr %1, i32 3180
  %70 = ptrtoint ptr %RxMgmtFrameSeqNum to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 -1, ptr %RxMgmtFrameSeqNum, align 8
  br label %exit

exit:                                             ; preds = %for.end26, %if.then
  %psta.0 = phi ptr [ null, %if.then ], [ %add.ptr, %for.end26 ]
  ret ptr %psta.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_addba_retry_timer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_init_recv_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_free_stainfo(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %psta, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %free_sta_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 2
  %sta_xmitpriv = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %xmitpriv) #7
  %sleep_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 5
  tail call void @rtw_free_xmitframe_queue(ptr noundef %xmitpriv, ptr noundef %sleep_q) #7
  %sleepq_len = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 6
  %0 = ptrtoint ptr %sleepq_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sleepq_len, align 8
  %vo_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 6
  %sta_pending = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 6, i32 1
  tail call void @rtw_free_xmitframe_queue(ptr noundef %xmitpriv, ptr noundef %sta_pending) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vo_q) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 6, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %vo_q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vo_q, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %7 = ptrtoint ptr %vo_q to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %vo_q, ptr %vo_q, align 4
  %prev.i3.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 6, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vo_q, ptr %prev.i3.i, align 4
  %vi_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 5
  %sta_pending2 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 5, i32 1
  tail call void @rtw_free_xmitframe_queue(ptr noundef %xmitpriv, ptr noundef %sta_pending2) #7
  %call.i.i121 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vi_q) #7
  br i1 %call.i.i121, label %if.end.i.i124, label %list_del_init.exit.list_del_init.exit126_crit_edge

list_del_init.exit.list_del_init.exit126_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit126

if.end.i.i124:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i122 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i122 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i122, align 4
  %11 = ptrtoint ptr %vi_q to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vi_q, align 4
  %prev1.i.i.i123 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i123 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i123, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit126

list_del_init.exit126:                            ; preds = %if.end.i.i124, %list_del_init.exit.list_del_init.exit126_crit_edge
  %15 = ptrtoint ptr %vi_q to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %vi_q, ptr %vi_q, align 4
  %prev.i3.i125 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i125 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %vi_q, ptr %prev.i3.i125, align 4
  %bk_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 4
  %sta_pending5 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 4, i32 1
  tail call void @rtw_free_xmitframe_queue(ptr noundef %xmitpriv, ptr noundef %sta_pending5) #7
  %call.i.i127 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bk_q) #7
  br i1 %call.i.i127, label %if.end.i.i130, label %list_del_init.exit126.list_del_init.exit132_crit_edge

list_del_init.exit126.list_del_init.exit132_crit_edge: ; preds = %list_del_init.exit126
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit132

if.end.i.i130:                                    ; preds = %list_del_init.exit126
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i128 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i128 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i128, align 4
  %19 = ptrtoint ptr %bk_q to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bk_q, align 4
  %prev1.i.i.i129 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i129, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit132

list_del_init.exit132:                            ; preds = %if.end.i.i130, %list_del_init.exit126.list_del_init.exit132_crit_edge
  %23 = ptrtoint ptr %bk_q to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %bk_q, ptr %bk_q, align 4
  %prev.i3.i131 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 4, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i3.i131 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %bk_q, ptr %prev.i3.i131, align 4
  %be_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 3
  %sta_pending8 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 3, i32 1
  tail call void @rtw_free_xmitframe_queue(ptr noundef %xmitpriv, ptr noundef %sta_pending8) #7
  %call.i.i133 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %be_q) #7
  br i1 %call.i.i133, label %if.end.i.i136, label %list_del_init.exit132.list_del_init.exit138_crit_edge

list_del_init.exit132.list_del_init.exit138_crit_edge: ; preds = %list_del_init.exit132
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit138

if.end.i.i136:                                    ; preds = %list_del_init.exit132
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i134 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 3, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i134 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i134, align 4
  %27 = ptrtoint ptr %be_q to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %be_q, align 4
  %prev1.i.i.i135 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i135 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i135, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_init.exit138

list_del_init.exit138:                            ; preds = %if.end.i.i136, %list_del_init.exit132.list_del_init.exit138_crit_edge
  %31 = ptrtoint ptr %be_q to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %be_q, ptr %be_q, align 4
  %prev.i3.i137 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 3, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i3.i137 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %be_q, ptr %prev.i3.i137, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv) #7
  %hash_list = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 2
  %call.i.i139 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hash_list) #7
  br i1 %call.i.i139, label %if.end.i.i142, label %list_del_init.exit138.list_del_init.exit144_crit_edge

list_del_init.exit138.list_del_init.exit144_crit_edge: ; preds = %list_del_init.exit138
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit144

if.end.i.i142:                                    ; preds = %list_del_init.exit138
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i140 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %prev.i.i140 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i140, align 4
  %35 = ptrtoint ptr %hash_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hash_list, align 4
  %prev1.i.i.i141 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i141 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i141, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del_init.exit144

list_del_init.exit144:                            ; preds = %if.end.i.i142, %list_del_init.exit138.list_del_init.exit144_crit_edge
  %39 = ptrtoint ptr %hash_list to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %hash_list, ptr %hash_list, align 4
  %prev.i3.i143 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %prev.i3.i143 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %hash_list, ptr %prev.i3.i143, align 4
  %asoc_sta_count = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 5
  %41 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %asoc_sta_count, align 4
  %dec = add i32 %42, -1
  store i32 %dec, ptr %asoc_sta_count, align 4
  tail call void @_rtw_init_sta_xmit_priv(ptr noundef %sta_xmitpriv) #7
  %sta_recvpriv = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4
  tail call void @_rtw_init_sta_recv_priv(ptr noundef %sta_recvpriv) #7
  %addba_retry_timer = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 30
  %call.i = tail call i32 @del_timer_sync(ptr noundef %addba_retry_timer) #7
  %free_recv_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 1
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %list_del_init.exit144
  %i.0165 = phi i32 [ 0, %list_del_init.exit144 ], [ %inc, %while.end.for.body_crit_edge ]
  %reordering_ctrl_timer = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 31, i32 %i.0165, i32 6
  %call.i145 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer) #7
  %pending_recvframe_queue = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 31, i32 %i.0165, i32 5
  %lock14 = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 31, i32 %i.0165, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock14) #7
  %43 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pending_recvframe_queue, align 4
  %45 = load volatile ptr, ptr %pending_recvframe_queue, align 4
  %cmp.i.not162 = icmp eq ptr %45, %pending_recvframe_queue
  br i1 %cmp.i.not162, label %for.body.while.end_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit151.while.body_crit_edge, %for.body.while.body_crit_edge
  %plist.0163 = phi ptr [ %47, %list_del_init.exit151.while.body_crit_edge ], [ %44, %for.body.while.body_crit_edge ]
  %46 = ptrtoint ptr %plist.0163 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %plist.0163, align 4
  %call.i.i146 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plist.0163) #7
  br i1 %call.i.i146, label %if.end.i.i149, label %while.body.list_del_init.exit151_crit_edge

while.body.list_del_init.exit151_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit151

if.end.i.i149:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i147 = getelementptr inbounds %struct.list_head, ptr %plist.0163, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i147 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i147, align 4
  %50 = ptrtoint ptr %plist.0163 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %plist.0163, align 4
  %prev1.i.i.i148 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i148 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i148, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del_init.exit151

list_del_init.exit151:                            ; preds = %if.end.i.i149, %while.body.list_del_init.exit151_crit_edge
  %54 = ptrtoint ptr %plist.0163 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %plist.0163, ptr %plist.0163, align 4
  %prev.i3.i150 = getelementptr inbounds %struct.list_head, ptr %plist.0163, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i3.i150 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %plist.0163, ptr %prev.i3.i150, align 4
  %call19 = tail call i32 @rtw_free_recvframe(ptr noundef %plist.0163, ptr noundef %free_recv_queue) #7
  %56 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %pending_recvframe_queue, align 4
  %cmp.i.not = icmp eq ptr %57, %pending_recvframe_queue
  br i1 %cmp.i.not, label %list_del_init.exit151.while.end_crit_edge, label %list_del_init.exit151.while.body_crit_edge

list_del_init.exit151.while.body_crit_edge:       ; preds = %list_del_init.exit151
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

list_del_init.exit151.while.end_crit_edge:        ; preds = %list_del_init.exit151
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit151.while.end_crit_edge, %for.body.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock14) #7
  %inc = add nuw nsw i32 %i.0165, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %while.end
  %state = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 7
  %58 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %state, align 4
  %and = and i32 %59, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.then22, label %for.end.if.end23_crit_edge

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl8188e_SetHalODMVar(ptr noundef %padapter, ptr noundef %psta, i1 noundef zeroext false) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.end.if.end23_crit_edge
  %auth_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %auth_list_lock) #7
  %auth_list = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 35
  %60 = ptrtoint ptr %auth_list to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %auth_list, align 4
  %cmp.i152.not = icmp eq ptr %61, %auth_list
  br i1 %cmp.i152.not, label %if.end23.if.end29_crit_edge, label %if.then26

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then26:                                        ; preds = %if.end23
  %call.i.i154 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %auth_list) #7
  br i1 %call.i.i154, label %if.end.i.i157, label %if.then26.list_del_init.exit159_crit_edge

if.then26.list_del_init.exit159_crit_edge:        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit159

if.end.i.i157:                                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i155 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 35, i32 1
  %62 = ptrtoint ptr %prev.i.i155 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i155, align 4
  %64 = ptrtoint ptr %auth_list to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %auth_list, align 4
  %prev1.i.i.i156 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i156 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i156, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del_init.exit159

list_del_init.exit159:                            ; preds = %if.end.i.i157, %if.then26.list_del_init.exit159_crit_edge
  %68 = ptrtoint ptr %auth_list to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %auth_list, ptr %auth_list, align 4
  %prev.i3.i158 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 35, i32 1
  %69 = ptrtoint ptr %prev.i3.i158 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %auth_list, ptr %prev.i3.i158, align 4
  %auth_list_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 14
  %70 = ptrtoint ptr %auth_list_cnt to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %auth_list_cnt, align 1
  %dec28 = add i8 %71, -1
  store i8 %dec28, ptr %auth_list_cnt, align 1
  br label %if.end29

if.end29:                                         ; preds = %list_del_init.exit159, %if.end23.if.end29_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %auth_list_lock) #7
  %expire_to = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 36
  %72 = ptrtoint ptr %expire_to to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %expire_to, align 4
  %sleepq_ac_len = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 64
  %73 = ptrtoint ptr %sleepq_ac_len to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %sleepq_ac_len, align 4
  %qos_info = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 57
  %aid = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 8
  %74 = call ptr @memset(ptr %qos_info, i32 0, i32 7)
  %75 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %aid, align 8
  %shl = shl nuw i32 1, %76
  %sta_dz_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 19
  %77 = ptrtoint ptr %sta_dz_bitmap to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %sta_dz_bitmap, align 4
  %79 = trunc i32 %shl to i16
  %80 = xor i16 %79, -1
  %conv32 = and i16 %78, %80
  store i16 %conv32, ptr %sta_dz_bitmap, align 4
  %81 = load i32, ptr %aid, align 8
  %shl34 = shl nuw i32 1, %81
  %tim_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  %82 = ptrtoint ptr %tim_bitmap to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %tim_bitmap, align 2
  %84 = trunc i32 %shl34 to i16
  %85 = xor i16 %84, -1
  %conv38 = and i16 %83, %85
  store i16 %conv38, ptr %tim_bitmap, align 2
  %86 = load i32, ptr %aid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp40.not = icmp eq i32 %86, 0
  br i1 %cmp40.not, label %if.end29.if.end52_crit_edge, label %land.lhs.true

if.end29.if.end52_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

land.lhs.true:                                    ; preds = %if.end29
  %sub = add i32 %86, -1
  %arrayidx43 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 18, i32 %sub
  %87 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx43, align 4
  %cmp44 = icmp eq ptr %88, %psta
  br i1 %cmp44, label %if.then46, label %land.lhs.true.if.end52_crit_edge

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %arrayidx43, align 4
  %90 = ptrtoint ptr %aid to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %aid, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %land.lhs.true.if.end52_crit_edge, %if.end29.if.end52_crit_edge
  %under_exist_checking = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 75
  %91 = ptrtoint ptr %under_exist_checking to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %under_exist_checking, align 8
  %lock53 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 2, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock53) #7
  %list54 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 2, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i, align 4
  %call.i.i160 = tail call zeroext i1 @__list_add_valid(ptr noundef %list54, ptr noundef %93, ptr noundef %free_sta_queue) #7
  br i1 %call.i.i160, label %if.end.i.i161, label %if.end52.list_add_tail.exit_crit_edge

if.end52.list_add_tail.exit_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i161:                                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %list54, ptr %prev.i, align 4
  %95 = ptrtoint ptr %list54 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %free_sta_queue, ptr %list54, align 4
  %prev3.i.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 1, i32 1
  %96 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev3.i.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %list54, ptr %93, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i161, %if.end52.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock53) #7
  br label %exit

exit:                                             ; preds = %list_add_tail.exit, %entry.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_xmitframe_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtw_init_sta_xmit_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtw_init_sta_recv_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_recvframe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_SetHalODMVar(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_all_stainfo(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %bc_addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bc_addr.i) #7
  %0 = call ptr @memset(ptr %bc_addr.i, i32 255, i32 6)
  %call.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i, ptr noundef nonnull %bc_addr.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bc_addr.i) #7
  %asoc_sta_count = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 5
  %1 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %asoc_sta_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sta_hash_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock) #7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %index.027 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 4, i32 %index.027
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %cmp2.not25 = icmp eq ptr %arrayidx, %4
  br i1 %cmp2.not25, label %for.body.for.inc_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %for.body.while.body_crit_edge
  %plist.026 = phi ptr [ %6, %if.end7.while.body_crit_edge ], [ %4, %for.body.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %plist.026, i32 -52
  %5 = ptrtoint ptr %plist.026 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %plist.026, align 4
  %cmp4.not = icmp eq ptr %call.i, %add.ptr
  br i1 %cmp4.not, label %while.body.if.end7_crit_edge, label %if.then5

while.body.if.end7_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call i32 @rtw_free_stainfo(ptr noundef %padapter, ptr noundef %add.ptr)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %while.body.if.end7_crit_edge
  %cmp2.not = icmp eq ptr %arrayidx, %6
  br i1 %cmp2.not, label %if.end7.for.inc_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %index.027, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %bc_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bc_addr) #7
  %0 = call ptr @memset(ptr %bc_addr, i32 255, i32 6)
  %call = call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef nonnull %bc_addr)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bc_addr) #7
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_stainfo(ptr noundef %pstapriv, ptr noundef readonly %hwaddr) local_unnamed_addr #0 align 64 {
entry:
  %bc_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bc_addr) #7
  %0 = call ptr @memset(ptr %bc_addr, i32 255, i32 6)
  %tobool.not = icmp eq ptr %hwaddr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %hwaddr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hwaddr, align 1
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  %hwaddr.bc_addr = select i1 %tobool1.not, ptr %hwaddr, ptr %bc_addr
  %4 = ptrtoint ptr %hwaddr.bc_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hwaddr.bc_addr, align 1
  %conv.i = zext i8 %5 to i32
  %hwaddr.bc_addr.sroa.sel.v.sroa.sel.v = select i1 %tobool1.not, ptr %hwaddr, ptr %bc_addr
  %hwaddr.bc_addr.sroa.sel.v.sroa.sel = getelementptr i8, ptr %hwaddr.bc_addr.sroa.sel.v.sroa.sel.v, i32 1
  %6 = ptrtoint ptr %hwaddr.bc_addr.sroa.sel.v.sroa.sel to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hwaddr.bc_addr.sroa.sel.v.sroa.sel, align 1
  %conv2.i = zext i8 %7 to i32
  %8 = shl nuw nsw i32 %conv.i, 4
  %9 = shl nuw nsw i32 %conv2.i, 2
  %shl3.i = xor i32 %9, %8
  %hwaddr.bc_addr.sroa.sel29.v.sroa.sel.v = select i1 %tobool1.not, ptr %hwaddr, ptr %bc_addr
  %hwaddr.bc_addr.sroa.sel29.v.sroa.sel = getelementptr i8, ptr %hwaddr.bc_addr.sroa.sel29.v.sroa.sel.v, i32 2
  %10 = ptrtoint ptr %hwaddr.bc_addr.sroa.sel29.v.sroa.sel to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hwaddr.bc_addr.sroa.sel29.v.sroa.sel, align 1
  %conv5.i = zext i8 %11 to i32
  %xor6.i = xor i32 %shl3.i, %conv5.i
  %hwaddr.bc_addr.sroa.sel32.v.sroa.sel.v = select i1 %tobool1.not, ptr %hwaddr, ptr %bc_addr
  %hwaddr.bc_addr.sroa.sel32.v.sroa.sel = getelementptr i8, ptr %hwaddr.bc_addr.sroa.sel32.v.sroa.sel.v, i32 3
  %12 = ptrtoint ptr %hwaddr.bc_addr.sroa.sel32.v.sroa.sel to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hwaddr.bc_addr.sroa.sel32.v.sroa.sel, align 1
  %conv9.i = zext i8 %13 to i32
  %hwaddr.bc_addr.sroa.sel35.v.sroa.sel.v = select i1 %tobool1.not, ptr %hwaddr, ptr %bc_addr
  %hwaddr.bc_addr.sroa.sel35.v.sroa.sel = getelementptr i8, ptr %hwaddr.bc_addr.sroa.sel35.v.sroa.sel.v, i32 4
  %14 = ptrtoint ptr %hwaddr.bc_addr.sroa.sel35.v.sroa.sel to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hwaddr.bc_addr.sroa.sel35.v.sroa.sel, align 1
  %conv13.i = zext i8 %15 to i32
  %16 = shl nuw nsw i32 %xor6.i, 6
  %17 = shl nuw nsw i32 %conv9.i, 4
  %18 = shl nuw nsw i32 %conv13.i, 2
  %19 = xor i32 %18, %17
  %shl15.i = xor i32 %19, %16
  %hwaddr.bc_addr.sroa.sel38.v.sroa.sel.v = select i1 %tobool1.not, ptr %hwaddr, ptr %bc_addr
  %hwaddr.bc_addr.sroa.sel38.v.sroa.sel = getelementptr i8, ptr %hwaddr.bc_addr.sroa.sel38.v.sroa.sel.v, i32 5
  %20 = ptrtoint ptr %hwaddr.bc_addr.sroa.sel38.v.sroa.sel to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hwaddr.bc_addr.sroa.sel38.v.sroa.sel, align 1
  %conv17.i = zext i8 %21 to i32
  %xor18.i = xor i32 %19, %conv17.i
  %shr.i = lshr i32 %shl15.i, 8
  %xor19.i = xor i32 %xor18.i, %shr.i
  %and.i = and i32 %xor19.i, 31
  %sta_hash_lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock) #7
  %arrayidx = getelementptr %struct.sta_priv, ptr %pstapriv, i32 0, i32 4, i32 %and.i
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end
  %plist.0.in = phi ptr [ %arrayidx, %if.end ], [ %plist.0, %while.body.while.cond_crit_edge ]
  %22 = ptrtoint ptr %plist.0.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %plist.0 = load ptr, ptr %plist.0.in, align 4
  %cmp.not = icmp eq ptr %arrayidx, %plist.0
  br i1 %cmp.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.cond
  %hwaddr5 = getelementptr i8, ptr %plist.0, i32 568
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %hwaddr5, ptr noundef nonnull dereferenceable(6) %hwaddr.bc_addr, i32 6) #12
  %tobool8.not = icmp eq i32 %bcmp, 0
  br i1 %tobool8.not, label %while.end.split.loop.exit, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end.split.loop.exit:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.le = getelementptr i8, ptr %plist.0, i32 -52
  br label %while.end

while.end:                                        ; preds = %while.end.split.loop.exit, %while.cond.while.end_crit_edge
  %psta.1 = phi ptr [ %add.ptr.le, %while.end.split.loop.exit ], [ null, %while.cond.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %psta.1, %while.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bc_addr) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_init_bcmc_stainfo(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %bcast_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bcast_addr) #7
  %0 = call ptr @memset(ptr %bcast_addr, i32 255, i32 6)
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call = call ptr @rtw_alloc_stainfo(ptr noundef %stapriv, ptr noundef nonnull %bcast_addr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 9
  %1 = ptrtoint ptr %mac_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %mac_id, align 4
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %res.0 = phi i32 [ 1, %if.end ], [ 0, %entry.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bcast_addr) #7
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_access_ctrl(ptr noundef %padapter, ptr nocapture noundef readonly %mac_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_list = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22
  %acl_node_q = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3
  %lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %0 = ptrtoint ptr %acl_node_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl_node_q, align 4
  %cmp.not31 = icmp eq ptr %acl_node_q, %1
  br i1 %cmp.not31, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %entry.while.body_crit_edge
  %plist.032 = phi ptr [ %3, %if.end5.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %plist.032 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plist.032, align 4
  %addr = getelementptr inbounds %struct.rtw_wlan_acl_node, ptr %plist.032, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr, ptr noundef dereferenceable(6) %mac_addr, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %while.body.if.end5_crit_edge

while.body.if.end5_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %while.body
  %valid = getelementptr inbounds %struct.rtw_wlan_acl_node, ptr %plist.032, i32 0, i32 2
  %4 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.while.end_crit_edge

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %while.body.if.end5_crit_edge
  %cmp.not = icmp eq ptr %acl_node_q, %3
  br i1 %cmp.not, label %if.end5.while.end_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end5.while.end_crit_edge, %if.then.while.end_crit_edge, %entry.while.end_crit_edge
  %cmp.not.lcssa = phi i1 [ true, %entry.while.end_crit_edge ], [ false, %if.then.while.end_crit_edge ], [ true, %if.end5.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  %6 = ptrtoint ptr %acl_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %acl_list, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.else19 [
    i32 1, label %while.end.if.end21_crit_edge
    i32 2, label %if.then14
  ]

while.end.if.end21_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then14:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %not.cmp.not = xor i1 %cmp.not.lcssa, true
  br label %if.end21

if.else19:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then14, %while.end.if.end21_crit_edge
  %res.0.shrunk = phi i1 [ %not.cmp.not, %if.then14 ], [ true, %if.else19 ], [ %cmp.not.lcssa, %while.end.if.end21_crit_edge ]
  %res.0 = zext i1 %res.0.shrunk to i8
  ret i8 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @_rtw_init_sta_priv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/core/rtw_sta_mgt.c", i32 64, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @_rtw_init_sta_priv.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/r8188eu/core/rtw_sta_mgt.c", i32 66, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @_rtw_init_sta_priv.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/core/rtw_sta_mgt.c", i32 69, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @_rtw_init_sta_priv.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/staging/r8188eu/core/rtw_sta_mgt.c", i32 70, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @_rtw_init_sta_priv.__key.7, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/staging/r8188eu/core/rtw_sta_mgt.c", i32 89, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @_rtw_init_sta_priv.__key.9, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/staging/r8188eu/core/rtw_sta_mgt.c", i32 90, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/r8188eu/core/rtw_sta_mgt.c", i32 107, i32 3}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rtw_stainfo_offset._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @rtw_stainfo_offset._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/r8188eu/core/rtw_sta_mgt.c", i32 115, i32 3}
!26 = !{ptr @rtw_get_stainfo_by_offset._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rtw_get_stainfo_by_offset._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @rtw_alloc_stainfo.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/staging/r8188eu/core/rtw_sta_mgt.c", i32 214, i32 4}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @_rtw_init_stainfo.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/staging/r8188eu/core/rtw_sta_mgt.c", i32 18, i32 2}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @_rtw_init_stainfo.__key.17, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/staging/r8188eu/core/rtw_sta_mgt.c", i32 21, i32 2}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
