; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/core/rtw_recv.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/core/rtw_recv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, i32, i32, i32, i32, %struct.semaphore, i8, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, i8, i8, i8, [2 x i32], [2 x i8], i32, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.2, i32 }
%struct.atomic_t = type { i32 }
%union.anon.2 = type { ptr }
%struct.sk_buff_head = type { %union.anon.3, i32, %struct.spinlock }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.signal_stat = type { i8, i8, i32, i32 }
%struct.recv_frame = type { %struct.list_head, ptr, ptr, ptr, i8, i32, %struct.rx_pkt_attrib, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rx_pkt_attrib = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, [2 x i32], %struct.phy_info }
%struct.phy_info = type { i8, i8, [3 x i8], [3 x i8], i8, i8, i8, [3 x i8], [3 x i8] }
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
%struct.ht_priv = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.rt_link_detect = type { i32, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.mlme_ext_priv = type { ptr, i8, %struct.atomic_t, i16, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.rt_channel_info], %struct.p2p_channels, [13 x i8], [13 x i8], %struct.ss_res, %struct.mlme_ext_info, %struct.timer_list, %struct.timer_list, i16, i8, i8, i32, i64, i8, i8, i8, i16, i8 }
%struct.rt_channel_info = type { i8, i32, i32 }
%struct.p2p_channels = type { [10 x %struct.p2p_reg_class], i32 }
%struct.p2p_reg_class = type { i8, [20 x i8], i32 }
%struct.ss_res = type { i32, i32, i32, i32, i8, i8, [9 x %struct.ndis_802_11_ssid], [51 x %struct.rtw_ieee80211_channel] }
%struct.rtw_ieee80211_channel = type { i16, i32 }
%struct.mlme_ext_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i8], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ADDBA_request, %struct.WMM_para_element, %struct.HT_caps_element, %struct.HT_info_element, %struct.wlan_bssid_ex, [32 x %struct.FW_Sta_Info] }
%struct.ADDBA_request = type { i8, i8, i16, i16, i16 }
%struct.WMM_para_element = type { i8, i8, [4 x %struct.AC_param] }
%struct.AC_param = type { i8, i8, i16 }
%struct.HT_caps_element = type { %union.anon.119 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i16, i8, [16 x i8], i16, i16, i8 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
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
%struct.br_ext_info = type { i32, i32, i32, i32, [6 x i8], i32 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [6 x i8], i8, i16, [8 x i8], i8, [32 x i8], i16, [32 x i8], i8, i8, %struct.rssi_sta, i8, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%struct.sk_buff = type { %union.anon.5, %union.anon.95, %union.anon.96, [48 x i8], %union.anon.97, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.99, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr, %union.anon.7 }
%union.anon.7 = type { ptr }
%union.anon.95 = type { ptr }
%union.anon.96 = type { i64 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { i32, ptr }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.101, i32, i32, i32, i16, i16, %union.anon.103, i32, %union.anon.104, %union.anon.105, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.101 = type { i32 }
%union.anon.103 = type { i32 }
%union.anon.104 = type { i32 }
%union.anon.105 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }

@_rtw_init_sta_recv_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&psta_recvpriv->lock\00", [43 x i8] zeroinitializer }, align 32
@_rtw_init_sta_recv_priv.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&((&psta_recvpriv->defrag_q)->lock)\00", [60 x i8] zeroinitializer }, align 32
@_rtw_init_recv_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&precvpriv->lock\00", [47 x i8] zeroinitializer }, align 32
@_rtw_init_recv_priv.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"&((&precvpriv->free_recv_queue)->lock)\00", [57 x i8] zeroinitializer }, align 32
@_rtw_init_recv_priv.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"&((&precvpriv->recv_pending_queue)->lock)\00", [54 x i8] zeroinitializer }, align 32
@_rtw_init_recv_priv.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"&((&precvpriv->uc_swdec_pending_queue)->lock)\00", [50 x i8] zeroinitializer }, align 32
@_rtw_init_recv_priv.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(&precvpriv->signal_stat_timer)\00", [32 x i8] zeroinitializer }, align 32
@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@rtw_free_uc_swdec_pending_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016R8188EU: %s: dequeue uc_swdec_pending_queue\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtw_free_uc_swdec_pending_queue\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/staging/r8188eu/core/rtw_recv.c\00", [56 x i8] zeroinitializer }, align 32
@rtw_free_uc_swdec_pending_queue._entry_ptr = internal global ptr @rtw_free_uc_swdec_pending_queue._entry, section ".printk_index", align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } zeroinitializer, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@recvframe_chkmic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.14, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016R8188EU: \0A recvframe_chkmic:didn't install group key!!!!!!!!!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"recvframe_chkmic\00", [47 x i8] zeroinitializer }, align 32
@recvframe_chkmic._entry_ptr = internal global ptr @recvframe_chkmic._entry, section ".printk_index", align 4
@recvframe_chkmic._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.14, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016R8188EU:  mic error :prxattrib->bdecrypted=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@recvframe_chkmic._entry_ptr.22 = internal global ptr @recvframe_chkmic._entry.20, section ".printk_index", align 4
@recvframe_chkmic._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.14, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@recvframe_chkmic._entry_ptr.24 = internal global ptr @recvframe_chkmic._entry.23, section ".printk_index", align 4
@amsdu_to_msdu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.14, i32 1448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016R8188EU: nRemain_Length is %d and nSubframe_Length is : %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"amsdu_to_msdu\00", [18 x i8] zeroinitializer }, align 32
@amsdu_to_msdu._entry_ptr = internal global ptr @amsdu_to_msdu._entry, section ".printk_index", align 4
@amsdu_to_msdu._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.14, i32 1469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016R8188EU: skb_clone() Fail!!! , nr_subframes=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@amsdu_to_msdu._entry_ptr.29 = internal global ptr @amsdu_to_msdu._entry.27, section ".printk_index", align 4
@amsdu_to_msdu._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.14, i32 1477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016R8188EU: ParseSubframe(): Too many Subframes! Packets dropped!\0A\00", [62 x i8] zeroinitializer }, align 32
@amsdu_to_msdu._entry_ptr.32 = internal global ptr @amsdu_to_msdu._entry.30, section ".printk_index", align 4
@rtw_rfc1042_header = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\AA\AA\03\00\00\00", [26 x i8] zeroinitializer }, align 32
@rtw_bridge_tunnel_header = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\AA\AA\03\00\00\F8", [26 x i8] zeroinitializer }, align 32
@recv_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.14, i32 1873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016R8188EU: %s: no key, enqueue uc_swdec_pending_queue\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"recv_func\00", [22 x i8] zeroinitializer }, align 32
@recv_func._entry_ptr = internal global ptr @recv_func._entry, section ".printk_index", align 4
@decryptor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.14, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016R8188EU: prxattrib->key_index(%d)>WEP_KEYS\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"decryptor\00", [22 x i8] zeroinitializer }, align 32
@decryptor._entry_ptr = internal global ptr @decryptor._entry, section ".printk_index", align 4
@SNAP_ETH_TYPE_IPX = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\817", [30 x i8] zeroinitializer }, align 32
@SNAP_ETH_TYPE_APPLETALK_AARP = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\80\F3", [30 x i8] zeroinitializer }, align 32
@validate_recv_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.14, i32 1121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016R8188EU: #############################\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"validate_recv_frame\00", [44 x i8] zeroinitializer }, align 32
@validate_recv_frame._entry_ptr = internal global ptr @validate_recv_frame._entry, section ".printk_index", align 4
@validate_recv_frame._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.14, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016R8188EU: %02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:\0A\00", [43 x i8] zeroinitializer }, align 32
@validate_recv_frame._entry_ptr.41 = internal global ptr @validate_recv_frame._entry.39, section ".printk_index", align 4
@validate_recv_frame._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.14, i32 1126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@validate_recv_frame._entry_ptr.43 = internal global ptr @validate_recv_frame._entry.42, section ".printk_index", align 4
@validate_recv_frame._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.14, i32 1130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@validate_recv_frame._entry_ptr.45 = internal global ptr @validate_recv_frame._entry.44, section ".printk_index", align 4
@validate_recv_frame._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.14, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@validate_recv_frame._entry_ptr.47 = internal global ptr @validate_recv_frame._entry.46, section ".printk_index", align 4
@validate_recv_frame._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.14, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@validate_recv_frame._entry_ptr.49 = internal global ptr @validate_recv_frame._entry.48, section ".printk_index", align 4
@validate_recv_frame._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.14, i32 1140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@validate_recv_frame._entry_ptr.51 = internal global ptr @validate_recv_frame._entry.50, section ".printk_index", align 4
@validate_recv_frame._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.14, i32 1144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@validate_recv_frame._entry_ptr.53 = internal global ptr @validate_recv_frame._entry.52, section ".printk_index", align 4
@validate_recv_frame._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.14, i32 1145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@validate_recv_frame._entry_ptr.55 = internal global ptr @validate_recv_frame._entry.54, section ".printk_index", align 4
@validate_recv_ctrl_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.14, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016R8188EU: %s alive check-rx ps-poll\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"validate_recv_ctrl_frame\00", [39 x i8] zeroinitializer }, align 32
@validate_recv_ctrl_frame._entry_ptr = internal global ptr @validate_recv_ctrl_frame._entry, section ".printk_index", align 4
@validate_recv_ctrl_frame._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.14, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016R8188EU: no buffered packets to xmit\0A\00", [56 x i8] zeroinitializer }, align 32
@validate_recv_ctrl_frame._entry_ptr.60 = internal global ptr @validate_recv_ctrl_frame._entry.58, section ".printk_index", align 4
@validate_recv_ctrl_frame._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.14, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016R8188EU: error!psta->sleepq_len=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@validate_recv_ctrl_frame._entry_ptr.63 = internal global ptr @validate_recv_ctrl_frame._entry.61, section ".printk_index", align 4
@ap2sta_data_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.14, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016R8188EU: issue_deauth to the nonassociated ap=%pM for the reason(7)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ap2sta_data_frame\00", [46 x i8] zeroinitializer }, align 32
@ap2sta_data_frame._entry_ptr = internal global ptr @ap2sta_data_frame._entry, section ".printk_index", align 4
@ap2sta_data_frame._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.14, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016R8188EU: issue_deauth to the ap =%pM for the reason(7)\0A\00", [38 x i8] zeroinitializer }, align 32
@ap2sta_data_frame._entry_ptr.68 = internal global ptr @ap2sta_data_frame._entry.66, section ".printk_index", align 4
@sta2ap_data_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.14, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016R8188EU: issue_deauth to sta=%pM for the reason(7)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sta2ap_data_frame\00", [46 x i8] zeroinitializer }, align 32
@sta2ap_data_frame._entry_ptr = internal global ptr @sta2ap_data_frame._entry, section ".printk_index", align 4
@sta2ap_data_frame._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.14, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sta2ap_data_frame._entry_ptr.72 = internal global ptr @sta2ap_data_frame._entry.71, section ".printk_index", align 4
@switch.table.rtw_recv_entry = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\04\08\00\08\04\12", [26 x i8] zeroinitializer }, align 32
@switch.table.rtw_recv_entry.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\04\04\00\08\04\10", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 8]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 80, i64 128]
@__sancov_gen_cov_switch_values.77 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.81 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 16, i64 33011, i64 33079]
@__sancov_gen_cov_switch_values.86 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 33, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 35, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 47, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 49, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 50, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 51, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 88, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 246, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 602, i32 31 }
@___asan_gen_.145 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 33, i32 31 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 34, i32 28 }
@___asan_gen_.152 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 35, i32 39 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 278, i32 6 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 309, i32 6 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 311, i32 6 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1448, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1469, i32 5 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1477, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant [19 x i8] c"rtw_rfc1042_header\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 22, i32 11 }
@___asan_gen_.196 = private unnamed_addr constant [25 x i8] c"rtw_bridge_tunnel_header\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 18, i32 11 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1873, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 342, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant [18 x i8] c"SNAP_ETH_TYPE_IPX\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 14, i32 11 }
@___asan_gen_.220 = private unnamed_addr constant [29 x i8] c"SNAP_ETH_TYPE_APPLETALK_AARP\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 15, i32 11 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1121, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1124, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1126, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1130, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1133, i32 5 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1135, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1140, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1143, i32 5 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1145, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 868, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 909, i32 7 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 914, i32 7 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 692, i32 5 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 743, i32 5 }
@___asan_gen_.301 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 777, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.305 = private constant [43 x i8] c"../drivers/staging/r8188eu/core/rtw_recv.c\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 803, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [28 x i8] c"switch.table.rtw_recv_entry\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [31 x i8] c"switch.table.rtw_recv_entry.73\00", align 1
@llvm.compiler.used = appending global [100 x ptr] [ptr @amsdu_to_msdu._entry, ptr @amsdu_to_msdu._entry.27, ptr @amsdu_to_msdu._entry.30, ptr @amsdu_to_msdu._entry_ptr, ptr @amsdu_to_msdu._entry_ptr.29, ptr @amsdu_to_msdu._entry_ptr.32, ptr @ap2sta_data_frame._entry, ptr @ap2sta_data_frame._entry.66, ptr @ap2sta_data_frame._entry_ptr, ptr @ap2sta_data_frame._entry_ptr.68, ptr @decryptor._entry, ptr @decryptor._entry_ptr, ptr @recv_func._entry, ptr @recv_func._entry_ptr, ptr @recvframe_chkmic._entry, ptr @recvframe_chkmic._entry.20, ptr @recvframe_chkmic._entry.23, ptr @recvframe_chkmic._entry_ptr, ptr @recvframe_chkmic._entry_ptr.22, ptr @recvframe_chkmic._entry_ptr.24, ptr @rtw_free_uc_swdec_pending_queue._entry, ptr @rtw_free_uc_swdec_pending_queue._entry_ptr, ptr @sta2ap_data_frame._entry, ptr @sta2ap_data_frame._entry.71, ptr @sta2ap_data_frame._entry_ptr, ptr @sta2ap_data_frame._entry_ptr.72, ptr @validate_recv_ctrl_frame._entry, ptr @validate_recv_ctrl_frame._entry.58, ptr @validate_recv_ctrl_frame._entry.61, ptr @validate_recv_ctrl_frame._entry_ptr, ptr @validate_recv_ctrl_frame._entry_ptr.60, ptr @validate_recv_ctrl_frame._entry_ptr.63, ptr @validate_recv_frame._entry, ptr @validate_recv_frame._entry.39, ptr @validate_recv_frame._entry.42, ptr @validate_recv_frame._entry.44, ptr @validate_recv_frame._entry.46, ptr @validate_recv_frame._entry.48, ptr @validate_recv_frame._entry.50, ptr @validate_recv_frame._entry.52, ptr @validate_recv_frame._entry.54, ptr @validate_recv_frame._entry_ptr, ptr @validate_recv_frame._entry_ptr.41, ptr @validate_recv_frame._entry_ptr.43, ptr @validate_recv_frame._entry_ptr.45, ptr @validate_recv_frame._entry_ptr.47, ptr @validate_recv_frame._entry_ptr.49, ptr @validate_recv_frame._entry_ptr.51, ptr @validate_recv_frame._entry_ptr.53, ptr @validate_recv_frame._entry_ptr.55, ptr @_rtw_init_sta_recv_priv.__key, ptr @.str, ptr @_rtw_init_sta_recv_priv.__key.1, ptr @.str.2, ptr @_rtw_init_recv_priv.__key, ptr @.str.3, ptr @_rtw_init_recv_priv.__key.4, ptr @.str.5, ptr @_rtw_init_recv_priv.__key.6, ptr @.str.7, ptr @_rtw_init_recv_priv.__key.8, ptr @.str.9, ptr @_rtw_init_recv_priv.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @sema_init.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @rtw_rfc1042_header, ptr @rtw_bridge_tunnel_header, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @SNAP_ETH_TYPE_IPX, ptr @SNAP_ETH_TYPE_APPLETALK_AARP, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @switch.table.rtw_recv_entry, ptr @switch.table.rtw_recv_entry.73], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_sta_recv_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_sta_recv_priv.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_recv_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_recv_priv.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_recv_priv.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_recv_priv.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_recv_priv.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_free_uc_swdec_pending_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recvframe_chkmic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recvframe_chkmic._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recvframe_chkmic._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amsdu_to_msdu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amsdu_to_msdu._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amsdu_to_msdu._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_rfc1042_header to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_bridge_tunnel_header to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decryptor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SNAP_ETH_TYPE_IPX to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SNAP_ETH_TYPE_APPLETALK_AARP to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_recv_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_recv_frame._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_recv_frame._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_recv_frame._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_recv_frame._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_recv_frame._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_recv_frame._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_recv_frame._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_recv_frame._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_recv_ctrl_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_recv_ctrl_frame._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_recv_ctrl_frame._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap2sta_data_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap2sta_data_frame._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta2ap_data_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sta2ap_data_frame._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_recv_entry to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_recv_entry.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_init_sta_recv_priv(ptr noundef %psta_recvpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %psta_recvpriv, i32 0, i32 132)
  tail call void @__raw_spin_lock_init(ptr noundef %psta_recvpriv, ptr noundef nonnull @.str, ptr noundef nonnull @_rtw_init_sta_recv_priv.__key, i16 noundef signext 3) #8
  %defrag_q = getelementptr inbounds %struct.sta_recv_priv, ptr %psta_recvpriv, i32 0, i32 2
  %1 = ptrtoint ptr %defrag_q to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %defrag_q, ptr %defrag_q, align 4
  %prev.i = getelementptr inbounds %struct.sta_recv_priv, ptr %psta_recvpriv, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %defrag_q, ptr %prev.i, align 4
  %lock4 = getelementptr inbounds %struct.sta_recv_priv, ptr %psta_recvpriv, i32 0, i32 2, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock4, ptr noundef nonnull @.str.2, ptr noundef nonnull @_rtw_init_sta_recv_priv.__key.1, i16 noundef signext 3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_init_recv_priv(ptr noundef %precvpriv, ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %precvpriv, ptr noundef nonnull @.str.3, ptr noundef nonnull @_rtw_init_recv_priv.__key, i16 noundef signext 3) #8
  %free_recv_queue = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 1
  %0 = ptrtoint ptr %free_recv_queue to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %free_recv_queue, ptr %free_recv_queue, align 4
  %prev.i = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %free_recv_queue, ptr %prev.i, align 4
  %lock4 = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock4, ptr noundef nonnull @.str.5, ptr noundef nonnull @_rtw_init_recv_priv.__key.4, i16 noundef signext 3) #8
  %recv_pending_queue = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 2
  %2 = ptrtoint ptr %recv_pending_queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %recv_pending_queue, ptr %recv_pending_queue, align 4
  %prev.i78 = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %recv_pending_queue, ptr %prev.i78, align 4
  %lock14 = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 2, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock14, ptr noundef nonnull @.str.7, ptr noundef nonnull @_rtw_init_recv_priv.__key.6, i16 noundef signext 3) #8
  %uc_swdec_pending_queue = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 3
  %4 = ptrtoint ptr %uc_swdec_pending_queue to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %uc_swdec_pending_queue, ptr %uc_swdec_pending_queue, align 4
  %prev.i79 = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 3, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i79 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %uc_swdec_pending_queue, ptr %prev.i79, align 4
  %lock24 = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 3, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock24, ptr noundef nonnull @.str.9, ptr noundef nonnull @_rtw_init_recv_priv.__key.8, i16 noundef signext 3) #8
  %adapter = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 7
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %padapter, ptr %adapter, align 4
  %free_recvframe_cnt = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 6
  %7 = ptrtoint ptr %free_recvframe_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 256, ptr %free_recvframe_cnt, align 8
  %call30 = tail call i32 @rtw_os_recv_resource_init(ptr noundef %precvpriv, ptr noundef %padapter) #8
  %call31 = tail call noalias ptr @vzalloc(i32 noundef 39168) #11
  %pallocated_frame_buf = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 4
  %8 = ptrtoint ptr %pallocated_frame_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call31, ptr %pallocated_frame_buf, align 8
  %tobool.not = icmp eq ptr %call31, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %call31 to i32
  %sub = add i32 %9, 255
  %div77 = and i32 %sub, -256
  %10 = inttoptr i32 %div77 to ptr
  %precv_frame_buf = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 5
  %11 = ptrtoint ptr %precv_frame_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %precv_frame_buf, align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end
  %precvframe.083 = phi ptr [ %10, %if.end ], [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ]
  %i.082 = phi i32 [ 0, %if.end ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %precvframe.083 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %precvframe.083, ptr %precvframe.083, align 4
  %prev.i80 = getelementptr inbounds %struct.list_head, ptr %precvframe.083, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i80 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %precvframe.083, ptr %prev.i80, align 4
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %precvframe.083, ptr noundef %15, ptr noundef %free_recv_queue) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %precvframe.083, ptr %prev.i, align 4
  %17 = ptrtoint ptr %precvframe.083 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %free_recv_queue, ptr %precvframe.083, align 4
  %18 = ptrtoint ptr %prev.i80 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev.i80, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %precvframe.083, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %call38 = tail call i32 @rtw_os_recv_resource_alloc(ptr noundef %padapter, ptr noundef %precvframe.083) #8
  %len = getelementptr inbounds %struct.recv_frame, ptr %precvframe.083, i32 0, i32 7
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %len, align 4
  %adapter39 = getelementptr inbounds %struct.recv_frame, ptr %precvframe.083, i32 0, i32 3
  %21 = ptrtoint ptr %adapter39 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %padapter, ptr %adapter39, align 4
  %incdec.ptr = getelementptr %struct.recv_frame, ptr %precvframe.083, i32 1
  %inc = add nuw nsw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %rx_pending_cnt = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 18
  %22 = ptrtoint ptr %rx_pending_cnt to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %rx_pending_cnt, align 8
  %allrxreturnevt = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 17
  %wait_list1.i = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 17, i32 2
  %23 = ptrtoint ptr %allrxreturnevt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %allrxreturnevt, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 17, i32 0, i32 1
  %24 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 17, i32 0, i32 2
  %25 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 17, i32 0, i32 3
  %26 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 17, i32 0, i32 4
  %27 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 17, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.16, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 17, i32 0, i32 4, i32 3
  %29 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 17, i32 0, i32 4, i32 4
  %30 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 17, i32 0, i32 4, i32 5
  %31 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 14)
  %32 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 17, i32 2, i32 1
  %33 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %call40 = tail call i32 @rtl8188eu_init_recv_priv(ptr noundef %padapter) #8
  %signal_stat_timer = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 37
  tail call void @init_timer_key(ptr noundef %signal_stat_timer, ptr noundef nonnull @rtw_signal_stat_timer_hdl, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @_rtw_init_recv_priv.__key.10) #8
  %signal_stat_sampling_interval = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 38
  %34 = ptrtoint ptr %signal_stat_sampling_interval to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1000, ptr %signal_stat_sampling_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %35, 100
  %call.i = tail call i32 @mod_timer(ptr noundef %signal_stat_timer, i32 noundef %add.i) #8
  br label %exit

exit:                                             ; preds = %for.end, %entry.exit_crit_edge
  %res.0 = phi i32 [ %call40, %for.end ], [ 0, %entry.exit_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_os_recv_resource_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_os_recv_resource_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8188eu_init_recv_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_signal_stat_timer_hdl(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_signal_dbg = getelementptr i8, ptr %t, i32 -24
  %0 = ptrtoint ptr %is_signal_dbg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_signal_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %signal_strength_dbg = getelementptr i8, ptr %t, i32 -23
  %2 = ptrtoint ptr %signal_strength_dbg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %signal_strength_dbg, align 1
  %signal_strength = getelementptr i8, ptr %t, i32 -20
  %4 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %signal_strength, align 8
  %conv = zext i8 %3 to i16
  %add.i = add nuw nsw i16 %conv, 1
  %shr.i = lshr i16 %add.i, 1
  %5 = trunc i16 %shr.i to i8
  %conv7 = add i8 %5, -95
  %rssi = getelementptr i8, ptr %t, i32 -22
  %6 = ptrtoint ptr %rssi to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv7, ptr %rssi, align 2
  br label %if.end74

if.else:                                          ; preds = %entry
  %signal_strength_data = getelementptr i8, ptr %t, i32 64
  %7 = ptrtoint ptr %signal_strength_data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %signal_strength_data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  br i1 %cmp, label %if.then11, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %avg_val = getelementptr i8, ptr %t, i32 65
  %9 = ptrtoint ptr %avg_val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %avg_val, align 1
  %11 = ptrtoint ptr %signal_strength_data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %signal_strength_data, align 4
  %phi.cast = zext i8 %10 to i16
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.else.if.end_crit_edge
  %avg_signal_strength.0 = phi i16 [ %phi.cast, %if.then11 ], [ 0, %if.else.if.end_crit_edge ]
  %signal_qual_data = getelementptr i8, ptr %t, i32 52
  %12 = ptrtoint ptr %signal_qual_data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %signal_qual_data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp17 = icmp eq i8 %13, 0
  br i1 %cmp17, label %if.then19, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %avg_val21 = getelementptr i8, ptr %t, i32 53
  %14 = ptrtoint ptr %avg_val21 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %avg_val21, align 1
  %16 = ptrtoint ptr %signal_qual_data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %signal_qual_data, align 8
  %phi.cast110 = zext i8 %15 to i16
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end.if.end24_crit_edge
  %avg_signal_qual.0 = phi i16 [ %phi.cast110, %if.then19 ], [ 0, %if.end.if.end24_crit_edge ]
  %fw_state.i = getelementptr i8, ptr %t, i32 -6960
  %17 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fw_state.i, align 4
  %19 = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool26.not = icmp eq i32 %19, 0
  br i1 %tobool26.not, label %if.then27, label %if.end24.if.end74_crit_edge

if.end24.if.end74_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %signal_strength30 = getelementptr i8, ptr %t, i32 -20
  %20 = ptrtoint ptr %signal_strength30 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %signal_strength30, align 8
  %conv31 = zext i8 %21 to i16
  %mul = shl nuw nsw i16 %conv31, 1
  %add = add nuw nsw i16 %mul, %avg_signal_strength.0
  %add.frozen = freeze i16 %add
  %div116 = udiv i16 %add.frozen, 3
  %22 = mul i16 %div116, 3
  %rem115.decomposed = sub i16 %add.frozen, %22
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem115.decomposed)
  %tobool33.not = icmp ne i16 %rem115.decomposed, 0
  %div.zext = zext i16 %div116 to i32
  %add36 = zext i1 %tobool33.not to i32
  %tmp_s.0 = add nuw nsw i32 %add36, %div.zext
  %23 = tail call i32 @llvm.umin.i32(i32 %tmp_s.0, i32 100)
  %signal_qual = getelementptr i8, ptr %t, i32 -19
  %24 = ptrtoint ptr %signal_qual to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %signal_qual, align 1
  %conv48 = zext i8 %25 to i16
  %mul49 = shl nuw nsw i16 %conv48, 1
  %add50 = add nuw nsw i16 %mul49, %avg_signal_qual.0
  %add50.frozen = freeze i16 %add50
  %div56118 = udiv i16 %add50.frozen, 3
  %26 = mul i16 %div56118, 3
  %rem52117.decomposed = sub i16 %add50.frozen, %26
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem52117.decomposed)
  %tobool53.not = icmp ne i16 %rem52117.decomposed, 0
  %div56.zext = zext i16 %div56118 to i32
  %add57 = zext i1 %tobool53.not to i32
  %tmp_q.0 = add nuw nsw i32 %add57, %div56.zext
  %27 = tail call i32 @llvm.umin.i32(i32 %tmp_q.0, i32 100)
  %conv66 = trunc i32 %23 to i8
  %28 = ptrtoint ptr %signal_strength30 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv66, ptr %signal_strength30, align 8
  %add.i111 = add nuw nsw i32 %23, 1
  %shr.i112 = lshr i32 %add.i111, 1
  %29 = trunc i32 %shr.i112 to i8
  %conv69 = add nuw nsw i8 %29, -95
  %rssi70 = getelementptr i8, ptr %t, i32 -22
  %30 = ptrtoint ptr %rssi70 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv69, ptr %rssi70, align 2
  %conv71 = trunc i32 %27 to i8
  %31 = ptrtoint ptr %signal_qual to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv71, ptr %signal_qual, align 1
  br label %if.end74

if.end74:                                         ; preds = %if.then27, %if.end24.if.end74_crit_edge, %if.then
  %signal_stat_sampling_interval = getelementptr i8, ptr %t, i32 48
  %32 = ptrtoint ptr %signal_stat_sampling_interval to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %signal_stat_sampling_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %mul.i = mul i32 %33, 100
  %div.i = udiv i32 %mul.i, 1000
  %add.i114 = add i32 %div.i, %34
  %call.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i114) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_free_recv_priv(ptr noundef %precvpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 7
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %call = tail call i32 @rtw_free_uc_swdec_pending_queue(ptr noundef %1)
  tail call void @rtw_os_recv_resource_free(ptr noundef %precvpriv) #8
  %pallocated_frame_buf = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 4
  %2 = ptrtoint ptr %pallocated_frame_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pallocated_frame_buf, align 8
  tail call void @vfree(ptr noundef %3) #8
  tail call void @rtl8188eu_free_recv_priv(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_free_uc_swdec_pending_queue(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %uc_swdec_pending_queue = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3
  %lock.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %0 = ptrtoint ptr %uc_swdec_pending_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %uc_swdec_pending_queue, align 4
  %cmp.i.not.i.i14 = icmp eq ptr %1, %uc_swdec_pending_queue
  br i1 %cmp.i.not.i.i14, label %entry.rtw_alloc_recvframe.exit.thread_crit_edge, label %if.else.i.i.lr.ph

entry.rtw_alloc_recvframe.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_alloc_recvframe.exit.thread

if.else.i.i.lr.ph:                                ; preds = %entry
  %free_recv_queue = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 1
  br label %if.else.i.i

rtw_alloc_recvframe.exit.thread:                  ; preds = %do.end6.rtw_alloc_recvframe.exit.thread_crit_edge, %entry.rtw_alloc_recvframe.exit.thread_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %entry.rtw_alloc_recvframe.exit.thread_crit_edge ], [ %inc, %do.end6.rtw_alloc_recvframe.exit.thread_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  br label %while.end

if.else.i.i:                                      ; preds = %do.end6.if.else.i.i_crit_edge, %if.else.i.i.lr.ph
  %2 = phi ptr [ %1, %if.else.i.i.lr.ph ], [ %17, %do.end6.if.else.i.i_crit_edge ]
  %cnt.015 = phi i32 [ 0, %if.else.i.i.lr.ph ], [ %inc, %do.end6.if.else.i.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.else.i.i.list_del_init.exit.i.i_crit_edge

if.else.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.else.i.i.list_del_init.exit.i.i_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %prev.i3.i.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.recv_frame, ptr %2, i32 0, i32 3
  %11 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i.i, align 4
  %tobool2.not.i.i = icmp ne ptr %12, null
  %free_recv_queue.i.i = getelementptr inbounds %struct.adapter, ptr %12, i32 0, i32 10, i32 1
  %cmp.i.i = icmp eq ptr %free_recv_queue.i.i, %uc_swdec_pending_queue
  %or.cond.i.i = select i1 %tobool2.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then4.i.i, label %list_del_init.exit.i.i.rtw_alloc_recvframe.exit_crit_edge

list_del_init.exit.i.i.rtw_alloc_recvframe.exit_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_alloc_recvframe.exit

if.then4.i.i:                                     ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %free_recvframe_cnt.i.i = getelementptr inbounds %struct.adapter, ptr %12, i32 0, i32 10, i32 6
  %13 = ptrtoint ptr %free_recvframe_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %free_recvframe_cnt.i.i, align 8
  %dec.i.i = add i32 %14, -1
  store i32 %dec.i.i, ptr %free_recvframe_cnt.i.i, align 8
  br label %rtw_alloc_recvframe.exit

rtw_alloc_recvframe.exit:                         ; preds = %if.then4.i.i, %list_del_init.exit.i.i.rtw_alloc_recvframe.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %rtw_alloc_recvframe.exit.while.end_crit_edge, label %while.body

rtw_alloc_recvframe.exit.while.end_crit_edge:     ; preds = %rtw_alloc_recvframe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %rtw_alloc_recvframe.exit
  %call2 = tail call i32 @rtw_free_recvframe(ptr noundef nonnull %2, ptr noundef %free_recv_queue)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %15 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp = icmp ugt i32 %15, 4
  br i1 %cmp, label %do.end, label %while.body.do.end6_crit_edge

while.body.do.end6_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %while.body.do.end6_crit_edge
  %inc = add i32 %cnt.015, 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %16 = ptrtoint ptr %uc_swdec_pending_queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %uc_swdec_pending_queue, align 4
  %cmp.i.not.i.i = icmp eq ptr %17, %uc_swdec_pending_queue
  br i1 %cmp.i.not.i.i, label %do.end6.rtw_alloc_recvframe.exit.thread_crit_edge, label %do.end6.if.else.i.i_crit_edge

do.end6.if.else.i.i_crit_edge:                    ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

do.end6.rtw_alloc_recvframe.exit.thread_crit_edge: ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_alloc_recvframe.exit.thread

while.end:                                        ; preds = %rtw_alloc_recvframe.exit.while.end_crit_edge, %rtw_alloc_recvframe.exit.thread
  %cnt.013 = phi i32 [ %cnt.0.lcssa, %rtw_alloc_recvframe.exit.thread ], [ %cnt.015, %rtw_alloc_recvframe.exit.while.end_crit_edge ]
  ret i32 %cnt.013
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_recv_resource_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188eu_free_recv_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @_rtw_alloc_recvframe(ptr noundef %pfree_recv_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pfree_recv_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pfree_recv_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %pfree_recv_queue
  br i1 %cmp.i.not, label %entry.if.end6_crit_edge, label %if.else

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.else:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
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
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  %adapter = getelementptr inbounds %struct.recv_frame, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 4
  %tobool2.not = icmp ne ptr %11, null
  %free_recv_queue = getelementptr inbounds %struct.adapter, ptr %11, i32 0, i32 10, i32 1
  %cmp = icmp eq ptr %free_recv_queue, %pfree_recv_queue
  %or.cond = select i1 %tobool2.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then4, label %list_del_init.exit.if.end6_crit_edge

list_del_init.exit.if.end6_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %free_recvframe_cnt = getelementptr inbounds %struct.adapter, ptr %11, i32 0, i32 10, i32 6
  %12 = ptrtoint ptr %free_recvframe_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %free_recvframe_cnt, align 8
  %dec = add i32 %13, -1
  store i32 %dec, ptr %free_recvframe_cnt, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %list_del_init.exit.if.end6_crit_edge, %entry.if.end6_crit_edge
  %hdr.0 = phi ptr [ %1, %if.then4 ], [ %1, %list_del_init.exit.if.end6_crit_edge ], [ null, %entry.if.end6_crit_edge ]
  ret ptr %hdr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_alloc_recvframe(ptr noundef %pfree_recv_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.__queue, ptr %pfree_recv_queue, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %0 = ptrtoint ptr %pfree_recv_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pfree_recv_queue, align 4
  %cmp.i.not.i = icmp eq ptr %1, %pfree_recv_queue
  br i1 %cmp.i.not.i, label %entry._rtw_alloc_recvframe.exit_crit_edge, label %if.else.i

entry._rtw_alloc_recvframe.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtw_alloc_recvframe.exit

if.else.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.list_del_init.exit.i_crit_edge

if.else.i.list_del_init.exit.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.else.i.list_del_init.exit.i_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i.i, align 4
  %adapter.i = getelementptr inbounds %struct.recv_frame, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i, align 4
  %tobool2.not.i = icmp ne ptr %11, null
  %free_recv_queue.i = getelementptr inbounds %struct.adapter, ptr %11, i32 0, i32 10, i32 1
  %cmp.i = icmp eq ptr %free_recv_queue.i, %pfree_recv_queue
  %or.cond.i = select i1 %tobool2.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.then4.i, label %list_del_init.exit.i._rtw_alloc_recvframe.exit_crit_edge

list_del_init.exit.i._rtw_alloc_recvframe.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtw_alloc_recvframe.exit

if.then4.i:                                       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %free_recvframe_cnt.i = getelementptr inbounds %struct.adapter, ptr %11, i32 0, i32 10, i32 6
  %12 = ptrtoint ptr %free_recvframe_cnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %free_recvframe_cnt.i, align 8
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %free_recvframe_cnt.i, align 8
  br label %_rtw_alloc_recvframe.exit

_rtw_alloc_recvframe.exit:                        ; preds = %if.then4.i, %list_del_init.exit.i._rtw_alloc_recvframe.exit_crit_edge, %entry._rtw_alloc_recvframe.exit_crit_edge
  %hdr.0.i = phi ptr [ %1, %if.then4.i ], [ %1, %list_del_init.exit.i._rtw_alloc_recvframe.exit_crit_edge ], [ null, %entry._rtw_alloc_recvframe.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  ret ptr %hdr.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_free_recvframe(ptr noundef %precvframe, ptr noundef %pfree_recv_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %precvframe, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %adapter = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %pkt = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 1
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pkt, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %3, i32 noundef 1) #8
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pkt, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %lock = getelementptr inbounds %struct.__queue, ptr %pfree_recv_queue, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %precvframe) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_del_init.exit_crit_edge

if.end5.list_del_init.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %precvframe, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %precvframe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %precvframe, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end5.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %precvframe to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %precvframe, ptr %precvframe, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %precvframe, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %precvframe, ptr %prev.i3.i, align 4
  %len = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 7
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %len, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pfree_recv_queue, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i26 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %precvframe, ptr noundef %15, ptr noundef %pfree_recv_queue) #8
  br i1 %call.i.i26, label %if.end.i.i27, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i27:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %precvframe, ptr %prev.i, align 4
  %17 = ptrtoint ptr %precvframe to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pfree_recv_queue, ptr %precvframe, align 4
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev.i3.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %precvframe, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i27, %list_del_init.exit.list_add_tail.exit_crit_edge
  %tobool7.not = icmp ne ptr %1, null
  %free_recv_queue = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 1
  %cmp = icmp eq ptr %free_recv_queue, %pfree_recv_queue
  %or.cond = select i1 %tobool7.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then9, label %list_add_tail.exit.if.end11_crit_edge

list_add_tail.exit.if.end11_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %free_recvframe_cnt = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 6
  %20 = ptrtoint ptr %free_recvframe_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %free_recvframe_cnt, align 8
  %inc = add i32 %21, 1
  store i32 %inc, ptr %free_recvframe_cnt, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %list_add_tail.exit.if.end11_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_enqueue_recvframe(ptr noundef %precvframe, ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %precvframe) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %precvframe, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %precvframe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %precvframe, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %precvframe to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %precvframe, ptr %precvframe, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %precvframe, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %precvframe, ptr %prev.i3.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %queue, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i9 = tail call zeroext i1 @__list_add_valid(ptr noundef %precvframe, ptr noundef %11, ptr noundef %queue) #8
  br i1 %call.i.i9, label %if.end.i.i10, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i10:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %precvframe, ptr %prev.i, align 4
  %13 = ptrtoint ptr %precvframe to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %queue, ptr %precvframe, align 4
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev.i3.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %precvframe, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i10, %list_del_init.exit.list_add_tail.exit_crit_edge
  %tobool.not = icmp ne ptr %1, null
  %free_recv_queue = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 1
  %cmp = icmp eq ptr %free_recv_queue, %queue
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then2, label %list_add_tail.exit.if.end3_crit_edge

list_add_tail.exit.if.end3_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %free_recvframe_cnt = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 6
  %16 = ptrtoint ptr %free_recvframe_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %free_recvframe_cnt, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %free_recvframe_cnt, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %list_add_tail.exit.if.end3_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_enqueue_recvframe(ptr noundef %precvframe, ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.__queue, ptr %queue, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %adapter.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 3
  %0 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %precvframe) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.list_del_init.exit.i_crit_edge

entry.list_del_init.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %precvframe, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %precvframe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %precvframe, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %entry.list_del_init.exit.i_crit_edge
  %8 = ptrtoint ptr %precvframe to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %precvframe, ptr %precvframe, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %precvframe, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %precvframe, ptr %prev.i3.i.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %queue, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i9.i = tail call zeroext i1 @__list_add_valid(ptr noundef %precvframe, ptr noundef %11, ptr noundef %queue) #8
  br i1 %call.i.i9.i, label %if.end.i.i10.i, label %list_del_init.exit.i.list_add_tail.exit.i_crit_edge

list_del_init.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i10.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %precvframe, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %precvframe to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %queue, ptr %precvframe, align 4
  %14 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev.i3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %precvframe, ptr %11, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i10.i, %list_del_init.exit.i.list_add_tail.exit.i_crit_edge
  %tobool.not.i = icmp ne ptr %1, null
  %free_recv_queue.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 1
  %cmp.i = icmp eq ptr %free_recv_queue.i, %queue
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.then2.i, label %list_add_tail.exit.i._rtw_enqueue_recvframe.exit_crit_edge

list_add_tail.exit.i._rtw_enqueue_recvframe.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtw_enqueue_recvframe.exit

if.then2.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %free_recvframe_cnt.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 6
  %16 = ptrtoint ptr %free_recvframe_cnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %free_recvframe_cnt.i, align 8
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %free_recvframe_cnt.i, align 8
  br label %_rtw_enqueue_recvframe.exit

_rtw_enqueue_recvframe.exit:                      ; preds = %if.then2.i, %list_add_tail.exit.i._rtw_enqueue_recvframe.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_recvframe_queue(ptr noundef %pframequeue, ptr noundef %pfree_recv_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.__queue, ptr %pframequeue, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %0 = ptrtoint ptr %pframequeue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pframequeue, align 4
  %cmp.not9 = icmp eq ptr %1, %pframequeue
  br i1 %cmp.not9, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %plist.010 = phi ptr [ %3, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %plist.010 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plist.010, align 4
  %call2 = tail call i32 @rtw_free_recvframe(ptr noundef %plist.010, ptr noundef %pfree_recv_queue)
  %cmp.not = icmp eq ptr %3, %pframequeue
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @process_pwrbit_data(ptr noundef %padapter, ptr noundef %precv_frame) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_data = getelementptr inbounds %struct.recv_frame, ptr %precv_frame, i32 0, i32 9
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_data, align 4
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %src = getelementptr inbounds %struct.recv_frame, ptr %precv_frame, i32 0, i32 6, i32 24
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %src) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = and i16 %3, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool3.not = icmp eq i16 %4, 0
  %state8 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 7
  %5 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state8, align 4
  %and9 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  br i1 %tobool10.not, label %if.then7, label %if.then4.if.end14_crit_edge

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @stop_sta_xmit(ptr noundef %padapter, ptr noundef nonnull %call) #8
  br label %if.end14

if.else:                                          ; preds = %if.then
  br i1 %tobool10.not, label %if.else.if.end14_crit_edge, label %if.then11

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @wakeup_sta_to_xmit(ptr noundef %padapter, ptr noundef nonnull %call) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.else.if.end14_crit_edge, %if.then7, %if.then4.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_sta_xmit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_sta_to_xmit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sta2sta_data_frame(ptr noundef %adapter, ptr noundef %precv_frame, ptr nocapture noundef writeonly %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_data = getelementptr inbounds %struct.recv_frame, ptr %precv_frame, i32 0, i32 9
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_data, align 4
  %stapriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %MacAddress.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 1
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 15, i32 4
  %dst = getelementptr inbounds %struct.recv_frame, ptr %precv_frame, i32 0, i32 6, i32 23
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i = icmp ne i32 %4, 0
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_state.i, align 4
  %7 = and i32 %6, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %src = getelementptr inbounds %struct.recv_frame, ptr %precv_frame, i32 0, i32 6, i32 24
  %bcmp137 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i, ptr noundef dereferenceable(6) %src, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp137)
  %tobool8.not = icmp eq i32 %bcmp137, 0
  br i1 %tobool8.not, label %if.then.exit_crit_edge, label %if.end

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end:                                           ; preds = %if.then
  %bcmp138 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i, ptr noundef dereferenceable(6) %dst, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp138)
  %tobool13.not = icmp eq i32 %bcmp138, 0
  %brmerge = select i1 %tobool13.not, i1 true, i1 %tobool.i
  br i1 %brmerge, label %if.end16, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end16:                                         ; preds = %if.end
  %bssid = getelementptr inbounds %struct.recv_frame, ptr %precv_frame, i32 0, i32 6, i32 27
  %bcmp139 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %bssid, ptr noundef nonnull dereferenceable(6) @.str.15, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp139)
  %tobool19.not = icmp eq i32 %bcmp139, 0
  br i1 %tobool19.not, label %if.end16.exit_crit_edge, label %lor.lhs.false20

if.end16.exit_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

lor.lhs.false20:                                  ; preds = %if.end16
  %bcmp140 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress.i, ptr noundef nonnull dereferenceable(6) @.str.15, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp140)
  %tobool22.not = icmp eq i32 %bcmp140, 0
  br i1 %tobool22.not, label %lor.lhs.false20.exit_crit_edge, label %lor.lhs.false23

lor.lhs.false20.exit_crit_edge:                   ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %bcmp141 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %bssid, ptr noundef dereferenceable(6) %MacAddress.i, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp141)
  %tobool27.not = icmp eq i32 %bcmp141, 0
  br i1 %tobool27.not, label %lor.lhs.false23.if.end90_crit_edge, label %lor.lhs.false23.exit_crit_edge

lor.lhs.false23.exit_crit_edge:                   ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

lor.lhs.false23.if.end90_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.else:                                          ; preds = %entry
  %9 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool33.not = icmp eq i32 %9, 0
  br i1 %tobool33.not, label %if.else45, label %if.then34

if.then34:                                        ; preds = %if.else
  %bssid35 = getelementptr inbounds %struct.recv_frame, ptr %precv_frame, i32 0, i32 6, i32 27
  %src37 = getelementptr inbounds %struct.recv_frame, ptr %precv_frame, i32 0, i32 6, i32 24
  %bcmp136 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %bssid35, ptr noundef dereferenceable(6) %src37, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp136)
  %tobool40.not = icmp eq i32 %bcmp136, 0
  br i1 %tobool40.not, label %if.then34.if.end90_crit_edge, label %if.then34.exit_crit_edge

if.then34.exit_crit_edge:                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then34.if.end90_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.else45:                                        ; preds = %if.else
  %10 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool47.not = icmp eq i32 %10, 0
  br i1 %tobool47.not, label %if.else68, label %if.then48

if.then48:                                        ; preds = %if.else45
  %bssid51 = getelementptr inbounds %struct.recv_frame, ptr %precv_frame, i32 0, i32 6, i32 27
  br i1 %tobool.i, label %if.then50, label %if.else56

if.then50:                                        ; preds = %if.then48
  %11 = ptrtoint ptr %bssid51 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bssid51, align 4
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i154.not = icmp eq i32 %13, 0
  br i1 %tobool.i154.not, label %if.then50.exit_crit_edge, label %if.then50.if.then92_crit_edge

if.then50.if.then92_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.then50.exit_crit_edge:                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.else56:                                        ; preds = %if.then48
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %bssid51, ptr noundef dereferenceable(6) %dst, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool62.not = icmp eq i32 %bcmp, 0
  br i1 %tobool62.not, label %if.end90.thread162, label %if.else56.exit_crit_edge

if.else56.exit_crit_edge:                         ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end90.thread162:                               ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #10
  %src65 = getelementptr inbounds %struct.recv_frame, ptr %precv_frame, i32 0, i32 6, i32 24
  br label %if.else94

if.else68:                                        ; preds = %if.else45
  %14 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool70.not = icmp eq i32 %14, 0
  br i1 %tobool70.not, label %if.else68.if.end90_crit_edge, label %if.then71

if.else68.if.end90_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then71:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  %add = add i32 %15, 4
  %16 = inttoptr i32 %add to ptr
  %17 = call ptr @memcpy(ptr %dst, ptr %16, i32 6)
  %src74 = getelementptr inbounds %struct.recv_frame, ptr %precv_frame, i32 0, i32 6, i32 24
  %add76 = add i32 %15, 10
  %18 = inttoptr i32 %add76 to ptr
  %19 = call ptr @memcpy(ptr %src74, ptr %18, i32 6)
  %bssid77 = getelementptr inbounds %struct.recv_frame, ptr %precv_frame, i32 0, i32 6, i32 27
  %add79 = add i32 %15, 16
  %20 = inttoptr i32 %add79 to ptr
  %21 = call ptr @memcpy(ptr %bssid77, ptr %20, i32 6)
  %ra = getelementptr inbounds %struct.recv_frame, ptr %precv_frame, i32 0, i32 6, i32 26
  %22 = call ptr @memcpy(ptr %ra, ptr %dst, i32 6)
  %ta = getelementptr inbounds %struct.recv_frame, ptr %precv_frame, i32 0, i32 6, i32 25
  %23 = call ptr @memcpy(ptr %ta, ptr %src74, i32 6)
  br label %if.end90

if.end90:                                         ; preds = %if.then71, %if.else68.if.end90_crit_edge, %if.then34.if.end90_crit_edge, %lor.lhs.false23.if.end90_crit_edge
  %ret.0 = phi i32 [ 1, %if.then71 ], [ 1, %lor.lhs.false23.if.end90_crit_edge ], [ 1, %if.then34.if.end90_crit_edge ], [ 0, %if.else68.if.end90_crit_edge ]
  %sta_addr.0 = phi ptr [ %MacAddress.i, %if.then71 ], [ %src, %lor.lhs.false23.if.end90_crit_edge ], [ %bssid35, %if.then34.if.end90_crit_edge ], [ null, %if.else68.if.end90_crit_edge ]
  br i1 %tobool.i, label %if.end90.if.then92_crit_edge, label %if.end90.if.else94_crit_edge

if.end90.if.else94_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else94

if.end90.if.then92_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.then92:                                        ; preds = %if.end90.if.then92_crit_edge, %if.then50.if.then92_crit_edge
  %ret.0161 = phi i32 [ %ret.0, %if.end90.if.then92_crit_edge ], [ 1, %if.then50.if.then92_crit_edge ]
  %call93 = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %adapter) #8
  br label %exit.sink.split

if.else94:                                        ; preds = %if.end90.if.else94_crit_edge, %if.end90.thread162
  %sta_addr.0166 = phi ptr [ %src65, %if.end90.thread162 ], [ %sta_addr.0, %if.end90.if.else94_crit_edge ]
  %ret.0165 = phi i32 [ 1, %if.end90.thread162 ], [ %ret.0, %if.end90.if.else94_crit_edge ]
  %call95 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %sta_addr.0166) #8
  br label %exit.sink.split

exit.sink.split:                                  ; preds = %if.else94, %if.then92
  %call93.sink = phi ptr [ %call93, %if.then92 ], [ %call95, %if.else94 ]
  %ret.1.ph = phi i32 [ %ret.0161, %if.then92 ], [ %ret.0165, %if.else94 ]
  %24 = ptrtoint ptr %psta to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call93.sink, ptr %psta, align 4
  br label %exit

exit:                                             ; preds = %exit.sink.split, %if.else56.exit_crit_edge, %if.then50.exit_crit_edge, %if.then34.exit_crit_edge, %lor.lhs.false23.exit_crit_edge, %lor.lhs.false20.exit_crit_edge, %if.end16.exit_crit_edge, %if.end.exit_crit_edge, %if.then.exit_crit_edge
  %ret.1 = phi i32 [ 0, %if.then.exit_crit_edge ], [ 0, %if.end.exit_crit_edge ], [ 0, %lor.lhs.false23.exit_crit_edge ], [ 0, %lor.lhs.false20.exit_crit_edge ], [ 0, %if.end16.exit_crit_edge ], [ 0, %if.then34.exit_crit_edge ], [ 0, %if.then50.exit_crit_edge ], [ 0, %if.else56.exit_crit_edge ], [ %ret.1.ph, %exit.sink.split ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_bcmc_stainfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @recvframe_chk_defrag(ptr noundef %padapter, ptr noundef %precv_frame) local_unnamed_addr #0 align 64 {
entry:
  %miccode.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %free_recv_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 1
  %mfrag = getelementptr inbounds %struct.recv_frame, ptr %precv_frame, i32 0, i32 6, i32 13
  %0 = ptrtoint ptr %mfrag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mfrag, align 1
  %frag_num = getelementptr inbounds %struct.recv_frame, ptr %precv_frame, i32 0, i32 6, i32 12
  %2 = ptrtoint ptr %frag_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %frag_num, align 2
  %ta = getelementptr inbounds %struct.recv_frame, ptr %precv_frame, i32 0, i32 6, i32 25
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ta) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then:                                          ; preds = %entry
  %rx_data = getelementptr inbounds %struct.recv_frame, ptr %precv_frame, i32 0, i32 9
  %4 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %8 = and i16 %7, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %8)
  %cmp.not = icmp eq i16 %8, 2048
  br i1 %cmp.not, label %if.end11.thread, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %entry.if.end11_crit_edge
  %call.pn = phi ptr [ %call7, %if.then6 ], [ %call, %entry.if.end11_crit_edge ]
  %pdefrag_q.1 = getelementptr inbounds %struct.sta_info, ptr %call.pn, i32 0, i32 4, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp13 = icmp eq i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp16 = icmp eq i8 %3, 0
  %or.cond = select i1 %cmp13, i1 %cmp16, i1 false
  %prtnframe.0 = select i1 %or.cond, ptr %precv_frame, ptr null
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp21 = icmp eq i8 %1, 1
  br i1 %cmp21, label %if.then23, label %if.end11.if.end44_crit_edge

if.end11.if.end44_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.end11.thread:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp13154 = icmp eq i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp16155 = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp21158 = icmp eq i8 %1, 1
  br i1 %cmp21158, label %if.end11.thread.if.else36_crit_edge, label %if.end44.thread

if.end11.thread.if.else36_crit_edge:              ; preds = %if.end11.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else36

if.then23:                                        ; preds = %if.end11
  %tobool24.not = icmp eq ptr %pdefrag_q.1, null
  br i1 %tobool24.not, label %if.then23.if.else36_crit_edge, label %if.then25

if.then23.if.else36_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else36

if.then25:                                        ; preds = %if.then23
  br i1 %cmp16, label %if.then29, label %if.then25.if.end34_crit_edge

if.then25.if.end34_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then29:                                        ; preds = %if.then25
  %9 = ptrtoint ptr %pdefrag_q.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %pdefrag_q.1, align 4
  %cmp.i.not = icmp eq ptr %10, %pdefrag_q.1
  br i1 %cmp.i.not, label %if.then29.if.end34_crit_edge, label %if.then32

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then32:                                        ; preds = %if.then29
  %lock.i = getelementptr inbounds %struct.sta_info, ptr %call.pn, i32 0, i32 4, i32 2, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #8
  %11 = ptrtoint ptr %pdefrag_q.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdefrag_q.1, align 4
  %cmp.not9.i = icmp eq ptr %12, %pdefrag_q.1
  br i1 %cmp.not9.i, label %if.then32.rtw_free_recvframe_queue.exit_crit_edge, label %if.then32.while.body.i_crit_edge

if.then32.while.body.i_crit_edge:                 ; preds = %if.then32
  br label %while.body.i

if.then32.rtw_free_recvframe_queue.exit_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_free_recvframe_queue.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then32.while.body.i_crit_edge
  %plist.010.i = phi ptr [ %14, %while.body.i.while.body.i_crit_edge ], [ %12, %if.then32.while.body.i_crit_edge ]
  %13 = ptrtoint ptr %plist.010.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plist.010.i, align 4
  %call2.i = tail call i32 @rtw_free_recvframe(ptr noundef %plist.010.i, ptr noundef %free_recv_queue) #8
  %cmp.not.i = icmp eq ptr %14, %pdefrag_q.1
  br i1 %cmp.not.i, label %while.body.i.rtw_free_recvframe_queue.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.rtw_free_recvframe_queue.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_free_recvframe_queue.exit

rtw_free_recvframe_queue.exit:                    ; preds = %while.body.i.rtw_free_recvframe_queue.exit_crit_edge, %if.then32.rtw_free_recvframe_queue.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #8
  br label %if.end34

if.end34:                                         ; preds = %rtw_free_recvframe_queue.exit, %if.then29.if.end34_crit_edge, %if.then25.if.end34_crit_edge
  %prev.i = getelementptr inbounds %struct.sta_info, ptr %call.pn, i32 0, i32 4, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %precv_frame, ptr noundef %16, ptr noundef nonnull %pdefrag_q.1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end34.if.end44_crit_edge

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.end.i.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %precv_frame, ptr %prev.i, align 4
  %18 = ptrtoint ptr %precv_frame to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pdefrag_q.1, ptr %precv_frame, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %precv_frame, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %precv_frame, ptr %16, align 4
  br label %if.end44

if.else36:                                        ; preds = %if.then23.if.else36_crit_edge, %if.end11.thread.if.else36_crit_edge
  %cmp13164172 = phi i1 [ %cmp13, %if.then23.if.else36_crit_edge ], [ %cmp13154, %if.end11.thread.if.else36_crit_edge ]
  %cmp16165171 = phi i1 [ %cmp16, %if.then23.if.else36_crit_edge ], [ %cmp16155, %if.end11.thread.if.else36_crit_edge ]
  %tobool37.not = icmp eq ptr %precv_frame, null
  %tobool39.not = icmp eq ptr %free_recv_queue, null
  %or.cond124 = select i1 %tobool37.not, i1 true, i1 %tobool39.not
  br i1 %or.cond124, label %if.else36.if.end44_crit_edge, label %if.then40

if.else36.if.end44_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then40:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = tail call i32 @rtw_free_recvframe(ptr noundef nonnull %precv_frame, ptr noundef nonnull %free_recv_queue)
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.else36.if.end44_crit_edge, %if.end.i.i, %if.end34.if.end44_crit_edge, %if.end11.if.end44_crit_edge
  %cmp16166 = phi i1 [ %cmp16, %if.end11.if.end44_crit_edge ], [ %cmp16165171, %if.then40 ], [ %cmp16165171, %if.else36.if.end44_crit_edge ], [ %cmp16, %if.end34.if.end44_crit_edge ], [ %cmp16, %if.end.i.i ]
  %cmp13163 = phi i1 [ %cmp13, %if.end11.if.end44_crit_edge ], [ %cmp13164172, %if.then40 ], [ %cmp13164172, %if.else36.if.end44_crit_edge ], [ %cmp13, %if.end34.if.end44_crit_edge ], [ %cmp13, %if.end.i.i ]
  %pdefrag_q.1160 = phi ptr [ %pdefrag_q.1, %if.end11.if.end44_crit_edge ], [ null, %if.then40 ], [ null, %if.else36.if.end44_crit_edge ], [ %pdefrag_q.1, %if.end34.if.end44_crit_edge ], [ %pdefrag_q.1, %if.end.i.i ]
  %prtnframe.1 = phi ptr [ %prtnframe.0, %if.end11.if.end44_crit_edge ], [ null, %if.then40 ], [ null, %if.else36.if.end44_crit_edge ], [ null, %if.end34.if.end44_crit_edge ], [ null, %if.end.i.i ]
  %cmp13.not = xor i1 %cmp13163, true
  %or.cond125 = select i1 %cmp13.not, i1 true, i1 %cmp16166
  br i1 %or.cond125, label %if.end44.if.end66_crit_edge, label %if.then52

if.end44.if.end66_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.end44.thread:                                  ; preds = %if.end11.thread
  %or.cond156 = select i1 %cmp13154, i1 %cmp16155, i1 false
  %prtnframe.0157 = select i1 %or.cond156, ptr %precv_frame, ptr null
  %cmp13.not178 = xor i1 %cmp13154, true
  %or.cond125179 = select i1 %cmp13.not178, i1 true, i1 %cmp16155
  br i1 %or.cond125179, label %if.end44.thread.if.end66_crit_edge, label %if.end44.thread.if.else58_crit_edge

if.end44.thread.if.else58_crit_edge:              ; preds = %if.end44.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else58

if.end44.thread.if.end66_crit_edge:               ; preds = %if.end44.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then52:                                        ; preds = %if.end44
  %tobool53.not = icmp eq ptr %pdefrag_q.1160, null
  br i1 %tobool53.not, label %if.then52.if.else58_crit_edge, label %if.then54

if.then52.if.else58_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else58

if.then54:                                        ; preds = %if.then52
  %prev.i128 = getelementptr inbounds %struct.list_head, ptr %pdefrag_q.1160, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i128 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i128, align 4
  %call.i.i129 = tail call zeroext i1 @__list_add_valid(ptr noundef %precv_frame, ptr noundef %22, ptr noundef nonnull %pdefrag_q.1160) #8
  br i1 %call.i.i129, label %if.end.i.i131, label %if.then54.list_add_tail.exit132_crit_edge

if.then54.list_add_tail.exit132_crit_edge:        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit132

if.end.i.i131:                                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %prev.i128 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %precv_frame, ptr %prev.i128, align 4
  %24 = ptrtoint ptr %precv_frame to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pdefrag_q.1160, ptr %precv_frame, align 4
  %prev3.i.i130 = getelementptr inbounds %struct.list_head, ptr %precv_frame, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i130 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i130, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %precv_frame, ptr %22, align 4
  br label %list_add_tail.exit132

list_add_tail.exit132:                            ; preds = %if.end.i.i131, %if.then54.list_add_tail.exit132_crit_edge
  %27 = ptrtoint ptr %pdefrag_q.1160 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdefrag_q.1160, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %28) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_add_tail.exit132.list_del_init.exit.i_crit_edge

list_add_tail.exit132.list_del_init.exit.i_crit_edge: ; preds = %list_add_tail.exit132
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %list_add_tail.exit132
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %list_add_tail.exit132.list_del_init.exit.i_crit_edge
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %28, ptr %28, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %28, ptr %prev.i3.i.i, align 4
  %frag_num.i = getelementptr inbounds %struct.recv_frame, ptr %28, i32 0, i32 6, i32 12
  %37 = ptrtoint ptr %frag_num.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %frag_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp.not.i133 = icmp eq i8 %38, 0
  br i1 %cmp.not.i133, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %list_del_init.exit.i
  %call3.i = tail call i32 @rtw_free_recvframe(ptr noundef %28, ptr noundef %free_recv_queue) #8
  %lock.i.i = getelementptr inbounds %struct.__queue, ptr %pdefrag_q.1160, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #8
  %39 = ptrtoint ptr %pdefrag_q.1160 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdefrag_q.1160, align 4
  %cmp.not9.i.i = icmp eq ptr %40, %pdefrag_q.1160
  br i1 %cmp.not9.i.i, label %if.then.i.recvframe_defrag.exit_crit_edge, label %if.then.i.while.body.i.i_crit_edge

if.then.i.while.body.i.i_crit_edge:               ; preds = %if.then.i
  br label %while.body.i.i

if.then.i.recvframe_defrag.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %recvframe_defrag.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i.while.body.i.i_crit_edge
  %plist.010.i.i = phi ptr [ %42, %while.body.i.i.while.body.i.i_crit_edge ], [ %40, %if.then.i.while.body.i.i_crit_edge ]
  %41 = ptrtoint ptr %plist.010.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %plist.010.i.i, align 4
  %call2.i.i = tail call i32 @rtw_free_recvframe(ptr noundef %plist.010.i.i, ptr noundef %free_recv_queue) #8
  %cmp.not.i.i = icmp eq ptr %42, %pdefrag_q.1160
  br i1 %cmp.not.i.i, label %while.body.i.i.recvframe_defrag.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.recvframe_defrag.exit_crit_edge:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %recvframe_defrag.exit

if.end.i:                                         ; preds = %list_del_init.exit.i
  %43 = ptrtoint ptr %pdefrag_q.1160 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdefrag_q.1160, align 4
  %call.i.i87.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %44) #8
  br i1 %call.i.i87.i, label %if.end.i.i90.i, label %if.end.i.list_del_init.exit92.i_crit_edge

if.end.i.list_del_init.exit92.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit92.i

if.end.i.i90.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i88.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i88.i, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  %prev1.i.i.i89.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i89.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i89.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del_init.exit92.i

list_del_init.exit92.i:                           ; preds = %if.end.i.i90.i, %if.end.i.list_del_init.exit92.i_crit_edge
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %44, ptr %44, align 4
  %prev.i3.i91.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i3.i91.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %44, ptr %prev.i3.i91.i, align 4
  %cmp11.not129.i = icmp eq ptr %44, %pdefrag_q.1160
  br i1 %cmp11.not129.i, label %list_del_init.exit92.i.while.end.i_crit_edge, label %while.body.lr.ph.i

list_del_init.exit92.i.while.end.i_crit_edge:     ; preds = %list_del_init.exit92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %list_del_init.exit92.i
  %icv_len.i = getelementptr inbounds %struct.recv_frame, ptr %44, i32 0, i32 6, i32 19
  %cmp.i100.i = icmp eq ptr %44, null
  %rx_tail.i101.i = getelementptr inbounds %struct.recv_frame, ptr %44, i32 0, i32 10
  %rx_data.i103.i = getelementptr inbounds %struct.recv_frame, ptr %44, i32 0, i32 9
  %len.i107.i = getelementptr inbounds %struct.recv_frame, ptr %44, i32 0, i32 7
  %rx_end.i.i = getelementptr inbounds %struct.recv_frame, ptr %44, i32 0, i32 11
  br label %while.body.i134

while.body.i134:                                  ; preds = %recvframe_put.exit.i.while.body.i134_crit_edge, %while.body.lr.ph.i
  %curfragnum.0132.i = phi i8 [ 1, %while.body.lr.ph.i ], [ %inc25.i, %recvframe_put.exit.i.while.body.i134_crit_edge ]
  %plist.0130.i = phi ptr [ %44, %while.body.lr.ph.i ], [ %plist.0.pr.i, %recvframe_put.exit.i.while.body.i134_crit_edge ]
  %frag_num18.i = getelementptr inbounds %struct.recv_frame, ptr %plist.0130.i, i32 0, i32 6, i32 12
  %53 = ptrtoint ptr %frag_num18.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %frag_num18.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %curfragnum.0132.i, i8 %54)
  %cmp20.not.i = icmp eq i8 %curfragnum.0132.i, %54
  br i1 %cmp20.not.i, label %if.end24.i, label %if.then22.i

if.then22.i:                                      ; preds = %while.body.i134
  %call23.i = tail call i32 @rtw_free_recvframe(ptr noundef %44, ptr noundef %free_recv_queue) #8
  %lock.i93.i = getelementptr inbounds %struct.__queue, ptr %pdefrag_q.1160, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i93.i) #8
  %55 = ptrtoint ptr %pdefrag_q.1160 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdefrag_q.1160, align 4
  %cmp.not9.i94.i = icmp eq ptr %56, %pdefrag_q.1160
  br i1 %cmp.not9.i94.i, label %if.then22.i.recvframe_defrag.exit_crit_edge, label %if.then22.i.while.body.i98.i_crit_edge

if.then22.i.while.body.i98.i_crit_edge:           ; preds = %if.then22.i
  br label %while.body.i98.i

if.then22.i.recvframe_defrag.exit_crit_edge:      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %recvframe_defrag.exit

while.body.i98.i:                                 ; preds = %while.body.i98.i.while.body.i98.i_crit_edge, %if.then22.i.while.body.i98.i_crit_edge
  %plist.010.i95.i = phi ptr [ %58, %while.body.i98.i.while.body.i98.i_crit_edge ], [ %56, %if.then22.i.while.body.i98.i_crit_edge ]
  %57 = ptrtoint ptr %plist.010.i95.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %plist.010.i95.i, align 4
  %call2.i96.i = tail call i32 @rtw_free_recvframe(ptr noundef %plist.010.i95.i, ptr noundef %free_recv_queue) #8
  %cmp.not.i97.i = icmp eq ptr %58, %pdefrag_q.1160
  br i1 %cmp.not.i97.i, label %while.body.i98.i.recvframe_defrag.exit_crit_edge, label %while.body.i98.i.while.body.i98.i_crit_edge

while.body.i98.i.while.body.i98.i_crit_edge:      ; preds = %while.body.i98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i98.i

while.body.i98.i.recvframe_defrag.exit_crit_edge: ; preds = %while.body.i98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %recvframe_defrag.exit

if.end24.i:                                       ; preds = %while.body.i134
  %inc25.i = add i8 %curfragnum.0132.i, 1
  %hdrlen.i = getelementptr inbounds %struct.recv_frame, ptr %plist.0130.i, i32 0, i32 6, i32 4
  %59 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %hdrlen.i, align 1
  %iv_len.i = getelementptr inbounds %struct.recv_frame, ptr %plist.0130.i, i32 0, i32 6, i32 18
  %61 = ptrtoint ptr %iv_len.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %iv_len.i, align 4
  %add.i = add i8 %62, %60
  %conv31.i = zext i8 %add.i to i32
  %cmp.i.i = icmp eq ptr %plist.0130.i, null
  br i1 %cmp.i.i, label %if.end24.i.recvframe_pull.exit.i_crit_edge, label %if.end.i.i135

if.end24.i.recvframe_pull.exit.i_crit_edge:       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %recvframe_pull.exit.i

if.end.i.i135:                                    ; preds = %if.end24.i
  %rx_data.i.i = getelementptr inbounds %struct.recv_frame, ptr %plist.0130.i, i32 0, i32 9
  %63 = ptrtoint ptr %rx_data.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rx_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %64, i32 %conv31.i
  store ptr %add.ptr.i.i, ptr %rx_data.i.i, align 4
  %rx_tail.i.i = getelementptr inbounds %struct.recv_frame, ptr %plist.0130.i, i32 0, i32 10
  %65 = ptrtoint ptr %rx_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rx_tail.i.i, align 4
  %cmp2.i.i = icmp ugt ptr %add.ptr.i.i, %66
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end6.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i135
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %rx_data.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %rx_data.i.i, align 4
  br label %recvframe_pull.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i135
  call void @__sanitizer_cov_trace_pc() #10
  %len.i.i = getelementptr inbounds %struct.recv_frame, ptr %plist.0130.i, i32 0, i32 7
  %68 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len.i.i, align 4
  %sub.i.i = sub i32 %69, %conv31.i
  store i32 %sub.i.i, ptr %len.i.i, align 4
  br label %recvframe_pull.exit.i

recvframe_pull.exit.i:                            ; preds = %if.end6.i.i, %if.then3.i.i, %if.end24.i.recvframe_pull.exit.i_crit_edge
  %70 = ptrtoint ptr %icv_len.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %icv_len.i, align 1
  %conv34.i = zext i8 %71 to i32
  %72 = ptrtoint ptr %rx_tail.i101.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx_tail.i101.i, align 4
  br i1 %cmp.i100.i, label %recvframe_pull_tail.exit.i, label %if.end.i105.i

if.end.i105.i:                                    ; preds = %recvframe_pull.exit.i
  %idx.neg.i.i = sub nsw i32 0, %conv34.i
  %add.ptr.i102.i = getelementptr i8, ptr %73, i32 %idx.neg.i.i
  %74 = ptrtoint ptr %rx_tail.i101.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr.i102.i, ptr %rx_tail.i101.i, align 4
  %75 = ptrtoint ptr %rx_data.i103.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rx_data.i103.i, align 4
  %cmp2.i104.i = icmp ult ptr %add.ptr.i102.i, %76
  br i1 %cmp2.i104.i, label %if.then3.i106.i, label %if.end6.i109.i

if.then3.i106.i:                                  ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %rx_tail.i101.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %73, ptr %rx_tail.i101.i, align 4
  br label %if.end.i114.i

if.end6.i109.i:                                   ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %len.i107.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len.i107.i, align 4
  %sub.i108.i = sub i32 %79, %conv34.i
  store i32 %sub.i108.i, ptr %len.i107.i, align 4
  br label %if.end.i114.i

recvframe_pull_tail.exit.i:                       ; preds = %recvframe_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_data.i = getelementptr inbounds %struct.recv_frame, ptr %plist.0130.i, i32 0, i32 9
  %80 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rx_data.i, align 4
  %len.i = getelementptr inbounds %struct.recv_frame, ptr %plist.0130.i, i32 0, i32 7
  %82 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len.i, align 4
  %84 = call ptr @memcpy(ptr %73, ptr %81, i32 %83)
  br label %recvframe_put.exit.i

if.end.i114.i:                                    ; preds = %if.end6.i109.i, %if.then3.i106.i
  %85 = ptrtoint ptr %rx_tail.i101.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rx_tail.i101.i, align 4
  %rx_data126.i = getelementptr inbounds %struct.recv_frame, ptr %plist.0130.i, i32 0, i32 9
  %87 = ptrtoint ptr %rx_data126.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rx_data126.i, align 4
  %len127.i = getelementptr inbounds %struct.recv_frame, ptr %plist.0130.i, i32 0, i32 7
  %89 = ptrtoint ptr %len127.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len127.i, align 4
  %91 = call ptr @memcpy(ptr %86, ptr %88, i32 %90)
  %92 = load i32, ptr %len127.i, align 4
  %93 = load ptr, ptr %rx_tail.i101.i, align 4
  %add.ptr.i112.i = getelementptr i8, ptr %93, i32 %92
  store ptr %add.ptr.i112.i, ptr %rx_tail.i101.i, align 4
  %94 = ptrtoint ptr %rx_end.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rx_end.i.i, align 4
  %cmp2.i113.i = icmp ugt ptr %add.ptr.i112.i, %95
  br i1 %cmp2.i113.i, label %if.then3.i115.i, label %if.end6.i117.i

if.then3.i115.i:                                  ; preds = %if.end.i114.i
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %rx_tail.i101.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %rx_tail.i101.i, align 4
  br label %recvframe_put.exit.i

if.end6.i117.i:                                   ; preds = %if.end.i114.i
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %len.i107.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len.i107.i, align 4
  %add.i.i = add i32 %98, %92
  store i32 %add.i.i, ptr %len.i107.i, align 4
  br label %recvframe_put.exit.i

recvframe_put.exit.i:                             ; preds = %if.end6.i117.i, %if.then3.i115.i, %recvframe_pull_tail.exit.i
  %icv_len39.i = getelementptr inbounds %struct.recv_frame, ptr %plist.0130.i, i32 0, i32 6, i32 19
  %99 = ptrtoint ptr %icv_len39.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %icv_len39.i, align 1
  %101 = ptrtoint ptr %icv_len.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %icv_len.i, align 1
  %102 = ptrtoint ptr %plist.0130.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %plist.0.pr.i = load ptr, ptr %plist.0130.i, align 4
  %cmp11.not.i = icmp eq ptr %plist.0.pr.i, %pdefrag_q.1160
  br i1 %cmp11.not.i, label %recvframe_put.exit.i.while.end.i_crit_edge, label %recvframe_put.exit.i.while.body.i134_crit_edge

recvframe_put.exit.i.while.body.i134_crit_edge:   ; preds = %recvframe_put.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i134

recvframe_put.exit.i.while.end.i_crit_edge:       ; preds = %recvframe_put.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %recvframe_put.exit.i.while.end.i_crit_edge, %list_del_init.exit92.i.while.end.i_crit_edge
  %lock.i118.i = getelementptr inbounds %struct.__queue, ptr %pdefrag_q.1160, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i118.i) #8
  %103 = ptrtoint ptr %pdefrag_q.1160 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pdefrag_q.1160, align 4
  %cmp.not9.i119.i = icmp eq ptr %104, %pdefrag_q.1160
  br i1 %cmp.not9.i119.i, label %while.end.i.recvframe_defrag.exit_crit_edge, label %while.end.i.while.body.i123.i_crit_edge

while.end.i.while.body.i123.i_crit_edge:          ; preds = %while.end.i
  br label %while.body.i123.i

while.end.i.recvframe_defrag.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %recvframe_defrag.exit

while.body.i123.i:                                ; preds = %while.body.i123.i.while.body.i123.i_crit_edge, %while.end.i.while.body.i123.i_crit_edge
  %plist.010.i120.i = phi ptr [ %106, %while.body.i123.i.while.body.i123.i_crit_edge ], [ %104, %while.end.i.while.body.i123.i_crit_edge ]
  %105 = ptrtoint ptr %plist.010.i120.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %plist.010.i120.i, align 4
  %call2.i121.i = tail call i32 @rtw_free_recvframe(ptr noundef %plist.010.i120.i, ptr noundef %free_recv_queue) #8
  %cmp.not.i122.i = icmp eq ptr %106, %pdefrag_q.1160
  br i1 %cmp.not.i122.i, label %while.body.i123.i.recvframe_defrag.exit_crit_edge, label %while.body.i123.i.while.body.i123.i_crit_edge

while.body.i123.i.while.body.i123.i_crit_edge:    ; preds = %while.body.i123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i123.i

while.body.i123.i.recvframe_defrag.exit_crit_edge: ; preds = %while.body.i123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %recvframe_defrag.exit

recvframe_defrag.exit:                            ; preds = %while.body.i123.i.recvframe_defrag.exit_crit_edge, %while.end.i.recvframe_defrag.exit_crit_edge, %while.body.i98.i.recvframe_defrag.exit_crit_edge, %if.then22.i.recvframe_defrag.exit_crit_edge, %while.body.i.i.recvframe_defrag.exit_crit_edge, %if.then.i.recvframe_defrag.exit_crit_edge
  %lock.i118.sink.i = phi ptr [ %lock.i.i, %if.then.i.recvframe_defrag.exit_crit_edge ], [ %lock.i93.i, %if.then22.i.recvframe_defrag.exit_crit_edge ], [ %lock.i118.i, %while.end.i.recvframe_defrag.exit_crit_edge ], [ %lock.i118.i, %while.body.i123.i.recvframe_defrag.exit_crit_edge ], [ %lock.i93.i, %while.body.i98.i.recvframe_defrag.exit_crit_edge ], [ %lock.i.i, %while.body.i.i.recvframe_defrag.exit_crit_edge ]
  %retval.0.i = phi ptr [ null, %if.then.i.recvframe_defrag.exit_crit_edge ], [ null, %if.then22.i.recvframe_defrag.exit_crit_edge ], [ %44, %while.end.i.recvframe_defrag.exit_crit_edge ], [ %44, %while.body.i123.i.recvframe_defrag.exit_crit_edge ], [ null, %while.body.i98.i.recvframe_defrag.exit_crit_edge ], [ null, %while.body.i.i.recvframe_defrag.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i118.sink.i) #8
  br label %if.end66

if.else58:                                        ; preds = %if.then52.if.else58_crit_edge, %if.end44.thread.if.else58_crit_edge
  %tobool59.not = icmp eq ptr %precv_frame, null
  %tobool61.not = icmp eq ptr %free_recv_queue, null
  %or.cond126 = select i1 %tobool59.not, i1 true, i1 %tobool61.not
  br i1 %or.cond126, label %if.else58.if.end84_crit_edge, label %if.then62

if.else58.if.end84_crit_edge:                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then62:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #10
  %call63 = tail call i32 @rtw_free_recvframe(ptr noundef nonnull %precv_frame, ptr noundef nonnull %free_recv_queue)
  br label %if.end84

if.end66:                                         ; preds = %recvframe_defrag.exit, %if.end44.thread.if.end66_crit_edge, %if.end44.if.end66_crit_edge
  %prtnframe.2 = phi ptr [ %retval.0.i, %recvframe_defrag.exit ], [ %prtnframe.1, %if.end44.if.end66_crit_edge ], [ %prtnframe.0157, %if.end44.thread.if.end66_crit_edge ]
  %precv_frame.addr.0 = phi ptr [ %retval.0.i, %recvframe_defrag.exit ], [ %precv_frame, %if.end44.if.end66_crit_edge ], [ %precv_frame, %if.end44.thread.if.end66_crit_edge ]
  %tobool67.not = icmp eq ptr %prtnframe.2, null
  br i1 %tobool67.not, label %if.end66.if.end84_crit_edge, label %land.lhs.true68

if.end66.if.end84_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

land.lhs.true68:                                  ; preds = %if.end66
  %privacy = getelementptr inbounds %struct.recv_frame, ptr %prtnframe.2, i32 0, i32 6, i32 15
  %107 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %privacy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool71.not = icmp eq i8 %108, 0
  br i1 %tobool71.not, label %land.lhs.true68.if.end84_crit_edge, label %if.then72

land.lhs.true68.if.end84_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then72:                                        ; preds = %land.lhs.true68
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %miccode.i) #8
  %109 = getelementptr inbounds [8 x i8], ptr %miccode.i, i32 0, i32 1
  %110 = getelementptr inbounds [8 x i8], ptr %miccode.i, i32 0, i32 2
  %111 = getelementptr inbounds [8 x i8], ptr %miccode.i, i32 0, i32 3
  %112 = getelementptr inbounds [8 x i8], ptr %miccode.i, i32 0, i32 4
  %113 = getelementptr inbounds [8 x i8], ptr %miccode.i, i32 0, i32 5
  %114 = getelementptr inbounds [8 x i8], ptr %miccode.i, i32 0, i32 6
  %115 = getelementptr inbounds [8 x i8], ptr %miccode.i, i32 0, i32 7
  %ta.i = getelementptr inbounds %struct.recv_frame, ptr %prtnframe.2, i32 0, i32 6, i32 25
  %116 = ptrtoint ptr %miccode.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 -1, ptr %miccode.i, align 8
  %call.i = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ta.i) #8
  %encrypt.i = getelementptr inbounds %struct.recv_frame, ptr %prtnframe.2, i32 0, i32 6, i32 17
  %117 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %encrypt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %118)
  %cmp.i136 = icmp eq i8 %118, 2
  br i1 %cmp.i136, label %if.then.i137, label %recvframe_chkmic.exit.thread

recvframe_chkmic.exit.thread:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %miccode.i) #8
  br label %if.end84

if.then.i137:                                     ; preds = %if.then72
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i137.if.end.i.i148_crit_edge, label %if.then2.i

if.then.i137.if.end.i.i148_crit_edge:             ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i148

if.then2.i:                                       ; preds = %if.then.i137
  %ra.i = getelementptr inbounds %struct.recv_frame, ptr %prtnframe.2, i32 0, i32 6, i32 26
  %119 = ptrtoint ptr %ra.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ra.i, align 4
  %121 = and i32 %120, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.i.not.i = icmp eq i32 %121, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %key_index.i = getelementptr inbounds %struct.recv_frame, ptr %prtnframe.2, i32 0, i32 6, i32 29
  %122 = ptrtoint ptr %key_index.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %key_index.i, align 1
  %idxprom.i = zext i8 %123 to i32
  %arrayidx5.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 9, i32 %idxprom.i
  br label %if.end18.i

if.else.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %dot11tkiprxmickey.i = getelementptr inbounds %struct.sta_info, ptr %call.i, i32 0, i32 15
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then4.i
  %mickey.0.i = phi ptr [ %arrayidx5.i, %if.then4.i ], [ %dot11tkiprxmickey.i, %if.else.i ]
  %len.i138 = getelementptr inbounds %struct.recv_frame, ptr %prtnframe.2, i32 0, i32 7
  %124 = ptrtoint ptr %len.i138 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %len.i138, align 4
  %hdrlen.i139 = getelementptr inbounds %struct.recv_frame, ptr %prtnframe.2, i32 0, i32 6, i32 4
  %126 = ptrtoint ptr %hdrlen.i139 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %hdrlen.i139, align 1
  %conv19.i = zext i8 %127 to i32
  %iv_len.i140 = getelementptr inbounds %struct.recv_frame, ptr %prtnframe.2, i32 0, i32 6, i32 18
  %128 = ptrtoint ptr %iv_len.i140 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %iv_len.i140, align 4
  %conv20.i = zext i8 %129 to i32
  %icv_len.i141 = getelementptr inbounds %struct.recv_frame, ptr %prtnframe.2, i32 0, i32 6, i32 19
  %130 = ptrtoint ptr %icv_len.i141 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %icv_len.i141, align 1
  %conv22.i = zext i8 %131 to i32
  %.neg = add i32 %125, -8
  %132 = add nuw nsw i32 %conv19.i, %conv20.i
  %133 = add nuw nsw i32 %132, %conv22.i
  %sub24.i = sub i32 %.neg, %133
  %rx_data.i142 = getelementptr inbounds %struct.recv_frame, ptr %prtnframe.2, i32 0, i32 9
  %134 = ptrtoint ptr %rx_data.i142 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rx_data.i142, align 4
  %add.ptr.i = getelementptr i8, ptr %135, i32 %conv19.i
  %add.ptr29.i = getelementptr i8, ptr %add.ptr.i, i32 %conv20.i
  %priority.i = getelementptr inbounds %struct.recv_frame, ptr %prtnframe.2, i32 0, i32 6, i32 8
  %136 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %priority.i, align 1
  call void @rtw_seccalctkipmic(ptr noundef %mickey.0.i, ptr noundef %135, ptr noundef %add.ptr29.i, i32 noundef %sub24.i, ptr noundef nonnull %miccode.i, i8 noundef zeroext %137) #8
  %add.ptr31.i = getelementptr i8, ptr %add.ptr29.i, i32 %sub24.i
  %138 = ptrtoint ptr %miccode.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %miccode.i, align 8
  %140 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %add.ptr31.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %139, i8 %141)
  %cmp38.not.i = icmp eq i8 %139, %141
  %142 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %109, align 1
  %add.ptr36.1.i = getelementptr i8, ptr %add.ptr31.i, i32 1
  %144 = ptrtoint ptr %add.ptr36.1.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %add.ptr36.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %143, i8 %145)
  %cmp38.not.1.i = icmp eq i8 %143, %145
  %146 = ptrtoint ptr %110 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %110, align 2
  %add.ptr36.2.i = getelementptr i8, ptr %add.ptr31.i, i32 2
  %148 = ptrtoint ptr %add.ptr36.2.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %add.ptr36.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %147, i8 %149)
  %cmp38.not.2.i = icmp eq i8 %147, %149
  %150 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %111, align 1
  %add.ptr36.3.i = getelementptr i8, ptr %add.ptr31.i, i32 3
  %152 = ptrtoint ptr %add.ptr36.3.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %add.ptr36.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %151, i8 %153)
  %cmp38.not.3.i = icmp eq i8 %151, %153
  %154 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %112, align 4
  %add.ptr36.4.i = getelementptr i8, ptr %add.ptr31.i, i32 4
  %156 = ptrtoint ptr %add.ptr36.4.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %add.ptr36.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %155, i8 %157)
  %cmp38.not.4.i = icmp eq i8 %155, %157
  %158 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %113, align 1
  %add.ptr36.5.i = getelementptr i8, ptr %add.ptr31.i, i32 5
  %160 = ptrtoint ptr %add.ptr36.5.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %add.ptr36.5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %159, i8 %161)
  %cmp38.not.5.i = icmp eq i8 %159, %161
  %162 = ptrtoint ptr %114 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %114, align 2
  %add.ptr36.6.i = getelementptr i8, ptr %add.ptr31.i, i32 6
  %164 = ptrtoint ptr %add.ptr36.6.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %add.ptr36.6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %163, i8 %165)
  %cmp38.not.6.i = icmp eq i8 %163, %165
  %166 = ptrtoint ptr %115 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %115, align 1
  %add.ptr36.7.i = getelementptr i8, ptr %add.ptr31.i, i32 7
  %168 = ptrtoint ptr %add.ptr36.7.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %add.ptr36.7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %167, i8 %169)
  %cmp38.not.7.i = icmp eq i8 %167, %169
  %170 = select i1 %cmp38.not.7.i, i1 %cmp38.not.6.i, i1 false
  %171 = select i1 %170, i1 %cmp38.not.5.i, i1 false
  %172 = select i1 %171, i1 %cmp38.not.4.i, i1 false
  %173 = select i1 %172, i1 %cmp38.not.3.i, i1 false
  %174 = select i1 %173, i1 %cmp38.not.2.i, i1 false
  %175 = select i1 %174, i1 %cmp38.not.1.i, i1 false
  %narrow.i = select i1 %175, i1 %cmp38.not.i, i1 false
  br i1 %narrow.i, label %if.else95.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.end18.i
  %176 = ptrtoint ptr %ra.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %ra.i, align 4
  %178 = and i32 %177, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool.i142.not.i = icmp eq i32 %178, 0
  br i1 %tobool.i142.not.i, label %if.then43.i.if.end54.i_crit_edge, label %land.lhs.true.i

if.then43.i.if.end54.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

land.lhs.true.i:                                  ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  %key_index48.i = getelementptr inbounds %struct.recv_frame, ptr %prtnframe.2, i32 0, i32 6, i32 29
  %179 = ptrtoint ptr %key_index48.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %key_index48.i, align 1
  %conv49.i = zext i8 %180 to i32
  %key_index50.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 8
  %181 = ptrtoint ptr %key_index50.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %key_index50.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %182, i32 %conv49.i)
  %cmp51.not.i = icmp ne i32 %182, %conv49.i
  br label %if.end54.i

if.end54.i:                                       ; preds = %land.lhs.true.i, %if.then43.i.if.end54.i_crit_edge
  %tobool59.not.i = phi i1 [ false, %if.then43.i.if.end54.i_crit_edge ], [ %cmp51.not.i, %land.lhs.true.i ]
  %bdecrypted.i = getelementptr inbounds %struct.recv_frame, ptr %prtnframe.2, i32 0, i32 6, i32 16
  %183 = ptrtoint ptr %bdecrypted.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %bdecrypted.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool56.not.i = icmp eq i8 %184, 0
  %brmerge.i = select i1 %tobool56.not.i, i1 true, i1 %tobool59.not.i
  br i1 %brmerge.i, label %do.body80.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.end54.i
  %.lobit.i = lshr exact i32 %178, 24
  %185 = trunc i32 %.lobit.i to i8
  call void @rtw_handle_tkip_mic_err(ptr noundef %padapter, i8 noundef zeroext %185) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %186 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %186)
  %cmp66.i = icmp ugt i32 %186, 4
  br i1 %cmp66.i, label %do.end71.i, label %if.then60.i.if.end.i.i148_crit_edge

if.then60.i.if.end.i.i148_crit_edge:              ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i148

do.end71.i:                                       ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #10
  %187 = ptrtoint ptr %bdecrypted.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %bdecrypted.i, align 2
  %conv74.i = zext i8 %188 to i32
  %call75.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv74.i) #12
  br label %if.end.i.i148

do.body80.i:                                      ; preds = %if.end54.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %189 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %189)
  %cmp81.i = icmp ugt i32 %189, 4
  br i1 %cmp81.i, label %do.end86.i, label %do.body80.i.if.end.i.i148_crit_edge

do.body80.i.if.end.i.i148_crit_edge:              ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i148

do.end86.i:                                       ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv89.i = zext i8 %184 to i32
  %call90.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv89.i) #12
  br label %if.end.i.i148

if.else95.i:                                      ; preds = %if.end18.i
  %bcheck_grpkey.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 24
  %190 = ptrtoint ptr %bcheck_grpkey.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %bcheck_grpkey.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool96.not.i = icmp eq i8 %191, 0
  br i1 %tobool96.not.i, label %land.lhs.true97.i, label %if.else95.i.if.end.i.i148_crit_edge

if.else95.i.if.end.i.i148_crit_edge:              ; preds = %if.else95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i148

land.lhs.true97.i:                                ; preds = %if.else95.i
  %192 = ptrtoint ptr %ra.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %ra.i, align 4
  %194 = and i32 %193, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool.i144.not.i = icmp eq i32 %194, 0
  br i1 %tobool.i144.not.i, label %land.lhs.true97.i.if.end.i.i148_crit_edge, label %if.then102.i

land.lhs.true97.i.if.end.i.i148_crit_edge:        ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i148

if.then102.i:                                     ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #10
  %195 = ptrtoint ptr %bcheck_grpkey.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 1, ptr %bcheck_grpkey.i, align 2
  br label %if.end.i.i148

if.end.i.i148:                                    ; preds = %if.then102.i, %land.lhs.true97.i.if.end.i.i148_crit_edge, %if.else95.i.if.end.i.i148_crit_edge, %do.end86.i, %do.body80.i.if.end.i.i148_crit_edge, %do.end71.i, %if.then60.i.if.end.i.i148_crit_edge, %if.then.i137.if.end.i.i148_crit_edge
  %cmp74 = phi i1 [ false, %if.then.i137.if.end.i.i148_crit_edge ], [ true, %if.then60.i.if.end.i.i148_crit_edge ], [ true, %do.end71.i ], [ true, %do.body80.i.if.end.i.i148_crit_edge ], [ true, %do.end86.i ], [ false, %if.else95.i.if.end.i.i148_crit_edge ], [ false, %land.lhs.true97.i.if.end.i.i148_crit_edge ], [ false, %if.then102.i ]
  %rx_tail.i.i144 = getelementptr inbounds %struct.recv_frame, ptr %prtnframe.2, i32 0, i32 10
  %196 = ptrtoint ptr %rx_tail.i.i144 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %rx_tail.i.i144, align 4
  %add.ptr.i.i145 = getelementptr i8, ptr %197, i32 -8
  store ptr %add.ptr.i.i145, ptr %rx_tail.i.i144, align 4
  %rx_data.i.i146 = getelementptr inbounds %struct.recv_frame, ptr %prtnframe.2, i32 0, i32 9
  %198 = ptrtoint ptr %rx_data.i.i146 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %rx_data.i.i146, align 4
  %cmp2.i.i147 = icmp ult ptr %add.ptr.i.i145, %199
  br i1 %cmp2.i.i147, label %if.then3.i.i149, label %if.end6.i.i152

if.then3.i.i149:                                  ; preds = %if.end.i.i148
  call void @__sanitizer_cov_trace_pc() #10
  %200 = ptrtoint ptr %rx_tail.i.i144 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %197, ptr %rx_tail.i.i144, align 4
  br label %recvframe_chkmic.exit

if.end6.i.i152:                                   ; preds = %if.end.i.i148
  call void @__sanitizer_cov_trace_pc() #10
  %len.i.i150 = getelementptr inbounds %struct.recv_frame, ptr %prtnframe.2, i32 0, i32 7
  %201 = ptrtoint ptr %len.i.i150 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %len.i.i150, align 4
  %sub.i.i151 = add i32 %202, -8
  store i32 %sub.i.i151, ptr %len.i.i150, align 4
  br label %recvframe_chkmic.exit

recvframe_chkmic.exit:                            ; preds = %if.end6.i.i152, %if.then3.i.i149
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %miccode.i) #8
  br i1 %cmp74, label %if.then76, label %recvframe_chkmic.exit.if.end84_crit_edge

recvframe_chkmic.exit.if.end84_crit_edge:         ; preds = %recvframe_chkmic.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then76:                                        ; preds = %recvframe_chkmic.exit
  %tobool77.not = icmp eq ptr %precv_frame.addr.0, null
  %tobool79.not = icmp eq ptr %free_recv_queue, null
  %or.cond127 = select i1 %tobool77.not, i1 true, i1 %tobool79.not
  br i1 %or.cond127, label %if.then76.if.end84_crit_edge, label %if.then80

if.then76.if.end84_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then80:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %call81 = call i32 @rtw_free_recvframe(ptr noundef nonnull %prtnframe.2, ptr noundef nonnull %free_recv_queue)
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %if.then76.if.end84_crit_edge, %recvframe_chkmic.exit.if.end84_crit_edge, %recvframe_chkmic.exit.thread, %land.lhs.true68.if.end84_crit_edge, %if.end66.if.end84_crit_edge, %if.then62, %if.else58.if.end84_crit_edge
  %prtnframe.3 = phi ptr [ %prtnframe.2, %recvframe_chkmic.exit.if.end84_crit_edge ], [ %prtnframe.2, %land.lhs.true68.if.end84_crit_edge ], [ null, %if.end66.if.end84_crit_edge ], [ null, %if.then80 ], [ null, %if.then76.if.end84_crit_edge ], [ %prtnframe.2, %recvframe_chkmic.exit.thread ], [ null, %if.then62 ], [ null, %if.else58.if.end84_crit_edge ]
  ret ptr %prtnframe.3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enqueue_reorder_recvframe(ptr noundef readonly %preorder_ctrl, ptr noundef %prframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_recvframe_queue = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %preorder_ctrl, i32 0, i32 5
  %seq_num2 = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 6, i32 11
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %plist.0.in = phi ptr [ %pending_recvframe_queue, %entry ], [ %plist.0, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %plist.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %plist.0 = load ptr, ptr %plist.0.in, align 4
  %cmp.not = icmp eq ptr %pending_recvframe_queue, %plist.0
  br i1 %cmp.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond
  %seq_num = getelementptr inbounds %struct.recv_frame, ptr %plist.0, i32 0, i32 6, i32 11
  %1 = ptrtoint ptr %seq_num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %seq_num, align 4
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %seq_num2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %seq_num2, align 4
  %conv3 = zext i16 %4 to i32
  %sub = sub nsw i32 %conv, %conv3
  %and = and i32 %sub, 2048
  %cmp4.not = icmp eq i32 %and, 0
  br i1 %cmp4.not, label %if.else, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %4)
  %cmp11 = icmp eq i16 %2, %4
  br i1 %cmp11, label %if.else.cleanup_crit_edge, label %if.else.while.end_crit_edge

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.end:                                        ; preds = %if.else.while.end_crit_edge, %while.cond.while.end_crit_edge
  %plist.035 = phi ptr [ %plist.0, %if.else.while.end_crit_edge ], [ %pending_recvframe_queue, %while.cond.while.end_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %prframe) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.end.list_del_init.exit_crit_edge

while.end.list_del_init.exit_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %prframe, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %prframe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prframe, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.end.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %prframe to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %prframe, ptr %prframe, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %prframe, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %prframe, ptr %prev.i3.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %plist.035, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i29 = tail call zeroext i1 @__list_add_valid(ptr noundef %prframe, ptr noundef %14, ptr noundef %plist.035) #8
  br i1 %call.i.i29, label %if.end.i.i30, label %list_del_init.exit.cleanup_crit_edge

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i30:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %prframe, ptr %prev.i, align 4
  %16 = ptrtoint ptr %prframe to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %plist.035, ptr %prframe, align 4
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev.i3.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %prframe, ptr %14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i30, %list_del_init.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ 1, %list_del_init.exit.cleanup_crit_edge ], [ 1, %if.end.i.i30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_reordering_ctrl_timeout_handler(ptr noundef %pcontext) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcontext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcontext, align 4
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %pcontext, i32 0, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %call = tail call fastcc i32 @recv_indicatepkts_in_order(ptr noundef %1, ptr noundef %pcontext, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %reordering_ctrl_timer = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %pcontext, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %6, 5
  %call.i = tail call i32 @mod_timer(ptr noundef %reordering_ctrl_timer, i32 noundef %add.i) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @recv_indicatepkts_in_order(ptr noundef %padapter, ptr noundef %preorder_ctrl, i32 noundef %bforced) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_recvframe_queue = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %preorder_ctrl, i32 0, i32 5
  %0 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pending_recvframe_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bforced)
  %tobool.not = icmp eq i32 %bforced, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pending_recvframe_queue, align 4
  %cmp.i.not = icmp eq ptr %3, %pending_recvframe_queue
  br i1 %cmp.i.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %seq_num = getelementptr inbounds %struct.recv_frame, ptr %1, i32 0, i32 6, i32 11
  %4 = ptrtoint ptr %seq_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %seq_num, align 4
  %indicate_seq = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %preorder_ctrl, i32 0, i32 2
  %6 = ptrtoint ptr %indicate_seq to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %indicate_seq, align 2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %indicate_seq11 = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %preorder_ctrl, i32 0, i32 2
  %7 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %pending_recvframe_queue, align 4
  %cmp.i81.not83 = icmp eq ptr %8, %pending_recvframe_queue
  br i1 %cmp.i81.not83, label %if.end4.cleanup_crit_edge, label %while.body.lr.ph

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end4
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  br label %while.body

while.body:                                       ; preds = %if.end50.while.body_crit_edge, %while.body.lr.ph
  %plist.084 = phi ptr [ %1, %while.body.lr.ph ], [ %14, %if.end50.while.body_crit_edge ]
  %9 = ptrtoint ptr %indicate_seq11 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %indicate_seq11, align 2
  %conv = zext i16 %10 to i32
  %seq_num12 = getelementptr inbounds %struct.recv_frame, ptr %plist.084, i32 0, i32 6, i32 11
  %11 = ptrtoint ptr %seq_num12 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %seq_num12, align 4
  %conv13 = zext i16 %12 to i32
  %sub = sub nsw i32 %conv, %conv13
  %and = and i32 %sub, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.then15, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %while.body
  %13 = ptrtoint ptr %plist.084 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plist.084, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plist.084) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then15.list_del_init.exit_crit_edge

if.then15.list_del_init.exit_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %plist.084, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %plist.084 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %plist.084, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then15.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %plist.084 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %plist.084, ptr %plist.084, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %plist.084, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %plist.084, ptr %prev.i3.i, align 4
  %23 = ptrtoint ptr %indicate_seq11 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %indicate_seq11, align 2
  %25 = ptrtoint ptr %seq_num12 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %seq_num12, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp21 = icmp eq i16 %24, %26
  br i1 %cmp21, label %if.then23, label %list_del_init.exit.if.end29_crit_edge

list_del_init.exit.if.end29_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then23:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %27 = add i16 %24, 1
  %28 = and i16 %27, 4095
  %29 = ptrtoint ptr %indicate_seq11 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %indicate_seq11, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %list_del_init.exit.if.end29_crit_edge
  %amsdu = getelementptr inbounds %struct.recv_frame, ptr %plist.084, i32 0, i32 6, i32 6
  %30 = ptrtoint ptr %amsdu to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %amsdu, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i8 %31, label %if.end29.if.end50_crit_edge [
    i8 0, label %if.then31
    i8 1, label %if.then41
  ]

if.end29.if.end50_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then31:                                        ; preds = %if.end29
  %33 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool32.not = icmp eq i32 %34, 0
  br i1 %tobool32.not, label %land.lhs.true, label %if.then31.if.end50_crit_edge

if.then31.if.end50_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

land.lhs.true:                                    ; preds = %if.then31
  %35 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool33.not = icmp eq i32 %36, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true.if.end50_crit_edge

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call i32 @rtw_recv_indicatepkt(ptr noundef %padapter, ptr noundef %plist.084) #8
  br label %if.end50

if.then41:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @amsdu_to_msdu(ptr noundef %padapter, ptr noundef %plist.084)
  br label %if.end50

if.end50:                                         ; preds = %if.then41, %if.then34, %land.lhs.true.if.end50_crit_edge, %if.then31.if.end50_crit_edge, %if.end29.if.end50_crit_edge
  %37 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %pending_recvframe_queue, align 4
  %cmp.i81.not = icmp eq ptr %38, %pending_recvframe_queue
  br i1 %cmp.i81.not, label %if.end50.cleanup_crit_edge, label %if.end50.while.body_crit_edge

if.end50.while.body_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end50.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 1, %while.body.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_recv_entry(ptr noundef %precvframe) local_unnamed_addr #0 align 64 {
entry:
  %psta.i.i.i.i = alloca ptr, align 4
  %bDumpRxPkt.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i.i, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %busetkipkey.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 23
  %5 = ptrtoint ptr %busetkipkey.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %busetkipkey.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not.i = icmp eq i8 %6, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %uc_swdec_pending_queue.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3
  %lock.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #8
  %7 = ptrtoint ptr %uc_swdec_pending_queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %uc_swdec_pending_queue.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %8, %uc_swdec_pending_queue.i
  br i1 %cmp.i.not.i.i.i, label %rtw_alloc_recvframe.exit.thread.i, label %if.else.i.i.i

rtw_alloc_recvframe.exit.thread.i:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #8
  br label %if.end.i

if.else.i.i.i:                                    ; preds = %if.then.i
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.else.i.i.i.list_del_init.exit.i.i.i_crit_edge

if.else.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %if.else.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %8, ptr %8, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %8, ptr %prev.i3.i.i.i.i, align 4
  %adapter.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %8, i32 0, i32 3
  %17 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i.i.i, align 4
  %tobool2.not.i.i.i = icmp ne ptr %18, null
  %free_recv_queue.i.i.i = getelementptr inbounds %struct.adapter, ptr %18, i32 0, i32 10, i32 1
  %cmp.i.i.i = icmp eq ptr %free_recv_queue.i.i.i, %uc_swdec_pending_queue.i
  %or.cond.i.i.i = select i1 %tobool2.not.i.i.i, i1 %cmp.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.then4.i.i.i, label %list_del_init.exit.i.i.i.rtw_alloc_recvframe.exit.i_crit_edge

list_del_init.exit.i.i.i.rtw_alloc_recvframe.exit.i_crit_edge: ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_alloc_recvframe.exit.i

if.then4.i.i.i:                                   ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %free_recvframe_cnt.i.i.i = getelementptr inbounds %struct.adapter, ptr %18, i32 0, i32 10, i32 6
  %19 = ptrtoint ptr %free_recvframe_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %free_recvframe_cnt.i.i.i, align 8
  %dec.i.i.i = add i32 %20, -1
  store i32 %dec.i.i.i, ptr %free_recvframe_cnt.i.i.i, align 8
  br label %rtw_alloc_recvframe.exit.i

rtw_alloc_recvframe.exit.i:                       ; preds = %if.then4.i.i.i, %list_del_init.exit.i.i.i.rtw_alloc_recvframe.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #8
  %tobool6.not.i = icmp eq ptr %8, null
  br i1 %tobool6.not.i, label %rtw_alloc_recvframe.exit.i.if.end.i_crit_edge, label %rtw_alloc_recvframe.exit.i.while.body.i_crit_edge

rtw_alloc_recvframe.exit.i.while.body.i_crit_edge: ; preds = %rtw_alloc_recvframe.exit.i
  br label %while.body.i

rtw_alloc_recvframe.exit.i.if.end.i_crit_edge:    ; preds = %rtw_alloc_recvframe.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

while.body.i:                                     ; preds = %while.body.i, %rtw_alloc_recvframe.exit.i.while.body.i_crit_edge
  %call7.i = tail call fastcc i32 @recv_func_posthandle(ptr noundef %1, ptr noundef nonnull %8) #8
  br label %while.body.i

if.end.i:                                         ; preds = %rtw_alloc_recvframe.exit.i.if.end.i_crit_edge, %rtw_alloc_recvframe.exit.thread.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bDumpRxPkt.i.i.i) #8
  %21 = ptrtoint ptr %bDumpRxPkt.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %bDumpRxPkt.i.i.i, align 1, !annotation !147
  %rx_data.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 9
  %22 = ptrtoint ptr %rx_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_data.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %26 = and i8 %25, 3
  %sitesurvey_res.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 16
  %27 = ptrtoint ptr %sitesurvey_res.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sitesurvey_res.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp.i.i75.i = icmp eq i32 %28, 3
  br i1 %cmp.i.i75.i, label %if.then.i.i.i, label %if.end.i.if.end10.i.i.i_crit_edge

if.end.i.if.end10.i.i.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %channel_set.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 12
  %call.i.i.i = tail call zeroext i8 @rtw_get_oper_ch(ptr noundef %1) #8
  %conv4.i.i.i = zext i8 %call.i.i.i to i32
  %call5.i.i.i = tail call i32 @rtw_ch_set_search_ch(ptr noundef %channel_set.i.i.i, i32 noundef %conv4.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i.i.i)
  %cmp6.i.i.i = icmp sgt i32 %call5.i.i.i, -1
  br i1 %cmp6.i.i.i, label %if.then8.i.i.i, label %if.then.i.i.i.if.end10.i.i.i_crit_edge

if.then.i.i.i.if.end10.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i.i

if.then8.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_count.i.i.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 5, i32 12, i32 %call5.i.i.i, i32 2
  %29 = ptrtoint ptr %rx_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_count.i.i.i, align 4
  %inc.i.i.i = add i32 %30, 1
  store i32 %inc.i.i.i, ptr %rx_count.i.i.i, align 4
  br label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.then8.i.i.i, %if.then.i.i.i.if.end10.i.i.i_crit_edge, %if.end.i.if.end10.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp12.not.i.i.i = icmp eq i8 %26, 0
  br i1 %cmp12.not.i.i.i, label %if.end15.i.i.i, label %if.end10.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge

if.end10.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %validate_recv_frame.exit.thread.i.i

if.end15.i.i.i:                                   ; preds = %if.end10.i.i.i
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %23, align 2
  %33 = lshr i16 %32, 8
  %34 = trunc i16 %33 to i8
  %conv18.i.i.i = and i8 %34, 12
  %trunc.i.i.i = trunc i16 %32 to i2
  %rev.i.i.i = tail call i2 @llvm.bitreverse.i2(i2 %trunc.i.i.i) #8
  %conv30.i.i.i = zext i2 %rev.i.i.i to i8
  %to_fr_ds.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 5
  %35 = ptrtoint ptr %to_fr_ds.i.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv30.i.i.i, ptr %to_fr_ds.i.i.i, align 2
  %36 = ptrtoint ptr %23 to i32
  %add.i.i.i = add i32 %36, 22
  %37 = inttoptr i32 %add.i.i.i to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %37, align 2
  %40 = lshr i16 %39, 8
  %41 = trunc i16 %40 to i8
  %conv33.i.i.i = and i8 %41, 15
  %frag_num.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 12
  %42 = ptrtoint ptr %frag_num.i.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv33.i.i.i, ptr %frag_num.i.i.i, align 2
  %43 = load i16, ptr %37, align 2
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #8
  %45 = lshr i16 %44, 4
  %seq_num.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 11
  %46 = ptrtoint ptr %seq_num.i.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %seq_num.i.i.i, align 4
  %47 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %23, align 2
  %49 = trunc i16 %48 to i8
  %50 = lshr i8 %49, 4
  %51 = and i8 %50, 1
  %pw_save.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 9
  %52 = ptrtoint ptr %pw_save.i.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %pw_save.i.i.i, align 2
  %53 = load i16, ptr %23, align 2
  %54 = trunc i16 %53 to i8
  %55 = lshr i8 %54, 2
  %56 = and i8 %55, 1
  %mfrag.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 13
  %57 = ptrtoint ptr %mfrag.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %mfrag.i.i.i, align 1
  %58 = load i16, ptr %23, align 2
  %59 = trunc i16 %58 to i8
  %60 = lshr i8 %59, 5
  %61 = and i8 %60, 1
  %mdata.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 10
  %62 = ptrtoint ptr %mdata.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %mdata.i.i.i, align 1
  %63 = load i16, ptr %23, align 2
  %64 = trunc i16 %63 to i8
  %65 = lshr i8 %64, 6
  %66 = and i8 %65, 1
  %privacy.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 15
  %67 = ptrtoint ptr %privacy.i.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %privacy.i.i.i, align 1
  %68 = load i16, ptr %23, align 2
  %69 = trunc i16 %68 to i8
  %70 = lshr i8 %69, 7
  %order.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 14
  %71 = ptrtoint ptr %order.i.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %order.i.i.i, align 4
  %call62.i.i.i = call zeroext i8 @GetHalDefVar8188EUsb(ptr noundef %1, i32 noundef 6, ptr noundef nonnull %bDumpRxPkt.i.i.i) #8
  %72 = ptrtoint ptr %bDumpRxPkt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bDumpRxPkt.i.i.i, align 1
  %74 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %73, label %if.end15.i.i.i.if.end279.i.i.i_crit_edge [
    i8 1, label %if.then66.i.i.i
    i8 2, label %if.then127.i.i.i
    i8 3, label %if.then204.i.i.i
  ]

if.end15.i.i.i.if.end279.i.i.i_crit_edge:         ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end279.i.i.i

if.then66.i.i.i:                                  ; preds = %if.end15.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %75 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %75)
  %cmp67.i.i.i = icmp ugt i32 %75, 4
  br i1 %cmp67.i.i.i, label %do.end74.i.i.i, label %if.then66.i.i.i.if.end279.i.i.i_crit_edge

if.then66.i.i.i.if.end279.i.i.i_crit_edge:        ; preds = %if.then66.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end279.i.i.i

do.end74.i.i.i:                                   ; preds = %if.then66.i.i.i
  %call71.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr.i.i.i)
  %cmp78.i.i.i = icmp ugt i32 %.pr.i.i.i, 4
  br i1 %cmp78.i.i.i, label %for.inc.i.i.i, label %do.end74.i.i.i.if.end279.i.i.i_crit_edge

do.end74.i.i.i.if.end279.i.i.i_crit_edge:         ; preds = %do.end74.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end279.i.i.i

for.inc.i.i.i:                                    ; preds = %do.end74.i.i.i
  %76 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %23, align 1
  %conv85.i.i.i = zext i8 %77 to i32
  %add.ptr87.i.i.i = getelementptr i8, ptr %23, i32 1
  %78 = ptrtoint ptr %add.ptr87.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %add.ptr87.i.i.i, align 1
  %conv88.i.i.i = zext i8 %79 to i32
  %add.ptr90.i.i.i = getelementptr i8, ptr %23, i32 2
  %80 = ptrtoint ptr %add.ptr90.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %add.ptr90.i.i.i, align 1
  %conv91.i.i.i = zext i8 %81 to i32
  %add.ptr93.i.i.i = getelementptr i8, ptr %23, i32 3
  %82 = ptrtoint ptr %add.ptr93.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %add.ptr93.i.i.i, align 1
  %conv94.i.i.i = zext i8 %83 to i32
  %add.ptr96.i.i.i = getelementptr i8, ptr %23, i32 4
  %84 = ptrtoint ptr %add.ptr96.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %add.ptr96.i.i.i, align 1
  %conv97.i.i.i = zext i8 %85 to i32
  %add.ptr99.i.i.i = getelementptr i8, ptr %23, i32 5
  %86 = ptrtoint ptr %add.ptr99.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %add.ptr99.i.i.i, align 1
  %conv100.i.i.i = zext i8 %87 to i32
  %add.ptr102.i.i.i = getelementptr i8, ptr %23, i32 6
  %88 = ptrtoint ptr %add.ptr102.i.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %add.ptr102.i.i.i, align 1
  %conv103.i.i.i = zext i8 %89 to i32
  %add.ptr105.i.i.i = getelementptr i8, ptr %23, i32 7
  %90 = ptrtoint ptr %add.ptr105.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %add.ptr105.i.i.i, align 1
  %conv106.i.i.i = zext i8 %91 to i32
  %call107.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv85.i.i.i, i32 noundef %conv88.i.i.i, i32 noundef %conv91.i.i.i, i32 noundef %conv94.i.i.i, i32 noundef %conv97.i.i.i, i32 noundef %conv100.i.i.i, i32 noundef %conv103.i.i.i, i32 noundef %conv106.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr411.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr411.i.i.i)
  %cmp78.1.i.i.i = icmp ugt i32 %.pr411.i.i.i, 4
  br i1 %cmp78.1.i.i.i, label %for.inc.1.i.i.i, label %for.inc.i.i.i.if.end279.i.i.i_crit_edge

for.inc.i.i.i.if.end279.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end279.i.i.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  %add.ptr.1.i.i.i = getelementptr i8, ptr %23, i32 8
  %92 = ptrtoint ptr %add.ptr.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %add.ptr.1.i.i.i, align 1
  %conv85.1.i.i.i = zext i8 %93 to i32
  %add.ptr87.1.i.i.i = getelementptr i8, ptr %23, i32 9
  %94 = ptrtoint ptr %add.ptr87.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %add.ptr87.1.i.i.i, align 1
  %conv88.1.i.i.i = zext i8 %95 to i32
  %add.ptr90.1.i.i.i = getelementptr i8, ptr %23, i32 10
  %96 = ptrtoint ptr %add.ptr90.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %add.ptr90.1.i.i.i, align 1
  %conv91.1.i.i.i = zext i8 %97 to i32
  %add.ptr93.1.i.i.i = getelementptr i8, ptr %23, i32 11
  %98 = ptrtoint ptr %add.ptr93.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %add.ptr93.1.i.i.i, align 1
  %conv94.1.i.i.i = zext i8 %99 to i32
  %add.ptr96.1.i.i.i = getelementptr i8, ptr %23, i32 12
  %100 = ptrtoint ptr %add.ptr96.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %add.ptr96.1.i.i.i, align 1
  %conv97.1.i.i.i = zext i8 %101 to i32
  %add.ptr99.1.i.i.i = getelementptr i8, ptr %23, i32 13
  %102 = ptrtoint ptr %add.ptr99.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %add.ptr99.1.i.i.i, align 1
  %conv100.1.i.i.i = zext i8 %103 to i32
  %add.ptr102.1.i.i.i = getelementptr i8, ptr %23, i32 14
  %104 = ptrtoint ptr %add.ptr102.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %add.ptr102.1.i.i.i, align 1
  %conv103.1.i.i.i = zext i8 %105 to i32
  %add.ptr105.1.i.i.i = getelementptr i8, ptr %23, i32 15
  %106 = ptrtoint ptr %add.ptr105.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %add.ptr105.1.i.i.i, align 1
  %conv106.1.i.i.i = zext i8 %107 to i32
  %call107.1.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv85.1.i.i.i, i32 noundef %conv88.1.i.i.i, i32 noundef %conv91.1.i.i.i, i32 noundef %conv94.1.i.i.i, i32 noundef %conv97.1.i.i.i, i32 noundef %conv100.1.i.i.i, i32 noundef %conv103.1.i.i.i, i32 noundef %conv106.1.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr413.pr.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr413.pr.i.i.i)
  %cmp78.2.i.i.i = icmp ugt i32 %.pr413.pr.i.i.i, 4
  br i1 %cmp78.2.i.i.i, label %for.inc.2.i.i.i, label %for.inc.1.i.i.i.if.end279.i.i.i_crit_edge

for.inc.1.i.i.i.if.end279.i.i.i_crit_edge:        ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end279.i.i.i

for.inc.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  %add.ptr.2.i.i.i = getelementptr i8, ptr %23, i32 16
  %108 = ptrtoint ptr %add.ptr.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %add.ptr.2.i.i.i, align 1
  %conv85.2.i.i.i = zext i8 %109 to i32
  %add.ptr87.2.i.i.i = getelementptr i8, ptr %23, i32 17
  %110 = ptrtoint ptr %add.ptr87.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %add.ptr87.2.i.i.i, align 1
  %conv88.2.i.i.i = zext i8 %111 to i32
  %add.ptr90.2.i.i.i = getelementptr i8, ptr %23, i32 18
  %112 = ptrtoint ptr %add.ptr90.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %add.ptr90.2.i.i.i, align 1
  %conv91.2.i.i.i = zext i8 %113 to i32
  %add.ptr93.2.i.i.i = getelementptr i8, ptr %23, i32 19
  %114 = ptrtoint ptr %add.ptr93.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %add.ptr93.2.i.i.i, align 1
  %conv94.2.i.i.i = zext i8 %115 to i32
  %add.ptr96.2.i.i.i = getelementptr i8, ptr %23, i32 20
  %116 = ptrtoint ptr %add.ptr96.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %add.ptr96.2.i.i.i, align 1
  %conv97.2.i.i.i = zext i8 %117 to i32
  %add.ptr99.2.i.i.i = getelementptr i8, ptr %23, i32 21
  %118 = ptrtoint ptr %add.ptr99.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %add.ptr99.2.i.i.i, align 1
  %conv100.2.i.i.i = zext i8 %119 to i32
  %add.ptr102.2.i.i.i = getelementptr i8, ptr %23, i32 22
  %120 = ptrtoint ptr %add.ptr102.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %add.ptr102.2.i.i.i, align 1
  %conv103.2.i.i.i = zext i8 %121 to i32
  %add.ptr105.2.i.i.i = getelementptr i8, ptr %23, i32 23
  %122 = ptrtoint ptr %add.ptr105.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %add.ptr105.2.i.i.i, align 1
  %conv106.2.i.i.i = zext i8 %123 to i32
  %call107.2.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv85.2.i.i.i, i32 noundef %conv88.2.i.i.i, i32 noundef %conv91.2.i.i.i, i32 noundef %conv94.2.i.i.i, i32 noundef %conv97.2.i.i.i, i32 noundef %conv100.2.i.i.i, i32 noundef %conv103.2.i.i.i, i32 noundef %conv106.2.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr415.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr415.i.i.i)
  %cmp78.3.i.i.i = icmp ugt i32 %.pr415.i.i.i, 4
  br i1 %cmp78.3.i.i.i, label %for.inc.3.i.i.i, label %for.inc.2.i.i.i.if.end279.i.i.i_crit_edge

for.inc.2.i.i.i.if.end279.i.i.i_crit_edge:        ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end279.i.i.i

for.inc.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  %add.ptr.3.i.i.i = getelementptr i8, ptr %23, i32 24
  %124 = ptrtoint ptr %add.ptr.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %add.ptr.3.i.i.i, align 1
  %conv85.3.i.i.i = zext i8 %125 to i32
  %add.ptr87.3.i.i.i = getelementptr i8, ptr %23, i32 25
  %126 = ptrtoint ptr %add.ptr87.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %add.ptr87.3.i.i.i, align 1
  %conv88.3.i.i.i = zext i8 %127 to i32
  %add.ptr90.3.i.i.i = getelementptr i8, ptr %23, i32 26
  %128 = ptrtoint ptr %add.ptr90.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %add.ptr90.3.i.i.i, align 1
  %conv91.3.i.i.i = zext i8 %129 to i32
  %add.ptr93.3.i.i.i = getelementptr i8, ptr %23, i32 27
  %130 = ptrtoint ptr %add.ptr93.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %add.ptr93.3.i.i.i, align 1
  %conv94.3.i.i.i = zext i8 %131 to i32
  %add.ptr96.3.i.i.i = getelementptr i8, ptr %23, i32 28
  %132 = ptrtoint ptr %add.ptr96.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %add.ptr96.3.i.i.i, align 1
  %conv97.3.i.i.i = zext i8 %133 to i32
  %add.ptr99.3.i.i.i = getelementptr i8, ptr %23, i32 29
  %134 = ptrtoint ptr %add.ptr99.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %add.ptr99.3.i.i.i, align 1
  %conv100.3.i.i.i = zext i8 %135 to i32
  %add.ptr102.3.i.i.i = getelementptr i8, ptr %23, i32 30
  %136 = ptrtoint ptr %add.ptr102.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %add.ptr102.3.i.i.i, align 1
  %conv103.3.i.i.i = zext i8 %137 to i32
  %add.ptr105.3.i.i.i = getelementptr i8, ptr %23, i32 31
  %138 = ptrtoint ptr %add.ptr105.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %add.ptr105.3.i.i.i, align 1
  %conv106.3.i.i.i = zext i8 %139 to i32
  %call107.3.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv85.3.i.i.i, i32 noundef %conv88.3.i.i.i, i32 noundef %conv91.3.i.i.i, i32 noundef %conv94.3.i.i.i, i32 noundef %conv97.3.i.i.i, i32 noundef %conv100.3.i.i.i, i32 noundef %conv103.3.i.i.i, i32 noundef %conv106.3.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr417.pr.pr.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr417.pr.pr.i.i.i)
  %cmp78.4.i.i.i = icmp ugt i32 %.pr417.pr.pr.i.i.i, 4
  br i1 %cmp78.4.i.i.i, label %for.inc.4.i.i.i, label %for.inc.3.i.i.i.if.end279.i.i.i_crit_edge

for.inc.3.i.i.i.if.end279.i.i.i_crit_edge:        ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end279.i.i.i

for.inc.4.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  %add.ptr.4.i.i.i = getelementptr i8, ptr %23, i32 32
  %140 = ptrtoint ptr %add.ptr.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %add.ptr.4.i.i.i, align 1
  %conv85.4.i.i.i = zext i8 %141 to i32
  %add.ptr87.4.i.i.i = getelementptr i8, ptr %23, i32 33
  %142 = ptrtoint ptr %add.ptr87.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %add.ptr87.4.i.i.i, align 1
  %conv88.4.i.i.i = zext i8 %143 to i32
  %add.ptr90.4.i.i.i = getelementptr i8, ptr %23, i32 34
  %144 = ptrtoint ptr %add.ptr90.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %add.ptr90.4.i.i.i, align 1
  %conv91.4.i.i.i = zext i8 %145 to i32
  %add.ptr93.4.i.i.i = getelementptr i8, ptr %23, i32 35
  %146 = ptrtoint ptr %add.ptr93.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %add.ptr93.4.i.i.i, align 1
  %conv94.4.i.i.i = zext i8 %147 to i32
  %add.ptr96.4.i.i.i = getelementptr i8, ptr %23, i32 36
  %148 = ptrtoint ptr %add.ptr96.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %add.ptr96.4.i.i.i, align 1
  %conv97.4.i.i.i = zext i8 %149 to i32
  %add.ptr99.4.i.i.i = getelementptr i8, ptr %23, i32 37
  %150 = ptrtoint ptr %add.ptr99.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %add.ptr99.4.i.i.i, align 1
  %conv100.4.i.i.i = zext i8 %151 to i32
  %add.ptr102.4.i.i.i = getelementptr i8, ptr %23, i32 38
  %152 = ptrtoint ptr %add.ptr102.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %add.ptr102.4.i.i.i, align 1
  %conv103.4.i.i.i = zext i8 %153 to i32
  %add.ptr105.4.i.i.i = getelementptr i8, ptr %23, i32 39
  %154 = ptrtoint ptr %add.ptr105.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %add.ptr105.4.i.i.i, align 1
  %conv106.4.i.i.i = zext i8 %155 to i32
  %call107.4.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv85.4.i.i.i, i32 noundef %conv88.4.i.i.i, i32 noundef %conv91.4.i.i.i, i32 noundef %conv94.4.i.i.i, i32 noundef %conv97.4.i.i.i, i32 noundef %conv100.4.i.i.i, i32 noundef %conv103.4.i.i.i, i32 noundef %conv106.4.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr419.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr419.i.i.i)
  %cmp78.5.i.i.i = icmp ugt i32 %.pr419.i.i.i, 4
  br i1 %cmp78.5.i.i.i, label %for.inc.5.i.i.i, label %for.inc.4.i.i.i.if.end279.i.i.i_crit_edge

for.inc.4.i.i.i.if.end279.i.i.i_crit_edge:        ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end279.i.i.i

for.inc.5.i.i.i:                                  ; preds = %for.inc.4.i.i.i
  %add.ptr.5.i.i.i = getelementptr i8, ptr %23, i32 40
  %156 = ptrtoint ptr %add.ptr.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %add.ptr.5.i.i.i, align 1
  %conv85.5.i.i.i = zext i8 %157 to i32
  %add.ptr87.5.i.i.i = getelementptr i8, ptr %23, i32 41
  %158 = ptrtoint ptr %add.ptr87.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %add.ptr87.5.i.i.i, align 1
  %conv88.5.i.i.i = zext i8 %159 to i32
  %add.ptr90.5.i.i.i = getelementptr i8, ptr %23, i32 42
  %160 = ptrtoint ptr %add.ptr90.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %add.ptr90.5.i.i.i, align 1
  %conv91.5.i.i.i = zext i8 %161 to i32
  %add.ptr93.5.i.i.i = getelementptr i8, ptr %23, i32 43
  %162 = ptrtoint ptr %add.ptr93.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %add.ptr93.5.i.i.i, align 1
  %conv94.5.i.i.i = zext i8 %163 to i32
  %add.ptr96.5.i.i.i = getelementptr i8, ptr %23, i32 44
  %164 = ptrtoint ptr %add.ptr96.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %add.ptr96.5.i.i.i, align 1
  %conv97.5.i.i.i = zext i8 %165 to i32
  %add.ptr99.5.i.i.i = getelementptr i8, ptr %23, i32 45
  %166 = ptrtoint ptr %add.ptr99.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %add.ptr99.5.i.i.i, align 1
  %conv100.5.i.i.i = zext i8 %167 to i32
  %add.ptr102.5.i.i.i = getelementptr i8, ptr %23, i32 46
  %168 = ptrtoint ptr %add.ptr102.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %add.ptr102.5.i.i.i, align 1
  %conv103.5.i.i.i = zext i8 %169 to i32
  %add.ptr105.5.i.i.i = getelementptr i8, ptr %23, i32 47
  %170 = ptrtoint ptr %add.ptr105.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %add.ptr105.5.i.i.i, align 1
  %conv106.5.i.i.i = zext i8 %171 to i32
  %call107.5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv85.5.i.i.i, i32 noundef %conv88.5.i.i.i, i32 noundef %conv91.5.i.i.i, i32 noundef %conv94.5.i.i.i, i32 noundef %conv97.5.i.i.i, i32 noundef %conv100.5.i.i.i, i32 noundef %conv103.5.i.i.i, i32 noundef %conv106.5.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr421.pr.pr.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr421.pr.pr.i.i.i)
  %cmp78.6.i.i.i = icmp ugt i32 %.pr421.pr.pr.i.i.i, 4
  br i1 %cmp78.6.i.i.i, label %for.inc.6.i.i.i, label %for.inc.5.i.i.i.if.end279.i.i.i_crit_edge

for.inc.5.i.i.i.if.end279.i.i.i_crit_edge:        ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end279.i.i.i

for.inc.6.i.i.i:                                  ; preds = %for.inc.5.i.i.i
  %add.ptr.6.i.i.i = getelementptr i8, ptr %23, i32 48
  %172 = ptrtoint ptr %add.ptr.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %add.ptr.6.i.i.i, align 1
  %conv85.6.i.i.i = zext i8 %173 to i32
  %add.ptr87.6.i.i.i = getelementptr i8, ptr %23, i32 49
  %174 = ptrtoint ptr %add.ptr87.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %add.ptr87.6.i.i.i, align 1
  %conv88.6.i.i.i = zext i8 %175 to i32
  %add.ptr90.6.i.i.i = getelementptr i8, ptr %23, i32 50
  %176 = ptrtoint ptr %add.ptr90.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %add.ptr90.6.i.i.i, align 1
  %conv91.6.i.i.i = zext i8 %177 to i32
  %add.ptr93.6.i.i.i = getelementptr i8, ptr %23, i32 51
  %178 = ptrtoint ptr %add.ptr93.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %add.ptr93.6.i.i.i, align 1
  %conv94.6.i.i.i = zext i8 %179 to i32
  %add.ptr96.6.i.i.i = getelementptr i8, ptr %23, i32 52
  %180 = ptrtoint ptr %add.ptr96.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %add.ptr96.6.i.i.i, align 1
  %conv97.6.i.i.i = zext i8 %181 to i32
  %add.ptr99.6.i.i.i = getelementptr i8, ptr %23, i32 53
  %182 = ptrtoint ptr %add.ptr99.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %add.ptr99.6.i.i.i, align 1
  %conv100.6.i.i.i = zext i8 %183 to i32
  %add.ptr102.6.i.i.i = getelementptr i8, ptr %23, i32 54
  %184 = ptrtoint ptr %add.ptr102.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %add.ptr102.6.i.i.i, align 1
  %conv103.6.i.i.i = zext i8 %185 to i32
  %add.ptr105.6.i.i.i = getelementptr i8, ptr %23, i32 55
  %186 = ptrtoint ptr %add.ptr105.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %add.ptr105.6.i.i.i, align 1
  %conv106.6.i.i.i = zext i8 %187 to i32
  %call107.6.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv85.6.i.i.i, i32 noundef %conv88.6.i.i.i, i32 noundef %conv91.6.i.i.i, i32 noundef %conv94.6.i.i.i, i32 noundef %conv97.6.i.i.i, i32 noundef %conv100.6.i.i.i, i32 noundef %conv103.6.i.i.i, i32 noundef %conv106.6.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr423.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr423.i.i.i)
  %cmp78.7.i.i.i = icmp ugt i32 %.pr423.i.i.i, 4
  br i1 %cmp78.7.i.i.i, label %for.inc.7.i.i.i, label %for.inc.6.i.i.i.if.end279.i.i.i_crit_edge

for.inc.6.i.i.i.if.end279.i.i.i_crit_edge:        ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end279.i.i.i

for.inc.7.i.i.i:                                  ; preds = %for.inc.6.i.i.i
  %add.ptr.7.i.i.i = getelementptr i8, ptr %23, i32 56
  %188 = ptrtoint ptr %add.ptr.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %add.ptr.7.i.i.i, align 1
  %conv85.7.i.i.i = zext i8 %189 to i32
  %add.ptr87.7.i.i.i = getelementptr i8, ptr %23, i32 57
  %190 = ptrtoint ptr %add.ptr87.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %add.ptr87.7.i.i.i, align 1
  %conv88.7.i.i.i = zext i8 %191 to i32
  %add.ptr90.7.i.i.i = getelementptr i8, ptr %23, i32 58
  %192 = ptrtoint ptr %add.ptr90.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %add.ptr90.7.i.i.i, align 1
  %conv91.7.i.i.i = zext i8 %193 to i32
  %add.ptr93.7.i.i.i = getelementptr i8, ptr %23, i32 59
  %194 = ptrtoint ptr %add.ptr93.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %add.ptr93.7.i.i.i, align 1
  %conv94.7.i.i.i = zext i8 %195 to i32
  %add.ptr96.7.i.i.i = getelementptr i8, ptr %23, i32 60
  %196 = ptrtoint ptr %add.ptr96.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %add.ptr96.7.i.i.i, align 1
  %conv97.7.i.i.i = zext i8 %197 to i32
  %add.ptr99.7.i.i.i = getelementptr i8, ptr %23, i32 61
  %198 = ptrtoint ptr %add.ptr99.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %add.ptr99.7.i.i.i, align 1
  %conv100.7.i.i.i = zext i8 %199 to i32
  %add.ptr102.7.i.i.i = getelementptr i8, ptr %23, i32 62
  %200 = ptrtoint ptr %add.ptr102.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %add.ptr102.7.i.i.i, align 1
  %conv103.7.i.i.i = zext i8 %201 to i32
  %add.ptr105.7.i.i.i = getelementptr i8, ptr %23, i32 63
  %202 = ptrtoint ptr %add.ptr105.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %add.ptr105.7.i.i.i, align 1
  %conv106.7.i.i.i = zext i8 %203 to i32
  %call107.7.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv85.7.i.i.i, i32 noundef %conv88.7.i.i.i, i32 noundef %conv91.7.i.i.i, i32 noundef %conv94.7.i.i.i, i32 noundef %conv97.7.i.i.i, i32 noundef %conv100.7.i.i.i, i32 noundef %conv103.7.i.i.i, i32 noundef %conv106.7.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr425.pr.pr.pr.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr425.pr.pr.pr.i.i.i)
  %cmp113.i.i.i = icmp ugt i32 %.pr425.pr.pr.pr.i.i.i, 4
  br i1 %cmp113.i.i.i, label %do.end118.i.i.i, label %for.inc.7.i.i.i.if.end279.i.i.i_crit_edge

for.inc.7.i.i.i.if.end279.i.i.i_crit_edge:        ; preds = %for.inc.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end279.i.i.i

do.end118.i.i.i:                                  ; preds = %for.inc.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call120.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #12
  br label %if.end279.i.i.i

if.then127.i.i.i:                                 ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv18.i.i.i)
  %cmp129.i.i.i = icmp eq i8 %conv18.i.i.i, 0
  br i1 %cmp129.i.i.i, label %if.then131.i.i.i, label %if.then127.i.i.i.if.end279.i.i.i_crit_edge

if.then127.i.i.i.if.end279.i.i.i_crit_edge:       ; preds = %if.then127.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end279.i.i.i

if.then131.i.i.i:                                 ; preds = %if.then127.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %204 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %204)
  %cmp134.i.i.i = icmp ugt i32 %204, 4
  br i1 %cmp134.i.i.i, label %do.end144.i.i.i, label %if.then131.i.i.i.sw.bb.i.i.i_crit_edge

if.then131.i.i.i.sw.bb.i.i.i_crit_edge:           ; preds = %if.then131.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i.i

do.end144.i.i.i:                                  ; preds = %if.then131.i.i.i
  %call141.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr427.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr427.i.i.i)
  %cmp150.i.i.i = icmp ugt i32 %.pr427.i.i.i, 4
  br i1 %cmp150.i.i.i, label %for.inc184.i.i.i, label %do.end144.i.i.i.sw.bb.i.i.i_crit_edge

do.end144.i.i.i.sw.bb.i.i.i_crit_edge:            ; preds = %do.end144.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i.i

for.inc184.i.i.i:                                 ; preds = %do.end144.i.i.i
  %205 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %23, align 1
  %conv158.i.i.i = zext i8 %206 to i32
  %add.ptr160.i.i.i = getelementptr i8, ptr %23, i32 1
  %207 = ptrtoint ptr %add.ptr160.i.i.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %add.ptr160.i.i.i, align 1
  %conv161.i.i.i = zext i8 %208 to i32
  %add.ptr163.i.i.i = getelementptr i8, ptr %23, i32 2
  %209 = ptrtoint ptr %add.ptr163.i.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %add.ptr163.i.i.i, align 1
  %conv164.i.i.i = zext i8 %210 to i32
  %add.ptr166.i.i.i = getelementptr i8, ptr %23, i32 3
  %211 = ptrtoint ptr %add.ptr166.i.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %add.ptr166.i.i.i, align 1
  %conv167.i.i.i = zext i8 %212 to i32
  %add.ptr169.i.i.i = getelementptr i8, ptr %23, i32 4
  %213 = ptrtoint ptr %add.ptr169.i.i.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %add.ptr169.i.i.i, align 1
  %conv170.i.i.i = zext i8 %214 to i32
  %add.ptr172.i.i.i = getelementptr i8, ptr %23, i32 5
  %215 = ptrtoint ptr %add.ptr172.i.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %add.ptr172.i.i.i, align 1
  %conv173.i.i.i = zext i8 %216 to i32
  %add.ptr175.i.i.i = getelementptr i8, ptr %23, i32 6
  %217 = ptrtoint ptr %add.ptr175.i.i.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %add.ptr175.i.i.i, align 1
  %conv176.i.i.i = zext i8 %218 to i32
  %add.ptr178.i.i.i = getelementptr i8, ptr %23, i32 7
  %219 = ptrtoint ptr %add.ptr178.i.i.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %add.ptr178.i.i.i, align 1
  %conv179.i.i.i = zext i8 %220 to i32
  %call180.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv158.i.i.i, i32 noundef %conv161.i.i.i, i32 noundef %conv164.i.i.i, i32 noundef %conv167.i.i.i, i32 noundef %conv170.i.i.i, i32 noundef %conv173.i.i.i, i32 noundef %conv176.i.i.i, i32 noundef %conv179.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr429.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr429.i.i.i)
  %cmp150.1.i.i.i = icmp ugt i32 %.pr429.i.i.i, 4
  br i1 %cmp150.1.i.i.i, label %for.inc184.1.i.i.i, label %for.inc184.i.i.i.sw.bb.i.i.i_crit_edge

for.inc184.i.i.i.sw.bb.i.i.i_crit_edge:           ; preds = %for.inc184.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i.i

for.inc184.1.i.i.i:                               ; preds = %for.inc184.i.i.i
  %add.ptr157.1.i.i.i = getelementptr i8, ptr %23, i32 8
  %221 = ptrtoint ptr %add.ptr157.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %add.ptr157.1.i.i.i, align 1
  %conv158.1.i.i.i = zext i8 %222 to i32
  %add.ptr160.1.i.i.i = getelementptr i8, ptr %23, i32 9
  %223 = ptrtoint ptr %add.ptr160.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %add.ptr160.1.i.i.i, align 1
  %conv161.1.i.i.i = zext i8 %224 to i32
  %add.ptr163.1.i.i.i = getelementptr i8, ptr %23, i32 10
  %225 = ptrtoint ptr %add.ptr163.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %add.ptr163.1.i.i.i, align 1
  %conv164.1.i.i.i = zext i8 %226 to i32
  %add.ptr166.1.i.i.i = getelementptr i8, ptr %23, i32 11
  %227 = ptrtoint ptr %add.ptr166.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %add.ptr166.1.i.i.i, align 1
  %conv167.1.i.i.i = zext i8 %228 to i32
  %add.ptr169.1.i.i.i = getelementptr i8, ptr %23, i32 12
  %229 = ptrtoint ptr %add.ptr169.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %add.ptr169.1.i.i.i, align 1
  %conv170.1.i.i.i = zext i8 %230 to i32
  %add.ptr172.1.i.i.i = getelementptr i8, ptr %23, i32 13
  %231 = ptrtoint ptr %add.ptr172.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %add.ptr172.1.i.i.i, align 1
  %conv173.1.i.i.i = zext i8 %232 to i32
  %add.ptr175.1.i.i.i = getelementptr i8, ptr %23, i32 14
  %233 = ptrtoint ptr %add.ptr175.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %add.ptr175.1.i.i.i, align 1
  %conv176.1.i.i.i = zext i8 %234 to i32
  %add.ptr178.1.i.i.i = getelementptr i8, ptr %23, i32 15
  %235 = ptrtoint ptr %add.ptr178.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %add.ptr178.1.i.i.i, align 1
  %conv179.1.i.i.i = zext i8 %236 to i32
  %call180.1.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv158.1.i.i.i, i32 noundef %conv161.1.i.i.i, i32 noundef %conv164.1.i.i.i, i32 noundef %conv167.1.i.i.i, i32 noundef %conv170.1.i.i.i, i32 noundef %conv173.1.i.i.i, i32 noundef %conv176.1.i.i.i, i32 noundef %conv179.1.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr431.pr.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr431.pr.i.i.i)
  %cmp150.2.i.i.i = icmp ugt i32 %.pr431.pr.i.i.i, 4
  br i1 %cmp150.2.i.i.i, label %for.inc184.2.i.i.i, label %for.inc184.1.i.i.i.sw.bb.i.i.i_crit_edge

for.inc184.1.i.i.i.sw.bb.i.i.i_crit_edge:         ; preds = %for.inc184.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i.i

for.inc184.2.i.i.i:                               ; preds = %for.inc184.1.i.i.i
  %add.ptr157.2.i.i.i = getelementptr i8, ptr %23, i32 16
  %237 = ptrtoint ptr %add.ptr157.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %add.ptr157.2.i.i.i, align 1
  %conv158.2.i.i.i = zext i8 %238 to i32
  %add.ptr160.2.i.i.i = getelementptr i8, ptr %23, i32 17
  %239 = ptrtoint ptr %add.ptr160.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %add.ptr160.2.i.i.i, align 1
  %conv161.2.i.i.i = zext i8 %240 to i32
  %add.ptr163.2.i.i.i = getelementptr i8, ptr %23, i32 18
  %241 = ptrtoint ptr %add.ptr163.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %add.ptr163.2.i.i.i, align 1
  %conv164.2.i.i.i = zext i8 %242 to i32
  %add.ptr166.2.i.i.i = getelementptr i8, ptr %23, i32 19
  %243 = ptrtoint ptr %add.ptr166.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %add.ptr166.2.i.i.i, align 1
  %conv167.2.i.i.i = zext i8 %244 to i32
  %add.ptr169.2.i.i.i = getelementptr i8, ptr %23, i32 20
  %245 = ptrtoint ptr %add.ptr169.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %add.ptr169.2.i.i.i, align 1
  %conv170.2.i.i.i = zext i8 %246 to i32
  %add.ptr172.2.i.i.i = getelementptr i8, ptr %23, i32 21
  %247 = ptrtoint ptr %add.ptr172.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %add.ptr172.2.i.i.i, align 1
  %conv173.2.i.i.i = zext i8 %248 to i32
  %add.ptr175.2.i.i.i = getelementptr i8, ptr %23, i32 22
  %249 = ptrtoint ptr %add.ptr175.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %add.ptr175.2.i.i.i, align 1
  %conv176.2.i.i.i = zext i8 %250 to i32
  %add.ptr178.2.i.i.i = getelementptr i8, ptr %23, i32 23
  %251 = ptrtoint ptr %add.ptr178.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %add.ptr178.2.i.i.i, align 1
  %conv179.2.i.i.i = zext i8 %252 to i32
  %call180.2.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv158.2.i.i.i, i32 noundef %conv161.2.i.i.i, i32 noundef %conv164.2.i.i.i, i32 noundef %conv167.2.i.i.i, i32 noundef %conv170.2.i.i.i, i32 noundef %conv173.2.i.i.i, i32 noundef %conv176.2.i.i.i, i32 noundef %conv179.2.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr433.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr433.i.i.i)
  %cmp150.3.i.i.i = icmp ugt i32 %.pr433.i.i.i, 4
  br i1 %cmp150.3.i.i.i, label %for.inc184.3.i.i.i, label %for.inc184.2.i.i.i.sw.bb.i.i.i_crit_edge

for.inc184.2.i.i.i.sw.bb.i.i.i_crit_edge:         ; preds = %for.inc184.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i.i

for.inc184.3.i.i.i:                               ; preds = %for.inc184.2.i.i.i
  %add.ptr157.3.i.i.i = getelementptr i8, ptr %23, i32 24
  %253 = ptrtoint ptr %add.ptr157.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %add.ptr157.3.i.i.i, align 1
  %conv158.3.i.i.i = zext i8 %254 to i32
  %add.ptr160.3.i.i.i = getelementptr i8, ptr %23, i32 25
  %255 = ptrtoint ptr %add.ptr160.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %add.ptr160.3.i.i.i, align 1
  %conv161.3.i.i.i = zext i8 %256 to i32
  %add.ptr163.3.i.i.i = getelementptr i8, ptr %23, i32 26
  %257 = ptrtoint ptr %add.ptr163.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %add.ptr163.3.i.i.i, align 1
  %conv164.3.i.i.i = zext i8 %258 to i32
  %add.ptr166.3.i.i.i = getelementptr i8, ptr %23, i32 27
  %259 = ptrtoint ptr %add.ptr166.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %add.ptr166.3.i.i.i, align 1
  %conv167.3.i.i.i = zext i8 %260 to i32
  %add.ptr169.3.i.i.i = getelementptr i8, ptr %23, i32 28
  %261 = ptrtoint ptr %add.ptr169.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %add.ptr169.3.i.i.i, align 1
  %conv170.3.i.i.i = zext i8 %262 to i32
  %add.ptr172.3.i.i.i = getelementptr i8, ptr %23, i32 29
  %263 = ptrtoint ptr %add.ptr172.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %add.ptr172.3.i.i.i, align 1
  %conv173.3.i.i.i = zext i8 %264 to i32
  %add.ptr175.3.i.i.i = getelementptr i8, ptr %23, i32 30
  %265 = ptrtoint ptr %add.ptr175.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %add.ptr175.3.i.i.i, align 1
  %conv176.3.i.i.i = zext i8 %266 to i32
  %add.ptr178.3.i.i.i = getelementptr i8, ptr %23, i32 31
  %267 = ptrtoint ptr %add.ptr178.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %add.ptr178.3.i.i.i, align 1
  %conv179.3.i.i.i = zext i8 %268 to i32
  %call180.3.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv158.3.i.i.i, i32 noundef %conv161.3.i.i.i, i32 noundef %conv164.3.i.i.i, i32 noundef %conv167.3.i.i.i, i32 noundef %conv170.3.i.i.i, i32 noundef %conv173.3.i.i.i, i32 noundef %conv176.3.i.i.i, i32 noundef %conv179.3.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr435.pr.pr.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr435.pr.pr.i.i.i)
  %cmp150.4.i.i.i = icmp ugt i32 %.pr435.pr.pr.i.i.i, 4
  br i1 %cmp150.4.i.i.i, label %for.inc184.4.i.i.i, label %for.inc184.3.i.i.i.sw.bb.i.i.i_crit_edge

for.inc184.3.i.i.i.sw.bb.i.i.i_crit_edge:         ; preds = %for.inc184.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i.i

for.inc184.4.i.i.i:                               ; preds = %for.inc184.3.i.i.i
  %add.ptr157.4.i.i.i = getelementptr i8, ptr %23, i32 32
  %269 = ptrtoint ptr %add.ptr157.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %add.ptr157.4.i.i.i, align 1
  %conv158.4.i.i.i = zext i8 %270 to i32
  %add.ptr160.4.i.i.i = getelementptr i8, ptr %23, i32 33
  %271 = ptrtoint ptr %add.ptr160.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %add.ptr160.4.i.i.i, align 1
  %conv161.4.i.i.i = zext i8 %272 to i32
  %add.ptr163.4.i.i.i = getelementptr i8, ptr %23, i32 34
  %273 = ptrtoint ptr %add.ptr163.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %add.ptr163.4.i.i.i, align 1
  %conv164.4.i.i.i = zext i8 %274 to i32
  %add.ptr166.4.i.i.i = getelementptr i8, ptr %23, i32 35
  %275 = ptrtoint ptr %add.ptr166.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %add.ptr166.4.i.i.i, align 1
  %conv167.4.i.i.i = zext i8 %276 to i32
  %add.ptr169.4.i.i.i = getelementptr i8, ptr %23, i32 36
  %277 = ptrtoint ptr %add.ptr169.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %add.ptr169.4.i.i.i, align 1
  %conv170.4.i.i.i = zext i8 %278 to i32
  %add.ptr172.4.i.i.i = getelementptr i8, ptr %23, i32 37
  %279 = ptrtoint ptr %add.ptr172.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %add.ptr172.4.i.i.i, align 1
  %conv173.4.i.i.i = zext i8 %280 to i32
  %add.ptr175.4.i.i.i = getelementptr i8, ptr %23, i32 38
  %281 = ptrtoint ptr %add.ptr175.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %add.ptr175.4.i.i.i, align 1
  %conv176.4.i.i.i = zext i8 %282 to i32
  %add.ptr178.4.i.i.i = getelementptr i8, ptr %23, i32 39
  %283 = ptrtoint ptr %add.ptr178.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %add.ptr178.4.i.i.i, align 1
  %conv179.4.i.i.i = zext i8 %284 to i32
  %call180.4.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv158.4.i.i.i, i32 noundef %conv161.4.i.i.i, i32 noundef %conv164.4.i.i.i, i32 noundef %conv167.4.i.i.i, i32 noundef %conv170.4.i.i.i, i32 noundef %conv173.4.i.i.i, i32 noundef %conv176.4.i.i.i, i32 noundef %conv179.4.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr437.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr437.i.i.i)
  %cmp150.5.i.i.i = icmp ugt i32 %.pr437.i.i.i, 4
  br i1 %cmp150.5.i.i.i, label %for.inc184.5.i.i.i, label %for.inc184.4.i.i.i.sw.bb.i.i.i_crit_edge

for.inc184.4.i.i.i.sw.bb.i.i.i_crit_edge:         ; preds = %for.inc184.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i.i

for.inc184.5.i.i.i:                               ; preds = %for.inc184.4.i.i.i
  %add.ptr157.5.i.i.i = getelementptr i8, ptr %23, i32 40
  %285 = ptrtoint ptr %add.ptr157.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %add.ptr157.5.i.i.i, align 1
  %conv158.5.i.i.i = zext i8 %286 to i32
  %add.ptr160.5.i.i.i = getelementptr i8, ptr %23, i32 41
  %287 = ptrtoint ptr %add.ptr160.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %add.ptr160.5.i.i.i, align 1
  %conv161.5.i.i.i = zext i8 %288 to i32
  %add.ptr163.5.i.i.i = getelementptr i8, ptr %23, i32 42
  %289 = ptrtoint ptr %add.ptr163.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %add.ptr163.5.i.i.i, align 1
  %conv164.5.i.i.i = zext i8 %290 to i32
  %add.ptr166.5.i.i.i = getelementptr i8, ptr %23, i32 43
  %291 = ptrtoint ptr %add.ptr166.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %add.ptr166.5.i.i.i, align 1
  %conv167.5.i.i.i = zext i8 %292 to i32
  %add.ptr169.5.i.i.i = getelementptr i8, ptr %23, i32 44
  %293 = ptrtoint ptr %add.ptr169.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %add.ptr169.5.i.i.i, align 1
  %conv170.5.i.i.i = zext i8 %294 to i32
  %add.ptr172.5.i.i.i = getelementptr i8, ptr %23, i32 45
  %295 = ptrtoint ptr %add.ptr172.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %add.ptr172.5.i.i.i, align 1
  %conv173.5.i.i.i = zext i8 %296 to i32
  %add.ptr175.5.i.i.i = getelementptr i8, ptr %23, i32 46
  %297 = ptrtoint ptr %add.ptr175.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %add.ptr175.5.i.i.i, align 1
  %conv176.5.i.i.i = zext i8 %298 to i32
  %add.ptr178.5.i.i.i = getelementptr i8, ptr %23, i32 47
  %299 = ptrtoint ptr %add.ptr178.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %add.ptr178.5.i.i.i, align 1
  %conv179.5.i.i.i = zext i8 %300 to i32
  %call180.5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv158.5.i.i.i, i32 noundef %conv161.5.i.i.i, i32 noundef %conv164.5.i.i.i, i32 noundef %conv167.5.i.i.i, i32 noundef %conv170.5.i.i.i, i32 noundef %conv173.5.i.i.i, i32 noundef %conv176.5.i.i.i, i32 noundef %conv179.5.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr439.pr.pr.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr439.pr.pr.i.i.i)
  %cmp150.6.i.i.i = icmp ugt i32 %.pr439.pr.pr.i.i.i, 4
  br i1 %cmp150.6.i.i.i, label %for.inc184.6.i.i.i, label %for.inc184.5.i.i.i.sw.bb.i.i.i_crit_edge

for.inc184.5.i.i.i.sw.bb.i.i.i_crit_edge:         ; preds = %for.inc184.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i.i

for.inc184.6.i.i.i:                               ; preds = %for.inc184.5.i.i.i
  %add.ptr157.6.i.i.i = getelementptr i8, ptr %23, i32 48
  %301 = ptrtoint ptr %add.ptr157.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %add.ptr157.6.i.i.i, align 1
  %conv158.6.i.i.i = zext i8 %302 to i32
  %add.ptr160.6.i.i.i = getelementptr i8, ptr %23, i32 49
  %303 = ptrtoint ptr %add.ptr160.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %add.ptr160.6.i.i.i, align 1
  %conv161.6.i.i.i = zext i8 %304 to i32
  %add.ptr163.6.i.i.i = getelementptr i8, ptr %23, i32 50
  %305 = ptrtoint ptr %add.ptr163.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %add.ptr163.6.i.i.i, align 1
  %conv164.6.i.i.i = zext i8 %306 to i32
  %add.ptr166.6.i.i.i = getelementptr i8, ptr %23, i32 51
  %307 = ptrtoint ptr %add.ptr166.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %add.ptr166.6.i.i.i, align 1
  %conv167.6.i.i.i = zext i8 %308 to i32
  %add.ptr169.6.i.i.i = getelementptr i8, ptr %23, i32 52
  %309 = ptrtoint ptr %add.ptr169.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %add.ptr169.6.i.i.i, align 1
  %conv170.6.i.i.i = zext i8 %310 to i32
  %add.ptr172.6.i.i.i = getelementptr i8, ptr %23, i32 53
  %311 = ptrtoint ptr %add.ptr172.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %add.ptr172.6.i.i.i, align 1
  %conv173.6.i.i.i = zext i8 %312 to i32
  %add.ptr175.6.i.i.i = getelementptr i8, ptr %23, i32 54
  %313 = ptrtoint ptr %add.ptr175.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %add.ptr175.6.i.i.i, align 1
  %conv176.6.i.i.i = zext i8 %314 to i32
  %add.ptr178.6.i.i.i = getelementptr i8, ptr %23, i32 55
  %315 = ptrtoint ptr %add.ptr178.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %add.ptr178.6.i.i.i, align 1
  %conv179.6.i.i.i = zext i8 %316 to i32
  %call180.6.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv158.6.i.i.i, i32 noundef %conv161.6.i.i.i, i32 noundef %conv164.6.i.i.i, i32 noundef %conv167.6.i.i.i, i32 noundef %conv170.6.i.i.i, i32 noundef %conv173.6.i.i.i, i32 noundef %conv176.6.i.i.i, i32 noundef %conv179.6.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr441.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr441.i.i.i)
  %cmp150.7.i.i.i = icmp ugt i32 %.pr441.i.i.i, 4
  br i1 %cmp150.7.i.i.i, label %for.inc184.7.i.i.i, label %for.inc184.6.i.i.i.sw.bb.i.i.i_crit_edge

for.inc184.6.i.i.i.sw.bb.i.i.i_crit_edge:         ; preds = %for.inc184.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i.i

for.inc184.7.i.i.i:                               ; preds = %for.inc184.6.i.i.i
  %add.ptr157.7.i.i.i = getelementptr i8, ptr %23, i32 56
  %317 = ptrtoint ptr %add.ptr157.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %add.ptr157.7.i.i.i, align 1
  %conv158.7.i.i.i = zext i8 %318 to i32
  %add.ptr160.7.i.i.i = getelementptr i8, ptr %23, i32 57
  %319 = ptrtoint ptr %add.ptr160.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %add.ptr160.7.i.i.i, align 1
  %conv161.7.i.i.i = zext i8 %320 to i32
  %add.ptr163.7.i.i.i = getelementptr i8, ptr %23, i32 58
  %321 = ptrtoint ptr %add.ptr163.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %add.ptr163.7.i.i.i, align 1
  %conv164.7.i.i.i = zext i8 %322 to i32
  %add.ptr166.7.i.i.i = getelementptr i8, ptr %23, i32 59
  %323 = ptrtoint ptr %add.ptr166.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %add.ptr166.7.i.i.i, align 1
  %conv167.7.i.i.i = zext i8 %324 to i32
  %add.ptr169.7.i.i.i = getelementptr i8, ptr %23, i32 60
  %325 = ptrtoint ptr %add.ptr169.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %add.ptr169.7.i.i.i, align 1
  %conv170.7.i.i.i = zext i8 %326 to i32
  %add.ptr172.7.i.i.i = getelementptr i8, ptr %23, i32 61
  %327 = ptrtoint ptr %add.ptr172.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %add.ptr172.7.i.i.i, align 1
  %conv173.7.i.i.i = zext i8 %328 to i32
  %add.ptr175.7.i.i.i = getelementptr i8, ptr %23, i32 62
  %329 = ptrtoint ptr %add.ptr175.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %add.ptr175.7.i.i.i, align 1
  %conv176.7.i.i.i = zext i8 %330 to i32
  %add.ptr178.7.i.i.i = getelementptr i8, ptr %23, i32 63
  %331 = ptrtoint ptr %add.ptr178.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %add.ptr178.7.i.i.i, align 1
  %conv179.7.i.i.i = zext i8 %332 to i32
  %call180.7.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv158.7.i.i.i, i32 noundef %conv161.7.i.i.i, i32 noundef %conv164.7.i.i.i, i32 noundef %conv167.7.i.i.i, i32 noundef %conv170.7.i.i.i, i32 noundef %conv173.7.i.i.i, i32 noundef %conv176.7.i.i.i, i32 noundef %conv179.7.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr443.pr.pr.pr.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr443.pr.pr.pr.i.i.i)
  %cmp188.i.i.i = icmp ugt i32 %.pr443.pr.pr.pr.i.i.i, 4
  br i1 %cmp188.i.i.i, label %do.end193.i.i.i, label %for.inc184.7.i.i.i.sw.bb.i.i.i_crit_edge

for.inc184.7.i.i.i.sw.bb.i.i.i_crit_edge:         ; preds = %for.inc184.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i.i

do.end193.i.i.i:                                  ; preds = %for.inc184.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call195.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #12
  br label %sw.bb.i.i.i

if.then204.i.i.i:                                 ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv18.i.i.i)
  %cmp206.i.i.i = icmp eq i8 %conv18.i.i.i, 8
  br i1 %cmp206.i.i.i, label %if.then208.i.i.i, label %if.then204.i.i.i.if.end279.i.i.i_crit_edge

if.then204.i.i.i.if.end279.i.i.i_crit_edge:       ; preds = %if.then204.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end279.i.i.i

if.then208.i.i.i:                                 ; preds = %if.then204.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %333 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %333)
  %cmp211.i.i.i = icmp ugt i32 %333, 4
  br i1 %cmp211.i.i.i, label %do.end221.i.i.i, label %if.then208.i.i.i.sw.bb284.i.i.i_crit_edge

if.then208.i.i.i.sw.bb284.i.i.i_crit_edge:        ; preds = %if.then208.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb284.i.i.i

do.end221.i.i.i:                                  ; preds = %if.then208.i.i.i
  %call218.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr445.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr445.i.i.i)
  %cmp227.i.i.i = icmp ugt i32 %.pr445.i.i.i, 4
  br i1 %cmp227.i.i.i, label %for.inc261.i.i.i, label %do.end221.i.i.i.sw.bb284.i.i.i_crit_edge

do.end221.i.i.i.sw.bb284.i.i.i_crit_edge:         ; preds = %do.end221.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb284.i.i.i

for.inc261.i.i.i:                                 ; preds = %do.end221.i.i.i
  %334 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %23, align 1
  %conv235.i.i.i = zext i8 %335 to i32
  %add.ptr237.i.i.i = getelementptr i8, ptr %23, i32 1
  %336 = ptrtoint ptr %add.ptr237.i.i.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %add.ptr237.i.i.i, align 1
  %conv238.i.i.i = zext i8 %337 to i32
  %add.ptr240.i.i.i = getelementptr i8, ptr %23, i32 2
  %338 = ptrtoint ptr %add.ptr240.i.i.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %add.ptr240.i.i.i, align 1
  %conv241.i.i.i = zext i8 %339 to i32
  %add.ptr243.i.i.i = getelementptr i8, ptr %23, i32 3
  %340 = ptrtoint ptr %add.ptr243.i.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %add.ptr243.i.i.i, align 1
  %conv244.i.i.i = zext i8 %341 to i32
  %add.ptr246.i.i.i = getelementptr i8, ptr %23, i32 4
  %342 = ptrtoint ptr %add.ptr246.i.i.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %add.ptr246.i.i.i, align 1
  %conv247.i.i.i = zext i8 %343 to i32
  %add.ptr249.i.i.i = getelementptr i8, ptr %23, i32 5
  %344 = ptrtoint ptr %add.ptr249.i.i.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %add.ptr249.i.i.i, align 1
  %conv250.i.i.i = zext i8 %345 to i32
  %add.ptr252.i.i.i = getelementptr i8, ptr %23, i32 6
  %346 = ptrtoint ptr %add.ptr252.i.i.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %add.ptr252.i.i.i, align 1
  %conv253.i.i.i = zext i8 %347 to i32
  %add.ptr255.i.i.i = getelementptr i8, ptr %23, i32 7
  %348 = ptrtoint ptr %add.ptr255.i.i.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %add.ptr255.i.i.i, align 1
  %conv256.i.i.i = zext i8 %349 to i32
  %call257.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv235.i.i.i, i32 noundef %conv238.i.i.i, i32 noundef %conv241.i.i.i, i32 noundef %conv244.i.i.i, i32 noundef %conv247.i.i.i, i32 noundef %conv250.i.i.i, i32 noundef %conv253.i.i.i, i32 noundef %conv256.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr447.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr447.i.i.i)
  %cmp227.1.i.i.i = icmp ugt i32 %.pr447.i.i.i, 4
  br i1 %cmp227.1.i.i.i, label %for.inc261.1.i.i.i, label %for.inc261.i.i.i.sw.bb284.i.i.i_crit_edge

for.inc261.i.i.i.sw.bb284.i.i.i_crit_edge:        ; preds = %for.inc261.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb284.i.i.i

for.inc261.1.i.i.i:                               ; preds = %for.inc261.i.i.i
  %add.ptr234.1.i.i.i = getelementptr i8, ptr %23, i32 8
  %350 = ptrtoint ptr %add.ptr234.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %add.ptr234.1.i.i.i, align 1
  %conv235.1.i.i.i = zext i8 %351 to i32
  %add.ptr237.1.i.i.i = getelementptr i8, ptr %23, i32 9
  %352 = ptrtoint ptr %add.ptr237.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %add.ptr237.1.i.i.i, align 1
  %conv238.1.i.i.i = zext i8 %353 to i32
  %add.ptr240.1.i.i.i = getelementptr i8, ptr %23, i32 10
  %354 = ptrtoint ptr %add.ptr240.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %add.ptr240.1.i.i.i, align 1
  %conv241.1.i.i.i = zext i8 %355 to i32
  %add.ptr243.1.i.i.i = getelementptr i8, ptr %23, i32 11
  %356 = ptrtoint ptr %add.ptr243.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %add.ptr243.1.i.i.i, align 1
  %conv244.1.i.i.i = zext i8 %357 to i32
  %add.ptr246.1.i.i.i = getelementptr i8, ptr %23, i32 12
  %358 = ptrtoint ptr %add.ptr246.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %add.ptr246.1.i.i.i, align 1
  %conv247.1.i.i.i = zext i8 %359 to i32
  %add.ptr249.1.i.i.i = getelementptr i8, ptr %23, i32 13
  %360 = ptrtoint ptr %add.ptr249.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %add.ptr249.1.i.i.i, align 1
  %conv250.1.i.i.i = zext i8 %361 to i32
  %add.ptr252.1.i.i.i = getelementptr i8, ptr %23, i32 14
  %362 = ptrtoint ptr %add.ptr252.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %add.ptr252.1.i.i.i, align 1
  %conv253.1.i.i.i = zext i8 %363 to i32
  %add.ptr255.1.i.i.i = getelementptr i8, ptr %23, i32 15
  %364 = ptrtoint ptr %add.ptr255.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %add.ptr255.1.i.i.i, align 1
  %conv256.1.i.i.i = zext i8 %365 to i32
  %call257.1.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv235.1.i.i.i, i32 noundef %conv238.1.i.i.i, i32 noundef %conv241.1.i.i.i, i32 noundef %conv244.1.i.i.i, i32 noundef %conv247.1.i.i.i, i32 noundef %conv250.1.i.i.i, i32 noundef %conv253.1.i.i.i, i32 noundef %conv256.1.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr449.pr.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr449.pr.i.i.i)
  %cmp227.2.i.i.i = icmp ugt i32 %.pr449.pr.i.i.i, 4
  br i1 %cmp227.2.i.i.i, label %for.inc261.2.i.i.i, label %for.inc261.1.i.i.i.sw.bb284.i.i.i_crit_edge

for.inc261.1.i.i.i.sw.bb284.i.i.i_crit_edge:      ; preds = %for.inc261.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb284.i.i.i

for.inc261.2.i.i.i:                               ; preds = %for.inc261.1.i.i.i
  %add.ptr234.2.i.i.i = getelementptr i8, ptr %23, i32 16
  %366 = ptrtoint ptr %add.ptr234.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %add.ptr234.2.i.i.i, align 1
  %conv235.2.i.i.i = zext i8 %367 to i32
  %add.ptr237.2.i.i.i = getelementptr i8, ptr %23, i32 17
  %368 = ptrtoint ptr %add.ptr237.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %add.ptr237.2.i.i.i, align 1
  %conv238.2.i.i.i = zext i8 %369 to i32
  %add.ptr240.2.i.i.i = getelementptr i8, ptr %23, i32 18
  %370 = ptrtoint ptr %add.ptr240.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %add.ptr240.2.i.i.i, align 1
  %conv241.2.i.i.i = zext i8 %371 to i32
  %add.ptr243.2.i.i.i = getelementptr i8, ptr %23, i32 19
  %372 = ptrtoint ptr %add.ptr243.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %add.ptr243.2.i.i.i, align 1
  %conv244.2.i.i.i = zext i8 %373 to i32
  %add.ptr246.2.i.i.i = getelementptr i8, ptr %23, i32 20
  %374 = ptrtoint ptr %add.ptr246.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %add.ptr246.2.i.i.i, align 1
  %conv247.2.i.i.i = zext i8 %375 to i32
  %add.ptr249.2.i.i.i = getelementptr i8, ptr %23, i32 21
  %376 = ptrtoint ptr %add.ptr249.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %add.ptr249.2.i.i.i, align 1
  %conv250.2.i.i.i = zext i8 %377 to i32
  %add.ptr252.2.i.i.i = getelementptr i8, ptr %23, i32 22
  %378 = ptrtoint ptr %add.ptr252.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %add.ptr252.2.i.i.i, align 1
  %conv253.2.i.i.i = zext i8 %379 to i32
  %add.ptr255.2.i.i.i = getelementptr i8, ptr %23, i32 23
  %380 = ptrtoint ptr %add.ptr255.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %add.ptr255.2.i.i.i, align 1
  %conv256.2.i.i.i = zext i8 %381 to i32
  %call257.2.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv235.2.i.i.i, i32 noundef %conv238.2.i.i.i, i32 noundef %conv241.2.i.i.i, i32 noundef %conv244.2.i.i.i, i32 noundef %conv247.2.i.i.i, i32 noundef %conv250.2.i.i.i, i32 noundef %conv253.2.i.i.i, i32 noundef %conv256.2.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr451.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr451.i.i.i)
  %cmp227.3.i.i.i = icmp ugt i32 %.pr451.i.i.i, 4
  br i1 %cmp227.3.i.i.i, label %for.inc261.3.i.i.i, label %for.inc261.2.i.i.i.sw.bb284.i.i.i_crit_edge

for.inc261.2.i.i.i.sw.bb284.i.i.i_crit_edge:      ; preds = %for.inc261.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb284.i.i.i

for.inc261.3.i.i.i:                               ; preds = %for.inc261.2.i.i.i
  %add.ptr234.3.i.i.i = getelementptr i8, ptr %23, i32 24
  %382 = ptrtoint ptr %add.ptr234.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %add.ptr234.3.i.i.i, align 1
  %conv235.3.i.i.i = zext i8 %383 to i32
  %add.ptr237.3.i.i.i = getelementptr i8, ptr %23, i32 25
  %384 = ptrtoint ptr %add.ptr237.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %add.ptr237.3.i.i.i, align 1
  %conv238.3.i.i.i = zext i8 %385 to i32
  %add.ptr240.3.i.i.i = getelementptr i8, ptr %23, i32 26
  %386 = ptrtoint ptr %add.ptr240.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %add.ptr240.3.i.i.i, align 1
  %conv241.3.i.i.i = zext i8 %387 to i32
  %add.ptr243.3.i.i.i = getelementptr i8, ptr %23, i32 27
  %388 = ptrtoint ptr %add.ptr243.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %add.ptr243.3.i.i.i, align 1
  %conv244.3.i.i.i = zext i8 %389 to i32
  %add.ptr246.3.i.i.i = getelementptr i8, ptr %23, i32 28
  %390 = ptrtoint ptr %add.ptr246.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %add.ptr246.3.i.i.i, align 1
  %conv247.3.i.i.i = zext i8 %391 to i32
  %add.ptr249.3.i.i.i = getelementptr i8, ptr %23, i32 29
  %392 = ptrtoint ptr %add.ptr249.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %add.ptr249.3.i.i.i, align 1
  %conv250.3.i.i.i = zext i8 %393 to i32
  %add.ptr252.3.i.i.i = getelementptr i8, ptr %23, i32 30
  %394 = ptrtoint ptr %add.ptr252.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %add.ptr252.3.i.i.i, align 1
  %conv253.3.i.i.i = zext i8 %395 to i32
  %add.ptr255.3.i.i.i = getelementptr i8, ptr %23, i32 31
  %396 = ptrtoint ptr %add.ptr255.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %add.ptr255.3.i.i.i, align 1
  %conv256.3.i.i.i = zext i8 %397 to i32
  %call257.3.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv235.3.i.i.i, i32 noundef %conv238.3.i.i.i, i32 noundef %conv241.3.i.i.i, i32 noundef %conv244.3.i.i.i, i32 noundef %conv247.3.i.i.i, i32 noundef %conv250.3.i.i.i, i32 noundef %conv253.3.i.i.i, i32 noundef %conv256.3.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr453.pr.pr.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr453.pr.pr.i.i.i)
  %cmp227.4.i.i.i = icmp ugt i32 %.pr453.pr.pr.i.i.i, 4
  br i1 %cmp227.4.i.i.i, label %for.inc261.4.i.i.i, label %for.inc261.3.i.i.i.sw.bb284.i.i.i_crit_edge

for.inc261.3.i.i.i.sw.bb284.i.i.i_crit_edge:      ; preds = %for.inc261.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb284.i.i.i

for.inc261.4.i.i.i:                               ; preds = %for.inc261.3.i.i.i
  %add.ptr234.4.i.i.i = getelementptr i8, ptr %23, i32 32
  %398 = ptrtoint ptr %add.ptr234.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %add.ptr234.4.i.i.i, align 1
  %conv235.4.i.i.i = zext i8 %399 to i32
  %add.ptr237.4.i.i.i = getelementptr i8, ptr %23, i32 33
  %400 = ptrtoint ptr %add.ptr237.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %add.ptr237.4.i.i.i, align 1
  %conv238.4.i.i.i = zext i8 %401 to i32
  %add.ptr240.4.i.i.i = getelementptr i8, ptr %23, i32 34
  %402 = ptrtoint ptr %add.ptr240.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %add.ptr240.4.i.i.i, align 1
  %conv241.4.i.i.i = zext i8 %403 to i32
  %add.ptr243.4.i.i.i = getelementptr i8, ptr %23, i32 35
  %404 = ptrtoint ptr %add.ptr243.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %add.ptr243.4.i.i.i, align 1
  %conv244.4.i.i.i = zext i8 %405 to i32
  %add.ptr246.4.i.i.i = getelementptr i8, ptr %23, i32 36
  %406 = ptrtoint ptr %add.ptr246.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %add.ptr246.4.i.i.i, align 1
  %conv247.4.i.i.i = zext i8 %407 to i32
  %add.ptr249.4.i.i.i = getelementptr i8, ptr %23, i32 37
  %408 = ptrtoint ptr %add.ptr249.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %add.ptr249.4.i.i.i, align 1
  %conv250.4.i.i.i = zext i8 %409 to i32
  %add.ptr252.4.i.i.i = getelementptr i8, ptr %23, i32 38
  %410 = ptrtoint ptr %add.ptr252.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %add.ptr252.4.i.i.i, align 1
  %conv253.4.i.i.i = zext i8 %411 to i32
  %add.ptr255.4.i.i.i = getelementptr i8, ptr %23, i32 39
  %412 = ptrtoint ptr %add.ptr255.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %add.ptr255.4.i.i.i, align 1
  %conv256.4.i.i.i = zext i8 %413 to i32
  %call257.4.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv235.4.i.i.i, i32 noundef %conv238.4.i.i.i, i32 noundef %conv241.4.i.i.i, i32 noundef %conv244.4.i.i.i, i32 noundef %conv247.4.i.i.i, i32 noundef %conv250.4.i.i.i, i32 noundef %conv253.4.i.i.i, i32 noundef %conv256.4.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr455.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr455.i.i.i)
  %cmp227.5.i.i.i = icmp ugt i32 %.pr455.i.i.i, 4
  br i1 %cmp227.5.i.i.i, label %for.inc261.5.i.i.i, label %for.inc261.4.i.i.i.sw.bb284.i.i.i_crit_edge

for.inc261.4.i.i.i.sw.bb284.i.i.i_crit_edge:      ; preds = %for.inc261.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb284.i.i.i

for.inc261.5.i.i.i:                               ; preds = %for.inc261.4.i.i.i
  %add.ptr234.5.i.i.i = getelementptr i8, ptr %23, i32 40
  %414 = ptrtoint ptr %add.ptr234.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %add.ptr234.5.i.i.i, align 1
  %conv235.5.i.i.i = zext i8 %415 to i32
  %add.ptr237.5.i.i.i = getelementptr i8, ptr %23, i32 41
  %416 = ptrtoint ptr %add.ptr237.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %add.ptr237.5.i.i.i, align 1
  %conv238.5.i.i.i = zext i8 %417 to i32
  %add.ptr240.5.i.i.i = getelementptr i8, ptr %23, i32 42
  %418 = ptrtoint ptr %add.ptr240.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %add.ptr240.5.i.i.i, align 1
  %conv241.5.i.i.i = zext i8 %419 to i32
  %add.ptr243.5.i.i.i = getelementptr i8, ptr %23, i32 43
  %420 = ptrtoint ptr %add.ptr243.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %add.ptr243.5.i.i.i, align 1
  %conv244.5.i.i.i = zext i8 %421 to i32
  %add.ptr246.5.i.i.i = getelementptr i8, ptr %23, i32 44
  %422 = ptrtoint ptr %add.ptr246.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %add.ptr246.5.i.i.i, align 1
  %conv247.5.i.i.i = zext i8 %423 to i32
  %add.ptr249.5.i.i.i = getelementptr i8, ptr %23, i32 45
  %424 = ptrtoint ptr %add.ptr249.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %add.ptr249.5.i.i.i, align 1
  %conv250.5.i.i.i = zext i8 %425 to i32
  %add.ptr252.5.i.i.i = getelementptr i8, ptr %23, i32 46
  %426 = ptrtoint ptr %add.ptr252.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %add.ptr252.5.i.i.i, align 1
  %conv253.5.i.i.i = zext i8 %427 to i32
  %add.ptr255.5.i.i.i = getelementptr i8, ptr %23, i32 47
  %428 = ptrtoint ptr %add.ptr255.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %add.ptr255.5.i.i.i, align 1
  %conv256.5.i.i.i = zext i8 %429 to i32
  %call257.5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv235.5.i.i.i, i32 noundef %conv238.5.i.i.i, i32 noundef %conv241.5.i.i.i, i32 noundef %conv244.5.i.i.i, i32 noundef %conv247.5.i.i.i, i32 noundef %conv250.5.i.i.i, i32 noundef %conv253.5.i.i.i, i32 noundef %conv256.5.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr457.pr.pr.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr457.pr.pr.i.i.i)
  %cmp227.6.i.i.i = icmp ugt i32 %.pr457.pr.pr.i.i.i, 4
  br i1 %cmp227.6.i.i.i, label %for.inc261.6.i.i.i, label %for.inc261.5.i.i.i.sw.bb284.i.i.i_crit_edge

for.inc261.5.i.i.i.sw.bb284.i.i.i_crit_edge:      ; preds = %for.inc261.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb284.i.i.i

for.inc261.6.i.i.i:                               ; preds = %for.inc261.5.i.i.i
  %add.ptr234.6.i.i.i = getelementptr i8, ptr %23, i32 48
  %430 = ptrtoint ptr %add.ptr234.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %add.ptr234.6.i.i.i, align 1
  %conv235.6.i.i.i = zext i8 %431 to i32
  %add.ptr237.6.i.i.i = getelementptr i8, ptr %23, i32 49
  %432 = ptrtoint ptr %add.ptr237.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %add.ptr237.6.i.i.i, align 1
  %conv238.6.i.i.i = zext i8 %433 to i32
  %add.ptr240.6.i.i.i = getelementptr i8, ptr %23, i32 50
  %434 = ptrtoint ptr %add.ptr240.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %add.ptr240.6.i.i.i, align 1
  %conv241.6.i.i.i = zext i8 %435 to i32
  %add.ptr243.6.i.i.i = getelementptr i8, ptr %23, i32 51
  %436 = ptrtoint ptr %add.ptr243.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %add.ptr243.6.i.i.i, align 1
  %conv244.6.i.i.i = zext i8 %437 to i32
  %add.ptr246.6.i.i.i = getelementptr i8, ptr %23, i32 52
  %438 = ptrtoint ptr %add.ptr246.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %add.ptr246.6.i.i.i, align 1
  %conv247.6.i.i.i = zext i8 %439 to i32
  %add.ptr249.6.i.i.i = getelementptr i8, ptr %23, i32 53
  %440 = ptrtoint ptr %add.ptr249.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %add.ptr249.6.i.i.i, align 1
  %conv250.6.i.i.i = zext i8 %441 to i32
  %add.ptr252.6.i.i.i = getelementptr i8, ptr %23, i32 54
  %442 = ptrtoint ptr %add.ptr252.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %add.ptr252.6.i.i.i, align 1
  %conv253.6.i.i.i = zext i8 %443 to i32
  %add.ptr255.6.i.i.i = getelementptr i8, ptr %23, i32 55
  %444 = ptrtoint ptr %add.ptr255.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %add.ptr255.6.i.i.i, align 1
  %conv256.6.i.i.i = zext i8 %445 to i32
  %call257.6.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv235.6.i.i.i, i32 noundef %conv238.6.i.i.i, i32 noundef %conv241.6.i.i.i, i32 noundef %conv244.6.i.i.i, i32 noundef %conv247.6.i.i.i, i32 noundef %conv250.6.i.i.i, i32 noundef %conv253.6.i.i.i, i32 noundef %conv256.6.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr459.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr459.i.i.i)
  %cmp227.7.i.i.i = icmp ugt i32 %.pr459.i.i.i, 4
  br i1 %cmp227.7.i.i.i, label %for.inc261.7.i.i.i, label %for.inc261.6.i.i.i.sw.bb284.i.i.i_crit_edge

for.inc261.6.i.i.i.sw.bb284.i.i.i_crit_edge:      ; preds = %for.inc261.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb284.i.i.i

for.inc261.7.i.i.i:                               ; preds = %for.inc261.6.i.i.i
  %add.ptr234.7.i.i.i = getelementptr i8, ptr %23, i32 56
  %446 = ptrtoint ptr %add.ptr234.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %add.ptr234.7.i.i.i, align 1
  %conv235.7.i.i.i = zext i8 %447 to i32
  %add.ptr237.7.i.i.i = getelementptr i8, ptr %23, i32 57
  %448 = ptrtoint ptr %add.ptr237.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %add.ptr237.7.i.i.i, align 1
  %conv238.7.i.i.i = zext i8 %449 to i32
  %add.ptr240.7.i.i.i = getelementptr i8, ptr %23, i32 58
  %450 = ptrtoint ptr %add.ptr240.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %add.ptr240.7.i.i.i, align 1
  %conv241.7.i.i.i = zext i8 %451 to i32
  %add.ptr243.7.i.i.i = getelementptr i8, ptr %23, i32 59
  %452 = ptrtoint ptr %add.ptr243.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %add.ptr243.7.i.i.i, align 1
  %conv244.7.i.i.i = zext i8 %453 to i32
  %add.ptr246.7.i.i.i = getelementptr i8, ptr %23, i32 60
  %454 = ptrtoint ptr %add.ptr246.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %add.ptr246.7.i.i.i, align 1
  %conv247.7.i.i.i = zext i8 %455 to i32
  %add.ptr249.7.i.i.i = getelementptr i8, ptr %23, i32 61
  %456 = ptrtoint ptr %add.ptr249.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %add.ptr249.7.i.i.i, align 1
  %conv250.7.i.i.i = zext i8 %457 to i32
  %add.ptr252.7.i.i.i = getelementptr i8, ptr %23, i32 62
  %458 = ptrtoint ptr %add.ptr252.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %add.ptr252.7.i.i.i, align 1
  %conv253.7.i.i.i = zext i8 %459 to i32
  %add.ptr255.7.i.i.i = getelementptr i8, ptr %23, i32 63
  %460 = ptrtoint ptr %add.ptr255.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %add.ptr255.7.i.i.i, align 1
  %conv256.7.i.i.i = zext i8 %461 to i32
  %call257.7.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv235.7.i.i.i, i32 noundef %conv238.7.i.i.i, i32 noundef %conv241.7.i.i.i, i32 noundef %conv244.7.i.i.i, i32 noundef %conv247.7.i.i.i, i32 noundef %conv250.7.i.i.i, i32 noundef %conv253.7.i.i.i, i32 noundef %conv256.7.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr461.pr.pr.pr.i.i.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr461.pr.pr.pr.i.i.i)
  %cmp265.i.i.i = icmp ugt i32 %.pr461.pr.pr.pr.i.i.i, 4
  br i1 %cmp265.i.i.i, label %do.end270.i.i.i, label %for.inc261.7.i.i.i.sw.bb284.i.i.i_crit_edge

for.inc261.7.i.i.i.sw.bb284.i.i.i_crit_edge:      ; preds = %for.inc261.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb284.i.i.i

do.end270.i.i.i:                                  ; preds = %for.inc261.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call272.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #12
  br label %sw.bb284.i.i.i

if.end279.i.i.i:                                  ; preds = %if.then204.i.i.i.if.end279.i.i.i_crit_edge, %if.then127.i.i.i.if.end279.i.i.i_crit_edge, %do.end118.i.i.i, %for.inc.7.i.i.i.if.end279.i.i.i_crit_edge, %for.inc.6.i.i.i.if.end279.i.i.i_crit_edge, %for.inc.5.i.i.i.if.end279.i.i.i_crit_edge, %for.inc.4.i.i.i.if.end279.i.i.i_crit_edge, %for.inc.3.i.i.i.if.end279.i.i.i_crit_edge, %for.inc.2.i.i.i.if.end279.i.i.i_crit_edge, %for.inc.1.i.i.i.if.end279.i.i.i_crit_edge, %for.inc.i.i.i.if.end279.i.i.i_crit_edge, %do.end74.i.i.i.if.end279.i.i.i_crit_edge, %if.then66.i.i.i.if.end279.i.i.i_crit_edge, %if.end15.i.i.i.if.end279.i.i.i_crit_edge
  %conv280.i.i.i = zext i8 %conv18.i.i.i to i32
  %462 = zext i32 %conv280.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %462, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %conv280.i.i.i, label %if.end279.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge [
    i32 0, label %if.end279.i.i.i.sw.bb.i.i.i_crit_edge
    i32 4, label %sw.bb282.i.i.i
    i32 8, label %if.end279.i.i.i.sw.bb284.i.i.i_crit_edge
  ]

if.end279.i.i.i.sw.bb284.i.i.i_crit_edge:         ; preds = %if.end279.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb284.i.i.i

if.end279.i.i.i.sw.bb.i.i.i_crit_edge:            ; preds = %if.end279.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i.i

if.end279.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge: ; preds = %if.end279.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %validate_recv_frame.exit.thread.i.i

sw.bb.i.i.i:                                      ; preds = %if.end279.i.i.i.sw.bb.i.i.i_crit_edge, %do.end193.i.i.i, %for.inc184.7.i.i.i.sw.bb.i.i.i_crit_edge, %for.inc184.6.i.i.i.sw.bb.i.i.i_crit_edge, %for.inc184.5.i.i.i.sw.bb.i.i.i_crit_edge, %for.inc184.4.i.i.i.sw.bb.i.i.i_crit_edge, %for.inc184.3.i.i.i.sw.bb.i.i.i_crit_edge, %for.inc184.2.i.i.i.sw.bb.i.i.i_crit_edge, %for.inc184.1.i.i.i.sw.bb.i.i.i_crit_edge, %for.inc184.i.i.i.sw.bb.i.i.i_crit_edge, %do.end144.i.i.i.sw.bb.i.i.i_crit_edge, %if.then131.i.i.i.sw.bb.i.i.i_crit_edge
  %call.i.i.i.i = call ptr @recvframe_chk_defrag(ptr noundef %1, ptr noundef %precvframe) #8
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %sw.bb.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge, label %if.end.i.i.i.i

sw.bb.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge: ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %validate_recv_frame.exit.thread.i.i

if.end.i.i.i.i:                                   ; preds = %sw.bb.i.i.i
  %stapriv.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11
  %rx_data.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %call.i.i.i.i, i32 0, i32 9
  %463 = ptrtoint ptr %rx_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %rx_data.i.i.i.i, align 4
  %465 = ptrtoint ptr %464 to i32
  %add.i.i.i.i = add i32 %465, 10
  %466 = inttoptr i32 %add.i.i.i.i to ptr
  %call1.i.i.i.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i.i.i.i, ptr noundef %466) #8
  %tobool2.not.i.i.i.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.if.end51.i.i.i.i_crit_edge, label %if.then3.i.i.i.i

if.end.i.i.i.i.if.end51.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %sta_stats.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call1.i.i.i.i, i32 0, i32 29
  %467 = ptrtoint ptr %sta_stats.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %467)
  %468 = load i64, ptr %sta_stats.i.i.i.i, align 8
  %inc.i.i.i.i = add i64 %468, 1
  store i64 %inc.i.i.i.i, ptr %sta_stats.i.i.i.i, align 8
  %469 = ptrtoint ptr %rx_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %rx_data.i.i.i.i, align 4
  %471 = ptrtoint ptr %470 to i32
  call void @__asan_load2_noabort(i32 %471)
  %472 = load i16, ptr %470, align 2
  %473 = lshr i16 %472, 8
  %474 = trunc i16 %473 to i8
  %trunc.i.i.i.i = and i8 %474, -4
  %475 = zext i8 %trunc.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %475, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %trunc.i.i.i.i, label %if.then3.i.i.i.i.if.end51.i.i.i.i_crit_edge [
    i8 -128, label %if.then6.i.i.i.i
    i8 64, label %if.then14.i.i.i.i
    i8 80, label %if.then23.i.i.i.i
  ]

if.then3.i.i.i.i.if.end51.i.i.i.i_crit_edge:      ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i.i.i.i

if.then6.i.i.i.i:                                 ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_beacon_pkts.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call1.i.i.i.i, i32 0, i32 29, i32 1
  br label %if.end51.sink.split.i.i.i.i

if.then14.i.i.i.i:                                ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_probereq_pkts.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call1.i.i.i.i, i32 0, i32 29, i32 2
  br label %if.end51.sink.split.i.i.i.i

if.then23.i.i.i.i:                                ; preds = %if.then3.i.i.i.i
  %mac_addr.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 4
  %476 = ptrtoint ptr %470 to i32
  %add25.i.i.i.i = add i32 %476, 4
  %477 = inttoptr i32 %add25.i.i.i.i to ptr
  %bcmp.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i.i.i.i, ptr noundef dereferenceable(6) %477, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i)
  %tobool27.not.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %tobool27.not.i.i.i.i, label %if.then28.i.i.i.i, label %if.else31.i.i.i.i

if.then28.i.i.i.i:                                ; preds = %if.then23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_probersp_pkts.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call1.i.i.i.i, i32 0, i32 29, i32 3
  br label %if.end51.sink.split.i.i.i.i

if.else31.i.i.i.i:                                ; preds = %if.then23.i.i.i.i
  %478 = ptrtoint ptr %477 to i32
  call void @__asan_load1_noabort(i32 %478)
  %479 = load i8, ptr %477, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %479)
  %cmp.i.i.i.i.i = icmp eq i8 %479, -1
  br i1 %cmp.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %lor.lhs.false.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.else31.i.i.i.i
  %arrayidx2.i.i.i.i.i = getelementptr i8, ptr %477, i32 1
  %480 = ptrtoint ptr %arrayidx2.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %arrayidx2.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %481)
  %cmp4.i.i.i.i.i = icmp eq i8 %481, -1
  br i1 %cmp4.i.i.i.i.i, label %land.lhs.true6.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.else43.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.if.else43.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else43.i.i.i.i

land.lhs.true6.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %arrayidx7.i.i.i.i.i = getelementptr i8, ptr %477, i32 2
  %482 = ptrtoint ptr %arrayidx7.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %arrayidx7.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %483)
  %cmp9.i.i.i.i.i = icmp eq i8 %483, -1
  br i1 %cmp9.i.i.i.i.i, label %land.lhs.true11.i.i.i.i.i, label %land.lhs.true6.i.i.i.i.i.if.else43.i.i.i.i_crit_edge

land.lhs.true6.i.i.i.i.i.if.else43.i.i.i.i_crit_edge: ; preds = %land.lhs.true6.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else43.i.i.i.i

land.lhs.true11.i.i.i.i.i:                        ; preds = %land.lhs.true6.i.i.i.i.i
  %arrayidx12.i.i.i.i.i = getelementptr i8, ptr %477, i32 3
  %484 = ptrtoint ptr %arrayidx12.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %484)
  %485 = load i8, ptr %arrayidx12.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %485)
  %cmp14.i.i.i.i.i = icmp eq i8 %485, -1
  br i1 %cmp14.i.i.i.i.i, label %land.lhs.true16.i.i.i.i.i, label %land.lhs.true11.i.i.i.i.i.if.else43.i.i.i.i_crit_edge

land.lhs.true11.i.i.i.i.i.if.else43.i.i.i.i_crit_edge: ; preds = %land.lhs.true11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else43.i.i.i.i

land.lhs.true16.i.i.i.i.i:                        ; preds = %land.lhs.true11.i.i.i.i.i
  %arrayidx17.i.i.i.i.i = getelementptr i8, ptr %477, i32 4
  %486 = ptrtoint ptr %arrayidx17.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %arrayidx17.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %487)
  %cmp19.i.i.i.i.i = icmp eq i8 %487, -1
  br i1 %cmp19.i.i.i.i.i, label %is_broadcast_mac_addr.exit.i.i.i.i, label %land.lhs.true16.i.i.i.i.i.if.else43.i.i.i.i_crit_edge

land.lhs.true16.i.i.i.i.i.if.else43.i.i.i.i_crit_edge: ; preds = %land.lhs.true16.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else43.i.i.i.i

is_broadcast_mac_addr.exit.i.i.i.i:               ; preds = %land.lhs.true16.i.i.i.i.i
  %arrayidx21.i.i.i.i.i = getelementptr i8, ptr %477, i32 5
  %488 = ptrtoint ptr %arrayidx21.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %arrayidx21.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %489)
  %cmp23.i.not.i.i.i.i = icmp eq i8 %489, -1
  br i1 %cmp23.i.not.i.i.i.i, label %is_broadcast_mac_addr.exit.i.i.i.i.if.then40.i.i.i.i_crit_edge, label %is_broadcast_mac_addr.exit.i.i.i.i.if.else43.i.i.i.i_crit_edge

is_broadcast_mac_addr.exit.i.i.i.i.if.else43.i.i.i.i_crit_edge: ; preds = %is_broadcast_mac_addr.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else43.i.i.i.i

is_broadcast_mac_addr.exit.i.i.i.i.if.then40.i.i.i.i_crit_edge: ; preds = %is_broadcast_mac_addr.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.else31.i.i.i.i
  %490 = and i8 %479, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %490)
  %tobool39.not.i.i.i.i = icmp eq i8 %490, 0
  br i1 %tobool39.not.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.else43.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.if.then40.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.then40.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40.i.i.i.i

lor.lhs.false.i.i.i.i.if.else43.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else43.i.i.i.i

if.then40.i.i.i.i:                                ; preds = %lor.lhs.false.i.i.i.i.if.then40.i.i.i.i_crit_edge, %is_broadcast_mac_addr.exit.i.i.i.i.if.then40.i.i.i.i_crit_edge
  %rx_probersp_bm_pkts.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call1.i.i.i.i, i32 0, i32 29, i32 4
  br label %if.end51.sink.split.i.i.i.i

if.else43.i.i.i.i:                                ; preds = %lor.lhs.false.i.i.i.i.if.else43.i.i.i.i_crit_edge, %is_broadcast_mac_addr.exit.i.i.i.i.if.else43.i.i.i.i_crit_edge, %land.lhs.true16.i.i.i.i.i.if.else43.i.i.i.i_crit_edge, %land.lhs.true11.i.i.i.i.i.if.else43.i.i.i.i_crit_edge, %land.lhs.true6.i.i.i.i.i.if.else43.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.else43.i.i.i.i_crit_edge
  %rx_probersp_uo_pkts.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call1.i.i.i.i, i32 0, i32 29, i32 5
  br label %if.end51.sink.split.i.i.i.i

if.end51.sink.split.i.i.i.i:                      ; preds = %if.else43.i.i.i.i, %if.then40.i.i.i.i, %if.then28.i.i.i.i, %if.then14.i.i.i.i, %if.then6.i.i.i.i
  %rx_beacon_pkts.sink7.i.i.i.i = phi ptr [ %rx_beacon_pkts.i.i.i.i, %if.then6.i.i.i.i ], [ %rx_probersp_bm_pkts.i.i.i.i, %if.then40.i.i.i.i ], [ %rx_probersp_uo_pkts.i.i.i.i, %if.else43.i.i.i.i ], [ %rx_probersp_pkts.i.i.i.i, %if.then28.i.i.i.i ], [ %rx_probereq_pkts.i.i.i.i, %if.then14.i.i.i.i ]
  %491 = ptrtoint ptr %rx_beacon_pkts.sink7.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %491)
  %492 = load i64, ptr %rx_beacon_pkts.sink7.i.i.i.i, align 8
  %inc8.i.i.i.i = add i64 %492, 1
  store i64 %inc8.i.i.i.i, ptr %rx_beacon_pkts.sink7.i.i.i.i, align 8
  br label %if.end51.i.i.i.i

if.end51.i.i.i.i:                                 ; preds = %if.end51.sink.split.i.i.i.i, %if.then3.i.i.i.i.if.end51.i.i.i.i_crit_edge, %if.end.i.i.i.i.if.end51.i.i.i.i_crit_edge
  call void @mgt_dispatcher(ptr noundef %1, ptr noundef nonnull %call.i.i.i.i) #8
  br label %validate_recv_frame.exit.thread.i.i

sw.bb282.i.i.i:                                   ; preds = %if.end279.i.i.i
  %stapriv.i381.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11
  %493 = ptrtoint ptr %rx_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %rx_data.i.i.i, align 4
  %495 = ptrtoint ptr %494 to i32
  call void @__asan_load2_noabort(i32 %495)
  %496 = load i16, ptr %494, align 2
  %497 = and i16 %496, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %497)
  %cmp.not.i.i.i.i = icmp eq i16 %497, 1024
  br i1 %cmp.not.i.i.i.i, label %if.end.i386.i.i.i, label %sw.bb282.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge

sw.bb282.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge: ; preds = %sw.bb282.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %validate_recv_frame.exit.thread.i.i

if.end.i386.i.i.i:                                ; preds = %sw.bb282.i.i.i
  %498 = ptrtoint ptr %494 to i32
  %add.i383.i.i.i = add i32 %498, 4
  %499 = inttoptr i32 %add.i383.i.i.i to ptr
  %mac_addr.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 4
  %bcmp.i384.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %499, ptr noundef dereferenceable(6) %mac_addr.i.i.i.i.i, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i384.i.i.i)
  %tobool.not.i385.i.i.i = icmp eq i32 %bcmp.i384.i.i.i, 0
  %500 = and i16 %496, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23552, i16 %500)
  %cmp7.i.i.i.i = icmp eq i16 %500, -23552
  %or.cond.i.i.i.i = select i1 %tobool.not.i385.i.i.i, i1 %cmp7.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %if.then9.i.i.i.i, label %if.end.i386.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge

if.end.i386.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge: ; preds = %if.end.i386.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %validate_recv_frame.exit.thread.i.i

if.then9.i.i.i.i:                                 ; preds = %if.end.i386.i.i.i
  %add10.i.i.i.i = add i32 %498, 2
  %501 = inttoptr i32 %add10.i.i.i.i to ptr
  %502 = ptrtoint ptr %501 to i32
  call void @__asan_load2_noabort(i32 %502)
  %503 = load i16, ptr %501, align 2
  %add14.i.i.i.i = add i32 %498, 10
  %504 = inttoptr i32 %add14.i.i.i.i to ptr
  %call15.i.i.i.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i381.i.i.i, ptr noundef %504) #8
  %tobool16.not.i.i.i.i = icmp eq ptr %call15.i.i.i.i, null
  br i1 %tobool16.not.i.i.i.i, label %if.then9.i.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge, label %lor.lhs.false.i387.i.i.i

if.then9.i.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge: ; preds = %if.then9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %validate_recv_frame.exit.thread.i.i

lor.lhs.false.i387.i.i.i:                         ; preds = %if.then9.i.i.i.i
  %505 = and i16 %503, -193
  %506 = call i16 @llvm.bswap.i16(i16 %505) #8
  %aid17.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call15.i.i.i.i, i32 0, i32 8
  %507 = ptrtoint ptr %aid17.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %aid17.i.i.i.i, align 8
  %conv18.i.i.i.i = zext i16 %506 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %508, i32 %conv18.i.i.i.i)
  %cmp19.not.i.i.i.i = icmp eq i32 %508, %conv18.i.i.i.i
  br i1 %cmp19.not.i.i.i.i, label %if.end22.i.i.i.i, label %lor.lhs.false.i387.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge

lor.lhs.false.i387.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge: ; preds = %lor.lhs.false.i387.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %validate_recv_frame.exit.thread.i.i

if.end22.i.i.i.i:                                 ; preds = %lor.lhs.false.i387.i.i.i
  %rx_ctrl_pkts.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call15.i.i.i.i, i32 0, i32 29, i32 6
  %509 = ptrtoint ptr %rx_ctrl_pkts.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %509)
  %510 = load i64, ptr %rx_ctrl_pkts.i.i.i.i, align 8
  %inc.i388.i.i.i = add i64 %510, 1
  store i64 %inc.i388.i.i.i, ptr %rx_ctrl_pkts.i.i.i.i, align 8
  %priority.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 8
  %511 = ptrtoint ptr %priority.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %priority.i.i.i.i, align 1
  %513 = zext i8 %512 to i64
  call void @__sanitizer_cov_trace_switch(i64 %513, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %512, label %sw.default.i.i.i.i [
    i8 1, label %if.end22.i.i.i.i.sw.bb.i.i.i.i_crit_edge
    i8 2, label %if.end22.i.i.i.i.sw.bb.i.i.i.i_crit_edge30
    i8 4, label %if.end22.i.i.i.i.sw.bb27.i.i.i.i_crit_edge
    i8 5, label %if.end22.i.i.i.i.sw.bb27.i.i.i.i_crit_edge31
    i8 6, label %if.end22.i.i.i.i.sw.bb31.i.i.i.i_crit_edge
    i8 7, label %if.end22.i.i.i.i.sw.bb31.i.i.i.i_crit_edge32
  ]

if.end22.i.i.i.i.sw.bb31.i.i.i.i_crit_edge32:     ; preds = %if.end22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31.i.i.i.i

if.end22.i.i.i.i.sw.bb31.i.i.i.i_crit_edge:       ; preds = %if.end22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31.i.i.i.i

if.end22.i.i.i.i.sw.bb27.i.i.i.i_crit_edge31:     ; preds = %if.end22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27.i.i.i.i

if.end22.i.i.i.i.sw.bb27.i.i.i.i_crit_edge:       ; preds = %if.end22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27.i.i.i.i

if.end22.i.i.i.i.sw.bb.i.i.i.i_crit_edge30:       ; preds = %if.end22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i.i.i

if.end22.i.i.i.i.sw.bb.i.i.i.i_crit_edge:         ; preds = %if.end22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %if.end22.i.i.i.i.sw.bb.i.i.i.i_crit_edge, %if.end22.i.i.i.i.sw.bb.i.i.i.i_crit_edge30
  %uapsd_bk.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call15.i.i.i.i, i32 0, i32 59
  br label %sw.epilog.i.i.i.i

sw.bb27.i.i.i.i:                                  ; preds = %if.end22.i.i.i.i.sw.bb27.i.i.i.i_crit_edge, %if.end22.i.i.i.i.sw.bb27.i.i.i.i_crit_edge31
  %uapsd_vi.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call15.i.i.i.i, i32 0, i32 61
  br label %sw.epilog.i.i.i.i

sw.bb31.i.i.i.i:                                  ; preds = %if.end22.i.i.i.i.sw.bb31.i.i.i.i_crit_edge, %if.end22.i.i.i.i.sw.bb31.i.i.i.i_crit_edge32
  %uapsd_vo.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call15.i.i.i.i, i32 0, i32 62
  br label %sw.epilog.i.i.i.i

sw.default.i.i.i.i:                               ; preds = %if.end22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %uapsd_be.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call15.i.i.i.i, i32 0, i32 60
  br label %sw.epilog.i.i.i.i

sw.epilog.i.i.i.i:                                ; preds = %sw.default.i.i.i.i, %sw.bb31.i.i.i.i, %sw.bb27.i.i.i.i, %sw.bb.i.i.i.i
  %wmmps_ac.0.in.in.i.i.i.i = phi ptr [ %uapsd_be.i.i.i.i, %sw.default.i.i.i.i ], [ %uapsd_vo.i.i.i.i, %sw.bb31.i.i.i.i ], [ %uapsd_vi.i.i.i.i, %sw.bb27.i.i.i.i ], [ %uapsd_bk.i.i.i.i, %sw.bb.i.i.i.i ]
  %514 = ptrtoint ptr %wmmps_ac.0.in.in.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %514)
  %wmmps_ac.0.in.i.i.i.i = load i8, ptr %wmmps_ac.0.in.in.i.i.i.i, align 1
  %wmmps_ac.0.i.i.i.i = and i8 %wmmps_ac.0.in.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wmmps_ac.0.i.i.i.i)
  %tobool39.not.i389.i.i.i = icmp eq i8 %wmmps_ac.0.i.i.i.i, 0
  br i1 %tobool39.not.i389.i.i.i, label %if.end41.i.i.i.i, label %sw.epilog.i.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge

sw.epilog.i.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge: ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %validate_recv_frame.exit.thread.i.i

if.end41.i.i.i.i:                                 ; preds = %sw.epilog.i.i.i.i
  %state.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call15.i.i.i.i, i32 0, i32 7
  %515 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %state.i.i.i.i, align 4
  %and42.i.i.i.i = and i32 %516, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i.i.i.i)
  %tobool43.not.i.i.i.i = icmp eq i32 %and42.i.i.i.i, 0
  br i1 %tobool43.not.i.i.i.i, label %if.end41.i.i.i.i.if.end55.i.i.i.i_crit_edge, label %do.body.i.i.i.i

if.end41.i.i.i.i.if.end55.i.i.i.i_crit_edge:      ; preds = %if.end41.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %if.end41.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %517 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %517)
  %cmp45.i.i.i.i = icmp ugt i32 %517, 4
  br i1 %cmp45.i.i.i.i, label %do.end.i.i.i.i, label %do.body.i.i.i.i.do.end52.i.i.i.i_crit_edge

do.body.i.i.i.i.do.end52.i.i.i.i_crit_edge:       ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call49.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #12
  br label %do.end52.i.i.i.i

do.end52.i.i.i.i:                                 ; preds = %do.end.i.i.i.i, %do.body.i.i.i.i.do.end52.i.i.i.i_crit_edge
  %expire_to.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11, i32 17
  %518 = ptrtoint ptr %expire_to.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %expire_to.i.i.i.i, align 4
  %expire_to53.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call15.i.i.i.i, i32 0, i32 36
  %520 = ptrtoint ptr %expire_to53.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %520)
  store i32 %519, ptr %expire_to53.i.i.i.i, align 4
  %521 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %state.i.i.i.i, align 4
  %xor.i.i.i.i = xor i32 %522, 1024
  store i32 %xor.i.i.i.i, ptr %state.i.i.i.i, align 4
  br label %if.end55.i.i.i.i

if.end55.i.i.i.i:                                 ; preds = %do.end52.i.i.i.i, %if.end41.i.i.i.i.if.end55.i.i.i.i_crit_edge
  %523 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %state.i.i.i.i, align 4
  %and57.i.i.i.i = and i32 %524, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i.i.i.i)
  %tobool58.not.i.i.i.i = icmp eq i32 %and57.i.i.i.i, 0
  br i1 %tobool58.not.i.i.i.i, label %if.end55.i.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end55.i.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge: ; preds = %if.end55.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %validate_recv_frame.exit.thread.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end55.i.i.i.i
  %sta_dz_bitmap.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11, i32 19
  %525 = ptrtoint ptr %sta_dz_bitmap.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %525)
  %526 = load i16, ptr %sta_dz_bitmap.i.i.i.i, align 4
  %conv59.i.i.i.i = zext i16 %526 to i32
  %527 = ptrtoint ptr %aid17.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %aid17.i.i.i.i, align 8
  %shl.i.i.i.i = shl nuw i32 1, %528
  %and61.i.i.i.i = and i32 %shl.i.i.i.i, %conv59.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i.i.i.i)
  %tobool62.not.i.i.i.i = icmp eq i32 %and61.i.i.i.i, 0
  br i1 %tobool62.not.i.i.i.i, label %land.lhs.true.i.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge, label %if.then63.i.i.i.i

land.lhs.true.i.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %validate_recv_frame.exit.thread.i.i

if.then63.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  %xmitpriv.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9
  call void @_raw_spin_lock_bh(ptr noundef %xmitpriv.i.i.i.i) #8
  %sleep_q.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call15.i.i.i.i, i32 0, i32 5
  %529 = ptrtoint ptr %sleep_q.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %sleep_q.i.i.i.i, align 4
  %cmp65.not.i.i.i.i = icmp eq ptr %sleep_q.i.i.i.i, %530
  br i1 %cmp65.not.i.i.i.i, label %if.else89.i.i.i.i, label %if.then67.i.i.i.i

if.then67.i.i.i.i:                                ; preds = %if.then63.i.i.i.i
  %call.i.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %530) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then67.i.i.i.i.list_del_init.exit.i.i.i.i_crit_edge

if.then67.i.i.i.i.list_del_init.exit.i.i.i.i_crit_edge: ; preds = %if.then67.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then67.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %530, i32 0, i32 1
  %531 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %533 = ptrtoint ptr %530 to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %530, align 4
  %prev1.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %534, i32 0, i32 1
  %535 = ptrtoint ptr %prev1.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %535)
  store ptr %532, ptr %prev1.i.i.i.i.i.i.i, align 4
  %536 = ptrtoint ptr %532 to i32
  call void @__asan_store4_noabort(i32 %536)
  store volatile ptr %534, ptr %532, align 4
  br label %list_del_init.exit.i.i.i.i

list_del_init.exit.i.i.i.i:                       ; preds = %if.end.i.i.i.i.i.i, %if.then67.i.i.i.i.list_del_init.exit.i.i.i.i_crit_edge
  %537 = ptrtoint ptr %530 to i32
  call void @__asan_store4_noabort(i32 %537)
  store volatile ptr %530, ptr %530, align 4
  %prev.i3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %530, i32 0, i32 1
  %538 = ptrtoint ptr %prev.i3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %538)
  store ptr %530, ptr %prev.i3.i.i.i.i.i, align 4
  %sleepq_len.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call15.i.i.i.i, i32 0, i32 6
  %539 = ptrtoint ptr %sleepq_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %sleepq_len.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %540, -1
  store i32 %dec.i.i.i.i, ptr %sleepq_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %cmp71.not.i.i.i.i = icmp ne i32 %dec.i.i.i.i, 0
  %spec.select.i.i.i.i = zext i1 %cmp71.not.i.i.i.i to i8
  %541 = getelementptr inbounds %struct.xmit_frame, ptr %530, i32 0, i32 1, i32 32
  %542 = ptrtoint ptr %541 to i32
  call void @__asan_store1_noabort(i32 %542)
  store i8 %spec.select.i.i.i.i, ptr %541, align 2
  %triggered.i.i.i.i = getelementptr inbounds %struct.xmit_frame, ptr %530, i32 0, i32 1, i32 34
  %543 = ptrtoint ptr %triggered.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %543)
  store i8 1, ptr %triggered.i.i.i.i, align 4
  %544 = ptrtoint ptr %sleepq_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %sleepq_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %545)
  %cmp80.i.i.i.i = icmp eq i32 %545, 0
  br i1 %cmp80.i.i.i.i, label %if.then82.i.i.i.i, label %list_del_init.exit.i.i.i.i.if.end138.i.i.i.i_crit_edge

list_del_init.exit.i.i.i.i.if.end138.i.i.i.i_crit_edge: ; preds = %list_del_init.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138.i.i.i.i

if.then82.i.i.i.i:                                ; preds = %list_del_init.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %tim_bitmap.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11, i32 20
  br label %if.end138.sink.split.i.i.i.i

if.else89.i.i.i.i:                                ; preds = %if.then63.i.i.i.i
  %tim_bitmap90.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11, i32 20
  %546 = ptrtoint ptr %tim_bitmap90.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %546)
  %547 = load i16, ptr %tim_bitmap90.i.i.i.i, align 2
  %conv91.i.i.i.i = zext i16 %547 to i32
  %548 = ptrtoint ptr %aid17.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %aid17.i.i.i.i, align 8
  %shl93.i.i.i.i = shl nuw i32 1, %549
  %and94.i.i.i.i = and i32 %shl93.i.i.i.i, %conv91.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i.i.i.i)
  %tobool95.not.i.i.i.i = icmp eq i32 %and94.i.i.i.i, 0
  br i1 %tobool95.not.i.i.i.i, label %if.else89.i.i.i.i.if.end138.i.i.i.i_crit_edge, label %if.then96.i.i.i.i

if.else89.i.i.i.i.if.end138.i.i.i.i_crit_edge:    ; preds = %if.else89.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138.i.i.i.i

if.then96.i.i.i.i:                                ; preds = %if.else89.i.i.i.i
  %sleepq_len97.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call15.i.i.i.i, i32 0, i32 6
  %550 = ptrtoint ptr %sleepq_len97.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %sleepq_len97.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %551)
  %cmp98.i.i.i.i = icmp eq i32 %551, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %552 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %552)
  %cmp102.i.i.i.i = icmp ugt i32 %552, 4
  br i1 %cmp98.i.i.i.i, label %do.body101.i.i.i.i, label %do.body115.i.i.i.i

do.body101.i.i.i.i:                               ; preds = %if.then96.i.i.i.i
  br i1 %cmp102.i.i.i.i, label %do.end107.i.i.i.i, label %do.body101.i.i.i.i.do.end112.i.i.i.i_crit_edge

do.body101.i.i.i.i.do.end112.i.i.i.i_crit_edge:   ; preds = %do.body101.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end112.i.i.i.i

do.end107.i.i.i.i:                                ; preds = %do.body101.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call109.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #12
  br label %do.end112.i.i.i.i

do.end112.i.i.i.i:                                ; preds = %do.end107.i.i.i.i, %do.body101.i.i.i.i.do.end112.i.i.i.i_crit_edge
  %hwaddr.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call15.i.i.i.i, i32 0, i32 11
  %call113.i.i.i.i = call i32 @issue_nulldata(ptr noundef %1, ptr noundef %hwaddr.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %if.end138.sink.split.i.i.i.i

do.body115.i.i.i.i:                               ; preds = %if.then96.i.i.i.i
  br i1 %cmp102.i.i.i.i, label %do.end121.i.i.i.i, label %do.body115.i.i.i.i.do.end127.i.i.i.i_crit_edge

do.body115.i.i.i.i.do.end127.i.i.i.i_crit_edge:   ; preds = %do.body115.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end127.i.i.i.i

do.end121.i.i.i.i:                                ; preds = %do.body115.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call124.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %551) #12
  br label %do.end127.i.i.i.i

do.end127.i.i.i.i:                                ; preds = %do.end121.i.i.i.i, %do.body115.i.i.i.i.do.end127.i.i.i.i_crit_edge
  %553 = ptrtoint ptr %sleepq_len97.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 0, ptr %sleepq_len97.i.i.i.i, align 8
  br label %if.end138.sink.split.i.i.i.i

if.end138.sink.split.i.i.i.i:                     ; preds = %do.end127.i.i.i.i, %do.end112.i.i.i.i, %if.then82.i.i.i.i
  %tim_bitmap90.sink5.i.i.i.i = phi ptr [ %tim_bitmap.i.i.i.i, %if.then82.i.i.i.i ], [ %tim_bitmap90.i.i.i.i, %do.end127.i.i.i.i ], [ %tim_bitmap90.i.i.i.i, %do.end112.i.i.i.i ]
  %554 = ptrtoint ptr %aid17.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %.pn.i.i.i.i = load i32, ptr %aid17.i.i.i.i, align 8
  %shl131.sink.i.i.i.i = shl nuw i32 1, %.pn.i.i.i.i
  %555 = ptrtoint ptr %tim_bitmap90.sink5.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %555)
  %556 = load i16, ptr %tim_bitmap90.sink5.i.i.i.i, align 2
  %557 = trunc i32 %shl131.sink.i.i.i.i to i16
  %558 = xor i16 %557, -1
  %conv136.i.i.i.i = and i16 %556, %558
  store i16 %conv136.i.i.i.i, ptr %tim_bitmap90.sink5.i.i.i.i, align 2
  call void @update_beacon(ptr noundef %1, i8 noundef zeroext 5, ptr noundef null, i8 noundef zeroext 0) #8
  br label %if.end138.i.i.i.i

if.end138.i.i.i.i:                                ; preds = %if.end138.sink.split.i.i.i.i, %if.else89.i.i.i.i.if.end138.i.i.i.i_crit_edge, %list_del_init.exit.i.i.i.i.if.end138.i.i.i.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv.i.i.i.i) #8
  br label %validate_recv_frame.exit.thread.i.i

sw.bb284.i.i.i:                                   ; preds = %if.end279.i.i.i.sw.bb284.i.i.i_crit_edge, %do.end270.i.i.i, %for.inc261.7.i.i.i.sw.bb284.i.i.i_crit_edge, %for.inc261.6.i.i.i.sw.bb284.i.i.i_crit_edge, %for.inc261.5.i.i.i.sw.bb284.i.i.i_crit_edge, %for.inc261.4.i.i.i.sw.bb284.i.i.i_crit_edge, %for.inc261.3.i.i.i.sw.bb284.i.i.i_crit_edge, %for.inc261.2.i.i.i.sw.bb284.i.i.i_crit_edge, %for.inc261.1.i.i.i.sw.bb284.i.i.i_crit_edge, %for.inc261.i.i.i.sw.bb284.i.i.i_crit_edge, %do.end221.i.i.i.sw.bb284.i.i.i_crit_edge, %if.then208.i.i.i.sw.bb284.i.i.i_crit_edge
  call void @rtw_led_control(ptr noundef %1, i32 noundef 5) #8
  %559 = lshr i8 %34, 7
  %qos.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 7
  %560 = ptrtoint ptr %qos.i.i.i to i32
  call void @__asan_store1_noabort(i32 %560)
  store i8 %559, ptr %qos.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %psta.i.i.i.i) #8
  %561 = ptrtoint ptr %psta.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %561)
  store ptr null, ptr %psta.i.i.i.i, align 4
  %562 = ptrtoint ptr %rx_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %rx_data.i.i.i, align 4
  %securitypriv.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12
  %564 = ptrtoint ptr %563 to i32
  call void @__asan_load2_noabort(i32 %564)
  %565 = load i16, ptr %563, align 2
  %trunc.i.i.i.i.i = trunc i16 %565 to i2
  %rev.i.i.i.i.i = call i2 @llvm.bitreverse.i2(i2 %trunc.i.i.i.i.i) #8
  %or.i.i.i.i.i = zext i2 %rev.i.i.i.i.i to i32
  %566 = zext i32 %or.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %566, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %or.i.i.i.i.i, label %get_da.exit.thread.i.i.i.i [
    i32 0, label %sw.bb284.i.i.i.get_da.exit.i.i.i.i_crit_edge
    i32 1, label %sw.bb284.i.i.i.get_da.exit.i.i.i.i_crit_edge33
    i32 2, label %get_sa.exit.thread267.i.i.i.i
  ]

sw.bb284.i.i.i.get_da.exit.i.i.i.i_crit_edge33:   ; preds = %sw.bb284.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_da.exit.i.i.i.i

sw.bb284.i.i.i.get_da.exit.i.i.i.i_crit_edge:     ; preds = %sw.bb284.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_da.exit.i.i.i.i

get_sa.exit.thread267.i.i.i.i:                    ; preds = %sw.bb284.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %567 = ptrtoint ptr %563 to i32
  %add10.i257.i.i.i.i = add i32 %567, 16
  %da.0.i258.i.i.i.i = inttoptr i32 %add10.i257.i.i.i.i to ptr
  %add10.i224270.i.i.i.i = add i32 %567, 10
  br label %get_hdr_bssid.exit.i.i.i.i

get_da.exit.thread.i.i.i.i:                       ; preds = %sw.bb284.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %568 = ptrtoint ptr %563 to i32
  %add10.i251.i.i.i.i = add i32 %568, 16
  %da.0.i252.i.i.i.i = inttoptr i32 %add10.i251.i.i.i.i to ptr
  br label %get_sa.exit.thread274.i.i.i.i

get_da.exit.i.i.i.i:                              ; preds = %sw.bb284.i.i.i.get_da.exit.i.i.i.i_crit_edge, %sw.bb284.i.i.i.get_da.exit.i.i.i.i_crit_edge33
  %569 = ptrtoint ptr %563 to i32
  %add10.i.i.i.i.i = add i32 %569, 4
  %da.0.i.i.i.i.i = inttoptr i32 %add10.i.i.i.i.i to ptr
  %570 = zext i32 %or.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %570, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %or.i.i.i.i.i, label %get_da.exit.i.i.i.i.get_sa.exit.thread274.i.i.i.i_crit_edge [
    i32 0, label %get_sa.exit.i.i.i.i
    i32 1, label %get_sa.exit.thread.i.i.i.i
  ]

get_da.exit.i.i.i.i.get_sa.exit.thread274.i.i.i.i_crit_edge: ; preds = %get_da.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_sa.exit.thread274.i.i.i.i

get_sa.exit.thread.i.i.i.i:                       ; preds = %get_da.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i224261.i.i.i.i = add i32 %569, 16
  br label %get_hdr_bssid.exit.i.i.i.i

get_sa.exit.thread274.i.i.i.i:                    ; preds = %get_da.exit.i.i.i.i.get_sa.exit.thread274.i.i.i.i_crit_edge, %get_da.exit.thread.i.i.i.i
  %da.0.i254.i.i.i.i = phi ptr [ %da.0.i252.i.i.i.i, %get_da.exit.thread.i.i.i.i ], [ %da.0.i.i.i.i.i, %get_da.exit.i.i.i.i.get_sa.exit.thread274.i.i.i.i_crit_edge ]
  %571 = phi i32 [ %568, %get_da.exit.thread.i.i.i.i ], [ %569, %get_da.exit.i.i.i.i.get_sa.exit.thread274.i.i.i.i_crit_edge ]
  %add10.i224277.i.i.i.i = add i32 %571, 24
  br label %get_hdr_bssid.exit.i.i.i.i

get_sa.exit.i.i.i.i:                              ; preds = %get_da.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i224.i.i.i.i = add i32 %569, 10
  br label %get_hdr_bssid.exit.i.i.i.i

get_hdr_bssid.exit.i.i.i.i:                       ; preds = %get_sa.exit.i.i.i.i, %get_sa.exit.thread274.i.i.i.i, %get_sa.exit.thread.i.i.i.i, %get_sa.exit.thread267.i.i.i.i
  %sa.0.i266.in.i.i.i.i = phi i32 [ %add10.i224277.i.i.i.i, %get_sa.exit.thread274.i.i.i.i ], [ %add10.i224270.i.i.i.i, %get_sa.exit.thread267.i.i.i.i ], [ %add10.i224261.i.i.i.i, %get_sa.exit.thread.i.i.i.i ], [ %add10.i224.i.i.i.i, %get_sa.exit.i.i.i.i ]
  %572 = phi i32 [ %571, %get_sa.exit.thread274.i.i.i.i ], [ %567, %get_sa.exit.thread267.i.i.i.i ], [ %569, %get_sa.exit.thread.i.i.i.i ], [ %569, %get_sa.exit.i.i.i.i ]
  %da.0.i253264.i.i.i.i = phi ptr [ %da.0.i254.i.i.i.i, %get_sa.exit.thread274.i.i.i.i ], [ %da.0.i258.i.i.i.i, %get_sa.exit.thread267.i.i.i.i ], [ %da.0.i.i.i.i.i, %get_sa.exit.thread.i.i.i.i ], [ %da.0.i.i.i.i.i, %get_sa.exit.i.i.i.i ]
  %.sink17.i.i.i.i.i = phi i32 [ 4, %get_sa.exit.thread274.i.i.i.i ], [ 4, %get_sa.exit.thread267.i.i.i.i ], [ 10, %get_sa.exit.thread.i.i.i.i ], [ 16, %get_sa.exit.i.i.i.i ]
  %sa.0.i266.i.i.i.i = inttoptr i32 %sa.0.i266.in.i.i.i.i to ptr
  %add11.i.i.i.i.i = add i32 %.sink17.i.i.i.i.i, %572
  %sa.0.i230.i.i.i.i = inttoptr i32 %add11.i.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add11.i.i.i.i.i)
  %tobool.not.i391.i.i.i = icmp eq i32 %add11.i.i.i.i.i, 0
  br i1 %tobool.not.i391.i.i.i, label %get_hdr_bssid.exit.i.i.i.i.if.then291.i.i.i_crit_edge, label %if.end.i392.i.i.i

get_hdr_bssid.exit.i.i.i.i.if.then291.i.i.i_crit_edge: ; preds = %get_hdr_bssid.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then291.i.i.i

if.end.i392.i.i.i:                                ; preds = %get_hdr_bssid.exit.i.i.i.i
  %dst.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 23
  %573 = call ptr @memcpy(ptr %dst.i.i.i.i, ptr %da.0.i253264.i.i.i.i, i32 6)
  %src.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 24
  %574 = call ptr @memcpy(ptr %src.i.i.i.i, ptr %sa.0.i266.i.i.i.i, i32 6)
  %bssid.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 27
  %575 = call ptr @memcpy(ptr %bssid.i.i.i.i, ptr %sa.0.i230.i.i.i.i, i32 6)
  %576 = ptrtoint ptr %to_fr_ds.i.i.i to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %to_fr_ds.i.i.i, align 2
  %578 = zext i8 %577 to i64
  call void @__sanitizer_cov_trace_switch(i64 %578, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %577, label %if.end.i392.i.i.i.if.then291.i.i.i_crit_edge [
    i8 0, label %sw.bb.i393.i.i.i
    i8 1, label %sw.bb11.i.i.i.i
    i8 2, label %sw.bb17.i.i.i.i
    i8 3, label %sw.bb23.i.i.i.i
  ]

if.end.i392.i.i.i.if.then291.i.i.i_crit_edge:     ; preds = %if.end.i392.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then291.i.i.i

sw.bb.i393.i.i.i:                                 ; preds = %if.end.i392.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %ra.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 26
  %579 = call ptr @memcpy(ptr %ra.i.i.i.i, ptr %da.0.i253264.i.i.i.i, i32 6)
  %ta.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 25
  %580 = call ptr @memcpy(ptr %ta.i.i.i.i, ptr %sa.0.i266.i.i.i.i, i32 6)
  %call10.i.i.i.i = call i32 @sta2sta_data_frame(ptr noundef %1, ptr noundef %precvframe, ptr noundef nonnull %psta.i.i.i.i) #8
  br label %sw.epilog.i398.i.i.i

sw.bb11.i.i.i.i:                                  ; preds = %if.end.i392.i.i.i
  %ra12.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 26
  %581 = call ptr @memcpy(ptr %ra12.i.i.i.i, ptr %da.0.i253264.i.i.i.i, i32 6)
  %ta14.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 25
  %582 = call ptr @memcpy(ptr %ta14.i.i.i.i, ptr %sa.0.i230.i.i.i.i, i32 6)
  %stapriv.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11
  %MacAddress.i.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 15, i32 6, i32 1
  %mac_addr.i.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 4
  %583 = ptrtoint ptr %dst.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load i32, ptr %dst.i.i.i.i, align 4
  %585 = and i32 %584, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %585)
  %tobool.i.i.i.i.i.i = icmp ne i32 %585, 0
  %586 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load i32, ptr %fw_state.i.i, align 4
  %588 = and i32 %587, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %588)
  %tobool.not.i.i.i.i.i = icmp eq i32 %588, 0
  %589 = and i32 %587, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %589)
  %590 = icmp eq i32 %589, 0
  %or.cond.i.i.i.i.i = or i1 %tobool.not.i.i.i.i.i, %590
  br i1 %or.cond.i.i.i.i.i, label %if.else61.i.i.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %sw.bb11.i.i.i.i
  %bcmp182.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i.i.i.i.i.i, ptr noundef dereferenceable(6) %src.i.i.i.i, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp182.i.i.i.i.i)
  %tobool10.not.i.i.i.i.i = icmp eq i32 %bcmp182.i.i.i.i.i, 0
  br i1 %tobool10.not.i.i.i.i.i, label %if.then.i.i.i.i.i.if.then291.i.i.i_crit_edge, label %if.end.i.i.i.i76.i

if.then.i.i.i.i.i.if.then291.i.i.i_crit_edge:     ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then291.i.i.i

if.end.i.i.i.i76.i:                               ; preds = %if.then.i.i.i.i.i
  %bcmp183.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i.i.i.i.i.i, ptr noundef dereferenceable(6) %dst.i.i.i.i, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp183.i.i.i.i.i)
  %tobool15.not.i.i.i.i.i = icmp eq i32 %bcmp183.i.i.i.i.i, 0
  %brmerge.i.i.i.i.i = select i1 %tobool15.not.i.i.i.i.i, i1 true, i1 %tobool.i.i.i.i.i.i
  br i1 %brmerge.i.i.i.i.i, label %if.end19.i.i.i.i.i, label %if.end.i.i.i.i76.i.if.then291.i.i.i_crit_edge

if.end.i.i.i.i76.i.if.then291.i.i.i_crit_edge:    ; preds = %if.end.i.i.i.i76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then291.i.i.i

if.end19.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i76.i
  %bcmp184.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %bssid.i.i.i.i, ptr noundef nonnull dereferenceable(6) @.str.15, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp184.i.i.i.i.i)
  %tobool22.not.i.i.i.i.i = icmp eq i32 %bcmp184.i.i.i.i.i, 0
  br i1 %tobool22.not.i.i.i.i.i, label %if.end19.i.i.i.i.i.if.then31.i.i.i.i.i_crit_edge, label %lor.lhs.false23.i.i.i.i.i

if.end19.i.i.i.i.i.if.then31.i.i.i.i.i_crit_edge: ; preds = %if.end19.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i.i.i.i.i

lor.lhs.false23.i.i.i.i.i:                        ; preds = %if.end19.i.i.i.i.i
  %bcmp185.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress.i.i.i.i.i.i, ptr noundef nonnull dereferenceable(6) @.str.15, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp185.i.i.i.i.i)
  %tobool25.not.i.i.i.i.i = icmp eq i32 %bcmp185.i.i.i.i.i, 0
  br i1 %tobool25.not.i.i.i.i.i, label %lor.lhs.false23.i.i.i.i.i.if.then31.i.i.i.i.i_crit_edge, label %lor.lhs.false26.i.i.i.i.i

lor.lhs.false23.i.i.i.i.i.if.then31.i.i.i.i.i_crit_edge: ; preds = %lor.lhs.false23.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i.i.i.i.i

lor.lhs.false26.i.i.i.i.i:                        ; preds = %lor.lhs.false23.i.i.i.i.i
  %bcmp186.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %bssid.i.i.i.i, ptr noundef dereferenceable(6) %MacAddress.i.i.i.i.i.i, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp186.i.i.i.i.i)
  %tobool30.not.i.i.i.i.i = icmp eq i32 %bcmp186.i.i.i.i.i, 0
  br i1 %tobool30.not.i.i.i.i.i, label %if.end46.i.i.i.i.i, label %lor.lhs.false26.i.i.i.i.i.if.then31.i.i.i.i.i_crit_edge

lor.lhs.false26.i.i.i.i.i.if.then31.i.i.i.i.i_crit_edge: ; preds = %lor.lhs.false26.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i.i.i.i.i

if.then31.i.i.i.i.i:                              ; preds = %lor.lhs.false26.i.i.i.i.i.if.then31.i.i.i.i.i_crit_edge, %lor.lhs.false23.i.i.i.i.i.if.then31.i.i.i.i.i_crit_edge, %if.end19.i.i.i.i.i.if.then31.i.i.i.i.i_crit_edge
  br i1 %tobool.i.i.i.i.i.i, label %if.then31.i.i.i.i.i.if.then291.i.i.i_crit_edge, label %do.body.i.i.i.i.i

if.then31.i.i.i.i.i.if.then291.i.i.i_crit_edge:   ; preds = %if.then31.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then291.i.i.i

do.body.i.i.i.i.i:                                ; preds = %if.then31.i.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %591 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %591)
  %cmp.i.i394.i.i.i = icmp ugt i32 %591, 4
  br i1 %cmp.i.i394.i.i.i, label %do.end.i.i.i.i.i, label %do.body.i.i.i.i.i.do.end41.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.end41.i.i.i.i.i_crit_edge:   ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call38.i.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %bssid.i.i.i.i) #12
  br label %do.end41.i.i.i.i.i

do.end41.i.i.i.i.i:                               ; preds = %do.end.i.i.i.i.i, %do.body.i.i.i.i.i.do.end41.i.i.i.i.i_crit_edge
  %call44.i.i.i.i.i = call i32 @issue_deauth(ptr noundef %1, ptr noundef %bssid.i.i.i.i, i16 noundef zeroext 7) #8
  br label %if.then291.i.i.i

if.end46.i.i.i.i.i:                               ; preds = %lor.lhs.false26.i.i.i.i.i
  br i1 %tobool.i.i.i.i.i.i, label %if.then48.i.i.i.i.i, label %if.else.i.i.i.i.i

if.then48.i.i.i.i.i:                              ; preds = %if.end46.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call49.i.i.i.i.i = call ptr @rtw_get_bcmc_stainfo(ptr noundef %1) #8
  br label %if.end53.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end46.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call52.i.i.i.i.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i.i.i.i.i, ptr noundef %bssid.i.i.i.i) #8
  br label %if.end53.i.i.i.i.i

if.end53.i.i.i.i.i:                               ; preds = %if.else.i.i.i.i.i, %if.then48.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi ptr [ %call52.i.i.i.i.i, %if.else.i.i.i.i.i ], [ %call49.i.i.i.i.i, %if.then48.i.i.i.i.i ]
  %592 = ptrtoint ptr %psta.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %592)
  store ptr %storemerge.i.i.i.i.i, ptr %psta.i.i.i.i, align 4
  %tobool54.not.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %tobool54.not.i.i.i.i.i, label %if.end53.i.i.i.i.i.if.then291.i.i.i_crit_edge, label %if.end56.i.i.i.i.i

if.end53.i.i.i.i.i.if.then291.i.i.i_crit_edge:    ; preds = %if.end53.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then291.i.i.i

if.end56.i.i.i.i.i:                               ; preds = %if.end53.i.i.i.i.i
  %593 = ptrtoint ptr %563 to i32
  call void @__asan_load2_noabort(i32 %593)
  %594 = load i16, ptr %563, align 2
  %595 = and i16 %594, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %595)
  %tobool58.not.i.i.i.i.i = icmp eq i16 %595, 0
  br i1 %tobool58.not.i.i.i.i.i, label %if.end56.i.i.i.i.i.if.end36.i.i.i.i_crit_edge, label %if.then59.i.i.i.i.i

if.end56.i.i.i.i.i.if.end36.i.i.i.i_crit_edge:    ; preds = %if.end56.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i.i.i.i

if.then59.i.i.i.i.i:                              ; preds = %if.end56.i.i.i.i.i
  %len.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 7
  %596 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %len.i.i.i.i, align 4
  %conv.i.i.i = sext i32 %597 to i64
  %rx_bytes.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 9
  %598 = ptrtoint ptr %rx_bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %598)
  %599 = load i64, ptr %rx_bytes.i.i.i, align 8
  %add.i5.i.i = add i64 %599, %conv.i.i.i
  store i64 %add.i5.i.i, ptr %rx_bytes.i.i.i, align 8
  %NumRxOkInPeriod.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 27, i32 1
  %600 = ptrtoint ptr %NumRxOkInPeriod.i.i.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load i32, ptr %NumRxOkInPeriod.i.i.i, align 4
  %inc.i6.i.i = add i32 %601, 1
  store i32 %inc.i6.i.i, ptr %NumRxOkInPeriod.i.i.i, align 4
  %602 = ptrtoint ptr %dst.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %602)
  %603 = load i16, ptr %dst.i.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 23, i32 2
  %604 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %604)
  %605 = load i16, ptr %add.ptr1.i.i.i.i, align 2
  %and9.i.i.i.i = and i16 %605, %603
  %add.ptr3.i.i.i.i = getelementptr %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 23, i32 4
  %606 = ptrtoint ptr %add.ptr3.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %606)
  %607 = load i16, ptr %add.ptr3.i.i.i.i, align 2
  %and510.i.i.i.i = and i16 %and9.i.i.i.i, %607
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i16 %and510.i.i.i.i, -1
  br i1 %cmp.i.i.i.i, label %if.then59.i.i.i.i.i.count_rx_stats.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then59.i.i.i.i.i.count_rx_stats.exit.i.i_crit_edge: ; preds = %if.then59.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %count_rx_stats.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then59.i.i.i.i.i
  %608 = ptrtoint ptr %dst.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %dst.i.i.i.i, align 4
  %610 = and i32 %609, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %610)
  %tobool.i.not.i.i.i = icmp eq i32 %610, 0
  br i1 %tobool.i.not.i.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.count_rx_stats.exit.i.i_crit_edge

land.lhs.true.i.i.i.count_rx_stats.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %count_rx_stats.exit.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %NumRxUnicastOkInPeriod.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 27, i32 2
  %611 = ptrtoint ptr %NumRxUnicastOkInPeriod.i.i.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %NumRxUnicastOkInPeriod.i.i.i, align 4
  %inc7.i.i.i = add i32 %612, 1
  store i32 %inc7.i.i.i, ptr %NumRxUnicastOkInPeriod.i.i.i, align 4
  br label %count_rx_stats.exit.i.i

count_rx_stats.exit.i.i:                          ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.count_rx_stats.exit.i.i_crit_edge, %if.then59.i.i.i.i.i.count_rx_stats.exit.i.i_crit_edge
  %rx_data_pkts.i.i.i = getelementptr inbounds %struct.sta_info, ptr %storemerge.i.i.i.i.i, i32 0, i32 29, i32 7
  %613 = ptrtoint ptr %rx_data_pkts.i.i.i to i32
  call void @__asan_load8_noabort(i32 %613)
  %614 = load i64, ptr %rx_data_pkts.i.i.i, align 8
  %inc13.i.i.i = add i64 %614, 1
  store i64 %inc13.i.i.i, ptr %rx_data_pkts.i.i.i, align 8
  %rx_bytes15.i.i.i = getelementptr inbounds %struct.sta_info, ptr %storemerge.i.i.i.i.i, i32 0, i32 29, i32 16
  %615 = ptrtoint ptr %rx_bytes15.i.i.i to i32
  call void @__asan_load8_noabort(i32 %615)
  %616 = load i64, ptr %rx_bytes15.i.i.i, align 8
  %add16.i.i.i = add i64 %616, %conv.i.i.i
  store i64 %add16.i.i.i, ptr %rx_bytes15.i.i.i, align 8
  br label %validate_recv_frame.exit.thread14.i.i

if.else61.i.i.i.i.i:                              ; preds = %sw.bb11.i.i.i.i
  %617 = and i32 %587, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %617)
  %.not.i.i.i.i.i = icmp eq i32 %617, 65537
  br i1 %.not.i.i.i.i.i, label %if.then67.i.i.i.i.i, label %if.else90.i.i.i.i.i

if.then67.i.i.i.i.i:                              ; preds = %if.else61.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i.i.i.i = add i32 %572, 4
  %618 = inttoptr i32 %add.i.i.i.i.i to ptr
  %619 = call ptr @memcpy(ptr %dst.i.i.i.i, ptr %618, i32 6)
  %add72.i.i.i.i.i = add i32 %572, 10
  %620 = inttoptr i32 %add72.i.i.i.i.i to ptr
  %621 = call ptr @memcpy(ptr %src.i.i.i.i, ptr %620, i32 6)
  %add75.i.i.i.i.i = add i32 %572, 16
  %622 = inttoptr i32 %add75.i.i.i.i.i to ptr
  %623 = call ptr @memcpy(ptr %bssid.i.i.i.i, ptr %622, i32 6)
  %624 = call ptr @memcpy(ptr %ra12.i.i.i.i, ptr %dst.i.i.i.i, i32 6)
  %625 = call ptr @memcpy(ptr %ta14.i.i.i.i, ptr %src.i.i.i.i, i32 6)
  %626 = call ptr @memcpy(ptr %bssid.i.i.i.i, ptr %MacAddress.i.i.i.i.i.i, i32 6)
  %call86.i.i.i.i.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i.i.i.i.i, ptr noundef %bssid.i.i.i.i) #8
  %627 = ptrtoint ptr %psta.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %627)
  store ptr %call86.i.i.i.i.i, ptr %psta.i.i.i.i, align 4
  %tobool87.not.i.i.i.i.i = icmp ne ptr %call86.i.i.i.i.i, null
  %spec.select.i.i.i.i.i = zext i1 %tobool87.not.i.i.i.i.i to i32
  br label %sw.epilog.i398.i.i.i

if.else90.i.i.i.i.i:                              ; preds = %if.else61.i.i.i.i.i
  %628 = and i32 %587, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %628)
  %tobool92.not.i.i.i.i.i = icmp eq i32 %628, 0
  br i1 %tobool92.not.i.i.i.i.i, label %if.else94.i.i.i.i.i, label %if.else90.i.i.i.i.i.validate_recv_frame.exit.thread14.i.i_crit_edge

if.else90.i.i.i.i.i.validate_recv_frame.exit.thread14.i.i_crit_edge: ; preds = %if.else90.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %validate_recv_frame.exit.thread14.i.i

if.else94.i.i.i.i.i:                              ; preds = %if.else90.i.i.i.i.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i.i.i.i.i.i, ptr noundef dereferenceable(6) %dst.i.i.i.i, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i.i)
  %tobool98.not.i.i.i.i.i = icmp ne i32 %bcmp.i.i.i.i.i, 0
  %brmerge187.i.i.i.i.i = select i1 %tobool98.not.i.i.i.i.i, i1 true, i1 %tobool.i.i.i.i.i.i
  br i1 %brmerge187.i.i.i.i.i, label %if.else94.i.i.i.i.i.if.then291.i.i.i_crit_edge, label %if.then101.i.i.i.i.i

if.else94.i.i.i.i.i.if.then291.i.i.i_crit_edge:   ; preds = %if.else94.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then291.i.i.i

if.then101.i.i.i.i.i:                             ; preds = %if.else94.i.i.i.i.i
  %call104.i.i.i.i.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i.i.i.i.i, ptr noundef %bssid.i.i.i.i) #8
  %tobool105.not.i.i.i.i.i = icmp eq ptr %call104.i.i.i.i.i, null
  br i1 %tobool105.not.i.i.i.i.i, label %do.body107.i.i.i.i.i, label %if.then101.i.i.i.i.i.if.then291.i.i.i_crit_edge

if.then101.i.i.i.i.i.if.then291.i.i.i_crit_edge:  ; preds = %if.then101.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then291.i.i.i

do.body107.i.i.i.i.i:                             ; preds = %if.then101.i.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %629 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %629)
  %cmp108.i.i.i.i.i = icmp ugt i32 %629, 4
  br i1 %cmp108.i.i.i.i.i, label %do.end113.i.i.i.i.i, label %do.body107.i.i.i.i.i.do.end120.i.i.i.i.i_crit_edge

do.body107.i.i.i.i.i.do.end120.i.i.i.i.i_crit_edge: ; preds = %do.body107.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end120.i.i.i.i.i

do.end113.i.i.i.i.i:                              ; preds = %do.body107.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call117.i.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %bssid.i.i.i.i) #12
  br label %do.end120.i.i.i.i.i

do.end120.i.i.i.i.i:                              ; preds = %do.end113.i.i.i.i.i, %do.body107.i.i.i.i.i.do.end120.i.i.i.i.i_crit_edge
  %call123.i.i.i.i.i = call i32 @issue_deauth(ptr noundef %1, ptr noundef %bssid.i.i.i.i, i16 noundef zeroext 7) #8
  br label %if.then291.i.i.i

sw.bb17.i.i.i.i:                                  ; preds = %if.end.i392.i.i.i
  %ra18.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 26
  %630 = call ptr @memcpy(ptr %ra18.i.i.i.i, ptr %sa.0.i230.i.i.i.i, i32 6)
  %ta20.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 25
  %631 = call ptr @memcpy(ptr %ta20.i.i.i.i, ptr %sa.0.i266.i.i.i.i, i32 6)
  %stapriv.i231.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11
  %632 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %fw_state.i.i, align 4
  %634 = and i32 %633, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %634)
  %tobool.not.i234.i.i.i.i = icmp eq i32 %634, 0
  br i1 %tobool.not.i234.i.i.i.i, label %if.else.i246.i.i.i.i, label %if.then.i237.i.i.i.i

if.then.i237.i.i.i.i:                             ; preds = %sw.bb17.i.i.i.i
  %MacAddress.i.i235.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 15, i32 6, i32 1
  %bcmp83.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %bssid.i.i.i.i, ptr noundef dereferenceable(6) %MacAddress.i.i235.i.i.i.i, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp83.i.i.i.i.i)
  %tobool3.not.i.i.i.i.i = icmp eq i32 %bcmp83.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i.i, label %if.end.i239.i.i.i.i, label %if.then.i237.i.i.i.i.if.then291.i.i.i_crit_edge

if.then.i237.i.i.i.i.if.then291.i.i.i_crit_edge:  ; preds = %if.then.i237.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then291.i.i.i

if.end.i239.i.i.i.i:                              ; preds = %if.then.i237.i.i.i.i
  %call6.i.i.i.i.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i231.i.i.i.i, ptr noundef %src.i.i.i.i) #8
  %635 = ptrtoint ptr %psta.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %635)
  store ptr %call6.i.i.i.i.i, ptr %psta.i.i.i.i, align 4
  %tobool7.not.i.i.i.i.i = icmp eq ptr %call6.i.i.i.i.i, null
  br i1 %tobool7.not.i.i.i.i.i, label %do.body.i241.i.i.i.i, label %if.end20.i.i.i.i.i

do.body.i241.i.i.i.i:                             ; preds = %if.end.i239.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %636 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %636)
  %cmp.i240.i.i.i.i = icmp ugt i32 %636, 4
  br i1 %cmp.i240.i.i.i.i, label %do.end.i242.i.i.i.i, label %do.body.i241.i.i.i.i.do.end16.i.i.i.i.i_crit_edge

do.body.i241.i.i.i.i.do.end16.i.i.i.i.i_crit_edge: ; preds = %do.body.i241.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16.i.i.i.i.i

do.end.i242.i.i.i.i:                              ; preds = %do.body.i241.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %src.i.i.i.i) #12
  br label %do.end16.i.i.i.i.i

do.end16.i.i.i.i.i:                               ; preds = %do.end.i242.i.i.i.i, %do.body.i241.i.i.i.i.do.end16.i.i.i.i.i_crit_edge
  %call19.i.i.i.i.i = call i32 @issue_deauth(ptr noundef %1, ptr noundef %src.i.i.i.i, i16 noundef zeroext 7) #8
  br label %validate_recv_frame.exit.thread14.i.i

if.end20.i.i.i.i.i:                               ; preds = %if.end.i239.i.i.i.i
  %637 = ptrtoint ptr %rx_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %rx_data.i.i.i, align 4
  %call.i.i.i395.i.i.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i231.i.i.i.i, ptr noundef %src.i.i.i.i) #8
  %tobool.not.i84.i.i.i.i.i = icmp eq ptr %call.i.i.i395.i.i.i, null
  br i1 %tobool.not.i84.i.i.i.i.i, label %if.end20.i.i.i.i.i.process_pwrbit_data.exit.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i

if.end20.i.i.i.i.i.process_pwrbit_data.exit.i.i.i.i.i_crit_edge: ; preds = %if.end20.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %process_pwrbit_data.exit.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.end20.i.i.i.i.i
  %639 = ptrtoint ptr %638 to i32
  call void @__asan_load2_noabort(i32 %639)
  %640 = load i16, ptr %638, align 2
  %641 = and i16 %640, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %641)
  %tobool3.not.i.i.i.i.i.i = icmp eq i16 %641, 0
  %state8.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i.i.i395.i.i.i, i32 0, i32 7
  %642 = ptrtoint ptr %state8.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load i32, ptr %state8.i.i.i.i.i.i, align 4
  %and9.i.i.i.i.i.i = and i32 %643, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i.i.i.i.i)
  %tobool10.not.i.i.i.i.i.i = icmp eq i32 %and9.i.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i, label %if.then4.i.i.i.i.i.i

if.then4.i.i.i.i.i.i:                             ; preds = %if.then.i.i.i.i.i.i
  br i1 %tobool10.not.i.i.i.i.i.i, label %if.then7.i.i.i.i.i.i, label %if.then4.i.i.i.i.i.i.process_pwrbit_data.exit.i.i.i.i.i_crit_edge

if.then4.i.i.i.i.i.i.process_pwrbit_data.exit.i.i.i.i.i_crit_edge: ; preds = %if.then4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %process_pwrbit_data.exit.i.i.i.i.i

if.then7.i.i.i.i.i.i:                             ; preds = %if.then4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @stop_sta_xmit(ptr noundef %1, ptr noundef nonnull %call.i.i.i395.i.i.i) #8
  br label %process_pwrbit_data.exit.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i.i
  br i1 %tobool10.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.process_pwrbit_data.exit.i.i.i.i.i_crit_edge, label %if.then11.i.i.i.i.i.i

if.else.i.i.i.i.i.i.process_pwrbit_data.exit.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %process_pwrbit_data.exit.i.i.i.i.i

if.then11.i.i.i.i.i.i:                            ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @wakeup_sta_to_xmit(ptr noundef %1, ptr noundef nonnull %call.i.i.i395.i.i.i) #8
  br label %process_pwrbit_data.exit.i.i.i.i.i

process_pwrbit_data.exit.i.i.i.i.i:               ; preds = %if.then11.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.process_pwrbit_data.exit.i.i.i.i.i_crit_edge, %if.then7.i.i.i.i.i.i, %if.then4.i.i.i.i.i.i.process_pwrbit_data.exit.i.i.i.i.i_crit_edge, %if.end20.i.i.i.i.i.process_pwrbit_data.exit.i.i.i.i.i_crit_edge
  %644 = ptrtoint ptr %563 to i32
  call void @__asan_load2_noabort(i32 %644)
  %645 = load i16, ptr %563, align 2
  %646 = and i16 %645, -30720
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %646)
  %cmp22.i.i.i.i.i = icmp eq i16 %646, -30720
  br i1 %cmp22.i.i.i.i.i, label %if.then24.i.i.i.i.i, label %process_pwrbit_data.exit.i.i.i.i.i.if.end25.i.i.i.i.i_crit_edge

process_pwrbit_data.exit.i.i.i.i.i.if.end25.i.i.i.i.i_crit_edge: ; preds = %process_pwrbit_data.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i.i.i.i

if.then24.i.i.i.i.i:                              ; preds = %process_pwrbit_data.exit.i.i.i.i.i
  %call.i87.i.i.i.i.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i231.i.i.i.i, ptr noundef %src.i.i.i.i) #8
  %tobool.not.i88.i.i.i.i.i = icmp eq ptr %call.i87.i.i.i.i.i, null
  br i1 %tobool.not.i88.i.i.i.i.i, label %if.then24.i.i.i.i.i.if.end25.i.i.i.i.i_crit_edge, label %if.end.i.i.i396.i.i.i

if.then24.i.i.i.i.i.if.end25.i.i.i.i.i_crit_edge: ; preds = %if.then24.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i.i.i.i

if.end.i.i.i396.i.i.i:                            ; preds = %if.then24.i.i.i.i.i
  %qos_option.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i87.i.i.i.i.i, i32 0, i32 10
  %647 = ptrtoint ptr %qos_option.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load i32, ptr %qos_option.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %648)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %648, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end.i.i.i396.i.i.i.if.end25.i.i.i.i.i_crit_edge, label %if.end3.i.i.i.i.i.i

if.end.i.i.i396.i.i.i.if.end25.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i396.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i.i.i.i

if.end3.i.i.i.i.i.i:                              ; preds = %if.end.i.i.i396.i.i.i
  %qos_info.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i87.i.i.i.i.i, i32 0, i32 57
  %649 = ptrtoint ptr %qos_info.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %649)
  %650 = load i8, ptr %qos_info.i.i.i.i.i.i, align 4
  %651 = and i8 %650, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %651)
  %tobool4.not.i.i.i.i.i.i = icmp eq i8 %651, 0
  br i1 %tobool4.not.i.i.i.i.i.i, label %if.end3.i.i.i.i.i.i.if.end25.i.i.i.i.i_crit_edge, label %if.end6.i.i.i.i.i.i

if.end3.i.i.i.i.i.i.if.end25.i.i.i.i.i_crit_edge: ; preds = %if.end3.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i.i.i.i

if.end6.i.i.i.i.i.i:                              ; preds = %if.end3.i.i.i.i.i.i
  %state.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i87.i.i.i.i.i, i32 0, i32 7
  %652 = ptrtoint ptr %state.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load i32, ptr %state.i.i.i.i.i.i, align 4
  %and7.i.i.i.i.i.i = and i32 %653, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i.i.i.i)
  %tobool8.not.i.i.i.i.i.i = icmp eq i32 %and7.i.i.i.i.i.i, 0
  br i1 %tobool8.not.i.i.i.i.i.i, label %if.end6.i.i.i.i.i.i.if.end25.i.i.i.i.i_crit_edge, label %if.then9.i.i.i.i.i.i

if.end6.i.i.i.i.i.i.if.end25.i.i.i.i.i_crit_edge: ; preds = %if.end6.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i.i.i.i

if.then9.i.i.i.i.i.i:                             ; preds = %if.end6.i.i.i.i.i.i
  %priority.i.i.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 8
  %654 = ptrtoint ptr %priority.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %654)
  %655 = load i8, ptr %priority.i.i.i.i.i.i, align 1
  %656 = zext i8 %655 to i64
  call void @__sanitizer_cov_trace_switch(i64 %656, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %655, label %sw.default.i.i.i.i.i.i [
    i8 1, label %if.then9.i.i.i.i.i.i.sw.bb.i.i.i.i.i.i_crit_edge
    i8 2, label %if.then9.i.i.i.i.i.i.sw.bb.i.i.i.i.i.i_crit_edge34
    i8 4, label %if.then9.i.i.i.i.i.i.sw.bb14.i.i.i.i.i.i_crit_edge
    i8 5, label %if.then9.i.i.i.i.i.i.sw.bb14.i.i.i.i.i.i_crit_edge35
    i8 6, label %if.then9.i.i.i.i.i.i.sw.bb18.i.i.i.i.i.i_crit_edge
    i8 7, label %if.then9.i.i.i.i.i.i.sw.bb18.i.i.i.i.i.i_crit_edge36
  ]

if.then9.i.i.i.i.i.i.sw.bb18.i.i.i.i.i.i_crit_edge36: ; preds = %if.then9.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18.i.i.i.i.i.i

if.then9.i.i.i.i.i.i.sw.bb18.i.i.i.i.i.i_crit_edge: ; preds = %if.then9.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18.i.i.i.i.i.i

if.then9.i.i.i.i.i.i.sw.bb14.i.i.i.i.i.i_crit_edge35: ; preds = %if.then9.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14.i.i.i.i.i.i

if.then9.i.i.i.i.i.i.sw.bb14.i.i.i.i.i.i_crit_edge: ; preds = %if.then9.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14.i.i.i.i.i.i

if.then9.i.i.i.i.i.i.sw.bb.i.i.i.i.i.i_crit_edge34: ; preds = %if.then9.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i.i.i.i.i

if.then9.i.i.i.i.i.i.sw.bb.i.i.i.i.i.i_crit_edge: ; preds = %if.then9.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i.i.i.i.i

sw.bb.i.i.i.i.i.i:                                ; preds = %if.then9.i.i.i.i.i.i.sw.bb.i.i.i.i.i.i_crit_edge, %if.then9.i.i.i.i.i.i.sw.bb.i.i.i.i.i.i_crit_edge34
  %uapsd_bk.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i87.i.i.i.i.i, i32 0, i32 59
  br label %sw.epilog.i.i.i.i.i.i

sw.bb14.i.i.i.i.i.i:                              ; preds = %if.then9.i.i.i.i.i.i.sw.bb14.i.i.i.i.i.i_crit_edge, %if.then9.i.i.i.i.i.i.sw.bb14.i.i.i.i.i.i_crit_edge35
  %uapsd_vi.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i87.i.i.i.i.i, i32 0, i32 61
  br label %sw.epilog.i.i.i.i.i.i

sw.bb18.i.i.i.i.i.i:                              ; preds = %if.then9.i.i.i.i.i.i.sw.bb18.i.i.i.i.i.i_crit_edge, %if.then9.i.i.i.i.i.i.sw.bb18.i.i.i.i.i.i_crit_edge36
  %uapsd_vo.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i87.i.i.i.i.i, i32 0, i32 62
  br label %sw.epilog.i.i.i.i.i.i

sw.default.i.i.i.i.i.i:                           ; preds = %if.then9.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %uapsd_be.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i87.i.i.i.i.i, i32 0, i32 60
  br label %sw.epilog.i.i.i.i.i.i

sw.epilog.i.i.i.i.i.i:                            ; preds = %sw.default.i.i.i.i.i.i, %sw.bb18.i.i.i.i.i.i, %sw.bb14.i.i.i.i.i.i, %sw.bb.i.i.i.i.i.i
  %wmmps_ac.0.in.in.i.i.i.i.i.i = phi ptr [ %uapsd_be.i.i.i.i.i.i, %sw.default.i.i.i.i.i.i ], [ %uapsd_vo.i.i.i.i.i.i, %sw.bb18.i.i.i.i.i.i ], [ %uapsd_vi.i.i.i.i.i.i, %sw.bb14.i.i.i.i.i.i ], [ %uapsd_bk.i.i.i.i.i.i, %sw.bb.i.i.i.i.i.i ]
  %657 = ptrtoint ptr %wmmps_ac.0.in.in.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %657)
  %wmmps_ac.0.in.i.i.i.i.i.i = load i8, ptr %wmmps_ac.0.in.in.i.i.i.i.i.i, align 1
  %wmmps_ac.0.i.i.i.i.i.i = and i8 %wmmps_ac.0.in.i.i.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wmmps_ac.0.i.i.i.i.i.i)
  %tobool26.not.i.i.i.i.i.i = icmp eq i8 %wmmps_ac.0.i.i.i.i.i.i, 0
  br i1 %tobool26.not.i.i.i.i.i.i, label %sw.epilog.i.i.i.i.i.i.if.end25.i.i.i.i.i_crit_edge, label %if.then27.i.i.i.i.i.i

sw.epilog.i.i.i.i.i.i.if.end25.i.i.i.i.i_crit_edge: ; preds = %sw.epilog.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i.i.i.i

if.then27.i.i.i.i.i.i:                            ; preds = %sw.epilog.i.i.i.i.i.i
  %sleepq_ac_len.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i87.i.i.i.i.i, i32 0, i32 64
  %658 = ptrtoint ptr %sleepq_ac_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %sleepq_ac_len.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %659)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %659, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.else.i89.i.i.i.i.i, label %if.then29.i.i.i.i.i.i

if.then29.i.i.i.i.i.i:                            ; preds = %if.then27.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @xmit_delivery_enabled_frames(ptr noundef %1, ptr noundef nonnull %call.i87.i.i.i.i.i) #8
  br label %if.end25.i.i.i.i.i

if.else.i89.i.i.i.i.i:                            ; preds = %if.then27.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %hwaddr.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i87.i.i.i.i.i, i32 0, i32 11
  %conv32.i.i.i.i.i.i = zext i8 %655 to i16
  %call33.i.i.i.i.i.i = call i32 @issue_qos_nulldata(ptr noundef %1, ptr noundef %hwaddr.i.i.i.i.i.i, i16 noundef zeroext %conv32.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0) #8
  br label %if.end25.i.i.i.i.i

if.end25.i.i.i.i.i:                               ; preds = %if.else.i89.i.i.i.i.i, %if.then29.i.i.i.i.i.i, %sw.epilog.i.i.i.i.i.i.if.end25.i.i.i.i.i_crit_edge, %if.end6.i.i.i.i.i.i.if.end25.i.i.i.i.i_crit_edge, %if.end3.i.i.i.i.i.i.if.end25.i.i.i.i.i_crit_edge, %if.end.i.i.i396.i.i.i.if.end25.i.i.i.i.i_crit_edge, %if.then24.i.i.i.i.i.if.end25.i.i.i.i.i_crit_edge, %process_pwrbit_data.exit.i.i.i.i.i.if.end25.i.i.i.i.i_crit_edge
  %660 = ptrtoint ptr %563 to i32
  call void @__asan_load2_noabort(i32 %660)
  %661 = load i16, ptr %563, align 2
  %662 = and i16 %661, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %662)
  %tobool29.not.i.i.i.i.i = icmp eq i16 %662, 0
  br i1 %tobool29.not.i.i.i.i.i, label %if.end25.i.i.i.i.i.if.end36.i.i.i.i_crit_edge, label %if.then30.i.i.i.i.i

if.end25.i.i.i.i.i.if.end36.i.i.i.i_crit_edge:    ; preds = %if.end25.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i.i.i.i

if.then30.i.i.i.i.i:                              ; preds = %if.end25.i.i.i.i.i
  %len.i.i.i.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 7
  %663 = ptrtoint ptr %len.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load i32, ptr %len.i.i.i.i.i.i.i, align 4
  %conv.i.i.i.i.i.i = sext i32 %664 to i64
  %rx_bytes.i.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 9
  %665 = ptrtoint ptr %rx_bytes.i.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %665)
  %666 = load i64, ptr %rx_bytes.i.i.i.i.i.i, align 8
  %add.i.i.i.i.i.i = add i64 %666, %conv.i.i.i.i.i.i
  store i64 %add.i.i.i.i.i.i, ptr %rx_bytes.i.i.i.i.i.i, align 8
  %NumRxOkInPeriod.i.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 27, i32 1
  %667 = ptrtoint ptr %NumRxOkInPeriod.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load i32, ptr %NumRxOkInPeriod.i.i.i.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %668, 1
  store i32 %inc.i.i.i.i.i.i, ptr %NumRxOkInPeriod.i.i.i.i.i.i, align 4
  %669 = ptrtoint ptr %dst.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %669)
  %670 = load i16, ptr %dst.i.i.i.i, align 2
  %add.ptr1.i.i.i.i.i.i.i = getelementptr %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 23, i32 2
  %671 = ptrtoint ptr %add.ptr1.i.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %671)
  %672 = load i16, ptr %add.ptr1.i.i.i.i.i.i.i, align 2
  %and9.i.i.i.i.i.i.i = and i16 %672, %670
  %add.ptr3.i.i.i.i.i.i.i = getelementptr %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 23, i32 4
  %673 = ptrtoint ptr %add.ptr3.i.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %673)
  %674 = load i16, ptr %add.ptr3.i.i.i.i.i.i.i, align 2
  %and510.i.i.i.i.i.i.i = and i16 %and9.i.i.i.i.i.i.i, %674
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i16 %and510.i.i.i.i.i.i.i, -1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then30.i.i.i.i.i.if.then12.i.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.i

if.then30.i.i.i.i.i.if.then12.i.i.i.i.i.i_crit_edge: ; preds = %if.then30.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i:                        ; preds = %if.then30.i.i.i.i.i
  %675 = ptrtoint ptr %dst.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %dst.i.i.i.i, align 4
  %677 = and i32 %676, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %677)
  %tobool.i.not.i.i.i.i.i.i = icmp eq i32 %677, 0
  br i1 %tobool.i.not.i.i.i.i.i.i, label %if.then.i90.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.if.then12.i.i.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.i.if.then12.i.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i.i.i.i.i.i

if.then.i90.i.i.i.i.i:                            ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %NumRxUnicastOkInPeriod.i.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 27, i32 2
  %678 = ptrtoint ptr %NumRxUnicastOkInPeriod.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load i32, ptr %NumRxUnicastOkInPeriod.i.i.i.i.i.i, align 4
  %inc7.i.i.i.i.i.i = add i32 %679, 1
  store i32 %inc7.i.i.i.i.i.i, ptr %NumRxUnicastOkInPeriod.i.i.i.i.i.i, align 4
  br label %if.then12.i.i.i.i.i.i

if.then12.i.i.i.i.i.i:                            ; preds = %if.then.i90.i.i.i.i.i, %land.lhs.true.i.i.i.i.i.i.if.then12.i.i.i.i.i.i_crit_edge, %if.then30.i.i.i.i.i.if.then12.i.i.i.i.i.i_crit_edge
  %rx_data_pkts.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call6.i.i.i.i.i, i32 0, i32 29, i32 7
  %680 = ptrtoint ptr %rx_data_pkts.i.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %680)
  %681 = load i64, ptr %rx_data_pkts.i.i.i.i.i.i, align 8
  %inc13.i.i.i.i.i.i = add i64 %681, 1
  store i64 %inc13.i.i.i.i.i.i, ptr %rx_data_pkts.i.i.i.i.i.i, align 8
  %rx_bytes15.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call6.i.i.i.i.i, i32 0, i32 29, i32 16
  %682 = ptrtoint ptr %rx_bytes15.i.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %682)
  %683 = load i64, ptr %rx_bytes15.i.i.i.i.i.i, align 8
  %add16.i.i.i.i.i.i = add i64 %683, %conv.i.i.i.i.i.i
  store i64 %add16.i.i.i.i.i.i, ptr %rx_bytes15.i.i.i.i.i.i, align 8
  br label %validate_recv_frame.exit.thread14.i.i

if.else.i246.i.i.i.i:                             ; preds = %sw.bb17.i.i.i.i
  %mac_addr.i.i243.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 4
  %bcmp.i245.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %ra18.i.i.i.i, ptr noundef dereferenceable(6) %mac_addr.i.i243.i.i.i.i, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i245.i.i.i.i)
  %tobool35.not.i.i.i.i.i = icmp eq i32 %bcmp.i245.i.i.i.i, 0
  br i1 %tobool35.not.i.i.i.i.i, label %do.body38.i.i.i.i.i, label %if.else.i246.i.i.i.i.validate_recv_frame.exit.thread14.i.i_crit_edge

if.else.i246.i.i.i.i.validate_recv_frame.exit.thread14.i.i_crit_edge: ; preds = %if.else.i246.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %validate_recv_frame.exit.thread14.i.i

do.body38.i.i.i.i.i:                              ; preds = %if.else.i246.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %684 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %684)
  %cmp39.i.i.i.i.i = icmp ugt i32 %684, 4
  br i1 %cmp39.i.i.i.i.i, label %do.end44.i.i.i.i.i, label %do.body38.i.i.i.i.i.do.end51.i.i.i.i.i_crit_edge

do.body38.i.i.i.i.i.do.end51.i.i.i.i.i_crit_edge: ; preds = %do.body38.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51.i.i.i.i.i

do.end44.i.i.i.i.i:                               ; preds = %do.body38.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call48.i.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %src.i.i.i.i) #12
  br label %do.end51.i.i.i.i.i

do.end51.i.i.i.i.i:                               ; preds = %do.end44.i.i.i.i.i, %do.body38.i.i.i.i.i.do.end51.i.i.i.i.i_crit_edge
  %call54.i.i.i.i.i = call i32 @issue_deauth(ptr noundef %1, ptr noundef %src.i.i.i.i, i16 noundef zeroext 7) #8
  br label %validate_recv_frame.exit.thread14.i.i

sw.bb23.i.i.i.i:                                  ; preds = %if.end.i392.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %ra24.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 26
  %add.i397.i.i.i = add i32 %572, 4
  %685 = inttoptr i32 %add.i397.i.i.i to ptr
  %686 = call ptr @memcpy(ptr %ra24.i.i.i.i, ptr %685, i32 6)
  %ta26.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 25
  %add28.i.i.i.i = add i32 %572, 10
  %687 = inttoptr i32 %add28.i.i.i.i to ptr
  %688 = call ptr @memcpy(ptr %ta26.i.i.i.i, ptr %687, i32 6)
  br label %if.then291.i.i.i

sw.epilog.i398.i.i.i:                             ; preds = %if.then67.i.i.i.i.i, %sw.bb.i393.i.i.i
  %ret.0.i.i.i.i = phi i32 [ %call10.i.i.i.i, %sw.bb.i393.i.i.i ], [ %spec.select.i.i.i.i.i, %if.then67.i.i.i.i.i ]
  %689 = zext i32 %ret.0.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %689, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %ret.0.i.i.i.i, label %sw.epilog.i398.i.i.i.if.end36.i.i.i.i_crit_edge [
    i32 0, label %sw.epilog.i398.i.i.i.if.then291.i.i.i_crit_edge
    i32 2, label %sw.epilog.i398.i.i.i.validate_recv_frame.exit.thread14.i.i_crit_edge
  ]

sw.epilog.i398.i.i.i.validate_recv_frame.exit.thread14.i.i_crit_edge: ; preds = %sw.epilog.i398.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %validate_recv_frame.exit.thread14.i.i

sw.epilog.i398.i.i.i.if.then291.i.i.i_crit_edge:  ; preds = %sw.epilog.i398.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then291.i.i.i

sw.epilog.i398.i.i.i.if.end36.i.i.i.i_crit_edge:  ; preds = %sw.epilog.i398.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i.i.i.i

if.end36.i.i.i.i:                                 ; preds = %sw.epilog.i398.i.i.i.if.end36.i.i.i.i_crit_edge, %if.end25.i.i.i.i.i.if.end36.i.i.i.i_crit_edge, %if.end56.i.i.i.i.i.if.end36.i.i.i.i_crit_edge
  %690 = ptrtoint ptr %psta.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %psta.i.i.i.i, align 4
  %tobool37.not.i.i.i.i = icmp eq ptr %691, null
  br i1 %tobool37.not.i.i.i.i, label %if.end36.i.i.i.i.if.then291.i.i.i_crit_edge, label %if.end39.i.i.i.i

if.end36.i.i.i.i.if.then291.i.i.i_crit_edge:      ; preds = %if.end36.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then291.i.i.i

if.end39.i.i.i.i:                                 ; preds = %if.end36.i.i.i.i
  %psta40.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 13
  %692 = ptrtoint ptr %psta40.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %692)
  store ptr %691, ptr %psta40.i.i.i.i, align 4
  %amsdu.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 6
  %693 = ptrtoint ptr %amsdu.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %693)
  store i8 0, ptr %amsdu.i.i.i.i, align 1
  %ack_policy.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 28
  %694 = ptrtoint ptr %ack_policy.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %694)
  store i8 0, ptr %ack_policy.i.i.i.i, align 4
  %695 = ptrtoint ptr %qos.i.i.i to i32
  call void @__asan_load1_noabort(i32 %695)
  %696 = load i8, ptr %qos.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %696)
  %cmp42.i.i.i.i = icmp eq i8 %696, 1
  br i1 %cmp42.i.i.i.i, label %if.then44.i.i.i.i, label %if.else74.i.i.i.i

if.then44.i.i.i.i:                                ; preds = %if.end39.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %563, i32 24
  %697 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %697)
  %698 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %699 = lshr i16 %698, 8
  %700 = trunc i16 %699 to i8
  %conv47.i.i.i.i = and i8 %700, 15
  %priority.i399.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 8
  %701 = ptrtoint ptr %priority.i399.i.i.i to i32
  call void @__asan_store1_noabort(i32 %701)
  store i8 %conv47.i.i.i.i, ptr %priority.i399.i.i.i, align 1
  %702 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %703 = lshr i16 %702, 13
  %704 = trunc i16 %703 to i8
  %conv51.i.i.i.i = and i8 %704, 3
  %705 = ptrtoint ptr %ack_policy.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %705)
  store i8 %conv51.i.i.i.i, ptr %ack_policy.i.i.i.i, align 4
  %706 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %707 = lshr i16 %706, 15
  %conv57.i.i.i.i = trunc i16 %707 to i8
  %708 = ptrtoint ptr %amsdu.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %708)
  store i8 %conv57.i.i.i.i, ptr %amsdu.i.i.i.i, align 1
  %709 = ptrtoint ptr %to_fr_ds.i.i.i to i32
  call void @__asan_load1_noabort(i32 %709)
  %710 = load i8, ptr %to_fr_ds.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %710)
  %cmp61.i.i.i.i = icmp eq i8 %710, 3
  %conv63.i.i.i.i = select i1 %cmp61.i.i.i.i, i8 32, i8 26
  %hdrlen.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 4
  %711 = ptrtoint ptr %hdrlen.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %711)
  store i8 %conv63.i.i.i.i, ptr %hdrlen.i.i.i.i, align 1
  %trunc.i400.i.i.i = trunc i16 %699 to i4
  %712 = zext i4 %trunc.i400.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %712, ptr @__sancov_gen_cov_switch_values.83)
  switch i4 %trunc.i400.i.i.i, label %if.then72.i.i.i.i [
    i4 0, label %if.then44.i.i.i.i.if.end83.i.i.i.i_crit_edge
    i4 3, label %if.then44.i.i.i.i.if.end83.i.i.i.i_crit_edge37
  ]

if.then44.i.i.i.i.if.end83.i.i.i.i_crit_edge37:   ; preds = %if.then44.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83.i.i.i.i

if.then44.i.i.i.i.if.end83.i.i.i.i_crit_edge:     ; preds = %if.then44.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83.i.i.i.i

if.then72.i.i.i.i:                                ; preds = %if.then44.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bIsAnyNonBEPkts.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 8
  %713 = ptrtoint ptr %bIsAnyNonBEPkts.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %713)
  store i32 1, ptr %bIsAnyNonBEPkts.i.i.i.i, align 8
  br label %if.end83.i.i.i.i

if.else74.i.i.i.i:                                ; preds = %if.end39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %priority75.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 8
  %714 = ptrtoint ptr %priority75.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %714)
  store i8 0, ptr %priority75.i.i.i.i, align 1
  %715 = ptrtoint ptr %to_fr_ds.i.i.i to i32
  call void @__asan_load1_noabort(i32 %715)
  %716 = load i8, ptr %to_fr_ds.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %716)
  %cmp78.i.i.i.i = icmp eq i8 %716, 3
  %conv81.i.i.i.i = select i1 %cmp78.i.i.i.i, i8 30, i8 24
  %hdrlen82.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 4
  %717 = ptrtoint ptr %hdrlen82.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %717)
  store i8 %conv81.i.i.i.i, ptr %hdrlen82.i.i.i.i, align 1
  br label %if.end83.i.i.i.i

if.end83.i.i.i.i:                                 ; preds = %if.else74.i.i.i.i, %if.then72.i.i.i.i, %if.then44.i.i.i.i.if.end83.i.i.i.i_crit_edge, %if.then44.i.i.i.i.if.end83.i.i.i.i_crit_edge37
  %718 = ptrtoint ptr %order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %718)
  %719 = load i8, ptr %order.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %719)
  %tobool84.not.i.i.i.i = icmp eq i8 %719, 0
  br i1 %tobool84.not.i.i.i.i, label %if.end83.i.i.i.i.if.end90.i.i.i.i_crit_edge, label %if.then85.i.i.i.i

if.end83.i.i.i.i.if.end90.i.i.i.i_crit_edge:      ; preds = %if.end83.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.i.i.i.i

if.then85.i.i.i.i:                                ; preds = %if.end83.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %hdrlen86.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 4
  %720 = ptrtoint ptr %hdrlen86.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %720)
  %721 = load i8, ptr %hdrlen86.i.i.i.i, align 1
  %add88.i.i.i.i = add i8 %721, 4
  store i8 %add88.i.i.i.i, ptr %hdrlen86.i.i.i.i, align 1
  br label %if.end90.i.i.i.i

if.end90.i.i.i.i:                                 ; preds = %if.then85.i.i.i.i, %if.end83.i.i.i.i.if.end90.i.i.i.i_crit_edge
  %priority91.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 8
  %722 = ptrtoint ptr %priority91.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %722)
  %723 = load i8, ptr %priority91.i.i.i.i, align 1
  %idxprom.i.i.i.i = zext i8 %723 to i32
  %arrayidx.i.i.i.i = getelementptr %struct.sta_info, ptr %691, i32 0, i32 31, i32 %idxprom.i.i.i.i
  %preorder_ctrl.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 14
  %724 = ptrtoint ptr %preorder_ctrl.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %724)
  store ptr %arrayidx.i.i.i.i, ptr %preorder_ctrl.i.i.i.i, align 4
  %725 = ptrtoint ptr %seq_num.i.i.i to i32
  call void @__asan_load2_noabort(i32 %725)
  %726 = load i16, ptr %seq_num.i.i.i, align 4
  %shl.i.i.i.i.i = shl i16 %726, 4
  %727 = ptrtoint ptr %frag_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %727)
  %728 = load i8, ptr %frag_num.i.i.i, align 2
  %729 = and i8 %728, 15
  %and5.i.i.i.i.i = zext i8 %729 to i16
  %or.i247.i.i.i.i = or i16 %shl.i.i.i.i.i, %and5.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %723)
  %cmp.i248.i.i.i.i = icmp ugt i8 %723, 15
  br i1 %cmp.i248.i.i.i.i, label %if.end90.i.i.i.i.if.then291.i.i.i_crit_edge, label %if.end.i249.i.i.i.i

if.end90.i.i.i.i.if.then291.i.i.i_crit_edge:      ; preds = %if.end90.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then291.i.i.i

if.end.i249.i.i.i.i:                              ; preds = %if.end90.i.i.i.i
  %rxcache.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %691, i32 0, i32 4, i32 3
  %arrayidx.i.i.i.i.i = getelementptr [16 x i16], ptr %rxcache.i.i.i.i, i32 0, i32 %idxprom.i.i.i.i
  %730 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %730)
  %731 = load i16, ptr %arrayidx.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i247.i.i.i.i, i16 %731)
  %cmp10.i.i.i.i.i = icmp eq i16 %or.i247.i.i.i.i, %731
  br i1 %cmp10.i.i.i.i.i, label %if.end.i249.i.i.i.i.if.then291.i.i.i_crit_edge, label %if.end96.i.i.i.i

if.end.i249.i.i.i.i.if.then291.i.i.i_crit_edge:   ; preds = %if.end.i249.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then291.i.i.i

if.end96.i.i.i.i:                                 ; preds = %if.end.i249.i.i.i.i
  %732 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %732)
  store i16 %or.i247.i.i.i.i, ptr %arrayidx.i.i.i.i.i, align 2
  %733 = ptrtoint ptr %privacy.i.i.i to i32
  call void @__asan_load1_noabort(i32 %733)
  %734 = load i8, ptr %privacy.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %734)
  %tobool97.not.i.i.i.i = icmp eq i8 %734, 0
  br i1 %tobool97.not.i.i.i.i, label %if.else136.i.i.i.i, label %do.body.i401.i.i.i

do.body.i401.i.i.i:                               ; preds = %if.end96.i.i.i.i
  %735 = ptrtoint ptr %securitypriv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load i32, ptr %securitypriv.i.i.i.i, align 8
  %737 = zext i32 %736 to i64
  call void @__sanitizer_cov_trace_switch(i64 %737, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %736, label %do.body.i401.i.i.i.do.body117.i.i.i.i_crit_edge [
    i32 0, label %do.body.i401.i.i.i.sw.bb99.i.i.i.i_crit_edge
    i32 1, label %do.body.i401.i.i.i.sw.bb99.i.i.i.i_crit_edge38
    i32 3, label %do.body.i401.i.i.i.sw.bb99.i.i.i.i_crit_edge39
    i32 2, label %sw.bb101.i.i.i.i
    i32 4, label %sw.bb112.i.i.i.i
  ]

do.body.i401.i.i.i.sw.bb99.i.i.i.i_crit_edge39:   ; preds = %do.body.i401.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb99.i.i.i.i

do.body.i401.i.i.i.sw.bb99.i.i.i.i_crit_edge38:   ; preds = %do.body.i401.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb99.i.i.i.i

do.body.i401.i.i.i.sw.bb99.i.i.i.i_crit_edge:     ; preds = %do.body.i401.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb99.i.i.i.i

do.body.i401.i.i.i.do.body117.i.i.i.i_crit_edge:  ; preds = %do.body.i401.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117.i.i.i.i

sw.bb99.i.i.i.i:                                  ; preds = %do.body.i401.i.i.i.sw.bb99.i.i.i.i_crit_edge, %do.body.i401.i.i.i.sw.bb99.i.i.i.i_crit_edge38, %do.body.i401.i.i.i.sw.bb99.i.i.i.i_crit_edge39
  %dot11PrivacyAlgrthm.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 1
  br label %do.body117.sink.split.i.i.i.i

sw.bb101.i.i.i.i:                                 ; preds = %do.body.i401.i.i.i
  %ra102.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 26
  %738 = ptrtoint ptr %ra102.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load i32, ptr %ra102.i.i.i.i, align 4
  %740 = and i32 %739, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %740)
  %tobool.i.not.i.i.i.i = icmp eq i32 %740, 0
  br i1 %tobool.i.not.i.i.i.i, label %if.else108.i.i.i.i, label %if.then105.i.i.i.i

if.then105.i.i.i.i:                               ; preds = %sw.bb101.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dot118021XGrpPrivacy.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 5
  br label %do.body117.sink.split.i.i.i.i

if.else108.i.i.i.i:                               ; preds = %sw.bb101.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dot118021XPrivacy.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %691, i32 0, i32 13
  br label %do.body117.sink.split.i.i.i.i

sw.bb112.i.i.i.i:                                 ; preds = %do.body.i401.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dot11PrivacyAlgrthm113.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 1
  br label %do.body117.sink.split.i.i.i.i

do.body117.sink.split.i.i.i.i:                    ; preds = %sw.bb112.i.i.i.i, %if.else108.i.i.i.i, %if.then105.i.i.i.i, %sw.bb99.i.i.i.i
  %.sink.in.i.i.i.i = phi ptr [ %dot11PrivacyAlgrthm.i.i.i.i, %sw.bb99.i.i.i.i ], [ %dot11PrivacyAlgrthm113.i.i.i.i, %sw.bb112.i.i.i.i ], [ %dot118021XPrivacy.i.i.i.i, %if.else108.i.i.i.i ], [ %dot118021XGrpPrivacy.i.i.i.i, %if.then105.i.i.i.i ]
  %741 = ptrtoint ptr %.sink.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %741)
  %.sink.i.i.i.i = load i32, ptr %.sink.in.i.i.i.i, align 4
  %conv100.i.i.i.i = trunc i32 %.sink.i.i.i.i to i8
  %encrypt.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 17
  %742 = ptrtoint ptr %encrypt.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %742)
  store i8 %conv100.i.i.i.i, ptr %encrypt.i.i.i.i, align 1
  br label %do.body117.i.i.i.i

do.body117.i.i.i.i:                               ; preds = %do.body117.sink.split.i.i.i.i, %do.body.i401.i.i.i.do.body117.i.i.i.i_crit_edge
  %encrypt118.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 17
  %743 = ptrtoint ptr %encrypt118.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %743)
  %744 = load i8, ptr %encrypt118.i.i.i.i, align 1
  %switch.tableidx = add i8 %744, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %745 = icmp ult i8 %switch.tableidx, 6
  br i1 %745, label %switch.lookup, label %do.body117.i.i.i.i.if.then10.i_crit_edge

do.body117.i.i.i.i.if.then10.i_crit_edge:         ; preds = %do.body117.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i

if.else136.i.i.i.i:                               ; preds = %if.end96.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %encrypt137.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 17
  %746 = ptrtoint ptr %encrypt137.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %746)
  store i8 0, ptr %encrypt137.i.i.i.i, align 1
  br label %if.then10.i

if.then291.i.i.i:                                 ; preds = %if.end.i249.i.i.i.i.if.then291.i.i.i_crit_edge, %if.end90.i.i.i.i.if.then291.i.i.i_crit_edge, %if.end36.i.i.i.i.if.then291.i.i.i_crit_edge, %sw.epilog.i398.i.i.i.if.then291.i.i.i_crit_edge, %sw.bb23.i.i.i.i, %if.then.i237.i.i.i.i.if.then291.i.i.i_crit_edge, %do.end120.i.i.i.i.i, %if.then101.i.i.i.i.i.if.then291.i.i.i_crit_edge, %if.else94.i.i.i.i.i.if.then291.i.i.i_crit_edge, %if.end53.i.i.i.i.i.if.then291.i.i.i_crit_edge, %do.end41.i.i.i.i.i, %if.then31.i.i.i.i.i.if.then291.i.i.i_crit_edge, %if.end.i.i.i.i76.i.if.then291.i.i.i_crit_edge, %if.then.i.i.i.i.i.if.then291.i.i.i_crit_edge, %if.end.i392.i.i.i.if.then291.i.i.i_crit_edge, %get_hdr_bssid.exit.i.i.i.i.if.then291.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %psta.i.i.i.i) #8
  %rx_drop.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 11
  %747 = ptrtoint ptr %rx_drop.i.i.i to i32
  call void @__asan_load8_noabort(i32 %747)
  %748 = load i64, ptr %rx_drop.i.i.i, align 8
  %inc292.i.i.i = add i64 %748, 1
  store i64 %inc292.i.i.i, ptr %rx_drop.i.i.i, align 8
  br label %validate_recv_frame.exit.thread.i.i

validate_recv_frame.exit.thread.i.i:              ; preds = %if.then291.i.i.i, %if.end138.i.i.i.i, %land.lhs.true.i.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge, %if.end55.i.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge, %sw.epilog.i.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge, %lor.lhs.false.i387.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge, %if.then9.i.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge, %if.end.i386.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge, %sw.bb282.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge, %if.end51.i.i.i.i, %sw.bb.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge, %if.end279.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge, %if.end10.i.i.i.validate_recv_frame.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bDumpRxPkt.i.i.i) #8
  br label %recv_func_prehandle.exit.i

validate_recv_frame.exit.thread14.i.i:            ; preds = %sw.epilog.i398.i.i.i.validate_recv_frame.exit.thread14.i.i_crit_edge, %do.end51.i.i.i.i.i, %if.else.i246.i.i.i.i.validate_recv_frame.exit.thread14.i.i_crit_edge, %if.then12.i.i.i.i.i.i, %do.end16.i.i.i.i.i, %if.else90.i.i.i.i.i.validate_recv_frame.exit.thread14.i.i_crit_edge, %count_rx_stats.exit.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %psta.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bDumpRxPkt.i.i.i) #8
  br label %recv_func_prehandle.exit.i

recv_func_prehandle.exit.i:                       ; preds = %validate_recv_frame.exit.thread14.i.i, %validate_recv_frame.exit.thread.i.i
  %retval1.0.i11.i.i = phi i32 [ 0, %validate_recv_frame.exit.thread.i.i ], [ 2, %validate_recv_frame.exit.thread14.i.i ]
  %free_recv_queue.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 1
  %call1.i.i = call i32 @rtw_free_recvframe(ptr noundef %precvframe, ptr noundef %free_recv_queue.i.i) #8
  br label %recv_func.exit

switch.lookup:                                    ; preds = %do.body117.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %749 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.rtw_recv_entry, i32 0, i32 %749
  %750 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %750)
  %switch.load = load i8, ptr %switch.gep, align 1
  %751 = sext i8 %switch.tableidx to i32
  %switch.gep28 = getelementptr inbounds [6 x i8], ptr @switch.table.rtw_recv_entry.73, i32 0, i32 %751
  %752 = ptrtoint ptr %switch.gep28 to i32
  call void @__asan_load1_noabort(i32 %752)
  %switch.load29 = load i8, ptr %switch.gep28, align 1
  br label %if.then10.i

if.then10.i:                                      ; preds = %switch.lookup, %if.else136.i.i.i.i, %do.body117.i.i.i.i.if.then10.i_crit_edge
  %.sink17.i.i = phi i8 [ 0, %if.else136.i.i.i.i ], [ %switch.load, %switch.lookup ], [ 0, %do.body117.i.i.i.i.if.then10.i_crit_edge ]
  %.sink.i.i = phi i8 [ 0, %if.else136.i.i.i.i ], [ %switch.load29, %switch.lookup ], [ 0, %do.body117.i.i.i.i.if.then10.i_crit_edge ]
  %iv_len.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 18
  %753 = ptrtoint ptr %iv_len.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %753)
  store i8 %.sink17.i.i, ptr %iv_len.i.i.i.i, align 4
  %icv_len.i.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 19
  %754 = ptrtoint ptr %icv_len.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %754)
  store i8 %.sink.i.i, ptr %icv_len.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %psta.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bDumpRxPkt.i.i.i) #8
  %755 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load i32, ptr %fw_state.i.i, align 4
  %757 = and i32 %756, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %757)
  %tobool12.not.i = icmp eq i32 %757, 0
  br i1 %tobool12.not.i, label %if.then10.i.do_posthandle.i_crit_edge, label %land.lhs.true13.i

if.then10.i.do_posthandle.i_crit_edge:            ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_posthandle.i

land.lhs.true13.i:                                ; preds = %if.then10.i
  %ra.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 26
  %758 = ptrtoint ptr %ra.i to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load i32, ptr %ra.i, align 4
  %760 = and i32 %759, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %760)
  %tobool.i.not.i = icmp eq i32 %760, 0
  br i1 %tobool.i.not.i, label %land.lhs.true15.i, label %land.lhs.true13.i.do_posthandle.i_crit_edge

land.lhs.true13.i.do_posthandle.i_crit_edge:      ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_posthandle.i

land.lhs.true15.i:                                ; preds = %land.lhs.true13.i
  %encrypt.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 17
  %761 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_load1_noabort(i32 %761)
  %762 = load i8, ptr %encrypt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %762)
  %cmp17.not.i = icmp eq i8 %762, 0
  br i1 %cmp17.not.i, label %land.lhs.true15.i.do_posthandle.i_crit_edge, label %land.lhs.true19.i

land.lhs.true15.i.do_posthandle.i_crit_edge:      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_posthandle.i

land.lhs.true19.i:                                ; preds = %land.lhs.true15.i
  %bdecrypted.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 16
  %763 = ptrtoint ptr %bdecrypted.i to i32
  call void @__asan_load1_noabort(i32 %763)
  %764 = load i8, ptr %bdecrypted.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %764)
  %cmp21.i = icmp eq i8 %764, 0
  br i1 %cmp21.i, label %land.lhs.true19.i.land.lhs.true24.i_crit_edge, label %lor.lhs.false.i

land.lhs.true19.i.land.lhs.true24.i_crit_edge:    ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true24.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true19.i
  %sw_decrypt.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 27
  %765 = ptrtoint ptr %sw_decrypt.i to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load i32, ptr %sw_decrypt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %766)
  %tobool23.not.i = icmp eq i32 %766, 0
  br i1 %tobool23.not.i, label %lor.lhs.false.i.do_posthandle.i_crit_edge, label %lor.lhs.false.i.land.lhs.true24.i_crit_edge

lor.lhs.false.i.land.lhs.true24.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true24.i

lor.lhs.false.i.do_posthandle.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_posthandle.i

land.lhs.true24.i:                                ; preds = %lor.lhs.false.i.land.lhs.true24.i_crit_edge, %land.lhs.true19.i.land.lhs.true24.i_crit_edge
  %ndisauthtype.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 29
  %767 = ptrtoint ptr %ndisauthtype.i to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load i32, ptr %ndisauthtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %768)
  %cmp25.i = icmp eq i32 %768, 4
  br i1 %cmp25.i, label %land.lhs.true27.i, label %land.lhs.true24.i.do_posthandle.i_crit_edge

land.lhs.true24.i.do_posthandle.i_crit_edge:      ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_posthandle.i

land.lhs.true27.i:                                ; preds = %land.lhs.true24.i
  %busetkipkey28.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 23
  %769 = ptrtoint ptr %busetkipkey28.i to i32
  call void @__asan_load1_noabort(i32 %769)
  %770 = load i8, ptr %busetkipkey28.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %770)
  %tobool29.not.i = icmp eq i8 %770, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %land.lhs.true27.i.do_posthandle.i_crit_edge

land.lhs.true27.i.do_posthandle.i_crit_edge:      ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_posthandle.i

if.then30.i:                                      ; preds = %land.lhs.true27.i
  %uc_swdec_pending_queue32.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3
  %lock.i10 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock.i10) #8
  %771 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %adapter, align 4
  %call.i.i.i.i12 = call zeroext i1 @__list_del_entry_valid(ptr noundef %precvframe) #8
  br i1 %call.i.i.i.i12, label %if.end.i.i.i.i15, label %if.then30.i.list_del_init.exit.i.i17_crit_edge

if.then30.i.list_del_init.exit.i.i17_crit_edge:   ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i.i17

if.end.i.i.i.i15:                                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i13 = getelementptr inbounds %struct.list_head, ptr %precvframe, i32 0, i32 1
  %773 = ptrtoint ptr %prev.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %prev.i.i.i.i13, align 4
  %775 = ptrtoint ptr %precvframe to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %precvframe, align 4
  %prev1.i.i.i.i.i14 = getelementptr inbounds %struct.list_head, ptr %776, i32 0, i32 1
  %777 = ptrtoint ptr %prev1.i.i.i.i.i14 to i32
  call void @__asan_store4_noabort(i32 %777)
  store ptr %774, ptr %prev1.i.i.i.i.i14, align 4
  %778 = ptrtoint ptr %774 to i32
  call void @__asan_store4_noabort(i32 %778)
  store volatile ptr %776, ptr %774, align 4
  br label %list_del_init.exit.i.i17

list_del_init.exit.i.i17:                         ; preds = %if.end.i.i.i.i15, %if.then30.i.list_del_init.exit.i.i17_crit_edge
  %779 = ptrtoint ptr %precvframe to i32
  call void @__asan_store4_noabort(i32 %779)
  store volatile ptr %precvframe, ptr %precvframe, align 4
  %prev.i3.i.i.i16 = getelementptr inbounds %struct.list_head, ptr %precvframe, i32 0, i32 1
  %780 = ptrtoint ptr %prev.i3.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %780)
  store ptr %precvframe, ptr %prev.i3.i.i.i16, align 4
  %prev.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 0, i32 1
  %781 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i9.i.i = call zeroext i1 @__list_add_valid(ptr noundef %precvframe, ptr noundef %782, ptr noundef %uc_swdec_pending_queue32.i) #8
  br i1 %call.i.i9.i.i, label %if.end.i.i10.i.i, label %list_del_init.exit.i.i17.list_add_tail.exit.i.i_crit_edge

list_del_init.exit.i.i17.list_add_tail.exit.i.i_crit_edge: ; preds = %list_del_init.exit.i.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i.i

if.end.i.i10.i.i:                                 ; preds = %list_del_init.exit.i.i17
  call void @__sanitizer_cov_trace_pc() #10
  %783 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %783)
  store ptr %precvframe, ptr %prev.i.i.i, align 4
  %784 = ptrtoint ptr %precvframe to i32
  call void @__asan_store4_noabort(i32 %784)
  store ptr %uc_swdec_pending_queue32.i, ptr %precvframe, align 4
  %785 = ptrtoint ptr %prev.i3.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %785)
  store ptr %782, ptr %prev.i3.i.i.i16, align 4
  %786 = ptrtoint ptr %782 to i32
  call void @__asan_store4_noabort(i32 %786)
  store volatile ptr %precvframe, ptr %782, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i10.i.i, %list_del_init.exit.i.i17.list_add_tail.exit.i.i_crit_edge
  %tobool.not.i.i = icmp ne ptr %772, null
  %free_recv_queue.i.i18 = getelementptr inbounds %struct.adapter, ptr %772, i32 0, i32 10, i32 1
  %cmp.i.i19 = icmp eq ptr %free_recv_queue.i.i18, %uc_swdec_pending_queue32.i
  %or.cond.i.i20 = select i1 %tobool.not.i.i, i1 %cmp.i.i19, i1 false
  br i1 %or.cond.i.i20, label %if.then2.i.i, label %list_add_tail.exit.i.i.rtw_enqueue_recvframe.exit_crit_edge

list_add_tail.exit.i.i.rtw_enqueue_recvframe.exit_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_enqueue_recvframe.exit

if.then2.i.i:                                     ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %free_recvframe_cnt.i.i21 = getelementptr inbounds %struct.adapter, ptr %772, i32 0, i32 10, i32 6
  %787 = ptrtoint ptr %free_recvframe_cnt.i.i21 to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load i32, ptr %free_recvframe_cnt.i.i21, align 8
  %inc.i.i = add i32 %788, 1
  store i32 %inc.i.i, ptr %free_recvframe_cnt.i.i21, align 8
  br label %rtw_enqueue_recvframe.exit

rtw_enqueue_recvframe.exit:                       ; preds = %if.then2.i.i, %list_add_tail.exit.i.i.rtw_enqueue_recvframe.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i10) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %789 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %789)
  %cmp34.i = icmp ugt i32 %789, 4
  br i1 %cmp34.i, label %do.end.i, label %rtw_enqueue_recvframe.exit.do.end41.i_crit_edge

rtw_enqueue_recvframe.exit.do.end41.i_crit_edge:  ; preds = %rtw_enqueue_recvframe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41.i

do.end.i:                                         ; preds = %rtw_enqueue_recvframe.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #12
  br label %do.end41.i

do.end41.i:                                       ; preds = %do.end.i, %rtw_enqueue_recvframe.exit.do.end41.i_crit_edge
  %free_recvframe_cnt.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 6
  %790 = ptrtoint ptr %free_recvframe_cnt.i to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load i32, ptr %free_recvframe_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %791)
  %cmp42.i = icmp ult i32 %791, 64
  br i1 %cmp42.i, label %if.then44.i, label %do.end41.i.if.end_crit_edge

do.end41.i.if.end_crit_edge:                      ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then44.i:                                      ; preds = %do.end41.i
  call void @_raw_spin_lock_bh(ptr noundef %lock.i10) #8
  %792 = ptrtoint ptr %uc_swdec_pending_queue32.i to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load volatile ptr, ptr %uc_swdec_pending_queue32.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %793, %uc_swdec_pending_queue32.i
  br i1 %cmp.i.not.i.i, label %rtw_alloc_recvframe.exit.thread, label %if.else.i.i

rtw_alloc_recvframe.exit.thread:                  ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i10) #8
  br label %if.end

if.else.i.i:                                      ; preds = %if.then44.i
  %call.i.i.i.i7 = call zeroext i1 @__list_del_entry_valid(ptr noundef %793) #8
  br i1 %call.i.i.i.i7, label %if.end.i.i.i.i8, label %if.else.i.i.list_del_init.exit.i.i_crit_edge

if.else.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i.i

if.end.i.i.i.i8:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %793, i32 0, i32 1
  %794 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %prev.i.i.i.i, align 4
  %796 = ptrtoint ptr %793 to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %793, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %797, i32 0, i32 1
  %798 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %798)
  store ptr %795, ptr %prev1.i.i.i.i.i, align 4
  %799 = ptrtoint ptr %795 to i32
  call void @__asan_store4_noabort(i32 %799)
  store volatile ptr %797, ptr %795, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i8, %if.else.i.i.list_del_init.exit.i.i_crit_edge
  %800 = ptrtoint ptr %793 to i32
  call void @__asan_store4_noabort(i32 %800)
  store volatile ptr %793, ptr %793, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %793, i32 0, i32 1
  %801 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %801)
  store ptr %793, ptr %prev.i3.i.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.recv_frame, ptr %793, i32 0, i32 3
  %802 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %adapter.i.i, align 4
  %tobool2.not.i.i = icmp ne ptr %803, null
  %free_recv_queue.i.i9 = getelementptr inbounds %struct.adapter, ptr %803, i32 0, i32 10, i32 1
  %cmp.i.i = icmp eq ptr %free_recv_queue.i.i9, %uc_swdec_pending_queue32.i
  %or.cond.i.i = select i1 %tobool2.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then4.i.i, label %list_del_init.exit.i.i.rtw_alloc_recvframe.exit_crit_edge

list_del_init.exit.i.i.rtw_alloc_recvframe.exit_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_alloc_recvframe.exit

if.then4.i.i:                                     ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %free_recvframe_cnt.i.i = getelementptr inbounds %struct.adapter, ptr %803, i32 0, i32 10, i32 6
  %804 = ptrtoint ptr %free_recvframe_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load i32, ptr %free_recvframe_cnt.i.i, align 8
  %dec.i.i = add i32 %805, -1
  store i32 %dec.i.i, ptr %free_recvframe_cnt.i.i, align 8
  br label %rtw_alloc_recvframe.exit

rtw_alloc_recvframe.exit:                         ; preds = %if.then4.i.i, %list_del_init.exit.i.i.rtw_alloc_recvframe.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i10) #8
  %tobool48.not.i = icmp eq ptr %793, null
  br i1 %tobool48.not.i, label %rtw_alloc_recvframe.exit.if.end_crit_edge, label %rtw_alloc_recvframe.exit.do_posthandle.i_crit_edge

rtw_alloc_recvframe.exit.do_posthandle.i_crit_edge: ; preds = %rtw_alloc_recvframe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_posthandle.i

rtw_alloc_recvframe.exit.if.end_crit_edge:        ; preds = %rtw_alloc_recvframe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do_posthandle.i:                                  ; preds = %rtw_alloc_recvframe.exit.do_posthandle.i_crit_edge, %land.lhs.true27.i.do_posthandle.i_crit_edge, %land.lhs.true24.i.do_posthandle.i_crit_edge, %lor.lhs.false.i.do_posthandle.i_crit_edge, %land.lhs.true15.i.do_posthandle.i_crit_edge, %land.lhs.true13.i.do_posthandle.i_crit_edge, %if.then10.i.do_posthandle.i_crit_edge
  %rframe.addr.0.i = phi ptr [ %precvframe, %land.lhs.true13.i.do_posthandle.i_crit_edge ], [ %precvframe, %land.lhs.true27.i.do_posthandle.i_crit_edge ], [ %793, %rtw_alloc_recvframe.exit.do_posthandle.i_crit_edge ], [ %precvframe, %land.lhs.true24.i.do_posthandle.i_crit_edge ], [ %precvframe, %lor.lhs.false.i.do_posthandle.i_crit_edge ], [ %precvframe, %land.lhs.true15.i.do_posthandle.i_crit_edge ], [ %precvframe, %if.then10.i.do_posthandle.i_crit_edge ]
  %call53.i = call fastcc i32 @recv_func_posthandle(ptr noundef %1, ptr noundef %rframe.addr.0.i) #8
  br label %recv_func.exit

recv_func.exit:                                   ; preds = %do_posthandle.i, %recv_func_prehandle.exit.i
  %ret.0.i = phi i32 [ %call53.i, %do_posthandle.i ], [ %retval1.0.i11.i.i, %recv_func_prehandle.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp eq i32 %ret.0.i, 0
  br i1 %cmp, label %recv_func.exit.cleanup_crit_edge, label %recv_func.exit.if.end_crit_edge

recv_func.exit.if.end_crit_edge:                  ; preds = %recv_func.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

recv_func.exit.cleanup_crit_edge:                 ; preds = %recv_func.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %recv_func.exit.if.end_crit_edge, %rtw_alloc_recvframe.exit.if.end_crit_edge, %rtw_alloc_recvframe.exit.thread, %do.end41.i.if.end_crit_edge
  %ret.0.i26 = phi i32 [ %ret.0.i, %recv_func.exit.if.end_crit_edge ], [ 1, %rtw_alloc_recvframe.exit.if.end_crit_edge ], [ 1, %do.end41.i.if.end_crit_edge ], [ 1, %rtw_alloc_recvframe.exit.thread ]
  %rx_pkts = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 10
  %806 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load8_noabort(i32 %806)
  %807 = load i64, ptr %rx_pkts, align 8
  %inc = add i64 %807, 1
  store i64 %inc, ptr %rx_pkts, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %recv_func.exit.cleanup_crit_edge
  %ret.0.i27 = phi i32 [ 0, %recv_func.exit.cleanup_crit_edge ], [ %ret.0.i26, %if.end ]
  ret i32 %ret.0.i27
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_seccalctkipmic(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_handle_tkip_mic_err(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_recv_indicatepkt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amsdu_to_msdu(ptr noundef %padapter, ptr noundef %prframe) unnamed_addr #0 align 64 {
entry:
  %subframes = alloca [64 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %subframes) #8
  %0 = call ptr @memset(ptr %subframes, i32 255, i32 256)
  %hdrlen = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %2 to i32
  %cmp.i = icmp eq ptr %prframe, null
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %rx_data.i = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 9
  %3 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %conv
  store ptr %add.ptr.i, ptr %rx_data.i, align 4
  %rx_tail.i = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 10
  %5 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_tail.i, align 4
  %cmp2.i = icmp ugt ptr %add.ptr.i, %6
  br i1 %cmp2.i, label %if.then3.i, label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %rx_data.i, align 4
  br label %recvframe_pull.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %len.i = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 7
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %9, %conv
  store i32 %sub.i, ptr %len.i, align 4
  br label %recvframe_pull.exit

recvframe_pull.exit:                              ; preds = %if.end6.i, %if.then3.i
  %iv_len = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 6, i32 18
  %10 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iv_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not = icmp eq i8 %11, 0
  br i1 %cmp.not, label %recvframe_pull.exit.if.end_crit_edge, label %if.end.i8

recvframe_pull.exit.if.end_crit_edge:             ; preds = %recvframe_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i8:                                        ; preds = %recvframe_pull.exit
  %conv3 = zext i8 %11 to i32
  %12 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_data.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %13, i32 %conv3
  store ptr %add.ptr.i5, ptr %rx_data.i, align 4
  %14 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_tail.i, align 4
  %cmp2.i7 = icmp ugt ptr %add.ptr.i5, %15
  br i1 %cmp2.i7, label %if.then3.i9, label %if.end6.i12

if.then3.i9:                                      ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %rx_data.i, align 4
  br label %if.end

if.end6.i12:                                      ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #10
  %len.i10 = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 7
  %17 = ptrtoint ptr %len.i10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i10, align 4
  %sub.i11 = sub i32 %18, %conv3
  store i32 %sub.i11, ptr %len.i10, align 4
  br label %if.end

if.end:                                           ; preds = %if.end6.i12, %if.then3.i9, %recvframe_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %len = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 7
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %20)
  %cmp935 = icmp sgt i32 %20, 14
  br i1 %cmp935, label %while.body.lr.ph, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

while.body.lr.ph:                                 ; preds = %if.end
  %rx_data = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 9
  %21 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_data, align 4
  %pkt = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end98.while.body_crit_edge, %while.body.lr.ph
  %indvars.iv = phi i32 [ 0, %while.body.lr.ph ], [ %indvars.iv.next, %if.end98.while.body_crit_edge ]
  %a_len.039 = phi i32 [ %20, %while.body.lr.ph ], [ %sub97, %if.end98.while.body_crit_edge ]
  %pdata.036 = phi ptr [ %22, %while.body.lr.ph ], [ %add.ptr96, %if.end98.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %pdata.036, i32 12
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr, align 1
  %conv11 = zext i8 %24 to i32
  %shl = shl nuw nsw i32 %conv11, 8
  %arrayidx13 = getelementptr i8, ptr %pdata.036, i32 13
  %25 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %26 to i32
  %or = or i32 %shl, %conv14
  %add = add nuw nsw i32 %or, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %a_len.039, i32 %add)
  %cmp17 = icmp slt i32 %a_len.039, %add
  br i1 %cmp17, label %do.body, label %if.end29

do.body:                                          ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %27 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp20 = icmp ugt i32 %27, 4
  br i1 %cmp20, label %do.end, label %do.body.exit_crit_edge

do.body.exit_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %a_len.039, i32 noundef %or) #12
  br label %exit

if.end29:                                         ; preds = %while.body
  %add.ptr30 = getelementptr i8, ptr %pdata.036, i32 14
  %sub = add nsw i32 %a_len.039, -14
  %add32 = add nuw nsw i32 %or, 12
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add32, i32 noundef 2592) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %29, i32 12
  store ptr %add.ptr.i15, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %30 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %31, i32 12
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call36 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %or) #8
  %32 = call ptr @memcpy(ptr %call36, ptr %add.ptr30, i32 %or)
  br label %if.end59

if.else:                                          ; preds = %if.end29
  %33 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pkt, align 4
  %call38 = tail call ptr @skb_clone(ptr noundef %34, i32 noundef 2592) #8
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %do.body45, label %if.then40

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %call38, i32 0, i32 19
  %35 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr30, ptr %data, align 4
  %len42 = getelementptr inbounds %struct.sk_buff, ptr %call38, i32 0, i32 6
  %36 = ptrtoint ptr %len42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or, ptr %len42, align 4
  %add.ptr.i17 = getelementptr i8, ptr %add.ptr30, i32 %or
  %tail.i18 = getelementptr inbounds %struct.sk_buff, ptr %call38, i32 0, i32 16
  %37 = ptrtoint ptr %tail.i18 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr.i17, ptr %tail.i18, align 8
  br label %if.end59

do.body45:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %38 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp46 = icmp ugt i32 %38, 4
  br i1 %cmp46, label %do.end51, label %do.body45.while.end_crit_edge

do.body45.while.end_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end51:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  %conv53 = and i32 %indvars.iv, 255
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv53) #12
  br label %while.end

if.end59:                                         ; preds = %if.then40, %if.then34
  %sub_skb.0 = phi ptr [ %call.i.i, %if.then34 ], [ %call38, %if.then40 ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %arrayidx60 = getelementptr [64 x ptr], ptr %subframes, i32 0, i32 %indvars.iv
  %39 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %sub_skb.0, ptr %arrayidx60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %indvars.iv)
  %exitcond = icmp eq i32 %indvars.iv, 63
  br i1 %exitcond, label %do.body65, label %if.end77

do.body65:                                        ; preds = %if.end59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %40 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp66 = icmp ugt i32 %40, 4
  br i1 %cmp66, label %do.end71, label %do.body65.for.body.lr.ph_crit_edge

do.body65.for.body.lr.ph_crit_edge:               ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph

do.end71:                                         ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #10
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #12
  br label %for.body.lr.ph

if.end77:                                         ; preds = %if.end59
  %add.ptr79 = getelementptr i8, ptr %add.ptr30, i32 %or
  %sub81 = sub i32 %sub, %or
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %or)
  %cmp82.not = icmp eq i32 %sub, %or
  br i1 %cmp82.not, label %if.end77.while.end_crit_edge, label %if.then84

if.end77.while.end_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then84:                                        ; preds = %if.end77
  %and = and i32 %add, 3
  %sub87 = sub nuw nsw i32 4, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp88 = icmp eq i32 %and, 0
  %spec.store.select = select i1 %cmp88, i32 0, i32 %sub87
  call void @__sanitizer_cov_trace_cmp4(i32 %sub81, i32 %spec.store.select)
  %cmp92 = icmp slt i32 %sub81, %spec.store.select
  br i1 %cmp92, label %if.then84.exit_crit_edge, label %if.end98

if.then84.exit_crit_edge:                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end98:                                         ; preds = %if.then84
  %add.ptr96 = getelementptr i8, ptr %add.ptr79, i32 %spec.store.select
  %sub97 = sub i32 %sub81, %spec.store.select
  %cmp9 = icmp sgt i32 %sub97, 14
  br i1 %cmp9, label %if.end98.while.body_crit_edge, label %if.end98.while.end_crit_edge

if.end98.while.end_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end98.while.body_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end98.while.end_crit_edge, %if.end77.while.end_crit_edge, %do.end51, %do.body45.while.end_crit_edge
  %nr_subframes.1.in = phi i32 [ %indvars.iv, %do.end51 ], [ %indvars.iv, %do.body45.while.end_crit_edge ], [ %indvars.iv.next, %if.end77.while.end_crit_edge ], [ %indvars.iv.next, %if.end98.while.end_crit_edge ]
  %nr_subframes.1 = trunc i32 %nr_subframes.1.in to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %nr_subframes.1)
  %cmp10140.not = icmp eq i8 %nr_subframes.1, 0
  br i1 %cmp10140.not, label %while.end.exit_crit_edge, label %while.end.for.body.lr.ph_crit_edge

while.end.for.body.lr.ph_crit_edge:               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph

while.end.exit_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

for.body.lr.ph:                                   ; preds = %while.end.for.body.lr.ph_crit_edge, %do.end71, %do.body65.for.body.lr.ph_crit_edge
  %nr_subframes.165 = phi i32 [ %nr_subframes.1.in, %while.end.for.body.lr.ph_crit_edge ], [ 64, %do.end71 ], [ 64, %do.body65.for.body.lr.ph_crit_edge ]
  %src144 = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 6, i32 24
  %dst147 = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 6, i32 23
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %wide.trip.count = and i32 %nr_subframes.165, 255
  br label %for.body

for.body:                                         ; preds = %if.end149.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv57 = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next58, %if.end149.for.body_crit_edge ]
  %arrayidx104 = getelementptr [64 x ptr], ptr %subframes, i32 0, i32 %indvars.iv57
  %41 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx104, align 4
  %data105 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 19
  %43 = ptrtoint ptr %data105 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data105, align 4
  %arrayidx106 = getelementptr i8, ptr %44, i32 6
  %45 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx106, align 1
  %conv108 = zext i8 %46 to i16
  %shl109 = shl nuw i16 %conv108, 8
  %arrayidx112 = getelementptr i8, ptr %44, i32 7
  %47 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %48 to i16
  %or114 = or i16 %shl109, %conv113
  %len116 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 6
  %49 = ptrtoint ptr %len116 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %50)
  %cmp117 = icmp ugt i32 %50, 7
  br i1 %cmp117, label %land.lhs.true, label %for.body.if.else138_crit_edge

for.body.if.else138_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else138

land.lhs.true:                                    ; preds = %for.body
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %44, ptr noundef nonnull dereferenceable(6) @rtw_rfc1042_header, i32 6) #13
  %bcmp.fr = freeze i32 %bcmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.fr)
  %tobool121.not.not = icmp eq i32 %bcmp.fr, 0
  br i1 %tobool121.not.not, label %switch.early.test, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

switch.early.test:                                ; preds = %land.lhs.true
  %51 = zext i16 %or114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.85)
  switch i16 %or114, label %switch.early.test.if.then133_crit_edge [
    i16 -32457, label %switch.early.test.lor.lhs.false_crit_edge
    i16 -32525, label %switch.early.test.lor.lhs.false_crit_edge128
  ]

switch.early.test.lor.lhs.false_crit_edge128:     ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

switch.early.test.lor.lhs.false_crit_edge:        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

switch.early.test.if.then133_crit_edge:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then133

lor.lhs.false:                                    ; preds = %switch.early.test.lor.lhs.false_crit_edge, %switch.early.test.lor.lhs.false_crit_edge128, %land.lhs.true.lor.lhs.false_crit_edge
  %bcmp1 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %44, ptr noundef nonnull dereferenceable(6) @rtw_bridge_tunnel_header, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1)
  %tobool132.not = icmp eq i32 %bcmp1, 0
  br i1 %tobool132.not, label %lor.lhs.false.if.then133_crit_edge, label %lor.lhs.false.if.else138_crit_edge

lor.lhs.false.if.else138_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else138

lor.lhs.false.if.then133_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then133

if.then133:                                       ; preds = %lor.lhs.false.if.then133_crit_edge, %switch.early.test.if.then133_crit_edge
  %call134 = tail call ptr @skb_pull(ptr noundef %42, i32 noundef 6) #8
  br label %if.end149

if.else138:                                       ; preds = %lor.lhs.false.if.else138_crit_edge, %for.body.if.else138_crit_edge
  %conv141 = trunc i32 %50 to i16
  %call142 = tail call ptr @skb_push(ptr noundef %42, i32 noundef 2) #8
  %52 = ptrtoint ptr %call142 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %conv141, ptr %call142, align 1
  br label %if.end149

if.end149:                                        ; preds = %if.else138, %if.then133
  %call143 = tail call ptr @skb_push(ptr noundef %42, i32 noundef 6) #8
  %53 = call ptr @memcpy(ptr %call143, ptr %src144, i32 6)
  %call146 = tail call ptr @skb_push(ptr noundef %42, i32 noundef 6) #8
  %54 = call ptr @memcpy(ptr %call146, ptr %dst147, i32 6)
  %55 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pnetdev, align 4
  %call150 = tail call zeroext i16 @eth_type_trans(ptr noundef %42, ptr noundef %56) #8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 15, i32 0, i32 18
  %57 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %call150, ptr %protocol, align 8
  %58 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pnetdev, align 4
  %60 = getelementptr inbounds %struct.anon.6, ptr %42, i32 0, i32 2
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %60, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 15
  %62 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %call152 = tail call i32 @netif_rx(ptr noundef %42) #8
  %indvars.iv.next58 = add nuw nsw i32 %indvars.iv57, 1
  %exitcond59.not = icmp eq i32 %indvars.iv.next58, %wide.trip.count
  br i1 %exitcond59.not, label %if.end149.exit_crit_edge, label %if.end149.for.body_crit_edge

if.end149.for.body_crit_edge:                     ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end149.exit_crit_edge:                         ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

exit:                                             ; preds = %if.end149.exit_crit_edge, %while.end.exit_crit_edge, %if.then84.exit_crit_edge, %do.end, %do.body.exit_crit_edge, %if.end.exit_crit_edge
  %free_recv_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 1
  %63 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %len, align 4
  %call155 = tail call i32 @rtw_free_recvframe(ptr noundef %prframe, ptr noundef %free_recv_queue)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %subframes) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @recv_func_posthandle(ptr noundef %padapter, ptr noundef %prframe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %free_recv_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 1
  tail call void @rtw_led_control(ptr noundef %padapter, i32 noundef 5) #8
  %encrypt.i = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 6, i32 17
  %0 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %encrypt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not.i = icmp eq i8 %1, 0
  br i1 %cmp.not.i, label %entry.decryptor.exit_crit_edge, label %land.lhs.true.i

entry.decryptor.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %decryptor.exit

land.lhs.true.i:                                  ; preds = %entry
  %rx_data.i = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 9
  %2 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_data.i, align 4
  %hdrlen.i = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdrlen.i, align 1
  %conv2.i = zext i8 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv2.i
  %arrayidx.i = getelementptr i8, ptr %add.ptr.i, i32 3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = lshr i8 %7, 6
  %key_index.i = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 6, i32 29
  %9 = ptrtoint ptr %key_index.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %key_index.i, align 1
  %bdecrypted.i = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 6, i32 16
  %10 = ptrtoint ptr %bdecrypted.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bdecrypted.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp32.i = icmp eq i8 %11, 0
  br i1 %cmp32.i, label %land.lhs.true.i.if.then34.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.then34.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %sw_decrypt.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 27
  %12 = ptrtoint ptr %sw_decrypt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sw_decrypt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.else.thread.i, label %lor.lhs.false.i.if.then34.i_crit_edge

lor.lhs.false.i.if.then34.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34.i

if.then34.i:                                      ; preds = %lor.lhs.false.i.if.then34.i_crit_edge, %land.lhs.true.i.if.then34.i_crit_edge
  %hw_decrypted.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 28
  %14 = ptrtoint ptr %hw_decrypted.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %hw_decrypted.i, align 8
  %15 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %encrypt.i, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %16, label %if.then34.i.decryptor.exit_crit_edge [
    i8 1, label %if.then34.i.sw.bb37.i_crit_edge
    i8 5, label %if.then34.i.sw.bb37.i_crit_edge68
    i8 2, label %sw.bb38.i
    i8 4, label %sw.bb40.i
  ]

if.then34.i.sw.bb37.i_crit_edge68:                ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb37.i

if.then34.i.sw.bb37.i_crit_edge:                  ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb37.i

if.then34.i.decryptor.exit_crit_edge:             ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %decryptor.exit

sw.bb37.i:                                        ; preds = %if.then34.i.sw.bb37.i_crit_edge, %if.then34.i.sw.bb37.i_crit_edge68
  tail call void @rtw_wep_decrypt(ptr noundef %padapter, ptr noundef %prframe) #8
  br label %decryptor.exit

sw.bb38.i:                                        ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  %call39.i = tail call i32 @rtw_tkip_decrypt(ptr noundef %padapter, ptr noundef %prframe) #8
  br label %if.end65.i

sw.bb40.i:                                        ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  %call41.i = tail call i32 @rtw_aes_decrypt(ptr noundef %padapter, ptr noundef %prframe) #8
  br label %if.end65.i

if.else.thread.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp46103.i = icmp eq i8 %11, 1
  br i1 %cmp46103.i, label %land.lhs.true53.i, label %if.else.thread.i.decryptor.exit_crit_edge

if.else.thread.i.decryptor.exit_crit_edge:        ; preds = %if.else.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %decryptor.exit

land.lhs.true53.i:                                ; preds = %if.else.thread.i
  %busetkipkey.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 23
  %18 = ptrtoint ptr %busetkipkey.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %busetkipkey.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp55.i = icmp ne i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp60.not.i = icmp eq i8 %1, 2
  %or.cond.i = select i1 %cmp55.i, i1 %cmp60.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true53.i.decryptor.exit_crit_edge, label %if.then62.i

land.lhs.true53.i.decryptor.exit_crit_edge:       ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %decryptor.exit

if.then62.i:                                      ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #10
  %hw_decrypted63.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 28
  %20 = ptrtoint ptr %hw_decrypted63.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %hw_decrypted63.i, align 8
  br label %decryptor.exit

if.end65.i:                                       ; preds = %sw.bb40.i, %sw.bb38.i
  %res.0.i = phi i32 [ %call41.i, %sw.bb40.i ], [ %call39.i, %sw.bb38.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i)
  %cmp66.i = icmp eq i32 %res.0.i, 0
  br i1 %cmp66.i, label %decryptor.exit.thread, label %if.end65.i.decryptor.exit_crit_edge

if.end65.i.decryptor.exit_crit_edge:              ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %decryptor.exit

decryptor.exit.thread:                            ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  %call69.i = tail call i32 @rtw_free_recvframe(ptr noundef %prframe, ptr noundef %free_recv_queue) #8
  br label %_recv_data_drop

decryptor.exit:                                   ; preds = %if.end65.i.decryptor.exit_crit_edge, %if.then62.i, %land.lhs.true53.i.decryptor.exit_crit_edge, %if.else.thread.i.decryptor.exit_crit_edge, %sw.bb37.i, %if.then34.i.decryptor.exit_crit_edge, %entry.decryptor.exit_crit_edge
  %bdecrypted71.i = getelementptr inbounds %struct.recv_frame, ptr %prframe, i32 0, i32 6, i32 16
  %21 = ptrtoint ptr %bdecrypted71.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %bdecrypted71.i, align 2
  %tobool.not = icmp eq ptr %prframe, null
  br i1 %tobool.not, label %decryptor.exit._recv_data_drop_crit_edge, label %if.end

decryptor.exit._recv_data_drop_crit_edge:         ; preds = %decryptor.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %_recv_data_drop

if.end:                                           ; preds = %decryptor.exit
  %call2 = tail call ptr @recvframe_chk_defrag(ptr noundef %padapter, ptr noundef nonnull %prframe)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end._recv_data_drop_crit_edge, label %if.end5

if.end._recv_data_drop_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %_recv_data_drop

if.end5:                                          ; preds = %if.end
  %stapriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %securitypriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %22 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %securitypriv.i, align 8
  %rx_data.i34 = getelementptr inbounds %struct.recv_frame, ptr %call2, i32 0, i32 9
  %24 = ptrtoint ptr %rx_data.i34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_data.i34, align 4
  %ta.i = getelementptr inbounds %struct.recv_frame, ptr %call2, i32 0, i32 6, i32 25
  %call.i = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv.i, ptr noundef %ta.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.i = icmp ne i32 %23, 2
  %tobool.not.i35 = icmp eq ptr %call.i, null
  %or.cond.i36 = select i1 %cmp.i, i1 true, i1 %tobool.not.i35
  br i1 %or.cond.i36, label %if.end5.if.end9_crit_edge, label %land.lhs.true.i37

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true.i37:                                ; preds = %if.end5
  %ieee8021x_blocked.i = getelementptr inbounds %struct.sta_info, ptr %call.i, i32 0, i32 12
  %26 = ptrtoint ptr %ieee8021x_blocked.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ieee8021x_blocked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool1.not.i = icmp eq i32 %27, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i37.if.end9_crit_edge, label %if.then2.i

land.lhs.true.i37.if.end9_crit_edge:              ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then2.i:                                       ; preds = %land.lhs.true.i37
  %hdrlen.i38 = getelementptr inbounds %struct.recv_frame, ptr %call2, i32 0, i32 6, i32 4
  %28 = ptrtoint ptr %hdrlen.i38 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %hdrlen.i38, align 1
  %conv.i = zext i8 %29 to i32
  %add.ptr.i39 = getelementptr i8, ptr %25, i32 %conv.i
  %iv_len.i = getelementptr inbounds %struct.recv_frame, ptr %call2, i32 0, i32 6, i32 18
  %30 = ptrtoint ptr %iv_len.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %iv_len.i, align 4
  %conv5.i = zext i8 %31 to i32
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i39, i32 %conv5.i
  %add.ptr7.i = getelementptr i8, ptr %add.ptr6.i, i32 6
  %32 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %be_tmp.0.copyload.i = load i16, ptr %add.ptr7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %be_tmp.0.copyload.i)
  %cmp10.i = icmp eq i16 %be_tmp.0.copyload.i, -30578
  br i1 %cmp10.i, label %if.then2.i.if.end9_crit_edge, label %portctrl.exit

if.then2.i.if.end9_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

portctrl.exit:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = tail call i32 @rtw_free_recvframe(ptr noundef nonnull %call2, ptr noundef %free_recv_queue) #8
  br label %_recv_data_drop

if.end9:                                          ; preds = %if.then2.i.if.end9_crit_edge, %land.lhs.true.i37.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %len.i.i = getelementptr inbounds %struct.recv_frame, ptr %call2, i32 0, i32 7
  %33 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i, align 4
  %conv.i41 = sext i32 %34 to i64
  %rx_bytes.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 9
  %35 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %rx_bytes.i, align 8
  %add.i = add i64 %36, %conv.i41
  store i64 %add.i, ptr %rx_bytes.i, align 8
  %NumRxOkInPeriod.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 27, i32 1
  %37 = ptrtoint ptr %NumRxOkInPeriod.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %NumRxOkInPeriod.i, align 4
  %inc.i = add i32 %38, 1
  store i32 %inc.i, ptr %NumRxOkInPeriod.i, align 4
  %dst.i = getelementptr inbounds %struct.recv_frame, ptr %call2, i32 0, i32 6, i32 23
  %39 = ptrtoint ptr %dst.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %dst.i, align 2
  %add.ptr1.i.i = getelementptr %struct.recv_frame, ptr %call2, i32 0, i32 6, i32 23, i32 2
  %41 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %42, %40
  %add.ptr3.i.i = getelementptr %struct.recv_frame, ptr %call2, i32 0, i32 6, i32 23, i32 4
  %43 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr3.i.i, align 2
  %and510.i.i = and i16 %and9.i.i, %44
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i.i = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i.i, label %if.end9.if.end.i_crit_edge, label %land.lhs.true.i42

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i42:                                ; preds = %if.end9
  %45 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dst.i, align 4
  %47 = and i32 %46, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i.not.i = icmp eq i32 %47, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %land.lhs.true.i42.if.end.i_crit_edge

land.lhs.true.i42.if.end.i_crit_edge:             ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #10
  %NumRxUnicastOkInPeriod.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 27, i32 2
  %48 = ptrtoint ptr %NumRxUnicastOkInPeriod.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %NumRxUnicastOkInPeriod.i, align 4
  %inc7.i = add i32 %49, 1
  store i32 %inc7.i, ptr %NumRxUnicastOkInPeriod.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i42.if.end.i_crit_edge, %if.end9.if.end.i_crit_edge
  %psta9.i = getelementptr inbounds %struct.recv_frame, ptr %call2, i32 0, i32 13
  %50 = ptrtoint ptr %psta9.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %psta9.i, align 4
  %tobool11.not.i = icmp eq ptr %51, null
  br i1 %tobool11.not.i, label %if.end.i.count_rx_stats.exit_crit_edge, label %if.then12.i

if.end.i.count_rx_stats.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %count_rx_stats.exit

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_data_pkts.i = getelementptr inbounds %struct.sta_info, ptr %51, i32 0, i32 29, i32 7
  %52 = ptrtoint ptr %rx_data_pkts.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %rx_data_pkts.i, align 8
  %inc13.i = add i64 %53, 1
  store i64 %inc13.i, ptr %rx_data_pkts.i, align 8
  %rx_bytes15.i = getelementptr inbounds %struct.sta_info, ptr %51, i32 0, i32 29, i32 16
  %54 = ptrtoint ptr %rx_bytes15.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %rx_bytes15.i, align 8
  %add16.i = add i64 %55, %conv.i41
  store i64 %add16.i, ptr %rx_bytes15.i, align 8
  br label %count_rx_stats.exit

count_rx_stats.exit:                              ; preds = %if.then12.i, %if.end.i.count_rx_stats.exit_crit_edge
  %htpriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26
  %56 = ptrtoint ptr %htpriv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %htpriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i43 = icmp eq i32 %57, 0
  br i1 %tobool.not.i43, label %if.else.i47, label %if.then.i44

if.then.i44:                                      ; preds = %count_rx_stats.exit
  %preorder_ctrl2.i.i = getelementptr inbounds %struct.recv_frame, ptr %call2, i32 0, i32 14
  %58 = ptrtoint ptr %preorder_ctrl2.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %preorder_ctrl2.i.i, align 4
  %amsdu.i.i = getelementptr inbounds %struct.recv_frame, ptr %call2, i32 0, i32 6, i32 6
  %60 = ptrtoint ptr %amsdu.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %amsdu.i.i, align 1
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %61, label %if.then.i44.if.end37.i.i_crit_edge [
    i8 0, label %if.then.i.i
    i8 1, label %if.then22.i.i
  ]

if.then.i44.if.end37.i.i_crit_edge:               ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i.i

if.then.i.i:                                      ; preds = %if.then.i44
  tail call fastcc void @wlanhdr_to_ethhdr(ptr noundef nonnull %call2) #8
  %qos.i.i = getelementptr inbounds %struct.recv_frame, ptr %call2, i32 0, i32 6, i32 7
  %63 = ptrtoint ptr %qos.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %qos.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %64)
  %cmp.not.i.i = icmp eq i8 %64, 1
  br i1 %cmp.not.i.i, label %if.end9.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  %bDriverStopped.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20
  %65 = ptrtoint ptr %bDriverStopped.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bDriverStopped.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool5.not.i.i = icmp eq i32 %66, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i, label %if.then4.i.i.if.then2.i45_crit_edge

if.then4.i.i.if.then2.i45_crit_edge:              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2.i45

land.lhs.true.i.i:                                ; preds = %if.then4.i.i
  %bSurpriseRemoved.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %67 = ptrtoint ptr %bSurpriseRemoved.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bSurpriseRemoved.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool6.not.i.i = icmp eq i32 %68, 0
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %land.lhs.true.i.i.if.then2.i45_crit_edge

land.lhs.true.i.i.if.then2.i45_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2.i45

if.then7.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i.i = tail call i32 @rtw_recv_indicatepkt(ptr noundef %padapter, ptr noundef nonnull %call2) #8
  br label %cleanup

if.end9.i.i:                                      ; preds = %if.then.i.i
  %enable.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %59, i32 0, i32 1
  %69 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %enable.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool10.not.i.i = icmp eq i8 %70, 0
  br i1 %tobool10.not.i.i, label %if.then11.i.i, label %if.end9.i.i.if.end37.i.i_crit_edge

if.end9.i.i.if.end37.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i.i

if.then11.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %seq_num.i.i = getelementptr inbounds %struct.recv_frame, ptr %call2, i32 0, i32 6, i32 11
  %71 = ptrtoint ptr %seq_num.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %seq_num.i.i, align 4
  %indicate_seq.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %59, i32 0, i32 2
  %73 = ptrtoint ptr %indicate_seq.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %indicate_seq.i.i, align 2
  %call12.i.i = tail call i32 @rtw_recv_indicatepkt(ptr noundef %padapter, ptr noundef nonnull %call2) #8
  %74 = ptrtoint ptr %indicate_seq.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %indicate_seq.i.i, align 2
  %76 = add i16 %75, 1
  %77 = and i16 %76, 4095
  store i16 %77, ptr %indicate_seq.i.i, align 2
  br label %cleanup

if.then22.i.i:                                    ; preds = %if.then.i44
  %enable23.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %59, i32 0, i32 1
  %78 = ptrtoint ptr %enable23.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %enable23.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool24.not.i.i = icmp eq i8 %79, 0
  br i1 %tobool24.not.i.i, label %if.then25.i.i, label %if.then22.i.i.if.end37.i.i_crit_edge

if.then22.i.i.if.end37.i.i_crit_edge:             ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i.i

if.then25.i.i:                                    ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %seq_num26.i.i = getelementptr inbounds %struct.recv_frame, ptr %call2, i32 0, i32 6, i32 11
  %80 = ptrtoint ptr %seq_num26.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %seq_num26.i.i, align 4
  %indicate_seq27.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %59, i32 0, i32 2
  %82 = ptrtoint ptr %indicate_seq27.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %indicate_seq27.i.i, align 2
  tail call fastcc void @amsdu_to_msdu(ptr noundef %padapter, ptr noundef nonnull %call2) #8
  %83 = ptrtoint ptr %indicate_seq27.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %indicate_seq27.i.i, align 2
  %85 = add i16 %84, 1
  %86 = and i16 %85, 4095
  store i16 %86, ptr %indicate_seq27.i.i, align 2
  br label %cleanup

if.end37.i.i:                                     ; preds = %if.then22.i.i.if.end37.i.i_crit_edge, %if.end9.i.i.if.end37.i.i_crit_edge, %if.then.i44.if.end37.i.i_crit_edge
  %lock.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %59, i32 0, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #8
  %seq_num38.i.i = getelementptr inbounds %struct.recv_frame, ptr %call2, i32 0, i32 6, i32 11
  %87 = ptrtoint ptr %seq_num38.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %seq_num38.i.i, align 4
  %wsize_b.i.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %59, i32 0, i32 4
  %89 = ptrtoint ptr %wsize_b.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %wsize_b.i.i.i, align 2
  %indicate_seq.i.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %59, i32 0, i32 2
  %91 = ptrtoint ptr %indicate_seq.i.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %indicate_seq.i.i.i, align 2
  %conv1.i.i.i = zext i8 %90 to i32
  %93 = zext i8 %90 to i16
  %94 = add nuw nsw i16 %93, 4095
  %95 = add i16 %94, %92
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %92)
  %cmp.i.i.i = icmp eq i16 %92, -1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end37.i.i.if.end.i.i.i_crit_edge

if.end37.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %indicate_seq.i.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %88, ptr %indicate_seq.i.i.i, align 2
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end37.i.i.if.end.i.i.i_crit_edge
  %conv7.i.i.i = zext i16 %88 to i32
  %97 = ptrtoint ptr %indicate_seq.i.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %indicate_seq.i.i.i, align 2
  %conv9.i.i.i = zext i16 %98 to i32
  %sub10.i.i.i = sub nsw i32 %conv7.i.i.i, %conv9.i.i.i
  %and11.i.i.i = and i32 %sub10.i.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i)
  %cmp12.not.i.i.i = icmp eq i32 %and11.i.i.i, 0
  br i1 %cmp12.not.i.i.i, label %if.end15.i.i.i, label %if.end.i.i.i._err_exit.i.i_crit_edge

if.end.i.i.i._err_exit.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_err_exit.i.i

if.end15.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %98, i16 %88)
  %cmp19.i.i.i = icmp eq i16 %98, %88
  br i1 %cmp19.i.i.i, label %if.then21.i.i.i, label %if.else.i.i.i

if.then21.i.i.i:                                  ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add24.i.i.i = add i16 %88, 1
  %and25.i.i.i = and i16 %add24.i.i.i, 4095
  br label %cleanup.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end15.i.i.i
  %conv28.i.i.i = zext i16 %95 to i32
  %sub30.i.i.i = sub nsw i32 %conv28.i.i.i, %conv7.i.i.i
  %and31.i.i.i = and i32 %sub30.i.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i.i)
  %cmp32.not.i.i.i = icmp eq i32 %and31.i.i.i, 0
  br i1 %cmp32.not.i.i.i, label %if.else.i.i.i.if.end42.i.i_crit_edge, label %if.then34.i.i.i

if.else.i.i.i.if.end42.i.i_crit_edge:             ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i.i

if.then34.i.i.i:                                  ; preds = %if.else.i.i.i
  %sub37.i.i.i = add nsw i32 %conv1.i.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub37.i.i.i, i32 %conv7.i.i.i)
  %cmp38.not.i.i.i = icmp sgt i32 %sub37.i.i.i, %conv7.i.i.i
  br i1 %cmp38.not.i.i.i, label %if.else47.i.i.i, label %if.then40.i.i.i

if.then40.i.i.i:                                  ; preds = %if.then34.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add42.i.i.i = add nuw nsw i32 %conv7.i.i.i, 1
  %sub44.i.i.i = sub nsw i32 %add42.i.i.i, %conv1.i.i.i
  %conv45.i.i.i = trunc i32 %sub44.i.i.i to i16
  br label %cleanup.sink.split.i.i.i

if.else47.i.i.i:                                  ; preds = %if.then34.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add50.neg.i.i.i = xor i32 %conv7.i.i.i, -1
  %sub51.i.i.i = add nsw i32 %conv1.i.i.i, %add50.neg.i.i.i
  %99 = trunc i32 %sub51.i.i.i to i16
  %conv54.i.i.i = sub i16 4096, %99
  br label %cleanup.sink.split.i.i.i

cleanup.sink.split.i.i.i:                         ; preds = %if.else47.i.i.i, %if.then40.i.i.i, %if.then21.i.i.i
  %and25.sink.i.i.i = phi i16 [ %and25.i.i.i, %if.then21.i.i.i ], [ %conv45.i.i.i, %if.then40.i.i.i ], [ %conv54.i.i.i, %if.else47.i.i.i ]
  %100 = ptrtoint ptr %indicate_seq.i.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %and25.sink.i.i.i, ptr %indicate_seq.i.i.i, align 2
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %cleanup.sink.split.i.i.i, %if.else.i.i.i.if.end42.i.i_crit_edge
  %pending_recvframe_queue.i.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %59, i32 0, i32 5
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %if.end42.i.i
  %plist.0.in.i.i.i = phi ptr [ %pending_recvframe_queue.i.i.i, %if.end42.i.i ], [ %plist.0.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %101 = ptrtoint ptr %plist.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %plist.0.i.i.i = load ptr, ptr %plist.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %pending_recvframe_queue.i.i.i, %plist.0.i.i.i
  br i1 %cmp.not.i.i.i, label %while.cond.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i

while.cond.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %seq_num.i.i.i = getelementptr inbounds %struct.recv_frame, ptr %plist.0.i.i.i, i32 0, i32 6, i32 11
  %102 = ptrtoint ptr %seq_num.i.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %seq_num.i.i.i, align 4
  %conv.i.i.i = zext i16 %103 to i32
  %104 = ptrtoint ptr %seq_num38.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %seq_num38.i.i, align 4
  %conv3.i.i.i = zext i16 %105 to i32
  %sub.i.i.i = sub nsw i32 %conv.i.i.i, %conv3.i.i.i
  %and.i.i.i = and i32 %sub.i.i.i, 2048
  %cmp4.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp4.not.i.i.i, label %if.else.i92.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i.i

if.else.i92.i.i:                                  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %103, i16 %105)
  %cmp11.i.i.i = icmp eq i16 %103, %105
  br i1 %cmp11.i.i.i, label %if.else.i92.i.i._err_exit.i.i_crit_edge, label %if.else.i92.i.i.while.end.i.i.i_crit_edge

if.else.i92.i.i.while.end.i.i.i_crit_edge:        ; preds = %if.else.i92.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i.i

if.else.i92.i.i._err_exit.i.i_crit_edge:          ; preds = %if.else.i92.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_err_exit.i.i

while.end.i.i.i:                                  ; preds = %if.else.i92.i.i.while.end.i.i.i_crit_edge, %while.cond.i.i.i.while.end.i.i.i_crit_edge
  %plist.035.i.i.i = phi ptr [ %plist.0.i.i.i, %if.else.i92.i.i.while.end.i.i.i_crit_edge ], [ %pending_recvframe_queue.i.i.i, %while.cond.i.i.i.while.end.i.i.i_crit_edge ]
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %call2) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %while.end.i.i.i.list_del_init.exit.i.i.i_crit_edge

while.end.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call2, i32 0, i32 1
  %106 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %108 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %call2, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev1.i.i.i.i.i.i, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %109, ptr %107, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %while.end.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %112 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %call2, ptr %call2, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call2, i32 0, i32 1
  %113 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call2, ptr %prev.i3.i.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %plist.035.i.i.i, i32 0, i32 1
  %114 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i29.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call2, ptr noundef %115, ptr noundef %plist.035.i.i.i) #8
  br i1 %call.i.i29.i.i.i, label %if.end.i.i30.i.i.i, label %list_del_init.exit.i.i.i.if.end46.i.i_crit_edge

list_del_init.exit.i.i.i.if.end46.i.i_crit_edge:  ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i.i

if.end.i.i30.i.i.i:                               ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call2, ptr %prev.i.i.i.i, align 4
  %117 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %plist.035.i.i.i, ptr %call2, align 4
  %118 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %prev.i3.i.i.i.i, align 4
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %call2, ptr %115, align 4
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.end.i.i30.i.i.i, %list_del_init.exit.i.i.i.if.end46.i.i_crit_edge
  %call47.i.i = tail call fastcc i32 @recv_indicatepkts_in_order(ptr noundef %padapter, ptr noundef %59, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %if.else51.i.i, label %if.then49.i.i

if.then49.i.i:                                    ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %reordering_ctrl_timer.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %59, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %120 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %120, 5
  %call.i.i.i = tail call i32 @mod_timer(ptr noundef %reordering_ctrl_timer.i.i, i32 noundef %add.i.i.i) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #8
  br label %cleanup

if.else51.i.i:                                    ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #8
  %reordering_ctrl_timer53.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %59, i32 0, i32 6
  %call.i94.i.i = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer53.i.i) #8
  br label %cleanup

_err_exit.i.i:                                    ; preds = %if.else.i92.i.i._err_exit.i.i_crit_edge, %if.end.i.i.i._err_exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #8
  br label %if.then2.i45

if.then2.i45:                                     ; preds = %_err_exit.i.i, %land.lhs.true.i.i.if.then2.i45_crit_edge, %if.then4.i.i.if.then2.i45_crit_edge
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20
  %121 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %bDriverStopped.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool3.not.i = icmp eq i32 %122, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i46, label %if.then2.i45.cleanup_crit_edge

if.then2.i45.cleanup_crit_edge:                   ; preds = %if.then2.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i46:                                ; preds = %if.then2.i45
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %123 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %bSurpriseRemoved.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool4.not.i = icmp eq i32 %124, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i46.if.then11_crit_edge, label %land.lhs.true.i46.cleanup_crit_edge

land.lhs.true.i46.cleanup_crit_edge:              ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i46.if.then11_crit_edge:            ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.else.i47:                                      ; preds = %count_rx_stats.exit
  tail call fastcc void @wlanhdr_to_ethhdr(ptr noundef nonnull %call2) #8
  %bDriverStopped11.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20
  %125 = ptrtoint ptr %bDriverStopped11.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %bDriverStopped11.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool12.not.i = icmp eq i32 %126, 0
  br i1 %tobool12.not.i, label %land.lhs.true13.i, label %if.else.i47.if.then11_crit_edge

if.else.i47.if.then11_crit_edge:                  ; preds = %if.else.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

land.lhs.true13.i:                                ; preds = %if.else.i47
  %bSurpriseRemoved14.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %127 = ptrtoint ptr %bSurpriseRemoved14.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %bSurpriseRemoved14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool15.not.i = icmp eq i32 %128, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %land.lhs.true13.i.if.then11_crit_edge

land.lhs.true13.i.if.then11_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then16.i:                                      ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i = tail call i32 @rtw_recv_indicatepkt(ptr noundef %padapter, ptr noundef nonnull %call2) #8
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true13.i.if.then11_crit_edge, %if.else.i47.if.then11_crit_edge, %land.lhs.true.i46.if.then11_crit_edge
  %call12 = tail call i32 @rtw_free_recvframe(ptr noundef nonnull %prframe, ptr noundef %free_recv_queue)
  br label %_recv_data_drop

_recv_data_drop:                                  ; preds = %if.then11, %portctrl.exit, %if.end._recv_data_drop_crit_edge, %decryptor.exit._recv_data_drop_crit_edge, %decryptor.exit.thread
  %ret.0 = phi i32 [ 0, %if.then11 ], [ 1, %if.end._recv_data_drop_crit_edge ], [ 0, %decryptor.exit._recv_data_drop_crit_edge ], [ 0, %portctrl.exit ], [ 0, %decryptor.exit.thread ]
  %rx_drop = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 11
  %129 = ptrtoint ptr %rx_drop to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %rx_drop, align 8
  %inc = add i64 %130, 1
  store i64 %inc, ptr %rx_drop, align 8
  br label %cleanup

cleanup:                                          ; preds = %_recv_data_drop, %if.then16.i, %land.lhs.true.i46.cleanup_crit_edge, %if.then2.i45.cleanup_crit_edge, %if.else51.i.i, %if.then49.i.i, %if.then25.i.i, %if.then11.i.i, %if.then7.i.i
  %retval.0 = phi i32 [ %ret.0, %_recv_data_drop ], [ 1, %if.then7.i.i ], [ 1, %if.then11.i.i ], [ 1, %if.then25.i.i ], [ 1, %if.then49.i.i ], [ 1, %if.else51.i.i ], [ 1, %if.then2.i45.cleanup_crit_edge ], [ 1, %land.lhs.true.i46.cleanup_crit_edge ], [ 1, %if.then16.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_led_control(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_wep_decrypt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_tkip_decrypt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_aes_decrypt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @wlanhdr_to_ethhdr(ptr noundef %precvframe) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %cmp.i = icmp eq ptr %precvframe, null
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %get_recvframe_data.exit.thread

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

get_recvframe_data.exit.thread:                   ; preds = %entry
  %rx_data.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 9
  %2 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_data.i, align 4
  %encrypt34 = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 17
  %4 = ptrtoint ptr %encrypt34 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %encrypt34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not35 = icmp eq i8 %5, 0
  br i1 %tobool.not35, label %get_recvframe_data.exit.thread.if.end_crit_edge, label %if.end.i6

get_recvframe_data.exit.thread.if.end_crit_edge:  ; preds = %get_recvframe_data.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i6:                                        ; preds = %get_recvframe_data.exit.thread
  %icv_len39 = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 19
  %6 = ptrtoint ptr %icv_len39 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %icv_len39, align 1
  %conv40 = zext i8 %7 to i32
  %rx_tail.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 10
  %8 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_tail.i, align 4
  %idx.neg.i = sub nsw i32 0, %conv40
  %add.ptr.i = getelementptr i8, ptr %9, i32 %idx.neg.i
  store ptr %add.ptr.i, ptr %rx_tail.i, align 4
  %10 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_data.i, align 4
  %cmp2.i = icmp ult ptr %add.ptr.i, %11
  br i1 %cmp2.i, label %if.then3.i, label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %rx_tail.i, align 4
  br label %if.end

if.end6.i:                                        ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #10
  %len.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 7
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %14, %conv40
  store i32 %sub.i, ptr %len.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end6.i, %if.then3.i, %get_recvframe_data.exit.thread.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i37 = phi ptr [ %3, %get_recvframe_data.exit.thread.if.end_crit_edge ], [ %3, %if.then3.i ], [ %3, %if.end6.i ], [ null, %entry.if.end_crit_edge ]
  %hdrlen = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 4
  %15 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hdrlen, align 1
  %conv3 = zext i8 %16 to i32
  %add.ptr = getelementptr i8, ptr %retval.0.i37, i32 %conv3
  %iv_len = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 18
  %17 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %iv_len, align 4
  %conv4 = zext i8 %18 to i32
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %conv4
  %add.ptr12 = getelementptr i8, ptr %add.ptr5, i32 6
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr5, ptr noundef nonnull dereferenceable(6) @rtw_rfc1042_header, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool14.not = icmp eq i32 %bcmp, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %bcmp1 = tail call i32 @bcmp(ptr noundef dereferenceable(2) %add.ptr12, ptr noundef nonnull dereferenceable(2) @SNAP_ETH_TYPE_IPX, i32 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1)
  %tobool16.not = icmp eq i32 %bcmp1, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true17

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true17:                                  ; preds = %land.lhs.true
  %bcmp3 = tail call i32 @bcmp(ptr noundef dereferenceable(2) %add.ptr12, ptr noundef nonnull dereferenceable(2) @SNAP_ETH_TYPE_APPLETALK_AARP, i32 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp3)
  %tobool19.not = icmp eq i32 %bcmp3, 0
  br i1 %tobool19.not, label %land.lhs.true17.if.end23_crit_edge, label %land.lhs.true17.if.end23.thread_crit_edge

land.lhs.true17.if.end23.thread_crit_edge:        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.thread

land.lhs.true17.if.end23_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true17.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %bcmp2 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr5, ptr noundef nonnull dereferenceable(6) @rtw_bridge_tunnel_header, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp2)
  %tobool21.not = icmp ne i32 %bcmp2, 0
  %spec.select62 = select i1 %tobool21.not, i32 0, i32 6
  br label %if.end23.thread

if.end23.thread:                                  ; preds = %if.end23, %land.lhs.true17.if.end23.thread_crit_edge
  %tobool29.not46 = phi i1 [ %tobool21.not, %if.end23 ], [ false, %land.lhs.true17.if.end23.thread_crit_edge ]
  %19 = phi i32 [ %spec.select62, %if.end23 ], [ 6, %land.lhs.true17.if.end23.thread_crit_edge ]
  %add48 = add nuw nsw i32 %conv4, %conv3
  %add30 = add nuw nsw i32 %add48, %19
  %len31 = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 7
  %20 = ptrtoint ptr %len31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len31, align 4
  %sub = sub i32 %21, %add30
  %conv32 = trunc i32 %sub to i16
  %add.ptr33 = getelementptr i8, ptr %retval.0.i37, i32 %add30
  %22 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %be_tmp.0.copyload = load i16, ptr %add.ptr33, align 1
  %eth_type34 = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 22
  %23 = ptrtoint ptr %eth_type34 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %be_tmp.0.copyload, ptr %eth_type34, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fw_state.i, align 4
  %26 = and i32 %25, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool36.not = icmp eq i32 %26, 0
  br i1 %tobool36.not, label %if.else46, label %if.then37

if.then37:                                        ; preds = %if.end23.thread
  %27 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -121, ptr %add.ptr33, align 1
  %add.ptr39 = getelementptr i8, ptr %add.ptr33, i32 1
  %28 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 18, ptr %add.ptr39, align 1
  %sub42 = add nsw i32 %add30, -36
  br i1 %cmp.i, label %if.then37.get_rxmem.exit_crit_edge, label %if.end.i12

if.then37.get_rxmem.exit_crit_edge:               ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_rxmem.exit

if.end.i12:                                       ; preds = %if.then37
  %rx_data.i8 = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 9
  %29 = ptrtoint ptr %rx_data.i8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_data.i8, align 4
  %add.ptr.i9 = getelementptr i8, ptr %30, i32 %sub42
  store ptr %add.ptr.i9, ptr %rx_data.i8, align 4
  %rx_tail.i10 = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 10
  %31 = ptrtoint ptr %rx_tail.i10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_tail.i10, align 4
  %cmp2.i11 = icmp ugt ptr %add.ptr.i9, %32
  br i1 %cmp2.i11, label %if.then3.i13, label %if.end6.i16

if.then3.i13:                                     ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %rx_data.i8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %rx_data.i8, align 4
  br label %if.end.i19

if.end6.i16:                                      ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %len31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len31, align 4
  %sub.i15 = sub i32 %35, %sub42
  store i32 %sub.i15, ptr %len31, align 4
  br label %if.end.i19

if.end.i19:                                       ; preds = %if.end6.i16, %if.then3.i13
  %retval.0.i17.ph = phi ptr [ %add.ptr.i9, %if.end6.i16 ], [ null, %if.then3.i13 ]
  %rx_head.i = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 8
  %36 = ptrtoint ptr %rx_head.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_head.i, align 4
  br label %get_rxmem.exit

get_rxmem.exit:                                   ; preds = %if.end.i19, %if.then37.get_rxmem.exit_crit_edge
  %retval.0.i1751 = phi ptr [ %retval.0.i17.ph, %if.end.i19 ], [ null, %if.then37.get_rxmem.exit_crit_edge ]
  %retval.0.i20 = phi ptr [ %37, %if.end.i19 ], [ null, %if.then37.get_rxmem.exit_crit_edge ]
  %38 = call ptr @memcpy(ptr %retval.0.i1751, ptr %retval.0.i20, i32 24)
  %add.ptr45 = getelementptr i8, ptr %retval.0.i1751, i32 24
  %dst52 = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 23
  %39 = call ptr @memcpy(ptr %add.ptr45, ptr %dst52, i32 6)
  %add.ptr5453 = getelementptr i8, ptr %retval.0.i1751, i32 30
  %src54 = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 24
  %40 = call ptr @memcpy(ptr %add.ptr5453, ptr %src54, i32 6)
  br i1 %tobool29.not46, label %get_rxmem.exit.if.then57_crit_edge, label %get_rxmem.exit.if.end59_crit_edge

get_rxmem.exit.if.end59_crit_edge:                ; preds = %get_rxmem.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

get_rxmem.exit.if.then57_crit_edge:               ; preds = %get_rxmem.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

if.else46:                                        ; preds = %if.end23.thread
  %sub47 = select i1 %tobool29.not46, i32 -14, i32 -12
  %add51 = add nsw i32 %sub47, %add30
  br i1 %cmp.i, label %if.end53, label %if.end.i26

if.end.i26:                                       ; preds = %if.else46
  %rx_data.i22 = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 9
  %41 = ptrtoint ptr %rx_data.i22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_data.i22, align 4
  %add.ptr.i23 = getelementptr i8, ptr %42, i32 %add51
  store ptr %add.ptr.i23, ptr %rx_data.i22, align 4
  %rx_tail.i24 = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 10
  %43 = ptrtoint ptr %rx_tail.i24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_tail.i24, align 4
  %cmp2.i25 = icmp ugt ptr %add.ptr.i23, %44
  br i1 %cmp2.i25, label %if.then3.i27, label %if.end6.i30

if.then3.i27:                                     ; preds = %if.end.i26
  %45 = ptrtoint ptr %rx_data.i22 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %rx_data.i22, align 4
  %dst56 = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 23
  %46 = call ptr @memcpy(ptr null, ptr %dst56, i32 6)
  %src57 = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 24
  %47 = call ptr @memcpy(ptr inttoptr (i32 6 to ptr), ptr %src57, i32 6)
  br i1 %tobool29.not46, label %if.then3.i27.if.then57_crit_edge, label %if.then3.i27.if.end59_crit_edge

if.then3.i27.if.end59_crit_edge:                  ; preds = %if.then3.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then3.i27.if.then57_crit_edge:                 ; preds = %if.then3.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

if.end6.i30:                                      ; preds = %if.end.i26
  %sub.i29 = sub i32 %21, %add51
  %48 = ptrtoint ptr %len31 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub.i29, ptr %len31, align 4
  %dst58 = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 23
  %49 = call ptr @memcpy(ptr %add.ptr.i23, ptr %dst58, i32 6)
  %add.ptr5459 = getelementptr i8, ptr %add.ptr.i23, i32 6
  %src60 = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 24
  %50 = call ptr @memcpy(ptr %add.ptr5459, ptr %src60, i32 6)
  br i1 %tobool29.not46, label %if.end6.i30.if.then57_crit_edge, label %if.end6.i30.if.end59_crit_edge

if.end6.i30.if.end59_crit_edge:                   ; preds = %if.end6.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end6.i30.if.then57_crit_edge:                  ; preds = %if.end6.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

if.end53:                                         ; preds = %if.else46
  %51 = call ptr @memcpy(ptr null, ptr inttoptr (i32 54 to ptr), i32 6)
  %52 = call ptr @memcpy(ptr inttoptr (i32 6 to ptr), ptr inttoptr (i32 60 to ptr), i32 6)
  br i1 %tobool29.not46, label %if.end53.if.then57_crit_edge, label %if.end53.if.end59_crit_edge

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end53.if.then57_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

if.then57:                                        ; preds = %if.end53.if.then57_crit_edge, %if.end6.i30.if.then57_crit_edge, %if.then3.i27.if.then57_crit_edge, %get_rxmem.exit.if.then57_crit_edge
  %ptr.055 = phi ptr [ %add.ptr45, %get_rxmem.exit.if.then57_crit_edge ], [ null, %if.end53.if.then57_crit_edge ], [ null, %if.then3.i27.if.then57_crit_edge ], [ %add.ptr.i23, %if.end6.i30.if.then57_crit_edge ]
  %add.ptr58 = getelementptr i8, ptr %ptr.055, i32 12
  %53 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %conv32, ptr %add.ptr58, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end53.if.end59_crit_edge, %if.end6.i30.if.end59_crit_edge, %if.then3.i27.if.end59_crit_edge, %get_rxmem.exit.if.end59_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_ch_set_search_ch(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_get_oper_ch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @GetHalDefVar8188EUsb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgt_dispatcher(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_beacon(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @issue_nulldata(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @issue_deauth(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xmit_delivery_enabled_frames(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @issue_qos_nulldata(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @_rtw_init_sta_recv_priv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 33, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @_rtw_init_sta_recv_priv.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 35, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @_rtw_init_recv_priv.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 47, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @_rtw_init_recv_priv.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 49, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @_rtw_init_recv_priv.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 50, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @_rtw_init_recv_priv.__key.8, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 51, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @_rtw_init_recv_priv.__key.10, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 88, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 246, i32 3}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rtw_free_uc_swdec_pending_queue._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @rtw_free_uc_swdec_pending_queue._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 602, i32 31}
!29 = !{ptr @sema_init.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 278, i32 6}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @recvframe_chkmic._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @recvframe_chkmic._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 309, i32 6}
!42 = !{ptr @recvframe_chkmic._entry.20, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @recvframe_chkmic._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @recvframe_chkmic._entry.23, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 311, i32 6}
!46 = !{ptr @recvframe_chkmic._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 1448, i32 4}
!49 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @amsdu_to_msdu._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @amsdu_to_msdu._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 1469, i32 5}
!54 = !{ptr @amsdu_to_msdu._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @amsdu_to_msdu._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 1477, i32 4}
!58 = !{ptr @amsdu_to_msdu._entry.30, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @amsdu_to_msdu._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @rtw_rfc1042_header, !61, !"rtw_rfc1042_header", i1 false, i1 false}
!61 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 22, i32 11}
!62 = !{ptr @rtw_bridge_tunnel_header, !63, !"rtw_bridge_tunnel_header", i1 false, i1 false}
!63 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 18, i32 11}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 1873, i32 4}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @recv_func._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @recv_func._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 342, i32 4}
!71 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @decryptor._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @decryptor._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @SNAP_ETH_TYPE_IPX, !75, !"SNAP_ETH_TYPE_IPX", i1 false, i1 false}
!75 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 14, i32 11}
!76 = !{ptr @SNAP_ETH_TYPE_APPLETALK_AARP, !77, !"SNAP_ETH_TYPE_APPLETALK_AARP", i1 false, i1 false}
!77 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 15, i32 11}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 1121, i32 3}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @validate_recv_frame._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @validate_recv_frame._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 1124, i32 4}
!85 = !{ptr @validate_recv_frame._entry.39, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @validate_recv_frame._entry_ptr.41, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @validate_recv_frame._entry.42, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 1126, i32 3}
!89 = !{ptr @validate_recv_frame._entry_ptr.43, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @validate_recv_frame._entry.44, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 1130, i32 4}
!92 = !{ptr @validate_recv_frame._entry_ptr.45, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @validate_recv_frame._entry.46, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 1133, i32 5}
!95 = !{ptr @validate_recv_frame._entry_ptr.47, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @validate_recv_frame._entry.48, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 1135, i32 4}
!98 = !{ptr @validate_recv_frame._entry_ptr.49, !97, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @validate_recv_frame._entry.50, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 1140, i32 4}
!101 = !{ptr @validate_recv_frame._entry_ptr.51, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @validate_recv_frame._entry.52, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 1143, i32 5}
!104 = !{ptr @validate_recv_frame._entry_ptr.53, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @validate_recv_frame._entry.54, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 1145, i32 4}
!107 = !{ptr @validate_recv_frame._entry_ptr.55, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 868, i32 4}
!110 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @validate_recv_ctrl_frame._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @validate_recv_ctrl_frame._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 909, i32 7}
!115 = !{ptr @validate_recv_ctrl_frame._entry.58, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @validate_recv_ctrl_frame._entry_ptr.60, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 914, i32 7}
!119 = !{ptr @validate_recv_ctrl_frame._entry.61, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @validate_recv_ctrl_frame._entry_ptr.63, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 692, i32 5}
!123 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @ap2sta_data_frame._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @ap2sta_data_frame._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 743, i32 5}
!128 = !{ptr @ap2sta_data_frame._entry.66, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @ap2sta_data_frame._entry_ptr.68, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 777, i32 4}
!132 = !{ptr @.str.70, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @sta2ap_data_frame._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @sta2ap_data_frame._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @sta2ap_data_frame._entry.71, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/staging/r8188eu/core/rtw_recv.c", i32 803, i32 3}
!137 = !{ptr @sta2ap_data_frame._entry_ptr.72, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{!"auto-init"}
