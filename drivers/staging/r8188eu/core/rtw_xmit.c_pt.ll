; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/core/rtw_xmit.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/core/rtw_xmit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.semaphore, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, i32, ptr, i8, i8, i8, i64, i64, i64, i64, i64, ptr, i8, [4 x i8], %struct.semaphore, i8, %struct.tasklet_struct, i32, i32, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i16, i32, %struct.mutex, %struct.submit_ctx }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.2, i32 }
%union.anon.2 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%struct.xmit_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i16, i16, i32, i32, ptr, i32, [8 x ptr], i32, [8 x i8], [8 x i32] }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.HT_caps_element = type { %union.anon.100 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i8, ptr }
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.io_priv = type { ptr, %struct.intf_hdl }
%struct.intf_hdl = type { ptr, ptr }
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
%struct.hw_xmit = type { ptr, i32 }
%struct.rtw_ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [6 x i8], i8, i16, [8 x i8], i8, [32 x i8], i16, [32 x i8], i8, i8, %struct.rssi_sta, i8, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i16 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.mic_data = type { i32, i32, i32, i32, i32, i32 }
%struct.pkt_file = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.anon.102 = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_snap_hdr = type { i8, i8, i8, [3 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.nat25_network_db_entry = type { ptr, ptr, %struct.atomic_t, [6 x i8], i32, [17 x i8] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@_rtw_init_sta_xmit_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&psta_xmitpriv->lock\00", [43 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pxmitpriv->lock\00", [47 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&((&pxmitpriv->be_pending)->lock)\00", [62 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&((&pxmitpriv->bk_pending)->lock)\00", [62 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&((&pxmitpriv->vi_pending)->lock)\00", [62 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&((&pxmitpriv->vo_pending)->lock)\00", [62 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&((&pxmitpriv->bm_pending)->lock)\00", [62 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"&((&pxmitpriv->free_xmit_queue)->lock)\00", [57 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"&((&pxmitpriv->free_xmitbuf_queue)->lock)\00", [54 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"&((&pxmitpriv->pending_xmitbuf_queue)->lock)\00", [51 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"&((&pxmitpriv->free_xmit_extbuf_queue)->lock)\00", [50 x i8] zeroinitializer }, align 32
@_rtw_init_xmit_priv.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&pxmitpriv->ack_tx_mutex\00", [39 x i8] zeroinitializer }, align 32
@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@qos_acm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.24, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016R8188EU: qos_acm(): invalid pattrib->priority: %d!!!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qos_acm\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/staging/r8188eu/core/rtw_xmit.c\00", [56 x i8] zeroinitializer }, align 32
@qos_acm._entry_ptr = internal global ptr @qos_acm._entry, section ".printk_index", align 4
@rtw_xmitframe_coalesce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.24, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016R8188EU: ==> %s buf_addr == NULL\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw_xmitframe_coalesce\00", [41 x i8] zeroinitializer }, align 32
@rtw_xmitframe_coalesce._entry_ptr = internal global ptr @rtw_xmitframe_coalesce._entry, section ".printk_index", align 4
@rtw_xmitframe_coalesce._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.24, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016R8188EU: rtw_xmitframe_coalesce: rtw_make_wlanhdr fail; drop pkt\0A\00", [60 x i8] zeroinitializer }, align 32
@rtw_xmitframe_coalesce._entry_ptr.29 = internal global ptr @rtw_xmitframe_coalesce._entry.27, section ".printk_index", align 4
@rtw_xmitframe_coalesce._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.24, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016R8188EU: xmitframe_addmic(padapter, pxmitframe) == _FAIL\0A\00", [36 x i8] zeroinitializer }, align 32
@rtw_xmitframe_coalesce._entry_ptr.32 = internal global ptr @rtw_xmitframe_coalesce._entry.30, section ".printk_index", align 4
@rtw_alloc_xmitbuf_ext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.24, i32 1137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016R8188EU: %s pxmitbuf->sctx is not NULL\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw_alloc_xmitbuf_ext\00", [42 x i8] zeroinitializer }, align 32
@rtw_alloc_xmitbuf_ext._entry_ptr = internal global ptr @rtw_alloc_xmitbuf_ext._entry, section ".printk_index", align 4
@rtw_alloc_xmitbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.35, ptr @.str.24, i32 1194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtw_alloc_xmitbuf\00", [46 x i8] zeroinitializer }, align 32
@rtw_alloc_xmitbuf._entry_ptr = internal global ptr @rtw_alloc_xmitbuf._entry, section ".printk_index", align 4
@rtw_free_xmitbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.36, ptr @.str.24, i32 1212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtw_free_xmitbuf\00", [47 x i8] zeroinitializer }, align 32
@rtw_free_xmitbuf._entry_ptr = internal global ptr @rtw_free_xmitbuf._entry, section ".printk_index", align 4
@rtw_xmit_classifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.24, i32 1482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016R8188EU: rtw_xmit_classifier: psta == NULL\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw_xmit_classifier\00", [44 x i8] zeroinitializer }, align 32
@rtw_xmit_classifier._entry_ptr = internal global ptr @rtw_xmit_classifier._entry, section ".printk_index", align 4
@rtw_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.24, i32 1728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016R8188EU: DBG_TX_DROP_FRAME %s no more pxmitframe\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtw_xmit\00", [23 x i8] zeroinitializer }, align 32
@rtw_xmit._entry_ptr = internal global ptr @rtw_xmit._entry, section ".printk_index", align 4
@rtw_xmit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rtw_sctx_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.24, i32 2153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016R8188EU: %s timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtw_sctx_wait\00", [18 x i8] zeroinitializer }, align 32
@rtw_sctx_wait._entry_ptr = internal global ptr @rtw_sctx_wait._entry, section ".printk_index", align 4
@rtw_sctx_done_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.24, i32 2183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016R8188EU: %s status:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtw_sctx_done_err\00", [46 x i8] zeroinitializer }, align 32
@rtw_sctx_done_err._entry_ptr = internal global ptr @rtw_sctx_done_err._entry, section ".printk_index", align 4
@rtw_ack_tx_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.24, i32 2208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016R8188EU: %s ack_tx not set\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw_ack_tx_done\00", [16 x i8] zeroinitializer }, align 32
@rtw_ack_tx_done._entry_ptr = internal global ptr @rtw_ack_tx_done._entry, section ".printk_index", align 4
@_init_txservq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&((&ptxservq->sta_pending)->lock)\00", [62 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rtw_br_client_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rtw_br_client_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.24, i32 1609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016R8188EU: TX DROP: skb_copy fail!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtw_br_client_tx\00", [47 x i8] zeroinitializer }, align 32
@rtw_br_client_tx._entry_ptr = internal global ptr @rtw_br_client_tx._entry, section ".printk_index", align 4
@rtw_br_client_tx._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.24, i32 1624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016R8188EU: %s(): skb_is_nonlinear!!\0A\00", [59 x i8] zeroinitializer }, align 32
@rtw_br_client_tx._entry_ptr.58 = internal global ptr @rtw_br_client_tx._entry.56, section ".printk_index", align 4
@rtw_br_client_tx._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.24, i32 1628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016R8188EU: TX DROP: skb_linearize fail!\0A\00", [55 x i8] zeroinitializer }, align 32
@rtw_br_client_tx._entry_ptr.61 = internal global ptr @rtw_br_client_tx._entry.59, section ".printk_index", align 4
@rtw_br_client_tx._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.24, i32 1635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016R8188EU: TX DROP: nat25_db_handle fail!\0A\00", [53 x i8] zeroinitializer }, align 32
@rtw_br_client_tx._entry_ptr.64 = internal global ptr @rtw_br_client_tx._entry.62, section ".printk_index", align 4
@rtw_br_client_tx._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.55, ptr @.str.24, i32 1658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016R8188EU: TX DROP: untransformed frame SA:%02X%02X%02X%02X%02X%02X!\0A\00", [58 x i8] zeroinitializer }, align 32
@rtw_br_client_tx._entry_ptr.67 = internal global ptr @rtw_br_client_tx._entry.65, section ".printk_index", align 4
@update_attrib.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.68, ptr @.str.69, ptr @.str.24, ptr @.str.70, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8188eu\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"update_attrib\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"send eapol packet\0A\00", [45 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@switch.table.rtw_get_ff_hwaddr = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 2, i32 3, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 4, i32 6], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 5]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 5]
@__sancov_gen_cov_switch_values.73 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.74 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.78 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 4, i64 9, i64 10]
@__sancov_gen_cov_switch_values.79 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.80 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34958]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 8, i64 67, i64 68]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 16, i64 2054, i64 34958]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34958]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34958]
@__sancov_gen_cov_switch_values.86 = internal global [10 x i64] [i64 8, i64 3, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.87 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.88 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.90 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.91 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.92 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.93 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.94 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.95 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.96 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.97 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.98 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 4, i64 9, i64 10]
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 30, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 51, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 60, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 61, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 62, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 63, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 64, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 66, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 108, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 109, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 150, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 199, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 375, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 898, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 909, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1006, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1137, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1194, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1212, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1482, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1728, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1733, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 2153, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 2183, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 2208, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 21, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 33, i32 31 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 34, i32 28 }
@___asan_gen_.286 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 35, i32 39 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 695, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 723, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1609, i32 6 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1624, i32 5 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1628, i32 6 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1635, i32 6 }
@___asan_gen_.324 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1657, i32 3 }
@___asan_gen_.337 = private constant [43 x i8] c"../drivers/staging/r8188eu/core/rtw_xmit.c\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 464, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 87, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant [31 x i8] c"switch.table.rtw_get_ff_hwaddr\00", align 1
@llvm.compiler.used = appending global [100 x ptr] [ptr @qos_acm._entry, ptr @qos_acm._entry_ptr, ptr @rtw_ack_tx_done._entry, ptr @rtw_ack_tx_done._entry_ptr, ptr @rtw_alloc_xmitbuf._entry, ptr @rtw_alloc_xmitbuf._entry_ptr, ptr @rtw_alloc_xmitbuf_ext._entry, ptr @rtw_alloc_xmitbuf_ext._entry_ptr, ptr @rtw_br_client_tx._entry, ptr @rtw_br_client_tx._entry.56, ptr @rtw_br_client_tx._entry.59, ptr @rtw_br_client_tx._entry.62, ptr @rtw_br_client_tx._entry.65, ptr @rtw_br_client_tx._entry_ptr, ptr @rtw_br_client_tx._entry_ptr.58, ptr @rtw_br_client_tx._entry_ptr.61, ptr @rtw_br_client_tx._entry_ptr.64, ptr @rtw_br_client_tx._entry_ptr.67, ptr @rtw_free_xmitbuf._entry, ptr @rtw_free_xmitbuf._entry_ptr, ptr @rtw_sctx_done_err._entry, ptr @rtw_sctx_done_err._entry_ptr, ptr @rtw_sctx_wait._entry, ptr @rtw_sctx_wait._entry_ptr, ptr @rtw_xmit._entry, ptr @rtw_xmit._entry_ptr, ptr @rtw_xmit_classifier._entry, ptr @rtw_xmit_classifier._entry_ptr, ptr @rtw_xmitframe_coalesce._entry, ptr @rtw_xmitframe_coalesce._entry.27, ptr @rtw_xmitframe_coalesce._entry.30, ptr @rtw_xmitframe_coalesce._entry_ptr, ptr @rtw_xmitframe_coalesce._entry_ptr.29, ptr @rtw_xmitframe_coalesce._entry_ptr.32, ptr @_rtw_init_sta_xmit_priv.__key, ptr @.str, ptr @_rtw_init_xmit_priv.__key, ptr @.str.1, ptr @_rtw_init_xmit_priv.__key.2, ptr @.str.3, ptr @_rtw_init_xmit_priv.__key.4, ptr @.str.5, ptr @_rtw_init_xmit_priv.__key.6, ptr @.str.7, ptr @_rtw_init_xmit_priv.__key.8, ptr @.str.9, ptr @_rtw_init_xmit_priv.__key.10, ptr @.str.11, ptr @_rtw_init_xmit_priv.__key.12, ptr @.str.13, ptr @_rtw_init_xmit_priv.__key.14, ptr @.str.15, ptr @_rtw_init_xmit_priv.__key.16, ptr @.str.17, ptr @_rtw_init_xmit_priv.__key.18, ptr @.str.19, ptr @_rtw_init_xmit_priv.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @_init_txservq.__key, ptr @.str.48, ptr @sema_init.__key, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @init_completion.__key, ptr @.str.71, ptr @switch.table.rtw_get_ff_hwaddr], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_sta_xmit_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_xmit_priv.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qos_acm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_xmitframe_coalesce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_xmitframe_coalesce._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_xmitframe_coalesce._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_alloc_xmitbuf_ext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_alloc_xmitbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_free_xmitbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_xmit_classifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_sctx_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_sctx_done_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ack_tx_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_init_txservq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_br_client_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_br_client_tx._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_br_client_tx._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_br_client_tx._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_br_client_tx._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_get_ff_hwaddr to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_init_sta_xmit_priv(ptr noundef %psta_xmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %psta_xmitpriv, i32 0, i32 356)
  tail call void @__raw_spin_lock_init(ptr noundef %psta_xmitpriv, ptr noundef nonnull @.str, ptr noundef nonnull @_rtw_init_sta_xmit_priv.__key, i16 noundef signext 3) #16
  %be_q = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 3
  %1 = ptrtoint ptr %be_q to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %be_q, ptr %be_q, align 4
  %prev.i.i = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %be_q, ptr %prev.i.i, align 4
  %sta_pending.i = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %sta_pending.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %sta_pending.i, ptr %sta_pending.i, align 4
  %prev.i7.i = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 3, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sta_pending.i, ptr %prev.i7.i, align 4
  %lock.i = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 3, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @_init_txservq.__key, i16 noundef signext 3) #16
  %qcnt.i = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %qcnt.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qcnt.i, align 4
  %bk_q = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 4
  %6 = ptrtoint ptr %bk_q to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %bk_q, ptr %bk_q, align 4
  %prev.i.i8 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 4, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bk_q, ptr %prev.i.i8, align 4
  %sta_pending.i9 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %sta_pending.i9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %sta_pending.i9, ptr %sta_pending.i9, align 4
  %prev.i7.i10 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 4, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i7.i10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sta_pending.i9, ptr %prev.i7.i10, align 4
  %lock.i11 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 4, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i11, ptr noundef nonnull @.str.48, ptr noundef nonnull @_init_txservq.__key, i16 noundef signext 3) #16
  %qcnt.i12 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %qcnt.i12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qcnt.i12, align 4
  %vi_q = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 5
  %11 = ptrtoint ptr %vi_q to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %vi_q, ptr %vi_q, align 4
  %prev.i.i13 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %vi_q, ptr %prev.i.i13, align 4
  %sta_pending.i14 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %sta_pending.i14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %sta_pending.i14, ptr %sta_pending.i14, align 4
  %prev.i7.i15 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 5, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i7.i15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sta_pending.i14, ptr %prev.i7.i15, align 4
  %lock.i16 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 5, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i16, ptr noundef nonnull @.str.48, ptr noundef nonnull @_init_txservq.__key, i16 noundef signext 3) #16
  %qcnt.i17 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %qcnt.i17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %qcnt.i17, align 4
  %vo_q = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 6
  %16 = ptrtoint ptr %vo_q to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %vo_q, ptr %vo_q, align 4
  %prev.i.i18 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 6, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %vo_q, ptr %prev.i.i18, align 4
  %sta_pending.i19 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %sta_pending.i19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %sta_pending.i19, ptr %sta_pending.i19, align 4
  %prev.i7.i20 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 6, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i7.i20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sta_pending.i19, ptr %prev.i7.i20, align 4
  %lock.i21 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 6, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i21, ptr noundef nonnull @.str.48, ptr noundef nonnull @_init_txservq.__key, i16 noundef signext 3) #16
  %qcnt.i22 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 6, i32 2
  %20 = ptrtoint ptr %qcnt.i22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %qcnt.i22, align 4
  %legacy_dz = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 7
  %21 = ptrtoint ptr %legacy_dz to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %legacy_dz, ptr %legacy_dz, align 4
  %prev.i = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %legacy_dz, ptr %prev.i, align 4
  %apsd = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 8
  %23 = ptrtoint ptr %apsd to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %apsd, ptr %apsd, align 4
  %prev.i23 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %prev.i23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %apsd, ptr %prev.i23, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_init_xmit_priv(ptr noundef %pxmitpriv, ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %pxmitpriv, ptr noundef nonnull @.str.1, ptr noundef nonnull @_rtw_init_xmit_priv.__key, i16 noundef signext 3) #16
  %terminate_xmitthread_sema = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 1
  %wait_list1.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %terminate_xmitthread_sema to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %terminate_xmitthread_sema, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 1, i32 0, i32 4
  %4 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 1, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.49, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 1, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 1, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 1, i32 0, i32 4, i32 5
  %8 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 14)
  %9 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 1, i32 2, i32 1
  %10 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %adapter = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 12
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %padapter, ptr %adapter, align 4
  %be_pending = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 2
  %12 = ptrtoint ptr %be_pending to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %be_pending, ptr %be_pending, align 4
  %prev.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 2, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %be_pending, ptr %prev.i, align 4
  %lock4 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 2, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock4, ptr noundef nonnull @.str.3, ptr noundef nonnull @_rtw_init_xmit_priv.__key.2, i16 noundef signext 3) #16
  %bk_pending = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 3
  %14 = ptrtoint ptr %bk_pending to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %bk_pending, ptr %bk_pending, align 4
  %prev.i278 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 3, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i278 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %bk_pending, ptr %prev.i278, align 4
  %lock14 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 3, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock14, ptr noundef nonnull @.str.5, ptr noundef nonnull @_rtw_init_xmit_priv.__key.4, i16 noundef signext 3) #16
  %vi_pending = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 4
  %16 = ptrtoint ptr %vi_pending to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %vi_pending, ptr %vi_pending, align 4
  %prev.i279 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i279 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %vi_pending, ptr %prev.i279, align 4
  %lock24 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 4, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock24, ptr noundef nonnull @.str.7, ptr noundef nonnull @_rtw_init_xmit_priv.__key.6, i16 noundef signext 3) #16
  %vo_pending = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 5
  %18 = ptrtoint ptr %vo_pending to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %vo_pending, ptr %vo_pending, align 4
  %prev.i280 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 5, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i280 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %vo_pending, ptr %prev.i280, align 4
  %lock34 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 5, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock34, ptr noundef nonnull @.str.9, ptr noundef nonnull @_rtw_init_xmit_priv.__key.8, i16 noundef signext 3) #16
  %bm_pending = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 6
  %20 = ptrtoint ptr %bm_pending to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %bm_pending, ptr %bm_pending, align 4
  %prev.i281 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 6, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i281 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %bm_pending, ptr %prev.i281, align 4
  %lock44 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 6, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock44, ptr noundef nonnull @.str.11, ptr noundef nonnull @_rtw_init_xmit_priv.__key.10, i16 noundef signext 3) #16
  %free_xmit_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 10
  %22 = ptrtoint ptr %free_xmit_queue to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %free_xmit_queue, ptr %free_xmit_queue, align 4
  %prev.i282 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 10, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i282 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %free_xmit_queue, ptr %prev.i282, align 4
  %lock54 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 10, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock54, ptr noundef nonnull @.str.13, ptr noundef nonnull @_rtw_init_xmit_priv.__key.12, i16 noundef signext 3) #16
  %call60 = tail call noalias ptr @vzalloc(i32 noundef 35844) #19
  %pallocated_frame_buf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 7
  %24 = ptrtoint ptr %pallocated_frame_buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call60, ptr %pallocated_frame_buf, align 8
  %tobool.not = icmp eq ptr %call60, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pxmit_frame_buf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 8
  %25 = ptrtoint ptr %pxmit_frame_buf to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %pxmit_frame_buf, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %26 = ptrtoint ptr %call60 to i32
  %sub = add i32 %26, 3
  %div275 = and i32 %sub, -4
  %27 = inttoptr i32 %div275 to ptr
  %pxmit_frame_buf63 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 8
  %28 = ptrtoint ptr %pxmit_frame_buf63 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %pxmit_frame_buf63, align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end
  %pxframe.0314 = phi ptr [ %27, %if.end ], [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ]
  %i.0313 = phi i32 [ 0, %if.end ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %29 = ptrtoint ptr %pxframe.0314 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %pxframe.0314, ptr %pxframe.0314, align 4
  %prev.i283 = getelementptr inbounds %struct.list_head, ptr %pxframe.0314, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i283 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pxframe.0314, ptr %prev.i283, align 4
  %padapter65 = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.0314, i32 0, i32 4
  %31 = ptrtoint ptr %padapter65 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %padapter, ptr %padapter65, align 4
  %frame_tag = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.0314, i32 0, i32 3
  %32 = ptrtoint ptr %frame_tag to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %frame_tag, align 4
  %pkt = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.0314, i32 0, i32 2
  %33 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %pkt, align 4
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.0314, i32 0, i32 5
  %34 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %buf_addr, align 4
  %pxmitbuf66 = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.0314, i32 0, i32 6
  %35 = ptrtoint ptr %pxmitbuf66 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %pxmitbuf66, align 4
  %36 = ptrtoint ptr %prev.i282 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i282, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pxframe.0314, ptr noundef %37, ptr noundef %free_xmit_queue) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %prev.i282 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %pxframe.0314, ptr %prev.i282, align 4
  %39 = ptrtoint ptr %pxframe.0314 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %free_xmit_queue, ptr %pxframe.0314, align 4
  %40 = ptrtoint ptr %prev.i283 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev.i283, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %pxframe.0314, ptr %37, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %incdec.ptr = getelementptr %struct.xmit_frame, ptr %pxframe.0314, i32 1
  %inc = add nuw nsw i32 %i.0313, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  %free_xmitframe_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 9
  %42 = ptrtoint ptr %free_xmitframe_cnt to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 256, ptr %free_xmitframe_cnt, align 8
  %frag_len = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 11
  %43 = ptrtoint ptr %frag_len to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2346, ptr %frag_len, align 8
  %free_xmitbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 31
  %44 = ptrtoint ptr %free_xmitbuf_queue to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %free_xmitbuf_queue, ptr %free_xmitbuf_queue, align 4
  %prev.i285 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 31, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i285 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %free_xmitbuf_queue, ptr %prev.i285, align 4
  %lock74 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 31, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock74, ptr noundef nonnull @.str.15, ptr noundef nonnull @_rtw_init_xmit_priv.__key.14, i16 noundef signext 3) #16
  %pending_xmitbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 32
  %46 = ptrtoint ptr %pending_xmitbuf_queue to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %pending_xmitbuf_queue, ptr %pending_xmitbuf_queue, align 4
  %prev.i286 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 32, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i286 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %pending_xmitbuf_queue, ptr %prev.i286, align 4
  %lock84 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 32, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock84, ptr noundef nonnull @.str.17, ptr noundef nonnull @_rtw_init_xmit_priv.__key.16, i16 noundef signext 3) #16
  %call90 = tail call noalias ptr @vzalloc(i32 noundef 484) #19
  %pallocated_xmitbuf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 33
  %48 = ptrtoint ptr %pallocated_xmitbuf to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call90, ptr %pallocated_xmitbuf, align 8
  %tobool92.not = icmp eq ptr %call90, null
  br i1 %tobool92.not, label %for.end.exit_crit_edge, label %if.end94

for.end.exit_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end94:                                         ; preds = %for.end
  %49 = ptrtoint ptr %call90 to i32
  %sub97 = add i32 %49, 3
  %div98276 = and i32 %sub97, -4
  %50 = inttoptr i32 %div98276 to ptr
  %pxmitbuf100 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 34
  %51 = ptrtoint ptr %pxmitbuf100 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %pxmitbuf100, align 4
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %50, align 4
  %prev.i287 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i287 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev.i287, align 4
  %priv_data = getelementptr inbounds %struct.xmit_buf, ptr %50, i32 0, i32 4
  %54 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %priv_data, align 4
  %padapter106 = getelementptr inbounds %struct.xmit_buf, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %padapter106 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %padapter, ptr %padapter106, align 4
  %ext_tag = getelementptr inbounds %struct.xmit_buf, ptr %50, i32 0, i32 5
  %56 = ptrtoint ptr %ext_tag to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %ext_tag, align 4
  %call107 = tail call i32 @rtw_os_xmit_resource_alloc(ptr noundef %padapter, ptr noundef %50, i32 noundef 20484) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp eq i32 %call107, 0
  br i1 %cmp108, label %if.then109, label %if.end94.if.end114_crit_edge

if.end94.if.end114_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114

if.then109:                                       ; preds = %if.end94
  tail call void @msleep(i32 noundef 10) #16
  %call110 = tail call i32 @rtw_os_xmit_resource_alloc(ptr noundef %padapter, ptr noundef %50, i32 noundef 20484) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp eq i32 %call110, 0
  br i1 %cmp111, label %if.then109.exit_crit_edge, label %if.then109.if.end114_crit_edge

if.then109.if.end114_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114

if.then109.exit_crit_edge:                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end114:                                        ; preds = %if.then109.if.end114_crit_edge, %if.end94.if.end114_crit_edge
  %flags = getelementptr inbounds %struct.xmit_buf, ptr %50, i32 0, i32 6
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags, align 2
  %58 = ptrtoint ptr %prev.i285 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i285, align 4
  %call.i.i289 = tail call zeroext i1 @__list_add_valid(ptr noundef %50, ptr noundef %59, ptr noundef %free_xmitbuf_queue) #16
  br i1 %call.i.i289, label %if.end.i.i291, label %if.end114.list_add_tail.exit292_crit_edge

if.end114.list_add_tail.exit292_crit_edge:        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit292

if.end.i.i291:                                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #18
  %60 = ptrtoint ptr %prev.i285 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %50, ptr %prev.i285, align 4
  %61 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %free_xmitbuf_queue, ptr %50, align 4
  %62 = ptrtoint ptr %prev.i287 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev.i287, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %50, ptr %59, align 4
  br label %list_add_tail.exit292

list_add_tail.exit292:                            ; preds = %if.end.i.i291, %if.end114.list_add_tail.exit292_crit_edge
  %incdec.ptr118 = getelementptr %struct.xmit_buf, ptr %50, i32 1
  %64 = ptrtoint ptr %incdec.ptr118 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %incdec.ptr118, ptr %incdec.ptr118, align 4
  %prev.i287.1 = getelementptr %struct.xmit_buf, ptr %50, i32 1, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i287.1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %incdec.ptr118, ptr %prev.i287.1, align 4
  %priv_data.1 = getelementptr %struct.xmit_buf, ptr %50, i32 1, i32 4
  %66 = ptrtoint ptr %priv_data.1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %priv_data.1, align 4
  %padapter106.1 = getelementptr %struct.xmit_buf, ptr %50, i32 1, i32 1
  %67 = ptrtoint ptr %padapter106.1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %padapter, ptr %padapter106.1, align 4
  %ext_tag.1 = getelementptr %struct.xmit_buf, ptr %50, i32 1, i32 5
  %68 = ptrtoint ptr %ext_tag.1 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %ext_tag.1, align 4
  %call107.1 = tail call i32 @rtw_os_xmit_resource_alloc(ptr noundef %padapter, ptr noundef %incdec.ptr118, i32 noundef 20484) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.1)
  %cmp108.1 = icmp eq i32 %call107.1, 0
  br i1 %cmp108.1, label %if.then109.1, label %list_add_tail.exit292.if.end114.1_crit_edge

list_add_tail.exit292.if.end114.1_crit_edge:      ; preds = %list_add_tail.exit292
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114.1

if.then109.1:                                     ; preds = %list_add_tail.exit292
  tail call void @msleep(i32 noundef 10) #16
  %call110.1 = tail call i32 @rtw_os_xmit_resource_alloc(ptr noundef %padapter, ptr noundef %incdec.ptr118, i32 noundef 20484) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.1)
  %cmp111.1 = icmp eq i32 %call110.1, 0
  br i1 %cmp111.1, label %if.then109.1.exit_crit_edge, label %if.then109.1.if.end114.1_crit_edge

if.then109.1.if.end114.1_crit_edge:               ; preds = %if.then109.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114.1

if.then109.1.exit_crit_edge:                      ; preds = %if.then109.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end114.1:                                      ; preds = %if.then109.1.if.end114.1_crit_edge, %list_add_tail.exit292.if.end114.1_crit_edge
  %flags.1 = getelementptr %struct.xmit_buf, ptr %50, i32 1, i32 6
  %69 = ptrtoint ptr %flags.1 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %flags.1, align 2
  %70 = ptrtoint ptr %prev.i285 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i285, align 4
  %call.i.i289.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %incdec.ptr118, ptr noundef %71, ptr noundef %free_xmitbuf_queue) #16
  br i1 %call.i.i289.1, label %if.end.i.i291.1, label %if.end114.1.list_add_tail.exit292.1_crit_edge

if.end114.1.list_add_tail.exit292.1_crit_edge:    ; preds = %if.end114.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit292.1

if.end.i.i291.1:                                  ; preds = %if.end114.1
  call void @__sanitizer_cov_trace_pc() #18
  %72 = ptrtoint ptr %prev.i285 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %incdec.ptr118, ptr %prev.i285, align 4
  %73 = ptrtoint ptr %incdec.ptr118 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %free_xmitbuf_queue, ptr %incdec.ptr118, align 4
  %74 = ptrtoint ptr %prev.i287.1 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev.i287.1, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %incdec.ptr118, ptr %71, align 4
  br label %list_add_tail.exit292.1

list_add_tail.exit292.1:                          ; preds = %if.end.i.i291.1, %if.end114.1.list_add_tail.exit292.1_crit_edge
  %incdec.ptr118.1 = getelementptr %struct.xmit_buf, ptr %50, i32 2
  %76 = ptrtoint ptr %incdec.ptr118.1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %incdec.ptr118.1, ptr %incdec.ptr118.1, align 4
  %prev.i287.2 = getelementptr %struct.xmit_buf, ptr %50, i32 2, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i287.2 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %incdec.ptr118.1, ptr %prev.i287.2, align 4
  %priv_data.2 = getelementptr %struct.xmit_buf, ptr %50, i32 2, i32 4
  %78 = ptrtoint ptr %priv_data.2 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %priv_data.2, align 4
  %padapter106.2 = getelementptr %struct.xmit_buf, ptr %50, i32 2, i32 1
  %79 = ptrtoint ptr %padapter106.2 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %padapter, ptr %padapter106.2, align 4
  %ext_tag.2 = getelementptr %struct.xmit_buf, ptr %50, i32 2, i32 5
  %80 = ptrtoint ptr %ext_tag.2 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %ext_tag.2, align 4
  %call107.2 = tail call i32 @rtw_os_xmit_resource_alloc(ptr noundef %padapter, ptr noundef %incdec.ptr118.1, i32 noundef 20484) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.2)
  %cmp108.2 = icmp eq i32 %call107.2, 0
  br i1 %cmp108.2, label %if.then109.2, label %list_add_tail.exit292.1.if.end114.2_crit_edge

list_add_tail.exit292.1.if.end114.2_crit_edge:    ; preds = %list_add_tail.exit292.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114.2

if.then109.2:                                     ; preds = %list_add_tail.exit292.1
  tail call void @msleep(i32 noundef 10) #16
  %call110.2 = tail call i32 @rtw_os_xmit_resource_alloc(ptr noundef %padapter, ptr noundef %incdec.ptr118.1, i32 noundef 20484) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.2)
  %cmp111.2 = icmp eq i32 %call110.2, 0
  br i1 %cmp111.2, label %if.then109.2.exit_crit_edge, label %if.then109.2.if.end114.2_crit_edge

if.then109.2.if.end114.2_crit_edge:               ; preds = %if.then109.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114.2

if.then109.2.exit_crit_edge:                      ; preds = %if.then109.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end114.2:                                      ; preds = %if.then109.2.if.end114.2_crit_edge, %list_add_tail.exit292.1.if.end114.2_crit_edge
  %flags.2 = getelementptr %struct.xmit_buf, ptr %50, i32 2, i32 6
  %81 = ptrtoint ptr %flags.2 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %flags.2, align 2
  %82 = ptrtoint ptr %prev.i285 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i285, align 4
  %call.i.i289.2 = tail call zeroext i1 @__list_add_valid(ptr noundef %incdec.ptr118.1, ptr noundef %83, ptr noundef %free_xmitbuf_queue) #16
  br i1 %call.i.i289.2, label %if.end.i.i291.2, label %if.end114.2.list_add_tail.exit292.2_crit_edge

if.end114.2.list_add_tail.exit292.2_crit_edge:    ; preds = %if.end114.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit292.2

if.end.i.i291.2:                                  ; preds = %if.end114.2
  call void @__sanitizer_cov_trace_pc() #18
  %84 = ptrtoint ptr %prev.i285 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %incdec.ptr118.1, ptr %prev.i285, align 4
  %85 = ptrtoint ptr %incdec.ptr118.1 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %free_xmitbuf_queue, ptr %incdec.ptr118.1, align 4
  %86 = ptrtoint ptr %prev.i287.2 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev.i287.2, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %incdec.ptr118.1, ptr %83, align 4
  br label %list_add_tail.exit292.2

list_add_tail.exit292.2:                          ; preds = %if.end.i.i291.2, %if.end114.2.list_add_tail.exit292.2_crit_edge
  %incdec.ptr118.2 = getelementptr %struct.xmit_buf, ptr %50, i32 3
  %88 = ptrtoint ptr %incdec.ptr118.2 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %incdec.ptr118.2, ptr %incdec.ptr118.2, align 4
  %prev.i287.3 = getelementptr %struct.xmit_buf, ptr %50, i32 3, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i287.3 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %incdec.ptr118.2, ptr %prev.i287.3, align 4
  %priv_data.3 = getelementptr %struct.xmit_buf, ptr %50, i32 3, i32 4
  %90 = ptrtoint ptr %priv_data.3 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %priv_data.3, align 4
  %padapter106.3 = getelementptr %struct.xmit_buf, ptr %50, i32 3, i32 1
  %91 = ptrtoint ptr %padapter106.3 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %padapter, ptr %padapter106.3, align 4
  %ext_tag.3 = getelementptr %struct.xmit_buf, ptr %50, i32 3, i32 5
  %92 = ptrtoint ptr %ext_tag.3 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %ext_tag.3, align 4
  %call107.3 = tail call i32 @rtw_os_xmit_resource_alloc(ptr noundef %padapter, ptr noundef %incdec.ptr118.2, i32 noundef 20484) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.3)
  %cmp108.3 = icmp eq i32 %call107.3, 0
  br i1 %cmp108.3, label %if.then109.3, label %list_add_tail.exit292.2.if.end114.3_crit_edge

list_add_tail.exit292.2.if.end114.3_crit_edge:    ; preds = %list_add_tail.exit292.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114.3

if.then109.3:                                     ; preds = %list_add_tail.exit292.2
  tail call void @msleep(i32 noundef 10) #16
  %call110.3 = tail call i32 @rtw_os_xmit_resource_alloc(ptr noundef %padapter, ptr noundef %incdec.ptr118.2, i32 noundef 20484) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.3)
  %cmp111.3 = icmp eq i32 %call110.3, 0
  br i1 %cmp111.3, label %if.then109.3.exit_crit_edge, label %if.then109.3.if.end114.3_crit_edge

if.then109.3.if.end114.3_crit_edge:               ; preds = %if.then109.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114.3

if.then109.3.exit_crit_edge:                      ; preds = %if.then109.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end114.3:                                      ; preds = %if.then109.3.if.end114.3_crit_edge, %list_add_tail.exit292.2.if.end114.3_crit_edge
  %flags.3 = getelementptr %struct.xmit_buf, ptr %50, i32 3, i32 6
  %93 = ptrtoint ptr %flags.3 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %flags.3, align 2
  %94 = ptrtoint ptr %prev.i285 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prev.i285, align 4
  %call.i.i289.3 = tail call zeroext i1 @__list_add_valid(ptr noundef %incdec.ptr118.2, ptr noundef %95, ptr noundef %free_xmitbuf_queue) #16
  br i1 %call.i.i289.3, label %if.end.i.i291.3, label %if.end114.3.list_add_tail.exit292.3_crit_edge

if.end114.3.list_add_tail.exit292.3_crit_edge:    ; preds = %if.end114.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit292.3

if.end.i.i291.3:                                  ; preds = %if.end114.3
  call void @__sanitizer_cov_trace_pc() #18
  %96 = ptrtoint ptr %prev.i285 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %incdec.ptr118.2, ptr %prev.i285, align 4
  %97 = ptrtoint ptr %incdec.ptr118.2 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %free_xmitbuf_queue, ptr %incdec.ptr118.2, align 4
  %98 = ptrtoint ptr %prev.i287.3 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %95, ptr %prev.i287.3, align 4
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %incdec.ptr118.2, ptr %95, align 4
  br label %list_add_tail.exit292.3

list_add_tail.exit292.3:                          ; preds = %if.end.i.i291.3, %if.end114.3.list_add_tail.exit292.3_crit_edge
  %free_xmitbuf_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 35
  %100 = ptrtoint ptr %free_xmitbuf_cnt to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 4, ptr %free_xmitbuf_cnt, align 8
  %free_xmit_extbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36
  %101 = ptrtoint ptr %free_xmit_extbuf_queue to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %free_xmit_extbuf_queue, ptr %free_xmit_extbuf_queue, align 4
  %prev.i293 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36, i32 0, i32 1
  %102 = ptrtoint ptr %prev.i293 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %free_xmit_extbuf_queue, ptr %prev.i293, align 4
  %lock126 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock126, ptr noundef nonnull @.str.19, ptr noundef nonnull @_rtw_init_xmit_priv.__key.18, i16 noundef signext 3) #16
  %call134 = tail call noalias ptr @vzalloc(i32 noundef 3844) #19
  %pallocated_xmit_extbuf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 37
  %103 = ptrtoint ptr %pallocated_xmit_extbuf to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call134, ptr %pallocated_xmit_extbuf, align 8
  %tobool136.not = icmp eq ptr %call134, null
  br i1 %tobool136.not, label %list_add_tail.exit292.3.exit_crit_edge, label %if.end138

list_add_tail.exit292.3.exit_crit_edge:           ; preds = %list_add_tail.exit292.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end138:                                        ; preds = %list_add_tail.exit292.3
  %104 = ptrtoint ptr %call134 to i32
  %sub141 = add i32 %104, 3
  %div142277 = and i32 %sub141, -4
  %105 = inttoptr i32 %div142277 to ptr
  %pxmit_extbuf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 38
  %106 = ptrtoint ptr %pxmit_extbuf to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %pxmit_extbuf, align 4
  br label %for.body147

for.body147:                                      ; preds = %list_add_tail.exit299.for.body147_crit_edge, %if.end138
  %pxmitbuf.1320 = phi ptr [ %105, %if.end138 ], [ %incdec.ptr160, %list_add_tail.exit299.for.body147_crit_edge ]
  %i.2319 = phi i32 [ 0, %if.end138 ], [ %inc162, %list_add_tail.exit299.for.body147_crit_edge ]
  %107 = ptrtoint ptr %pxmitbuf.1320 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %pxmitbuf.1320, ptr %pxmitbuf.1320, align 4
  %prev.i294 = getelementptr inbounds %struct.list_head, ptr %pxmitbuf.1320, i32 0, i32 1
  %108 = ptrtoint ptr %prev.i294 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %pxmitbuf.1320, ptr %prev.i294, align 4
  %priv_data149 = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.1320, i32 0, i32 4
  %109 = ptrtoint ptr %priv_data149 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %priv_data149, align 4
  %padapter150 = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.1320, i32 0, i32 1
  %110 = ptrtoint ptr %padapter150 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %padapter, ptr %padapter150, align 4
  %ext_tag151 = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.1320, i32 0, i32 5
  %111 = ptrtoint ptr %ext_tag151 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 1, ptr %ext_tag151, align 4
  %call153 = tail call i32 @rtw_os_xmit_resource_alloc(ptr noundef %padapter, ptr noundef %pxmitbuf.1320, i32 noundef 1540) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %cmp154 = icmp eq i32 %call153, 0
  br i1 %cmp154, label %for.body147.exit_crit_edge, label %if.end156

for.body147.exit_crit_edge:                       ; preds = %for.body147
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end156:                                        ; preds = %for.body147
  %112 = ptrtoint ptr %prev.i293 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i293, align 4
  %call.i.i296 = tail call zeroext i1 @__list_add_valid(ptr noundef %pxmitbuf.1320, ptr noundef %113, ptr noundef %free_xmit_extbuf_queue) #16
  br i1 %call.i.i296, label %if.end.i.i298, label %if.end156.list_add_tail.exit299_crit_edge

if.end156.list_add_tail.exit299_crit_edge:        ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit299

if.end.i.i298:                                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #18
  %114 = ptrtoint ptr %prev.i293 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %pxmitbuf.1320, ptr %prev.i293, align 4
  %115 = ptrtoint ptr %pxmitbuf.1320 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %free_xmit_extbuf_queue, ptr %pxmitbuf.1320, align 4
  %116 = ptrtoint ptr %prev.i294 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev.i294, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %pxmitbuf.1320, ptr %113, align 4
  br label %list_add_tail.exit299

list_add_tail.exit299:                            ; preds = %if.end.i.i298, %if.end156.list_add_tail.exit299_crit_edge
  %incdec.ptr160 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.1320, i32 1
  %inc162 = add nuw nsw i32 %i.2319, 1
  %exitcond326.not = icmp eq i32 %inc162, 32
  br i1 %exitcond326.not, label %for.end163, label %list_add_tail.exit299.for.body147_crit_edge

list_add_tail.exit299.for.body147_crit_edge:      ; preds = %list_add_tail.exit299
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body147

for.end163:                                       ; preds = %list_add_tail.exit299
  %free_xmit_extbuf_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 39
  %118 = ptrtoint ptr %free_xmit_extbuf_cnt to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 32, ptr %free_xmit_extbuf_cnt, align 8
  %hwxmit_entry.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 22
  %119 = ptrtoint ptr %hwxmit_entry.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 4, ptr %hwxmit_entry.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %120 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %120, i32 noundef 3520, i32 noundef 32) #20
  %hwxmits2.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 21
  %121 = ptrtoint ptr %hwxmits2.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call7.i.i.i, ptr %hwxmits2.i, align 8
  %122 = ptrtoint ptr %hwxmit_entry.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %hwxmit_entry.i, align 4
  %124 = zext i8 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values)
  switch i8 %123, label %for.end163.rtw_alloc_hwxmits.exit_crit_edge [
    i8 5, label %if.then.i
    i8 4, label %if.then19.i
  ]

for.end163.rtw_alloc_hwxmits.exit_crit_edge:      ; preds = %for.end163
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_alloc_hwxmits.exit

if.then.i:                                        ; preds = %for.end163
  call void @__sanitizer_cov_trace_pc() #18
  %bm_pending.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 6
  %125 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %bm_pending.i, ptr %call7.i.i.i, align 8
  %vo_pending.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 5
  %arrayidx7.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 1
  %126 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %vo_pending.i, ptr %arrayidx7.i, align 8
  %vi_pending.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 4
  %arrayidx9.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 2
  %127 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %vi_pending.i, ptr %arrayidx9.i, align 8
  %bk_pending.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 3
  %arrayidx11.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 3
  %128 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %bk_pending.i, ptr %arrayidx11.i, align 8
  %be_pending.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 2
  br label %if.end33.sink.split.i

if.then19.i:                                      ; preds = %for.end163
  call void @__sanitizer_cov_trace_pc() #18
  %vo_pending20.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 5
  %129 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %vo_pending20.i, ptr %call7.i.i.i, align 8
  %vi_pending23.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 4
  %arrayidx24.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 1
  %130 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %vi_pending23.i, ptr %arrayidx24.i, align 8
  %be_pending26.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 2
  %arrayidx27.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 2
  %131 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %be_pending26.i, ptr %arrayidx27.i, align 8
  %bk_pending29.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 3
  br label %if.end33.sink.split.i

if.end33.sink.split.i:                            ; preds = %if.then19.i, %if.then.i
  %.sink.i = phi i32 [ 3, %if.then19.i ], [ 4, %if.then.i ]
  %bk_pending29.sink.i = phi ptr [ %bk_pending29.i, %if.then19.i ], [ %be_pending.i, %if.then.i ]
  %arrayidx30.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 %.sink.i
  %132 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %bk_pending29.sink.i, ptr %arrayidx30.i, align 8
  br label %rtw_alloc_hwxmits.exit

rtw_alloc_hwxmits.exit:                           ; preds = %if.end33.sink.split.i, %for.end163.rtw_alloc_hwxmits.exit_crit_edge
  %hwxmit_entry = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 22
  %133 = ptrtoint ptr %hwxmit_entry to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %hwxmit_entry, align 4
  %conv = zext i8 %134 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %cmp4.i.not = icmp eq i8 %134, 0
  br i1 %cmp4.i.not, label %rtw_alloc_hwxmits.exit.rtw_init_hwxmits.exit_crit_edge, label %for.body.i.preheader

rtw_alloc_hwxmits.exit.rtw_init_hwxmits.exit_crit_edge: ; preds = %rtw_alloc_hwxmits.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_init_hwxmits.exit

for.body.i.preheader:                             ; preds = %rtw_alloc_hwxmits.exit
  %hwxmits = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 21
  %135 = ptrtoint ptr %hwxmits to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hwxmits, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %phwxmit.addr.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %136, %for.body.i.preheader ]
  %accnt.i = getelementptr inbounds %struct.hw_xmit, ptr %phwxmit.addr.05.i, i32 0, i32 1
  %137 = ptrtoint ptr %accnt.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %accnt.i, align 4
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %incdec.ptr.i = getelementptr %struct.hw_xmit, ptr %phwxmit.addr.05.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv
  br i1 %exitcond.not.i, label %for.body.i.rtw_init_hwxmits.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.rtw_init_hwxmits.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_init_hwxmits.exit

rtw_init_hwxmits.exit:                            ; preds = %for.body.i.rtw_init_hwxmits.exit_crit_edge, %rtw_alloc_hwxmits.exit.rtw_init_hwxmits.exit_crit_edge
  %arrayidx = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 23, i32 0
  %138 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %arrayidx, align 1
  %arrayidx.1 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 23, i32 1
  %139 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %arrayidx.1, align 1
  %arrayidx.2 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 23, i32 2
  %140 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 2, ptr %arrayidx.2, align 1
  %arrayidx.3 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 23, i32 3
  %141 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 3, ptr %arrayidx.3, align 1
  %txirp_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 25
  %142 = ptrtoint ptr %txirp_cnt to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %txirp_cnt, align 4
  %tx_retevt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 24
  %wait_list1.i300 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 24, i32 2
  %143 = ptrtoint ptr %tx_retevt to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %tx_retevt, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i301 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 24, i32 0, i32 1
  %144 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i301 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i301, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i302 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 24, i32 0, i32 2
  %145 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i302 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i302, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i303 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 24, i32 0, i32 3
  %146 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i303 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i303, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i304 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 24, i32 0, i32 4
  %147 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i304, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i305 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 24, i32 0, i32 4, i32 2
  %148 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i305 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @.str.49, ptr %.compoundliteral.sroa.6.0..sroa_idx.i305, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i306 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 24, i32 0, i32 4, i32 3
  %149 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i306 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i306, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i307 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 24, i32 0, i32 4, i32 4
  %150 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i307 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i307, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i308 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 24, i32 0, i32 4, i32 5
  %151 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i308, i32 0, i32 14)
  %152 = ptrtoint ptr %wait_list1.i300 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %wait_list1.i300, ptr %wait_list1.i300, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i309 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 24, i32 2, i32 1
  %153 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i309 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %wait_list1.i300, ptr %.compoundliteral.sroa.10.0..sroa_idx.i309, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i304, ptr noundef nonnull @.str.50, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %beq_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 27
  %ack_tx = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 41
  %154 = ptrtoint ptr %ack_tx to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %ack_tx, align 8
  %ack_tx_mutex = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 42
  %155 = call ptr @memset(ptr %beq_cnt, i32 0, i32 16)
  tail call void @__mutex_init(ptr noundef %ack_tx_mutex, ptr noundef nonnull @.str.21, ptr noundef nonnull @_rtw_init_xmit_priv.__key.20) #16
  %ack_tx_ops = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 43
  %timeout_ms1.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 43, i32 1
  %156 = ptrtoint ptr %timeout_ms1.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %timeout_ms1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %157 = load volatile i32, ptr @jiffies, align 128
  %158 = ptrtoint ptr %ack_tx_ops to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %ack_tx_ops, align 4
  %done.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 43, i32 3
  %159 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 43, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.71, ptr noundef nonnull @init_completion.__key) #16
  %status.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 43, i32 2
  %160 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 -1, ptr %status.i, align 4
  %call175 = tail call i32 @rtl8188eu_init_xmit_priv(ptr noundef %padapter) #16
  br label %exit

exit:                                             ; preds = %rtw_init_hwxmits.exit, %for.body147.exit_crit_edge, %list_add_tail.exit292.3.exit_crit_edge, %if.then109.3.exit_crit_edge, %if.then109.2.exit_crit_edge, %if.then109.1.exit_crit_edge, %if.then109.exit_crit_edge, %for.end.exit_crit_edge, %if.then
  %res.3 = phi i32 [ %call153, %rtw_init_hwxmits.exit ], [ 0, %if.then ], [ 0, %for.end.exit_crit_edge ], [ 0, %list_add_tail.exit292.3.exit_crit_edge ], [ 0, %if.then109.3.exit_crit_edge ], [ 0, %if.then109.2.exit_crit_edge ], [ 0, %if.then109.1.exit_crit_edge ], [ 0, %if.then109.exit_crit_edge ], [ 0, %for.body147.exit_crit_edge ]
  ret i32 %res.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_os_xmit_resource_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_alloc_hwxmits(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hwxmit_entry = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 22
  %0 = ptrtoint ptr %hwxmit_entry to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 4, ptr %hwxmit_entry, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 32) #20
  %hwxmits2 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 21
  %2 = ptrtoint ptr %hwxmits2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %hwxmits2, align 8
  %3 = ptrtoint ptr %hwxmit_entry to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hwxmit_entry, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %4, label %entry.if.end33_crit_edge [
    i8 5, label %if.then
    i8 4, label %if.then19
  ]

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %bm_pending = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 6
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bm_pending, ptr %call7.i.i, align 8
  %vo_pending = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 5
  %arrayidx7 = getelementptr %struct.hw_xmit, ptr %call7.i.i, i32 1
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vo_pending, ptr %arrayidx7, align 8
  %vi_pending = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 4
  %arrayidx9 = getelementptr %struct.hw_xmit, ptr %call7.i.i, i32 2
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vi_pending, ptr %arrayidx9, align 8
  %bk_pending = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 3
  %arrayidx11 = getelementptr %struct.hw_xmit, ptr %call7.i.i, i32 3
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bk_pending, ptr %arrayidx11, align 8
  %be_pending = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 2
  br label %if.end33.sink.split

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %vo_pending20 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 5
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vo_pending20, ptr %call7.i.i, align 8
  %vi_pending23 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 4
  %arrayidx24 = getelementptr %struct.hw_xmit, ptr %call7.i.i, i32 1
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vi_pending23, ptr %arrayidx24, align 8
  %be_pending26 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 2
  %arrayidx27 = getelementptr %struct.hw_xmit, ptr %call7.i.i, i32 2
  %12 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %be_pending26, ptr %arrayidx27, align 8
  %bk_pending29 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 3
  br label %if.end33.sink.split

if.end33.sink.split:                              ; preds = %if.then19, %if.then
  %.sink = phi i32 [ 3, %if.then19 ], [ 4, %if.then ]
  %bk_pending29.sink = phi ptr [ %bk_pending29, %if.then19 ], [ %be_pending, %if.then ]
  %arrayidx30 = getelementptr %struct.hw_xmit, ptr %call7.i.i, i32 %.sink
  %13 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bk_pending29.sink, ptr %arrayidx30, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %entry.if.end33_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @rtw_init_hwxmits(ptr nocapture noundef writeonly %phwxmit, i32 noundef %entry1) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entry1)
  %cmp4 = icmp sgt i32 %entry1, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %phwxmit.addr.05 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %phwxmit, %entry.for.body_crit_edge ]
  %accnt = getelementptr inbounds %struct.hw_xmit, ptr %phwxmit.addr.05, i32 0, i32 1
  %0 = ptrtoint ptr %accnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %accnt, align 4
  %inc = add nuw nsw i32 %i.06, 1
  %incdec.ptr = getelementptr %struct.hw_xmit, ptr %phwxmit.addr.05, i32 1
  %exitcond.not = icmp eq i32 %inc, %entry1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_sctx_init(ptr noundef %sctx, i32 noundef %timeout_ms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout_ms1 = getelementptr inbounds %struct.submit_ctx, ptr %sctx, i32 0, i32 1
  %0 = ptrtoint ptr %timeout_ms1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %timeout_ms, ptr %timeout_ms1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %2 = ptrtoint ptr %sctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %sctx, align 4
  %done = getelementptr inbounds %struct.submit_ctx, ptr %sctx, i32 0, i32 3
  %3 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.submit_ctx, ptr %sctx, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.71, ptr noundef nonnull @init_completion.__key) #16
  %status = getelementptr inbounds %struct.submit_ctx, ptr %sctx, i32 0, i32 2
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8188eu_init_xmit_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_free_xmit_priv(ptr noundef %pxmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 12
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %pxmit_frame_buf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 8
  %2 = ptrtoint ptr %pxmit_frame_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pxmit_frame_buf, align 4
  %pxmitbuf1 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 34
  %4 = ptrtoint ptr %pxmitbuf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pxmitbuf1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %pxmitframe.043 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.042 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void @rtw_os_xmit_complete(ptr noundef %1, ptr noundef %pxmitframe.043) #16
  %incdec.ptr = getelementptr %struct.xmit_frame, ptr %pxmitframe.043, i32 1
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body5.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body5.preheader:                              ; preds = %for.body
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %5, i32 noundef 20484) #16
  %incdec.ptr6 = getelementptr %struct.xmit_buf, ptr %5, i32 1
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6, i32 noundef 20484) #16
  %incdec.ptr6.1 = getelementptr %struct.xmit_buf, ptr %5, i32 2
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6.1, i32 noundef 20484) #16
  %incdec.ptr6.2 = getelementptr %struct.xmit_buf, ptr %5, i32 3
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6.2, i32 noundef 20484) #16
  %pallocated_frame_buf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 7
  %6 = ptrtoint ptr %pallocated_frame_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pallocated_frame_buf, align 8
  tail call void @vfree(ptr noundef %7) #16
  %pallocated_xmitbuf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 33
  %8 = ptrtoint ptr %pallocated_xmitbuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pallocated_xmitbuf, align 8
  tail call void @vfree(ptr noundef %9) #16
  %pxmit_extbuf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 38
  %10 = ptrtoint ptr %pxmit_extbuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pxmit_extbuf, align 4
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body5.preheader
  %pxmitbuf.147 = phi ptr [ %11, %for.body5.preheader ], [ %incdec.ptr13, %for.body12.for.body12_crit_edge ]
  %i.246 = phi i32 [ 0, %for.body5.preheader ], [ %inc15, %for.body12.for.body12_crit_edge ]
  tail call void @rtw_os_xmit_resource_free(ptr noundef %1, ptr noundef %pxmitbuf.147, i32 noundef 1540) #16
  %incdec.ptr13 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.147, i32 1
  %inc15 = add nuw nsw i32 %i.246, 1
  %exitcond49.not = icmp eq i32 %inc15, 32
  br i1 %exitcond49.not, label %for.end16, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body12

for.end16:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #18
  %pallocated_xmit_extbuf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 37
  %12 = ptrtoint ptr %pallocated_xmit_extbuf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pallocated_xmit_extbuf, align 8
  tail call void @vfree(ptr noundef %13) #16
  %hwxmits1.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9, i32 21
  %14 = ptrtoint ptr %hwxmits1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwxmits1.i, align 8
  tail call void @kfree(ptr noundef %15) #16
  %ack_tx_mutex = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 42
  tail call void @mutex_destroy(ptr noundef %ack_tx_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %for.end16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_xmit_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_xmit_resource_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_hwxmits(ptr nocapture noundef readonly %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hwxmits1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 21
  %0 = ptrtoint ptr %hwxmits1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwxmits1, align 8
  tail call void @kfree(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @qos_acm(i8 noundef zeroext %acm_mask, i8 noundef zeroext %priority) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %priority to i32
  %0 = zext i8 %priority to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %priority, label %do.body [
    i8 0, label %entry.sw.bb_crit_edge
    i8 3, label %entry.sw.bb_crit_edge28
    i8 1, label %entry.sw.epilog_crit_edge
    i8 2, label %entry.sw.epilog_crit_edge29
    i8 4, label %entry.sw.bb3_crit_edge
    i8 5, label %entry.sw.bb3_crit_edge30
    i8 6, label %entry.sw.bb9_crit_edge
    i8 7, label %entry.sw.bb9_crit_edge31
  ]

entry.sw.bb9_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb9

entry.sw.bb3_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3

entry.sw.epilog_crit_edge29:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

entry.sw.bb_crit_edge28:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge28
  %1 = and i8 %acm_mask, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool.not, i8 %priority, i8 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge30
  %2 = and i8 %acm_mask, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool6.not = icmp eq i8 %2, 0
  %spec.select26 = select i1 %tobool6.not, i8 %priority, i8 0
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge31
  %3 = and i8 %acm_mask, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool12.not = icmp eq i8 %3, 0
  %spec.select27 = select i1 %tobool12.not, i8 %priority, i8 5
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %4 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp ugt i32 %4, 4
  br i1 %cmp, label %do.end, label %do.body.sw.epilog_crit_edge

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %conv) #21
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %do.body.sw.epilog_crit_edge, %sw.bb9, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge29
  %change_priority.0 = phi i8 [ %priority, %do.end ], [ %priority, %do.body.sw.epilog_crit_edge ], [ %priority, %entry.sw.epilog_crit_edge ], [ %priority, %entry.sw.epilog_crit_edge29 ], [ %spec.select, %sw.bb ], [ %spec.select26, %sw.bb3 ], [ %spec.select27, %sw.bb9 ]
  ret i8 %change_priority.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_make_wlanhdr(ptr noundef %padapter, ptr noundef %hdr, ptr noundef %pattrib) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %qospriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 23
  %psta1 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 40
  %0 = ptrtoint ptr %psta1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psta1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.else:                                          ; preds = %entry
  %ra = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 23
  %2 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ra, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.else5, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #16
  br label %if.end9

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call8 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ra) #16
  br label %if.end9

if.end9:                                          ; preds = %if.else5, %if.then3, %entry.if.end9_crit_edge
  %psta.0 = phi ptr [ %call4, %if.then3 ], [ %call8, %if.else5 ], [ %1, %entry.if.end9_crit_edge ]
  %subtype = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 1
  %5 = call ptr @memset(ptr %hdr, i32 0, i32 64)
  %6 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %subtype, align 1
  %conv11 = zext i8 %7 to i16
  %8 = shl nuw i16 %conv11, 8
  %9 = ptrtoint ptr %hdr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %hdr, align 2
  %10 = load i8, ptr %subtype, align 1
  %11 = and i8 %10, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool18.not = icmp eq i8 %11, 0
  br i1 %tobool18.not, label %if.end9.exit_crit_edge, label %if.then19

if.end9.exit_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.then19:                                        ; preds = %if.end9
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_state.i, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool21.not = icmp eq i32 %14, 0
  br i1 %tobool21.not, label %if.else36, label %if.then22

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  %15 = or i16 %8, 1
  %16 = ptrtoint ptr %hdr to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %hdr, align 2
  %addr1 = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %MacAddress.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 6, i32 1
  %17 = call ptr @memcpy(ptr %addr1, ptr %MacAddress.i, i32 6)
  %addr2 = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %src = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 21
  %18 = call ptr @memcpy(ptr %addr2, ptr %src, i32 6)
  %addr3 = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %hdr, i32 0, i32 4
  %dst = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 20
  %19 = call ptr @memcpy(ptr %addr3, ptr %dst, i32 6)
  br label %if.end82

if.else36:                                        ; preds = %if.then19
  %20 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool38.not = icmp eq i32 %20, 0
  br i1 %tobool38.not, label %if.else58, label %if.then39

if.then39:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #18
  %21 = or i16 %8, 2
  %22 = ptrtoint ptr %hdr to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %hdr, align 2
  %addr143 = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %dst45 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 20
  %23 = call ptr @memcpy(ptr %addr143, ptr %dst45, i32 6)
  %addr247 = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %MacAddress.i303 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 6, i32 1
  %24 = call ptr @memcpy(ptr %addr247, ptr %MacAddress.i303, i32 6)
  %addr350 = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %hdr, i32 0, i32 4
  %src52 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 21
  %25 = call ptr @memcpy(ptr %addr350, ptr %src52, i32 6)
  %qos_option54 = getelementptr inbounds %struct.sta_info, ptr %psta.0, i32 0, i32 10
  br label %if.end82

if.else58:                                        ; preds = %if.else36
  %26 = and i32 %13, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %if.else58.exit_crit_edge, label %if.then63

if.else58.exit_crit_edge:                         ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.then63:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #18
  %addr164 = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %dst66 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 20
  %28 = call ptr @memcpy(ptr %addr164, ptr %dst66, i32 6)
  %addr268 = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %src70 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 21
  %29 = call ptr @memcpy(ptr %addr268, ptr %src70, i32 6)
  %addr372 = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %hdr, i32 0, i32 4
  %MacAddress.i312 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 6, i32 1
  %30 = call ptr @memcpy(ptr %addr372, ptr %MacAddress.i312, i32 6)
  %qos_option75 = getelementptr inbounds %struct.sta_info, ptr %psta.0, i32 0, i32 10
  br label %if.end82

if.end82:                                         ; preds = %if.then63, %if.then39, %if.then22
  %tobool95.not.in.in = phi ptr [ %qospriv, %if.then22 ], [ %qos_option54, %if.then39 ], [ %qos_option75, %if.then63 ]
  %31 = ptrtoint ptr %tobool95.not.in.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %tobool95.not.in = load i32, ptr %tobool95.not.in.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool95.not.in)
  %tobool95.not = icmp eq i32 %tobool95.not.in, 0
  %mdata = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 32
  %32 = ptrtoint ptr %mdata to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mdata, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool83.not = icmp eq i8 %33, 0
  br i1 %tobool83.not, label %if.end82.if.end88_crit_edge, label %if.then84

if.end82.if.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end88

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hdr, align 2
  %36 = or i16 %35, 32
  store i16 %36, ptr %hdr, align 2
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %if.end82.if.end88_crit_edge
  %encrypt = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 11
  %37 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %encrypt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool89.not = icmp eq i8 %38, 0
  br i1 %tobool89.not, label %if.end88.if.end94_crit_edge, label %if.then90

if.end88.if.end94_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end94

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %hdr, align 2
  %41 = or i16 %40, 64
  store i16 %41, ptr %hdr, align 2
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.end88.if.end94_crit_edge
  br i1 %tobool95.not, label %if.end94.if.end125_crit_edge, label %if.then96

if.end94.if.end125_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end125

if.then96:                                        ; preds = %if.end94
  %hdrlen = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 7
  %42 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %hdrlen, align 2
  %conv97 = zext i16 %43 to i32
  %add.ptr = getelementptr i8, ptr %hdr, i32 %conv97
  %add.ptr98 = getelementptr i8, ptr %add.ptr, i32 -2
  %priority = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 16
  %44 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %priority, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool99.not = icmp eq i8 %45, 0
  br i1 %tobool99.not, label %if.then96.if.end109_crit_edge, label %if.then100

if.then96.if.end109_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end109

if.then100:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #18
  %46 = and i8 %45, 15
  %conv104 = zext i8 %46 to i16
  %47 = shl nuw nsw i16 %conv104, 8
  %48 = ptrtoint ptr %add.ptr98 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr98, align 2
  %or107 = or i16 %49, %47
  store i16 %or107, ptr %add.ptr98, align 2
  br label %if.end109

if.end109:                                        ; preds = %if.then100, %if.then96.if.end109_crit_edge
  %eosp = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 36
  %50 = ptrtoint ptr %eosp to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %eosp, align 2
  %52 = shl i8 %51, 4
  %53 = and i8 %52, 16
  %conv112 = zext i8 %53 to i16
  %54 = shl nuw nsw i16 %conv112, 8
  %55 = ptrtoint ptr %add.ptr98 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr98, align 2
  %or115 = or i16 %54, %56
  store i16 %or115, ptr %add.ptr98, align 2
  %ack_policy = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 17
  %57 = ptrtoint ptr %ack_policy to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ack_policy, align 1
  %59 = shl i8 %58, 5
  %60 = and i8 %59, 96
  %conv120 = zext i8 %60 to i16
  %61 = shl nuw nsw i16 %conv120, 8
  %or123 = or i16 %61, %or115
  store i16 %or123, ptr %add.ptr98, align 2
  br label %if.end125

if.end125:                                        ; preds = %if.end109, %if.end94.if.end125_crit_edge
  %tobool126.not = icmp eq ptr %psta.0, null
  br i1 %tobool126.not, label %if.end125.exit_crit_edge, label %if.then127

if.end125.exit_crit_edge:                         ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.then127:                                       ; preds = %if.end125
  %priority128 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 16
  %62 = ptrtoint ptr %priority128 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %priority128, align 2
  %idxprom = zext i8 %63 to i32
  %arrayidx = getelementptr %struct.sta_info, ptr %psta.0, i32 0, i32 3, i32 9, i32 %idxprom
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx, align 2
  %inc = add i16 %65, 1
  store i16 %inc, ptr %arrayidx, align 2
  %66 = load i8, ptr %priority128, align 2
  %idxprom132 = zext i8 %66 to i32
  %arrayidx133 = getelementptr %struct.sta_info, ptr %psta.0, i32 0, i32 3, i32 9, i32 %idxprom132
  %67 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx133, align 2
  %69 = and i16 %68, 4095
  store i16 %69, ptr %arrayidx133, align 2
  %70 = load i8, ptr %priority128, align 2
  %idxprom140 = zext i8 %70 to i32
  %arrayidx141 = getelementptr %struct.sta_info, ptr %psta.0, i32 0, i32 3, i32 9, i32 %idxprom140
  %71 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx141, align 2
  %seqnum = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 5
  %73 = ptrtoint ptr %seqnum to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %seqnum, align 2
  %74 = ptrtoint ptr %hdr to i32
  %add = add i32 %74, 22
  %75 = inttoptr i32 %add to ptr
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %75, align 2
  %78 = and i16 %77, 3840
  %shl147 = shl i16 %72, 4
  %79 = tail call i16 @llvm.bswap.i16(i16 %shl147)
  %or151296 = or i16 %78, %79
  %80 = ptrtoint ptr %75 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %or151296, ptr %75, align 2
  %ht_en = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 26
  %81 = ptrtoint ptr %ht_en to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ht_en, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool157.not = icmp eq i8 %82, 0
  br i1 %tobool157.not, label %if.then127.if.end169_crit_edge, label %land.lhs.true

if.then127.if.end169_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end169

land.lhs.true:                                    ; preds = %if.then127
  %ampdu_enable = getelementptr inbounds %struct.sta_info, ptr %psta.0, i32 0, i32 33, i32 1
  %83 = ptrtoint ptr %ampdu_enable to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ampdu_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool158.not = icmp eq i32 %84, 0
  br i1 %tobool158.not, label %land.lhs.true.if.end169_crit_edge, label %if.then159

land.lhs.true.if.end169_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end169

if.then159:                                       ; preds = %land.lhs.true
  %agg_enable_bitmap = getelementptr inbounds %struct.sta_info, ptr %psta.0, i32 0, i32 33, i32 8
  %85 = ptrtoint ptr %agg_enable_bitmap to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %agg_enable_bitmap, align 1
  %conv161 = zext i8 %86 to i32
  %87 = ptrtoint ptr %priority128 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %priority128, align 2
  %conv163 = zext i8 %88 to i32
  %shl164 = shl nuw i32 1, %conv163
  %and165 = and i32 %shl164, %conv161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.then159.if.end169_crit_edge, label %if.then167

if.then159.if.end169_crit_edge:                   ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end169

if.then167:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #18
  %ampdu_en = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 31
  %89 = ptrtoint ptr %ampdu_en to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %ampdu_en, align 1
  br label %if.end169

if.end169:                                        ; preds = %if.then167, %if.then159.if.end169_crit_edge, %land.lhs.true.if.end169_crit_edge, %if.then127.if.end169_crit_edge
  %ampdu_en170 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 31
  %90 = ptrtoint ptr %ampdu_en170 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ampdu_en170, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool171.not = icmp eq i8 %91, 0
  br i1 %tobool171.not, label %if.end169.exit_crit_edge, label %if.then172

if.end169.exit_crit_edge:                         ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.then172:                                       ; preds = %if.end169
  %92 = ptrtoint ptr %priority128 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %priority128, align 2
  %94 = and i8 %93, 15
  %and175 = zext i8 %94 to i32
  %arrayidx176 = getelementptr %struct.sta_info, ptr %psta.0, i32 0, i32 32, i32 %and175
  %95 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx176, align 2
  %97 = ptrtoint ptr %seqnum to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %seqnum, align 2
  %conv178 = zext i16 %98 to i32
  %conv179 = zext i16 %96 to i32
  %sub = sub nsw i32 %conv178, %conv179
  %and180 = and i32 %sub, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %cmp.not = icmp eq i32 %and180, 0
  br i1 %cmp.not, label %if.else184, label %if.then172.exit.sink.split_crit_edge

if.then172.exit.sink.split_crit_edge:             ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit.sink.split

if.else184:                                       ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #18
  %add192 = add i16 %98, 1
  %and193 = and i16 %add192, 4095
  %99 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %and193, ptr %arrayidx176, align 2
  br label %exit.sink.split

exit.sink.split:                                  ; preds = %if.else184, %if.then172.exit.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.then172.exit.sink.split_crit_edge ], [ 1, %if.else184 ]
  %100 = ptrtoint ptr %ampdu_en170 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %.sink, ptr %ampdu_en170, align 1
  br label %exit

exit:                                             ; preds = %exit.sink.split, %if.end169.exit_crit_edge, %if.end125.exit_crit_edge, %if.else58.exit_crit_edge, %if.end9.exit_crit_edge
  %res.0 = phi i32 [ 1, %if.end169.exit_crit_edge ], [ 1, %if.end125.exit_crit_edge ], [ 1, %if.end9.exit_crit_edge ], [ 0, %if.else58.exit_crit_edge ], [ 1, %exit.sink.split ]
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_bcmc_stainfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_txframes_pending(ptr noundef %padapter) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %be_pending = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %be_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %be_pending, align 4
  %cmp.i.not = icmp eq ptr %1, %be_pending
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %bk_pending = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %bk_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %bk_pending, align 4
  %cmp.i14.not = icmp eq ptr %3, %bk_pending
  br i1 %cmp.i14.not, label %lor.lhs.false4, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %vi_pending = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 4
  %4 = ptrtoint ptr %vi_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vi_pending, align 4
  %cmp.i16.not = icmp eq ptr %5, %vi_pending
  br i1 %cmp.i16.not, label %lor.rhs, label %lor.lhs.false4.lor.end_crit_edge

lor.lhs.false4.lor.end_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #18
  %vo_pending = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 5
  %6 = ptrtoint ptr %vo_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %vo_pending, align 4
  %cmp.i18 = icmp ne ptr %7, %vo_pending
  %phi.cast = zext i1 %cmp.i18 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false4.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %8 = phi i32 [ 1, %lor.lhs.false4.lor.end_crit_edge ], [ 1, %lor.lhs.false.lor.end_crit_edge ], [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_txframes_sta_ac_pending(ptr nocapture noundef readnone %padapter, ptr nocapture noundef readonly %pattrib) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %priority1 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 16
  %0 = ptrtoint ptr %priority1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priority1, align 2
  %psta2 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 40
  %2 = ptrtoint ptr %psta2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psta2, align 4
  %4 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %1, label %sw.default [
    i8 1, label %entry.sw.bb_crit_edge
    i8 2, label %entry.sw.bb_crit_edge16
    i8 4, label %entry.sw.bb3_crit_edge
    i8 5, label %entry.sw.bb3_crit_edge17
    i8 6, label %entry.sw.bb5_crit_edge
    i8 7, label %entry.sw.bb5_crit_edge18
  ]

entry.sw.bb5_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5

entry.sw.bb3_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge16
  %bk_q = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 3, i32 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge17
  %vi_q = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 3, i32 5
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge18
  %vo_q = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 3, i32 6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %be_q = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 3, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb3, %sw.bb
  %ptxservq.0 = phi ptr [ %be_q, %sw.default ], [ %vo_q, %sw.bb5 ], [ %vi_q, %sw.bb3 ], [ %bk_q, %sw.bb ]
  %tobool.not = icmp eq ptr %ptxservq.0, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  %qcnt = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0, i32 0, i32 2
  %5 = ptrtoint ptr %qcnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qcnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_xmitframe_coalesce(ptr noundef %padapter, ptr noundef %pkt, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  %mic.i = alloca [8 x i8], align 8
  %micdata.i = alloca %struct.mic_data, align 4
  %priority.i = alloca [4 x i8], align 4
  %null_key.i = alloca [16 x i8], align 1
  %pktfile = alloca %struct.pkt_file, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pktfile) #16
  %attrib = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %0 = call ptr @memset(ptr %pktfile, i32 255, i32 24)
  %1 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ra, align 4
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  %tobool.not = icmp eq ptr %pkt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call3 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ra) #16
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 5
  %4 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf_addr, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %do.body, label %if.end15

do.body:                                          ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %6 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp ugt i32 %6, 4
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #21
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %pkt_offset = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 8
  %7 = ptrtoint ptr %pkt_offset to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pkt_offset, align 1
  %mul = shl i8 %8, 3
  %add = add i8 %mul, 32
  %conv18 = zext i8 %add to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv18
  %call19 = tail call i32 @rtw_make_wlanhdr(ptr noundef %padapter, ptr noundef %add.ptr, ptr noundef %attrib)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %do.body23, label %if.end35

do.body23:                                        ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %9 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp24 = icmp ugt i32 %9, 4
  br i1 %cmp24, label %do.end29, label %do.body23.cleanup_crit_edge

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #18
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #21
  br label %cleanup

if.end35:                                         ; preds = %if.end15
  call void @_rtw_open_pktfile(ptr noundef nonnull %pkt, ptr noundef nonnull %pktfile) #16
  %pkt_hdrlen = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 6
  %10 = ptrtoint ptr %pkt_hdrlen to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pkt_hdrlen, align 4
  %conv36 = zext i16 %11 to i32
  %call37 = call i32 @_rtw_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef null, i32 noundef %conv36) #16
  %frag_len = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 11
  %12 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frag_len, align 8
  %sub = add i32 %13, -4
  %hdrlen = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 7
  %iv_len = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 12
  %icv_len = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 13
  %encrypt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 11
  %dot11txpn174 = getelementptr inbounds %struct.sta_info, ptr %call3, i32 0, i32 17
  %TSC0175 = getelementptr inbounds %struct.anon.102, ptr %dot11txpn174, i32 0, i32 7
  %iv176 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 14
  %TSC1179 = getelementptr inbounds %struct.anon.102, ptr %dot11txpn174, i32 0, i32 6
  %arrayidx181 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 14, i32 1
  %arrayidx183 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 14, i32 2
  %key_idx184 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 24
  %arrayidx191 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 14, i32 3
  %TSC2193 = getelementptr inbounds %struct.anon.102, ptr %dot11txpn174, i32 0, i32 5
  %arrayidx195 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 14, i32 4
  %TSC3197 = getelementptr inbounds %struct.anon.102, ptr %dot11txpn174, i32 0, i32 4
  %arrayidx199 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 14, i32 5
  %TSC4201 = getelementptr inbounds %struct.anon.102, ptr %dot11txpn174, i32 0, i32 3
  %arrayidx203 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 14, i32 6
  %TSC5205 = getelementptr inbounds %struct.anon.102, ptr %dot11txpn174, i32 0, i32 2
  %arrayidx207 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 14, i32 7
  %ether_type = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 4
  %bswenc = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 2
  %pktlen = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 8
  %icv = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 15
  br label %while.cond

while.cond:                                       ; preds = %if.end349, %if.end35
  %mem_start.0 = phi ptr [ %add.ptr, %if.end35 ], [ %add.ptr357, %if.end349 ]
  %frg_inx.0 = phi i32 [ 0, %if.end35 ], [ %inc, %if.end349 ]
  %14 = ptrtoint ptr %mem_start.0 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mem_start.0, align 2
  %16 = or i16 %15, 4
  store i16 %16, ptr %mem_start.0, align 2
  %17 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %hdrlen, align 2
  %conv40 = zext i16 %18 to i32
  %add.ptr41 = getelementptr i8, ptr %mem_start.0, i32 %conv40
  %sub44 = sub i32 %sub, %conv40
  %19 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %iv_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool45.not = icmp eq i8 %20, 0
  br i1 %tobool45.not, label %while.cond.if.end274_crit_edge, label %if.then48

while.cond.if.end274_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end274

if.then48:                                        ; preds = %while.cond
  %21 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %encrypt, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %22, label %if.then48.if.end263_crit_edge [
    i8 1, label %if.then48.do.body50_crit_edge
    i8 5, label %if.then48.do.body50_crit_edge588
    i8 2, label %sw.bb69
    i8 4, label %sw.bb170
  ]

if.then48.do.body50_crit_edge588:                 ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body50

if.then48.do.body50_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body50

if.then48.if.end263_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end263

do.body50:                                        ; preds = %if.then48.do.body50_crit_edge, %if.then48.do.body50_crit_edge588
  %24 = ptrtoint ptr %TSC0175 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %TSC0175, align 1
  %26 = ptrtoint ptr %iv176 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %iv176, align 4
  %27 = ptrtoint ptr %TSC1179 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %TSC1179, align 2
  %29 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx181, align 1
  %30 = ptrtoint ptr %TSC2193 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %TSC2193, align 1
  %32 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx183, align 2
  %33 = ptrtoint ptr %key_idx184 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %key_idx184, align 2
  %35 = shl i8 %34, 6
  %36 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx191, align 1
  %37 = ptrtoint ptr %dot11txpn174 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %dot11txpn174, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777215, i64 %38)
  %cmp62 = icmp eq i64 %38, 16777215
  br label %if.end263.sink.split

sw.bb69:                                          ; preds = %if.then48
  %39 = ptrtoint ptr %TSC1179 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %TSC1179, align 2
  %41 = ptrtoint ptr %iv176 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %iv176, align 4
  %42 = load i8, ptr %TSC1179, align 2
  %43 = and i8 %42, 95
  %44 = or i8 %43, 32
  %45 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx181, align 1
  %46 = ptrtoint ptr %TSC0175 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %TSC0175, align 1
  %48 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx183, align 2
  br i1 %tobool.i.not, label %do.body122, label %do.body72

do.body72:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #18
  %49 = ptrtoint ptr %key_idx184 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %key_idx184, align 2
  %51 = shl i8 %50, 6
  %52 = or i8 %51, 32
  %53 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx191, align 1
  %54 = ptrtoint ptr %TSC2193 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %TSC2193, align 1
  %56 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx195, align 4
  %57 = ptrtoint ptr %TSC3197 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %TSC3197, align 4
  %59 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx199, align 1
  %60 = ptrtoint ptr %TSC4201 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %TSC4201, align 1
  %62 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx203, align 2
  %63 = ptrtoint ptr %TSC5205 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %TSC5205, align 2
  %65 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx207, align 1
  %66 = ptrtoint ptr %dot11txpn174 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %dot11txpn174, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710655, i64 %67)
  %cmp111 = icmp eq i64 %67, 281474976710655
  br label %if.end263.sink.split

do.body122:                                       ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #18
  %68 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 32, ptr %arrayidx191, align 1
  %69 = ptrtoint ptr %TSC2193 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %TSC2193, align 1
  %71 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx195, align 4
  %72 = ptrtoint ptr %TSC3197 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %TSC3197, align 4
  %74 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayidx199, align 1
  %75 = ptrtoint ptr %TSC4201 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %TSC4201, align 1
  %77 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx203, align 2
  %78 = ptrtoint ptr %TSC5205 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %TSC5205, align 2
  %80 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx207, align 1
  %81 = ptrtoint ptr %dot11txpn174 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %dot11txpn174, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710655, i64 %82)
  %cmp158 = icmp eq i64 %82, 281474976710655
  br label %if.end263.sink.split

sw.bb170:                                         ; preds = %if.then48
  %83 = ptrtoint ptr %TSC0175 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %TSC0175, align 1
  %85 = ptrtoint ptr %iv176 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %iv176, align 4
  %86 = ptrtoint ptr %TSC1179 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %TSC1179, align 2
  %88 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %arrayidx181, align 1
  %89 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %arrayidx183, align 2
  br i1 %tobool.i.not, label %do.body221, label %do.body173

do.body173:                                       ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #18
  %90 = ptrtoint ptr %key_idx184 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %key_idx184, align 2
  %92 = shl i8 %91, 6
  %93 = or i8 %92, 32
  %94 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx191, align 1
  %95 = ptrtoint ptr %TSC2193 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %TSC2193, align 1
  %97 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %arrayidx195, align 4
  %98 = ptrtoint ptr %TSC3197 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %TSC3197, align 4
  %100 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx199, align 1
  %101 = ptrtoint ptr %TSC4201 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %TSC4201, align 1
  %103 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %arrayidx203, align 2
  %104 = ptrtoint ptr %TSC5205 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %TSC5205, align 2
  %106 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %arrayidx207, align 1
  %107 = ptrtoint ptr %dot11txpn174 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %dot11txpn174, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710655, i64 %108)
  %cmp209 = icmp eq i64 %108, 281474976710655
  br label %if.end263.sink.split

do.body221:                                       ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #18
  %109 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 32, ptr %arrayidx191, align 1
  %110 = ptrtoint ptr %TSC2193 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %TSC2193, align 1
  %112 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %arrayidx195, align 4
  %113 = ptrtoint ptr %TSC3197 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %TSC3197, align 4
  %115 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %arrayidx199, align 1
  %116 = ptrtoint ptr %TSC4201 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %TSC4201, align 1
  %118 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %arrayidx203, align 2
  %119 = ptrtoint ptr %TSC5205 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %TSC5205, align 2
  %121 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %arrayidx207, align 1
  %122 = ptrtoint ptr %dot11txpn174 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %dot11txpn174, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710655, i64 %123)
  %cmp251 = icmp eq i64 %123, 281474976710655
  br label %if.end263.sink.split

if.end263.sink.split:                             ; preds = %do.body221, %do.body173, %do.body122, %do.body72, %do.body50
  %.sink = phi i64 [ %38, %do.body50 ], [ %82, %do.body122 ], [ %67, %do.body72 ], [ %123, %do.body221 ], [ %108, %do.body173 ]
  %cmp62.sink = phi i1 [ %cmp62, %do.body50 ], [ %cmp158, %do.body122 ], [ %cmp111, %do.body72 ], [ %cmp251, %do.body221 ], [ %cmp209, %do.body173 ]
  %add65 = add i64 %.sink, 1
  %spec.select = select i1 %cmp62.sink, i64 0, i64 %add65
  %124 = ptrtoint ptr %dot11txpn174 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %spec.select, ptr %dot11txpn174, align 8
  br label %if.end263

if.end263:                                        ; preds = %if.end263.sink.split, %if.then48.if.end263_crit_edge
  %125 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %iv_len, align 2
  %conv267 = zext i8 %126 to i32
  %127 = call ptr @memcpy(ptr %add.ptr41, ptr %iv176, i32 %conv267)
  %128 = load i8, ptr %iv_len, align 2
  %conv269 = zext i8 %128 to i32
  %add.ptr270 = getelementptr i8, ptr %add.ptr41, i32 %conv269
  %sub273 = sub i32 %sub44, %conv269
  br label %if.end274

if.end274:                                        ; preds = %if.end263, %while.cond.if.end274_crit_edge
  %mpdu_len.0 = phi i32 [ %sub273, %if.end263 ], [ %sub44, %while.cond.if.end274_crit_edge ]
  %pframe.0 = phi ptr [ %add.ptr270, %if.end263 ], [ %add.ptr41, %while.cond.if.end274_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frg_inx.0)
  %cmp275 = icmp eq i32 %frg_inx.0, 0
  br i1 %cmp275, label %if.then277, label %if.end274.if.end281_crit_edge

if.end274.if.end281_crit_edge:                    ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end281

if.then277:                                       ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #18
  %129 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %ether_type, align 4
  %131 = ptrtoint ptr %pframe.0 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 -86, ptr %pframe.0, align 1
  %ssap.i = getelementptr inbounds %struct.ieee80211_snap_hdr, ptr %pframe.0, i32 0, i32 1
  %132 = ptrtoint ptr %ssap.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 -86, ptr %ssap.i, align 1
  %ctrl.i = getelementptr inbounds %struct.ieee80211_snap_hdr, ptr %pframe.0, i32 0, i32 2
  %133 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 3, ptr %ctrl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32457, i16 %130)
  %switch.selectcmp.case1.i = icmp eq i16 %130, -32457
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32525, i16 %130)
  %switch.selectcmp.case2.i = icmp eq i16 %130, -32525
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %oui5.i = getelementptr inbounds %struct.ieee80211_snap_hdr, ptr %pframe.0, i32 0, i32 3
  %134 = ptrtoint ptr %oui5.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %oui5.i, align 1
  %arrayidx9.i = getelementptr %struct.ieee80211_snap_hdr, ptr %pframe.0, i32 0, i32 3, i32 1
  %135 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %arrayidx9.i, align 1
  %136 = select i1 %switch.selectcmp.i, i8 -8, i8 0
  %arrayidx12.i = getelementptr %struct.ieee80211_snap_hdr, ptr %pframe.0, i32 0, i32 3, i32 2
  %137 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %arrayidx12.i, align 1
  %add.ptr.i = getelementptr i8, ptr %pframe.0, i32 6
  %138 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %130, ptr %add.ptr.i, align 2
  %add.ptr279 = getelementptr i8, ptr %pframe.0, i32 8
  %sub280 = add i32 %mpdu_len.0, -8
  br label %if.end281

if.end281:                                        ; preds = %if.then277, %if.end274.if.end281_crit_edge
  %mpdu_len.1 = phi i32 [ %sub280, %if.then277 ], [ %mpdu_len.0, %if.end274.if.end281_crit_edge ]
  %llc_sz.0 = phi i32 [ 8, %if.then277 ], [ 0, %if.end274.if.end281_crit_edge ]
  %pframe.1 = phi ptr [ %add.ptr279, %if.then277 ], [ %pframe.0, %if.end274.if.end281_crit_edge ]
  %139 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %icv_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %cmp283.not = icmp eq i8 %140, 0
  br i1 %cmp283.not, label %if.end281.if.end291_crit_edge, label %land.lhs.true

if.end281.if.end291_crit_edge:                    ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end291

land.lhs.true:                                    ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #18
  %141 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool286.not = icmp eq i8 %142, 0
  %narrow = select i1 %tobool286.not, i8 0, i8 %140
  %sub290 = zext i8 %narrow to i32
  %spec.select567 = sub i32 %mpdu_len.1, %sub290
  br label %if.end291

if.end291:                                        ; preds = %land.lhs.true, %if.end281.if.end291_crit_edge
  %mpdu_len.2 = phi i32 [ %mpdu_len.1, %if.end281.if.end291_crit_edge ], [ %spec.select567, %land.lhs.true ]
  br i1 %tobool.i.not, label %if.end291.if.end297_crit_edge, label %if.then293

if.end291.if.end297_crit_edge:                    ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end297

if.then293:                                       ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #18
  %143 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %pktlen, align 4
  br label %if.end297

if.end297:                                        ; preds = %if.then293, %if.end291.if.end297_crit_edge
  %mpdu_len.2.sink = phi i32 [ %144, %if.then293 ], [ %mpdu_len.2, %if.end291.if.end297_crit_edge ]
  %call296 = call i32 @_rtw_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef %pframe.1, i32 noundef %mpdu_len.2.sink) #16
  %add.ptr298 = getelementptr i8, ptr %pframe.1, i32 %call296
  %145 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %icv_len, align 1
  %conv300 = zext i8 %146 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %cmp301.not = icmp eq i8 %146, 0
  br i1 %cmp301.not, label %if.end297.if.end314_crit_edge, label %land.lhs.true303

if.end297.if.end314_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end314

land.lhs.true303:                                 ; preds = %if.end297
  %147 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool306.not = icmp eq i8 %148, 0
  br i1 %tobool306.not, label %land.lhs.true303.if.end314_crit_edge, label %if.then307

land.lhs.true303.if.end314_crit_edge:             ; preds = %land.lhs.true303
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end314

if.then307:                                       ; preds = %land.lhs.true303
  call void @__sanitizer_cov_trace_pc() #18
  %149 = call ptr @memcpy(ptr %add.ptr298, ptr %icv, i32 %conv300)
  %150 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %icv_len, align 1
  %conv312 = zext i8 %151 to i32
  %add.ptr313 = getelementptr i8, ptr %add.ptr298, i32 %conv312
  br label %if.end314

if.end314:                                        ; preds = %if.then307, %land.lhs.true303.if.end314_crit_edge, %if.end297.if.end314_crit_edge
  %pframe.2 = phi ptr [ %add.ptr313, %if.then307 ], [ %add.ptr298, %land.lhs.true303.if.end314_crit_edge ], [ %add.ptr298, %if.end297.if.end314_crit_edge ]
  %inc = add i32 %frg_inx.0, 1
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.end314.if.then319_crit_edge

if.end314.if.then319_crit_edge:                   ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then319

lor.lhs.false:                                    ; preds = %if.end314
  %call317 = call i32 @rtw_endofpktfile(ptr noundef nonnull %pktfile) #16
  %tobool318.not = icmp eq i32 %call317, 0
  br i1 %tobool318.not, label %if.end349, label %lor.lhs.false.if.then319_crit_edge

lor.lhs.false.if.then319_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then319

if.then319:                                       ; preds = %lor.lhs.false.if.then319_crit_edge, %if.end314.if.then319_crit_edge
  %mem_start.0.lcssa = phi ptr [ %mem_start.0, %lor.lhs.false.if.then319_crit_edge ], [ %add.ptr, %if.end314.if.then319_crit_edge ]
  %conv320 = trunc i32 %inc to i8
  %nr_frags = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 10
  %152 = ptrtoint ptr %nr_frags to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv320, ptr %nr_frags, align 4
  %153 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %hdrlen, align 2
  %conv322 = zext i16 %154 to i32
  %155 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %iv_len, align 2
  %conv324 = zext i8 %156 to i32
  %conv327 = and i32 %inc, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv327)
  %cmp328 = icmp eq i32 %conv327, 1
  %spec.select568 = select i1 %cmp328, i32 %llc_sz.0, i32 0
  %157 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool337.not = icmp eq i8 %158, 0
  br i1 %tobool337.not, label %if.then319.cond.end342_crit_edge, label %cond.true338

if.then319.cond.end342_crit_edge:                 ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end342

cond.true338:                                     ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #18
  %159 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %icv_len, align 1
  %conv340 = zext i8 %160 to i32
  br label %cond.end342

cond.end342:                                      ; preds = %cond.true338, %if.then319.cond.end342_crit_edge
  %cond343 = phi i32 [ %conv340, %cond.true338 ], [ 0, %if.then319.cond.end342_crit_edge ]
  %add325 = add i32 %call296, %spec.select568
  %add334 = add i32 %add325, %conv322
  %add344 = add i32 %add334, %conv324
  %add345 = add i32 %add344, %cond343
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 9
  %161 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %add345, ptr %last_txcmdsz, align 4
  %162 = ptrtoint ptr %mem_start.0.lcssa to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %mem_start.0.lcssa, align 2
  %164 = and i16 %163, -5
  store i16 %164, ptr %mem_start.0.lcssa, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mic.i) #16
  %165 = ptrtoint ptr %mic.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 -1, ptr %mic.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %micdata.i) #16
  %166 = call ptr @memset(ptr %micdata.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %priority.i) #16
  %167 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %priority.i, align 4
  %psta.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 40
  %168 = ptrtoint ptr %psta.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %psta.i, align 4
  %tobool.not.i = icmp eq ptr %169, null
  br i1 %tobool.not.i, label %if.else.i, label %cond.end342.if.end.i_crit_edge

cond.end342.if.end.i_crit_edge:                   ; preds = %cond.end342
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.else.i:                                        ; preds = %cond.end342
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ra) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %cond.end342.if.end.i_crit_edge
  %stainfo.0.i = phi ptr [ %call.i, %if.else.i ], [ %169, %cond.end342.if.end.i_crit_edge ]
  %170 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %encrypt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %171)
  %cmp.i = icmp ne i8 %171, 2
  %tobool6.not.i = icmp eq ptr %stainfo.0.i, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool6.not.i
  br i1 %or.cond.i, label %if.end.i.if.end378_crit_edge, label %if.then7.i

if.end.i.if.end378_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end378

if.then7.i:                                       ; preds = %if.end.i
  %172 = ptrtoint ptr %pkt_offset to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %pkt_offset, align 1
  %mul.i = shl i8 %173, 3
  %add.i = add i8 %mul.i, 32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %null_key.i) #16
  %174 = call ptr @memset(ptr %null_key.i, i32 0, i32 16)
  %175 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %buf_addr, align 4
  %conv8.i = zext i8 %add.i to i32
  %add.ptr.i569 = getelementptr i8, ptr %176, i32 %conv8.i
  %177 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ra, align 4
  %179 = and i32 %178, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool.i.not.i = icmp eq i32 %179, 0
  br i1 %tobool.i.not.i, label %if.else23.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.then7.i
  %dot118021XGrpKeyid.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 6
  %180 = ptrtoint ptr %dot118021XGrpKeyid.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %dot118021XGrpKeyid.i, align 8
  %arrayidx12.i570 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 8, i32 %181
  %bcmp193.i = call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx12.i570, ptr noundef nonnull dereferenceable(16) %null_key.i, i32 16) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp193.i)
  %tobool16.not.i = icmp eq i32 %bcmp193.i, 0
  br i1 %tobool16.not.i, label %if.then11.i.do.body366_crit_edge, label %if.then11.i.if.end32.i_crit_edge

if.then11.i.if.end32.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i

if.then11.i.do.body366_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body366

if.else23.i:                                      ; preds = %if.then7.i
  %dot11tkiptxmickey.i = getelementptr inbounds %struct.sta_info, ptr %stainfo.0.i, i32 0, i32 14
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %dot11tkiptxmickey.i, ptr noundef nonnull dereferenceable(16) %null_key.i, i32 16) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool27.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool27.not.i, label %if.else23.i.do.body366_crit_edge, label %if.else23.i.if.end32.i_crit_edge

if.else23.i.if.end32.i_crit_edge:                 ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i

if.else23.i.do.body366_crit_edge:                 ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body366

if.end32.i:                                       ; preds = %if.else23.i.if.end32.i_crit_edge, %if.then11.i.if.end32.i_crit_edge
  %dot11tkiptxmickey.sink.i = phi ptr [ %arrayidx12.i570, %if.then11.i.if.end32.i_crit_edge ], [ %dot11tkiptxmickey.i, %if.else23.i.if.end32.i_crit_edge ]
  call void @rtw_secmicsetkey(ptr noundef nonnull %micdata.i, ptr noundef %dot11tkiptxmickey.sink.i) #16
  %arrayidx33.i = getelementptr i8, ptr %add.ptr.i569, i32 1
  %182 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx33.i, align 1
  %184 = and i8 %183, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool35.not.i = icmp eq i8 %184, 0
  %..i = select i1 %tobool35.not.i, i32 4, i32 16
  %.205.i = select i1 %tobool35.not.i, i32 16, i32 24
  %arrayidx48.i = getelementptr i8, ptr %add.ptr.i569, i32 %..i
  call void @rtw_secmicappend(ptr noundef nonnull %micdata.i, ptr noundef %arrayidx48.i, i32 noundef 6) #16
  %185 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx33.i, align 1
  %187 = and i8 %186, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool52.not.i = icmp eq i8 %187, 0
  %.202.i = select i1 %tobool52.not.i, i32 10, i32 %.205.i
  %arrayidx54.i = getelementptr i8, ptr %add.ptr.i569, i32 %.202.i
  call void @rtw_secmicappend(ptr noundef nonnull %micdata.i, ptr noundef %arrayidx54.i, i32 noundef 6) #16
  %qos_en.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 25
  %188 = ptrtoint ptr %qos_en.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %qos_en.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool59.not.i = icmp eq i8 %189, 0
  br i1 %tobool59.not.i, label %if.end32.i.if.end64.i_crit_edge, label %if.then60.i

if.end32.i.if.end64.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end64.i

if.then60.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #18
  %priority62.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 16
  %190 = ptrtoint ptr %priority62.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %priority62.i, align 2
  %192 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %priority.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then60.i, %if.end32.i.if.end64.i_crit_edge
  call void @rtw_secmicappend(ptr noundef nonnull %micdata.i, ptr noundef nonnull %priority.i, i32 noundef 4) #16
  %193 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %nr_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %cmp67198.not.i = icmp eq i8 %194, 0
  br i1 %cmp67198.not.i, label %if.end64.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end64.i.for.end.i_crit_edge:                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end64.i
  %conv66197.i = zext i8 %194 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv66201.i = phi i32 [ %conv66197.i, %for.body.lr.ph.i ], [ %conv66.i, %for.inc.i.for.body.i_crit_edge ]
  %payload.0200.i = phi ptr [ %add.ptr.i569, %for.body.lr.ph.i ], [ %payload.1.i, %for.inc.i.for.body.i_crit_edge ]
  %curfragnum.0199.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add77.i, %for.inc.i.for.body.i_crit_edge ]
  %195 = ptrtoint ptr %payload.0200.i to i32
  %and69.i = and i32 %195, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %cmp70.not.i = icmp eq i32 %and69.i, 0
  %add72191.i = select i1 %cmp70.not.i, i32 0, i32 4
  %shr192.i = add i32 %add72191.i, %195
  %shl.i = and i32 %shr192.i, -4
  %196 = inttoptr i32 %shl.i to ptr
  %197 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %hdrlen, align 2
  %conv73.i = zext i16 %198 to i32
  %add.ptr74.i = getelementptr i8, ptr %196, i32 %conv73.i
  %199 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %iv_len, align 2
  %conv75.i = zext i8 %200 to i32
  %add.ptr76.i = getelementptr i8, ptr %add.ptr74.i, i32 %conv75.i
  %add77.i = add nuw nsw i32 %curfragnum.0199.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add77.i, i32 %conv66201.i)
  %cmp80.i = icmp eq i32 %add77.i, %conv66201.i
  br i1 %cmp80.i, label %if.then82.i, label %if.else94.i

if.then82.i:                                      ; preds = %for.body.i
  %201 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %last_txcmdsz, align 4
  %203 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool89.not.i = icmp eq i8 %204, 0
  br i1 %tobool89.not.i, label %if.then82.i.cond.end.i_crit_edge, label %cond.true.i

if.then82.i.cond.end.i_crit_edge:                 ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #18
  %205 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %icv_len, align 1
  %conv90.i = zext i8 %206 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then82.i.cond.end.i_crit_edge
  %cond91.i = phi i32 [ %conv90.i, %cond.true.i ], [ 0, %if.then82.i.cond.end.i_crit_edge ]
  %207 = add nuw nsw i32 %conv75.i, %conv73.i
  %208 = add nuw nsw i32 %207, %cond91.i
  %sub92.i = sub i32 %202, %208
  call void @rtw_secmicappend(ptr noundef nonnull %micdata.i, ptr noundef %add.ptr76.i, i32 noundef %sub92.i) #16
  %add.ptr93.i = getelementptr i8, ptr %add.ptr76.i, i32 %sub92.i
  br label %for.inc.i

if.else94.i:                                      ; preds = %for.body.i
  %209 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %frag_len, align 8
  %211 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool103.not.i = icmp eq i8 %212, 0
  br i1 %tobool103.not.i, label %if.else94.i.cond.end108.i_crit_edge, label %cond.true104.i

if.else94.i.cond.end108.i_crit_edge:              ; preds = %if.else94.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end108.i

cond.true104.i:                                   ; preds = %if.else94.i
  call void @__sanitizer_cov_trace_pc() #18
  %213 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %icv_len, align 1
  %conv106.i = zext i8 %214 to i32
  br label %cond.end108.i

cond.end108.i:                                    ; preds = %cond.true104.i, %if.else94.i.cond.end108.i_crit_edge
  %cond109.i = phi i32 [ %conv106.i, %cond.true104.i ], [ 0, %if.else94.i.cond.end108.i_crit_edge ]
  %215 = add nuw nsw i32 %conv75.i, %conv73.i
  %216 = add nuw nsw i32 %215, %cond109.i
  %sub110.i = sub i32 %210, %216
  call void @rtw_secmicappend(ptr noundef nonnull %micdata.i, ptr noundef %add.ptr76.i, i32 noundef %sub110.i) #16
  %add.ptr111.i = getelementptr i8, ptr %add.ptr76.i, i32 %sub110.i
  %217 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %icv_len, align 1
  %conv113.i = zext i8 %218 to i32
  %add.ptr114.i = getelementptr i8, ptr %add.ptr111.i, i32 %conv113.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.end108.i, %cond.end.i
  %payload.1.i = phi ptr [ %add.ptr93.i, %cond.end.i ], [ %add.ptr114.i, %cond.end108.i ]
  %219 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %nr_frags, align 4
  %conv66.i = zext i8 %220 to i32
  %cmp67.i = icmp ult i32 %add77.i, %conv66.i
  br i1 %cmp67.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end64.i.for.end.i_crit_edge
  %payload.0.lcssa.i = phi ptr [ %add.ptr.i569, %if.end64.i.for.end.i_crit_edge ], [ %payload.1.i, %for.inc.i.for.end.i_crit_edge ]
  call void @rtw_secgetmic(ptr noundef nonnull %micdata.i, ptr noundef nonnull %mic.i) #16
  %221 = ptrtoint ptr %mic.i to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %mic.i, align 8
  %223 = ptrtoint ptr %payload.0.lcssa.i to i32
  call void @__asan_storeN_noabort(i32 %223, i32 8)
  store i64 %222, ptr %payload.0.lcssa.i, align 1
  %224 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %last_txcmdsz, align 4
  %add119.i = add i32 %225, 8
  store i32 %add119.i, ptr %last_txcmdsz, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %null_key.i) #16
  br label %if.end378

if.end349:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %226 = ptrtoint ptr %pframe.2 to i32
  %and350 = and i32 %226, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and350)
  %cmp351.not = icmp eq i32 %and350, 0
  %add354561 = select i1 %cmp351.not, i32 0, i32 4
  %shr562 = add i32 %add354561, %226
  %shl355 = and i32 %shr562, -4
  %227 = inttoptr i32 %shl355 to ptr
  %add.ptr357 = getelementptr i8, ptr %227, i32 %conv18
  %228 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %hdrlen, align 2
  %conv361 = zext i16 %229 to i32
  %230 = call ptr @memcpy(ptr %add.ptr357, ptr %add.ptr, i32 %conv361)
  br label %while.cond

do.body366:                                       ; preds = %if.else23.i.do.body366_crit_edge, %if.then11.i.do.body366_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %null_key.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %priority.i) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %micdata.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic.i) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %231 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %231)
  %cmp367 = icmp ugt i32 %231, 4
  br i1 %cmp367, label %do.end372, label %do.body366.cleanup_crit_edge

do.body366.cleanup_crit_edge:                     ; preds = %do.body366
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end372:                                        ; preds = %do.body366
  call void @__sanitizer_cov_trace_pc() #18
  %call374 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #21
  br label %cleanup

if.end378:                                        ; preds = %for.end.i, %if.end.i.if.end378_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %priority.i) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %micdata.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic.i) #16
  %232 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool.not.i571 = icmp eq i8 %233, 0
  br i1 %tobool.not.i571, label %if.end378.xmitframe_swencrypt.exit_crit_edge, label %if.then.i

if.end378.xmitframe_swencrypt.exit_crit_edge:     ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #18
  br label %xmitframe_swencrypt.exit

if.then.i:                                        ; preds = %if.end378
  %234 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %encrypt, align 1
  %236 = zext i8 %235 to i64
  call void @__sanitizer_cov_trace_switch(i64 %236, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %235, label %if.then.i.xmitframe_swencrypt.exit_crit_edge [
    i8 1, label %if.then.i.sw.bb.i_crit_edge
    i8 5, label %if.then.i.sw.bb.i_crit_edge589
    i8 2, label %sw.bb1.i
    i8 4, label %sw.bb2.i
  ]

if.then.i.sw.bb.i_crit_edge589:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

if.then.i.xmitframe_swencrypt.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %xmitframe_swencrypt.exit

sw.bb.i:                                          ; preds = %if.then.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge589
  call void @rtw_wep_encrypt(ptr noundef %padapter, ptr noundef %pxmitframe) #16
  br label %xmitframe_swencrypt.exit

sw.bb1.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i573 = call i32 @rtw_tkip_encrypt(ptr noundef %padapter, ptr noundef %pxmitframe) #16
  br label %xmitframe_swencrypt.exit

sw.bb2.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i = call i32 @rtw_aes_encrypt(ptr noundef %padapter, ptr noundef %pxmitframe) #16
  br label %xmitframe_swencrypt.exit

xmitframe_swencrypt.exit:                         ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %if.then.i.xmitframe_swencrypt.exit_crit_edge, %if.end378.xmitframe_swencrypt.exit_crit_edge
  br i1 %tobool.i.not, label %if.then381, label %if.else382

if.then381:                                       ; preds = %xmitframe_swencrypt.exit
  %237 = ptrtoint ptr %psta.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %psta.i, align 4
  %239 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %nr_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %240)
  %cmp.not.i = icmp eq i8 %240, 1
  %sz.0.in.i = select i1 %cmp.not.i, ptr %last_txcmdsz, ptr %frag_len
  %241 = ptrtoint ptr %sz.0.in.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %sz.0.i = load i32, ptr %sz.0.in.i, align 4
  %cur_wireless_mode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %242 = ptrtoint ptr %cur_wireless_mode.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %cur_wireless_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %243)
  %cmp4.i = icmp ult i8 %243, 8
  br i1 %cmp4.i, label %if.then381.if.then7.i579_crit_edge, label %lor.lhs.false.i

if.then381.if.then7.i579_crit_edge:               ; preds = %if.then381
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7.i579

lor.lhs.false.i:                                  ; preds = %if.then381
  %wifi_spec.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 44
  %244 = ptrtoint ptr %wifi_spec.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %wifi_spec.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %tobool.not.i578 = icmp eq i8 %245, 0
  br i1 %tobool.not.i578, label %while.body.i, label %lor.lhs.false.i.if.then7.i579_crit_edge

lor.lhs.false.i.if.then7.i579_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7.i579

if.then7.i579:                                    ; preds = %lor.lhs.false.i.if.then7.i579_crit_edge, %if.then381.if.then7.i579_crit_edge
  %rts_thresh.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 13
  %246 = ptrtoint ptr %rts_thresh.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %rts_thresh.i, align 8
  %conv9.i = zext i16 %247 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0.i, i32 %conv9.i)
  %cmp10.i = icmp ugt i32 %sz.0.i, %conv9.i
  br i1 %cmp10.i, label %if.then12.i, label %if.else13.i

if.then12.i:                                      ; preds = %if.then7.i579
  call void @__sanitizer_cov_trace_pc() #18
  %vcs_mode.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %248 = ptrtoint ptr %vcs_mode.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 1, ptr %vcs_mode.i, align 1
  br label %cleanup

if.else13.i:                                      ; preds = %if.then7.i579
  %rtsen.i = getelementptr inbounds %struct.sta_info, ptr %238, i32 0, i32 24
  %249 = ptrtoint ptr %rtsen.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %rtsen.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %tobool14.not.i = icmp eq i8 %250, 0
  br i1 %tobool14.not.i, label %if.else17.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #18
  %vcs_mode16.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %251 = ptrtoint ptr %vcs_mode16.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 1, ptr %vcs_mode16.i, align 1
  br label %cleanup

if.else17.i:                                      ; preds = %if.else13.i
  %cts2self.i = getelementptr inbounds %struct.sta_info, ptr %238, i32 0, i32 23
  %252 = ptrtoint ptr %cts2self.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %cts2self.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool18.not.i = icmp eq i8 %253, 0
  %vcs_mode22.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  br i1 %tobool18.not.i, label %if.else21.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #18
  %254 = ptrtoint ptr %vcs_mode22.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 2, ptr %vcs_mode22.i, align 1
  br label %cleanup

if.else21.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #18
  %255 = ptrtoint ptr %vcs_mode22.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 0, ptr %vcs_mode22.i, align 1
  br label %cleanup

while.body.i:                                     ; preds = %lor.lhs.false.i
  %assoc_AP_vendor.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 14
  %256 = ptrtoint ptr %assoc_AP_vendor.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %assoc_AP_vendor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %257)
  %cmp28.i = icmp eq i8 %257, 5
  br i1 %cmp28.i, label %land.lhs.true.i, label %while.body.i.if.end37.i_crit_edge

while.body.i.if.end37.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %ampdu_en.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 31
  %258 = ptrtoint ptr %ampdu_en.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %ampdu_en.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool31.not.i = icmp eq i8 %259, 0
  br i1 %tobool31.not.i, label %land.lhs.true.i.if.end37.i_crit_edge, label %land.lhs.true32.i

land.lhs.true.i.if.end37.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37.i

land.lhs.true32.i:                                ; preds = %land.lhs.true.i
  %dot11PrivacyAlgrthm.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  %260 = ptrtoint ptr %dot11PrivacyAlgrthm.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %dot11PrivacyAlgrthm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %261)
  %cmp33.i = icmp eq i32 %261, 4
  br i1 %cmp33.i, label %if.then35.i, label %land.lhs.true32.i.if.end37.i_crit_edge

land.lhs.true32.i.if.end37.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37.i

if.then35.i:                                      ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #18
  %vcs_mode36.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %262 = ptrtoint ptr %vcs_mode36.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 2, ptr %vcs_mode36.i, align 1
  br label %cleanup

if.end37.i:                                       ; preds = %land.lhs.true32.i.if.end37.i_crit_edge, %land.lhs.true.i.if.end37.i_crit_edge, %while.body.i.if.end37.i_crit_edge
  %rtsen38.i = getelementptr inbounds %struct.sta_info, ptr %238, i32 0, i32 24
  %263 = ptrtoint ptr %rtsen38.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %rtsen38.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool40.not.i = icmp eq i8 %264, 0
  br i1 %tobool40.not.i, label %lor.lhs.false41.i, label %if.then48.i

lor.lhs.false41.i:                                ; preds = %if.end37.i
  %cts2self42.i = getelementptr inbounds %struct.sta_info, ptr %238, i32 0, i32 23
  %265 = ptrtoint ptr %cts2self42.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %cts2self42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool44.not.i = icmp eq i8 %266, 0
  br i1 %tobool44.not.i, label %if.end57.i, label %if.then53.i

if.then48.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #18
  %vcs_mode49.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %267 = ptrtoint ptr %vcs_mode49.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 1, ptr %vcs_mode49.i, align 1
  br label %cleanup

if.then53.i:                                      ; preds = %lor.lhs.false41.i
  call void @__sanitizer_cov_trace_pc() #18
  %vcs_mode54.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %268 = ptrtoint ptr %vcs_mode54.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 2, ptr %vcs_mode54.i, align 1
  br label %cleanup

if.end57.i:                                       ; preds = %lor.lhs.false41.i
  %ht_en.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 26
  %269 = ptrtoint ptr %ht_en.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %ht_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %tobool58.not.i = icmp eq i8 %270, 0
  br i1 %tobool58.not.i, label %if.end57.i.if.end80.i_crit_edge, label %if.then59.i

if.end57.i.if.end80.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80.i

if.then59.i:                                      ; preds = %if.end57.i
  %HT_protection.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 23
  %271 = ptrtoint ptr %HT_protection.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %HT_protection.i, align 1
  %cur_bwmode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 5
  %273 = ptrtoint ptr %cur_bwmode.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %cur_bwmode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool61.not.i = icmp ne i8 %274, 0
  %275 = and i8 %272, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %275)
  %switch129.i = icmp eq i8 %275, 2
  %or.cond130.i = select i1 %tobool61.not.i, i1 %switch129.i, i1 false
  br i1 %or.cond130.i, label %if.then59.i.cleanup.i582_crit_edge, label %lor.lhs.false70.i

if.then59.i.cleanup.i582_crit_edge:               ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i582

lor.lhs.false70.i:                                ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool72.not.i = icmp eq i8 %274, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %272)
  %cmp75.i = icmp eq i8 %272, 3
  %or.cond.i581 = select i1 %tobool72.not.i, i1 %cmp75.i, i1 false
  br i1 %or.cond.i581, label %lor.lhs.false70.i.cleanup.i582_crit_edge, label %lor.lhs.false70.i.if.end80.i_crit_edge

lor.lhs.false70.i.if.end80.i_crit_edge:           ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80.i

lor.lhs.false70.i.cleanup.i582_crit_edge:         ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i582

cleanup.i582:                                     ; preds = %lor.lhs.false70.i.cleanup.i582_crit_edge, %if.then59.i.cleanup.i582_crit_edge
  %vcs_mode78.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %276 = ptrtoint ptr %vcs_mode78.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 1, ptr %vcs_mode78.i, align 1
  br label %cleanup

if.end80.i:                                       ; preds = %lor.lhs.false70.i.if.end80.i_crit_edge, %if.end57.i.if.end80.i_crit_edge
  %rts_thresh82.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 13
  %277 = ptrtoint ptr %rts_thresh82.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %rts_thresh82.i, align 8
  %conv83.i = zext i16 %278 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0.i, i32 %conv83.i)
  %cmp84.i = icmp ugt i32 %sz.0.i, %conv83.i
  br i1 %cmp84.i, label %if.then86.i, label %if.end88.i

if.then86.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #18
  %vcs_mode87.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %279 = ptrtoint ptr %vcs_mode87.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 1, ptr %vcs_mode87.i, align 1
  br label %cleanup

if.end88.i:                                       ; preds = %if.end80.i
  %ampdu_en89.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 31
  %280 = ptrtoint ptr %ampdu_en89.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %ampdu_en89.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %tobool90.not.i = icmp eq i8 %281, 0
  %vcs_mode94.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  br i1 %tobool90.not.i, label %if.end93.i, label %if.then91.i

if.then91.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #18
  %282 = ptrtoint ptr %vcs_mode94.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 1, ptr %vcs_mode94.i, align 1
  br label %cleanup

if.end93.i:                                       ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #18
  %283 = ptrtoint ptr %vcs_mode94.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 0, ptr %vcs_mode94.i, align 1
  br label %cleanup

if.else382:                                       ; preds = %xmitframe_swencrypt.exit
  call void @__sanitizer_cov_trace_pc() #18
  %vcs_mode = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %284 = ptrtoint ptr %vcs_mode to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 0, ptr %vcs_mode, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else382, %if.end93.i, %if.then91.i, %if.then86.i, %cleanup.i582, %if.then53.i, %if.then48.i, %if.then35.i, %if.else21.i, %if.then19.i, %if.then15.i, %if.then12.i, %do.end372, %do.body366.cleanup_crit_edge, %do.end29, %do.body23.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 1, %if.else382 ], [ 0, %do.end29 ], [ 0, %do.body23.cleanup_crit_edge ], [ 0, %do.end372 ], [ 0, %do.body366.cleanup_crit_edge ], [ 1, %if.then12.i ], [ 1, %if.then15.i ], [ 1, %if.then19.i ], [ 1, %if.else21.i ], [ 1, %if.then35.i ], [ 1, %if.then48.i ], [ 1, %if.then53.i ], [ 1, %cleanup.i582 ], [ 1, %if.then86.i ], [ 1, %if.then91.i ], [ 1, %if.end93.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pktfile) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtw_open_pktfile(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_rtw_pktfile_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @rtw_put_snap(ptr nocapture noundef writeonly %data, i16 noundef zeroext %h_proto) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -86, ptr %data, align 1
  %ssap = getelementptr inbounds %struct.ieee80211_snap_hdr, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %ssap to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -86, ptr %ssap, align 1
  %ctrl = getelementptr inbounds %struct.ieee80211_snap_hdr, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32457, i16 %h_proto)
  %switch.selectcmp.case1 = icmp eq i16 %h_proto, -32457
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32525, i16 %h_proto)
  %switch.selectcmp.case2 = icmp eq i16 %h_proto, -32525
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %oui5 = getelementptr inbounds %struct.ieee80211_snap_hdr, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %oui5 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %oui5, align 1
  %arrayidx9 = getelementptr %struct.ieee80211_snap_hdr, ptr %data, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx9, align 1
  %5 = select i1 %switch.selectcmp, i8 -8, i8 0
  %arrayidx12 = getelementptr %struct.ieee80211_snap_hdr, ptr %data, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx12, align 1
  %add.ptr = getelementptr i8, ptr %data, i32 6
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %h_proto, ptr %add.ptr, align 2
  ret i32 8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_endofpktfile(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_update_protection(ptr nocapture noundef %padapter, ptr noundef %ie, i32 noundef %ie_len) local_unnamed_addr #0 align 64 {
entry:
  %erp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %erp_len) #16
  %0 = ptrtoint ptr %erp_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %erp_len, align 4, !annotation !157
  %vcs_setting = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 13
  %1 = ptrtoint ptr %vcs_setting to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %vcs_setting, align 8
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %2, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %vcs = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 14
  %4 = ptrtoint ptr %vcs to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %vcs, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call = call ptr @rtw_get_ie(ptr noundef %ie, i32 noundef 42, ptr noundef nonnull %erp_len, i32 noundef %ie_len) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  %vcs2 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 14
  %5 = ptrtoint ptr %vcs2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %vcs2, align 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.default
  %add.ptr = getelementptr i8, ptr %call, i32 2
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 1
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.else12, label %if.then5

if.then5:                                         ; preds = %if.else
  %vcs_type = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 12
  %9 = ptrtoint ptr %vcs_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vcs_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp = icmp eq i8 %10, 1
  %vcs9 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 14
  br i1 %cmp, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %vcs9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %vcs9, align 1
  br label %sw.epilog

if.else10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %vcs9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %vcs9, align 1
  br label %sw.epilog

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %vcs13 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 14
  %13 = ptrtoint ptr %vcs13 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %vcs13, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else12, %if.else10, %if.then8, %if.then, %sw.bb, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %erp_len) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_ie(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_count_tx_stats(ptr nocapture noundef %padapter, ptr nocapture noundef readonly %pxmitframe, i32 noundef %sz) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %frame_tag = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 3
  %0 = ptrtoint ptr %frame_tag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frame_tag, align 4
  %and = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then:                                          ; preds = %entry
  %conv = sext i32 %sz to i64
  %tx_bytes = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 16
  %2 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tx_bytes, align 8
  %add = add i64 %3, %conv
  store i64 %add, ptr %tx_bytes, align 8
  %agg_num = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 7
  %4 = ptrtoint ptr %agg_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %agg_num, align 4
  %conv1 = zext i8 %5 to i32
  %LinkDetectInfo = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 27
  %6 = ptrtoint ptr %LinkDetectInfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %LinkDetectInfo, align 4
  %add2 = add i32 %7, %conv1
  store i32 %add2, ptr %LinkDetectInfo, align 4
  %psta3 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 40
  %8 = ptrtoint ptr %psta3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %psta3, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then.if.end11_crit_edge, label %if.then4

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %agg_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %agg_num, align 4
  %conv6 = zext i8 %11 to i64
  %tx_pkts = getelementptr inbounds %struct.sta_info, ptr %9, i32 0, i32 29, i32 18
  %12 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_pkts, align 8
  %add7 = add i64 %13, %conv6
  store i64 %add7, ptr %tx_pkts, align 8
  %tx_bytes9 = getelementptr inbounds %struct.sta_info, ptr %9, i32 0, i32 29, i32 19
  %14 = ptrtoint ptr %tx_bytes9 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_bytes9, align 8
  %add10 = add i64 %15, %conv
  store i64 %add10, ptr %tx_bytes9, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_alloc_xmitbuf_ext(ptr noundef %pxmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %free_xmit_extbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #16
  %0 = ptrtoint ptr %free_xmit_extbuf_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_xmit_extbuf_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %free_xmit_extbuf_queue
  br i1 %cmp.i.not, label %entry.if.end26_crit_edge, label %if.else

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.else:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
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
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.else.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.end.if.end26_crit_edge, label %if.then9

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then9:                                         ; preds = %if.end
  %free_xmit_extbuf_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 39
  %10 = ptrtoint ptr %free_xmit_extbuf_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %free_xmit_extbuf_cnt, align 8
  %dec = add i32 %11, -1
  store i32 %dec, ptr %free_xmit_extbuf_cnt, align 8
  %priv_data = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %priv_data, align 4
  %sctx = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sctx, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %if.then9.if.end26_crit_edge, label %do.body12

if.then9.if.end26_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

do.body12:                                        ; preds = %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %15 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp13 = icmp ugt i32 %15, 4
  br i1 %cmp13, label %do.end23, label %do.body12.if.end6.i_crit_edge

do.body12.if.end6.i_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i

do.end23:                                         ; preds = %do.body12
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #21
  %16 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load ptr, ptr %sctx, align 4
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %do.end23.if.end26_crit_edge, label %if.then.i

do.end23.if.end26_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then.i:                                        ; preds = %do.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr42 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr42)
  %cmp.i37 = icmp ugt i32 %.pr42, 4
  br i1 %cmp.i37, label %do.end.i, label %if.then.i.if.end6.i_crit_edge

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 3) #21
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i, %if.then.i.if.end6.i_crit_edge, %do.body12.if.end6.i_crit_edge
  %17 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sctx, align 4
  %status7.i = getelementptr inbounds %struct.submit_ctx, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %status7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %status7.i, align 4
  %20 = load ptr, ptr %sctx, align 4
  %done.i = getelementptr inbounds %struct.submit_ctx, ptr %20, i32 0, i32 3
  tail call void @complete(ptr noundef %done.i) #16
  %21 = ptrtoint ptr %sctx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %sctx, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end6.i, %do.end23.if.end26_crit_edge, %if.then9.if.end26_crit_edge, %if.end.if.end26_crit_edge, %entry.if.end26_crit_edge
  %pxmitbuf.040 = phi ptr [ %1, %if.then9.if.end26_crit_edge ], [ null, %if.end.if.end26_crit_edge ], [ %1, %do.end23.if.end26_crit_edge ], [ %1, %if.end6.i ], [ null, %entry.if.end26_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #16
  ret ptr %pxmitbuf.040
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_sctx_done_err(ptr nocapture noundef %sctx, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sctx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %status, label %if.then.if.end6_crit_edge [
    i32 1, label %if.then.do.body_crit_edge
    i32 3, label %if.then.do.body_crit_edge15
    i32 4, label %if.then.do.body_crit_edge16
    i32 9, label %if.then.do.body_crit_edge17
    i32 10, label %if.then.do.body_crit_edge18
  ]

if.then.do.body_crit_edge18:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then.do.body_crit_edge17:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then.do.body_crit_edge16:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then.do.body_crit_edge15:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

do.body:                                          ; preds = %if.then.do.body_crit_edge, %if.then.do.body_crit_edge15, %if.then.do.body_crit_edge16, %if.then.do.body_crit_edge17, %if.then.do.body_crit_edge18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %3 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %do.body.if.end6_crit_edge

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %status) #21
  br label %if.end6

if.end6:                                          ; preds = %do.end, %do.body.if.end6_crit_edge, %if.then.if.end6_crit_edge
  %4 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sctx, align 4
  %status7 = getelementptr inbounds %struct.submit_ctx, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %status7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %status, ptr %status7, align 4
  %7 = load ptr, ptr %sctx, align 4
  %done = getelementptr inbounds %struct.submit_ctx, ptr %7, i32 0, i32 3
  tail call void @complete(ptr noundef %done) #16
  %8 = ptrtoint ptr %sctx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sctx, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_free_xmitbuf_ext(ptr noundef %pxmitpriv, ptr noundef %pxmitbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pxmitbuf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body1:                                         ; preds = %entry
  %free_xmit_extbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pxmitbuf) #16
  br i1 %call.i.i, label %if.end.i.i, label %do.body1.list_del_init.exit_crit_edge

do.body1.list_del_init.exit_crit_edge:            ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pxmitbuf, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pxmitbuf, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body1.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %pxmitbuf, ptr %pxmitbuf, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pxmitbuf, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pxmitbuf, ptr %prev.i3.i, align 4
  %prev.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i14 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %pxmitbuf, ptr noundef %9, ptr noundef %free_xmit_extbuf_queue) #16
  br i1 %call.i.i14, label %if.end.i.i15, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i15:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pxmitbuf, ptr %prev.i, align 4
  %11 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %free_xmit_extbuf_queue, ptr %pxmitbuf, align 4
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev.i3.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %pxmitbuf, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i15, %list_del_init.exit.list_add_tail.exit_crit_edge
  %free_xmit_extbuf_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 39
  %14 = ptrtoint ptr %free_xmit_extbuf_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %free_xmit_extbuf_cnt, align 8
  %inc = add i32 %15, 1
  store i32 %inc, ptr %free_xmit_extbuf_cnt, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #16
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %list_add_tail.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_alloc_xmitbuf(ptr noundef %pxmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %free_xmitbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 31
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 31, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #16
  %0 = ptrtoint ptr %free_xmitbuf_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_xmitbuf_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %free_xmitbuf_queue
  br i1 %cmp.i.not, label %entry.if.end26_crit_edge, label %if.else

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.else:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
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
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.else.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.end.if.end26_crit_edge, label %if.then9

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then9:                                         ; preds = %if.end
  %free_xmitbuf_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 35
  %10 = ptrtoint ptr %free_xmitbuf_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %free_xmitbuf_cnt, align 8
  %dec = add i32 %11, -1
  store i32 %dec, ptr %free_xmitbuf_cnt, align 8
  %priv_data = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %priv_data, align 4
  %sctx = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sctx, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %if.then9.if.end26_crit_edge, label %do.body12

if.then9.if.end26_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

do.body12:                                        ; preds = %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %15 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp13 = icmp ugt i32 %15, 4
  br i1 %cmp13, label %do.end23, label %do.body12.if.end6.i_crit_edge

do.body12.if.end6.i_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i

do.end23:                                         ; preds = %do.body12
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.35) #21
  %16 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load ptr, ptr %sctx, align 4
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %do.end23.if.end26_crit_edge, label %if.then.i

do.end23.if.end26_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then.i:                                        ; preds = %do.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr42 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr42)
  %cmp.i37 = icmp ugt i32 %.pr42, 4
  br i1 %cmp.i37, label %do.end.i, label %if.then.i.if.end6.i_crit_edge

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 3) #21
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i, %if.then.i.if.end6.i_crit_edge, %do.body12.if.end6.i_crit_edge
  %17 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sctx, align 4
  %status7.i = getelementptr inbounds %struct.submit_ctx, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %status7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %status7.i, align 4
  %20 = load ptr, ptr %sctx, align 4
  %done.i = getelementptr inbounds %struct.submit_ctx, ptr %20, i32 0, i32 3
  tail call void @complete(ptr noundef %done.i) #16
  %21 = ptrtoint ptr %sctx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %sctx, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end6.i, %do.end23.if.end26_crit_edge, %if.then9.if.end26_crit_edge, %if.end.if.end26_crit_edge, %entry.if.end26_crit_edge
  %pxmitbuf.040 = phi ptr [ %1, %if.then9.if.end26_crit_edge ], [ null, %if.end.if.end26_crit_edge ], [ %1, %do.end23.if.end26_crit_edge ], [ %1, %if.end6.i ], [ null, %entry.if.end26_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #16
  ret ptr %pxmitbuf.040
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_free_xmitbuf(ptr noundef %pxmitpriv, ptr noundef %pxmitbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %free_xmitbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 31
  %tobool.not = icmp eq ptr %pxmitbuf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %sctx = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 9
  %0 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sctx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %do.body

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp ugt i32 %2, 4
  br i1 %cmp, label %do.end7, label %do.body.if.end6.i_crit_edge

do.body.if.end6.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i

do.end7:                                          ; preds = %do.body
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.36) #21
  %3 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load ptr, ptr %sctx, align 4
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %do.end7.if.end9_crit_edge, label %if.then.i

do.end7.if.end9_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then.i:                                        ; preds = %do.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr43 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr43)
  %cmp.i = icmp ugt i32 %.pr43, 4
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end6.i_crit_edge

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 4) #21
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i, %if.then.i.if.end6.i_crit_edge, %do.body.if.end6.i_crit_edge
  %4 = ptrtoint ptr %sctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sctx, align 4
  %status7.i = getelementptr inbounds %struct.submit_ctx, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %status7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %status7.i, align 4
  %7 = load ptr, ptr %sctx, align 4
  %done.i = getelementptr inbounds %struct.submit_ctx, ptr %7, i32 0, i32 3
  tail call void @complete(ptr noundef %done.i) #16
  %8 = ptrtoint ptr %sctx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sctx, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end6.i, %do.end7.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %ext_tag = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 5
  %9 = ptrtoint ptr %ext_tag to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ext_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool10.not = icmp eq i16 %10, 0
  br i1 %tobool10.not, label %do.body14, label %do.body1.i

do.body1.i:                                       ; preds = %if.end9
  %free_xmit_extbuf_queue.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36
  %lock.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #16
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pxmitbuf) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body1.i.list_del_init.exit.i_crit_edge

do.body1.i.list_del_init.exit.i_crit_edge:        ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pxmitbuf, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pxmitbuf, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %do.body1.i.list_del_init.exit.i_crit_edge
  %17 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %pxmitbuf, ptr %pxmitbuf, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %pxmitbuf, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pxmitbuf, ptr %prev.i3.i.i, align 4
  %prev.i.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 36, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %call.i.i14.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %pxmitbuf, ptr noundef %20, ptr noundef %free_xmit_extbuf_queue.i) #16
  br i1 %call.i.i14.i, label %if.end.i.i15.i, label %list_del_init.exit.i.rtw_free_xmitbuf_ext.exit_crit_edge

list_del_init.exit.i.rtw_free_xmitbuf_ext.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_free_xmitbuf_ext.exit

if.end.i.i15.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pxmitbuf, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %free_xmit_extbuf_queue.i, ptr %pxmitbuf, align 4
  %23 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev.i3.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %pxmitbuf, ptr %20, align 4
  br label %rtw_free_xmitbuf_ext.exit

rtw_free_xmitbuf_ext.exit:                        ; preds = %if.end.i.i15.i, %list_del_init.exit.i.rtw_free_xmitbuf_ext.exit_crit_edge
  %free_xmit_extbuf_cnt.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 39
  %25 = ptrtoint ptr %free_xmit_extbuf_cnt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %free_xmit_extbuf_cnt.i, align 8
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %free_xmit_extbuf_cnt.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #16
  br label %cleanup

do.body14:                                        ; preds = %if.end9
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 31, i32 1
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pxmitbuf) #16
  br i1 %call.i.i, label %if.end.i.i, label %do.body14.list_del_init.exit_crit_edge

do.body14.list_del_init.exit_crit_edge:           ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i39 = getelementptr inbounds %struct.list_head, ptr %pxmitbuf, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i39, align 4
  %29 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pxmitbuf, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body14.list_del_init.exit_crit_edge
  %33 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %pxmitbuf, ptr %pxmitbuf, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pxmitbuf, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pxmitbuf, ptr %prev.i3.i, align 4
  %prev.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 31, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i, align 4
  %call.i.i40 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %pxmitbuf, ptr noundef %36, ptr noundef %free_xmitbuf_queue) #16
  br i1 %call.i.i40, label %if.end.i.i41, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i41:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %pxmitbuf, ptr %prev.i, align 4
  %38 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %free_xmitbuf_queue, ptr %pxmitbuf, align 4
  %39 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev.i3.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %pxmitbuf, ptr %36, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i41, %list_del_init.exit.list_add_tail.exit_crit_edge
  %free_xmitbuf_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 35
  %41 = ptrtoint ptr %free_xmitbuf_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %free_xmitbuf_cnt, align 8
  %inc = add i32 %42, 1
  store i32 %inc, ptr %free_xmitbuf_cnt, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #16
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %rtw_free_xmitbuf_ext.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %list_add_tail.exit ], [ 1, %rtw_free_xmitbuf_ext.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_alloc_xmitframe(ptr noundef %pxmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %free_xmit_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 10
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 10, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %0 = ptrtoint ptr %free_xmit_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_xmit_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %free_xmit_queue
  br i1 %cmp.i.not, label %entry.if.end4_crit_edge, label %if.else

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.else:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
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
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.else.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %free_xmitframe_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 9
  %10 = ptrtoint ptr %free_xmitframe_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %free_xmitframe_cnt, align 8
  %dec = add i32 %11, -1
  store i32 %dec, ptr %free_xmitframe_cnt, align 8
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %buf_addr, align 4
  %pxmitbuf = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pxmitbuf, align 4
  %attrib = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 1
  %14 = call ptr @memset(ptr %attrib, i32 0, i32 108)
  %frame_tag = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %frame_tag to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %frame_tag, align 4
  %pkt = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pkt, align 4
  %pkt_offset = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %pkt_offset to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %pkt_offset, align 1
  %agg_num = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %agg_num to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %agg_num, align 4
  %ack_report = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %ack_report to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %ack_report, align 2
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %pxframe.022 = phi ptr [ %1, %if.then3 ], [ null, %if.end.if.end4_crit_edge ], [ null, %entry.if.end4_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  ret ptr %pxframe.022
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_free_xmitframe(ptr noundef %pxmitpriv, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %free_xmit_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 10
  %adapter = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 12
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %tobool.not = icmp eq ptr %pxmitframe, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 10, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pxmitframe) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pxmitframe, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pxmitframe, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %pxmitframe, ptr %pxmitframe, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pxmitframe, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pxmitframe, ptr %prev.i3.i, align 4
  %pkt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 2
  %10 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pkt, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %list_del_init.exit.if.end5_crit_edge, label %if.then2

list_del_init.exit.if.end5_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then2:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %pkt, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %list_del_init.exit.if.end5_crit_edge
  %prev.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 10, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i21 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %pxmitframe, ptr noundef %14, ptr noundef %free_xmit_queue) #16
  br i1 %call.i.i21, label %if.end.i.i22, label %if.end5.list_add_tail.exit_crit_edge

if.end5.list_add_tail.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i22:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pxmitframe, ptr %prev.i, align 4
  %16 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %free_xmit_queue, ptr %pxmitframe, align 4
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev.i3.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %pxmitframe, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i22, %if.end5.list_add_tail.exit_crit_edge
  %free_xmitframe_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 9
  %19 = ptrtoint ptr %free_xmitframe_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %free_xmitframe_cnt, align 8
  %inc = add i32 %20, 1
  store i32 %inc, ptr %free_xmitframe_cnt, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  br i1 %tobool1.not, label %list_add_tail.exit.exit_crit_edge, label %if.then9

list_add_tail.exit.exit_crit_edge:                ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.then9:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rtw_os_pkt_complete(ptr noundef %1, ptr noundef nonnull %11) #16
  br label %exit

exit:                                             ; preds = %if.then9, %list_add_tail.exit.exit_crit_edge, %entry.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_pkt_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_xmitframe_queue(ptr noundef %pxmitpriv, ptr noundef %pframequeue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.__queue, ptr %pframequeue, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %0 = ptrtoint ptr %pframequeue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pframequeue, align 4
  %cmp.not9 = icmp eq ptr %1, %pframequeue
  br i1 %cmp.not9, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %plist.010 = phi ptr [ %3, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %plist.010 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plist.010, align 4
  %call2 = tail call i32 @rtw_free_xmitframe(ptr noundef %pxmitpriv, ptr noundef %plist.010)
  %cmp.not = icmp eq ptr %3, %pframequeue
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_xmitframe_enqueue(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_xmit_classifier(ptr noundef %padapter, ptr noundef %pxmitframe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp ne i32 %call, 0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_xmit_classifier(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hwxmits = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 21
  %0 = ptrtoint ptr %hwxmits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwxmits, align 8
  %psta1 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 40
  %2 = ptrtoint ptr %psta1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psta1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end:                                           ; preds = %entry
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ra) #16
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %4 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp ugt i32 %4, 4
  br i1 %cmp, label %do.end, label %if.then4.exit_crit_edge

if.then4.exit_crit_edge:                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #21
  br label %exit

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  %psta.042 = phi ptr [ %call, %if.end.if.end11_crit_edge ], [ %3, %entry.if.end11_crit_edge ]
  %priority = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 16
  %5 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %priority, align 2
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %6, label %sw.default.i [
    i8 1, label %if.end11.sw.bb.i_crit_edge
    i8 2, label %if.end11.sw.bb.i_crit_edge43
    i8 4, label %if.end11.sw.bb1.i_crit_edge
    i8 5, label %if.end11.sw.bb1.i_crit_edge44
    i8 6, label %if.end11.sw.bb3.i_crit_edge
    i8 7, label %if.end11.sw.bb3.i_crit_edge45
  ]

if.end11.sw.bb3.i_crit_edge45:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i

if.end11.sw.bb3.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i

if.end11.sw.bb1.i_crit_edge44:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i

if.end11.sw.bb1.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i

if.end11.sw.bb.i_crit_edge43:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

if.end11.sw.bb.i_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end11.sw.bb.i_crit_edge, %if.end11.sw.bb.i_crit_edge43
  %bk_q.i = getelementptr inbounds %struct.sta_info, ptr %psta.042, i32 0, i32 3, i32 4
  br label %rtw_get_sta_pending.exit

sw.bb1.i:                                         ; preds = %if.end11.sw.bb1.i_crit_edge, %if.end11.sw.bb1.i_crit_edge44
  %vi_q.i = getelementptr inbounds %struct.sta_info, ptr %psta.042, i32 0, i32 3, i32 5
  br label %rtw_get_sta_pending.exit

sw.bb3.i:                                         ; preds = %if.end11.sw.bb3.i_crit_edge, %if.end11.sw.bb3.i_crit_edge45
  %vo_q.i = getelementptr inbounds %struct.sta_info, ptr %psta.042, i32 0, i32 3, i32 6
  br label %rtw_get_sta_pending.exit

sw.default.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %be_q.i = getelementptr inbounds %struct.sta_info, ptr %psta.042, i32 0, i32 3, i32 3
  br label %rtw_get_sta_pending.exit

rtw_get_sta_pending.exit:                         ; preds = %sw.default.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.i
  %.sink.i = phi i32 [ 2, %sw.default.i ], [ 0, %sw.bb3.i ], [ 1, %sw.bb1.i ], [ 3, %sw.bb.i ]
  %ptxservq.0.i = phi ptr [ %be_q.i, %sw.default.i ], [ %vo_q.i, %sw.bb3.i ], [ %vi_q.i, %sw.bb1.i ], [ %bk_q.i, %sw.bb.i ]
  %8 = ptrtoint ptr %ptxservq.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ptxservq.0.i, align 4
  %cmp.i.not = icmp eq ptr %9, %ptxservq.0.i
  br i1 %cmp.i.not, label %if.then15, label %rtw_get_sta_pending.exit.if.end18_crit_edge

rtw_get_sta_pending.exit.if.end18_crit_edge:      ; preds = %rtw_get_sta_pending.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then15:                                        ; preds = %rtw_get_sta_pending.exit
  %arrayidx = getelementptr %struct.hw_xmit, ptr %1, i32 %.sink.i
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ptxservq.0.i, ptr noundef %13, ptr noundef %11) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.then15.if.end18_crit_edge

if.then15.if.end18_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.end.i.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ptxservq.0.i, ptr %prev.i, align 4
  %15 = ptrtoint ptr %ptxservq.0.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %11, ptr %ptxservq.0.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ptxservq.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %ptxservq.0.i, ptr %13, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end.i.i, %if.then15.if.end18_crit_edge, %rtw_get_sta_pending.exit.if.end18_crit_edge
  %sta_pending = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i, i32 0, i32 1
  %prev.i34 = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i34, align 4
  %call.i.i35 = tail call zeroext i1 @__list_add_valid(ptr noundef %pxmitframe, ptr noundef %19, ptr noundef %sta_pending) #16
  br i1 %call.i.i35, label %if.end.i.i37, label %if.end18.list_add_tail.exit38_crit_edge

if.end18.list_add_tail.exit38_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit38

if.end.i.i37:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %prev.i34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pxmitframe, ptr %prev.i34, align 4
  %21 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sta_pending, ptr %pxmitframe, align 4
  %prev3.i.i36 = getelementptr inbounds %struct.list_head, ptr %pxmitframe, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i36, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %pxmitframe, ptr %19, align 4
  br label %list_add_tail.exit38

list_add_tail.exit38:                             ; preds = %if.end.i.i37, %if.end18.list_add_tail.exit38_crit_edge
  %qcnt = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i, i32 0, i32 2
  %24 = ptrtoint ptr %qcnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qcnt, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %qcnt, align 4
  %accnt = getelementptr %struct.hw_xmit, ptr %1, i32 %.sink.i, i32 1
  %26 = ptrtoint ptr %accnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %accnt, align 4
  %inc22 = add i32 %27, 1
  store i32 %inc22, ptr %accnt, align 4
  br label %exit

exit:                                             ; preds = %list_add_tail.exit38, %do.end, %if.then4.exit_crit_edge
  %res.0 = phi i32 [ 1, %list_add_tail.exit38 ], [ 0, %do.end ], [ 0, %if.then4.exit_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_dequeue_xframe(ptr noundef %pxmitpriv, ptr nocapture noundef %phwxmit_i, i32 noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  %inx = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 12
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inx) #16
  %2 = getelementptr inbounds [4 x i32], ptr %inx, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i32], ptr %inx, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i32], ptr %inx, i32 0, i32 3
  %5 = ptrtoint ptr %inx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %inx, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %2, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %3, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %4, align 4
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 13, i32 44
  %9 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp = icmp eq i8 %10, 1
  br i1 %cmp, label %for.body.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx8 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 23, i32 0
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %12 to i32
  %13 = ptrtoint ptr %inx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv9, ptr %inx, align 4
  %arrayidx8.1 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 23, i32 1
  %14 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.1, align 1
  %conv9.1 = zext i8 %15 to i32
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv9.1, ptr %2, align 4
  %arrayidx8.2 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 23, i32 2
  %17 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx8.2, align 1
  %conv9.2 = zext i8 %18 to i32
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv9.2, ptr %3, align 4
  %arrayidx8.3 = getelementptr %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 23, i32 3
  %20 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx8.3, align 1
  %conv9.3 = zext i8 %21 to i32
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv9.3, ptr %4, align 4
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %pxmitpriv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entry1)
  %cmp1252 = icmp sgt i32 %entry1, 0
  br i1 %cmp1252, label %if.end.for.body14_crit_edge, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end.for.body14_crit_edge:                      ; preds = %if.end
  br label %for.body14

for.body14:                                       ; preds = %for.inc27.for.body14_crit_edge, %if.end.for.body14_crit_edge
  %i.053 = phi i32 [ %inc28, %for.inc27.for.body14_crit_edge ], [ 0, %if.end.for.body14_crit_edge ]
  %arrayidx15 = getelementptr [4 x i32], ptr %inx, i32 0, i32 %i.053
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx15, align 4
  %add.ptr = getelementptr %struct.hw_xmit, ptr %phwxmit_i, i32 %24
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  br label %while.cond

while.cond:                                       ; preds = %dequeue_one_xmitframe.exit.while.cond_crit_edge, %for.body14
  %sta_plist.0.in = phi ptr [ %26, %for.body14 ], [ %sta_plist.0, %dequeue_one_xmitframe.exit.while.cond_crit_edge ]
  %27 = ptrtoint ptr %sta_plist.0.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %sta_plist.0 = load ptr, ptr %sta_plist.0.in, align 4
  %cmp16.not = icmp eq ptr %26, %sta_plist.0
  br i1 %cmp16.not, label %for.inc27, label %while.body

while.body:                                       ; preds = %while.cond
  %sta_pending = getelementptr inbounds %struct.tx_servq, ptr %sta_plist.0, i32 0, i32 1
  %28 = ptrtoint ptr %sta_pending to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sta_pending, align 4
  %cmp.not.i = icmp eq ptr %29, %sta_pending
  br i1 %cmp.not.i, label %while.body.dequeue_one_xmitframe.exit_crit_edge, label %if.then.i

while.body.dequeue_one_xmitframe.exit_crit_edge:  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %dequeue_one_xmitframe.exit

if.then.i:                                        ; preds = %while.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %29) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %29, ptr %29, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %29, ptr %prev.i3.i.i, align 4
  %qcnt.i = getelementptr inbounds %struct.tx_servq, ptr %sta_plist.0, i32 0, i32 2
  %38 = ptrtoint ptr %qcnt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qcnt.i, align 4
  %dec.i = add i32 %39, -1
  store i32 %dec.i, ptr %qcnt.i, align 4
  br label %dequeue_one_xmitframe.exit

dequeue_one_xmitframe.exit:                       ; preds = %list_del_init.exit.i, %while.body.dequeue_one_xmitframe.exit_crit_edge
  %pxmitframe.0.i = phi ptr [ %29, %list_del_init.exit.i ], [ null, %while.body.dequeue_one_xmitframe.exit_crit_edge ]
  %tobool.not = icmp eq ptr %pxmitframe.0.i, null
  br i1 %tobool.not, label %dequeue_one_xmitframe.exit.while.cond_crit_edge, label %if.then20

dequeue_one_xmitframe.exit.while.cond_crit_edge:  ; preds = %dequeue_one_xmitframe.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

if.then20:                                        ; preds = %dequeue_one_xmitframe.exit
  %accnt = getelementptr %struct.hw_xmit, ptr %phwxmit_i, i32 %24, i32 1
  %40 = ptrtoint ptr %accnt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %accnt, align 4
  %dec = add i32 %41, -1
  store i32 %dec, ptr %accnt, align 4
  %42 = ptrtoint ptr %sta_pending to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %sta_pending, align 4
  %cmp.i.not = icmp eq ptr %43, %sta_pending
  br i1 %cmp.i.not, label %if.then23, label %if.then20.exit_crit_edge

if.then20.exit_crit_edge:                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.then23:                                        ; preds = %if.then20
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sta_plist.0) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.then23.list_del_init.exit_crit_edge

if.then23.list_del_init.exit_crit_edge:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sta_plist.0, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i, align 4
  %46 = ptrtoint ptr %sta_plist.0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sta_plist.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then23.list_del_init.exit_crit_edge
  %50 = ptrtoint ptr %sta_plist.0 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %sta_plist.0, ptr %sta_plist.0, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %sta_plist.0, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %sta_plist.0, ptr %prev.i3.i, align 4
  br label %exit

for.inc27:                                        ; preds = %while.cond
  %inc28 = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc28, %entry1
  br i1 %exitcond.not, label %for.inc27.exit_crit_edge, label %for.inc27.for.body14_crit_edge

for.inc27.for.body14_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body14

for.inc27.exit_crit_edge:                         ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

exit:                                             ; preds = %for.inc27.exit_crit_edge, %list_del_init.exit, %if.then20.exit_crit_edge, %if.end.exit_crit_edge
  %pxmitframe.2 = phi ptr [ %pxmitframe.0.i, %list_del_init.exit ], [ %pxmitframe.0.i, %if.then20.exit_crit_edge ], [ null, %if.end.exit_crit_edge ], [ null, %for.inc27.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %pxmitpriv) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inx) #16
  ret ptr %pxmitframe.2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @rtw_get_sta_pending(ptr nocapture readnone %padapter, ptr noundef readnone %psta, i32 noundef %up, ptr nocapture noundef writeonly %ac) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %up to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %up, label %sw.default [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge13
    i32 4, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge14
    i32 6, label %entry.sw.bb3_crit_edge
    i32 7, label %entry.sw.bb3_crit_edge15
  ]

entry.sw.bb3_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3

entry.sw.bb1_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge13
  %bk_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge14
  %vi_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge15
  %vo_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %be_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb
  %.sink = phi i8 [ 2, %sw.default ], [ 0, %sw.bb3 ], [ 1, %sw.bb1 ], [ 3, %sw.bb ]
  %ptxservq.0 = phi ptr [ %be_q, %sw.default ], [ %vo_q, %sw.bb3 ], [ %vi_q, %sw.bb1 ], [ %bk_q, %sw.bb ]
  %1 = ptrtoint ptr %ac to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %.sink, ptr %ac, align 1
  ret ptr %ptxservq.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_get_ff_hwaddr(ptr nocapture noundef readonly %pxmitframe) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %qsel = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 35
  %0 = ptrtoint ptr %qsel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %qsel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %1)
  %2 = icmp ult i8 %1, 18
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %3 = sext i8 %1 to i32
  %switch.gep = getelementptr inbounds [18 x i32], ptr @switch.table.rtw_get_ff_hwaddr, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %addr.0 = phi i32 [ %switch.load, %switch.lookup ], [ 5, %entry.sw.epilog_crit_edge ]
  ret i32 %addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_xmit(ptr noundef %padapter, ptr nocapture noundef %ppkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %free_xmit_queue.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 10
  %lock.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 10, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #16
  %0 = ptrtoint ptr %free_xmit_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_xmit_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %free_xmit_queue.i
  br i1 %cmp.i.not.i, label %entry.do.body_crit_edge, label %if.else.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.else.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
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
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.i, %if.else.i.if.end.i_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i.i, align 4
  %tobool2.not.i = icmp eq ptr %1, null
  br i1 %tobool2.not.i, label %if.end.i.do.body_crit_edge, label %if.end6

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %if.end.i.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %10 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp = icmp ugt i32 %10, 4
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #21
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  %free_xmitframe_cnt.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 9
  %11 = ptrtoint ptr %free_xmitframe_cnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %free_xmitframe_cnt.i, align 8
  %dec.i = add i32 %12, -1
  store i32 %dec.i, ptr %free_xmitframe_cnt.i, align 8
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %buf_addr.i, align 4
  %pxmitbuf.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %pxmitbuf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pxmitbuf.i, align 4
  %attrib.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 1
  %15 = call ptr @memset(ptr %attrib.i, i32 0, i32 108)
  %frame_tag.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %frame_tag.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %frame_tag.i, align 4
  %pkt.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pkt.i, align 4
  %pkt_offset.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %pkt_offset.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %pkt_offset.i, align 1
  %agg_num.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %agg_num.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %agg_num.i, align 4
  %ack_report.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %ack_report.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %ack_report.i, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #16
  %21 = tail call i32 @llvm.read_register.i32(metadata !147) #16
  %and.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !158
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end6.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end6.rcu_read_lock.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end6
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 696, ptr noundef nonnull @.str.52) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end6.rcu_read_lock.exit_crit_edge
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %25 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pnetdev, align 4
  %rx_handler_data = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 95
  %27 = ptrtoint ptr %rx_handler_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %rx_handler_data, align 4
  %call12 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end21_crit_edge

rcu_read_lock.exit.do.end21_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end21

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true
  %.b77 = load i1, ptr @rtw_xmit.__warned, align 1
  br i1 %.b77, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rtw_xmit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 1733, ptr noundef nonnull @.str.41) #16
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true.do.end21_crit_edge, %rcu_read_lock.exit.do.end21_crit_edge
  %call.i78 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i78, label %do.end21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i81

do.end21.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i81:                                ; preds = %do.end21
  %call1.i79 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %tobool.not.i80 = icmp eq i32 %call1.i79, 0
  br i1 %tobool.not.i80, label %land.lhs.true.i81.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i83

land.lhs.true.i81.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i83:                               ; preds = %land.lhs.true.i81
  %.b4.i82 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i82, label %land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge, label %if.then.i84

land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i84:                                      ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 724, ptr noundef nonnull @.str.53) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i84, %land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i81.rcu_read_unlock.exit_crit_edge, %do.end21.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !159
  %29 = tail call i32 @llvm.read_register.i32(metadata !147) #16
  %and.i.i.i.i.i85 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i85 to ptr
  %preempt_count.i.i.i.i86 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i86, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i86, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %tobool23.not = icmp eq ptr %28, null
  br i1 %tobool23.not, label %rcu_read_unlock.exit.if.end33_crit_edge, label %land.lhs.true24

rcu_read_unlock.exit.if.end33_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

land.lhs.true24:                                  ; preds = %rcu_read_unlock.exit
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %34, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i87.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i87.not, label %land.lhs.true24.if.end33_crit_edge, label %if.then27

land.lhs.true24.if.end33_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then27:                                        ; preds = %land.lhs.true24
  %35 = ptrtoint ptr %ppkt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ppkt, align 4
  %37 = tail call i32 @llvm.read_register.i32(metadata !147) #16
  %and.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !158
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %if.then27.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then27.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then27
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 696, ptr noundef nonnull @.str.52) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then27.rcu_read_lock.exit.i_crit_edge
  %41 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pnetdev, align 4
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 95
  %43 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call.i88 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i89 = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i89, label %land.lhs.true.i90, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true.i90:                                ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i90.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i90.do.end7.i_crit_edge:            ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i90
  %.b429.i = load i1, ptr @rtw_br_client_tx.__warned, align 1
  br i1 %.b429.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i91

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

if.then.i91:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rtw_br_client_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 1551, ptr noundef nonnull @.str.41) #16
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i91, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i90.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %call.i432.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i432.i, label %do.end7.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i435.i

do.end7.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true.i435.i:                             ; preds = %do.end7.i
  %call1.i433.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i433.i)
  %tobool.not.i434.i = icmp eq i32 %call1.i433.i, 0
  br i1 %tobool.not.i434.i, label %land.lhs.true.i435.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i437.i

land.lhs.true.i435.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i435.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i437.i:                            ; preds = %land.lhs.true.i435.i
  %.b4.i436.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i436.i, label %land.lhs.true2.i437.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i438.i

land.lhs.true2.i437.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i437.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

if.then.i438.i:                                   ; preds = %land.lhs.true2.i437.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 724, ptr noundef nonnull @.str.53) #16
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i438.i, %land.lhs.true2.i437.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i435.i.rcu_read_unlock.exit.i_crit_edge, %do.end7.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !159
  %45 = tail call i32 @llvm.read_register.i32(metadata !147) #16
  %and.i.i.i.i.i439.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i439.i to ptr
  %preempt_count.i.i.i.i440.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i440.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i440.i, align 4
  %sub.i.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i440.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %br_ext_lock.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 53
  tail call void @_raw_spin_lock_bh(ptr noundef %br_ext_lock.i) #16
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 19
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 1
  %53 = and i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool9.not.i = icmp ne i8 %53, 0
  %tobool11.not.i = icmp eq ptr %44, null
  %or.cond.i = select i1 %tobool9.not.i, i1 true, i1 %tobool11.not.i
  br i1 %or.cond.i, label %rcu_read_unlock.exit.i.if.else.i92_crit_edge, label %land.lhs.true12.i

rcu_read_unlock.exit.i.if.else.i92_crit_edge:     ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i92

land.lhs.true12.i:                                ; preds = %rcu_read_unlock.exit.i
  %add.ptr.i = getelementptr i8, ptr %50, i32 6
  %br_mac.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 60
  %bcmp427.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr.i, ptr noundef dereferenceable(6) %br_mac.i, i32 6) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp427.i)
  %tobool15.not.i = icmp eq i32 %bcmp427.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true12.i.if.else.i92_crit_edge, label %land.lhs.true16.i

land.lhs.true12.i.if.else.i92_crit_edge:          ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i92

land.lhs.true16.i:                                ; preds = %land.lhs.true12.i
  %add.ptr18.i = getelementptr i8, ptr %50, i32 12
  %54 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr18.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %55)
  %cond.i = icmp eq i16 %55, 2048
  br i1 %cond.i, label %land.lhs.true27.i, label %land.lhs.true16.i.if.else.i92_crit_edge

land.lhs.true16.i.if.else.i92_crit_edge:          ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i92

land.lhs.true27.i:                                ; preds = %land.lhs.true16.i
  %scdb_mac.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 57
  %bcmp428.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %scdb_mac.i, ptr noundef dereferenceable(6) %add.ptr.i, i32 6) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp428.i)
  %tobool32.not.i = icmp eq i32 %bcmp428.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true33.i, label %land.lhs.true27.i.if.else.i92_crit_edge

land.lhs.true27.i.if.else.i92_crit_edge:          ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i92

land.lhs.true33.i:                                ; preds = %land.lhs.true27.i
  %scdb_entry.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 59
  %56 = ptrtoint ptr %scdb_entry.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %scdb_entry.i, align 8
  %tobool34.not.i = icmp eq ptr %57, null
  br i1 %tobool34.not.i, label %land.lhs.true33.i.if.else.i92_crit_edge, label %if.then35.i

land.lhs.true33.i.if.else.i92_crit_edge:          ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i92

if.then35.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #18
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %58 = call ptr @memcpy(ptr %add.ptr.i, ptr %mac_addr.i, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %60 = ptrtoint ptr %scdb_entry.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %scdb_entry.i, align 8
  %ageing_timer.i = getelementptr inbounds %struct.nat25_network_db_entry, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %ageing_timer.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %59, ptr %ageing_timer.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %br_ext_lock.i) #16
  br label %if.end283.i

if.else.i92:                                      ; preds = %land.lhs.true33.i.if.else.i92_crit_edge, %land.lhs.true27.i.if.else.i92_crit_edge, %land.lhs.true16.i.if.else.i92_crit_edge, %land.lhs.true12.i.if.else.i92_crit_edge, %rcu_read_unlock.exit.i.if.else.i92_crit_edge
  %add.ptr42.i = getelementptr i8, ptr %50, i32 12
  %63 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %add.ptr42.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %64)
  %cmp44.i = icmp eq i16 %64, -32512
  br i1 %cmp44.i, label %if.then46.i, label %if.else.i92.if.end63.i_crit_edge

if.else.i92.if.end63.i_crit_edge:                 ; preds = %if.else.i92
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63.i

if.then46.i:                                      ; preds = %if.else.i92
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr49.i = getelementptr i8, ptr %50, i32 14
  %65 = ptrtoint ptr %add.ptr49.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %add.ptr49.i, align 2
  %add.ptr54.i = getelementptr i8, ptr %50, i32 10
  %67 = ptrtoint ptr %add.ptr54.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %add.ptr54.i, align 2
  store i16 %68, ptr %add.ptr49.i, align 2
  %69 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i, align 4
  %add.ptr55.1.i = getelementptr i8, ptr %70, i32 8
  %71 = ptrtoint ptr %add.ptr55.1.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %add.ptr55.1.i, align 2
  %add.ptr61.1.i = getelementptr i8, ptr %70, i32 12
  %73 = ptrtoint ptr %add.ptr61.1.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %add.ptr61.1.i, align 2
  %74 = load ptr, ptr %data.i, align 4
  %add.ptr55.2.i = getelementptr i8, ptr %74, i32 6
  %75 = ptrtoint ptr %add.ptr55.2.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %add.ptr55.2.i, align 2
  %add.ptr61.2.i = getelementptr i8, ptr %74, i32 10
  %77 = ptrtoint ptr %add.ptr61.2.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %add.ptr61.2.i, align 2
  %78 = load ptr, ptr %data.i, align 4
  %add.ptr55.3.i = getelementptr i8, ptr %78, i32 4
  %79 = ptrtoint ptr %add.ptr55.3.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %add.ptr55.3.i, align 2
  %add.ptr61.3.i = getelementptr i8, ptr %78, i32 8
  %81 = ptrtoint ptr %add.ptr61.3.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %add.ptr61.3.i, align 2
  %82 = load ptr, ptr %data.i, align 4
  %add.ptr55.4.i = getelementptr i8, ptr %82, i32 2
  %83 = ptrtoint ptr %add.ptr55.4.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %add.ptr55.4.i, align 2
  %add.ptr61.4.i = getelementptr i8, ptr %82, i32 6
  %85 = ptrtoint ptr %add.ptr61.4.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %add.ptr61.4.i, align 2
  %86 = load ptr, ptr %data.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %86, align 2
  %add.ptr61.5.i = getelementptr i8, ptr %86, i32 4
  %89 = ptrtoint ptr %add.ptr61.5.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %add.ptr61.5.i, align 2
  %call62.i = tail call ptr @skb_pull(ptr noundef %36, i32 noundef 4) #16
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then46.i, %if.else.i92.if.end63.i_crit_edge
  %vlan_hdr.0.i = phi i16 [ %66, %if.then46.i ], [ 0, %if.else.i92.if.end63.i_crit_edge ]
  %90 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %91, i32 6
  %br_mac66.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 60
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr65.i, ptr noundef dereferenceable(6) %br_mac66.i, i32 6) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool69.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool69.not.i, label %land.lhs.true70.i, label %if.end63.i.if.end81.i_crit_edge

if.end63.i.if.end81.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end81.i

land.lhs.true70.i:                                ; preds = %if.end63.i
  %add.ptr72.i = getelementptr i8, ptr %91, i32 12
  %92 = ptrtoint ptr %add.ptr72.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %add.ptr72.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %93)
  %cmp74.i = icmp eq i16 %93, 2048
  br i1 %cmp74.i, label %if.then76.i, label %land.lhs.true70.i.if.end81.i_crit_edge

land.lhs.true70.i.if.end81.i_crit_edge:           ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end81.i

if.then76.i:                                      ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #18
  %br_ip.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 61
  %add.ptr80.i = getelementptr i8, ptr %91, i32 26
  %94 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %add.ptr80.i, align 1
  %96 = ptrtoint ptr %br_ip.i to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %95, ptr %br_ip.i, align 2
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then76.i, %land.lhs.true70.i.if.end81.i_crit_edge, %if.end63.i.if.end81.i_crit_edge
  %97 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data.i, align 4
  %add.ptr83.i = getelementptr i8, ptr %98, i32 12
  %99 = ptrtoint ptr %add.ptr83.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %add.ptr83.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %100)
  %cmp85.i = icmp eq i16 %100, 2048
  br i1 %cmp85.i, label %if.then87.i, label %if.end81.i.if.then130.i_crit_edge

if.end81.i.if.then130.i_crit_edge:                ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then130.i

if.then87.i:                                      ; preds = %if.end81.i
  %scdb_mac88.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 57
  %add.ptr91.i = getelementptr i8, ptr %98, i32 6
  %bcmp426.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %scdb_mac88.i, ptr noundef dereferenceable(6) %add.ptr91.i, i32 6) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp426.i)
  %tobool93.not.i = icmp eq i32 %bcmp426.i, 0
  br i1 %tobool93.not.i, label %if.else114.i, label %if.then94.i

if.then94.i:                                      ; preds = %if.then87.i
  %add.ptr97.i = getelementptr i8, ptr %98, i32 26
  %call98.i = tail call ptr @scdb_findEntry(ptr noundef %padapter, ptr noundef %add.ptr97.i) #16
  %scdb_entry99.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 59
  %101 = ptrtoint ptr %scdb_entry99.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call98.i, ptr %scdb_entry99.i, align 8
  %tobool101.not.i = icmp eq ptr %call98.i, null
  br i1 %tobool101.not.i, label %if.then94.i.if.then130.i_crit_edge, label %if.then102.i

if.then94.i.if.then130.i_crit_edge:               ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then130.i

if.then102.i:                                     ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #18
  %102 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data.i, align 4
  %add.ptr106.i = getelementptr i8, ptr %103, i32 6
  %104 = call ptr @memcpy(ptr %scdb_mac88.i, ptr %add.ptr106.i, i32 6)
  %scdb_ip.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 58
  %105 = load ptr, ptr %data.i, align 4
  %add.ptr110.i = getelementptr i8, ptr %105, i32 26
  %106 = ptrtoint ptr %add.ptr110.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %add.ptr110.i, align 1
  %108 = ptrtoint ptr %scdb_ip.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %scdb_ip.i, align 4
  br label %if.end254.sink.split.i

if.else114.i:                                     ; preds = %if.then87.i
  %scdb_entry115.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 59
  %109 = ptrtoint ptr %scdb_entry115.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %scdb_entry115.i, align 8
  %tobool116.not.i = icmp eq ptr %110, null
  br i1 %tobool116.not.i, label %if.else120.i, label %if.else114.i.if.end254.sink.split.i_crit_edge

if.else114.i.if.end254.sink.split.i_crit_edge:    ; preds = %if.else114.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end254.sink.split.i

if.else120.i:                                     ; preds = %if.else114.i
  call void @__sanitizer_cov_trace_pc() #18
  %111 = call ptr @memset(ptr %scdb_mac88.i, i32 0, i32 10)
  br label %if.then130.i

if.then130.i:                                     ; preds = %if.else120.i, %if.then94.i.if.then130.i_crit_edge, %if.end81.i.if.then130.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %br_ext_lock.i) #16
  %call131.i = tail call i32 @nat25_db_handle(ptr noundef %padapter, ptr noundef %36, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131.i)
  %cmp132.i = icmp eq i32 %call131.i, 0
  br i1 %cmp132.i, label %if.then134.i, label %if.then130.i.if.end200.i_crit_edge

if.then130.i.if.end200.i_crit_edge:               ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end200.i

if.then134.i:                                     ; preds = %if.then130.i
  br i1 %cmp44.i, label %if.then136.i, label %if.then134.i.if.end157.i_crit_edge

if.then134.i.if.end157.i_crit_edge:               ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end157.i

if.then136.i:                                     ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #18
  %call137.i = tail call ptr @skb_push(ptr noundef %36, i32 noundef 4) #16
  %112 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data.i, align 4
  %add.ptr143.i = getelementptr i8, ptr %113, i32 4
  %114 = ptrtoint ptr %add.ptr143.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %add.ptr143.i, align 2
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %113, align 2
  %117 = load ptr, ptr %data.i, align 4
  %add.ptr145.1.i = getelementptr i8, ptr %117, i32 6
  %118 = ptrtoint ptr %add.ptr145.1.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %add.ptr145.1.i, align 2
  %add.ptr148.1.i = getelementptr i8, ptr %117, i32 2
  %120 = ptrtoint ptr %add.ptr148.1.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %add.ptr148.1.i, align 2
  %121 = load ptr, ptr %data.i, align 4
  %add.ptr143.2.i = getelementptr i8, ptr %121, i32 4
  %add.ptr145.2.i = getelementptr i8, ptr %121, i32 8
  %122 = ptrtoint ptr %add.ptr145.2.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %add.ptr145.2.i, align 2
  %124 = ptrtoint ptr %add.ptr143.2.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %add.ptr143.2.i, align 2
  %125 = load ptr, ptr %data.i, align 4
  %add.ptr145.3.i = getelementptr i8, ptr %125, i32 10
  %126 = ptrtoint ptr %add.ptr145.3.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %add.ptr145.3.i, align 2
  %add.ptr148.3.i = getelementptr i8, ptr %125, i32 6
  %128 = ptrtoint ptr %add.ptr148.3.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %add.ptr148.3.i, align 2
  %129 = load ptr, ptr %data.i, align 4
  %add.ptr145.4.i = getelementptr i8, ptr %129, i32 12
  %130 = ptrtoint ptr %add.ptr145.4.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %add.ptr145.4.i, align 2
  %add.ptr148.4.i = getelementptr i8, ptr %129, i32 8
  %132 = ptrtoint ptr %add.ptr148.4.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %add.ptr148.4.i, align 2
  %133 = load ptr, ptr %data.i, align 4
  %add.ptr145.5.i = getelementptr i8, ptr %133, i32 14
  %134 = ptrtoint ptr %add.ptr145.5.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %add.ptr145.5.i, align 2
  %add.ptr148.5.i = getelementptr i8, ptr %133, i32 10
  %136 = ptrtoint ptr %add.ptr148.5.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %add.ptr148.5.i, align 2
  %137 = load ptr, ptr %data.i, align 4
  %add.ptr153.i = getelementptr i8, ptr %137, i32 12
  %138 = ptrtoint ptr %add.ptr153.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 -32512, ptr %add.ptr153.i, align 2
  %139 = load ptr, ptr %data.i, align 4
  %add.ptr156.i = getelementptr i8, ptr %139, i32 14
  %140 = ptrtoint ptr %add.ptr156.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %vlan_hdr.0.i, ptr %add.ptr156.i, align 2
  br label %if.end157.i

if.end157.i:                                      ; preds = %if.then136.i, %if.then134.i.if.end157.i_crit_edge
  %call158.i = tail call ptr @skb_copy(ptr noundef %36, i32 noundef 2592) #16
  %tobool159.not.i = icmp eq ptr %call158.i, null
  br i1 %tobool159.not.i, label %do.body161.i, label %if.end173.i

do.body161.i:                                     ; preds = %if.end157.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %141 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %141)
  %cmp162.i = icmp ugt i32 %141, 4
  br i1 %cmp162.i, label %do.end167.i, label %do.body161.i.if.then30_crit_edge

do.body161.i.if.then30_crit_edge:                 ; preds = %do.body161.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30

do.end167.i:                                      ; preds = %do.body161.i
  call void @__sanitizer_cov_trace_pc() #18
  %call169.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #21
  br label %if.then30

if.end173.i:                                      ; preds = %if.end157.i
  tail call void @__dev_kfree_skb_any(ptr noundef %36, i32 noundef 1) #16
  %142 = ptrtoint ptr %ppkt to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call158.i, ptr %ppkt, align 4
  br i1 %cmp44.i, label %if.then175.i, label %if.end173.i.if.end200.i_crit_edge

if.end173.i.if.end200.i_crit_edge:                ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end200.i

if.then175.i:                                     ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #18
  %data176.i = getelementptr inbounds %struct.sk_buff, ptr %call158.i, i32 0, i32 19
  %143 = ptrtoint ptr %data176.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %data176.i, align 4
  %add.ptr178.i = getelementptr i8, ptr %144, i32 14
  %145 = ptrtoint ptr %add.ptr178.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %add.ptr178.i, align 2
  %add.ptr185.i = getelementptr i8, ptr %144, i32 10
  %147 = ptrtoint ptr %add.ptr185.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %add.ptr185.i, align 2
  store i16 %148, ptr %add.ptr178.i, align 2
  %149 = load ptr, ptr %data176.i, align 4
  %add.ptr188.1.i = getelementptr i8, ptr %149, i32 8
  %150 = ptrtoint ptr %add.ptr188.1.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %add.ptr188.1.i, align 2
  %add.ptr194.1.i = getelementptr i8, ptr %149, i32 12
  %152 = ptrtoint ptr %add.ptr194.1.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %151, ptr %add.ptr194.1.i, align 2
  %153 = load ptr, ptr %data176.i, align 4
  %add.ptr188.2.i = getelementptr i8, ptr %153, i32 6
  %154 = ptrtoint ptr %add.ptr188.2.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %add.ptr188.2.i, align 2
  %add.ptr194.2.i = getelementptr i8, ptr %153, i32 10
  %156 = ptrtoint ptr %add.ptr194.2.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %155, ptr %add.ptr194.2.i, align 2
  %157 = load ptr, ptr %data176.i, align 4
  %add.ptr188.3.i = getelementptr i8, ptr %157, i32 4
  %158 = ptrtoint ptr %add.ptr188.3.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %add.ptr188.3.i, align 2
  %add.ptr194.3.i = getelementptr i8, ptr %157, i32 8
  %160 = ptrtoint ptr %add.ptr194.3.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %159, ptr %add.ptr194.3.i, align 2
  %161 = load ptr, ptr %data176.i, align 4
  %add.ptr188.4.i = getelementptr i8, ptr %161, i32 2
  %162 = ptrtoint ptr %add.ptr188.4.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %add.ptr188.4.i, align 2
  %add.ptr194.4.i = getelementptr i8, ptr %161, i32 6
  %164 = ptrtoint ptr %add.ptr194.4.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %add.ptr194.4.i, align 2
  %165 = load ptr, ptr %data176.i, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %165, align 2
  %add.ptr194.5.i = getelementptr i8, ptr %165, i32 4
  %168 = ptrtoint ptr %add.ptr194.5.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %167, ptr %add.ptr194.5.i, align 2
  %call198.i = tail call ptr @skb_pull(ptr noundef nonnull %call158.i, i32 noundef 4) #16
  br label %if.end200.i

if.end200.i:                                      ; preds = %if.then175.i, %if.end173.i.if.end200.i_crit_edge, %if.then130.i.if.end200.i_crit_edge
  %vlan_hdr.3.i = phi i16 [ %146, %if.then175.i ], [ %vlan_hdr.0.i, %if.then130.i.if.end200.i_crit_edge ], [ %vlan_hdr.0.i, %if.end173.i.if.end200.i_crit_edge ]
  %skb.1.i = phi ptr [ %call158.i, %if.then175.i ], [ %36, %if.then130.i.if.end200.i_crit_edge ], [ %call158.i, %if.end173.i.if.end200.i_crit_edge ]
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 7
  %169 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.i.not.i = icmp eq i32 %170, 0
  br i1 %tobool.i.not.i, label %if.end200.i.if.end232.i_crit_edge, label %do.body203.i

if.end200.i.if.end232.i_crit_edge:                ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end232.i

do.body203.i:                                     ; preds = %if.end200.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %171 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %171)
  %cmp204.i = icmp ugt i32 %171, 4
  br i1 %cmp204.i, label %if.end215.i, label %do.body203.i.cond.true.i.i_crit_edge

do.body203.i.cond.true.i.i_crit_edge:             ; preds = %do.body203.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.true.i.i

if.end215.i:                                      ; preds = %do.body203.i
  %call211.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.55) #21
  %172 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %.pr.i = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.i.not.i.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.i.not.i.i, label %if.end215.i.if.end232.i_crit_edge, label %if.end215.i.cond.true.i.i_crit_edge

if.end215.i.cond.true.i.i_crit_edge:              ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.true.i.i

if.end215.i.if.end232.i_crit_edge:                ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end232.i

cond.true.i.i:                                    ; preds = %if.end215.i.cond.true.i.i_crit_edge, %do.body203.i.cond.true.i.i_crit_edge
  %173 = phi i32 [ %.pr.i, %if.end215.i.cond.true.i.i_crit_edge ], [ %170, %do.body203.i.cond.true.i.i_crit_edge ]
  %call.i.i.i93 = tail call ptr @__pskb_pull_tail(ptr noundef %skb.1.i, i32 noundef %173) #16
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i93, null
  br i1 %tobool.not.i.i.i, label %do.body220.i, label %cond.true.i.i.if.end232.i_crit_edge

cond.true.i.i.if.end232.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end232.i

do.body220.i:                                     ; preds = %cond.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %174 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %174)
  %cmp221.i = icmp ugt i32 %174, 4
  br i1 %cmp221.i, label %do.end226.i, label %do.body220.i.if.then30_crit_edge

do.body220.i.if.then30_crit_edge:                 ; preds = %do.body220.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30

do.end226.i:                                      ; preds = %do.body220.i
  call void @__sanitizer_cov_trace_pc() #18
  %call228.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #21
  br label %if.then30

if.end232.i:                                      ; preds = %cond.true.i.i.if.end232.i_crit_edge, %if.end215.i.if.end232.i_crit_edge, %if.end200.i.if.end232.i_crit_edge
  %call233.i = tail call i32 @nat25_db_handle(ptr noundef %padapter, ptr noundef %skb.1.i, i32 noundef 2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233.i)
  %cmp234.i = icmp slt i32 %call233.i, 0
  br i1 %cmp234.i, label %if.then236.i, label %if.end232.i.if.end254.i_crit_edge

if.end232.i.if.end254.i_crit_edge:                ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end254.i

if.then236.i:                                     ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call233.i)
  %cmp237.i = icmp eq i32 %call233.i, -2
  br i1 %cmp237.i, label %do.body240.i, label %if.then236.i.if.end33_crit_edge

if.then236.i.if.end33_crit_edge:                  ; preds = %if.then236.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

do.body240.i:                                     ; preds = %if.then236.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %175 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %175)
  %cmp241.i = icmp ugt i32 %175, 4
  br i1 %cmp241.i, label %do.end246.i, label %do.body240.i.if.then30_crit_edge

do.body240.i.if.then30_crit_edge:                 ; preds = %do.body240.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30

do.end246.i:                                      ; preds = %do.body240.i
  call void @__sanitizer_cov_trace_pc() #18
  %call248.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #21
  br label %if.then30

if.end254.sink.split.i:                           ; preds = %if.else114.i.if.end254.sink.split.i_crit_edge, %if.then102.i
  %.sink455.i = phi ptr [ %call98.i, %if.then102.i ], [ %110, %if.else114.i.if.end254.sink.split.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %176 = load volatile i32, ptr @jiffies, align 128
  %ageing_timer119.i = getelementptr inbounds %struct.nat25_network_db_entry, ptr %.sink455.i, i32 0, i32 4
  %177 = ptrtoint ptr %ageing_timer119.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %ageing_timer119.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %br_ext_lock.i) #16
  br label %if.end254.i

if.end254.i:                                      ; preds = %if.end254.sink.split.i, %if.end232.i.if.end254.i_crit_edge
  %vlan_hdr.4.i = phi i16 [ %vlan_hdr.3.i, %if.end232.i.if.end254.i_crit_edge ], [ %vlan_hdr.0.i, %if.end254.sink.split.i ]
  %skb.2.i = phi ptr [ %skb.1.i, %if.end232.i.if.end254.i_crit_edge ], [ %36, %if.end254.sink.split.i ]
  %data255.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2.i, i32 0, i32 19
  %178 = ptrtoint ptr %data255.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %data255.i, align 4
  %add.ptr256.i = getelementptr i8, ptr %179, i32 6
  %mac_addr258.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %180 = call ptr @memcpy(ptr %add.ptr256.i, ptr %mac_addr258.i, i32 6)
  tail call void @dhcp_flag_bcast(ptr noundef %padapter, ptr noundef %skb.2.i) #16
  br i1 %cmp44.i, label %if.then261.i, label %if.end254.i.if.end283.i_crit_edge

if.end254.i.if.end283.i_crit_edge:                ; preds = %if.end254.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end283.i

if.then261.i:                                     ; preds = %if.end254.i
  call void @__sanitizer_cov_trace_pc() #18
  %call262.i = tail call ptr @skb_push(ptr noundef %skb.2.i, i32 noundef 4) #16
  %181 = ptrtoint ptr %data255.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %data255.i, align 4
  %add.ptr268.i = getelementptr i8, ptr %182, i32 4
  %183 = ptrtoint ptr %add.ptr268.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %add.ptr268.i, align 2
  %185 = ptrtoint ptr %182 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %184, ptr %182, align 2
  %186 = load ptr, ptr %data255.i, align 4
  %add.ptr270.1.i = getelementptr i8, ptr %186, i32 6
  %187 = ptrtoint ptr %add.ptr270.1.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %add.ptr270.1.i, align 2
  %add.ptr273.1.i = getelementptr i8, ptr %186, i32 2
  %189 = ptrtoint ptr %add.ptr273.1.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %188, ptr %add.ptr273.1.i, align 2
  %190 = load ptr, ptr %data255.i, align 4
  %add.ptr268.2.i = getelementptr i8, ptr %190, i32 4
  %add.ptr270.2.i = getelementptr i8, ptr %190, i32 8
  %191 = ptrtoint ptr %add.ptr270.2.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %add.ptr270.2.i, align 2
  %193 = ptrtoint ptr %add.ptr268.2.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %192, ptr %add.ptr268.2.i, align 2
  %194 = load ptr, ptr %data255.i, align 4
  %add.ptr270.3.i = getelementptr i8, ptr %194, i32 10
  %195 = ptrtoint ptr %add.ptr270.3.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %add.ptr270.3.i, align 2
  %add.ptr273.3.i = getelementptr i8, ptr %194, i32 6
  %197 = ptrtoint ptr %add.ptr273.3.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %196, ptr %add.ptr273.3.i, align 2
  %198 = load ptr, ptr %data255.i, align 4
  %add.ptr270.4.i = getelementptr i8, ptr %198, i32 12
  %199 = ptrtoint ptr %add.ptr270.4.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %add.ptr270.4.i, align 2
  %add.ptr273.4.i = getelementptr i8, ptr %198, i32 8
  %201 = ptrtoint ptr %add.ptr273.4.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %200, ptr %add.ptr273.4.i, align 2
  %202 = load ptr, ptr %data255.i, align 4
  %add.ptr270.5.i = getelementptr i8, ptr %202, i32 14
  %203 = ptrtoint ptr %add.ptr270.5.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %add.ptr270.5.i, align 2
  %add.ptr273.5.i = getelementptr i8, ptr %202, i32 10
  %205 = ptrtoint ptr %add.ptr273.5.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %204, ptr %add.ptr273.5.i, align 2
  %206 = load ptr, ptr %data255.i, align 4
  %add.ptr278.i = getelementptr i8, ptr %206, i32 12
  %207 = ptrtoint ptr %add.ptr278.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 -32512, ptr %add.ptr278.i, align 2
  %208 = load ptr, ptr %data255.i, align 4
  %add.ptr281.i = getelementptr i8, ptr %208, i32 14
  %209 = ptrtoint ptr %add.ptr281.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %vlan_hdr.4.i, ptr %add.ptr281.i, align 2
  br label %if.end283.i

if.end283.i:                                      ; preds = %if.then261.i, %if.end254.i.if.end283.i_crit_edge, %if.then35.i
  %skb.3.i = phi ptr [ %skb.2.i, %if.then261.i ], [ %skb.2.i, %if.end254.i.if.end283.i_crit_edge ], [ %36, %if.then35.i ]
  %data284.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3.i, i32 0, i32 19
  %210 = ptrtoint ptr %data284.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %data284.i, align 4
  %add.ptr285.i = getelementptr i8, ptr %211, i32 6
  %mac_addr287.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %bcmp425.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr285.i, ptr noundef dereferenceable(6) %mac_addr287.i, i32 6) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp425.i)
  %tobool290.not.i = icmp eq i32 %bcmp425.i, 0
  br i1 %tobool290.not.i, label %if.end283.i.if.end33_crit_edge, label %do.body292.i

if.end283.i.if.end33_crit_edge:                   ; preds = %if.end283.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

do.body292.i:                                     ; preds = %if.end283.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %212 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %212)
  %cmp293.i = icmp ugt i32 %212, 4
  br i1 %cmp293.i, label %do.end298.i, label %do.body292.i.if.then30_crit_edge

do.body292.i.if.then30_crit_edge:                 ; preds = %do.body292.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30

do.end298.i:                                      ; preds = %do.body292.i
  call void @__sanitizer_cov_trace_pc() #18
  %213 = ptrtoint ptr %add.ptr285.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %add.ptr285.i, align 1
  %conv302.i = zext i8 %214 to i32
  %arrayidx304.i = getelementptr i8, ptr %211, i32 7
  %215 = ptrtoint ptr %arrayidx304.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx304.i, align 1
  %conv305.i = zext i8 %216 to i32
  %arrayidx307.i = getelementptr i8, ptr %211, i32 8
  %217 = ptrtoint ptr %arrayidx307.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx307.i, align 1
  %conv308.i = zext i8 %218 to i32
  %arrayidx310.i = getelementptr i8, ptr %211, i32 9
  %219 = ptrtoint ptr %arrayidx310.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx310.i, align 1
  %conv311.i = zext i8 %220 to i32
  %arrayidx313.i = getelementptr i8, ptr %211, i32 10
  %221 = ptrtoint ptr %arrayidx313.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx313.i, align 1
  %conv314.i = zext i8 %222 to i32
  %arrayidx316.i = getelementptr i8, ptr %211, i32 11
  %223 = ptrtoint ptr %arrayidx316.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx316.i, align 1
  %conv317.i = zext i8 %224 to i32
  %call318.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %conv302.i, i32 noundef %conv305.i, i32 noundef %conv308.i, i32 noundef %conv311.i, i32 noundef %conv314.i, i32 noundef %conv317.i) #21
  br label %if.then30

if.then30:                                        ; preds = %do.end298.i, %do.body292.i.if.then30_crit_edge, %do.end246.i, %do.body240.i.if.then30_crit_edge, %do.end226.i, %do.body220.i.if.then30_crit_edge, %do.end167.i, %do.body161.i.if.then30_crit_edge
  %call31 = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %1)
  br label %cleanup

if.end33:                                         ; preds = %if.end283.i.if.end33_crit_edge, %if.then236.i.if.end33_crit_edge, %land.lhs.true24.if.end33_crit_edge, %rcu_read_unlock.exit.if.end33_crit_edge
  %225 = ptrtoint ptr %ppkt to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %ppkt, align 4
  %call34 = tail call fastcc i32 @update_attrib(ptr noundef %padapter, ptr noundef %226, ptr noundef %attrib.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %call37 = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %1)
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %227 = ptrtoint ptr %ppkt to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ppkt, align 4
  %229 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %228, ptr %pkt.i, align 4
  tail call void @rtw_led_control(ptr noundef %padapter, i32 noundef 4) #16
  %priority.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 1, i32 16
  %230 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %priority.i, align 2
  %qsel1.i = getelementptr inbounds %struct.xmit_frame, ptr %1, i32 0, i32 1, i32 35
  %232 = ptrtoint ptr %qsel1.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %231, ptr %qsel1.i, align 1
  tail call void @_raw_spin_lock_bh(ptr noundef %xmitpriv) #16
  %call40 = tail call i32 @xmitframe_enqueue_for_sleeping_sta(ptr noundef %padapter, ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv) #16
  br i1 %tobool41.not, label %if.end44, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  %call46 = tail call i32 @rtl8188eu_hal_xmit(ptr noundef %padapter, ptr noundef nonnull %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  %. = zext i1 %tobool47.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end38.cleanup_crit_edge, %if.then36, %if.then30, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then30 ], [ -1, %if.then36 ], [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ], [ %., %if.end44 ], [ 1, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_attrib(ptr noundef %padapter, ptr noundef %pkt, ptr noundef %pattrib) unnamed_addr #0 align 64 {
entry:
  %etherhdr.i359 = alloca %struct.ethhdr, align 1
  %ip_hdr.i360 = alloca %struct.iphdr, align 4
  %etherhdr.i = alloca %struct.ethhdr, align 1
  %ip_hdr.i = alloca %struct.iphdr, align 4
  %pktfile = alloca %struct.pkt_file, align 4
  %etherhdr = alloca %struct.ethhdr, align 1
  %tmp = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pktfile) #16
  %0 = getelementptr inbounds %struct.pkt_file, ptr %pktfile, i32 0, i32 1
  %1 = call ptr @memset(ptr %pktfile, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %etherhdr) #16
  %2 = getelementptr inbounds %struct.ethhdr, ptr %etherhdr, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ethhdr, ptr %etherhdr, i32 0, i32 2
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %qospriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 23
  %4 = call ptr @memset(ptr %etherhdr, i32 255, i32 14)
  call void @_rtw_open_pktfile(ptr noundef %pkt, ptr noundef nonnull %pktfile) #16
  %call = call i32 @_rtw_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef nonnull %etherhdr, i32 noundef 14) #16
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %3, align 1
  %ether_type = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 4
  %7 = ptrtoint ptr %ether_type to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %ether_type, align 4
  %dst = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 20
  %8 = call ptr @memcpy(ptr %dst, ptr %etherhdr, i32 6)
  %src = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 21
  %9 = call ptr @memcpy(ptr %src, ptr %2, i32 6)
  %pctrl = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 33
  %10 = ptrtoint ptr %pctrl to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %pctrl, align 1
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fw_state.i, align 4
  %13 = and i32 %12, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ra = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 23
  %15 = call ptr @memcpy(ptr %ra, ptr %etherhdr, i32 6)
  %ta = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 22
  %16 = call ptr @memcpy(ptr %ta, ptr %2, i32 6)
  br label %if.end33

if.else:                                          ; preds = %entry
  %17 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.not = icmp eq i32 %17, 0
  br i1 %tobool12.not, label %if.else21, label %if.then13

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %ra14 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 23
  %MacAddress.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 6, i32 1
  %18 = call ptr @memcpy(ptr %ra14, ptr %MacAddress.i, i32 6)
  %ta17 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 22
  %19 = call ptr @memcpy(ptr %ta17, ptr %2, i32 6)
  br label %if.end33

if.else21:                                        ; preds = %if.else
  %20 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool23.not = icmp eq i32 %20, 0
  br i1 %tobool23.not, label %if.else21.if.end33_crit_edge, label %if.then24

if.else21.if.end33_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then24:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #18
  %ra25 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 23
  %21 = call ptr @memcpy(ptr %ra25, ptr %etherhdr, i32 6)
  %ta29 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 22
  %MacAddress.i350 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 6, i32 1
  %22 = call ptr @memcpy(ptr %ta29, ptr %MacAddress.i350, i32 6)
  br label %if.end33

if.end33:                                         ; preds = %if.then24, %if.else21.if.end33_crit_edge, %if.then13, %if.then
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %0, align 4
  %pktlen = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 8
  %25 = ptrtoint ptr %pktlen to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %pktlen, align 4
  %26 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.81)
  switch i16 %6, label %if.end33.if.end87_crit_edge [
    i16 2048, label %if.then36
    i16 -30578, label %do.body76
  ]

if.end33.if.end87_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87

if.then36:                                        ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp) #16
  %27 = getelementptr inbounds [24 x i8], ptr %tmp, i32 0, i32 21
  %28 = getelementptr inbounds [24 x i8], ptr %tmp, i32 0, i32 23
  %29 = call ptr @memset(ptr %tmp, i32 255, i32 24)
  %call37 = call i32 @_rtw_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef nonnull %tmp, i32 noundef 24) #16
  %dhcp_pkt = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 3
  %30 = ptrtoint ptr %dhcp_pkt to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %dhcp_pkt, align 1
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 282, i32 %32)
  %cmp39 = icmp ugt i32 %32, 282
  br i1 %cmp39, label %if.then41, label %if.then36.if.end69_crit_edge

if.then36.if.end69_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then41:                                        ; preds = %if.then36
  %33 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ether_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %34)
  %cmp44 = icmp eq i16 %34, 2048
  br i1 %cmp44, label %if.then46, label %if.then41.if.end69_crit_edge

if.then41.if.end69_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then46:                                        ; preds = %if.then41
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %27, align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %36, label %if.then46.if.end69_crit_edge [
    i8 68, label %land.lhs.true
    i8 67, label %land.lhs.true60
  ]

if.then46.if.end69_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

land.lhs.true:                                    ; preds = %if.then46
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %39)
  %cmp53 = icmp eq i8 %39, 67
  br i1 %cmp53, label %land.lhs.true.if.then65_crit_edge, label %land.lhs.true.if.end69_crit_edge

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

land.lhs.true.if.then65_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then65

land.lhs.true60:                                  ; preds = %if.then46
  %40 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %41)
  %cmp63 = icmp eq i8 %41, 68
  br i1 %cmp63, label %land.lhs.true60.if.then65_crit_edge, label %land.lhs.true60.if.end69_crit_edge

land.lhs.true60.if.end69_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

land.lhs.true60.if.then65_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then65

if.then65:                                        ; preds = %land.lhs.true60.if.then65_crit_edge, %land.lhs.true.if.then65_crit_edge
  %42 = ptrtoint ptr %dhcp_pkt to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %dhcp_pkt, align 1
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %land.lhs.true60.if.end69_crit_edge, %land.lhs.true.if.end69_crit_edge, %if.then46.if.end69_crit_edge, %if.then41.if.end69_crit_edge, %if.then36.if.end69_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp) #16
  br label %if.end87

do.body76:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_attrib.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_attrib, %if.then82)) #16
          to label %if.end87 [label %if.then82], !srcloc !160

if.then82:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #18
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %43 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pnetdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @update_attrib.__UNIQUE_ID_ddebug346, ptr noundef %44, ptr noundef nonnull @.str.70) #16
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %do.body76, %if.end69, %if.end33.if.end87_crit_edge
  %45 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ether_type, align 4
  %47 = zext i16 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.83)
  switch i16 %46, label %lor.lhs.false111 [
    i16 2054, label %if.end87.if.then116_crit_edge
    i16 -30578, label %if.end87.if.then116_crit_edge390
  ]

if.end87.if.then116_crit_edge390:                 ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then116

if.end87.if.then116_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then116

lor.lhs.false111:                                 ; preds = %if.end87
  %dhcp_pkt112 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 3
  %48 = ptrtoint ptr %dhcp_pkt112 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dhcp_pkt112, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp114 = icmp eq i8 %49, 1
  br i1 %cmp114, label %lor.lhs.false111.if.then116_crit_edge, label %lor.lhs.false111.if.end118_crit_edge

lor.lhs.false111.if.end118_crit_edge:             ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end118

lor.lhs.false111.if.then116_crit_edge:            ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then116

if.then116:                                       ; preds = %lor.lhs.false111.if.then116_crit_edge, %if.end87.if.then116_crit_edge, %if.end87.if.then116_crit_edge390
  %call117 = call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %padapter, i8 noundef zeroext 4, i8 noundef zeroext 1) #16
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %lor.lhs.false111.if.end118_crit_edge
  %ra119 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 23
  %50 = ptrtoint ptr %ra119 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ra119, align 4
  %52 = and i32 %51, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i.not = icmp eq i32 %52, 0
  br i1 %tobool.i.not, label %if.else126, label %if.end140

if.else126:                                       ; preds = %if.end118
  %call129 = call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ra119) #16
  %tobool130.not = icmp eq ptr %call129, null
  br i1 %tobool130.not, label %if.else126.exit_crit_edge, label %if.else132

if.else126.exit_crit_edge:                        ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.else132:                                       ; preds = %if.else126
  %53 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fw_state.i, align 4
  %55 = and i32 %54, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool134.not = icmp eq i32 %55, 0
  br i1 %tobool134.not, label %if.else132.if.then142_crit_edge, label %land.lhs.true135

if.else132.if.then142_crit_edge:                  ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then142

land.lhs.true135:                                 ; preds = %if.else132
  %state = getelementptr inbounds %struct.sta_info, ptr %call129, i32 0, i32 7
  %56 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %state, align 4
  %and = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool136.not = icmp eq i32 %and, 0
  br i1 %tobool136.not, label %land.lhs.true135.exit_crit_edge, label %land.lhs.true135.if.then142_crit_edge

land.lhs.true135.if.then142_crit_edge:            ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then142

land.lhs.true135.exit_crit_edge:                  ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end140:                                        ; preds = %if.end118
  %call125 = call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #16
  %tobool141.not = icmp eq ptr %call125, null
  br i1 %tobool141.not, label %if.end140.exit_crit_edge, label %if.end140.if.then142_crit_edge

if.end140.if.then142_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then142

if.end140.exit_crit_edge:                         ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.then142:                                       ; preds = %if.end140.if.then142_crit_edge, %land.lhs.true135.if.then142_crit_edge, %if.else132.if.then142_crit_edge
  %psta.0382 = phi ptr [ %call125, %if.end140.if.then142_crit_edge ], [ %call129, %land.lhs.true135.if.then142_crit_edge ], [ %call129, %if.else132.if.then142_crit_edge ]
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %psta.0382, i32 0, i32 9
  %58 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mac_id, align 4
  %conv143 = trunc i32 %59 to i8
  %mac_id144 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 18
  %60 = ptrtoint ptr %mac_id144 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv143, ptr %mac_id144, align 4
  %psta145 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 40
  %61 = ptrtoint ptr %psta145 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %psta.0382, ptr %psta145, align 4
  %ack_policy = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 17
  %62 = ptrtoint ptr %ack_policy to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %ack_policy, align 1
  %pkt_hdrlen = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 6
  %63 = ptrtoint ptr %pkt_hdrlen to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 14, ptr %pkt_hdrlen, align 4
  %hdrlen = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 7
  %64 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 24, ptr %hdrlen, align 2
  %subtype = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 1
  %65 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 8, ptr %subtype, align 1
  %priority = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 16
  %66 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %priority, align 2
  %67 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fw_state.i, align 4
  %and.i356 = and i32 %68, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i356)
  %tobool.not.i357.not = icmp eq i32 %and.i356, 0
  br i1 %tobool.not.i357.not, label %if.else154, label %if.then150

if.then150:                                       ; preds = %if.then142
  %qos_option = getelementptr inbounds %struct.sta_info, ptr %psta.0382, i32 0, i32 10
  %69 = ptrtoint ptr %qos_option to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %qos_option, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool151.not = icmp eq i32 %70, 0
  br i1 %tobool151.not, label %if.then150.if.end168_crit_edge, label %if.then152

if.then150.if.end168_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end168

if.then152:                                       ; preds = %if.then150
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %etherhdr.i) #16
  %71 = call ptr @memset(ptr %etherhdr.i, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ip_hdr.i) #16
  %72 = call ptr @memset(ptr %ip_hdr.i, i32 255, i32 20)
  %73 = ptrtoint ptr %pktfile to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pktfile, align 4
  call void @_rtw_open_pktfile(ptr noundef %74, ptr noundef nonnull %pktfile) #16
  %call.i = call i32 @_rtw_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef nonnull %etherhdr.i, i32 noundef 14) #16
  %75 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ether_type, align 4
  %77 = zext i16 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %76, label %if.then152.set_qos.exit_crit_edge [
    i16 2048, label %if.then.i
    i16 -30578, label %if.then8.i
  ]

if.then152.set_qos.exit_crit_edge:                ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_qos.exit

if.then.i:                                        ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #18
  %78 = getelementptr inbounds %struct.iphdr, ptr %ip_hdr.i, i32 0, i32 1
  %call2.i = call i32 @_rtw_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef nonnull %ip_hdr.i, i32 noundef 20) #16
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 1
  %81 = lshr i8 %80, 5
  br label %set_qos.exit

if.then8.i:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_qos.exit

set_qos.exit:                                     ; preds = %if.then8.i, %if.then.i, %if.then152.set_qos.exit_crit_edge
  %user_prio.0.i = phi i8 [ %81, %if.then.i ], [ 7, %if.then8.i ], [ 0, %if.then152.set_qos.exit_crit_edge ]
  %82 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %user_prio.0.i, ptr %priority, align 2
  %83 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 26, ptr %hdrlen, align 2
  %84 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -120, ptr %subtype, align 1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ip_hdr.i) #16
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %etherhdr.i) #16
  br label %if.end168

if.else154:                                       ; preds = %if.then142
  %85 = ptrtoint ptr %qospriv to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %qospriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool156.not = icmp eq i32 %86, 0
  br i1 %tobool156.not, label %if.else154.if.end168_crit_edge, label %if.then157

if.else154.if.end168_crit_edge:                   ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end168

if.then157:                                       ; preds = %if.else154
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %etherhdr.i359) #16
  %87 = call ptr @memset(ptr %etherhdr.i359, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ip_hdr.i360) #16
  %88 = call ptr @memset(ptr %ip_hdr.i360, i32 255, i32 20)
  %89 = ptrtoint ptr %pktfile to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pktfile, align 4
  call void @_rtw_open_pktfile(ptr noundef %90, ptr noundef nonnull %pktfile) #16
  %call.i361 = call i32 @_rtw_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef nonnull %etherhdr.i359, i32 noundef 14) #16
  %91 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %ether_type, align 4
  %93 = zext i16 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.85)
  switch i16 %92, label %if.then157.set_qos.exit370_crit_edge [
    i16 2048, label %if.then.i364
    i16 -30578, label %if.then8.i365
  ]

if.then157.set_qos.exit370_crit_edge:             ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_qos.exit370

if.then.i364:                                     ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #18
  %94 = getelementptr inbounds %struct.iphdr, ptr %ip_hdr.i360, i32 0, i32 1
  %call2.i363 = call i32 @_rtw_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef nonnull %ip_hdr.i360, i32 noundef 20) #16
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %94, align 1
  %97 = lshr i8 %96, 5
  br label %set_qos.exit370

if.then8.i365:                                    ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_qos.exit370

set_qos.exit370:                                  ; preds = %if.then8.i365, %if.then.i364, %if.then157.set_qos.exit370_crit_edge
  %user_prio.0.i366 = phi i8 [ %97, %if.then.i364 ], [ 7, %if.then8.i365 ], [ 0, %if.then157.set_qos.exit370_crit_edge ]
  %98 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %user_prio.0.i366, ptr %priority, align 2
  %99 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 26, ptr %hdrlen, align 2
  %100 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -120, ptr %subtype, align 1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ip_hdr.i360) #16
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %etherhdr.i359) #16
  %acm_mask = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 29
  %101 = ptrtoint ptr %acm_mask to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %acm_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp159.not = icmp eq i8 %102, 0
  br i1 %cmp159.not, label %set_qos.exit370.if.end168_crit_edge, label %if.then161

set_qos.exit370.if.end168_crit_edge:              ; preds = %set_qos.exit370
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end168

if.then161:                                       ; preds = %set_qos.exit370
  %trunc = trunc i8 %user_prio.0.i366 to i3
  %103 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.86)
  switch i3 %trunc, label %if.then161.unreachabledefault [
    i3 0, label %if.then161.sw.bb.i_crit_edge
    i3 3, label %if.then161.sw.bb.i_crit_edge391
    i3 1, label %if.then161.qos_acm.exit_crit_edge
    i3 2, label %if.then161.qos_acm.exit_crit_edge392
    i3 -4, label %if.then161.sw.bb3.i_crit_edge
    i3 -3, label %if.then161.sw.bb3.i_crit_edge393
    i3 -2, label %if.then161.sw.bb9.i_crit_edge
    i3 -1, label %if.then161.sw.bb9.i_crit_edge394
  ]

if.then161.sw.bb9.i_crit_edge394:                 ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb9.i

if.then161.sw.bb9.i_crit_edge:                    ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb9.i

if.then161.sw.bb3.i_crit_edge393:                 ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i

if.then161.sw.bb3.i_crit_edge:                    ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i

if.then161.qos_acm.exit_crit_edge392:             ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #18
  br label %qos_acm.exit

if.then161.qos_acm.exit_crit_edge:                ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #18
  br label %qos_acm.exit

if.then161.sw.bb.i_crit_edge391:                  ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

if.then161.sw.bb.i_crit_edge:                     ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then161.sw.bb.i_crit_edge, %if.then161.sw.bb.i_crit_edge391
  %104 = and i8 %102, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i371 = icmp eq i8 %104, 0
  %spec.select.i = select i1 %tobool.not.i371, i8 %user_prio.0.i366, i8 1
  br label %qos_acm.exit

sw.bb3.i:                                         ; preds = %if.then161.sw.bb3.i_crit_edge, %if.then161.sw.bb3.i_crit_edge393
  %105 = and i8 %102, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool6.not.i = icmp eq i8 %105, 0
  %spec.select26.i = select i1 %tobool6.not.i, i8 %user_prio.0.i366, i8 0
  br label %qos_acm.exit

sw.bb9.i:                                         ; preds = %if.then161.sw.bb9.i_crit_edge, %if.then161.sw.bb9.i_crit_edge394
  %106 = and i8 %102, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool12.not.i = icmp eq i8 %106, 0
  %spec.select27.i = select i1 %tobool12.not.i, i8 %user_prio.0.i366, i8 5
  br label %qos_acm.exit

if.then161.unreachabledefault:                    ; preds = %if.then161
  unreachable

qos_acm.exit:                                     ; preds = %sw.bb9.i, %sw.bb3.i, %sw.bb.i, %if.then161.qos_acm.exit_crit_edge, %if.then161.qos_acm.exit_crit_edge392
  %change_priority.0.i = phi i8 [ %user_prio.0.i366, %if.then161.qos_acm.exit_crit_edge ], [ %user_prio.0.i366, %if.then161.qos_acm.exit_crit_edge392 ], [ %spec.select.i, %sw.bb.i ], [ %spec.select26.i, %sw.bb3.i ], [ %spec.select27.i, %sw.bb9.i ]
  %107 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %change_priority.0.i, ptr %priority, align 2
  br label %if.end168

if.end168:                                        ; preds = %qos_acm.exit, %set_qos.exit370.if.end168_crit_edge, %if.else154.if.end168_crit_edge, %set_qos.exit, %if.then150.if.end168_crit_edge
  %ieee8021x_blocked = getelementptr inbounds %struct.sta_info, ptr %psta.0382, i32 0, i32 12
  %108 = ptrtoint ptr %ieee8021x_blocked to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ieee8021x_blocked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool169.not = icmp eq i32 %109, 0
  br i1 %tobool169.not, label %do.body181, label %if.then170

if.then170:                                       ; preds = %if.end168
  %encrypt = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 11
  %110 = ptrtoint ptr %encrypt to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %encrypt, align 1
  %111 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %ether_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %112)
  %cmp173.not = icmp eq i16 %112, -30578
  br i1 %cmp173.not, label %if.then170.if.end212_crit_edge, label %land.lhs.true175

if.then170.if.end212_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end212

land.lhs.true175:                                 ; preds = %if.then170
  %113 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %fw_state.i, align 4
  %115 = and i32 %114, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool177.not = icmp eq i32 %115, 0
  br i1 %tobool177.not, label %land.lhs.true175.exit_crit_edge, label %land.lhs.true175.if.end212_crit_edge

land.lhs.true175.if.end212_crit_edge:             ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end212

land.lhs.true175.exit_crit_edge:                  ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

do.body181:                                       ; preds = %if.end168
  %116 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %securitypriv, align 8
  %118 = zext i32 %117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %117, label %do.body181.do.end198_crit_edge [
    i32 0, label %do.body181.sw.bb_crit_edge
    i32 1, label %do.body181.sw.bb_crit_edge395
    i32 3, label %do.body181.sw.bb_crit_edge396
    i32 2, label %sw.bb184
    i32 4, label %sw.bb193
  ]

do.body181.sw.bb_crit_edge396:                    ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

do.body181.sw.bb_crit_edge395:                    ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

do.body181.sw.bb_crit_edge:                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

do.body181.do.end198_crit_edge:                   ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end198

sw.bb:                                            ; preds = %do.body181.sw.bb_crit_edge, %do.body181.sw.bb_crit_edge395, %do.body181.sw.bb_crit_edge396
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  br label %do.end198thread-pre-split

sw.bb184:                                         ; preds = %do.body181
  br i1 %tobool.i.not, label %if.else189, label %if.then186

if.then186:                                       ; preds = %sw.bb184
  call void @__sanitizer_cov_trace_pc() #18
  %dot118021XGrpPrivacy = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 5
  br label %do.end198thread-pre-split

if.else189:                                       ; preds = %sw.bb184
  call void @__sanitizer_cov_trace_pc() #18
  %dot118021XPrivacy = getelementptr inbounds %struct.sta_info, ptr %psta.0382, i32 0, i32 13
  br label %do.end198thread-pre-split

sw.bb193:                                         ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #18
  %dot11PrivacyAlgrthm194 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  br label %do.end198thread-pre-split

do.end198thread-pre-split:                        ; preds = %sw.bb193, %if.else189, %if.then186, %sw.bb
  %.sink.in = phi ptr [ %dot11PrivacyAlgrthm, %sw.bb ], [ %dot11PrivacyAlgrthm194, %sw.bb193 ], [ %dot118021XPrivacy, %if.else189 ], [ %dot118021XGrpPrivacy, %if.then186 ]
  %119 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %119)
  %.sink = load i32, ptr %.sink.in, align 4
  %conv182 = trunc i32 %.sink to i8
  %encrypt183 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 11
  %120 = ptrtoint ptr %encrypt183 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv182, ptr %encrypt183, align 1
  %121 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %121)
  %.pr = load i32, ptr %securitypriv, align 8
  br label %do.end198

do.end198:                                        ; preds = %do.end198thread-pre-split, %do.body181.do.end198_crit_edge
  %122 = phi i32 [ %.pr, %do.end198thread-pre-split ], [ %117, %do.body181.do.end198_crit_edge ]
  %123 = zext i32 %122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %122, label %do.end198.if.end212.sink.split_crit_edge [
    i32 0, label %do.end198.sw.bb200_crit_edge
    i32 1, label %do.end198.sw.bb200_crit_edge397
    i32 3, label %do.end198.sw.bb200_crit_edge398
    i32 2, label %sw.bb202
  ]

do.end198.sw.bb200_crit_edge398:                  ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb200

do.end198.sw.bb200_crit_edge397:                  ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb200

do.end198.sw.bb200_crit_edge:                     ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb200

do.end198.if.end212.sink.split_crit_edge:         ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end212.sink.split

sw.bb200:                                         ; preds = %do.end198.sw.bb200_crit_edge, %do.end198.sw.bb200_crit_edge397, %do.end198.sw.bb200_crit_edge398
  %dot11PrivacyKeyIndex = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 2
  br label %if.end212.sink.split.sink.split

sw.bb202:                                         ; preds = %do.end198
  br i1 %tobool.i.not, label %sw.bb202.if.end212.sink.split_crit_edge, label %if.then204

sw.bb202.if.end212.sink.split_crit_edge:          ; preds = %sw.bb202
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end212.sink.split

if.then204:                                       ; preds = %sw.bb202
  call void @__sanitizer_cov_trace_pc() #18
  %dot118021XGrpKeyid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 6
  br label %if.end212.sink.split.sink.split

if.end212.sink.split.sink.split:                  ; preds = %if.then204, %sw.bb200
  %dot118021XGrpKeyid.sink = phi ptr [ %dot118021XGrpKeyid, %if.then204 ], [ %dot11PrivacyKeyIndex, %sw.bb200 ]
  %124 = ptrtoint ptr %dot118021XGrpKeyid.sink to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dot118021XGrpKeyid.sink, align 8
  %conv205 = trunc i32 %125 to i8
  br label %if.end212.sink.split

if.end212.sink.split:                             ; preds = %if.end212.sink.split.sink.split, %sw.bb202.if.end212.sink.split_crit_edge, %do.end198.if.end212.sink.split_crit_edge
  %conv201.sink = phi i8 [ 0, %sw.bb202.if.end212.sink.split_crit_edge ], [ 0, %do.end198.if.end212.sink.split_crit_edge ], [ %conv205, %if.end212.sink.split.sink.split ]
  %key_idx = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 24
  %126 = ptrtoint ptr %key_idx to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv201.sink, ptr %key_idx, align 2
  br label %if.end212

if.end212:                                        ; preds = %if.end212.sink.split, %land.lhs.true175.if.end212_crit_edge, %if.then170.if.end212_crit_edge
  %encrypt213 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 11
  %127 = ptrtoint ptr %encrypt213 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %encrypt213, align 1
  %129 = zext i8 %128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %128, label %sw.epilog231 [
    i8 1, label %if.end212.land.lhs.true235.sink.split_crit_edge
    i8 5, label %if.end212.land.lhs.true235.sink.split_crit_edge399
    i8 2, label %sw.bb216
    i8 4, label %sw.bb225
  ]

if.end212.land.lhs.true235.sink.split_crit_edge399: ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true235.sink.split

if.end212.land.lhs.true235.sink.split_crit_edge:  ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true235.sink.split

sw.bb216:                                         ; preds = %if.end212
  %iv_len217 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 12
  %130 = ptrtoint ptr %iv_len217 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 8, ptr %iv_len217, align 2
  %icv_len218 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 13
  %131 = ptrtoint ptr %icv_len218 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 4, ptr %icv_len218, align 1
  %busetkipkey = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 23
  %132 = ptrtoint ptr %busetkipkey to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %busetkipkey, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp221 = icmp eq i8 %133, 0
  br i1 %cmp221, label %sw.bb216.exit_crit_edge, label %sw.bb216.land.lhs.true235_crit_edge

sw.bb216.land.lhs.true235_crit_edge:              ; preds = %sw.bb216
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true235

sw.bb216.exit_crit_edge:                          ; preds = %sw.bb216
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

sw.bb225:                                         ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true235.sink.split

sw.epilog231:                                     ; preds = %if.end212
  %iv_len229 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 12
  %134 = ptrtoint ptr %iv_len229 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %iv_len229, align 2
  %icv_len230 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 13
  %135 = ptrtoint ptr %icv_len230 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %icv_len230, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool234.not = icmp eq i8 %128, 0
  br i1 %tobool234.not, label %sw.epilog231.if.else241_crit_edge, label %sw.epilog231.land.lhs.true235_crit_edge

sw.epilog231.land.lhs.true235_crit_edge:          ; preds = %sw.epilog231
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true235

sw.epilog231.if.else241_crit_edge:                ; preds = %sw.epilog231
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else241

land.lhs.true235.sink.split:                      ; preds = %sw.bb225, %if.end212.land.lhs.true235.sink.split_crit_edge, %if.end212.land.lhs.true235.sink.split_crit_edge399
  %.sink387 = phi i8 [ 8, %sw.bb225 ], [ 4, %if.end212.land.lhs.true235.sink.split_crit_edge ], [ 4, %if.end212.land.lhs.true235.sink.split_crit_edge399 ]
  %iv_len = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 12
  %136 = ptrtoint ptr %iv_len to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %.sink387, ptr %iv_len, align 2
  %icv_len = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 13
  %137 = ptrtoint ptr %icv_len to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %.sink387, ptr %icv_len, align 1
  br label %land.lhs.true235

land.lhs.true235:                                 ; preds = %land.lhs.true235.sink.split, %sw.epilog231.land.lhs.true235_crit_edge, %sw.bb216.land.lhs.true235_crit_edge
  %sw_encrypt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 26
  %138 = ptrtoint ptr %sw_encrypt to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %sw_encrypt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool237.not = icmp eq i32 %139, 0
  br i1 %tobool237.not, label %lor.lhs.false238, label %land.lhs.true235.if.end243_crit_edge

land.lhs.true235.if.end243_crit_edge:             ; preds = %land.lhs.true235
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end243

lor.lhs.false238:                                 ; preds = %land.lhs.true235
  %hw_decrypted = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 28
  %140 = ptrtoint ptr %hw_decrypted to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %hw_decrypted, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool239.not = icmp eq i32 %141, 0
  br i1 %tobool239.not, label %lor.lhs.false238.if.end243_crit_edge, label %lor.lhs.false238.if.else241_crit_edge

lor.lhs.false238.if.else241_crit_edge:            ; preds = %lor.lhs.false238
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else241

lor.lhs.false238.if.end243_crit_edge:             ; preds = %lor.lhs.false238
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end243

if.else241:                                       ; preds = %lor.lhs.false238.if.else241_crit_edge, %sw.epilog231.if.else241_crit_edge
  br label %if.end243

if.end243:                                        ; preds = %if.else241, %lor.lhs.false238.if.end243_crit_edge, %land.lhs.true235.if.end243_crit_edge
  %.sink388 = phi i8 [ 0, %if.else241 ], [ 1, %lor.lhs.false238.if.end243_crit_edge ], [ 1, %land.lhs.true235.if.end243_crit_edge ]
  %bswenc242 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 2
  %142 = ptrtoint ptr %bswenc242 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %.sink388, ptr %bswenc242, align 2
  %mdata.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 32
  %143 = ptrtoint ptr %mdata.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %mdata.i, align 2
  %eosp.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 36
  %144 = ptrtoint ptr %eosp.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %eosp.i, align 2
  %triggered.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 34
  %145 = ptrtoint ptr %triggered.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %triggered.i, align 4
  %qos_option.i = getelementptr inbounds %struct.sta_info, ptr %psta.0382, i32 0, i32 10
  %146 = ptrtoint ptr %qos_option.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %qos_option.i, align 8
  %conv.i377 = trunc i32 %147 to i8
  %qos_en.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 25
  %148 = ptrtoint ptr %qos_en.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv.i377, ptr %qos_en.i, align 1
  %raid.i = getelementptr inbounds %struct.sta_info, ptr %psta.0382, i32 0, i32 25
  %149 = ptrtoint ptr %raid.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %raid.i, align 2
  %raid1.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 27
  %151 = ptrtoint ptr %raid1.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %raid1.i, align 1
  %htpriv.i = getelementptr inbounds %struct.sta_info, ptr %psta.0382, i32 0, i32 33
  %152 = ptrtoint ptr %htpriv.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %htpriv.i, align 8
  %conv2.i = trunc i32 %153 to i8
  %ht_en.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 26
  %154 = ptrtoint ptr %ht_en.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv2.i, ptr %ht_en.i, align 4
  %bwmode.i = getelementptr inbounds %struct.sta_info, ptr %psta.0382, i32 0, i32 33, i32 5
  %155 = ptrtoint ptr %bwmode.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %bwmode.i, align 4
  %bwmode4.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 28
  %157 = ptrtoint ptr %bwmode4.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %bwmode4.i, align 2
  %ch_offset.i = getelementptr inbounds %struct.sta_info, ptr %psta.0382, i32 0, i32 33, i32 6
  %158 = ptrtoint ptr %ch_offset.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %ch_offset.i, align 1
  %ch_offset6.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 29
  %160 = ptrtoint ptr %ch_offset6.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %ch_offset6.i, align 1
  %sgi.i = getelementptr inbounds %struct.sta_info, ptr %psta.0382, i32 0, i32 33, i32 7
  %161 = ptrtoint ptr %sgi.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %sgi.i, align 2
  %sgi8.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 30
  %163 = ptrtoint ptr %sgi8.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %sgi8.i, align 4
  %ampdu_en.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 31
  %164 = ptrtoint ptr %ampdu_en.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %ampdu_en.i, align 1
  %retry_ctrl.i = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 39
  %165 = ptrtoint ptr %retry_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %retry_ctrl.i, align 1
  br label %exit

exit:                                             ; preds = %if.end243, %sw.bb216.exit_crit_edge, %land.lhs.true175.exit_crit_edge, %if.end140.exit_crit_edge, %land.lhs.true135.exit_crit_edge, %if.else126.exit_crit_edge
  %res.0 = phi i32 [ 1, %if.end243 ], [ 0, %if.else126.exit_crit_edge ], [ 0, %land.lhs.true135.exit_crit_edge ], [ 0, %if.end140.exit_crit_edge ], [ 0, %land.lhs.true175.exit_crit_edge ], [ 0, %sw.bb216.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %etherhdr) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pktfile) #16
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_led_control(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xmitframe_enqueue_for_sleeping_sta(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %0 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ra, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i, align 4
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %psta2 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 40
  %6 = ptrtoint ptr %psta2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %psta2, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end9, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.end9:                                          ; preds = %if.end
  %call8 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ra) #16
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.end9.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %psta.0160 = phi ptr [ %call8, %if.end9.if.end12_crit_edge ], [ %7, %if.end.if.end12_crit_edge ]
  %triggered = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 34
  %8 = ptrtoint ptr %triggered to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %triggered, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp eq i8 %9, 1
  br i1 %cmp, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end12
  br i1 %tobool.i.not, label %if.then14.cleanup_crit_edge, label %if.then16

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  %qsel = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 35
  %10 = ptrtoint ptr %qsel to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 17, ptr %qsel, align 1
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  br i1 %tobool.i.not, label %if.end35, label %if.then20

if.then20:                                        ; preds = %if.end18
  %lock = getelementptr inbounds %struct.sta_info, ptr %psta.0160, i32 0, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %sta_dz_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 19
  %11 = ptrtoint ptr %sta_dz_bitmap to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sta_dz_bitmap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool21.not = icmp eq i16 %12, 0
  br i1 %tobool21.not, label %if.then20.if.end32_crit_edge, label %if.then22

if.then20.if.end32_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.then22:                                        ; preds = %if.then20
  %sleep_q = getelementptr inbounds %struct.sta_info, ptr %psta.0160, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pxmitframe) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.then22.list_del_init.exit_crit_edge

if.then22.list_del_init.exit_crit_edge:           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pxmitframe, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pxmitframe, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then22.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %pxmitframe, ptr %pxmitframe, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pxmitframe, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pxmitframe, ptr %prev.i3.i, align 4
  %prev.i = getelementptr inbounds %struct.sta_info, ptr %psta.0160, i32 0, i32 5, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %call.i.i145 = tail call zeroext i1 @__list_add_valid(ptr noundef %pxmitframe, ptr noundef %22, ptr noundef %sleep_q) #16
  br i1 %call.i.i145, label %if.end.i.i146, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i146:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pxmitframe, ptr %prev.i, align 4
  %24 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %sleep_q, ptr %pxmitframe, align 4
  %25 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev.i3.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %pxmitframe, ptr %22, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i146, %list_del_init.exit.list_add_tail.exit_crit_edge
  %sleepq_len = getelementptr inbounds %struct.sta_info, ptr %psta.0160, i32 0, i32 6
  %27 = ptrtoint ptr %sleepq_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sleepq_len, align 8
  %inc = add i32 %28, 1
  store i32 %inc, ptr %sleepq_len, align 8
  %tim_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  %29 = ptrtoint ptr %tim_bitmap to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tim_bitmap, align 2
  %31 = or i16 %30, 1
  store i16 %31, ptr %tim_bitmap, align 2
  %32 = ptrtoint ptr %sta_dz_bitmap to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %sta_dz_bitmap, align 4
  %34 = or i16 %33, 1
  store i16 %34, ptr %sta_dz_bitmap, align 4
  tail call void @update_beacon(ptr noundef %padapter, i8 noundef zeroext 5, ptr noundef null, i8 noundef zeroext 0) #16
  br label %if.end32

if.end32:                                         ; preds = %list_add_tail.exit, %if.then20.if.end32_crit_edge
  %ret.0 = phi i32 [ 1, %list_add_tail.exit ], [ 0, %if.then20.if.end32_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  br label %cleanup

if.end35:                                         ; preds = %if.end18
  %sleep_q36 = getelementptr inbounds %struct.sta_info, ptr %psta.0160, i32 0, i32 5
  %lock37 = getelementptr inbounds %struct.sta_info, ptr %psta.0160, i32 0, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock37) #16
  %state = getelementptr inbounds %struct.sta_info, ptr %psta.0160, i32 0, i32 7
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state, align 4
  %and = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.end35.if.end93_crit_edge, label %if.then39

if.end35.if.end93_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93

if.then39:                                        ; preds = %if.end35
  %sta_dz_bitmap40 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 19
  %37 = ptrtoint ptr %sta_dz_bitmap40 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %sta_dz_bitmap40, align 4
  %conv41 = zext i16 %38 to i32
  %aid = getelementptr inbounds %struct.sta_info, ptr %psta.0160, i32 0, i32 8
  %39 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %aid, align 8
  %shl = shl nuw i32 1, %40
  %and42 = and i32 %shl, %conv41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then39.if.end93_crit_edge, label %if.then44

if.then39.if.end93_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93

if.then44:                                        ; preds = %if.then39
  %call.i.i147 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pxmitframe) #16
  br i1 %call.i.i147, label %if.end.i.i150, label %if.then44.list_del_init.exit152_crit_edge

if.then44.list_del_init.exit152_crit_edge:        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit152

if.end.i.i150:                                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i148 = getelementptr inbounds %struct.list_head, ptr %pxmitframe, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i148 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i148, align 4
  %43 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pxmitframe, align 4
  %prev1.i.i.i149 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i149 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i149, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del_init.exit152

list_del_init.exit152:                            ; preds = %if.end.i.i150, %if.then44.list_del_init.exit152_crit_edge
  %47 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %pxmitframe, ptr %pxmitframe, align 4
  %prev.i3.i151 = getelementptr inbounds %struct.list_head, ptr %pxmitframe, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i3.i151 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %pxmitframe, ptr %prev.i3.i151, align 4
  %prev.i153 = getelementptr inbounds %struct.sta_info, ptr %psta.0160, i32 0, i32 5, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i153 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i153, align 4
  %call.i.i154 = tail call zeroext i1 @__list_add_valid(ptr noundef %pxmitframe, ptr noundef %50, ptr noundef %sleep_q36) #16
  br i1 %call.i.i154, label %if.end.i.i156, label %list_del_init.exit152.list_add_tail.exit157_crit_edge

list_del_init.exit152.list_add_tail.exit157_crit_edge: ; preds = %list_del_init.exit152
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit157

if.end.i.i156:                                    ; preds = %list_del_init.exit152
  call void @__sanitizer_cov_trace_pc() #18
  %51 = ptrtoint ptr %prev.i153 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %pxmitframe, ptr %prev.i153, align 4
  %52 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %sleep_q36, ptr %pxmitframe, align 4
  %53 = ptrtoint ptr %prev.i3.i151 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev.i3.i151, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %pxmitframe, ptr %50, align 4
  br label %list_add_tail.exit157

list_add_tail.exit157:                            ; preds = %if.end.i.i156, %list_del_init.exit152.list_add_tail.exit157_crit_edge
  %sleepq_len49 = getelementptr inbounds %struct.sta_info, ptr %psta.0160, i32 0, i32 6
  %55 = ptrtoint ptr %sleepq_len49 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sleepq_len49, align 8
  %inc50 = add i32 %56, 1
  store i32 %inc50, ptr %sleepq_len49, align 8
  %priority = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 16
  %57 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %priority, align 2
  %59 = zext i8 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %58, label %sw.default [
    i8 1, label %list_add_tail.exit157.sw.bb_crit_edge
    i8 2, label %list_add_tail.exit157.sw.bb_crit_edge168
    i8 4, label %list_add_tail.exit157.sw.bb55_crit_edge
    i8 5, label %list_add_tail.exit157.sw.bb55_crit_edge169
    i8 6, label %list_add_tail.exit157.sw.bb59_crit_edge
    i8 7, label %list_add_tail.exit157.sw.bb59_crit_edge170
  ]

list_add_tail.exit157.sw.bb59_crit_edge170:       ; preds = %list_add_tail.exit157
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb59

list_add_tail.exit157.sw.bb59_crit_edge:          ; preds = %list_add_tail.exit157
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb59

list_add_tail.exit157.sw.bb55_crit_edge169:       ; preds = %list_add_tail.exit157
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb55

list_add_tail.exit157.sw.bb55_crit_edge:          ; preds = %list_add_tail.exit157
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb55

list_add_tail.exit157.sw.bb_crit_edge168:         ; preds = %list_add_tail.exit157
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

list_add_tail.exit157.sw.bb_crit_edge:            ; preds = %list_add_tail.exit157
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

sw.bb:                                            ; preds = %list_add_tail.exit157.sw.bb_crit_edge, %list_add_tail.exit157.sw.bb_crit_edge168
  %uapsd_bk = getelementptr inbounds %struct.sta_info, ptr %psta.0160, i32 0, i32 59
  br label %sw.epilog

sw.bb55:                                          ; preds = %list_add_tail.exit157.sw.bb55_crit_edge, %list_add_tail.exit157.sw.bb55_crit_edge169
  %uapsd_vi = getelementptr inbounds %struct.sta_info, ptr %psta.0160, i32 0, i32 61
  br label %sw.epilog

sw.bb59:                                          ; preds = %list_add_tail.exit157.sw.bb59_crit_edge, %list_add_tail.exit157.sw.bb59_crit_edge170
  %uapsd_vo = getelementptr inbounds %struct.sta_info, ptr %psta.0160, i32 0, i32 62
  br label %sw.epilog

sw.default:                                       ; preds = %list_add_tail.exit157
  call void @__sanitizer_cov_trace_pc() #18
  %uapsd_be = getelementptr inbounds %struct.sta_info, ptr %psta.0160, i32 0, i32 60
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb59, %sw.bb55, %sw.bb
  %wmmps_ac.0.in.in = phi ptr [ %uapsd_be, %sw.default ], [ %uapsd_vo, %sw.bb59 ], [ %uapsd_vi, %sw.bb55 ], [ %uapsd_bk, %sw.bb ]
  %60 = ptrtoint ptr %wmmps_ac.0.in.in to i32
  call void @__asan_load1_noabort(i32 %60)
  %wmmps_ac.0.in = load i8, ptr %wmmps_ac.0.in.in, align 1
  %wmmps_ac.0 = and i8 %wmmps_ac.0.in, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wmmps_ac.0)
  %tobool67.not = icmp eq i8 %wmmps_ac.0, 0
  br i1 %tobool67.not, label %if.end70, label %lor.lhs.false

if.end70:                                         ; preds = %sw.epilog
  %has_legacy_ac = getelementptr inbounds %struct.sta_info, ptr %psta.0160, i32 0, i32 63
  %61 = ptrtoint ptr %has_legacy_ac to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %has_legacy_ac, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool72.not = icmp eq i8 %62, 0
  br i1 %tobool72.not, label %if.end70.if.end93_crit_edge, label %if.end70.if.then79_crit_edge

if.end70.if.then79_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then79

if.end70.if.end93_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93

lor.lhs.false:                                    ; preds = %sw.epilog
  %sleepq_ac_len = getelementptr inbounds %struct.sta_info, ptr %psta.0160, i32 0, i32 64
  %63 = ptrtoint ptr %sleepq_ac_len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sleepq_ac_len, align 4
  %inc69 = add i32 %64, 1
  store i32 %inc69, ptr %sleepq_ac_len, align 4
  %has_legacy_ac162 = getelementptr inbounds %struct.sta_info, ptr %psta.0160, i32 0, i32 63
  %65 = ptrtoint ptr %has_legacy_ac162 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %has_legacy_ac162, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool75.not.not = icmp eq i8 %66, 0
  br i1 %tobool75.not.not, label %lor.lhs.false.if.then79_crit_edge, label %lor.lhs.false.if.end93_crit_edge

lor.lhs.false.if.end93_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93

lor.lhs.false.if.then79_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then79

if.then79:                                        ; preds = %lor.lhs.false.if.then79_crit_edge, %if.end70.if.then79_crit_edge
  %67 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %aid, align 8
  %shl81 = shl nuw i32 1, %68
  %tim_bitmap82 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  %69 = ptrtoint ptr %tim_bitmap82 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %tim_bitmap82, align 2
  %71 = trunc i32 %shl81 to i16
  %conv85 = or i16 %70, %71
  store i16 %conv85, ptr %tim_bitmap82, align 2
  %72 = ptrtoint ptr %sleepq_len49 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sleepq_len49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp87 = icmp eq i32 %73, 1
  br i1 %cmp87, label %if.then89, label %if.then79.if.end93_crit_edge

if.then79.if.end93_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93

if.then89:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @update_beacon(ptr noundef %padapter, i8 noundef zeroext 5, ptr noundef null, i8 noundef zeroext 0) #16
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %if.then79.if.end93_crit_edge, %lor.lhs.false.if.end93_crit_edge, %if.end70.if.end93_crit_edge, %if.then39.if.end93_crit_edge, %if.end35.if.end93_crit_edge
  %ret.2 = phi i32 [ 0, %if.end35.if.end93_crit_edge ], [ 0, %if.then39.if.end93_crit_edge ], [ 1, %if.then79.if.end93_crit_edge ], [ 1, %if.then89 ], [ 1, %lor.lhs.false.if.end93_crit_edge ], [ 1, %if.end70.if.end93_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock37) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.end32, %if.then16, %if.then14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end32 ], [ %ret.2, %if.end93 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %if.then14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8188eu_hal_xmit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_beacon(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stop_sta_xmit(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %call = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #16
  tail call void @_raw_spin_lock_bh(ptr noundef %xmitpriv) #16
  %state = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %or = or i32 %1, 4
  store i32 %or, ptr %state, align 4
  %aid = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 8
  %2 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aid, align 8
  %shl = shl nuw i32 1, %3
  %sta_dz_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 19
  %4 = ptrtoint ptr %sta_dz_bitmap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sta_dz_bitmap, align 4
  %6 = trunc i32 %shl to i16
  %conv2 = or i16 %5, %6
  store i16 %conv2, ptr %sta_dz_bitmap, align 4
  %vo_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 6
  %sta_pending = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 6, i32 1
  %hwxmits.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 21
  %7 = ptrtoint ptr %hwxmits.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwxmits.i, align 8
  %9 = ptrtoint ptr %sta_pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sta_pending, align 4
  %cmp.not11.i = icmp eq ptr %10, %sta_pending
  br i1 %cmp.not11.i, label %entry.dequeue_xmitframes_to_sleeping_queue.exit_crit_edge, label %while.body.lr.ph.i

entry.dequeue_xmitframes_to_sleeping_queue.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %dequeue_xmitframes_to_sleeping_queue.exit

while.body.lr.ph.i:                               ; preds = %entry
  %vi_q.i.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 5
  %bk_q.i.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 4
  %be_q.i.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %rtw_get_sta_pending.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %plist.012.i = phi ptr [ %10, %while.body.lr.ph.i ], [ %12, %rtw_get_sta_pending.exit.i.while.body.i_crit_edge ]
  %11 = ptrtoint ptr %plist.012.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %plist.012.i, align 4
  %call2.i = tail call i32 @xmitframe_enqueue_for_sleeping_sta(ptr noundef %padapter, ptr noundef %plist.012.i) #16
  %priority.i = getelementptr inbounds %struct.xmit_frame, ptr %plist.012.i, i32 0, i32 1, i32 16
  %13 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %priority.i, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %14, label %sw.default.i.i [
    i8 1, label %while.body.i.rtw_get_sta_pending.exit.i_crit_edge
    i8 2, label %while.body.i.rtw_get_sta_pending.exit.i_crit_edge159
    i8 4, label %while.body.i.sw.bb1.i.i_crit_edge
    i8 5, label %while.body.i.sw.bb1.i.i_crit_edge160
    i8 6, label %while.body.i.sw.bb3.i.i_crit_edge
    i8 7, label %while.body.i.sw.bb3.i.i_crit_edge161
  ]

while.body.i.sw.bb3.i.i_crit_edge161:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i.i

while.body.i.sw.bb3.i.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i.i

while.body.i.sw.bb1.i.i_crit_edge160:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i.i

while.body.i.sw.bb1.i.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i.i

while.body.i.rtw_get_sta_pending.exit.i_crit_edge159: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_get_sta_pending.exit.i

while.body.i.rtw_get_sta_pending.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_get_sta_pending.exit.i

sw.bb1.i.i:                                       ; preds = %while.body.i.sw.bb1.i.i_crit_edge, %while.body.i.sw.bb1.i.i_crit_edge160
  br label %rtw_get_sta_pending.exit.i

sw.bb3.i.i:                                       ; preds = %while.body.i.sw.bb3.i.i_crit_edge, %while.body.i.sw.bb3.i.i_crit_edge161
  br label %rtw_get_sta_pending.exit.i

sw.default.i.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_get_sta_pending.exit.i

rtw_get_sta_pending.exit.i:                       ; preds = %sw.default.i.i, %sw.bb3.i.i, %sw.bb1.i.i, %while.body.i.rtw_get_sta_pending.exit.i_crit_edge, %while.body.i.rtw_get_sta_pending.exit.i_crit_edge159
  %.sink.i.i = phi i32 [ 2, %sw.default.i.i ], [ 0, %sw.bb3.i.i ], [ 1, %sw.bb1.i.i ], [ 3, %while.body.i.rtw_get_sta_pending.exit.i_crit_edge ], [ 3, %while.body.i.rtw_get_sta_pending.exit.i_crit_edge159 ]
  %ptxservq.0.i.i = phi ptr [ %be_q.i.i, %sw.default.i.i ], [ %vo_q, %sw.bb3.i.i ], [ %vi_q.i.i, %sw.bb1.i.i ], [ %bk_q.i.i, %while.body.i.rtw_get_sta_pending.exit.i_crit_edge ], [ %bk_q.i.i, %while.body.i.rtw_get_sta_pending.exit.i_crit_edge159 ]
  %qcnt.i = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %qcnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qcnt.i, align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %qcnt.i, align 4
  %accnt.i = getelementptr %struct.hw_xmit, ptr %8, i32 %.sink.i.i, i32 1
  %18 = ptrtoint ptr %accnt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %accnt.i, align 4
  %dec4.i = add i32 %19, -1
  store i32 %dec4.i, ptr %accnt.i, align 4
  %cmp.not.i = icmp eq ptr %12, %sta_pending
  br i1 %cmp.not.i, label %rtw_get_sta_pending.exit.i.dequeue_xmitframes_to_sleeping_queue.exit_crit_edge, label %rtw_get_sta_pending.exit.i.while.body.i_crit_edge

rtw_get_sta_pending.exit.i.while.body.i_crit_edge: ; preds = %rtw_get_sta_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

rtw_get_sta_pending.exit.i.dequeue_xmitframes_to_sleeping_queue.exit_crit_edge: ; preds = %rtw_get_sta_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dequeue_xmitframes_to_sleeping_queue.exit

dequeue_xmitframes_to_sleeping_queue.exit:        ; preds = %rtw_get_sta_pending.exit.i.dequeue_xmitframes_to_sleeping_queue.exit_crit_edge, %entry.dequeue_xmitframes_to_sleeping_queue.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vo_q) #16
  br i1 %call.i.i, label %if.end.i.i, label %dequeue_xmitframes_to_sleeping_queue.exit.list_del_init.exit_crit_edge

dequeue_xmitframes_to_sleeping_queue.exit.list_del_init.exit_crit_edge: ; preds = %dequeue_xmitframes_to_sleeping_queue.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %dequeue_xmitframes_to_sleeping_queue.exit
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 6, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %vo_q to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vo_q, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %dequeue_xmitframes_to_sleeping_queue.exit.list_del_init.exit_crit_edge
  %26 = ptrtoint ptr %vo_q to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %vo_q, ptr %vo_q, align 4
  %prev.i3.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 6, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %vo_q, ptr %prev.i3.i, align 4
  %vi_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 5
  %sta_pending4 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 5, i32 1
  %28 = ptrtoint ptr %hwxmits.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hwxmits.i, align 8
  %30 = ptrtoint ptr %sta_pending4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sta_pending4, align 4
  %cmp.not11.i44 = icmp eq ptr %31, %sta_pending4
  br i1 %cmp.not11.i44, label %list_del_init.exit.dequeue_xmitframes_to_sleeping_queue.exit65_crit_edge, label %while.body.lr.ph.i49

list_del_init.exit.dequeue_xmitframes_to_sleeping_queue.exit65_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %dequeue_xmitframes_to_sleeping_queue.exit65

while.body.lr.ph.i49:                             ; preds = %list_del_init.exit
  %bk_q.i.i47 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 4
  %be_q.i.i48 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 3
  br label %while.body.i53

while.body.i53:                                   ; preds = %rtw_get_sta_pending.exit.i64.while.body.i53_crit_edge, %while.body.lr.ph.i49
  %plist.012.i50 = phi ptr [ %31, %while.body.lr.ph.i49 ], [ %33, %rtw_get_sta_pending.exit.i64.while.body.i53_crit_edge ]
  %32 = ptrtoint ptr %plist.012.i50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %plist.012.i50, align 4
  %call2.i51 = tail call i32 @xmitframe_enqueue_for_sleeping_sta(ptr noundef %padapter, ptr noundef %plist.012.i50) #16
  %priority.i52 = getelementptr inbounds %struct.xmit_frame, ptr %plist.012.i50, i32 0, i32 1, i32 16
  %34 = ptrtoint ptr %priority.i52 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %priority.i52, align 2
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %35, label %sw.default.i.i56 [
    i8 1, label %while.body.i53.rtw_get_sta_pending.exit.i64_crit_edge
    i8 2, label %while.body.i53.rtw_get_sta_pending.exit.i64_crit_edge162
    i8 4, label %while.body.i53.sw.bb1.i.i54_crit_edge
    i8 5, label %while.body.i53.sw.bb1.i.i54_crit_edge163
    i8 6, label %while.body.i53.sw.bb3.i.i55_crit_edge
    i8 7, label %while.body.i53.sw.bb3.i.i55_crit_edge164
  ]

while.body.i53.sw.bb3.i.i55_crit_edge164:         ; preds = %while.body.i53
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i.i55

while.body.i53.sw.bb3.i.i55_crit_edge:            ; preds = %while.body.i53
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i.i55

while.body.i53.sw.bb1.i.i54_crit_edge163:         ; preds = %while.body.i53
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i.i54

while.body.i53.sw.bb1.i.i54_crit_edge:            ; preds = %while.body.i53
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i.i54

while.body.i53.rtw_get_sta_pending.exit.i64_crit_edge162: ; preds = %while.body.i53
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_get_sta_pending.exit.i64

while.body.i53.rtw_get_sta_pending.exit.i64_crit_edge: ; preds = %while.body.i53
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_get_sta_pending.exit.i64

sw.bb1.i.i54:                                     ; preds = %while.body.i53.sw.bb1.i.i54_crit_edge, %while.body.i53.sw.bb1.i.i54_crit_edge163
  br label %rtw_get_sta_pending.exit.i64

sw.bb3.i.i55:                                     ; preds = %while.body.i53.sw.bb3.i.i55_crit_edge, %while.body.i53.sw.bb3.i.i55_crit_edge164
  br label %rtw_get_sta_pending.exit.i64

sw.default.i.i56:                                 ; preds = %while.body.i53
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_get_sta_pending.exit.i64

rtw_get_sta_pending.exit.i64:                     ; preds = %sw.default.i.i56, %sw.bb3.i.i55, %sw.bb1.i.i54, %while.body.i53.rtw_get_sta_pending.exit.i64_crit_edge, %while.body.i53.rtw_get_sta_pending.exit.i64_crit_edge162
  %.sink.i.i57 = phi i32 [ 2, %sw.default.i.i56 ], [ 0, %sw.bb3.i.i55 ], [ 1, %sw.bb1.i.i54 ], [ 3, %while.body.i53.rtw_get_sta_pending.exit.i64_crit_edge ], [ 3, %while.body.i53.rtw_get_sta_pending.exit.i64_crit_edge162 ]
  %ptxservq.0.i.i58 = phi ptr [ %be_q.i.i48, %sw.default.i.i56 ], [ %vo_q, %sw.bb3.i.i55 ], [ %vi_q, %sw.bb1.i.i54 ], [ %bk_q.i.i47, %while.body.i53.rtw_get_sta_pending.exit.i64_crit_edge ], [ %bk_q.i.i47, %while.body.i53.rtw_get_sta_pending.exit.i64_crit_edge162 ]
  %qcnt.i59 = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i.i58, i32 0, i32 2
  %37 = ptrtoint ptr %qcnt.i59 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qcnt.i59, align 4
  %dec.i60 = add i32 %38, -1
  store i32 %dec.i60, ptr %qcnt.i59, align 4
  %accnt.i61 = getelementptr %struct.hw_xmit, ptr %29, i32 %.sink.i.i57, i32 1
  %39 = ptrtoint ptr %accnt.i61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %accnt.i61, align 4
  %dec4.i62 = add i32 %40, -1
  store i32 %dec4.i62, ptr %accnt.i61, align 4
  %cmp.not.i63 = icmp eq ptr %33, %sta_pending4
  br i1 %cmp.not.i63, label %rtw_get_sta_pending.exit.i64.dequeue_xmitframes_to_sleeping_queue.exit65_crit_edge, label %rtw_get_sta_pending.exit.i64.while.body.i53_crit_edge

rtw_get_sta_pending.exit.i64.while.body.i53_crit_edge: ; preds = %rtw_get_sta_pending.exit.i64
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i53

rtw_get_sta_pending.exit.i64.dequeue_xmitframes_to_sleeping_queue.exit65_crit_edge: ; preds = %rtw_get_sta_pending.exit.i64
  call void @__sanitizer_cov_trace_pc() #18
  br label %dequeue_xmitframes_to_sleeping_queue.exit65

dequeue_xmitframes_to_sleeping_queue.exit65:      ; preds = %rtw_get_sta_pending.exit.i64.dequeue_xmitframes_to_sleeping_queue.exit65_crit_edge, %list_del_init.exit.dequeue_xmitframes_to_sleeping_queue.exit65_crit_edge
  %call.i.i66 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vi_q) #16
  br i1 %call.i.i66, label %if.end.i.i69, label %dequeue_xmitframes_to_sleeping_queue.exit65.list_del_init.exit71_crit_edge

dequeue_xmitframes_to_sleeping_queue.exit65.list_del_init.exit71_crit_edge: ; preds = %dequeue_xmitframes_to_sleeping_queue.exit65
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit71

if.end.i.i69:                                     ; preds = %dequeue_xmitframes_to_sleeping_queue.exit65
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i67 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 5, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i67 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i67, align 4
  %43 = ptrtoint ptr %vi_q to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vi_q, align 4
  %prev1.i.i.i68 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i68, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del_init.exit71

list_del_init.exit71:                             ; preds = %if.end.i.i69, %dequeue_xmitframes_to_sleeping_queue.exit65.list_del_init.exit71_crit_edge
  %47 = ptrtoint ptr %vi_q to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %vi_q, ptr %vi_q, align 4
  %prev.i3.i70 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 5, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i3.i70 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %vi_q, ptr %prev.i3.i70, align 4
  %be_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 3
  %sta_pending7 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 3, i32 1
  %49 = ptrtoint ptr %hwxmits.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hwxmits.i, align 8
  %51 = ptrtoint ptr %sta_pending7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sta_pending7, align 4
  %cmp.not11.i73 = icmp eq ptr %52, %sta_pending7
  br i1 %cmp.not11.i73, label %list_del_init.exit71.dequeue_xmitframes_to_sleeping_queue.exit94_crit_edge, label %while.body.lr.ph.i78

list_del_init.exit71.dequeue_xmitframes_to_sleeping_queue.exit94_crit_edge: ; preds = %list_del_init.exit71
  call void @__sanitizer_cov_trace_pc() #18
  br label %dequeue_xmitframes_to_sleeping_queue.exit94

while.body.lr.ph.i78:                             ; preds = %list_del_init.exit71
  %bk_q.i.i76 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 4
  br label %while.body.i82

while.body.i82:                                   ; preds = %rtw_get_sta_pending.exit.i93.while.body.i82_crit_edge, %while.body.lr.ph.i78
  %plist.012.i79 = phi ptr [ %52, %while.body.lr.ph.i78 ], [ %54, %rtw_get_sta_pending.exit.i93.while.body.i82_crit_edge ]
  %53 = ptrtoint ptr %plist.012.i79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %plist.012.i79, align 4
  %call2.i80 = tail call i32 @xmitframe_enqueue_for_sleeping_sta(ptr noundef %padapter, ptr noundef %plist.012.i79) #16
  %priority.i81 = getelementptr inbounds %struct.xmit_frame, ptr %plist.012.i79, i32 0, i32 1, i32 16
  %55 = ptrtoint ptr %priority.i81 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %priority.i81, align 2
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %56, label %sw.default.i.i85 [
    i8 1, label %while.body.i82.rtw_get_sta_pending.exit.i93_crit_edge
    i8 2, label %while.body.i82.rtw_get_sta_pending.exit.i93_crit_edge165
    i8 4, label %while.body.i82.sw.bb1.i.i83_crit_edge
    i8 5, label %while.body.i82.sw.bb1.i.i83_crit_edge166
    i8 6, label %while.body.i82.sw.bb3.i.i84_crit_edge
    i8 7, label %while.body.i82.sw.bb3.i.i84_crit_edge167
  ]

while.body.i82.sw.bb3.i.i84_crit_edge167:         ; preds = %while.body.i82
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i.i84

while.body.i82.sw.bb3.i.i84_crit_edge:            ; preds = %while.body.i82
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i.i84

while.body.i82.sw.bb1.i.i83_crit_edge166:         ; preds = %while.body.i82
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i.i83

while.body.i82.sw.bb1.i.i83_crit_edge:            ; preds = %while.body.i82
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i.i83

while.body.i82.rtw_get_sta_pending.exit.i93_crit_edge165: ; preds = %while.body.i82
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_get_sta_pending.exit.i93

while.body.i82.rtw_get_sta_pending.exit.i93_crit_edge: ; preds = %while.body.i82
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_get_sta_pending.exit.i93

sw.bb1.i.i83:                                     ; preds = %while.body.i82.sw.bb1.i.i83_crit_edge, %while.body.i82.sw.bb1.i.i83_crit_edge166
  br label %rtw_get_sta_pending.exit.i93

sw.bb3.i.i84:                                     ; preds = %while.body.i82.sw.bb3.i.i84_crit_edge, %while.body.i82.sw.bb3.i.i84_crit_edge167
  br label %rtw_get_sta_pending.exit.i93

sw.default.i.i85:                                 ; preds = %while.body.i82
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_get_sta_pending.exit.i93

rtw_get_sta_pending.exit.i93:                     ; preds = %sw.default.i.i85, %sw.bb3.i.i84, %sw.bb1.i.i83, %while.body.i82.rtw_get_sta_pending.exit.i93_crit_edge, %while.body.i82.rtw_get_sta_pending.exit.i93_crit_edge165
  %.sink.i.i86 = phi i32 [ 2, %sw.default.i.i85 ], [ 0, %sw.bb3.i.i84 ], [ 1, %sw.bb1.i.i83 ], [ 3, %while.body.i82.rtw_get_sta_pending.exit.i93_crit_edge ], [ 3, %while.body.i82.rtw_get_sta_pending.exit.i93_crit_edge165 ]
  %ptxservq.0.i.i87 = phi ptr [ %be_q, %sw.default.i.i85 ], [ %vo_q, %sw.bb3.i.i84 ], [ %vi_q, %sw.bb1.i.i83 ], [ %bk_q.i.i76, %while.body.i82.rtw_get_sta_pending.exit.i93_crit_edge ], [ %bk_q.i.i76, %while.body.i82.rtw_get_sta_pending.exit.i93_crit_edge165 ]
  %qcnt.i88 = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i.i87, i32 0, i32 2
  %58 = ptrtoint ptr %qcnt.i88 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %qcnt.i88, align 4
  %dec.i89 = add i32 %59, -1
  store i32 %dec.i89, ptr %qcnt.i88, align 4
  %accnt.i90 = getelementptr %struct.hw_xmit, ptr %50, i32 %.sink.i.i86, i32 1
  %60 = ptrtoint ptr %accnt.i90 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %accnt.i90, align 4
  %dec4.i91 = add i32 %61, -1
  store i32 %dec4.i91, ptr %accnt.i90, align 4
  %cmp.not.i92 = icmp eq ptr %54, %sta_pending7
  br i1 %cmp.not.i92, label %rtw_get_sta_pending.exit.i93.dequeue_xmitframes_to_sleeping_queue.exit94_crit_edge, label %rtw_get_sta_pending.exit.i93.while.body.i82_crit_edge

rtw_get_sta_pending.exit.i93.while.body.i82_crit_edge: ; preds = %rtw_get_sta_pending.exit.i93
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i82

rtw_get_sta_pending.exit.i93.dequeue_xmitframes_to_sleeping_queue.exit94_crit_edge: ; preds = %rtw_get_sta_pending.exit.i93
  call void @__sanitizer_cov_trace_pc() #18
  br label %dequeue_xmitframes_to_sleeping_queue.exit94

dequeue_xmitframes_to_sleeping_queue.exit94:      ; preds = %rtw_get_sta_pending.exit.i93.dequeue_xmitframes_to_sleeping_queue.exit94_crit_edge, %list_del_init.exit71.dequeue_xmitframes_to_sleeping_queue.exit94_crit_edge
  %call.i.i95 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %be_q) #16
  br i1 %call.i.i95, label %if.end.i.i98, label %dequeue_xmitframes_to_sleeping_queue.exit94.list_del_init.exit100_crit_edge

dequeue_xmitframes_to_sleeping_queue.exit94.list_del_init.exit100_crit_edge: ; preds = %dequeue_xmitframes_to_sleeping_queue.exit94
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit100

if.end.i.i98:                                     ; preds = %dequeue_xmitframes_to_sleeping_queue.exit94
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i96 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 3, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i96 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i96, align 4
  %64 = ptrtoint ptr %be_q to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %be_q, align 4
  %prev1.i.i.i97 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i97, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del_init.exit100

list_del_init.exit100:                            ; preds = %if.end.i.i98, %dequeue_xmitframes_to_sleeping_queue.exit94.list_del_init.exit100_crit_edge
  %68 = ptrtoint ptr %be_q to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %be_q, ptr %be_q, align 4
  %prev.i3.i99 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 3, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i3.i99 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %be_q, ptr %prev.i3.i99, align 4
  %bk_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 4
  %sta_pending10 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 4, i32 1
  %70 = ptrtoint ptr %hwxmits.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hwxmits.i, align 8
  %72 = ptrtoint ptr %sta_pending10 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sta_pending10, align 4
  %cmp.not11.i102 = icmp eq ptr %73, %sta_pending10
  br i1 %cmp.not11.i102, label %list_del_init.exit100.dequeue_xmitframes_to_sleeping_queue.exit123_crit_edge, label %list_del_init.exit100.while.body.i111_crit_edge

list_del_init.exit100.while.body.i111_crit_edge:  ; preds = %list_del_init.exit100
  br label %while.body.i111

list_del_init.exit100.dequeue_xmitframes_to_sleeping_queue.exit123_crit_edge: ; preds = %list_del_init.exit100
  call void @__sanitizer_cov_trace_pc() #18
  br label %dequeue_xmitframes_to_sleeping_queue.exit123

while.body.i111:                                  ; preds = %rtw_get_sta_pending.exit.i122.while.body.i111_crit_edge, %list_del_init.exit100.while.body.i111_crit_edge
  %plist.012.i108 = phi ptr [ %75, %rtw_get_sta_pending.exit.i122.while.body.i111_crit_edge ], [ %73, %list_del_init.exit100.while.body.i111_crit_edge ]
  %74 = ptrtoint ptr %plist.012.i108 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %plist.012.i108, align 4
  %call2.i109 = tail call i32 @xmitframe_enqueue_for_sleeping_sta(ptr noundef %padapter, ptr noundef %plist.012.i108) #16
  %priority.i110 = getelementptr inbounds %struct.xmit_frame, ptr %plist.012.i108, i32 0, i32 1, i32 16
  %76 = ptrtoint ptr %priority.i110 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %priority.i110, align 2
  %78 = zext i8 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %77, label %sw.default.i.i114 [
    i8 1, label %while.body.i111.rtw_get_sta_pending.exit.i122_crit_edge
    i8 2, label %while.body.i111.rtw_get_sta_pending.exit.i122_crit_edge168
    i8 4, label %while.body.i111.sw.bb1.i.i112_crit_edge
    i8 5, label %while.body.i111.sw.bb1.i.i112_crit_edge169
    i8 6, label %while.body.i111.sw.bb3.i.i113_crit_edge
    i8 7, label %while.body.i111.sw.bb3.i.i113_crit_edge170
  ]

while.body.i111.sw.bb3.i.i113_crit_edge170:       ; preds = %while.body.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i.i113

while.body.i111.sw.bb3.i.i113_crit_edge:          ; preds = %while.body.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i.i113

while.body.i111.sw.bb1.i.i112_crit_edge169:       ; preds = %while.body.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i.i112

while.body.i111.sw.bb1.i.i112_crit_edge:          ; preds = %while.body.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i.i112

while.body.i111.rtw_get_sta_pending.exit.i122_crit_edge168: ; preds = %while.body.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_get_sta_pending.exit.i122

while.body.i111.rtw_get_sta_pending.exit.i122_crit_edge: ; preds = %while.body.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_get_sta_pending.exit.i122

sw.bb1.i.i112:                                    ; preds = %while.body.i111.sw.bb1.i.i112_crit_edge, %while.body.i111.sw.bb1.i.i112_crit_edge169
  br label %rtw_get_sta_pending.exit.i122

sw.bb3.i.i113:                                    ; preds = %while.body.i111.sw.bb3.i.i113_crit_edge, %while.body.i111.sw.bb3.i.i113_crit_edge170
  br label %rtw_get_sta_pending.exit.i122

sw.default.i.i114:                                ; preds = %while.body.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_get_sta_pending.exit.i122

rtw_get_sta_pending.exit.i122:                    ; preds = %sw.default.i.i114, %sw.bb3.i.i113, %sw.bb1.i.i112, %while.body.i111.rtw_get_sta_pending.exit.i122_crit_edge, %while.body.i111.rtw_get_sta_pending.exit.i122_crit_edge168
  %.sink.i.i115 = phi i32 [ 2, %sw.default.i.i114 ], [ 0, %sw.bb3.i.i113 ], [ 1, %sw.bb1.i.i112 ], [ 3, %while.body.i111.rtw_get_sta_pending.exit.i122_crit_edge ], [ 3, %while.body.i111.rtw_get_sta_pending.exit.i122_crit_edge168 ]
  %ptxservq.0.i.i116 = phi ptr [ %be_q, %sw.default.i.i114 ], [ %vo_q, %sw.bb3.i.i113 ], [ %vi_q, %sw.bb1.i.i112 ], [ %bk_q, %while.body.i111.rtw_get_sta_pending.exit.i122_crit_edge ], [ %bk_q, %while.body.i111.rtw_get_sta_pending.exit.i122_crit_edge168 ]
  %qcnt.i117 = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i.i116, i32 0, i32 2
  %79 = ptrtoint ptr %qcnt.i117 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %qcnt.i117, align 4
  %dec.i118 = add i32 %80, -1
  store i32 %dec.i118, ptr %qcnt.i117, align 4
  %accnt.i119 = getelementptr %struct.hw_xmit, ptr %71, i32 %.sink.i.i115, i32 1
  %81 = ptrtoint ptr %accnt.i119 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %accnt.i119, align 4
  %dec4.i120 = add i32 %82, -1
  store i32 %dec4.i120, ptr %accnt.i119, align 4
  %cmp.not.i121 = icmp eq ptr %75, %sta_pending10
  br i1 %cmp.not.i121, label %rtw_get_sta_pending.exit.i122.dequeue_xmitframes_to_sleeping_queue.exit123_crit_edge, label %rtw_get_sta_pending.exit.i122.while.body.i111_crit_edge

rtw_get_sta_pending.exit.i122.while.body.i111_crit_edge: ; preds = %rtw_get_sta_pending.exit.i122
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i111

rtw_get_sta_pending.exit.i122.dequeue_xmitframes_to_sleeping_queue.exit123_crit_edge: ; preds = %rtw_get_sta_pending.exit.i122
  call void @__sanitizer_cov_trace_pc() #18
  br label %dequeue_xmitframes_to_sleeping_queue.exit123

dequeue_xmitframes_to_sleeping_queue.exit123:     ; preds = %rtw_get_sta_pending.exit.i122.dequeue_xmitframes_to_sleeping_queue.exit123_crit_edge, %list_del_init.exit100.dequeue_xmitframes_to_sleeping_queue.exit123_crit_edge
  %call.i.i124 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bk_q) #16
  br i1 %call.i.i124, label %if.end.i.i127, label %dequeue_xmitframes_to_sleeping_queue.exit123.list_del_init.exit129_crit_edge

dequeue_xmitframes_to_sleeping_queue.exit123.list_del_init.exit129_crit_edge: ; preds = %dequeue_xmitframes_to_sleeping_queue.exit123
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit129

if.end.i.i127:                                    ; preds = %dequeue_xmitframes_to_sleeping_queue.exit123
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i125 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 4, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i.i125 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i.i125, align 4
  %85 = ptrtoint ptr %bk_q to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bk_q, align 4
  %prev1.i.i.i126 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %prev1.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev1.i.i.i126, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %86, ptr %84, align 4
  br label %list_del_init.exit129

list_del_init.exit129:                            ; preds = %if.end.i.i127, %dequeue_xmitframes_to_sleeping_queue.exit123.list_del_init.exit129_crit_edge
  %89 = ptrtoint ptr %bk_q to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %bk_q, ptr %bk_q, align 4
  %prev.i3.i128 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3, i32 4, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i3.i128 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %bk_q, ptr %prev.i3.i128, align 4
  %be_q14 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 3, i32 3
  %sta_pending15 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 3, i32 3, i32 1
  %91 = ptrtoint ptr %hwxmits.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hwxmits.i, align 8
  %93 = ptrtoint ptr %sta_pending15 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sta_pending15, align 4
  %cmp.not11.i131 = icmp eq ptr %94, %sta_pending15
  br i1 %cmp.not11.i131, label %list_del_init.exit129.dequeue_xmitframes_to_sleeping_queue.exit152_crit_edge, label %while.body.lr.ph.i136

list_del_init.exit129.dequeue_xmitframes_to_sleeping_queue.exit152_crit_edge: ; preds = %list_del_init.exit129
  call void @__sanitizer_cov_trace_pc() #18
  br label %dequeue_xmitframes_to_sleeping_queue.exit152

while.body.lr.ph.i136:                            ; preds = %list_del_init.exit129
  %vo_q.i.i132 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 3, i32 6
  %vi_q.i.i133 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 3, i32 5
  %bk_q.i.i134 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 3, i32 4
  br label %while.body.i140

while.body.i140:                                  ; preds = %rtw_get_sta_pending.exit.i151.while.body.i140_crit_edge, %while.body.lr.ph.i136
  %plist.012.i137 = phi ptr [ %94, %while.body.lr.ph.i136 ], [ %96, %rtw_get_sta_pending.exit.i151.while.body.i140_crit_edge ]
  %95 = ptrtoint ptr %plist.012.i137 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %plist.012.i137, align 4
  %call2.i138 = tail call i32 @xmitframe_enqueue_for_sleeping_sta(ptr noundef %padapter, ptr noundef %plist.012.i137) #16
  %priority.i139 = getelementptr inbounds %struct.xmit_frame, ptr %plist.012.i137, i32 0, i32 1, i32 16
  %97 = ptrtoint ptr %priority.i139 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %priority.i139, align 2
  %99 = zext i8 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %98, label %sw.default.i.i143 [
    i8 1, label %while.body.i140.rtw_get_sta_pending.exit.i151_crit_edge
    i8 2, label %while.body.i140.rtw_get_sta_pending.exit.i151_crit_edge171
    i8 4, label %while.body.i140.sw.bb1.i.i141_crit_edge
    i8 5, label %while.body.i140.sw.bb1.i.i141_crit_edge172
    i8 6, label %while.body.i140.sw.bb3.i.i142_crit_edge
    i8 7, label %while.body.i140.sw.bb3.i.i142_crit_edge173
  ]

while.body.i140.sw.bb3.i.i142_crit_edge173:       ; preds = %while.body.i140
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i.i142

while.body.i140.sw.bb3.i.i142_crit_edge:          ; preds = %while.body.i140
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i.i142

while.body.i140.sw.bb1.i.i141_crit_edge172:       ; preds = %while.body.i140
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i.i141

while.body.i140.sw.bb1.i.i141_crit_edge:          ; preds = %while.body.i140
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i.i141

while.body.i140.rtw_get_sta_pending.exit.i151_crit_edge171: ; preds = %while.body.i140
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_get_sta_pending.exit.i151

while.body.i140.rtw_get_sta_pending.exit.i151_crit_edge: ; preds = %while.body.i140
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_get_sta_pending.exit.i151

sw.bb1.i.i141:                                    ; preds = %while.body.i140.sw.bb1.i.i141_crit_edge, %while.body.i140.sw.bb1.i.i141_crit_edge172
  br label %rtw_get_sta_pending.exit.i151

sw.bb3.i.i142:                                    ; preds = %while.body.i140.sw.bb3.i.i142_crit_edge, %while.body.i140.sw.bb3.i.i142_crit_edge173
  br label %rtw_get_sta_pending.exit.i151

sw.default.i.i143:                                ; preds = %while.body.i140
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_get_sta_pending.exit.i151

rtw_get_sta_pending.exit.i151:                    ; preds = %sw.default.i.i143, %sw.bb3.i.i142, %sw.bb1.i.i141, %while.body.i140.rtw_get_sta_pending.exit.i151_crit_edge, %while.body.i140.rtw_get_sta_pending.exit.i151_crit_edge171
  %.sink.i.i144 = phi i32 [ 2, %sw.default.i.i143 ], [ 0, %sw.bb3.i.i142 ], [ 1, %sw.bb1.i.i141 ], [ 3, %while.body.i140.rtw_get_sta_pending.exit.i151_crit_edge ], [ 3, %while.body.i140.rtw_get_sta_pending.exit.i151_crit_edge171 ]
  %ptxservq.0.i.i145 = phi ptr [ %be_q14, %sw.default.i.i143 ], [ %vo_q.i.i132, %sw.bb3.i.i142 ], [ %vi_q.i.i133, %sw.bb1.i.i141 ], [ %bk_q.i.i134, %while.body.i140.rtw_get_sta_pending.exit.i151_crit_edge ], [ %bk_q.i.i134, %while.body.i140.rtw_get_sta_pending.exit.i151_crit_edge171 ]
  %qcnt.i146 = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i.i145, i32 0, i32 2
  %100 = ptrtoint ptr %qcnt.i146 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %qcnt.i146, align 4
  %dec.i147 = add i32 %101, -1
  store i32 %dec.i147, ptr %qcnt.i146, align 4
  %accnt.i148 = getelementptr %struct.hw_xmit, ptr %92, i32 %.sink.i.i144, i32 1
  %102 = ptrtoint ptr %accnt.i148 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %accnt.i148, align 4
  %dec4.i149 = add i32 %103, -1
  store i32 %dec4.i149, ptr %accnt.i148, align 4
  %cmp.not.i150 = icmp eq ptr %96, %sta_pending15
  br i1 %cmp.not.i150, label %rtw_get_sta_pending.exit.i151.dequeue_xmitframes_to_sleeping_queue.exit152_crit_edge, label %rtw_get_sta_pending.exit.i151.while.body.i140_crit_edge

rtw_get_sta_pending.exit.i151.while.body.i140_crit_edge: ; preds = %rtw_get_sta_pending.exit.i151
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i140

rtw_get_sta_pending.exit.i151.dequeue_xmitframes_to_sleeping_queue.exit152_crit_edge: ; preds = %rtw_get_sta_pending.exit.i151
  call void @__sanitizer_cov_trace_pc() #18
  br label %dequeue_xmitframes_to_sleeping_queue.exit152

dequeue_xmitframes_to_sleeping_queue.exit152:     ; preds = %rtw_get_sta_pending.exit.i151.dequeue_xmitframes_to_sleeping_queue.exit152_crit_edge, %list_del_init.exit129.dequeue_xmitframes_to_sleeping_queue.exit152_crit_edge
  %call.i.i153 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %be_q14) #16
  br i1 %call.i.i153, label %if.end.i.i156, label %dequeue_xmitframes_to_sleeping_queue.exit152.list_del_init.exit158_crit_edge

dequeue_xmitframes_to_sleeping_queue.exit152.list_del_init.exit158_crit_edge: ; preds = %dequeue_xmitframes_to_sleeping_queue.exit152
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit158

if.end.i.i156:                                    ; preds = %dequeue_xmitframes_to_sleeping_queue.exit152
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i154 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 3, i32 3, i32 0, i32 1
  %104 = ptrtoint ptr %prev.i.i154 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev.i.i154, align 4
  %106 = ptrtoint ptr %be_q14 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %be_q14, align 4
  %prev1.i.i.i155 = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %prev1.i.i.i155 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev1.i.i.i155, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %107, ptr %105, align 4
  br label %list_del_init.exit158

list_del_init.exit158:                            ; preds = %if.end.i.i156, %dequeue_xmitframes_to_sleeping_queue.exit152.list_del_init.exit158_crit_edge
  %110 = ptrtoint ptr %be_q14 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %be_q14, ptr %be_q14, align 4
  %prev.i3.i157 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 3, i32 3, i32 0, i32 1
  %111 = ptrtoint ptr %prev.i3.i157 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %be_q14, ptr %prev.i3.i157, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wakeup_sta_to_xmit(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 5
  %lock = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %0 = ptrtoint ptr %sleep_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sleep_q, align 4
  %cmp.not221 = icmp eq ptr %sleep_q, %1
  br i1 %cmp.not221, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %uapsd_vo = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 62
  %uapsd_vi = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 61
  %uapsd_bk = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 59
  %uapsd_be = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 60
  %sleepq_len = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 6
  %sleepq_ac_len = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 64
  br label %while.body

while.body:                                       ; preds = %if.end45.while.body_crit_edge, %while.body.lr.ph
  %xmitframe_plist.0222 = phi ptr [ %1, %while.body.lr.ph ], [ %3, %if.end45.while.body_crit_edge ]
  %2 = ptrtoint ptr %xmitframe_plist.0222 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xmitframe_plist.0222, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %xmitframe_plist.0222) #16
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %xmitframe_plist.0222, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %xmitframe_plist.0222 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xmitframe_plist.0222, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %xmitframe_plist.0222 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %xmitframe_plist.0222, ptr %xmitframe_plist.0222, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %xmitframe_plist.0222, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %xmitframe_plist.0222, ptr %prev.i3.i, align 4
  %priority = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0222, i32 0, i32 1, i32 16
  %12 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %priority, align 2
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.96)
  switch i8 %13, label %sw.default [
    i8 1, label %list_del_init.exit.sw.epilog_crit_edge
    i8 2, label %list_del_init.exit.sw.epilog_crit_edge234
    i8 4, label %list_del_init.exit.sw.bb5_crit_edge
    i8 5, label %list_del_init.exit.sw.bb5_crit_edge235
    i8 6, label %list_del_init.exit.sw.bb9_crit_edge
    i8 7, label %list_del_init.exit.sw.bb9_crit_edge236
  ]

list_del_init.exit.sw.bb9_crit_edge236:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb9

list_del_init.exit.sw.bb9_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb9

list_del_init.exit.sw.bb5_crit_edge235:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5

list_del_init.exit.sw.bb5_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5

list_del_init.exit.sw.epilog_crit_edge234:        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

list_del_init.exit.sw.epilog_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb5:                                           ; preds = %list_del_init.exit.sw.bb5_crit_edge, %list_del_init.exit.sw.bb5_crit_edge235
  br label %sw.epilog

sw.bb9:                                           ; preds = %list_del_init.exit.sw.bb9_crit_edge, %list_del_init.exit.sw.bb9_crit_edge236
  br label %sw.epilog

sw.default:                                       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb5, %list_del_init.exit.sw.epilog_crit_edge, %list_del_init.exit.sw.epilog_crit_edge234
  %wmmps_ac.0.in.in = phi ptr [ %uapsd_be, %sw.default ], [ %uapsd_vo, %sw.bb9 ], [ %uapsd_vi, %sw.bb5 ], [ %uapsd_bk, %list_del_init.exit.sw.epilog_crit_edge ], [ %uapsd_bk, %list_del_init.exit.sw.epilog_crit_edge234 ]
  %15 = ptrtoint ptr %wmmps_ac.0.in.in to i32
  call void @__asan_load1_noabort(i32 %15)
  %wmmps_ac.0.in = load i8, ptr %wmmps_ac.0.in.in, align 1
  %wmmps_ac.0 = and i8 %wmmps_ac.0.in, 2
  %16 = ptrtoint ptr %sleepq_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sleepq_len, align 8
  %dec = add i32 %17, -1
  store i32 %dec, ptr %sleepq_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp18.not = icmp ne i32 %dec, 0
  %spec.select = zext i1 %cmp18.not to i8
  %18 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0222, i32 0, i32 1, i32 32
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select, ptr %18, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wmmps_ac.0)
  %tobool.not = icmp eq i8 %wmmps_ac.0, 0
  br i1 %tobool.not, label %sw.epilog.if.end38_crit_edge, label %if.then23

sw.epilog.if.end38_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.then23:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %sleepq_ac_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sleepq_ac_len, align 4
  %dec24 = add i32 %21, -1
  store i32 %dec24, ptr %sleepq_ac_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec24)
  %cmp26.not = icmp eq i32 %dec24, 0
  %not.cmp26.not = xor i1 %cmp26.not, true
  %. = zext i1 %not.cmp26.not to i8
  %.233 = zext i1 %cmp26.not to i8
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %., ptr %18, align 2
  %eosp = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0222, i32 0, i32 1, i32 36
  %23 = ptrtoint ptr %eosp to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.233, ptr %eosp, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.then23, %sw.epilog.if.end38_crit_edge
  %triggered = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0222, i32 0, i32 1, i32 34
  %24 = ptrtoint ptr %triggered to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %triggered, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  %call42 = tail call i32 @rtl8188eu_hal_xmit(ptr noundef %padapter, ptr noundef %xmitframe_plist.0222) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end38.if.end45_crit_edge, label %if.then44

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rtw_os_xmit_complete(ptr noundef %padapter, ptr noundef %xmitframe_plist.0222) #16
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end38.if.end45_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %cmp.not = icmp eq ptr %sleep_q, %3
  br i1 %cmp.not, label %if.end45.while.end_crit_edge, label %if.end45.while.body_crit_edge

if.end45.while.body_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end45.while.end_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end45.while.end_crit_edge, %entry.while.end_crit_edge
  %sleepq_len48 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 6
  %25 = ptrtoint ptr %sleepq_len48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sleepq_len48, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp49 = icmp eq i32 %26, 0
  br i1 %cmp49, label %if.then51, label %while.end.if.end74_crit_edge

while.end.if.end74_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

if.then51:                                        ; preds = %while.end
  %aid = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 8
  %27 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %aid, align 8
  %shl = shl nuw i32 1, %28
  %tim_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  %29 = ptrtoint ptr %tim_bitmap to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tim_bitmap, align 2
  %31 = trunc i32 %shl to i16
  %32 = xor i16 %31, -1
  %conv54 = and i16 %30, %32
  store i16 %conv54, ptr %tim_bitmap, align 2
  %state = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 7
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state, align 4
  %and55 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then51.if.end59_crit_edge, label %if.then57

if.then51.if.end59_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

if.then57:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  %xor = xor i32 %34, 4
  %35 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %xor, ptr %state, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then51.if.end59_crit_edge
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state, align 4
  %and61 = and i32 %37, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end59.if.end67_crit_edge, label %if.then63

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  %expire_to = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 17
  %38 = ptrtoint ptr %expire_to to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %expire_to, align 4
  %expire_to64 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 36
  %40 = ptrtoint ptr %expire_to64 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %expire_to64, align 4
  %xor66 = xor i32 %37, 1024
  %41 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %xor66, ptr %state, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %if.end59.if.end67_crit_edge
  %42 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %aid, align 8
  %shl69 = shl nuw i32 1, %43
  %sta_dz_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 19
  %44 = ptrtoint ptr %sta_dz_bitmap to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sta_dz_bitmap, align 4
  %46 = trunc i32 %shl69 to i16
  %47 = xor i16 %46, -1
  %conv73 = and i16 %45, %47
  store i16 %conv73, ptr %sta_dz_bitmap, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.end67, %while.end.if.end74_crit_edge
  %update_mask.0 = phi i8 [ 1, %if.end67 ], [ 0, %while.end.if.end74_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  %call77 = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #16
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %if.end74.cleanup_crit_edge, label %if.end80

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end80:                                         ; preds = %if.end74
  %sta_dz_bitmap81 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 19
  %48 = ptrtoint ptr %sta_dz_bitmap81 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %sta_dz_bitmap81, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %49)
  %cmp84 = icmp ult i16 %49, 2
  br i1 %cmp84, label %if.then86, label %if.end80.if.end141_crit_edge

if.end80.if.end141_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end141

if.then86:                                        ; preds = %if.end80
  %sleep_q87 = getelementptr inbounds %struct.sta_info, ptr %call77, i32 0, i32 5
  %lock88 = getelementptr inbounds %struct.sta_info, ptr %call77, i32 0, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock88) #16
  %50 = ptrtoint ptr %sleep_q87 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sleep_q87, align 4
  %cmp93.not226 = icmp eq ptr %sleep_q87, %51
  br i1 %cmp93.not226, label %if.then86.while.end123_crit_edge, label %while.body95.lr.ph

if.then86.while.end123_crit_edge:                 ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end123

while.body95.lr.ph:                               ; preds = %if.then86
  %sleepq_len101 = getelementptr inbounds %struct.sta_info, ptr %call77, i32 0, i32 6
  br label %while.body95

while.body95:                                     ; preds = %if.end120.while.body95_crit_edge, %while.body95.lr.ph
  %xmitframe_plist.1227 = phi ptr [ %51, %while.body95.lr.ph ], [ %53, %if.end120.while.body95_crit_edge ]
  %52 = ptrtoint ptr %xmitframe_plist.1227 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %xmitframe_plist.1227, align 4
  %call.i.i215 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %xmitframe_plist.1227) #16
  br i1 %call.i.i215, label %if.end.i.i218, label %while.body95.list_del_init.exit220_crit_edge

while.body95.list_del_init.exit220_crit_edge:     ; preds = %while.body95
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit220

if.end.i.i218:                                    ; preds = %while.body95
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i216 = getelementptr inbounds %struct.list_head, ptr %xmitframe_plist.1227, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i216 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i216, align 4
  %56 = ptrtoint ptr %xmitframe_plist.1227 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %xmitframe_plist.1227, align 4
  %prev1.i.i.i217 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i217 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i217, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del_init.exit220

list_del_init.exit220:                            ; preds = %if.end.i.i218, %while.body95.list_del_init.exit220_crit_edge
  %60 = ptrtoint ptr %xmitframe_plist.1227 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %xmitframe_plist.1227, ptr %xmitframe_plist.1227, align 4
  %prev.i3.i219 = getelementptr inbounds %struct.list_head, ptr %xmitframe_plist.1227, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i3.i219 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %xmitframe_plist.1227, ptr %prev.i3.i219, align 4
  %62 = ptrtoint ptr %sleepq_len101 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sleepq_len101, align 8
  %dec102 = add i32 %63, -1
  store i32 %dec102, ptr %sleepq_len101, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec102)
  %cmp104.not = icmp ne i32 %dec102, 0
  %spec.select232 = zext i1 %cmp104.not to i8
  %64 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.1227, i32 0, i32 1, i32 32
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %spec.select232, ptr %64, align 2
  %triggered114 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.1227, i32 0, i32 1, i32 34
  %66 = ptrtoint ptr %triggered114 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %triggered114, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock88) #16
  %call117 = tail call i32 @rtl8188eu_hal_xmit(ptr noundef %padapter, ptr noundef %xmitframe_plist.1227) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %list_del_init.exit220.if.end120_crit_edge, label %if.then119

list_del_init.exit220.if.end120_crit_edge:        ; preds = %list_del_init.exit220
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end120

if.then119:                                       ; preds = %list_del_init.exit220
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rtw_os_xmit_complete(ptr noundef %padapter, ptr noundef %xmitframe_plist.1227) #16
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %list_del_init.exit220.if.end120_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock88) #16
  %cmp93.not = icmp eq ptr %sleep_q87, %53
  br i1 %cmp93.not, label %if.end120.while.end123_crit_edge, label %if.end120.while.body95_crit_edge

if.end120.while.body95_crit_edge:                 ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body95

if.end120.while.end123_crit_edge:                 ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end123

while.end123:                                     ; preds = %if.end120.while.end123_crit_edge, %if.then86.while.end123_crit_edge
  %sleepq_len124 = getelementptr inbounds %struct.sta_info, ptr %call77, i32 0, i32 6
  %67 = ptrtoint ptr %sleepq_len124 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sleepq_len124, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp125 = icmp eq i32 %68, 0
  br i1 %cmp125, label %if.then127, label %while.end123.if.end138_crit_edge

while.end123.if.end138_crit_edge:                 ; preds = %while.end123
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end138

if.then127:                                       ; preds = %while.end123
  call void @__sanitizer_cov_trace_pc() #18
  %tim_bitmap128 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  %69 = ptrtoint ptr %tim_bitmap128 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %tim_bitmap128, align 2
  %71 = and i16 %70, -2
  store i16 %71, ptr %tim_bitmap128, align 2
  %72 = ptrtoint ptr %sta_dz_bitmap81 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %sta_dz_bitmap81, align 4
  %74 = and i16 %73, -2
  store i16 %74, ptr %sta_dz_bitmap81, align 4
  %75 = or i8 %update_mask.0, 2
  br label %if.end138

if.end138:                                        ; preds = %if.then127, %while.end123.if.end138_crit_edge
  %update_mask.1 = phi i8 [ %75, %if.then127 ], [ %update_mask.0, %while.end123.if.end138_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock88) #16
  br label %if.end141

if.end141:                                        ; preds = %if.end138, %if.end80.if.end141_crit_edge
  %update_mask.2 = phi i8 [ %update_mask.1, %if.end138 ], [ %update_mask.0, %if.end80.if.end141_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %update_mask.2)
  %tobool142.not = icmp eq i8 %update_mask.2, 0
  br i1 %tobool142.not, label %if.end141.cleanup_crit_edge, label %if.then143

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then143:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @update_beacon(ptr noundef %padapter, i8 noundef zeroext 5, ptr noundef null, i8 noundef zeroext 0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then143, %if.end141.cleanup_crit_edge, %if.end74.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xmit_delivery_enabled_frames(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 5
  %lock = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %0 = ptrtoint ptr %sleep_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sleep_q, align 4
  %cmp.not75 = icmp eq ptr %sleep_q, %1
  br i1 %cmp.not75, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %uapsd_vo = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 62
  %uapsd_vi = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 61
  %uapsd_bk = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 59
  %uapsd_be = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 60
  %sleepq_len = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 6
  %sleepq_ac_len = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 64
  %has_legacy_ac = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 63
  %aid = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 8
  %tim_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %xmitframe_plist.076 = phi ptr [ %1, %while.body.lr.ph ], [ %3, %while.cond.backedge.while.body_crit_edge ]
  %2 = ptrtoint ptr %xmitframe_plist.076 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xmitframe_plist.076, align 4
  %priority = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.076, i32 0, i32 1, i32 16
  %4 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %priority, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %5, label %sw.default [
    i8 1, label %while.body.sw.epilog_crit_edge
    i8 2, label %while.body.sw.epilog_crit_edge81
    i8 4, label %while.body.sw.bb5_crit_edge
    i8 5, label %while.body.sw.bb5_crit_edge82
    i8 6, label %while.body.sw.bb9_crit_edge
    i8 7, label %while.body.sw.bb9_crit_edge83
  ]

while.body.sw.bb9_crit_edge83:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb9

while.body.sw.bb9_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb9

while.body.sw.bb5_crit_edge82:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5

while.body.sw.bb5_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5

while.body.sw.epilog_crit_edge81:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb5:                                           ; preds = %while.body.sw.bb5_crit_edge, %while.body.sw.bb5_crit_edge82
  br label %sw.epilog

sw.bb9:                                           ; preds = %while.body.sw.bb9_crit_edge, %while.body.sw.bb9_crit_edge83
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb5, %while.body.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge81
  %wmmps_ac.0.in.in = phi ptr [ %uapsd_be, %sw.default ], [ %uapsd_vo, %sw.bb9 ], [ %uapsd_vi, %sw.bb5 ], [ %uapsd_bk, %while.body.sw.epilog_crit_edge ], [ %uapsd_bk, %while.body.sw.epilog_crit_edge81 ]
  %7 = ptrtoint ptr %wmmps_ac.0.in.in to i32
  call void @__asan_load1_noabort(i32 %7)
  %wmmps_ac.0.in = load i8, ptr %wmmps_ac.0.in.in, align 1
  %wmmps_ac.0 = and i8 %wmmps_ac.0.in, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wmmps_ac.0)
  %tobool.not = icmp eq i8 %wmmps_ac.0, 0
  br i1 %tobool.not, label %sw.epilog.while.cond.backedge_crit_edge, label %if.end

sw.epilog.while.cond.backedge_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge

if.end:                                           ; preds = %sw.epilog
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %xmitframe_plist.076) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %xmitframe_plist.076, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %xmitframe_plist.076 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xmitframe_plist.076, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %xmitframe_plist.076 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %xmitframe_plist.076, ptr %xmitframe_plist.076, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %xmitframe_plist.076, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %xmitframe_plist.076, ptr %prev.i3.i, align 4
  %16 = ptrtoint ptr %sleepq_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sleepq_len, align 8
  %dec = add i32 %17, -1
  store i32 %dec, ptr %sleepq_len, align 8
  %18 = ptrtoint ptr %sleepq_ac_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sleepq_ac_len, align 4
  %dec17 = add i32 %19, -1
  store i32 %dec17, ptr %sleepq_ac_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec17)
  %cmp19.not = icmp eq i32 %dec17, 0
  %not.cmp19.not = xor i1 %cmp19.not, true
  %spec.select = zext i1 %not.cmp19.not to i8
  %spec.select80 = zext i1 %cmp19.not to i8
  %20 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.076, i32 0, i32 1, i32 32
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.select, ptr %20, align 2
  %22 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.076, i32 0, i32 1, i32 36
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.select80, ptr %22, align 2
  %triggered = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.076, i32 0, i32 1, i32 34
  %24 = ptrtoint ptr %triggered to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %triggered, align 4
  %call30 = tail call i32 @rtl8188eu_hal_xmit(ptr noundef %padapter, ptr noundef %xmitframe_plist.076) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %list_del_init.exit.if.end33_crit_edge, label %if.then32

list_del_init.exit.if.end33_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then32:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rtw_os_xmit_complete(ptr noundef %padapter, ptr noundef %xmitframe_plist.076) #16
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %list_del_init.exit.if.end33_crit_edge
  %25 = ptrtoint ptr %sleepq_ac_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sleepq_ac_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp35 = icmp eq i32 %26, 0
  br i1 %cmp35, label %land.lhs.true, label %if.end33.while.cond.backedge_crit_edge

if.end33.while.cond.backedge_crit_edge:           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %if.end33
  %27 = ptrtoint ptr %has_legacy_ac to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %has_legacy_ac, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool37.not = icmp eq i8 %28, 0
  br i1 %tobool37.not, label %if.then41, label %land.lhs.true.while.cond.backedge_crit_edge

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %aid, align 8
  %shl = shl nuw i32 1, %30
  %31 = ptrtoint ptr %tim_bitmap to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %tim_bitmap, align 2
  %33 = trunc i32 %shl to i16
  %34 = xor i16 %33, -1
  %conv44 = and i16 %32, %34
  store i16 %conv44, ptr %tim_bitmap, align 2
  tail call void @update_beacon(ptr noundef %padapter, i8 noundef zeroext 5, ptr noundef null, i8 noundef zeroext 0) #16
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then41, %land.lhs.true.while.cond.backedge_crit_edge, %if.end33.while.cond.backedge_crit_edge, %sw.epilog.while.cond.backedge_crit_edge
  %cmp.not = icmp eq ptr %sleep_q, %3
  br i1 %cmp.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_sctx_wait(ptr noundef %sctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout_ms = getelementptr inbounds %struct.submit_ctx, ptr %sctx, i32 0, i32 1
  %0 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %if.else.i

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #16
  br label %cond.end

cond.end:                                         ; preds = %if.else.i, %entry.cond.end_crit_edge
  %cond = phi i32 [ 2147483647, %entry.cond.end_crit_edge ], [ %call2.i, %if.else.i ]
  %done = getelementptr inbounds %struct.submit_ctx, ptr %sctx, i32 0, i32 3
  %call2 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef %cond) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then, label %if.end10

if.then:                                          ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp ugt i32 %2, 4
  br i1 %cmp, label %do.end, label %if.then.if.end10.thread_crit_edge

if.then.if.end10.thread_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.thread

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #21
  br label %if.end10.thread

if.end10:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  %status9 = getelementptr inbounds %struct.submit_ctx, ptr %sctx, i32 0, i32 2
  %3 = ptrtoint ptr %status9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %phi.cmp = icmp eq i32 %4, 0
  %spec.select = zext i1 %phi.cmp to i32
  br label %if.end10.thread

if.end10.thread:                                  ; preds = %if.end10, %do.end, %if.then.if.end10.thread_crit_edge
  %5 = phi i32 [ 0, %do.end ], [ 0, %if.then.if.end10.thread_crit_edge ], [ %spec.select, %if.end10 ]
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_ack_tx_wait(ptr noundef %pxmitpriv, i32 noundef %timeout_ms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_tx_ops = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = ptrtoint ptr %ack_tx_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %ack_tx_ops, align 4
  %timeout_ms1 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 43, i32 1
  %2 = ptrtoint ptr %timeout_ms1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %timeout_ms, ptr %timeout_ms1, align 4
  %status = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 43, i32 2
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout_ms)
  %tobool.not.i = icmp eq i32 %timeout_ms, 0
  br i1 %tobool.not.i, label %entry.cond.end.i_crit_edge, label %if.else.i.i

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout_ms) #16
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.else.i.i, %entry.cond.end.i_crit_edge
  %cond.i = phi i32 [ 2147483647, %entry.cond.end.i_crit_edge ], [ %call2.i.i, %if.else.i.i ]
  %done.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 43, i32 3
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %done.i, i32 noundef %cond.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i, label %if.end10.i

if.then.i:                                        ; preds = %cond.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %4 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp.i = icmp ugt i32 %4, 4
  br i1 %cmp.i, label %do.end.i, label %if.then.i.rtw_sctx_wait.exit_crit_edge

if.then.i.rtw_sctx_wait.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rtw_sctx_wait.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #21
  br label %rtw_sctx_wait.exit

if.end10.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %phi.cmp.i = icmp eq i32 %6, 0
  %spec.select.i = zext i1 %phi.cmp.i to i32
  br label %rtw_sctx_wait.exit

rtw_sctx_wait.exit:                               ; preds = %if.end10.i, %do.end.i, %if.then.i.rtw_sctx_wait.exit_crit_edge
  %7 = phi i32 [ 0, %do.end.i ], [ 0, %if.then.i.rtw_sctx_wait.exit_crit_edge ], [ %spec.select.i, %if.end10.i ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_ack_tx_done(ptr noundef %pxmitpriv, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_tx = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 41
  %0 = ptrtoint ptr %ack_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ack_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %ack_tx_ops = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 43
  %tobool.not.i = icmp eq ptr %ack_tx_ops, null
  br i1 %tobool.not.i, label %if.then.if.end5_crit_edge, label %if.then.i

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then.i:                                        ; preds = %if.then
  %2 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %status, label %if.then.i.if.end6.i_crit_edge [
    i32 1, label %if.then.i.do.body.i_crit_edge
    i32 3, label %if.then.i.do.body.i_crit_edge9
    i32 4, label %if.then.i.do.body.i_crit_edge10
    i32 9, label %if.then.i.do.body.i_crit_edge11
    i32 10, label %if.then.i.do.body.i_crit_edge12
  ]

if.then.i.do.body.i_crit_edge12:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

if.then.i.do.body.i_crit_edge11:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

if.then.i.do.body.i_crit_edge10:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

if.then.i.do.body.i_crit_edge9:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i

do.body.i:                                        ; preds = %if.then.i.do.body.i_crit_edge, %if.then.i.do.body.i_crit_edge9, %if.then.i.do.body.i_crit_edge10, %if.then.i.do.body.i_crit_edge11, %if.then.i.do.body.i_crit_edge12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %3 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp ugt i32 %3, 4
  br i1 %cmp.i, label %do.end.i, label %do.body.i.if.end6.i_crit_edge

do.body.i.if.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %status) #21
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i, %do.body.i.if.end6.i_crit_edge, %if.then.i.if.end6.i_crit_edge
  %status7.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 43, i32 2
  %4 = ptrtoint ptr %status7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %status, ptr %status7.i, align 4
  %done.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 43, i32 3
  tail call void @complete(ptr noundef %done.i) #16
  br label %if.end5

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %5 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.end, label %do.body.if.end5_crit_edge

do.body.if.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #21
  br label %if.end5

if.end5:                                          ; preds = %do.end, %do.body.if.end5_crit_edge, %if.end6.i, %if.then.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_secmicsetkey(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_secmicappend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_secgetmic(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_wep_encrypt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_tkip_encrypt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_aes_encrypt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scdb_findEntry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nat25_db_handle(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dhcp_flag_bcast(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind readonly }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { cold nounwind }
attributes #22 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !101, !103, !105, !107, !109, !111, !112, !113, !115, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !144, !146}
!llvm.named.register.sp = !{!147}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @_rtw_init_sta_xmit_priv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 30, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @_rtw_init_xmit_priv.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 51, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @_rtw_init_xmit_priv.__key.2, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 60, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @_rtw_init_xmit_priv.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 61, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @_rtw_init_xmit_priv.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 62, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @_rtw_init_xmit_priv.__key.8, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 63, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @_rtw_init_xmit_priv.__key.10, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 64, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @_rtw_init_xmit_priv.__key.12, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 66, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @_rtw_init_xmit_priv.__key.14, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 108, i32 2}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @_rtw_init_xmit_priv.__key.16, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 109, i32 2}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @_rtw_init_xmit_priv.__key.18, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 150, i32 2}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @_rtw_init_xmit_priv.__key.20, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 199, i32 2}
!35 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 375, i32 3}
!38 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @qos_acm._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @qos_acm._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 898, i32 3}
!44 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rtw_xmitframe_coalesce._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @rtw_xmitframe_coalesce._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 909, i32 3}
!49 = !{ptr @rtw_xmitframe_coalesce._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @rtw_xmitframe_coalesce._entry_ptr.29, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 1006, i32 3}
!53 = !{ptr @rtw_xmitframe_coalesce._entry.30, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @rtw_xmitframe_coalesce._entry_ptr.32, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 1137, i32 4}
!57 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rtw_alloc_xmitbuf_ext._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @rtw_alloc_xmitbuf_ext._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 1194, i32 4}
!62 = !{ptr @rtw_alloc_xmitbuf._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rtw_alloc_xmitbuf._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 1212, i32 3}
!66 = !{ptr @rtw_free_xmitbuf._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rtw_free_xmitbuf._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 1482, i32 3}
!70 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @rtw_xmit_classifier._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @rtw_xmit_classifier._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 1728, i32 3}
!75 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rtw_xmit._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @rtw_xmit._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 1733, i32 12}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 2153, i32 3}
!83 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @rtw_sctx_wait._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @rtw_sctx_wait._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 2183, i32 4}
!88 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @rtw_sctx_done_err._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @rtw_sctx_done_err._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 2208, i32 3}
!93 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @rtw_ack_tx_done._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @rtw_ack_tx_done._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @_init_txservq.__key, !97, !"__key", i1 false, i1 false}
!97 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 21, i32 2}
!98 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @sema_init.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!105 = distinct !{null, !106, !"P802_1H_OUI", i1 false, i1 false}
!106 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 14, i32 11}
!107 = distinct !{null, !108, !"RFC1042_OUI", i1 false, i1 false}
!108 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 15, i32 11}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!111 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!114 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!115 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!116 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!117 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 1551, i32 12}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 1609, i32 6}
!120 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @rtw_br_client_tx._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @rtw_br_client_tx._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 1624, i32 5}
!125 = !{ptr @rtw_br_client_tx._entry.56, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @rtw_br_client_tx._entry_ptr.58, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 1628, i32 6}
!129 = !{ptr @rtw_br_client_tx._entry.59, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @rtw_br_client_tx._entry_ptr.61, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 1635, i32 6}
!133 = !{ptr @rtw_br_client_tx._entry.62, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @rtw_br_client_tx._entry_ptr.64, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 1657, i32 3}
!137 = !{ptr @rtw_br_client_tx._entry.65, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @rtw_br_client_tx._entry_ptr.67, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/staging/r8188eu/core/rtw_xmit.c", i32 464, i32 3}
!141 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @update_attrib.__UNIQUE_ID_ddebug346, !140, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!144 = !{ptr @init_completion.__key, !145, !"__key", i1 false, i1 false}
!145 = !{!"../include/linux/completion.h", i32 87, i32 2}
!146 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!147 = !{!"sp"}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{!"auto-init"}
!158 = !{i64 2149244553}
!159 = !{i64 2149244819}
!160 = !{i64 2148841502, i64 2148841507, i64 2148841520, i64 2148841564, i64 2148841598, i64 2148841619}
