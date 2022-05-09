; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/core/rtw_mlme.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/core/rtw_mlme.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.stassoc_event = type { [6 x i8], [2 x i8], i32 }
%struct.stadel_event = type { [6 x i8], [2 x i8], i32 }
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
%struct.cmd_obj = type { ptr, i16, i8, ptr, i32, ptr, i32, %struct.list_head }
%struct.setkey_parm = type { i8, i8, i8, i8, [16 x i8] }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }

@_rtw_init_mlme_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pmlmepriv->lock\00", [47 x i8] zeroinitializer }, align 32
@_rtw_init_mlme_priv.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&((&pmlmepriv->free_bss_pool)->lock)\00", [59 x i8] zeroinitializer }, align 32
@_rtw_init_mlme_priv.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&((&pmlmepriv->scanned_queue)->lock)\00", [59 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@rtw_surveydone_event_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016R8188EU: try_to_join, but select scanning queue fail, to_roaming:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtw_surveydone_event_callback\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/staging/r8188eu/core/rtw_mlme.c\00", [56 x i8] zeroinitializer }, align 32
@rtw_surveydone_event_callback._entry_ptr = internal global ptr @rtw_surveydone_event_callback._entry, section ".printk_index", align 4
@rtw_stassoc_event_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.7, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016R8188EU: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtw_stassoc_event_callback\00", [37 x i8] zeroinitializer }, align 32
@rtw_stassoc_event_callback._entry_ptr = internal global ptr @rtw_stassoc_event_callback._entry, section ".printk_index", align 4
@rtw_stadel_event_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 1242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016R8188EU: %s(mac_id=%d)=%pM\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw_stadel_event_callback\00", [38 x i8] zeroinitializer }, align 32
@rtw_stadel_event_callback._entry_ptr = internal global ptr @rtw_stadel_event_callback._entry, section ".printk_index", align 4
@_rtw_join_timeout_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.7, i32 1333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016R8188EU: %s, fw_state=%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_rtw_join_timeout_handler\00", [38 x i8] zeroinitializer }, align 32
@_rtw_join_timeout_handler._entry_ptr = internal global ptr @_rtw_join_timeout_handler._entry, section ".printk_index", align 4
@_rtw_join_timeout_handler._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.7, i32 1344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016R8188EU: %s try another roaming\0A\00", [61 x i8] zeroinitializer }, align 32
@_rtw_join_timeout_handler._entry_ptr.16 = internal global ptr @_rtw_join_timeout_handler._entry.14, section ".printk_index", align 4
@_rtw_join_timeout_handler._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.7, i32 1347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016R8188EU: %s roaming do_join return %d\0A\00", [55 x i8] zeroinitializer }, align 32
@_rtw_join_timeout_handler._entry_ptr.19 = internal global ptr @_rtw_join_timeout_handler._entry.17, section ".printk_index", align 4
@_rtw_join_timeout_handler._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.7, i32 1352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016R8188EU: %s We've try roaming but fail\0A\00", [54 x i8] zeroinitializer }, align 32
@_rtw_join_timeout_handler._entry_ptr.22 = internal global ptr @_rtw_join_timeout_handler._entry.20, section ".printk_index", align 4
@rtw_scan_timeout_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.7, i32 1373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016R8188EU: %s(%s) fw_state=%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtw_scan_timeout_handler\00", [39 x i8] zeroinitializer }, align 32
@rtw_scan_timeout_handler._entry_ptr = internal global ptr @rtw_scan_timeout_handler._entry, section ".printk_index", align 4
@rtw_dynamic_check_timer_handlder.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rtw_select_and_join_from_scanned_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.7, i32 1523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016R8188EU: %s: return _FAIL(candidate==NULL)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rtw_select_and_join_from_scanned_queue\00", [57 x i8] zeroinitializer }, align 32
@rtw_select_and_join_from_scanned_queue._entry_ptr = internal global ptr @rtw_select_and_join_from_scanned_queue._entry, section ".printk_index", align 4
@rtw_select_and_join_from_scanned_queue._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.7, i32 1529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016R8188EU: %s: candidate: %s(%pM ch:%u)\0A\00", [55 x i8] zeroinitializer }, align 32
@rtw_select_and_join_from_scanned_queue._entry_ptr.30 = internal global ptr @rtw_select_and_join_from_scanned_queue._entry.28, section ".printk_index", align 4
@rtw_select_and_join_from_scanned_queue._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.7, i32 1534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016R8188EU: %s: _FW_LINKED while ask_for_joinbss!!!\0A\00", [44 x i8] zeroinitializer }, align 32
@rtw_select_and_join_from_scanned_queue._entry_ptr.33 = internal global ptr @rtw_select_and_join_from_scanned_queue._entry.31, section ".printk_index", align 4
@rtw_select_and_join_from_scanned_queue._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.7, i32 1548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016R8188EU: #### Opt_Ant_(%s), cur_Ant(%s)\0A\00", [53 x i8] zeroinitializer }, align 32
@rtw_select_and_join_from_scanned_queue._entry_ptr.36 = internal global ptr @rtw_select_and_join_from_scanned_queue._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@rtw_set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.7, i32 1621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016R8188EU: ==> rtw_set_key algorithm(%x), keyid(%x), key_mask(%x)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtw_set_key\00", [20 x i8] zeroinitializer }, align 32
@rtw_set_key._entry_ptr = internal global ptr @rtw_set_key._entry, section ".printk_index", align 4
@__const.rtw_restructure_ht_ie.WMM_IE = private unnamed_addr constant [7 x i8] c"\00P\F2\02\00\01\00", align 1
@rtw_update_ht_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.7, i32 1973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016R8188EU: +rtw_update_ht_cap()\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtw_update_ht_cap\00", [46 x i8] zeroinitializer }, align 32
@rtw_update_ht_cap._entry_ptr = internal global ptr @rtw_update_ht_cap._entry, section ".printk_index", align 4
@MCS_rate_1R = external dso_local local_unnamed_addr global [16 x i8], align 1
@rtw_update_ht_cap._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.7, i32 2025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016R8188EU: %s(): WLAN_HT_CAP_SM_PS_STATIC\0A\00", [53 x i8] zeroinitializer }, align 32
@rtw_update_ht_cap._entry_ptr.45 = internal global ptr @rtw_update_ht_cap._entry.43, section ".printk_index", align 4
@rtw_issue_addbareq_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.7, i32 2060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016R8188EU: rtw_issue_addbareq_cmd, p=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw_issue_addbareq_cmd\00", [41 x i8] zeroinitializer }, align 32
@rtw_issue_addbareq_cmd._entry_ptr = internal global ptr @rtw_issue_addbareq_cmd._entry, section ".printk_index", align 4
@_rtw_roaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.7, i32 2090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016R8188EU: roaming from %s(%pM length:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_rtw_roaming\00", [19 x i8] zeroinitializer }, align 32
@_rtw_roaming._entry_ptr = internal global ptr @_rtw_roaming._entry, section ".printk_index", align 4
@_rtw_roaming._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.7, i32 2100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016R8188EU: roaming do_join return %d\0A\00", [58 x i8] zeroinitializer }, align 32
@_rtw_roaming._entry_ptr.52 = internal global ptr @_rtw_roaming._entry.50, section ".printk_index", align 4
@_rtw_roaming._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.7, i32 2106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016R8188EU: %s(%d) -to roaming fail, indicate_disconnect\0A\00", [39 x i8] zeroinitializer }, align 32
@_rtw_roaming._entry_ptr.55 = internal global ptr @_rtw_roaming._entry.53, section ".printk_index", align 4
@rtw_joinbss_update_network._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.56, ptr @.str.7, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtw_joinbss_update_network\00", [37 x i8] zeroinitializer }, align 32
@rtw_joinbss_update_network._entry_ptr = internal global ptr @rtw_joinbss_update_network._entry, section ".printk_index", align 4
@rtw_joinbss_update_stainfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.57, ptr @.str.7, i32 912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtw_joinbss_update_stainfo\00", [37 x i8] zeroinitializer }, align 32
@rtw_joinbss_update_stainfo._entry_ptr = internal global ptr @rtw_joinbss_update_stainfo._entry, section ".printk_index", align 4
@rtw_auto_scan_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.58, ptr @.str.7, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw_auto_scan_handler\00", [42 x i8] zeroinitializer }, align 32
@rtw_auto_scan_handler._entry_ptr = internal global ptr @rtw_auto_scan_handler._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rtw_check_join_candidate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.7, i32 1484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016R8188EU: [by_bssid:%u][assoc_ssid:%s]new candidate: %s(%pM rssi:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtw_check_join_candidate\00", [39 x i8] zeroinitializer }, align 32
@rtw_check_join_candidate._entry_ptr = internal global ptr @rtw_check_join_candidate._entry, section ".printk_index", align 4
@rtw_check_join_candidate._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.7, i32 1485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016R8188EU: [to_roaming:%u]\0A\00", [36 x i8] zeroinitializer }, align 32
@rtw_check_join_candidate._entry_ptr.66 = internal global ptr @rtw_check_join_candidate._entry.64, section ".printk_index", align 4
@rtw_is_desired_network._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.7, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016R8188EU: desired_encmode: %d, privacy: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw_is_desired_network\00", [41 x i8] zeroinitializer }, align 32
@rtw_is_desired_network._entry_ptr = internal global ptr @rtw_is_desired_network._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.rtw_surveydone_event_callback = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 1, i32 3, i32 3, i32 1, i32 1, i32 1, i32 1, i32 3, i32 1, i32 3, i32 3], [52 x i8] zeroinitializer }, align 32
@switch.table.rtw_update_registrypriv_dev_network = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 1, i32 3, i32 3, i32 1, i32 1, i32 1, i32 1, i32 3, i32 1, i32 3, i32 3], [52 x i8] zeroinitializer }, align 32
@switch.table.rtw_stadel_event_callback = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 1, i32 3, i32 3, i32 1, i32 1, i32 1, i32 1, i32 3, i32 1, i32 3, i32 3], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 221]
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 51, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 52, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 53, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 737, i32 5 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1199, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1242, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1333, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1344, i32 5 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1347, i32 6 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1352, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1373, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1421, i32 6 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1523, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1527, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1534, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1545, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1620, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1973, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2025, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2060, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2088, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2100, i32 5 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2106, i32 6 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 972, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 912, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1388, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 695, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 723, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1479, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1485, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.295 = private constant [43 x i8] c"../drivers/staging/r8188eu/core/rtw_mlme.c\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 620, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [43 x i8] c"switch.table.rtw_surveydone_event_callback\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [49 x i8] c"switch.table.rtw_update_registrypriv_dev_network\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [39 x i8] c"switch.table.rtw_stadel_event_callback\00", align 1
@llvm.compiler.used = appending global [103 x ptr] [ptr @_rtw_join_timeout_handler._entry, ptr @_rtw_join_timeout_handler._entry.14, ptr @_rtw_join_timeout_handler._entry.17, ptr @_rtw_join_timeout_handler._entry.20, ptr @_rtw_join_timeout_handler._entry_ptr, ptr @_rtw_join_timeout_handler._entry_ptr.16, ptr @_rtw_join_timeout_handler._entry_ptr.19, ptr @_rtw_join_timeout_handler._entry_ptr.22, ptr @_rtw_roaming._entry, ptr @_rtw_roaming._entry.50, ptr @_rtw_roaming._entry.53, ptr @_rtw_roaming._entry_ptr, ptr @_rtw_roaming._entry_ptr.52, ptr @_rtw_roaming._entry_ptr.55, ptr @rtw_auto_scan_handler._entry, ptr @rtw_auto_scan_handler._entry_ptr, ptr @rtw_check_join_candidate._entry, ptr @rtw_check_join_candidate._entry.64, ptr @rtw_check_join_candidate._entry_ptr, ptr @rtw_check_join_candidate._entry_ptr.66, ptr @rtw_is_desired_network._entry, ptr @rtw_is_desired_network._entry_ptr, ptr @rtw_issue_addbareq_cmd._entry, ptr @rtw_issue_addbareq_cmd._entry_ptr, ptr @rtw_joinbss_update_network._entry, ptr @rtw_joinbss_update_network._entry_ptr, ptr @rtw_joinbss_update_stainfo._entry, ptr @rtw_joinbss_update_stainfo._entry_ptr, ptr @rtw_scan_timeout_handler._entry, ptr @rtw_scan_timeout_handler._entry_ptr, ptr @rtw_select_and_join_from_scanned_queue._entry, ptr @rtw_select_and_join_from_scanned_queue._entry.28, ptr @rtw_select_and_join_from_scanned_queue._entry.31, ptr @rtw_select_and_join_from_scanned_queue._entry.34, ptr @rtw_select_and_join_from_scanned_queue._entry_ptr, ptr @rtw_select_and_join_from_scanned_queue._entry_ptr.30, ptr @rtw_select_and_join_from_scanned_queue._entry_ptr.33, ptr @rtw_select_and_join_from_scanned_queue._entry_ptr.36, ptr @rtw_set_key._entry, ptr @rtw_set_key._entry_ptr, ptr @rtw_stadel_event_callback._entry, ptr @rtw_stadel_event_callback._entry_ptr, ptr @rtw_stassoc_event_callback._entry, ptr @rtw_stassoc_event_callback._entry_ptr, ptr @rtw_surveydone_event_callback._entry, ptr @rtw_surveydone_event_callback._entry_ptr, ptr @rtw_update_ht_cap._entry, ptr @rtw_update_ht_cap._entry.43, ptr @rtw_update_ht_cap._entry_ptr, ptr @rtw_update_ht_cap._entry_ptr.45, ptr @_rtw_init_mlme_priv.__key, ptr @.str, ptr @_rtw_init_mlme_priv.__key.1, ptr @.str.2, ptr @_rtw_init_mlme_priv.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @switch.table.rtw_surveydone_event_callback, ptr @switch.table.rtw_update_registrypriv_dev_network, ptr @switch.table.rtw_stadel_event_callback], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_mlme_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_mlme_priv.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_mlme_priv.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_surveydone_event_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_stassoc_event_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_stadel_event_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_join_timeout_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_join_timeout_handler._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_join_timeout_handler._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_join_timeout_handler._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_scan_timeout_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_select_and_join_from_scanned_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_select_and_join_from_scanned_queue._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_select_and_join_from_scanned_queue._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_select_and_join_from_scanned_queue._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_update_ht_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_update_ht_cap._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_issue_addbareq_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_roaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_roaming._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_roaming._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_joinbss_update_network._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_joinbss_update_stainfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_auto_scan_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_check_join_candidate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_check_join_candidate._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_is_desired_network._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_surveydone_event_callback to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_update_registrypriv_dev_network to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_stadel_event_callback to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rtw_set_roaming(ptr nocapture noundef writeonly %adapter, i8 noundef zeroext %to_roaming) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %to_roaming)
  %cmp = icmp eq i8 %to_roaming, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %to_join = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %to_join, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %to_roaming3 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %1 = ptrtoint ptr %to_roaming3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %to_roaming, ptr %to_roaming3, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtw_to_roaming(ptr nocapture noundef readonly %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %to_roaming = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %to_roaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %to_roaming, align 2
  ret i8 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_init_mlme_priv(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  %nic_hdl = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 5
  %0 = ptrtoint ptr %nic_hdl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %padapter, ptr %nic_hdl, align 4
  %pscanned = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 7
  %1 = ptrtoint ptr %pscanned to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %pscanned, align 4
  %fw_state = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %fw_state, align 4
  %InfrastructureMode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 6, i32 8
  %3 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %InfrastructureMode, align 4
  %scan_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 31
  %4 = ptrtoint ptr %scan_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %scan_mode, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %mlmepriv, ptr noundef nonnull @.str, ptr noundef nonnull @_rtw_init_mlme_priv.__key, i16 noundef signext 3) #20
  %free_bss_pool = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %free_bss_pool to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %free_bss_pool, ptr %free_bss_pool, align 4
  %prev.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 8, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %free_bss_pool, ptr %prev.i, align 4
  %lock4 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 8, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock4, ptr noundef nonnull @.str.2, ptr noundef nonnull @_rtw_init_mlme_priv.__key.1, i16 noundef signext 3) #20
  %scanned_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 9
  %7 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %scanned_queue, ptr %scanned_queue, align 4
  %prev.i47 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 9, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %scanned_queue, ptr %prev.i47, align 4
  %lock14 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 9, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock14, ptr noundef nonnull @.str.4, ptr noundef nonnull @_rtw_init_mlme_priv.__key.3, i16 noundef signext 3) #20
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #20
  %num_of_scanned.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 12
  %9 = ptrtoint ptr %num_of_scanned.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %num_of_scanned.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #20
  %assoc_ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 13
  %10 = call ptr @memset(ptr %assoc_ssid, i32 0, i32 36)
  %call20 = tail call noalias ptr @vzalloc(i32 noundef 119808) #23
  %tobool.not = icmp eq ptr %call20, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

if.end:                                           ; preds = %entry
  %free_bss_buf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 10
  %11 = ptrtoint ptr %free_bss_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call20, ptr %free_bss_buf, align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end
  %pnetwork.051 = phi ptr [ %call20, %if.end ], [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ]
  %i.050 = phi i32 [ 0, %if.end ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %pnetwork.051 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %pnetwork.051, ptr %pnetwork.051, align 4
  %prev.i48 = getelementptr inbounds %struct.list_head, ptr %pnetwork.051, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pnetwork.051, ptr %prev.i48, align 4
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pnetwork.051, ptr noundef %15, ptr noundef %free_bss_pool) #20
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pnetwork.051, ptr %prev.i, align 4
  %17 = ptrtoint ptr %pnetwork.051 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %free_bss_pool, ptr %pnetwork.051, align 4
  %18 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev.i48, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %pnetwork.051, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %incdec.ptr = getelementptr %struct.wlan_network, ptr %pnetwork.051, i32 1
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %do.end26, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

do.end26:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @rtw_init_mlme_timer(ptr noundef %padapter) #20
  br label %exit

exit:                                             ; preds = %do.end26, %entry.exit_crit_edge
  %res.0 = phi i32 [ 1, %do.end26 ], [ 0, %entry.exit_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_init_mlme_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_mlme_priv_ie_data(ptr nocapture noundef %pmlmepriv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %assoc_req = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 34
  %0 = ptrtoint ptr %assoc_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %assoc_req, align 4
  tail call void @kfree(ptr noundef %1) #20
  %assoc_rsp = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 36
  %2 = ptrtoint ptr %assoc_rsp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %assoc_rsp, align 4
  tail call void @kfree(ptr noundef %3) #20
  %wps_beacon_ie = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 46
  %wps_beacon_ie_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 49
  %4 = ptrtoint ptr %wps_beacon_ie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wps_beacon_ie, align 4
  tail call void @kfree(ptr noundef %5) #20
  %6 = ptrtoint ptr %wps_beacon_ie_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wps_beacon_ie_len, align 4
  %7 = ptrtoint ptr %wps_beacon_ie to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %wps_beacon_ie, align 4
  %wps_probe_req_ie = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 32
  %wps_probe_req_ie_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 33
  %8 = ptrtoint ptr %wps_probe_req_ie to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wps_probe_req_ie, align 4
  tail call void @kfree(ptr noundef %9) #20
  %10 = ptrtoint ptr %wps_probe_req_ie_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wps_probe_req_ie_len, align 4
  %11 = ptrtoint ptr %wps_probe_req_ie to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %wps_probe_req_ie, align 4
  %wps_probe_resp_ie = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 47
  %wps_probe_resp_ie_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 50
  %12 = ptrtoint ptr %wps_probe_resp_ie to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wps_probe_resp_ie, align 4
  tail call void @kfree(ptr noundef %13) #20
  %14 = ptrtoint ptr %wps_probe_resp_ie_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %wps_probe_resp_ie_len, align 4
  %15 = ptrtoint ptr %wps_probe_resp_ie to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %wps_probe_resp_ie, align 4
  %wps_assoc_resp_ie = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 48
  %wps_assoc_resp_ie_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 51
  %16 = ptrtoint ptr %wps_assoc_resp_ie to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wps_assoc_resp_ie, align 4
  tail call void @kfree(ptr noundef %17) #20
  %18 = ptrtoint ptr %wps_assoc_resp_ie_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %wps_assoc_resp_ie_len, align 4
  %19 = ptrtoint ptr %wps_assoc_resp_ie to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %wps_assoc_resp_ie, align 4
  %p2p_beacon_ie = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 52
  %p2p_beacon_ie_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 57
  %20 = ptrtoint ptr %p2p_beacon_ie to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p2p_beacon_ie, align 4
  tail call void @kfree(ptr noundef %21) #20
  %22 = ptrtoint ptr %p2p_beacon_ie_len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %p2p_beacon_ie_len, align 4
  %23 = ptrtoint ptr %p2p_beacon_ie to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %p2p_beacon_ie, align 4
  %p2p_probe_req_ie = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 53
  %p2p_probe_req_ie_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 58
  %24 = ptrtoint ptr %p2p_probe_req_ie to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p2p_probe_req_ie, align 4
  tail call void @kfree(ptr noundef %25) #20
  %26 = ptrtoint ptr %p2p_probe_req_ie_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %p2p_probe_req_ie_len, align 4
  %27 = ptrtoint ptr %p2p_probe_req_ie to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %p2p_probe_req_ie, align 4
  %p2p_probe_resp_ie = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 54
  %p2p_probe_resp_ie_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 59
  %28 = ptrtoint ptr %p2p_probe_resp_ie to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %p2p_probe_resp_ie, align 4
  tail call void @kfree(ptr noundef %29) #20
  %30 = ptrtoint ptr %p2p_probe_resp_ie_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %p2p_probe_resp_ie_len, align 4
  %31 = ptrtoint ptr %p2p_probe_resp_ie to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %p2p_probe_resp_ie, align 4
  %p2p_go_probe_resp_ie = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 55
  %p2p_go_probe_resp_ie_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 60
  %32 = ptrtoint ptr %p2p_go_probe_resp_ie to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p2p_go_probe_resp_ie, align 4
  tail call void @kfree(ptr noundef %33) #20
  %34 = ptrtoint ptr %p2p_go_probe_resp_ie_len to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %p2p_go_probe_resp_ie_len, align 4
  %35 = ptrtoint ptr %p2p_go_probe_resp_ie to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %p2p_go_probe_resp_ie, align 4
  %p2p_assoc_req_ie = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 56
  %p2p_assoc_req_ie_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 61
  %36 = ptrtoint ptr %p2p_assoc_req_ie to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %p2p_assoc_req_ie, align 4
  tail call void @kfree(ptr noundef %37) #20
  %38 = ptrtoint ptr %p2p_assoc_req_ie_len to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %p2p_assoc_req_ie_len, align 4
  %39 = ptrtoint ptr %p2p_assoc_req_ie to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %p2p_assoc_req_ie, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_free_mlme_priv(ptr noundef %pmlmepriv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw_free_mlme_priv_ie_data(ptr noundef %pmlmepriv)
  %tobool.not = icmp eq ptr %pmlmepriv, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %free_bss_buf = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 10
  %0 = ptrtoint ptr %free_bss_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_bss_buf, align 4
  tail call void @vfree(ptr noundef %1) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @_rtw_alloc_network(ptr noundef %pmlmepriv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %free_bss_pool = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 8
  %lock = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 8, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #20
  %0 = ptrtoint ptr %free_bss_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_bss_pool, align 4
  %cmp.i.not = icmp eq ptr %1, %free_bss_pool
  br i1 %cmp.i.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #20
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
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

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  %network_type = getelementptr inbounds %struct.wlan_network, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %network_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %network_type, align 4
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %fixed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %fixed, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %last_scanned = getelementptr inbounds %struct.wlan_network, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %last_scanned to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %last_scanned, align 4
  %aid = getelementptr inbounds %struct.wlan_network, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %aid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %aid, align 4
  %join_res = getelementptr inbounds %struct.wlan_network, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %join_res to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %join_res, align 4
  %num_of_scanned = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 12
  %16 = ptrtoint ptr %num_of_scanned to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_of_scanned, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %num_of_scanned, align 4
  br label %exit

exit:                                             ; preds = %list_del_init.exit, %entry.exit_crit_edge
  %pnetwork.0 = phi ptr [ %1, %list_del_init.exit ], [ null, %entry.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #20
  ret ptr %pnetwork.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_free_network(ptr noundef %pmlmepriv, ptr noundef %pnetwork, i8 noundef zeroext %isfreeall) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %free_bss_pool = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 8
  %tobool.not = icmp eq ptr %pnetwork, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 2
  %0 = ptrtoint ptr %fixed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fixed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %isfreeall)
  %tobool9.not = icmp eq i8 %isfreeall, 0
  br i1 %tobool9.not, label %if.then10, label %if.end3.if.end13_crit_edge

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

if.then10:                                        ; preds = %if.end3
  %fw_state.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 1
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i, align 4
  %5 = and i32 %4, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  %lifetime.0 = select i1 %6, i32 20, i32 1
  %last_scanned = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 3
  %7 = ptrtoint ptr %last_scanned to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_scanned, align 4
  %sub = sub i32 %2, %8
  %div = udiv i32 %sub, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %lifetime.0)
  %cmp = icmp ult i32 %div, %lifetime.0
  br i1 %cmp, label %if.then10.cleanup_crit_edge, label %if.then10.if.end13_crit_edge

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end13:                                         ; preds = %if.then10.if.end13_crit_edge, %if.end3.if.end13_crit_edge
  %lock = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 8, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #20
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pnetwork) #20
  br i1 %call.i.i, label %if.end.i.i, label %if.end13.list_del_init.exit_crit_edge

if.end13.list_del_init.exit_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pnetwork, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %pnetwork to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pnetwork, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end13.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %pnetwork to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %pnetwork, ptr %pnetwork, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pnetwork, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pnetwork, ptr %prev.i3.i, align 4
  %prev.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 8, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i32 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %pnetwork, ptr noundef %18, ptr noundef %free_bss_pool) #20
  br i1 %call.i.i32, label %if.end.i.i33, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_add_tail.exit

if.end.i.i33:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #22
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pnetwork, ptr %prev.i, align 4
  %20 = ptrtoint ptr %pnetwork to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %free_bss_pool, ptr %pnetwork, align 4
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev.i3.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %pnetwork, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i33, %list_del_init.exit.list_add_tail.exit_crit_edge
  %num_of_scanned = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 12
  %23 = ptrtoint ptr %num_of_scanned to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_of_scanned, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %num_of_scanned, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #20
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_free_network_nolock(ptr noundef %pmlmepriv, ptr noundef %pnetwork) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %free_bss_pool = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 8
  %tobool.not = icmp eq ptr %pnetwork, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 2
  %0 = ptrtoint ptr %fixed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fixed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pnetwork) #20
  br i1 %call.i.i, label %if.end.i.i, label %if.end3.list_del_init.exit_crit_edge

if.end3.list_del_init.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #22
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pnetwork, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %pnetwork to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pnetwork, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end3.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %pnetwork to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %pnetwork, ptr %pnetwork, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pnetwork, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pnetwork, ptr %prev.i3.i, align 4
  %prev.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 8, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i9 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %pnetwork, ptr noundef %11, ptr noundef %free_bss_pool) #20
  br i1 %call.i.i9, label %if.end.i.i10, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_add_tail.exit

if.end.i.i10:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #22
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pnetwork, ptr %prev.i, align 4
  %13 = ptrtoint ptr %pnetwork to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %free_bss_pool, ptr %pnetwork, align 4
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev.i3.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %pnetwork, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i10, %list_del_init.exit.list_add_tail.exit_crit_edge
  %num_of_scanned = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 12
  %16 = ptrtoint ptr %num_of_scanned to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_of_scanned, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %num_of_scanned, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @_rtw_find_network(ptr noundef readonly %scanned_queue, ptr nocapture noundef readonly %addr) local_unnamed_addr #6 align 64 {
entry:
  %zero_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr) #20
  %0 = call ptr @memset(ptr %zero_addr, i32 0, i32 6)
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr, ptr noundef dereferenceable(6) %addr, i32 6) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.exit_crit_edge, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry.while.cond_crit_edge
  %plist.0.in = phi ptr [ %plist.0, %while.body.while.cond_crit_edge ], [ %scanned_queue, %entry.while.cond_crit_edge ]
  %1 = ptrtoint ptr %plist.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %plist.0 = load ptr, ptr %plist.0.in, align 4
  %cmp.not = icmp eq ptr %plist.0, %scanned_queue
  br i1 %cmp.not, label %while.cond.exit_crit_edge, label %while.body

while.cond.exit_crit_edge:                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

while.body:                                       ; preds = %while.cond
  %MacAddress = getelementptr inbounds %struct.wlan_network, ptr %plist.0, i32 0, i32 6, i32 1
  %bcmp18 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr, ptr noundef dereferenceable(6) %MacAddress, i32 6) #24
  %tobool4.not = icmp eq i32 %bcmp18, 0
  br i1 %tobool4.not, label %while.body.exit_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond

while.body.exit_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

exit:                                             ; preds = %while.body.exit_crit_edge, %while.cond.exit_crit_edge, %entry.exit_crit_edge
  %pnetwork.2 = phi ptr [ null, %entry.exit_crit_edge ], [ null, %while.cond.exit_crit_edge ], [ %plist.0, %while.body.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr) #20
  ret ptr %pnetwork.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_free_network_queue(ptr noundef %padapter, i8 noundef zeroext %isfreeall) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  %scanned_queue1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 9
  %lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 9, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #20
  %0 = ptrtoint ptr %scanned_queue1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scanned_queue1, align 4
  %cmp.not10 = icmp eq ptr %scanned_queue1, %1
  br i1 %cmp.not10, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %plist.011 = phi ptr [ %3, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %plist.011 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plist.011, align 4
  tail call void @_rtw_free_network(ptr noundef %mlmepriv, ptr noundef %plist.011, i8 noundef zeroext %isfreeall)
  %cmp.not = icmp eq ptr %scanned_queue1, %3
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_if_up(ptr nocapture noundef readonly %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20
  %0 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %2 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %5, 1
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false2, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %res.0 = phi i32 [ 0, %lor.lhs.false.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ], [ %and.i, %lor.lhs.false2 ]
  ret i32 %res.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_generate_random_ibss(ptr nocapture noundef writeonly %pibss) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = ptrtoint ptr %pibss to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %pibss, align 1
  %arrayidx1 = getelementptr i8, ptr %pibss, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 17, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %pibss, i32 2
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -121, ptr %arrayidx2, align 1
  %conv = trunc i32 %0 to i8
  %arrayidx3 = getelementptr i8, ptr %pibss, i32 3
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx3, align 1
  %shr = lshr i32 %0, 8
  %conv5 = trunc i32 %shr to i8
  %arrayidx6 = getelementptr i8, ptr %pibss, i32 4
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv5, ptr %arrayidx6, align 1
  %shr7 = lshr i32 %0, 16
  %conv9 = trunc i32 %shr7 to i8
  %arrayidx10 = getelementptr i8, ptr %pibss, i32 5
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv9, ptr %arrayidx10, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @rtw_get_capability_from_ie(ptr noundef readnone %ie) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1 = getelementptr i8, ptr %ie, i32 10
  ret ptr %add.ptr1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @rtw_get_capability(ptr nocapture noundef readonly %bss) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1.i = getelementptr %struct.wlan_bssid_ex, ptr %bss, i32 0, i32 12, i32 10
  %0 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %val.0.copyload = load i16, ptr %add.ptr1.i, align 1
  %1 = tail call i16 @llvm.bswap.i16(i16 %val.0.copyload)
  ret i16 %1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @rtw_get_beacon_interval_from_ie(ptr noundef readnone %ie) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ie, i32 8
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_init_mlme_priv(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_rtw_init_mlme_priv(ptr noundef %padapter)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_mlme_priv(ptr noundef %pmlmepriv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw_free_mlme_priv_ie_data(ptr noundef %pmlmepriv) #20
  %tobool.not.i = icmp eq ptr %pmlmepriv, null
  br i1 %tobool.not.i, label %entry._rtw_free_mlme_priv.exit_crit_edge, label %if.then.i

entry._rtw_free_mlme_priv.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %_rtw_free_mlme_priv.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %free_bss_buf.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 10
  %0 = ptrtoint ptr %free_bss_buf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_bss_buf.i, align 4
  tail call void @vfree(ptr noundef %1) #20
  br label %_rtw_free_mlme_priv.exit

_rtw_free_mlme_priv.exit:                         ; preds = %if.then.i, %entry._rtw_free_mlme_priv.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_network_queue(ptr noundef %dev, i8 noundef zeroext %isfreeall) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv.i = getelementptr inbounds %struct.adapter, ptr %dev, i32 0, i32 4
  %scanned_queue1.i = getelementptr inbounds %struct.adapter, ptr %dev, i32 0, i32 4, i32 9
  %lock.i = getelementptr inbounds %struct.adapter, ptr %dev, i32 0, i32 4, i32 9, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #20
  %0 = ptrtoint ptr %scanned_queue1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scanned_queue1.i, align 4
  %cmp.not10.i = icmp eq ptr %scanned_queue1.i, %1
  br i1 %cmp.not10.i, label %entry._rtw_free_network_queue.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry._rtw_free_network_queue.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %_rtw_free_network_queue.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %plist.011.i = phi ptr [ %3, %while.body.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %plist.011.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plist.011.i, align 4
  tail call void @_rtw_free_network(ptr noundef %mlmepriv.i, ptr noundef %plist.011.i, i8 noundef zeroext %isfreeall) #20
  %cmp.not.i = icmp eq ptr %scanned_queue1.i, %3
  br i1 %cmp.not.i, label %while.body.i._rtw_free_network_queue.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

while.body.i._rtw_free_network_queue.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %_rtw_free_network_queue.exit

_rtw_free_network_queue.exit:                     ; preds = %while.body.i._rtw_free_network_queue.exit_crit_edge, %entry._rtw_free_network_queue.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #20
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_find_network(ptr noundef readonly %scanned_queue, ptr nocapture noundef readonly %addr) local_unnamed_addr #6 align 64 {
entry:
  %zero_addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i) #20
  %0 = call ptr @memset(ptr %zero_addr.i, i32 0, i32 6)
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i, ptr noundef dereferenceable(6) %addr, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %entry._rtw_find_network.exit_crit_edge, label %entry.while.cond.i_crit_edge

entry.while.cond.i_crit_edge:                     ; preds = %entry
  br label %while.cond.i

entry._rtw_find_network.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %_rtw_find_network.exit

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry.while.cond.i_crit_edge
  %plist.0.in.i = phi ptr [ %plist.0.i, %while.body.i.while.cond.i_crit_edge ], [ %scanned_queue, %entry.while.cond.i_crit_edge ]
  %1 = ptrtoint ptr %plist.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %plist.0.i = load ptr, ptr %plist.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %plist.0.i, %scanned_queue
  br i1 %cmp.not.i, label %while.cond.i._rtw_find_network.exit_crit_edge, label %while.body.i

while.cond.i._rtw_find_network.exit_crit_edge:    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %_rtw_find_network.exit

while.body.i:                                     ; preds = %while.cond.i
  %MacAddress.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i, i32 0, i32 6, i32 1
  %bcmp18.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr, ptr noundef dereferenceable(6) %MacAddress.i, i32 6) #25
  %tobool4.not.i = icmp eq i32 %bcmp18.i, 0
  br i1 %tobool4.not.i, label %while.body.i._rtw_find_network.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i

while.body.i._rtw_find_network.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %_rtw_find_network.exit

_rtw_find_network.exit:                           ; preds = %while.body.i._rtw_find_network.exit_crit_edge, %while.cond.i._rtw_find_network.exit_crit_edge, %entry._rtw_find_network.exit_crit_edge
  %pnetwork.2.i = phi ptr [ null, %entry._rtw_find_network.exit_crit_edge ], [ %plist.0.i, %while.body.i._rtw_find_network.exit_crit_edge ], [ null, %while.cond.i._rtw_find_network.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i) #20
  ret ptr %pnetwork.2.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_is_same_ibss(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %pnetwork) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %Privacy6 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 4
  %2 = ptrtoint ptr %Privacy6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %Privacy6, align 4
  br i1 %cmp.not, label %land.lhs.true4, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.if.else9_crit_edge

land.lhs.true.if.else9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else9

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

land.lhs.true4:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp7 = icmp eq i32 %3, 1
  br i1 %cmp7, label %land.lhs.true4.if.end10_crit_edge, label %land.lhs.true4.if.else9_crit_edge

land.lhs.true4.if.else9_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else9

land.lhs.true4.if.end10_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

if.else9:                                         ; preds = %land.lhs.true4.if.else9_crit_edge, %land.lhs.true.if.else9_crit_edge
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %land.lhs.true4.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge
  %ret.0 = phi i32 [ 1, %if.else9 ], [ 0, %land.lhs.true.if.end10_crit_edge ], [ 0, %land.lhs.true4.if.end10_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @is_same_network(ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dst) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1.i = getelementptr %struct.wlan_bssid_ex, ptr %src, i32 0, i32 12, i32 10
  %0 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %le_scap.0.copyload = load i16, ptr %add.ptr1.i, align 1
  %add.ptr1.i44 = getelementptr %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 12, i32 10
  %1 = ptrtoint ptr %add.ptr1.i44 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %le_dcap.0.copyload = load i16, ptr %add.ptr1.i44, align 1
  %Ssid = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 3
  %2 = ptrtoint ptr %Ssid to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %Ssid, align 1
  %Ssid4 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 3
  %4 = ptrtoint ptr %Ssid4 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %Ssid4, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %MacAddress = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 1
  %MacAddress7 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress, ptr noundef dereferenceable(6) %MacAddress7, i32 6) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %land.lhs.true10, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %Ssid12 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 3, i32 1
  %Ssid15 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 3, i32 1
  %bcmp43 = tail call i32 @bcmp(ptr %Ssid12, ptr %Ssid15, i32 %3) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp43)
  %tobool20.not = icmp eq i32 %bcmp43, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %land.lhs.true10.land.end_crit_edge

land.lhs.true10.land.end_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.end

land.lhs.true21:                                  ; preds = %land.lhs.true10
  %6 = xor i16 %le_dcap.0.copyload, %le_scap.0.copyload
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = and i16 %7, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp24 = icmp eq i16 %8, 0
  br i1 %cmp24, label %land.rhs, label %land.lhs.true21.land.end_crit_edge

land.lhs.true21.land.end_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #22
  %9 = and i16 %7, 1
  %10 = xor i16 %9, 1
  %cmp30 = zext i16 %10 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true21.land.end_crit_edge, %land.lhs.true10.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %11 = phi i32 [ 0, %land.lhs.true21.land.end_crit_edge ], [ 0, %land.lhs.true10.land.end_crit_edge ], [ 0, %land.lhs.true.land.end_crit_edge ], [ 0, %entry.land.end_crit_edge ], [ %cmp30, %land.rhs ]
  ret i32 %11
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_oldest_wlan_network(ptr noundef readonly %scanned_queue) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %plist.016 = load ptr, ptr %scanned_queue, align 4
  %cmp17 = icmp eq ptr %plist.016, %scanned_queue
  br i1 %cmp17, label %entry.while.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

if.end:                                           ; preds = %if.end7.if.end_crit_edge, %entry.if.end_crit_edge
  %plist.019 = phi ptr [ %plist.0, %if.end7.if.end_crit_edge ], [ %plist.016, %entry.if.end_crit_edge ]
  %oldest.018 = phi ptr [ %oldest.1, %if.end7.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ]
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %plist.019, i32 0, i32 2
  %1 = ptrtoint ptr %fixed to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fixed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

if.then1:                                         ; preds = %if.end
  %tobool2.not = icmp eq ptr %oldest.018, null
  br i1 %tobool2.not, label %if.then1.if.then5_crit_edge, label %lor.lhs.false

if.then1.if.then5_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.then1
  %last_scanned = getelementptr inbounds %struct.wlan_network, ptr %plist.019, i32 0, i32 3
  %3 = ptrtoint ptr %last_scanned to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_scanned, align 4
  %last_scanned3 = getelementptr inbounds %struct.wlan_network, ptr %oldest.018, i32 0, i32 3
  %5 = ptrtoint ptr %last_scanned3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_scanned3, align 4
  %sub = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp4 = icmp slt i32 %sub, 0
  br i1 %cmp4, label %lor.lhs.false.if.then5_crit_edge, label %lor.lhs.false.if.end7_crit_edge

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.then1.if.then5_crit_edge
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %lor.lhs.false.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %oldest.1 = phi ptr [ %oldest.018, %if.end.if.end7_crit_edge ], [ %plist.019, %if.then5 ], [ %oldest.018, %lor.lhs.false.if.end7_crit_edge ]
  %7 = ptrtoint ptr %plist.019 to i32
  call void @__asan_load4_noabort(i32 %7)
  %plist.0 = load ptr, ptr %plist.019, align 4
  %cmp = icmp eq ptr %plist.0, %scanned_queue
  br i1 %cmp, label %if.end7.while.end_crit_edge, label %if.end7.if.end_crit_edge

if.end7.if.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.end:                                        ; preds = %if.end7.while.end_crit_edge, %entry.while.end_crit_edge
  %oldest.0.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ %oldest.1, %if.end7.while.end_crit_edge ]
  ret ptr %oldest.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_network(ptr noundef %dst, ptr noundef %src, ptr noundef %padapter, i1 noundef zeroext %update_ie) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %Rssi = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 5
  %0 = ptrtoint ptr %Rssi to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %Rssi, align 1
  %SignalQuality = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %SignalQuality to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %SignalQuality, align 1
  tail call void @AntDivCompare8188E(ptr noundef %padapter, ptr noundef %dst, ptr noundef %src) #20
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.else8_crit_edge, label %land.lhs.true

entry.if.else8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else8

land.lhs.true:                                    ; preds = %entry
  %add.ptr1.i.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 6, i32 12, i32 10
  %6 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %le_scap.0.copyload.i = load i16, ptr %add.ptr1.i.i, align 1
  %add.ptr1.i44.i = getelementptr %struct.wlan_bssid_ex, ptr %src, i32 0, i32 12, i32 10
  %7 = ptrtoint ptr %add.ptr1.i44.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %le_dcap.0.copyload.i = load i16, ptr %add.ptr1.i44.i, align 1
  %Ssid.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 6, i32 3
  %8 = ptrtoint ptr %Ssid.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %Ssid.i, align 1
  %Ssid4.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 3
  %10 = ptrtoint ptr %Ssid4.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %Ssid4.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i = icmp eq i32 %9, %11
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true.if.else8_crit_edge

land.lhs.true.if.else8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else8

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %MacAddress.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 6, i32 1
  %MacAddress7.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress.i, ptr noundef dereferenceable(6) %MacAddress7.i, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i54 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i54, label %land.lhs.true10.i, label %land.lhs.true.i.if.else8_crit_edge

land.lhs.true.i.if.else8_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else8

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %Ssid12.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 6, i32 3, i32 1
  %Ssid15.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 3, i32 1
  %bcmp43.i = tail call i32 @bcmp(ptr %Ssid12.i, ptr %Ssid15.i, i32 %9) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp43.i)
  %tobool20.not.i = icmp eq i32 %bcmp43.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true21.i, label %land.lhs.true10.i.if.else8_crit_edge

land.lhs.true10.i.if.else8_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else8

land.lhs.true21.i:                                ; preds = %land.lhs.true10.i
  %12 = xor i16 %le_dcap.0.copyload.i, %le_scap.0.copyload.i
  %13 = and i16 %12, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %if.then, label %land.lhs.true21.i.if.else8_crit_edge

land.lhs.true21.i.if.else8_crit_edge:             ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else8

if.then:                                          ; preds = %land.lhs.true21.i
  %signal_strength = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 31
  %15 = ptrtoint ptr %signal_strength to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %signal_strength, align 8
  %signal_qual = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 32
  %17 = ptrtoint ptr %signal_qual to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %signal_qual, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 101, i8 %3)
  %cmp.not = icmp eq i8 %3, 101
  br i1 %cmp.not, label %if.then.if.end17_crit_edge, label %if.then.if.end17.sink.split_crit_edge

if.then.if.end17.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17.sink.split

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.else8:                                         ; preds = %land.lhs.true21.i.if.else8_crit_edge, %land.lhs.true10.i.if.else8_crit_edge, %land.lhs.true.i.if.else8_crit_edge, %land.lhs.true.if.else8_crit_edge, %entry.if.else8_crit_edge
  %PhyInfo9 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 10
  %19 = ptrtoint ptr %PhyInfo9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %PhyInfo9, align 1
  %SignalQuality13 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %SignalQuality13 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %SignalQuality13, align 1
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %if.else8, %if.then.if.end17.sink.split_crit_edge
  %ss_final.0.ph = phi i8 [ %20, %if.else8 ], [ %16, %if.then.if.end17.sink.split_crit_edge ]
  %sq_final.0.ph = phi i8 [ %22, %if.else8 ], [ %18, %if.then.if.end17.sink.split_crit_edge ]
  %23 = ptrtoint ptr %Rssi to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %Rssi, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.then.if.end17_crit_edge
  %ss_final.0 = phi i8 [ %16, %if.then.if.end17_crit_edge ], [ %ss_final.0.ph, %if.end17.sink.split ]
  %sq_final.0 = phi i8 [ %18, %if.then.if.end17_crit_edge ], [ %sq_final.0.ph, %if.end17.sink.split ]
  %rssi_final.0 = phi i32 [ %1, %if.then.if.end17_crit_edge ], [ %24, %if.end17.sink.split ]
  br i1 %update_ie, label %if.then19, label %if.end17.if.end27_crit_edge

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  %Reserved = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 2
  %25 = ptrtoint ptr %Reserved to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %Reserved, align 1
  %Reserved20 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 2
  %27 = ptrtoint ptr %Reserved20 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %Reserved20, align 1
  %arrayidx23 = getelementptr %struct.wlan_bssid_ex, ptr %src, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx23, align 1
  %arrayidx25 = getelementptr %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx25, align 1
  %IELength.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 11
  %31 = ptrtoint ptr %IELength.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %IELength.i, align 1
  %add.i = add i32 %32, 120
  %33 = call ptr @memcpy(ptr %dst, ptr %src, i32 %add.i)
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %if.end17.if.end27_crit_edge
  %PhyInfo28 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 10
  %34 = ptrtoint ptr %PhyInfo28 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %ss_final.0, ptr %PhyInfo28, align 1
  %SignalQuality31 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %SignalQuality31 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %sq_final.0, ptr %SignalQuality31, align 1
  %36 = ptrtoint ptr %Rssi to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %rssi_final.0, ptr %Rssi, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @AntDivCompare8188E(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_update_scanned_network(ptr noundef %adapter, ptr noundef %target) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %scanned_queue = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 9
  %lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 9, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #20
  %0 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %plist.0126 = load ptr, ptr %scanned_queue, align 4
  %cmp.not127 = icmp eq ptr %scanned_queue, %plist.0126
  br i1 %cmp.not127, label %entry.if.then9_crit_edge, label %while.body.lr.ph

entry.if.then9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then9

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr1.i44.i = getelementptr %struct.wlan_bssid_ex, ptr %target, i32 0, i32 12, i32 10
  %1 = ptrtoint ptr %add.ptr1.i44.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %le_dcap.0.copyload.i = load i16, ptr %add.ptr1.i44.i, align 1
  %Ssid4.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %target, i32 0, i32 3
  %2 = ptrtoint ptr %Ssid4.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %Ssid4.i, align 1
  %MacAddress7.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %target, i32 0, i32 1
  %Ssid15.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %target, i32 0, i32 3, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %while.body.lr.ph
  %plist.0129 = phi ptr [ %plist.0126, %while.body.lr.ph ], [ %plist.0, %if.end6.while.body_crit_edge ]
  %oldest.0128 = phi ptr [ null, %while.body.lr.ph ], [ %oldest.1, %if.end6.while.body_crit_edge ]
  %add.ptr1.i.i = getelementptr %struct.wlan_network, ptr %plist.0129, i32 0, i32 6, i32 12, i32 10
  %4 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %le_scap.0.copyload.i = load i16, ptr %add.ptr1.i.i, align 1
  %Ssid.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0129, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %Ssid.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %Ssid.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp.i = icmp eq i32 %6, %3
  br i1 %cmp.i, label %land.lhs.true.i, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true.i:                                  ; preds = %while.body
  %MacAddress.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0129, i32 0, i32 6, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress.i, ptr noundef dereferenceable(6) %MacAddress7.i, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true10.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %Ssid12.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0129, i32 0, i32 6, i32 3, i32 1
  %bcmp43.i = tail call i32 @bcmp(ptr %Ssid12.i, ptr %Ssid15.i, i32 %3) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp43.i)
  %tobool20.not.i = icmp eq i32 %bcmp43.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true21.i, label %land.lhs.true10.i.if.end_crit_edge

land.lhs.true10.i.if.end_crit_edge:               ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true21.i:                                ; preds = %land.lhs.true10.i
  %7 = xor i16 %le_dcap.0.copyload.i, %le_scap.0.copyload.i
  %8 = and i16 %7, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %if.else50, label %land.lhs.true21.i.if.end_crit_edge

land.lhs.true21.i.if.end_crit_edge:               ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.end:                                           ; preds = %land.lhs.true21.i.if.end_crit_edge, %land.lhs.true10.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %while.body.if.end_crit_edge
  %cmp2 = icmp eq ptr %oldest.0128, null
  br i1 %cmp2, label %if.end.if.then5_crit_edge, label %lor.lhs.false

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %last_scanned = getelementptr inbounds %struct.wlan_network, ptr %plist.0129, i32 0, i32 3
  %10 = ptrtoint ptr %last_scanned to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_scanned, align 4
  %last_scanned3 = getelementptr inbounds %struct.wlan_network, ptr %oldest.0128, i32 0, i32 3
  %12 = ptrtoint ptr %last_scanned3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_scanned3, align 4
  %sub = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp4 = icmp slt i32 %sub, 0
  br i1 %cmp4, label %lor.lhs.false.if.then5_crit_edge, label %lor.lhs.false.if.end6_crit_edge

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %lor.lhs.false.if.end6_crit_edge
  %oldest.1 = phi ptr [ %plist.0129, %if.then5 ], [ %oldest.0128, %lor.lhs.false.if.end6_crit_edge ]
  %14 = ptrtoint ptr %plist.0129 to i32
  call void @__asan_load4_noabort(i32 %14)
  %plist.0 = load ptr, ptr %plist.0129, align 4
  %cmp.not = icmp eq ptr %scanned_queue, %plist.0
  br i1 %cmp.not, label %if.end6.if.then9_crit_edge, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then9

if.then9:                                         ; preds = %if.end6.if.then9_crit_edge, %entry.if.then9_crit_edge
  %oldest.0.lcssa = phi ptr [ null, %entry.if.then9_crit_edge ], [ %oldest.1, %if.end6.if.then9_crit_edge ]
  %free_bss_pool = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 8
  %15 = ptrtoint ptr %free_bss_pool to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %free_bss_pool, align 4
  %cmp.i116.not = icmp eq ptr %16, %free_bss_pool
  br i1 %cmp.i116.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then9
  %Optimum_antenna = getelementptr inbounds %struct.wlan_bssid_ex, ptr %target, i32 0, i32 10, i32 2
  %call14 = tail call zeroext i8 @GetHalDefVar8188EUsb(ptr noundef %adapter, i32 noundef 2, ptr noundef %Optimum_antenna) #20
  %network15 = getelementptr inbounds %struct.wlan_network, ptr %oldest.0.lcssa, i32 0, i32 6
  %IELength.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %target, i32 0, i32 11
  %17 = ptrtoint ptr %IELength.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %IELength.i, align 1
  %add.i = add i32 %18, 120
  %19 = call ptr @memcpy(ptr %network15, ptr %target, i32 %add.i)
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %oldest.0.lcssa, i32 0, i32 2
  %20 = ptrtoint ptr %fixed to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %fixed, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %last_scanned17 = getelementptr inbounds %struct.wlan_network, ptr %oldest.0.lcssa, i32 0, i32 3
  %22 = ptrtoint ptr %last_scanned17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %last_scanned17, align 4
  %network_type = getelementptr inbounds %struct.wlan_network, ptr %oldest.0.lcssa, i32 0, i32 1
  %23 = ptrtoint ptr %network_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %network_type, align 4
  %aid = getelementptr inbounds %struct.wlan_network, ptr %oldest.0.lcssa, i32 0, i32 4
  %24 = ptrtoint ptr %aid to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %aid, align 4
  %join_res = getelementptr inbounds %struct.wlan_network, ptr %oldest.0.lcssa, i32 0, i32 5
  %25 = ptrtoint ptr %join_res to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %join_res, align 4
  %SignalQuality = getelementptr inbounds %struct.wlan_network, ptr %oldest.0.lcssa, i32 0, i32 6, i32 10, i32 1
  %26 = ptrtoint ptr %SignalQuality to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %SignalQuality, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 101, i8 %27)
  %cmp20 = icmp eq i8 %27, 101
  br i1 %cmp20, label %if.then22, label %if.then13.exit_crit_edge

if.then13.exit_crit_edge:                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

if.then22:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #22
  %28 = ptrtoint ptr %SignalQuality to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %SignalQuality, align 1
  br label %exit

if.else:                                          ; preds = %if.then9
  %lock.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 8, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #20
  %29 = ptrtoint ptr %free_bss_pool to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %free_bss_pool, align 4
  %cmp.i.not.i.i = icmp eq ptr %30, %free_bss_pool
  br i1 %cmp.i.not.i.i, label %rtw_alloc_network.exit.thread, label %if.end.i.i

rtw_alloc_network.exit.thread:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #20
  br label %exit

if.end.i.i:                                       ; preds = %if.else
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %30) #20
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.rtw_alloc_network.exit_crit_edge

if.end.i.i.rtw_alloc_network.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_alloc_network.exit

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %rtw_alloc_network.exit

rtw_alloc_network.exit:                           ; preds = %if.end.i.i.i.i, %if.end.i.i.rtw_alloc_network.exit_crit_edge
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %30, ptr %30, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %30, ptr %prev.i3.i.i.i, align 4
  %network_type.i.i = getelementptr inbounds %struct.wlan_network, ptr %30, i32 0, i32 1
  %39 = ptrtoint ptr %network_type.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %network_type.i.i, align 4
  %fixed.i.i = getelementptr inbounds %struct.wlan_network, ptr %30, i32 0, i32 2
  %40 = ptrtoint ptr %fixed.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %fixed.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %last_scanned.i.i = getelementptr inbounds %struct.wlan_network, ptr %30, i32 0, i32 3
  %42 = ptrtoint ptr %last_scanned.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %last_scanned.i.i, align 4
  %aid.i.i = getelementptr inbounds %struct.wlan_network, ptr %30, i32 0, i32 4
  %43 = ptrtoint ptr %aid.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %aid.i.i, align 4
  %join_res.i.i = getelementptr inbounds %struct.wlan_network, ptr %30, i32 0, i32 5
  %44 = ptrtoint ptr %join_res.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %join_res.i.i, align 4
  %num_of_scanned.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 12
  %45 = ptrtoint ptr %num_of_scanned.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_of_scanned.i.i, align 4
  %inc.i.i = add i32 %46, 1
  store i32 %inc.i.i, ptr %num_of_scanned.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #20
  %tobool28.not = icmp eq ptr %30, null
  br i1 %tobool28.not, label %rtw_alloc_network.exit.exit_crit_edge, label %if.end30

rtw_alloc_network.exit.exit_crit_edge:            ; preds = %rtw_alloc_network.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

if.end30:                                         ; preds = %rtw_alloc_network.exit
  %IELength.i117 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %target, i32 0, i32 11
  %47 = ptrtoint ptr %IELength.i117 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %IELength.i117, align 1
  %add.i118 = add i32 %48, 120
  %49 = ptrtoint ptr %target to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %add.i118, ptr %target, align 1
  %Optimum_antenna33 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %target, i32 0, i32 10, i32 2
  %call34 = tail call zeroext i8 @GetHalDefVar8188EUsb(ptr noundef %adapter, i32 noundef 2, ptr noundef %Optimum_antenna33) #20
  %network35 = getelementptr inbounds %struct.wlan_network, ptr %30, i32 0, i32 6
  %50 = call ptr @memcpy(ptr %network35, ptr %target, i32 %add.i118)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %52 = ptrtoint ptr %last_scanned.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %last_scanned.i.i, align 4
  %SignalQuality39 = getelementptr inbounds %struct.wlan_network, ptr %30, i32 0, i32 6, i32 10, i32 1
  %53 = ptrtoint ptr %SignalQuality39 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %SignalQuality39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 101, i8 %54)
  %cmp41 = icmp eq i8 %54, 101
  br i1 %cmp41, label %if.then43, label %if.end30.if.end47_crit_edge

if.end30.if.end47_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end47

if.then43:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #22
  %55 = ptrtoint ptr %SignalQuality39 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %SignalQuality39, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end30.if.end47_crit_edge
  %prev.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 9, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %30, ptr noundef %57, ptr noundef %scanned_queue) #20
  br i1 %call.i.i, label %if.end.i.i119, label %if.end47.exit_crit_edge

if.end47.exit_crit_edge:                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

if.end.i.i119:                                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #22
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %30, ptr %prev.i, align 4
  %59 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %scanned_queue, ptr %30, align 4
  %60 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev.i3.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %30, ptr %57, align 4
  br label %exit

if.else50:                                        ; preds = %land.lhs.true21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %last_scanned51 = getelementptr inbounds %struct.wlan_network, ptr %plist.0129, i32 0, i32 3
  %63 = ptrtoint ptr %last_scanned51 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %last_scanned51, align 4
  %Reserved = getelementptr inbounds %struct.wlan_bssid_ex, ptr %target, i32 0, i32 2
  %64 = ptrtoint ptr %Reserved to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %Reserved, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %65)
  %cmp53.not = icmp eq i8 %65, 2
  br i1 %cmp53.not, label %if.else50.if.else65_crit_edge, label %land.lhs.true

if.else50.if.else65_crit_edge:                    ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else65

land.lhs.true:                                    ; preds = %if.else50
  %Reserved59 = getelementptr inbounds %struct.wlan_network, ptr %plist.0129, i32 0, i32 6, i32 2
  %66 = ptrtoint ptr %Reserved59 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %Reserved59, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %67)
  %cmp62.not = icmp ult i8 %65, %67
  br i1 %cmp62.not, label %land.lhs.true.if.else65_crit_edge, label %land.lhs.true.if.end66_crit_edge

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end66

land.lhs.true.if.else65_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else65

if.else65:                                        ; preds = %land.lhs.true.if.else65_crit_edge, %if.else50.if.else65_crit_edge
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %land.lhs.true.if.end66_crit_edge
  %update_ie.0.off0 = phi i1 [ false, %if.else65 ], [ true, %land.lhs.true.if.end66_crit_edge ]
  %network67 = getelementptr inbounds %struct.wlan_network, ptr %plist.0129, i32 0, i32 6
  tail call void @update_network(ptr noundef %network67, ptr noundef %target, ptr noundef %adapter, i1 noundef zeroext %update_ie.0.off0)
  br label %exit

exit:                                             ; preds = %if.end66, %if.end.i.i119, %if.end47.exit_crit_edge, %rtw_alloc_network.exit.exit_crit_edge, %rtw_alloc_network.exit.thread, %if.then22, %if.then13.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @GetHalDefVar8188EUsb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_survey_event_callback(ptr noundef %adapter, ptr noundef %pbuf) local_unnamed_addr #2 align 64 {
entry:
  %zero_addr.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4
  %IELength.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 11
  %0 = ptrtoint ptr %IELength.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %IELength.i, align 1
  %2 = add i32 %1, -769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -889, i32 %2)
  %cmp = icmp ult i32 %2, -889
  br i1 %cmp, label %entry.cleanup42_crit_edge, label %if.end

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup42

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #20
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i, align 4
  %5 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.if.end30_crit_edge, label %if.then2

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end30

if.then2:                                         ; preds = %if.end
  %MacAddress = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 1
  %MacAddress3 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress, ptr noundef dereferenceable(6) %MacAddress3, i32 6) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool5.not = icmp eq i32 %bcmp, 0
  br i1 %tobool5.not, label %if.then6, label %if.then2.if.end30_crit_edge

if.then2.if.end30_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end30

if.then6:                                         ; preds = %if.then2
  %IEs = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 12
  %IEs10 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 12
  %6 = ptrtoint ptr %IEs10 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %IEs10, align 1
  %8 = ptrtoint ptr %IEs to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %IEs, align 4
  %scanned_queue = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 9
  %lock12 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 9, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock12) #20
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i.i) #20
  %9 = call ptr @memset(ptr %zero_addr.i.i, i32 0, i32 6)
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i.i, ptr noundef dereferenceable(6) %MacAddress3, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %if.then6.rtw_find_network.exit.thread_crit_edge, label %if.then6.while.cond.i.i_crit_edge

if.then6.while.cond.i.i_crit_edge:                ; preds = %if.then6
  br label %while.cond.i.i

if.then6.rtw_find_network.exit.thread_crit_edge:  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit.thread

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then6.while.cond.i.i_crit_edge
  %plist.0.in.i.i = phi ptr [ %plist.0.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %scanned_queue, %if.then6.while.cond.i.i_crit_edge ]
  %10 = ptrtoint ptr %plist.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %plist.0.i.i = load ptr, ptr %plist.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %plist.0.i.i, %scanned_queue
  br i1 %cmp.not.i.i, label %while.cond.i.i.rtw_find_network.exit.thread_crit_edge, label %while.body.i.i

while.cond.i.i.rtw_find_network.exit.thread_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit.thread

while.body.i.i:                                   ; preds = %while.cond.i.i
  %MacAddress.i.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i, i32 0, i32 6, i32 1
  %bcmp18.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress3, ptr noundef dereferenceable(6) %MacAddress.i.i, i32 6) #25
  %tobool4.not.i.i = icmp eq i32 %bcmp18.i.i, 0
  br i1 %tobool4.not.i.i, label %rtw_find_network.exit, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i.i

rtw_find_network.exit.thread:                     ; preds = %while.cond.i.i.rtw_find_network.exit.thread_crit_edge, %if.then6.rtw_find_network.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i) #20
  br label %cleanup.thread

rtw_find_network.exit:                            ; preds = %while.body.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i) #20
  %tobool17.not = icmp eq ptr %plist.0.i.i, null
  br i1 %tobool17.not, label %rtw_find_network.exit.cleanup.thread_crit_edge, label %cleanup

rtw_find_network.exit.cleanup.thread_crit_edge:   ; preds = %rtw_find_network.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %rtw_find_network.exit.cleanup.thread_crit_edge, %rtw_find_network.exit.thread
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock12) #20
  br label %if.end30

cleanup:                                          ; preds = %rtw_find_network.exit
  call void @__sanitizer_cov_trace_pc() #22
  %IEs20 = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i, i32 0, i32 6, i32 12
  %11 = ptrtoint ptr %IEs10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %IEs10, align 1
  %13 = ptrtoint ptr %IEs20 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %IEs20, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock12) #20
  br label %exit

if.end30:                                         ; preds = %cleanup.thread, %if.then2.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %14 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_state.i, align 4
  %16 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool32.not = icmp eq i32 %16, 0
  br i1 %tobool32.not, label %if.then33, label %if.end30.exit_crit_edge

if.end30.exit_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

if.then33:                                        ; preds = %if.end30
  %Ssid34 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %Ssid34 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %Ssid34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp35 = icmp eq i8 %18, 0
  br i1 %cmp35, label %if.then37, label %if.then33.if.end39_crit_edge

if.then33.if.end39_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end39

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #22
  %Ssid = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 3
  %19 = ptrtoint ptr %Ssid to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 0, ptr %Ssid, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then33.if.end39_crit_edge
  tail call void @rtw_wlan_bssid_ex_remove_p2p_attr(ptr noundef %pbuf, i8 noundef zeroext 14) #20
  %20 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw_state.i, align 4
  %and.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i70 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i70, label %if.end39.rtw_add_network.exit_crit_edge, label %land.lhs.true.i.i

if.end39.rtw_add_network.exit_crit_edge:          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_add_network.exit

land.lhs.true.i.i:                                ; preds = %if.end39
  %network.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6
  %add.ptr1.i.i.i.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 12, i32 10
  %22 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %le_scap.0.copyload.i.i.i = load i16, ptr %add.ptr1.i.i.i.i, align 1
  %add.ptr1.i44.i.i.i = getelementptr %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 12, i32 10
  %23 = ptrtoint ptr %add.ptr1.i44.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %le_dcap.0.copyload.i.i.i = load i16, ptr %add.ptr1.i44.i.i.i, align 1
  %Ssid.i.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 3
  %24 = ptrtoint ptr %Ssid.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %Ssid.i.i.i, align 1
  %Ssid4.i.i.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 3
  %26 = ptrtoint ptr %Ssid4.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %Ssid4.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.i.i.i = icmp eq i32 %25, %27
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %land.lhs.true.i.i.rtw_add_network.exit_crit_edge

land.lhs.true.i.i.rtw_add_network.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_add_network.exit

land.lhs.true.i.i.i:                              ; preds = %land.lhs.true.i.i
  %MacAddress.i.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 1
  %MacAddress7.i.i.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 1
  %bcmp.i.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress.i.i.i, ptr noundef dereferenceable(6) %MacAddress7.i.i.i, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool.not.i16.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool.not.i16.i.i, label %land.lhs.true10.i.i.i, label %land.lhs.true.i.i.i.rtw_add_network.exit_crit_edge

land.lhs.true.i.i.i.rtw_add_network.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_add_network.exit

land.lhs.true10.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %Ssid12.i.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 3, i32 1
  %bcmp43.i.i.i = tail call i32 @bcmp(ptr %Ssid12.i.i.i, ptr %Ssid34, i32 %25) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp43.i.i.i)
  %tobool20.not.i.i.i = icmp eq i32 %bcmp43.i.i.i, 0
  br i1 %tobool20.not.i.i.i, label %land.lhs.true21.i.i.i, label %land.lhs.true10.i.i.i.rtw_add_network.exit_crit_edge

land.lhs.true10.i.i.i.rtw_add_network.exit_crit_edge: ; preds = %land.lhs.true10.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_add_network.exit

land.lhs.true21.i.i.i:                            ; preds = %land.lhs.true10.i.i.i
  %28 = xor i16 %le_dcap.0.copyload.i.i.i, %le_scap.0.copyload.i.i.i
  %29 = and i16 %28, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %if.then.i.i, label %land.lhs.true21.i.i.i.rtw_add_network.exit_crit_edge

land.lhs.true21.i.i.i.rtw_add_network.exit_crit_edge: ; preds = %land.lhs.true21.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_add_network.exit

if.then.i.i:                                      ; preds = %land.lhs.true21.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @update_network(ptr noundef %network.i.i, ptr noundef %pbuf, ptr noundef %adapter, i1 noundef zeroext true) #20
  %add.ptr.i.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 12, i32 12
  %IELength.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 11
  %31 = ptrtoint ptr %IELength.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %IELength.i.i, align 4
  tail call void @rtw_update_protection(ptr noundef %adapter, ptr noundef %add.ptr.i.i, i32 noundef %32) #20
  br label %rtw_add_network.exit

rtw_add_network.exit:                             ; preds = %if.then.i.i, %land.lhs.true21.i.i.i.rtw_add_network.exit_crit_edge, %land.lhs.true10.i.i.i.rtw_add_network.exit_crit_edge, %land.lhs.true.i.i.i.rtw_add_network.exit_crit_edge, %land.lhs.true.i.i.rtw_add_network.exit_crit_edge, %if.end39.rtw_add_network.exit_crit_edge
  tail call void @rtw_update_scanned_network(ptr noundef %adapter, ptr noundef %pbuf) #20
  br label %exit

exit:                                             ; preds = %rtw_add_network.exit, %if.end30.exit_crit_edge, %cleanup
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #20
  br label %cleanup42

cleanup42:                                        ; preds = %exit, %entry.cleanup42_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_surveydone_event_callback(ptr noundef %adapter, ptr nocapture noundef readnone %pbuf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #20
  %wps_probe_req_ie = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 32
  %0 = ptrtoint ptr %wps_probe_req_ie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wps_probe_req_ie, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %wps_probe_req_ie_len = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 33
  %2 = ptrtoint ptr %wps_probe_req_ie_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wps_probe_req_ie_len, align 4
  tail call void @kfree(ptr noundef nonnull %1) #20
  %3 = ptrtoint ptr %wps_probe_req_ie to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %wps_probe_req_ie, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i, align 4
  %6 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end5.thread, label %if.then8

if.end5.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #20
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %and.i126 = and i32 %5, -2049
  %7 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and.i126, ptr %fw_state.i, align 4
  %bScanInProcess.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %bScanInProcess.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %bScanInProcess.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #20
  %scan_to_timer = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 21
  %call.i = tail call i32 @del_timer_sync(ptr noundef %scan_to_timer) #20
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.thread
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #20
  %signal_stat_timer = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 37
  %signal_stat_sampling_interval = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 38
  %9 = ptrtoint ptr %signal_stat_sampling_interval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %signal_stat_sampling_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %mul.i = mul i32 %10, 100
  %div.i = udiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %11
  %call.i127 = tail call i32 @mod_timer(ptr noundef %signal_stat_timer, i32 noundef %add.i) #20
  %to_join = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %to_join to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %to_join, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp eq i8 %13, 0
  br i1 %tobool12.not, label %if.end9.if.end69_crit_edge, label %if.then13

if.end9.if.end69_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end69

if.then13:                                        ; preds = %if.end9
  %14 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_state.i, align 4
  %16 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool15.not = icmp eq i32 %16, 0
  br i1 %tobool15.not, label %if.else29, label %if.then16

if.then16:                                        ; preds = %if.then13
  %and.i133 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i133)
  %tobool18.not = icmp eq i32 %and.i133, 0
  br i1 %tobool18.not, label %if.then19, label %if.then16.if.end69_crit_edge

if.then16.if.end69_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end69

if.then19:                                        ; preds = %if.then16
  %or.i = or i32 %15, 128
  %17 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i, ptr %fw_state.i, align 4
  %call20 = tail call i32 @rtw_select_and_join_from_scanned_queue(ptr noundef %mlmepriv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp = icmp eq i32 %call20, 1
  br i1 %cmp, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #22
  %assoc_timer = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add.i137 = add i32 %18, 650
  %call.i138 = tail call i32 @mod_timer(ptr noundef %assoc_timer, i32 noundef %add.i137) #20
  br label %if.end69

if.else:                                          ; preds = %if.then19
  %MacAddress = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 1
  %19 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_state.i, align 4
  %and.i140 = and i32 %20, -2049
  store i32 %and.i140, ptr %fw_state.i, align 4
  %bScanInProcess.i141 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %bScanInProcess.i141 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %bScanInProcess.i141, align 4
  %Ssid = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 3
  %assoc_ssid = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 13
  %22 = call ptr @memcpy(ptr %Ssid, ptr %assoc_ssid, i32 36)
  %dot11PrivacyAlgrthm.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 1
  %23 = ptrtoint ptr %dot11PrivacyAlgrthm.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dot11PrivacyAlgrthm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i = icmp ne i32 %24, 0
  %cond.i = zext i1 %cmp.not.i to i32
  %Privacy.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 4
  %25 = ptrtoint ptr %Privacy.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %cond.i, ptr %Privacy.i, align 1
  %Rssi.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 5
  %26 = ptrtoint ptr %Rssi.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 0, ptr %Rssi.i, align 1
  %wireless_mode.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 7
  %27 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %wireless_mode.i, align 2
  %switch.tableidx = add i8 %28, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %switch.tableidx)
  %29 = icmp ult i8 %switch.tableidx, 11
  br i1 %29, label %switch.hole_check, label %if.else.sw.epilog.i_crit_edge

if.else.sw.epilog.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

switch.hole_check:                                ; preds = %if.else
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 1671, %switch.maskindex
  %30 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %switch.lobit.not = icmp eq i16 %30, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #22
  %31 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.rtw_surveydone_event_callback, i32 0, i32 %31
  %32 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load = load i32, ptr %switch.gep, align 4
  %NetworkTypeInUse3.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 6
  %33 = ptrtoint ptr %NetworkTypeInUse3.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %switch.load, ptr %NetworkTypeInUse3.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %switch.hole_check.sw.epilog.i_crit_edge, %if.else.sw.epilog.i_crit_edge
  %channel.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 6
  %34 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %channel.i, align 1
  %conv4.i = zext i8 %35 to i32
  %DSConfig.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 7, i32 3
  %36 = ptrtoint ptr %DSConfig.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %conv4.i, ptr %DSConfig.i, align 1
  %InfrastructureMode.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 8
  %37 = ptrtoint ptr %InfrastructureMode.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %InfrastructureMode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp5.i = icmp eq i32 %38, 0
  br i1 %cmp5.i, label %if.then.i, label %sw.epilog.i.rtw_update_registrypriv_dev_network.exit_crit_edge

sw.epilog.i.rtw_update_registrypriv_dev_network.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_update_registrypriv_dev_network.exit

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #22
  %ATIMWindow.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 7, i32 2
  %39 = ptrtoint ptr %ATIMWindow.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 0, ptr %ATIMWindow.i, align 1
  br label %rtw_update_registrypriv_dev_network.exit

rtw_update_registrypriv_dev_network.exit:         ; preds = %if.then.i, %sw.epilog.i.rtw_update_registrypriv_dev_network.exit_crit_edge
  %dev_network.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36
  %registrypriv.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13
  %InfrastructureMode10.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 8
  %40 = ptrtoint ptr %InfrastructureMode10.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %38, ptr %InfrastructureMode10.i, align 1
  %call.i142 = tail call i32 @rtw_generate_ie(ptr noundef %registrypriv.i) #20
  %IELength.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 11
  %41 = ptrtoint ptr %IELength.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %call.i142, ptr %IELength.i, align 1
  %add.i.i = add i32 %call.i142, 120
  %42 = ptrtoint ptr %dev_network.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %add.i.i, ptr %dev_network.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %44 = ptrtoint ptr %MacAddress to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 2, ptr %MacAddress, align 1
  %arrayidx1.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 1, i32 1
  %45 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 17, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 1, i32 2
  %46 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -121, ptr %arrayidx2.i, align 1
  %conv.i = trunc i32 %43 to i8
  %arrayidx3.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 1, i32 3
  %47 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv.i, ptr %arrayidx3.i, align 1
  %shr.i = lshr i32 %43, 8
  %conv5.i = trunc i32 %shr.i to i8
  %arrayidx6.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 1, i32 4
  %48 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  %shr7.i = lshr i32 %43, 16
  %conv9.i = trunc i32 %shr7.i to i8
  %arrayidx10.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 1, i32 5
  %49 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv9.i, ptr %arrayidx10.i, align 1
  %50 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 64, ptr %fw_state.i, align 4
  %call25 = tail call zeroext i8 @rtw_createbss_cmd(ptr noundef %adapter) #20
  %51 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %to_join, align 1
  br label %if.end69

if.else29:                                        ; preds = %if.then13
  %or.i144 = or i32 %15, 128
  %52 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or.i144, ptr %fw_state.i, align 4
  %53 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %to_join, align 1
  %call31 = tail call i32 @rtw_select_and_join_from_scanned_queue(ptr noundef %mlmepriv)
  %54 = zext i32 %call31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call31, label %do.body [
    i32 1, label %if.then33
    i32 2, label %if.then37
  ]

if.then33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #22
  %assoc_timer34 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %add.i145 = add i32 %55, 650
  %call.i146 = tail call i32 @mod_timer(ptr noundef %assoc_timer34, i32 noundef %add.i145) #20
  br label %if.end69

if.then37:                                        ; preds = %if.else29
  %56 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fw_state.i, align 4
  %and.i148 = and i32 %57, -129
  store i32 %and.i148, ptr %fw_state.i, align 4
  %58 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %to_join, align 1
  %and.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i149 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i149, label %if.then.i150, label %if.then37.rtw_indicate_connect.exit_crit_edge

if.then37.rtw_indicate_connect.exit_crit_edge:    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_indicate_connect.exit

if.then.i150:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #22
  %or.i.i = or i32 %and.i148, 1
  %59 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or.i.i, ptr %fw_state.i, align 4
  tail call void @rtw_led_control(ptr noundef %adapter, i32 noundef 2) #20
  tail call void @rtw_os_indicate_connect(ptr noundef %adapter) #20
  br label %rtw_indicate_connect.exit

rtw_indicate_connect.exit:                        ; preds = %if.then.i150, %if.then37.rtw_indicate_connect.exit_crit_edge
  %to_roaming.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %60 = ptrtoint ptr %to_roaming.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %to_roaming.i, align 2
  br label %if.end69

do.body:                                          ; preds = %if.else29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %61 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %61)
  %cmp39 = icmp ugt i32 %61, 4
  br i1 %cmp39, label %do.end, label %do.body.do.end45_crit_edge

do.body.do.end45_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end45

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %to_roaming = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %62 = ptrtoint ptr %to_roaming to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %to_roaming, align 2
  %conv = zext i8 %63 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv) #26
  br label %do.end45

do.end45:                                         ; preds = %do.end, %do.body.do.end45_crit_edge
  %to_roaming.i151 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %64 = ptrtoint ptr %to_roaming.i151 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %to_roaming.i151, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp48.not = icmp eq i8 %65, 0
  br i1 %cmp48.not, label %rtw_indicate_disconnect.exit168, label %if.then50

if.then50:                                        ; preds = %do.end45
  %dec = add i8 %65, -1
  %66 = ptrtoint ptr %to_roaming.i151 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %dec, ptr %to_roaming.i151, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %cmp53 = icmp eq i8 %dec, 0
  br i1 %cmp53, label %if.then50.if.then60_crit_edge, label %lor.lhs.false

if.then50.if.then60_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then60

lor.lhs.false:                                    ; preds = %if.then50
  %assoc_ssid55 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 13
  %call56 = tail call zeroext i8 @rtw_sitesurvey_cmd(ptr noundef %adapter, ptr noundef %assoc_ssid55, i32 noundef 1, ptr noundef null, i32 noundef 0) #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call56)
  %cmp58.not = icmp eq i8 %call56, 1
  br i1 %cmp58.not, label %if.else61, label %lor.lhs.false.if.then60_crit_edge

lor.lhs.false.if.then60_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then60

if.then60:                                        ; preds = %lor.lhs.false.if.then60_crit_edge, %if.then50.if.then60_crit_edge
  %67 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %to_join, align 1
  %68 = ptrtoint ptr %to_roaming.i151 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %to_roaming.i151, align 2
  tail call void @rtw_free_assoc_resources(ptr noundef %adapter, i32 noundef 1)
  %69 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fw_state.i, align 4
  %and.i.i155 = and i32 %70, -385
  store i32 %and.i.i155, ptr %fw_state.i, align 4
  %71 = ptrtoint ptr %to_roaming.i151 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %to_roaming.i151, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp.not.i157 = icmp eq i8 %72, 0
  br i1 %cmp.not.i157, label %if.then7.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #22
  %and.i21.i = and i32 %70, -386
  %73 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and.i21.i, ptr %fw_state.i, align 4
  br label %rtw_indicate_disconnect.exit

if.then7.i:                                       ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @rtw_os_indicate_disconnect(ptr noundef %adapter) #20
  %74 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fw_state.i, align 4
  %and.i25.i = and i32 %75, -2
  store i32 %and.i25.i, ptr %fw_state.i, align 4
  tail call void @rtw_led_control(ptr noundef %adapter, i32 noundef 3) #20
  br label %rtw_indicate_disconnect.exit

rtw_indicate_disconnect.exit:                     ; preds = %if.then7.i, %if.end.thread.i
  %call9.i = tail call zeroext i8 @p2p_ps_wk_cmd(ptr noundef %adapter, i8 noundef zeroext 0, i8 noundef zeroext 1) #20
  %call10.i = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %adapter, i8 noundef zeroext 3, i8 noundef zeroext 1) #20
  br label %if.end65

if.else61:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  %76 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %to_join, align 1
  br label %if.end65

rtw_indicate_disconnect.exit168:                  ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #22
  %77 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fw_state.i, align 4
  %and.i.i159 = and i32 %78, -385
  store i32 %and.i.i159, ptr %fw_state.i, align 4
  tail call void @rtw_os_indicate_disconnect(ptr noundef %adapter) #20
  %79 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fw_state.i, align 4
  %and.i25.i164 = and i32 %80, -2
  store i32 %and.i25.i164, ptr %fw_state.i, align 4
  tail call void @rtw_led_control(ptr noundef %adapter, i32 noundef 3) #20
  %call9.i166 = tail call zeroext i8 @p2p_ps_wk_cmd(ptr noundef %adapter, i8 noundef zeroext 0, i8 noundef zeroext 1) #20
  %call10.i167 = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %adapter, i8 noundef zeroext 3, i8 noundef zeroext 1) #20
  br label %if.end65

if.end65:                                         ; preds = %rtw_indicate_disconnect.exit168, %if.else61, %rtw_indicate_disconnect.exit
  %81 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fw_state.i, align 4
  %and.i170 = and i32 %82, -129
  store i32 %and.i170, ptr %fw_state.i, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.end65, %rtw_indicate_connect.exit, %if.then33, %rtw_update_registrypriv_dev_network.exit, %if.then21, %if.then16.if.end69_crit_edge, %if.end9.if.end69_crit_edge
  tail call void @indicate_wx_scan_complete_event(ptr noundef %adapter) #20
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #20
  %83 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fw_state.i, align 4
  %and.i172 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i172)
  %tobool72.not = icmp eq i32 %and.i172, 0
  br i1 %tobool72.not, label %if.end69.if.end75_crit_edge, label %if.then73

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end75

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #22
  %call74 = tail call zeroext i8 @p2p_ps_wk_cmd(ptr noundef %adapter, i8 noundef zeroext 3, i8 noundef zeroext 0) #20
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end69.if.end75_crit_edge
  tail call void @rtw_os_xmit_schedule(ptr noundef %adapter) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_select_and_join_from_scanned_queue(ptr noundef %pmlmepriv) local_unnamed_addr #2 align 64 {
entry:
  %wps_ielen.i.i = alloca i32, align 4
  %ie_len.i.i = alloca i32, align 4
  %supp_ant_div = alloca i8, align 1
  %cur_ant = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %scanned_queue = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %supp_ant_div) #20
  %0 = ptrtoint ptr %supp_ant_div to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %supp_ant_div, align 1
  %lock = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 9, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #20
  %nic_hdl = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 5
  %1 = ptrtoint ptr %nic_hdl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nic_hdl, align 4
  %3 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %scanned_queue, align 4
  %pscanned = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 7
  %5 = ptrtoint ptr %pscanned to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %pscanned, align 4
  %cmp.not103 = icmp eq ptr %scanned_queue, %4
  br i1 %cmp.not103, label %entry.do.body_crit_edge, label %while.body.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

while.body.lr.ph:                                 ; preds = %entry
  %assoc_by_bssid.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 19
  %assoc_bssid.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 14
  %assoc_ssid.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 13
  %Ssid16.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 13, i32 1
  %ndisencryptstatus.i.i = getelementptr i8, ptr %pmlmepriv, i32 11064
  %fw_state.i.i.i = getelementptr i8, ptr %pmlmepriv, i32 44
  %wifi_spec.i.i = getelementptr i8, ptr %pmlmepriv, i32 15873
  %ndisauthtype.i.i = getelementptr i8, ptr %pmlmepriv, i32 11060
  %InfrastructureMode54.i.i = getelementptr i8, ptr %pmlmepriv, i32 344
  %to_roaming.i.i = getelementptr i8, ptr %pmlmepriv, i32 50
  %Ssid1.i.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 15, i32 6, i32 3
  %Ssid6.i.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 15, i32 6, i32 3, i32 1
  br label %while.body

while.body:                                       ; preds = %rtw_check_join_candidate.exit.while.body_crit_edge, %while.body.lr.ph
  %candidate.0104 = phi ptr [ null, %while.body.lr.ph ], [ %candidate.1, %rtw_check_join_candidate.exit.while.body_crit_edge ]
  %6 = phi ptr [ %4, %while.body.lr.ph ], [ %.pr, %rtw_check_join_candidate.exit.while.body_crit_edge ]
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %while.body.exit_crit_edge, label %if.end

while.body.exit_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

if.end:                                           ; preds = %while.body
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %pscanned to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %pscanned, align 4
  %10 = ptrtoint ptr %assoc_by_bssid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %assoc_by_bssid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.if.end4.i_crit_edge, label %if.then.i

if.end.if.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end
  %MacAddress.i = getelementptr inbounds %struct.wlan_network, ptr %6, i32 0, i32 6, i32 1
  %bcmp1.i = call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress.i, ptr noundef dereferenceable(6) %assoc_bssid.i, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1.i)
  %tobool2.not.i = icmp eq i32 %bcmp1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then.i.rtw_check_join_candidate.exit_crit_edge

if.then.i.rtw_check_join_candidate.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_check_join_candidate.exit

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.end.if.end4.i_crit_edge
  %12 = ptrtoint ptr %assoc_ssid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %assoc_ssid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not.i = icmp eq i32 %13, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end24.i_crit_edge, label %if.then6.i

if.end4.i.if.end24.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24.i

if.then6.i:                                       ; preds = %if.end4.i
  %Ssid.i = getelementptr inbounds %struct.wlan_network, ptr %6, i32 0, i32 6, i32 3
  %14 = ptrtoint ptr %Ssid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %Ssid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp.not.i = icmp eq i32 %15, %13
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then6.i.rtw_check_join_candidate.exit_crit_edge

if.then6.i.rtw_check_join_candidate.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_check_join_candidate.exit

lor.lhs.false.i:                                  ; preds = %if.then6.i
  %Ssid13.i = getelementptr inbounds %struct.wlan_network, ptr %6, i32 0, i32 6, i32 3, i32 1
  %bcmp.i = call i32 @bcmp(ptr %Ssid13.i, ptr %Ssid16.i, i32 %13) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool21.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false.i.if.end24.i_crit_edge, label %lor.lhs.false.i.rtw_check_join_candidate.exit_crit_edge

lor.lhs.false.i.rtw_check_join_candidate.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_check_join_candidate.exit

lor.lhs.false.i.if.end24.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24.i

if.end24.i:                                       ; preds = %lor.lhs.false.i.if.end24.i_crit_edge, %if.end4.i.if.end24.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wps_ielen.i.i) #20
  %16 = ptrtoint ptr %wps_ielen.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %wps_ielen.i.i, align 4, !annotation !144
  %17 = ptrtoint ptr %ndisencryptstatus.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ndisencryptstatus.i.i, align 8
  %Privacy.i.i = getelementptr inbounds %struct.wlan_network, ptr %6, i32 0, i32 6, i32 4
  %19 = ptrtoint ptr %Privacy.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %Privacy.i.i, align 4
  %21 = ptrtoint ptr %fw_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_state.i.i.i, align 4
  %23 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i.i = getelementptr %struct.wlan_network, ptr %6, i32 0, i32 6, i32 12, i32 12
  %IELength.i.i = getelementptr inbounds %struct.wlan_network, ptr %6, i32 0, i32 6, i32 11
  %24 = ptrtoint ptr %IELength.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %IELength.i.i, align 4
  %sub.i.i = add i32 %25, -12
  %call3.i.i = call ptr @rtw_get_wps_ie(ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef null, ptr noundef nonnull %wps_ielen.i.i) #20
  %tobool4.not.i.i = icmp ne ptr %call3.i.i, null
  %..i.i = zext i1 %tobool4.not.i.i to i32
  br label %rtw_is_desired_network.exit.i

if.end.i.i:                                       ; preds = %if.end24.i
  %26 = ptrtoint ptr %wifi_spec.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %wifi_spec.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp.i.i = icmp eq i8 %27, 1
  br i1 %cmp.i.i, label %if.then7.i.i, label %if.end.i.i.if.end33.i.i_crit_edge

if.end.i.i.if.end33.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ie_len.i.i) #20
  %28 = ptrtoint ptr %ie_len.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %ie_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp8.i.i = icmp ne i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp10.not.i.i = icmp eq i32 %20, 0
  %or.cond.i.i = select i1 %cmp8.i.i, i1 true, i1 %cmp10.not.i.i
  %bselected.0.i.i = zext i1 %or.cond.i.i to i32
  %29 = ptrtoint ptr %ndisauthtype.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ndisauthtype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %30)
  %cmp14.i.i = icmp eq i32 %30, 7
  br i1 %cmp14.i.i, label %if.then16.i.i, label %if.then7.i.i.if.end32.i.i_crit_edge

if.then7.i.i.if.end32.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end32.i.i

if.then16.i.i:                                    ; preds = %if.then7.i.i
  %add.ptr20.i.i = getelementptr %struct.wlan_network, ptr %6, i32 0, i32 6, i32 12, i32 12
  %IELength22.i.i = getelementptr inbounds %struct.wlan_network, ptr %6, i32 0, i32 6, i32 11
  %31 = ptrtoint ptr %IELength22.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %IELength22.i.i, align 4
  %sub23.i.i = add i32 %32, -12
  %call24.i.i = call ptr @rtw_get_ie(ptr noundef %add.ptr20.i.i, i32 noundef 48, ptr noundef nonnull %ie_len.i.i, i32 noundef %sub23.i.i) #20
  %tobool25.not.i.i = icmp eq ptr %call24.i.i, null
  br i1 %tobool25.not.i.i, label %if.then16.i.i.if.else30.i.i_crit_edge, label %land.lhs.true26.i.i

if.then16.i.i.if.else30.i.i_crit_edge:            ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else30.i.i

land.lhs.true26.i.i:                              ; preds = %if.then16.i.i
  %33 = ptrtoint ptr %ie_len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ie_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp27.not.i.i = icmp eq i32 %34, 0
  br i1 %cmp27.not.i.i, label %land.lhs.true26.i.i.if.else30.i.i_crit_edge, label %land.lhs.true26.i.i.if.end32.i.i_crit_edge

land.lhs.true26.i.i.if.end32.i.i_crit_edge:       ; preds = %land.lhs.true26.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end32.i.i

land.lhs.true26.i.i.if.else30.i.i_crit_edge:      ; preds = %land.lhs.true26.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else30.i.i

if.else30.i.i:                                    ; preds = %land.lhs.true26.i.i.if.else30.i.i_crit_edge, %if.then16.i.i.if.else30.i.i_crit_edge
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.else30.i.i, %land.lhs.true26.i.i.if.end32.i.i_crit_edge, %if.then7.i.i.if.end32.i.i_crit_edge
  %bselected.1.i.i = phi i32 [ 0, %if.else30.i.i ], [ %bselected.0.i.i, %if.then7.i.i.if.end32.i.i_crit_edge ], [ 1, %land.lhs.true26.i.i.if.end32.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ie_len.i.i) #20
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.end32.i.i, %if.end.i.i.if.end33.i.i_crit_edge
  %bselected.2.i.i = phi i32 [ %bselected.1.i.i, %if.end32.i.i ], [ 1, %if.end.i.i.if.end33.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp34.not.i.i = icmp ne i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp37.i.i = icmp eq i32 %20, 0
  %or.cond80.i.i = select i1 %cmp34.not.i.i, i1 %cmp37.i.i, i1 false
  br i1 %or.cond80.i.i, label %do.body.i.i, label %if.end33.i.i.if.end48.i.i_crit_edge

if.end33.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end48.i.i

do.body.i.i:                                      ; preds = %if.end33.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %35 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp40.i.i = icmp ugt i32 %35, 4
  br i1 %cmp40.i.i, label %do.end.i.i, label %do.body.i.i.if.end48.i.i_crit_edge

do.body.i.i.if.end48.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end48.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call44.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %18, i32 noundef 0) #26
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %do.end.i.i, %do.body.i.i.if.end48.i.i_crit_edge, %if.end33.i.i.if.end48.i.i_crit_edge
  %bselected.3.i.i = phi i32 [ %bselected.2.i.i, %if.end33.i.i.if.end48.i.i_crit_edge ], [ 0, %do.end.i.i ], [ 0, %do.body.i.i.if.end48.i.i_crit_edge ]
  %36 = ptrtoint ptr %fw_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fw_state.i.i.i, align 4
  %38 = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool50.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool50.not.i.i, label %if.end48.i.i.rtw_is_desired_network.exit.i_crit_edge, label %if.then51.i.i

if.end48.i.i.rtw_is_desired_network.exit.i_crit_edge: ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_is_desired_network.exit.i

if.then51.i.i:                                    ; preds = %if.end48.i.i
  %InfrastructureMode.i.i = getelementptr inbounds %struct.wlan_network, ptr %6, i32 0, i32 6, i32 8
  %39 = ptrtoint ptr %InfrastructureMode.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %InfrastructureMode.i.i, align 4
  %41 = ptrtoint ptr %InfrastructureMode54.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %InfrastructureMode54.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp55.not.i.i = icmp eq i32 %40, %42
  br i1 %cmp55.not.i.i, label %if.then51.i.i.rtw_is_desired_network.exit.i_crit_edge, label %rtw_is_desired_network.exit.thread.i

if.then51.i.i.rtw_is_desired_network.exit.i_crit_edge: ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_is_desired_network.exit.i

rtw_is_desired_network.exit.thread.i:             ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wps_ielen.i.i) #20
  br label %rtw_check_join_candidate.exit

rtw_is_desired_network.exit.i:                    ; preds = %if.then51.i.i.rtw_is_desired_network.exit.i_crit_edge, %if.end48.i.i.rtw_is_desired_network.exit.i_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %..i.i, %if.then.i.i ], [ %bselected.3.i.i, %if.end48.i.i.rtw_is_desired_network.exit.i_crit_edge ], [ %bselected.3.i.i, %if.then51.i.i.rtw_is_desired_network.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wps_ielen.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool26.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool26.not.i, label %rtw_is_desired_network.exit.i.rtw_check_join_candidate.exit_crit_edge, label %if.end28.i

rtw_is_desired_network.exit.i.rtw_check_join_candidate.exit_crit_edge: ; preds = %rtw_is_desired_network.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_check_join_candidate.exit

if.end28.i:                                       ; preds = %rtw_is_desired_network.exit.i
  %43 = ptrtoint ptr %to_roaming.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %to_roaming.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp30.not.i = icmp eq i8 %44, 0
  br i1 %cmp30.not.i, label %if.end28.i.if.end43.i_crit_edge, label %if.then32.i

if.end28.i.if.end43.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43.i

if.then32.i:                                      ; preds = %if.end28.i
  %last_scanned.i = getelementptr inbounds %struct.wlan_network, ptr %6, i32 0, i32 3
  %45 = ptrtoint ptr %last_scanned.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %last_scanned.i, align 4
  %call33.i = call i32 @rtw_get_passing_time_ms(i32 noundef %46) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %call33.i)
  %cmp34.i = icmp sgt i32 %call33.i, 1999
  br i1 %cmp34.i, label %if.then32.i.rtw_check_join_candidate.exit_crit_edge, label %lor.lhs.false36.i

if.then32.i.rtw_check_join_candidate.exit_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_check_join_candidate.exit

lor.lhs.false36.i:                                ; preds = %if.then32.i
  %Ssid.i.i = getelementptr inbounds %struct.wlan_network, ptr %6, i32 0, i32 6, i32 3
  %47 = ptrtoint ptr %Ssid.i.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %Ssid.i.i, align 1
  %49 = ptrtoint ptr %Ssid1.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %Ssid1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp.i2.i = icmp eq i32 %48, %50
  br i1 %cmp.i2.i, label %is_same_ess.exit.i, label %lor.lhs.false36.i.rtw_check_join_candidate.exit_crit_edge

lor.lhs.false36.i.rtw_check_join_candidate.exit_crit_edge: ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_check_join_candidate.exit

is_same_ess.exit.i:                               ; preds = %lor.lhs.false36.i
  %Ssid4.i.i = getelementptr inbounds %struct.wlan_network, ptr %6, i32 0, i32 6, i32 3, i32 1
  %bcmp.i.i = call i32 @bcmp(ptr %Ssid4.i.i, ptr %Ssid6.i.i, i32 %48) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i3.not.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i3.not.i, label %is_same_ess.exit.i.if.end43.i_crit_edge, label %is_same_ess.exit.i.rtw_check_join_candidate.exit_crit_edge

is_same_ess.exit.i.rtw_check_join_candidate.exit_crit_edge: ; preds = %is_same_ess.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_check_join_candidate.exit

is_same_ess.exit.i.if.end43.i_crit_edge:          ; preds = %is_same_ess.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43.i

if.end43.i:                                       ; preds = %is_same_ess.exit.i.if.end43.i_crit_edge, %if.end28.i.if.end43.i_crit_edge
  %tobool44.not.i = icmp eq ptr %candidate.0104, null
  br i1 %tobool44.not.i, label %if.end43.i.if.then51.i_crit_edge, label %lor.lhs.false45.i

if.end43.i.if.then51.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then51.i

lor.lhs.false45.i:                                ; preds = %if.end43.i
  %Rssi.i = getelementptr inbounds %struct.wlan_network, ptr %candidate.0104, i32 0, i32 6, i32 5
  %51 = ptrtoint ptr %Rssi.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %Rssi.i, align 4
  %Rssi48.i = getelementptr inbounds %struct.wlan_network, ptr %6, i32 0, i32 6, i32 5
  %53 = ptrtoint ptr %Rssi48.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %Rssi48.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp49.i = icmp slt i32 %52, %54
  br i1 %cmp49.i, label %lor.lhs.false45.i.if.then51.i_crit_edge, label %lor.lhs.false45.i.rtw_check_join_candidate.exit_crit_edge

lor.lhs.false45.i.rtw_check_join_candidate.exit_crit_edge: ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_check_join_candidate.exit

lor.lhs.false45.i.if.then51.i_crit_edge:          ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then51.i

if.then51.i:                                      ; preds = %lor.lhs.false45.i.if.then51.i_crit_edge, %if.end43.i.if.then51.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %55 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %55)
  %cmp55.i = icmp ugt i32 %55, 4
  br i1 %cmp55.i, label %do.body77.i, label %if.then51.i.rtw_check_join_candidate.exit_crit_edge

if.then51.i.rtw_check_join_candidate.exit_crit_edge: ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_check_join_candidate.exit

do.body77.i:                                      ; preds = %if.then51.i
  %56 = ptrtoint ptr %assoc_by_bssid.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %assoc_by_bssid.i, align 4
  %Ssid66.i = getelementptr inbounds %struct.wlan_network, ptr %6, i32 0, i32 6, i32 3, i32 1
  %MacAddress69.i = getelementptr inbounds %struct.wlan_network, ptr %6, i32 0, i32 6, i32 1
  %Rssi72.i = getelementptr inbounds %struct.wlan_network, ptr %6, i32 0, i32 6, i32 5
  %58 = ptrtoint ptr %Rssi72.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %Rssi72.i, align 4
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %57, ptr noundef %Ssid16.i, ptr noundef %Ssid66.i, ptr noundef %MacAddress69.i, i32 noundef %59) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr.i = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr.i)
  %cmp78.i = icmp ugt i32 %.pr.i, 4
  br i1 %cmp78.i, label %do.end83.i, label %do.body77.i.rtw_check_join_candidate.exit_crit_edge

do.body77.i.rtw_check_join_candidate.exit_crit_edge: ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_check_join_candidate.exit

do.end83.i:                                       ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #22
  %60 = ptrtoint ptr %to_roaming.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %to_roaming.i.i, align 2
  %conv86.i = zext i8 %61 to i32
  %call87.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %conv86.i) #26
  br label %rtw_check_join_candidate.exit

rtw_check_join_candidate.exit:                    ; preds = %do.end83.i, %do.body77.i.rtw_check_join_candidate.exit_crit_edge, %if.then51.i.rtw_check_join_candidate.exit_crit_edge, %lor.lhs.false45.i.rtw_check_join_candidate.exit_crit_edge, %is_same_ess.exit.i.rtw_check_join_candidate.exit_crit_edge, %lor.lhs.false36.i.rtw_check_join_candidate.exit_crit_edge, %if.then32.i.rtw_check_join_candidate.exit_crit_edge, %rtw_is_desired_network.exit.i.rtw_check_join_candidate.exit_crit_edge, %rtw_is_desired_network.exit.thread.i, %lor.lhs.false.i.rtw_check_join_candidate.exit_crit_edge, %if.then6.i.rtw_check_join_candidate.exit_crit_edge, %if.then.i.rtw_check_join_candidate.exit_crit_edge
  %candidate.1 = phi ptr [ %candidate.0104, %rtw_is_desired_network.exit.i.rtw_check_join_candidate.exit_crit_edge ], [ %6, %do.end83.i ], [ %6, %do.body77.i.rtw_check_join_candidate.exit_crit_edge ], [ %6, %if.then51.i.rtw_check_join_candidate.exit_crit_edge ], [ %candidate.0104, %lor.lhs.false45.i.rtw_check_join_candidate.exit_crit_edge ], [ %candidate.0104, %if.then32.i.rtw_check_join_candidate.exit_crit_edge ], [ %candidate.0104, %is_same_ess.exit.i.rtw_check_join_candidate.exit_crit_edge ], [ %candidate.0104, %lor.lhs.false36.i.rtw_check_join_candidate.exit_crit_edge ], [ %candidate.0104, %rtw_is_desired_network.exit.thread.i ], [ %candidate.0104, %lor.lhs.false.i.rtw_check_join_candidate.exit_crit_edge ], [ %candidate.0104, %if.then6.i.rtw_check_join_candidate.exit_crit_edge ], [ %candidate.0104, %if.then.i.rtw_check_join_candidate.exit_crit_edge ]
  %62 = ptrtoint ptr %pscanned to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr = load ptr, ptr %pscanned, align 4
  %cmp.not = icmp eq ptr %scanned_queue, %.pr
  br i1 %cmp.not, label %while.end, label %rtw_check_join_candidate.exit.while.body_crit_edge

rtw_check_join_candidate.exit.while.body_crit_edge: ; preds = %rtw_check_join_candidate.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

while.end:                                        ; preds = %rtw_check_join_candidate.exit
  %tobool8.not = icmp eq ptr %candidate.1, null
  br i1 %tobool8.not, label %while.end.do.body_crit_edge, label %do.body18

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %63 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %63)
  %cmp10 = icmp ugt i32 %63, 4
  br i1 %cmp10, label %do.end, label %do.body.exit_crit_edge

do.body.exit_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #26
  br label %exit

do.body18:                                        ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %64 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %64)
  %cmp19 = icmp ugt i32 %64, 4
  br i1 %cmp19, label %do.end23, label %do.body18.if.end33_crit_edge

do.body18.if.end33_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33

do.end23:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #22
  %Ssid25 = getelementptr inbounds %struct.wlan_network, ptr %candidate.1, i32 0, i32 6, i32 3, i32 1
  %MacAddress = getelementptr inbounds %struct.wlan_network, ptr %candidate.1, i32 0, i32 6, i32 1
  %DSConfig = getelementptr inbounds %struct.wlan_network, ptr %candidate.1, i32 0, i32 6, i32 7, i32 3
  %65 = ptrtoint ptr %DSConfig to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %DSConfig, align 4
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, ptr noundef %Ssid25, ptr noundef %MacAddress, i32 noundef %66) #26
  br label %if.end33

if.end33:                                         ; preds = %do.end23, %do.body18.if.end33_crit_edge
  %fw_state.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 1
  %67 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool35.not = icmp eq i32 %and.i, 0
  br i1 %tobool35.not, label %if.end33.if.end49_crit_edge, label %do.body37

if.end33.if.end49_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end49

do.body37:                                        ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %69 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %69)
  %cmp38 = icmp ugt i32 %69, 4
  br i1 %cmp38, label %do.end42, label %do.body37.do.end47_crit_edge

do.body37.do.end47_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end47

do.end42:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #22
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27) #26
  br label %do.end47

do.end47:                                         ; preds = %do.end42, %do.body37.do.end47_crit_edge
  %call48 = call zeroext i8 @rtw_disassoc_cmd(ptr noundef %2, i32 noundef 0, i1 noundef zeroext true) #20
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %71, -385
  store i32 %and.i.i, ptr %fw_state.i.i, align 4
  %to_roaming.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 4, i32 4
  %72 = ptrtoint ptr %to_roaming.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %to_roaming.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp.not.i96 = icmp eq i8 %73, 0
  br i1 %cmp.not.i96, label %if.then7.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #22
  %and.i21.i = and i32 %71, -386
  %74 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and.i21.i, ptr %fw_state.i.i, align 4
  br label %rtw_indicate_disconnect.exit

if.then7.i:                                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #22
  call void @rtw_os_indicate_disconnect(ptr noundef %2) #20
  %75 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fw_state.i.i, align 4
  %and.i25.i = and i32 %76, -2
  store i32 %and.i25.i, ptr %fw_state.i.i, align 4
  call void @rtw_led_control(ptr noundef %2, i32 noundef 3) #20
  br label %rtw_indicate_disconnect.exit

rtw_indicate_disconnect.exit:                     ; preds = %if.then7.i, %if.end.thread.i
  %call9.i = call zeroext i8 @p2p_ps_wk_cmd(ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 1) #20
  %call10.i = call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %2, i8 noundef zeroext 3, i8 noundef zeroext 1) #20
  call void @rtw_free_assoc_resources(ptr noundef %2, i32 noundef 0)
  br label %if.end49

if.end49:                                         ; preds = %rtw_indicate_disconnect.exit, %if.end33.if.end49_crit_edge
  %call50 = call zeroext i8 @GetHalDefVar8188EUsb(ptr noundef %2, i32 noundef 1, ptr noundef nonnull %supp_ant_div) #20
  %77 = ptrtoint ptr %supp_ant_div to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %supp_ant_div, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool51.not = icmp eq i8 %78, 0
  br i1 %tobool51.not, label %if.end49.if.end72_crit_edge, label %if.then52

if.end49.if.end72_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end72

if.then52:                                        ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cur_ant) #20
  %79 = ptrtoint ptr %cur_ant to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -1, ptr %cur_ant, align 1, !annotation !144
  %call53 = call zeroext i8 @GetHalDefVar8188EUsb(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %cur_ant) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %80 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %80)
  %cmp55 = icmp ugt i32 %80, 4
  br i1 %cmp55, label %do.end59, label %if.then52.do.end71_crit_edge

if.then52.do.end71_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end71

do.end59:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #22
  %Optimum_antenna = getelementptr inbounds %struct.wlan_network, ptr %candidate.1, i32 0, i32 6, i32 10, i32 2
  %81 = ptrtoint ptr %Optimum_antenna to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %Optimum_antenna, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %82)
  %cmp62 = icmp eq i8 %82, 2
  %cond = select i1 %cmp62, ptr @.str.37, ptr @.str.38
  %83 = ptrtoint ptr %cur_ant to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %cur_ant, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %84)
  %cmp65 = icmp eq i8 %84, 2
  %cond67 = select i1 %cmp65, ptr @.str.37, ptr @.str.38
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull %cond, ptr noundef nonnull %cond67) #26
  br label %do.end71

do.end71:                                         ; preds = %do.end59, %if.then52.do.end71_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cur_ant) #20
  br label %if.end72

if.end72:                                         ; preds = %do.end71, %if.end49.if.end72_crit_edge
  %call73 = call zeroext i8 @rtw_joinbss_cmd(ptr noundef %2, ptr noundef nonnull %candidate.1) #20
  %conv74 = zext i8 %call73 to i32
  br label %exit

exit:                                             ; preds = %if.end72, %do.end, %do.body.exit_crit_edge, %while.body.exit_crit_edge
  %ret.0 = phi i32 [ %conv74, %if.end72 ], [ 0, %do.end ], [ 0, %do.body.exit_crit_edge ], [ 0, %while.body.exit_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %supp_ant_div) #20
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_update_registrypriv_dev_network(ptr noundef %adapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp ne i32 %1, 0
  %cond = zext i1 %cmp.not to i32
  %Privacy = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 4
  %2 = ptrtoint ptr %Privacy to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %cond, ptr %Privacy, align 1
  %Rssi = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 5
  %3 = ptrtoint ptr %Rssi to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 0, ptr %Rssi, align 1
  %wireless_mode = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 7
  %4 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wireless_mode, align 2
  %switch.tableidx = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %switch.tableidx)
  %6 = icmp ult i8 %switch.tableidx, 11
  br i1 %6, label %switch.hole_check, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 1671, %switch.maskindex
  %7 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %switch.lobit.not = icmp eq i16 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #22
  %8 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.rtw_update_registrypriv_dev_network, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %NetworkTypeInUse3 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 6
  %10 = ptrtoint ptr %NetworkTypeInUse3 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %switch.load, ptr %NetworkTypeInUse3, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %channel = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 6
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %channel, align 1
  %conv4 = zext i8 %12 to i32
  %DSConfig = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 7, i32 3
  %13 = ptrtoint ptr %DSConfig to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %conv4, ptr %DSConfig, align 1
  %InfrastructureMode = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 8
  %14 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %InfrastructureMode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp5 = icmp eq i32 %15, 0
  br i1 %cmp5, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  %ATIMWindow = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 7, i32 2
  %16 = ptrtoint ptr %ATIMWindow to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %ATIMWindow, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %dev_network = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36
  %registrypriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13
  %InfrastructureMode10 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 8
  %17 = ptrtoint ptr %InfrastructureMode10 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %15, ptr %InfrastructureMode10, align 1
  %call = tail call i32 @rtw_generate_ie(ptr noundef %registrypriv) #20
  %IELength = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 11
  %18 = ptrtoint ptr %IELength to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %call, ptr %IELength, align 1
  %add.i = add i32 %call, 120
  %19 = ptrtoint ptr %dev_network to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %add.i, ptr %dev_network, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_createbss_cmd(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_indicate_connect(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %to_join = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %to_join, align 1
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %or.i = or i32 %2, 1
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %fw_state.i, align 4
  tail call void @rtw_led_control(ptr noundef %padapter, i32 noundef 2) #20
  tail call void @rtw_os_indicate_connect(ptr noundef %padapter) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %to_roaming = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %to_roaming to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %to_roaming, align 2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_sitesurvey_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_assoc_resources(ptr noundef %adapter, i32 noundef %lock_scanned_queue) local_unnamed_addr #2 align 64 {
entry:
  %zero_addr.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %1, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %stapriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %MacAddress = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 1
  %call2 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %MacAddress) #20
  %sta_hash_lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock) #20
  %call3 = tail call i32 @rtw_free_stainfo(ptr noundef %adapter, ptr noundef %call2) #20
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  %and.i60 = and i32 %3, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool.not.i61.not = icmp eq i32 %and.i60, 0
  br i1 %tobool.not.i61.not, label %if.end.if.end14_crit_edge, label %if.then7

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @rtw_free_all_stainfo(ptr noundef %adapter) #20
  %call9 = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %adapter) #20
  %sta_hash_lock10 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock10) #20
  %call11 = tail call i32 @rtw_free_stainfo(ptr noundef %adapter, ptr noundef %call9) #20
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock10) #20
  %call13 = tail call i32 @rtw_init_bcmc_stainfo(ptr noundef %adapter) #20
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock_scanned_queue)
  %tobool15.not = icmp eq i32 %lock_scanned_queue, 0
  br i1 %tobool15.not, label %if.end14.if.end17_crit_edge, label %if.then16

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  %lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 9, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #20
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14.if.end17_crit_edge
  %scanned_queue18 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 9
  %MacAddress20 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i.i) #20
  %4 = call ptr @memset(ptr %zero_addr.i.i, i32 0, i32 6)
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i.i, ptr noundef dereferenceable(6) %MacAddress20, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %if.end17.rtw_find_network.exit.thread_crit_edge, label %if.end17.while.cond.i.i_crit_edge

if.end17.while.cond.i.i_crit_edge:                ; preds = %if.end17
  br label %while.cond.i.i

if.end17.rtw_find_network.exit.thread_crit_edge:  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit.thread

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end17.while.cond.i.i_crit_edge
  %plist.0.in.i.i = phi ptr [ %plist.0.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %scanned_queue18, %if.end17.while.cond.i.i_crit_edge ]
  %5 = ptrtoint ptr %plist.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %plist.0.i.i = load ptr, ptr %plist.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %plist.0.i.i, %scanned_queue18
  br i1 %cmp.not.i.i, label %while.cond.i.i.rtw_find_network.exit.thread_crit_edge, label %while.body.i.i

while.cond.i.i.rtw_find_network.exit.thread_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit.thread

while.body.i.i:                                   ; preds = %while.cond.i.i
  %MacAddress.i.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i, i32 0, i32 6, i32 1
  %bcmp18.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress20, ptr noundef dereferenceable(6) %MacAddress.i.i, i32 6) #25
  %tobool4.not.i.i = icmp eq i32 %bcmp18.i.i, 0
  br i1 %tobool4.not.i.i, label %rtw_find_network.exit, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i.i

rtw_find_network.exit.thread:                     ; preds = %while.cond.i.i.rtw_find_network.exit.thread_crit_edge, %if.end17.rtw_find_network.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i) #20
  br label %if.end25

rtw_find_network.exit:                            ; preds = %while.body.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i) #20
  %tobool23.not = icmp eq ptr %plist.0.i.i, null
  br i1 %tobool23.not, label %rtw_find_network.exit.if.end25_crit_edge, label %if.then24

rtw_find_network.exit.if.end25_crit_edge:         ; preds = %rtw_find_network.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25

if.then24:                                        ; preds = %rtw_find_network.exit
  call void @__sanitizer_cov_trace_pc() #22
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %fixed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %fixed, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %rtw_find_network.exit.if.end25_crit_edge, %rtw_find_network.exit.thread
  %tobool23.not71 = phi i1 [ true, %rtw_find_network.exit.thread ], [ false, %if.then24 ], [ true, %rtw_find_network.exit.if.end25_crit_edge ]
  %pnetwork.2.i.i70 = phi ptr [ null, %rtw_find_network.exit.thread ], [ %plist.0.i.i, %if.then24 ], [ null, %rtw_find_network.exit.if.end25_crit_edge ]
  %7 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_state.i, align 4
  %9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool27.not = icmp eq i32 %9, 0
  br i1 %tobool27.not, label %if.end25.if.end30_crit_edge, label %land.lhs.true

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end25
  %asoc_sta_count = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11, i32 5
  %10 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %asoc_sta_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then29, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end30

if.then29:                                        ; preds = %land.lhs.true
  %free_bss_pool.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 8
  br i1 %tobool23.not71, label %if.then29.if.end30_crit_edge, label %if.end.i.i

if.then29.if.end30_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end30

if.end.i.i:                                       ; preds = %if.then29
  %fixed.i.i = getelementptr inbounds %struct.wlan_network, ptr %pnetwork.2.i.i70, i32 0, i32 2
  %12 = ptrtoint ptr %fixed.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fixed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %if.end.i.i.if.end30_crit_edge

if.end.i.i.if.end30_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end30

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pnetwork.2.i.i70) #20
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end3.i.i.list_del_init.exit.i.i_crit_edge

if.end3.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %pnetwork.2.i.i70, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i.i, align 4
  %16 = ptrtoint ptr %pnetwork.2.i.i70 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pnetwork.2.i.i70, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end3.i.i.list_del_init.exit.i.i_crit_edge
  %20 = ptrtoint ptr %pnetwork.2.i.i70 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %pnetwork.2.i.i70, ptr %pnetwork.2.i.i70, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %pnetwork.2.i.i70, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pnetwork.2.i.i70, ptr %prev.i3.i.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 8, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i9.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %pnetwork.2.i.i70, ptr noundef %23, ptr noundef %free_bss_pool.i.i) #20
  br i1 %call.i.i9.i.i, label %if.end.i.i10.i.i, label %list_del_init.exit.i.i.list_add_tail.exit.i.i_crit_edge

list_del_init.exit.i.i.list_add_tail.exit.i.i_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_add_tail.exit.i.i

if.end.i.i10.i.i:                                 ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pnetwork.2.i.i70, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %pnetwork.2.i.i70 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %free_bss_pool.i.i, ptr %pnetwork.2.i.i70, align 4
  %26 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev.i3.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %pnetwork.2.i.i70, ptr %23, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i10.i.i, %list_del_init.exit.i.i.list_add_tail.exit.i.i_crit_edge
  %num_of_scanned.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 12
  %28 = ptrtoint ptr %num_of_scanned.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_of_scanned.i.i, align 4
  %dec.i.i = add i32 %29, -1
  store i32 %dec.i.i, ptr %num_of_scanned.i.i, align 4
  br label %if.end30

if.end30:                                         ; preds = %list_add_tail.exit.i.i, %if.end.i.i.if.end30_crit_edge, %if.then29.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %if.end25.if.end30_crit_edge
  br i1 %tobool15.not, label %if.end30.if.end35_crit_edge, label %if.then32

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #22
  %lock34 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 9, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock34) #20
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end30.if.end35_crit_edge
  %key_mask = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 11
  %30 = ptrtoint ptr %key_mask to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %key_mask, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_indicate_disconnect(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %1, -385
  store i32 %and.i, ptr %fw_state.i, align 4
  %to_roaming = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %to_roaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %to_roaming, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.then7, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %and.i21 = and i32 %1, -386
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.i21, ptr %fw_state.i, align 4
  br label %if.end8

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @rtw_os_indicate_disconnect(ptr noundef %padapter) #20
  %5 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_state.i, align 4
  %and.i25 = and i32 %6, -2
  store i32 %and.i25, ptr %fw_state.i, align 4
  tail call void @rtw_led_control(ptr noundef %padapter, i32 noundef 3) #20
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.thread
  %call9 = tail call zeroext i8 @p2p_ps_wk_cmd(ptr noundef %padapter, i8 noundef zeroext 0, i8 noundef zeroext 1) #20
  %call10 = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %padapter, i8 noundef zeroext 3, i8 noundef zeroext 1) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @indicate_wx_scan_complete_event(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @p2p_ps_wk_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_xmit_schedule(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_dummy_event_callback(ptr nocapture noundef %adapter, ptr nocapture noundef %pbuf) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_fwdbg_event_callback(ptr nocapture noundef %adapter, ptr nocapture noundef %pbuf) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_all_stainfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_bcmc_stainfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_init_bcmc_stainfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_led_control(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_indicate_connect(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_indicate_disconnect(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_indicate_scan_done(ptr noundef %padapter, i1 noundef zeroext %aborted) local_unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @rtw_os_indicate_scan_done(ptr noundef %padapter, i1 noundef zeroext %aborted) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_indicate_scan_done(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_joinbss_event_prehandle(ptr noundef %adapter, ptr noundef %pbuf) local_unnamed_addr #2 align 64 {
entry:
  %zero_addr.i.i208 = alloca [6 x i8], align 1
  %zero_addr.i.i191 = alloca [6 x i8], align 1
  %zero_addr.i.i178 = alloca [6 x i8], align 1
  %zero_addr.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4
  %network = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6
  %MacAddress = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 1
  %MacAddress3 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress, ptr noundef dereferenceable(6) %MacAddress3, i32 6) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  %IELength.i = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 11
  %0 = ptrtoint ptr %IELength.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %IELength.i, align 1
  %add.i = add i32 %1, 120
  %2 = ptrtoint ptr %network to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add.i, ptr %network, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 888, i32 %add.i)
  %cmp = icmp ugt i32 %add.i, 888
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #20
  %join_res = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 5
  %3 = ptrtoint ptr %join_res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %join_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp10 = icmp sgt i32 %4, 0
  br i1 %cmp10, label %if.then11, label %if.else98

if.then11:                                        ; preds = %if.end
  %scanned_queue = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 9
  %lock12 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 9, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock12) #20
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_state.i, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool14.not = icmp eq i32 %7, 0
  br i1 %tobool14.not, label %if.else92, label %if.then15

if.then15:                                        ; preds = %if.then11
  %and.i175 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i175)
  %tobool17.not = icmp eq i32 %and.i175, 0
  br i1 %tobool17.not, label %if.else57, label %if.then18

if.then18:                                        ; preds = %if.then15
  br i1 %tobool.not, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i.i) #20
  %8 = call ptr @memset(ptr %zero_addr.i.i, i32 0, i32 6)
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i.i, ptr noundef dereferenceable(6) %MacAddress3, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %if.then20.rtw_find_network.exit_crit_edge, label %if.then20.while.cond.i.i_crit_edge

if.then20.while.cond.i.i_crit_edge:               ; preds = %if.then20
  br label %while.cond.i.i

if.then20.rtw_find_network.exit_crit_edge:        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then20.while.cond.i.i_crit_edge
  %plist.0.in.i.i = phi ptr [ %plist.0.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %scanned_queue, %if.then20.while.cond.i.i_crit_edge ]
  %9 = ptrtoint ptr %plist.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %plist.0.i.i = load ptr, ptr %plist.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %plist.0.i.i, %scanned_queue
  br i1 %cmp.not.i.i, label %while.cond.i.i.rtw_find_network.exit_crit_edge, label %while.body.i.i

while.cond.i.i.rtw_find_network.exit_crit_edge:   ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %MacAddress.i.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i, i32 0, i32 6, i32 1
  %bcmp18.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress3, ptr noundef dereferenceable(6) %MacAddress.i.i, i32 6) #25
  %tobool4.not.i.i = icmp eq i32 %bcmp18.i.i, 0
  br i1 %tobool4.not.i.i, label %while.body.i.i.rtw_find_network.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i.i

while.body.i.i.rtw_find_network.exit_crit_edge:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit

rtw_find_network.exit:                            ; preds = %while.body.i.i.rtw_find_network.exit_crit_edge, %while.cond.i.i.rtw_find_network.exit_crit_edge, %if.then20.rtw_find_network.exit_crit_edge
  %pnetwork.2.i.i = phi ptr [ null, %if.then20.rtw_find_network.exit_crit_edge ], [ null, %while.cond.i.i.rtw_find_network.exit_crit_edge ], [ %plist.0.i.i, %while.body.i.i.rtw_find_network.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i) #20
  br label %if.end71

if.else:                                          ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i.i178) #20
  %10 = call ptr @memset(ptr %zero_addr.i.i178, i32 0, i32 6)
  %bcmp.i.i179 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i.i178, ptr noundef dereferenceable(6) %MacAddress3, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i179)
  %tobool.not.i.i180 = icmp eq i32 %bcmp.i.i179, 0
  br i1 %tobool.not.i.i180, label %if.else.rtw_find_network.exit190.thread_crit_edge, label %if.else.while.cond.i.i184_crit_edge

if.else.while.cond.i.i184_crit_edge:              ; preds = %if.else
  br label %while.cond.i.i184

if.else.rtw_find_network.exit190.thread_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit190.thread

while.cond.i.i184:                                ; preds = %while.body.i.i188.while.cond.i.i184_crit_edge, %if.else.while.cond.i.i184_crit_edge
  %plist.0.in.i.i181 = phi ptr [ %plist.0.i.i182, %while.body.i.i188.while.cond.i.i184_crit_edge ], [ %scanned_queue, %if.else.while.cond.i.i184_crit_edge ]
  %11 = ptrtoint ptr %plist.0.in.i.i181 to i32
  call void @__asan_load4_noabort(i32 %11)
  %plist.0.i.i182 = load ptr, ptr %plist.0.in.i.i181, align 4
  %cmp.not.i.i183 = icmp eq ptr %plist.0.i.i182, %scanned_queue
  br i1 %cmp.not.i.i183, label %while.cond.i.i184.rtw_find_network.exit190.thread_crit_edge, label %while.body.i.i188

while.cond.i.i184.rtw_find_network.exit190.thread_crit_edge: ; preds = %while.cond.i.i184
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit190.thread

while.body.i.i188:                                ; preds = %while.cond.i.i184
  %MacAddress.i.i185 = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i182, i32 0, i32 6, i32 1
  %bcmp18.i.i186 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress3, ptr noundef dereferenceable(6) %MacAddress.i.i185, i32 6) #25
  %tobool4.not.i.i187 = icmp eq i32 %bcmp18.i.i186, 0
  br i1 %tobool4.not.i.i187, label %rtw_find_network.exit190, label %while.body.i.i188.while.cond.i.i184_crit_edge

while.body.i.i188.while.cond.i.i184_crit_edge:    ; preds = %while.body.i.i188
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i.i184

rtw_find_network.exit190.thread:                  ; preds = %while.cond.i.i184.rtw_find_network.exit190.thread_crit_edge, %if.else.rtw_find_network.exit190.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i178) #20
  br label %if.end33

rtw_find_network.exit190:                         ; preds = %while.body.i.i188
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i178) #20
  %tobool31.not = icmp eq ptr %plist.0.i.i182, null
  br i1 %tobool31.not, label %rtw_find_network.exit190.if.end33_crit_edge, label %if.then32

rtw_find_network.exit190.if.end33_crit_edge:      ; preds = %rtw_find_network.exit190
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33

if.then32:                                        ; preds = %rtw_find_network.exit190
  call void @__sanitizer_cov_trace_pc() #22
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i182, i32 0, i32 2
  %12 = ptrtoint ptr %fixed to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %fixed, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %rtw_find_network.exit190.if.end33_crit_edge, %rtw_find_network.exit190.thread
  %call37 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %MacAddress3) #20
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end33.if.end42_crit_edge, label %if.then39

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end42

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #22
  %sta_hash_lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock) #20
  %call40 = tail call i32 @rtw_free_stainfo(ptr noundef %adapter, ptr noundef nonnull %call37) #20
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #20
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end33.if.end42_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i.i191) #20
  %13 = call ptr @memset(ptr %zero_addr.i.i191, i32 0, i32 6)
  %bcmp.i.i192 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i.i191, ptr noundef dereferenceable(6) %MacAddress, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i192)
  %tobool.not.i.i193 = icmp eq i32 %bcmp.i.i192, 0
  br i1 %tobool.not.i.i193, label %if.end42.rtw_find_network.exit203_crit_edge, label %if.end42.while.cond.i.i197_crit_edge

if.end42.while.cond.i.i197_crit_edge:             ; preds = %if.end42
  br label %while.cond.i.i197

if.end42.rtw_find_network.exit203_crit_edge:      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit203

while.cond.i.i197:                                ; preds = %while.body.i.i201.while.cond.i.i197_crit_edge, %if.end42.while.cond.i.i197_crit_edge
  %plist.0.in.i.i194 = phi ptr [ %plist.0.i.i195, %while.body.i.i201.while.cond.i.i197_crit_edge ], [ %scanned_queue, %if.end42.while.cond.i.i197_crit_edge ]
  %14 = ptrtoint ptr %plist.0.in.i.i194 to i32
  call void @__asan_load4_noabort(i32 %14)
  %plist.0.i.i195 = load ptr, ptr %plist.0.in.i.i194, align 4
  %cmp.not.i.i196 = icmp eq ptr %plist.0.i.i195, %scanned_queue
  br i1 %cmp.not.i.i196, label %while.cond.i.i197.rtw_find_network.exit203_crit_edge, label %while.body.i.i201

while.cond.i.i197.rtw_find_network.exit203_crit_edge: ; preds = %while.cond.i.i197
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit203

while.body.i.i201:                                ; preds = %while.cond.i.i197
  %MacAddress.i.i198 = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i195, i32 0, i32 6, i32 1
  %bcmp18.i.i199 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress, ptr noundef dereferenceable(6) %MacAddress.i.i198, i32 6) #25
  %tobool4.not.i.i200 = icmp eq i32 %bcmp18.i.i199, 0
  br i1 %tobool4.not.i.i200, label %while.body.i.i201.rtw_find_network.exit203_crit_edge, label %while.body.i.i201.while.cond.i.i197_crit_edge

while.body.i.i201.while.cond.i.i197_crit_edge:    ; preds = %while.body.i.i201
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i.i197

while.body.i.i201.rtw_find_network.exit203_crit_edge: ; preds = %while.body.i.i201
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit203

rtw_find_network.exit203:                         ; preds = %while.body.i.i201.rtw_find_network.exit203_crit_edge, %while.cond.i.i197.rtw_find_network.exit203_crit_edge, %if.end42.rtw_find_network.exit203_crit_edge
  %pnetwork.2.i.i202 = phi ptr [ null, %if.end42.rtw_find_network.exit203_crit_edge ], [ null, %while.cond.i.i197.rtw_find_network.exit203_crit_edge ], [ %plist.0.i.i195, %while.body.i.i201.rtw_find_network.exit203_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i191) #20
  %15 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fw_state.i, align 4
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool49.not = icmp eq i32 %17, 0
  br i1 %tobool49.not, label %rtw_find_network.exit203.if.end71_crit_edge, label %if.then50

rtw_find_network.exit203.if.end71_crit_edge:      ; preds = %rtw_find_network.exit203
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end71

if.then50:                                        ; preds = %rtw_find_network.exit203
  %tobool51.not = icmp eq ptr %pnetwork.2.i.i202, null
  br i1 %tobool51.not, label %if.then50.if.else74_crit_edge, label %if.then50.if.then73.sink.split_crit_edge

if.then50.if.then73.sink.split_crit_edge:         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then73.sink.split

if.then50.if.else74_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else74

if.else57:                                        ; preds = %if.then15
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i.i208) #20
  %18 = call ptr @memset(ptr %zero_addr.i.i208, i32 0, i32 6)
  %bcmp.i.i209 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i.i208, ptr noundef dereferenceable(6) %MacAddress, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i209)
  %tobool.not.i.i210 = icmp eq i32 %bcmp.i.i209, 0
  br i1 %tobool.not.i.i210, label %if.else57.rtw_find_network.exit220_crit_edge, label %if.else57.while.cond.i.i214_crit_edge

if.else57.while.cond.i.i214_crit_edge:            ; preds = %if.else57
  br label %while.cond.i.i214

if.else57.rtw_find_network.exit220_crit_edge:     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit220

while.cond.i.i214:                                ; preds = %while.body.i.i218.while.cond.i.i214_crit_edge, %if.else57.while.cond.i.i214_crit_edge
  %plist.0.in.i.i211 = phi ptr [ %plist.0.i.i212, %while.body.i.i218.while.cond.i.i214_crit_edge ], [ %scanned_queue, %if.else57.while.cond.i.i214_crit_edge ]
  %19 = ptrtoint ptr %plist.0.in.i.i211 to i32
  call void @__asan_load4_noabort(i32 %19)
  %plist.0.i.i212 = load ptr, ptr %plist.0.in.i.i211, align 4
  %cmp.not.i.i213 = icmp eq ptr %plist.0.i.i212, %scanned_queue
  br i1 %cmp.not.i.i213, label %while.cond.i.i214.rtw_find_network.exit220_crit_edge, label %while.body.i.i218

while.cond.i.i214.rtw_find_network.exit220_crit_edge: ; preds = %while.cond.i.i214
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit220

while.body.i.i218:                                ; preds = %while.cond.i.i214
  %MacAddress.i.i215 = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i212, i32 0, i32 6, i32 1
  %bcmp18.i.i216 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress, ptr noundef dereferenceable(6) %MacAddress.i.i215, i32 6) #25
  %tobool4.not.i.i217 = icmp eq i32 %bcmp18.i.i216, 0
  br i1 %tobool4.not.i.i217, label %while.body.i.i218.rtw_find_network.exit220_crit_edge, label %while.body.i.i218.while.cond.i.i214_crit_edge

while.body.i.i218.while.cond.i.i214_crit_edge:    ; preds = %while.body.i.i218
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i.i214

while.body.i.i218.rtw_find_network.exit220_crit_edge: ; preds = %while.body.i.i218
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit220

rtw_find_network.exit220:                         ; preds = %while.body.i.i218.rtw_find_network.exit220_crit_edge, %while.cond.i.i214.rtw_find_network.exit220_crit_edge, %if.else57.rtw_find_network.exit220_crit_edge
  %pnetwork.2.i.i219 = phi ptr [ null, %if.else57.rtw_find_network.exit220_crit_edge ], [ null, %while.cond.i.i214.rtw_find_network.exit220_crit_edge ], [ %plist.0.i.i212, %while.body.i.i218.rtw_find_network.exit220_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i208) #20
  %20 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool64.not = icmp eq i32 %20, 0
  br i1 %tobool64.not, label %rtw_find_network.exit220.if.end71_crit_edge, label %if.then65

rtw_find_network.exit220.if.end71_crit_edge:      ; preds = %rtw_find_network.exit220
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end71

if.then65:                                        ; preds = %rtw_find_network.exit220
  %tobool66.not = icmp eq ptr %pnetwork.2.i.i219, null
  br i1 %tobool66.not, label %if.then65.if.else74_crit_edge, label %if.then65.if.then73.sink.split_crit_edge

if.then65.if.then73.sink.split_crit_edge:         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then73.sink.split

if.then65.if.else74_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else74

if.end71:                                         ; preds = %rtw_find_network.exit220.if.end71_crit_edge, %rtw_find_network.exit203.if.end71_crit_edge, %rtw_find_network.exit
  %ptarget_wlan.0 = phi ptr [ %pnetwork.2.i.i, %rtw_find_network.exit ], [ %pnetwork.2.i.i202, %rtw_find_network.exit203.if.end71_crit_edge ], [ %pnetwork.2.i.i219, %rtw_find_network.exit220.if.end71_crit_edge ]
  %tobool72.not = icmp eq ptr %ptarget_wlan.0, null
  br i1 %tobool72.not, label %if.end71.if.else74_crit_edge, label %if.end71.if.then73_crit_edge

if.end71.if.then73_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then73

if.end71.if.else74_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else74

if.then73.sink.split:                             ; preds = %if.then65.if.then73.sink.split_crit_edge, %if.then50.if.then73.sink.split_crit_edge
  %pnetwork.2.i.i219.sink = phi ptr [ %pnetwork.2.i.i202, %if.then50.if.then73.sink.split_crit_edge ], [ %pnetwork.2.i.i219, %if.then65.if.then73.sink.split_crit_edge ]
  %fixed68 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork.2.i.i219.sink, i32 0, i32 2
  %21 = ptrtoint ptr %fixed68 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %fixed68, align 4
  br label %if.then73

if.then73:                                        ; preds = %if.then73.sink.split, %if.end71.if.then73_crit_edge
  %ptarget_wlan.0266 = phi ptr [ %ptarget_wlan.0, %if.end71.if.then73_crit_edge ], [ %pnetwork.2.i.i219.sink, %if.then73.sink.split ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %22 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp.i = icmp ugt i32 %22, 4
  br i1 %cmp.i, label %do.end.i, label %if.then73.do.end4.i_crit_edge

if.then73.do.end4.i_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #22
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.56) #26
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then73.do.end4.i_crit_edge
  %network.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6
  %23 = ptrtoint ptr %network to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %network, align 4
  %25 = call ptr @memcpy(ptr %network.i, ptr %network, i32 %24)
  %IELength.i225 = getelementptr inbounds %struct.wlan_network, ptr %ptarget_wlan.0266, i32 0, i32 6, i32 11
  %26 = ptrtoint ptr %IELength.i225 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %IELength.i225, align 4
  %IELength9.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 11
  %28 = ptrtoint ptr %IELength9.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %IELength9.i, align 4
  %IEs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 12
  %IEs12.i = getelementptr inbounds %struct.wlan_network, ptr %ptarget_wlan.0266, i32 0, i32 6, i32 12
  %29 = call ptr @memcpy(ptr %IEs.i, ptr %IEs12.i, i32 768)
  %30 = ptrtoint ptr %join_res to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %join_res, align 4
  %aid.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 4
  %32 = ptrtoint ptr %aid.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %aid.i, align 4
  %signal_stat_timer.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 37
  %signal_stat_sampling_interval.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 38
  %33 = ptrtoint ptr %signal_stat_sampling_interval.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %signal_stat_sampling_interval.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %mul.i.i = mul i32 %34, 100
  %div.i.i = udiv i32 %mul.i.i, 1000
  %add.i.i = add i32 %div.i.i, %35
  %call.i.i = tail call i32 @mod_timer(ptr noundef %signal_stat_timer.i, i32 noundef %add.i.i) #20
  %PhyInfo.i = getelementptr inbounds %struct.wlan_network, ptr %ptarget_wlan.0266, i32 0, i32 6, i32 10
  %36 = ptrtoint ptr %PhyInfo.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %PhyInfo.i, align 4
  %signal_strength.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 31
  %38 = ptrtoint ptr %signal_strength.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %signal_strength.i, align 8
  %SignalQuality.i = getelementptr inbounds %struct.wlan_network, ptr %ptarget_wlan.0266, i32 0, i32 6, i32 10, i32 1
  %39 = ptrtoint ptr %SignalQuality.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %SignalQuality.i, align 1
  %signal_qual.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 32
  %41 = ptrtoint ptr %signal_qual.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %signal_qual.i, align 1
  %42 = load i8, ptr %PhyInfo.i, align 4
  %conv.i = zext i8 %42 to i16
  %add.i75.i = add nuw nsw i16 %conv.i, 1
  %shr.i.i = lshr i16 %add.i75.i, 1
  %43 = trunc i16 %shr.i.i to i8
  %conv24.i = add i8 %43, -95
  %rssi.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 29
  %44 = ptrtoint ptr %rssi.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv24.i, ptr %rssi.i, align 2
  %45 = ptrtoint ptr %signal_stat_sampling_interval.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %signal_stat_sampling_interval.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %mul.i76.i = mul i32 %46, 100
  %div.i77.i = udiv i32 %mul.i76.i, 1000
  %add.i78.i = add i32 %div.i77.i, %47
  %call.i79.i = tail call i32 @mod_timer(ptr noundef %signal_stat_timer.i, i32 noundef %add.i78.i) #20
  %InfrastructureMode.i = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 8
  %48 = ptrtoint ptr %InfrastructureMode.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %InfrastructureMode.i, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %49, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 0, label %do.end4.i.rtw_joinbss_update_network.exit_crit_edge
  ]

do.end4.i.rtw_joinbss_update_network.exit_crit_edge: ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_joinbss_update_network.exit

sw.bb.i:                                          ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #22
  %51 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fw_state.i, align 4
  %and.i227 = and i32 %52, 256
  %53 = or i32 %and.i227, 8
  br label %rtw_joinbss_update_network.exit

sw.default.i:                                     ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_joinbss_update_network.exit

rtw_joinbss_update_network.exit:                  ; preds = %sw.default.i, %sw.bb.i, %do.end4.i.rtw_joinbss_update_network.exit_crit_edge
  %.sink = phi i32 [ 0, %sw.default.i ], [ %53, %sw.bb.i ], [ 32, %do.end4.i.rtw_joinbss_update_network.exit_crit_edge ]
  %54 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink, ptr %fw_state.i, align 4
  %add.ptr.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 12, i32 12
  %55 = ptrtoint ptr %IELength9.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %IELength9.i, align 4
  tail call void @rtw_update_protection(ptr noundef %adapter, ptr noundef %add.ptr.i, i32 noundef %56) #20
  %57 = ptrtoint ptr %IELength9.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %IELength9.i, align 4
  tail call void @rtw_update_ht_cap(ptr noundef %adapter, ptr noundef %IEs.i, i32 noundef %58) #20
  %59 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fw_state.i, align 4
  %61 = and i32 %60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool79.not = icmp eq i32 %61, 0
  br i1 %tobool79.not, label %rtw_joinbss_update_network.exit.if.end87_crit_edge, label %if.then80

rtw_joinbss_update_network.exit.if.end87_crit_edge: ; preds = %rtw_joinbss_update_network.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end87

if.else74:                                        ; preds = %if.end71.if.else74_crit_edge, %if.then65.if.else74_crit_edge, %if.then50.if.else74_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock12) #20
  br label %ignore_joinbss_callback

if.then80:                                        ; preds = %rtw_joinbss_update_network.exit
  %call.i233 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %MacAddress) #20
  %tobool.not.i234 = icmp eq ptr %call.i233, null
  br i1 %tobool.not.i234, label %if.end.i, label %if.then80.do.body.i_crit_edge

if.then80.do.body.i_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i

if.end.i:                                         ; preds = %if.then80
  %call4.i = tail call ptr @rtw_alloc_stainfo(ptr noundef %stapriv, ptr noundef %MacAddress) #20
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.then83, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then80.do.body.i_crit_edge
  %psta.088.i = phi ptr [ %call4.i, %if.end.i.do.body.i_crit_edge ], [ %call.i233, %if.then80.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %62 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %62)
  %cmp.i235 = icmp ugt i32 %62, 4
  br i1 %cmp.i235, label %do.end.i236, label %do.body.i.do.end12.i_crit_edge

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end12.i

do.end.i236:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.57) #26
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i236, %do.body.i.do.end12.i_crit_edge
  %63 = ptrtoint ptr %join_res to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %join_res, align 4
  %aid.i238 = getelementptr inbounds %struct.sta_info, ptr %psta.088.i, i32 0, i32 8
  %65 = ptrtoint ptr %aid.i238 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %aid.i238, align 8
  %mac_id.i = getelementptr inbounds %struct.sta_info, ptr %psta.088.i, i32 0, i32 9
  %66 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %mac_id.i, align 4
  tail call void @rtl8188e_SetHalODMVar(ptr noundef %adapter, ptr noundef nonnull %psta.088.i, i1 noundef zeroext true) #20
  %securitypriv.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12
  %67 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %securitypriv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp13.i = icmp eq i32 %68, 2
  br i1 %cmp13.i, label %if.then14.i, label %do.end12.i.if.end19.i_crit_edge

do.end12.i.if.end19.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end19.i

if.then14.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #22
  %binstallGrpkey.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 22
  %69 = ptrtoint ptr %binstallGrpkey.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %binstallGrpkey.i, align 4
  %busetkipkey.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 23
  %70 = ptrtoint ptr %busetkipkey.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %busetkipkey.i, align 1
  %bgrpkey_handshake.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 25
  %71 = ptrtoint ptr %bgrpkey_handshake.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %bgrpkey_handshake.i, align 1
  %ieee8021x_blocked.i = getelementptr inbounds %struct.sta_info, ptr %psta.088.i, i32 0, i32 12
  %72 = ptrtoint ptr %ieee8021x_blocked.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %ieee8021x_blocked.i, align 4
  %dot11PrivacyAlgrthm.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 1
  %73 = ptrtoint ptr %dot11PrivacyAlgrthm.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dot11PrivacyAlgrthm.i, align 4
  %dot118021XPrivacy.i = getelementptr inbounds %struct.sta_info, ptr %psta.088.i, i32 0, i32 13
  %75 = ptrtoint ptr %dot118021XPrivacy.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %dot118021XPrivacy.i, align 8
  %dot11tkiptxmickey.i = getelementptr inbounds %struct.sta_info, ptr %psta.088.i, i32 0, i32 14
  %dot11txpn.i = getelementptr inbounds %struct.sta_info, ptr %psta.088.i, i32 0, i32 17
  %76 = call ptr @memset(ptr %dot11tkiptxmickey.i, i32 0, i32 48)
  %77 = call ptr @memset(ptr %dot11txpn.i, i32 0, i32 16)
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then14.i, %do.end12.i.if.end19.i_crit_edge
  %wps_ie_len.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 21
  %78 = ptrtoint ptr %wps_ie_len.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %wps_ie_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp21.not.i = icmp eq i32 %79, 0
  br i1 %cmp21.not.i, label %if.end19.i.if.end26.i_crit_edge, label %if.then22.i

if.end19.i.if.end26.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end26.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #22
  %ieee8021x_blocked23.i = getelementptr inbounds %struct.sta_info, ptr %psta.088.i, i32 0, i32 12
  %80 = ptrtoint ptr %ieee8021x_blocked23.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %ieee8021x_blocked23.i, align 4
  %81 = ptrtoint ptr %wps_ie_len.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %wps_ie_len.i, align 8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then22.i, %if.end19.i.if.end26.i_crit_edge
  %enable.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 0, i32 1
  %82 = ptrtoint ptr %enable.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %enable.i, align 4
  %indicate_seq.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 0, i32 2
  %83 = ptrtoint ptr %indicate_seq.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 -1, ptr %indicate_seq.i, align 2
  %wend_b.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 0, i32 3
  %84 = ptrtoint ptr %wend_b.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 -1, ptr %wend_b.i, align 4
  %wsize_b.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 0, i32 4
  %85 = ptrtoint ptr %wsize_b.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 64, ptr %wsize_b.i, align 2
  %enable.1.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 1, i32 1
  %86 = ptrtoint ptr %enable.1.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %enable.1.i, align 4
  %indicate_seq.1.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 1, i32 2
  %87 = ptrtoint ptr %indicate_seq.1.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 -1, ptr %indicate_seq.1.i, align 2
  %wend_b.1.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 1, i32 3
  %88 = ptrtoint ptr %wend_b.1.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 -1, ptr %wend_b.1.i, align 4
  %wsize_b.1.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 1, i32 4
  %89 = ptrtoint ptr %wsize_b.1.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 64, ptr %wsize_b.1.i, align 2
  %enable.2.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 2, i32 1
  %90 = ptrtoint ptr %enable.2.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %enable.2.i, align 4
  %indicate_seq.2.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 2, i32 2
  %91 = ptrtoint ptr %indicate_seq.2.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 -1, ptr %indicate_seq.2.i, align 2
  %wend_b.2.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 2, i32 3
  %92 = ptrtoint ptr %wend_b.2.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -1, ptr %wend_b.2.i, align 4
  %wsize_b.2.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 2, i32 4
  %93 = ptrtoint ptr %wsize_b.2.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 64, ptr %wsize_b.2.i, align 2
  %enable.3.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 3, i32 1
  %94 = ptrtoint ptr %enable.3.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %enable.3.i, align 4
  %indicate_seq.3.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 3, i32 2
  %95 = ptrtoint ptr %indicate_seq.3.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 -1, ptr %indicate_seq.3.i, align 2
  %wend_b.3.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 3, i32 3
  %96 = ptrtoint ptr %wend_b.3.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 -1, ptr %wend_b.3.i, align 4
  %wsize_b.3.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 3, i32 4
  %97 = ptrtoint ptr %wsize_b.3.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 64, ptr %wsize_b.3.i, align 2
  %enable.4.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 4, i32 1
  %98 = ptrtoint ptr %enable.4.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %enable.4.i, align 4
  %indicate_seq.4.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 4, i32 2
  %99 = ptrtoint ptr %indicate_seq.4.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 -1, ptr %indicate_seq.4.i, align 2
  %wend_b.4.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 4, i32 3
  %100 = ptrtoint ptr %wend_b.4.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 -1, ptr %wend_b.4.i, align 4
  %wsize_b.4.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 4, i32 4
  %101 = ptrtoint ptr %wsize_b.4.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 64, ptr %wsize_b.4.i, align 2
  %enable.5.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 5, i32 1
  %102 = ptrtoint ptr %enable.5.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %enable.5.i, align 4
  %indicate_seq.5.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 5, i32 2
  %103 = ptrtoint ptr %indicate_seq.5.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 -1, ptr %indicate_seq.5.i, align 2
  %wend_b.5.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 5, i32 3
  %104 = ptrtoint ptr %wend_b.5.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 -1, ptr %wend_b.5.i, align 4
  %wsize_b.5.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 5, i32 4
  %105 = ptrtoint ptr %wsize_b.5.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 64, ptr %wsize_b.5.i, align 2
  %enable.6.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 6, i32 1
  %106 = ptrtoint ptr %enable.6.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %enable.6.i, align 4
  %indicate_seq.6.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 6, i32 2
  %107 = ptrtoint ptr %indicate_seq.6.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 -1, ptr %indicate_seq.6.i, align 2
  %wend_b.6.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 6, i32 3
  %108 = ptrtoint ptr %wend_b.6.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 -1, ptr %wend_b.6.i, align 4
  %wsize_b.6.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 6, i32 4
  %109 = ptrtoint ptr %wsize_b.6.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 64, ptr %wsize_b.6.i, align 2
  %enable.7.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 7, i32 1
  %110 = ptrtoint ptr %enable.7.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %enable.7.i, align 4
  %indicate_seq.7.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 7, i32 2
  %111 = ptrtoint ptr %indicate_seq.7.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 -1, ptr %indicate_seq.7.i, align 2
  %wend_b.7.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 7, i32 3
  %112 = ptrtoint ptr %wend_b.7.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 -1, ptr %wend_b.7.i, align 4
  %wsize_b.7.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 7, i32 4
  %113 = ptrtoint ptr %wsize_b.7.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 64, ptr %wsize_b.7.i, align 2
  %enable.8.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 8, i32 1
  %114 = ptrtoint ptr %enable.8.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %enable.8.i, align 4
  %indicate_seq.8.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 8, i32 2
  %115 = ptrtoint ptr %indicate_seq.8.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 -1, ptr %indicate_seq.8.i, align 2
  %wend_b.8.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 8, i32 3
  %116 = ptrtoint ptr %wend_b.8.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 -1, ptr %wend_b.8.i, align 4
  %wsize_b.8.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 8, i32 4
  %117 = ptrtoint ptr %wsize_b.8.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 64, ptr %wsize_b.8.i, align 2
  %enable.9.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 9, i32 1
  %118 = ptrtoint ptr %enable.9.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %enable.9.i, align 4
  %indicate_seq.9.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 9, i32 2
  %119 = ptrtoint ptr %indicate_seq.9.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 -1, ptr %indicate_seq.9.i, align 2
  %wend_b.9.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 9, i32 3
  %120 = ptrtoint ptr %wend_b.9.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 -1, ptr %wend_b.9.i, align 4
  %wsize_b.9.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 9, i32 4
  %121 = ptrtoint ptr %wsize_b.9.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 64, ptr %wsize_b.9.i, align 2
  %enable.10.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 10, i32 1
  %122 = ptrtoint ptr %enable.10.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %enable.10.i, align 4
  %indicate_seq.10.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 10, i32 2
  %123 = ptrtoint ptr %indicate_seq.10.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 -1, ptr %indicate_seq.10.i, align 2
  %wend_b.10.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 10, i32 3
  %124 = ptrtoint ptr %wend_b.10.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 -1, ptr %wend_b.10.i, align 4
  %wsize_b.10.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 10, i32 4
  %125 = ptrtoint ptr %wsize_b.10.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 64, ptr %wsize_b.10.i, align 2
  %enable.11.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 11, i32 1
  %126 = ptrtoint ptr %enable.11.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %enable.11.i, align 4
  %indicate_seq.11.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 11, i32 2
  %127 = ptrtoint ptr %indicate_seq.11.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 -1, ptr %indicate_seq.11.i, align 2
  %wend_b.11.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 11, i32 3
  %128 = ptrtoint ptr %wend_b.11.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 -1, ptr %wend_b.11.i, align 4
  %wsize_b.11.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 11, i32 4
  %129 = ptrtoint ptr %wsize_b.11.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 64, ptr %wsize_b.11.i, align 2
  %enable.12.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 12, i32 1
  %130 = ptrtoint ptr %enable.12.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %enable.12.i, align 4
  %indicate_seq.12.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 12, i32 2
  %131 = ptrtoint ptr %indicate_seq.12.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 -1, ptr %indicate_seq.12.i, align 2
  %wend_b.12.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 12, i32 3
  %132 = ptrtoint ptr %wend_b.12.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 -1, ptr %wend_b.12.i, align 4
  %wsize_b.12.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 12, i32 4
  %133 = ptrtoint ptr %wsize_b.12.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 64, ptr %wsize_b.12.i, align 2
  %enable.13.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 13, i32 1
  %134 = ptrtoint ptr %enable.13.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %enable.13.i, align 4
  %indicate_seq.13.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 13, i32 2
  %135 = ptrtoint ptr %indicate_seq.13.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 -1, ptr %indicate_seq.13.i, align 2
  %wend_b.13.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 13, i32 3
  %136 = ptrtoint ptr %wend_b.13.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 -1, ptr %wend_b.13.i, align 4
  %wsize_b.13.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 13, i32 4
  %137 = ptrtoint ptr %wsize_b.13.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 64, ptr %wsize_b.13.i, align 2
  %enable.14.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 14, i32 1
  %138 = ptrtoint ptr %enable.14.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %enable.14.i, align 4
  %indicate_seq.14.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 14, i32 2
  %139 = ptrtoint ptr %indicate_seq.14.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 -1, ptr %indicate_seq.14.i, align 2
  %wend_b.14.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 14, i32 3
  %140 = ptrtoint ptr %wend_b.14.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 -1, ptr %wend_b.14.i, align 4
  %wsize_b.14.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 14, i32 4
  %141 = ptrtoint ptr %wsize_b.14.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 64, ptr %wsize_b.14.i, align 2
  %enable.15.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 15, i32 1
  %142 = ptrtoint ptr %enable.15.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %enable.15.i, align 4
  %indicate_seq.15.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 15, i32 2
  %143 = ptrtoint ptr %indicate_seq.15.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 -1, ptr %indicate_seq.15.i, align 2
  %wend_b.15.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 15, i32 3
  %144 = ptrtoint ptr %wend_b.15.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 -1, ptr %wend_b.15.i, align 4
  %wsize_b.15.i = getelementptr %struct.sta_info, ptr %psta.088.i, i32 0, i32 31, i32 15, i32 4
  %145 = ptrtoint ptr %wsize_b.15.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 64, ptr %wsize_b.15.i, align 2
  %call28.i = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %adapter) #20
  %tobool29.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool29.not.i, label %if.end26.i.rtw_joinbss_update_stainfo.exit_crit_edge, label %for.body33.preheader.i

if.end26.i.rtw_joinbss_update_stainfo.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_joinbss_update_stainfo.exit

for.body33.preheader.i:                           ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #22
  %enable36.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 0, i32 1
  %146 = ptrtoint ptr %enable36.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %enable36.i, align 4
  %indicate_seq37.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 0, i32 2
  %147 = ptrtoint ptr %indicate_seq37.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 -1, ptr %indicate_seq37.i, align 2
  %wend_b38.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 0, i32 3
  %148 = ptrtoint ptr %wend_b38.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 -1, ptr %wend_b38.i, align 4
  %wsize_b39.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 0, i32 4
  %149 = ptrtoint ptr %wsize_b39.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 64, ptr %wsize_b39.i, align 2
  %enable36.1.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 1, i32 1
  %150 = ptrtoint ptr %enable36.1.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %enable36.1.i, align 4
  %indicate_seq37.1.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 1, i32 2
  %151 = ptrtoint ptr %indicate_seq37.1.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 -1, ptr %indicate_seq37.1.i, align 2
  %wend_b38.1.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 1, i32 3
  %152 = ptrtoint ptr %wend_b38.1.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 -1, ptr %wend_b38.1.i, align 4
  %wsize_b39.1.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 1, i32 4
  %153 = ptrtoint ptr %wsize_b39.1.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 64, ptr %wsize_b39.1.i, align 2
  %enable36.2.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 2, i32 1
  %154 = ptrtoint ptr %enable36.2.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %enable36.2.i, align 4
  %indicate_seq37.2.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 2, i32 2
  %155 = ptrtoint ptr %indicate_seq37.2.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 -1, ptr %indicate_seq37.2.i, align 2
  %wend_b38.2.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 2, i32 3
  %156 = ptrtoint ptr %wend_b38.2.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 -1, ptr %wend_b38.2.i, align 4
  %wsize_b39.2.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 2, i32 4
  %157 = ptrtoint ptr %wsize_b39.2.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 64, ptr %wsize_b39.2.i, align 2
  %enable36.3.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 3, i32 1
  %158 = ptrtoint ptr %enable36.3.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %enable36.3.i, align 4
  %indicate_seq37.3.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 3, i32 2
  %159 = ptrtoint ptr %indicate_seq37.3.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 -1, ptr %indicate_seq37.3.i, align 2
  %wend_b38.3.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 3, i32 3
  %160 = ptrtoint ptr %wend_b38.3.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 -1, ptr %wend_b38.3.i, align 4
  %wsize_b39.3.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 3, i32 4
  %161 = ptrtoint ptr %wsize_b39.3.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 64, ptr %wsize_b39.3.i, align 2
  %enable36.4.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 4, i32 1
  %162 = ptrtoint ptr %enable36.4.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %enable36.4.i, align 4
  %indicate_seq37.4.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 4, i32 2
  %163 = ptrtoint ptr %indicate_seq37.4.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 -1, ptr %indicate_seq37.4.i, align 2
  %wend_b38.4.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 4, i32 3
  %164 = ptrtoint ptr %wend_b38.4.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 -1, ptr %wend_b38.4.i, align 4
  %wsize_b39.4.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 4, i32 4
  %165 = ptrtoint ptr %wsize_b39.4.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 64, ptr %wsize_b39.4.i, align 2
  %enable36.5.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 5, i32 1
  %166 = ptrtoint ptr %enable36.5.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %enable36.5.i, align 4
  %indicate_seq37.5.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 5, i32 2
  %167 = ptrtoint ptr %indicate_seq37.5.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 -1, ptr %indicate_seq37.5.i, align 2
  %wend_b38.5.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 5, i32 3
  %168 = ptrtoint ptr %wend_b38.5.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 -1, ptr %wend_b38.5.i, align 4
  %wsize_b39.5.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 5, i32 4
  %169 = ptrtoint ptr %wsize_b39.5.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 64, ptr %wsize_b39.5.i, align 2
  %enable36.6.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 6, i32 1
  %170 = ptrtoint ptr %enable36.6.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %enable36.6.i, align 4
  %indicate_seq37.6.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 6, i32 2
  %171 = ptrtoint ptr %indicate_seq37.6.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 -1, ptr %indicate_seq37.6.i, align 2
  %wend_b38.6.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 6, i32 3
  %172 = ptrtoint ptr %wend_b38.6.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 -1, ptr %wend_b38.6.i, align 4
  %wsize_b39.6.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 6, i32 4
  %173 = ptrtoint ptr %wsize_b39.6.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 64, ptr %wsize_b39.6.i, align 2
  %enable36.7.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 7, i32 1
  %174 = ptrtoint ptr %enable36.7.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %enable36.7.i, align 4
  %indicate_seq37.7.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 7, i32 2
  %175 = ptrtoint ptr %indicate_seq37.7.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 -1, ptr %indicate_seq37.7.i, align 2
  %wend_b38.7.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 7, i32 3
  %176 = ptrtoint ptr %wend_b38.7.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 -1, ptr %wend_b38.7.i, align 4
  %wsize_b39.7.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 7, i32 4
  %177 = ptrtoint ptr %wsize_b39.7.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 64, ptr %wsize_b39.7.i, align 2
  %enable36.8.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 8, i32 1
  %178 = ptrtoint ptr %enable36.8.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %enable36.8.i, align 4
  %indicate_seq37.8.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 8, i32 2
  %179 = ptrtoint ptr %indicate_seq37.8.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 -1, ptr %indicate_seq37.8.i, align 2
  %wend_b38.8.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 8, i32 3
  %180 = ptrtoint ptr %wend_b38.8.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 -1, ptr %wend_b38.8.i, align 4
  %wsize_b39.8.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 8, i32 4
  %181 = ptrtoint ptr %wsize_b39.8.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 64, ptr %wsize_b39.8.i, align 2
  %enable36.9.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 9, i32 1
  %182 = ptrtoint ptr %enable36.9.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %enable36.9.i, align 4
  %indicate_seq37.9.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 9, i32 2
  %183 = ptrtoint ptr %indicate_seq37.9.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 -1, ptr %indicate_seq37.9.i, align 2
  %wend_b38.9.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 9, i32 3
  %184 = ptrtoint ptr %wend_b38.9.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 -1, ptr %wend_b38.9.i, align 4
  %wsize_b39.9.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 9, i32 4
  %185 = ptrtoint ptr %wsize_b39.9.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 64, ptr %wsize_b39.9.i, align 2
  %enable36.10.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 10, i32 1
  %186 = ptrtoint ptr %enable36.10.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %enable36.10.i, align 4
  %indicate_seq37.10.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 10, i32 2
  %187 = ptrtoint ptr %indicate_seq37.10.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 -1, ptr %indicate_seq37.10.i, align 2
  %wend_b38.10.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 10, i32 3
  %188 = ptrtoint ptr %wend_b38.10.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 -1, ptr %wend_b38.10.i, align 4
  %wsize_b39.10.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 10, i32 4
  %189 = ptrtoint ptr %wsize_b39.10.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 64, ptr %wsize_b39.10.i, align 2
  %enable36.11.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 11, i32 1
  %190 = ptrtoint ptr %enable36.11.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %enable36.11.i, align 4
  %indicate_seq37.11.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 11, i32 2
  %191 = ptrtoint ptr %indicate_seq37.11.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 -1, ptr %indicate_seq37.11.i, align 2
  %wend_b38.11.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 11, i32 3
  %192 = ptrtoint ptr %wend_b38.11.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 -1, ptr %wend_b38.11.i, align 4
  %wsize_b39.11.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 11, i32 4
  %193 = ptrtoint ptr %wsize_b39.11.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 64, ptr %wsize_b39.11.i, align 2
  %enable36.12.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 12, i32 1
  %194 = ptrtoint ptr %enable36.12.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 0, ptr %enable36.12.i, align 4
  %indicate_seq37.12.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 12, i32 2
  %195 = ptrtoint ptr %indicate_seq37.12.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 -1, ptr %indicate_seq37.12.i, align 2
  %wend_b38.12.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 12, i32 3
  %196 = ptrtoint ptr %wend_b38.12.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 -1, ptr %wend_b38.12.i, align 4
  %wsize_b39.12.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 12, i32 4
  %197 = ptrtoint ptr %wsize_b39.12.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 64, ptr %wsize_b39.12.i, align 2
  %enable36.13.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 13, i32 1
  %198 = ptrtoint ptr %enable36.13.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 0, ptr %enable36.13.i, align 4
  %indicate_seq37.13.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 13, i32 2
  %199 = ptrtoint ptr %indicate_seq37.13.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 -1, ptr %indicate_seq37.13.i, align 2
  %wend_b38.13.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 13, i32 3
  %200 = ptrtoint ptr %wend_b38.13.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 -1, ptr %wend_b38.13.i, align 4
  %wsize_b39.13.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 13, i32 4
  %201 = ptrtoint ptr %wsize_b39.13.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 64, ptr %wsize_b39.13.i, align 2
  %enable36.14.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 14, i32 1
  %202 = ptrtoint ptr %enable36.14.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 0, ptr %enable36.14.i, align 4
  %indicate_seq37.14.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 14, i32 2
  %203 = ptrtoint ptr %indicate_seq37.14.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 -1, ptr %indicate_seq37.14.i, align 2
  %wend_b38.14.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 14, i32 3
  %204 = ptrtoint ptr %wend_b38.14.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 -1, ptr %wend_b38.14.i, align 4
  %wsize_b39.14.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 14, i32 4
  %205 = ptrtoint ptr %wsize_b39.14.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 64, ptr %wsize_b39.14.i, align 2
  %enable36.15.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 15, i32 1
  %206 = ptrtoint ptr %enable36.15.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 0, ptr %enable36.15.i, align 4
  %indicate_seq37.15.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 15, i32 2
  %207 = ptrtoint ptr %indicate_seq37.15.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 -1, ptr %indicate_seq37.15.i, align 2
  %wend_b38.15.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 15, i32 3
  %208 = ptrtoint ptr %wend_b38.15.i to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 -1, ptr %wend_b38.15.i, align 4
  %wsize_b39.15.i = getelementptr %struct.sta_info, ptr %call28.i, i32 0, i32 31, i32 15, i32 4
  %209 = ptrtoint ptr %wsize_b39.15.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 64, ptr %wsize_b39.15.i, align 2
  br label %rtw_joinbss_update_stainfo.exit

rtw_joinbss_update_stainfo.exit:                  ; preds = %for.body33.preheader.i, %if.end26.i.rtw_joinbss_update_stainfo.exit_crit_edge
  tail call void @update_sta_info(ptr noundef %adapter, ptr noundef nonnull %psta.088.i) #20
  br label %if.end87

if.then83:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock12) #20
  br label %ignore_joinbss_callback

if.end87:                                         ; preds = %rtw_joinbss_update_stainfo.exit, %rtw_joinbss_update_network.exit.if.end87_crit_edge
  %210 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %fw_state.i, align 4
  %212 = and i32 %211, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool89.not = icmp eq i32 %212, 0
  br i1 %tobool89.not, label %if.end87.if.end91_crit_edge, label %if.then90

if.end87.if.end91_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end91

if.then90:                                        ; preds = %if.end87
  %cur_network_scanned = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 16
  %213 = ptrtoint ptr %cur_network_scanned to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %ptarget_wlan.0266, ptr %cur_network_scanned, align 4
  %to_join.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 3
  %214 = ptrtoint ptr %to_join.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 0, ptr %to_join.i, align 1
  %215 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %fw_state.i, align 4
  %and.i.i = and i32 %216, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i243 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i243, label %if.then.i, label %if.then90.rtw_indicate_connect.exit_crit_edge

if.then90.rtw_indicate_connect.exit_crit_edge:    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_indicate_connect.exit

if.then.i:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #22
  %or.i.i = or i32 %216, 1
  %217 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %or.i.i, ptr %fw_state.i, align 4
  tail call void @rtw_led_control(ptr noundef %adapter, i32 noundef 2) #20
  tail call void @rtw_os_indicate_connect(ptr noundef %adapter) #20
  br label %rtw_indicate_connect.exit

rtw_indicate_connect.exit:                        ; preds = %if.then.i, %if.then90.rtw_indicate_connect.exit_crit_edge
  %to_roaming.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %218 = ptrtoint ptr %to_roaming.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %to_roaming.i, align 2
  br label %if.end91

if.end91:                                         ; preds = %rtw_indicate_connect.exit, %if.end87.if.end91_crit_edge
  %assoc_timer = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 18
  %call.i245 = tail call i32 @del_timer_sync(ptr noundef %assoc_timer) #20
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock12) #20
  br label %ignore_joinbss_callback

if.else92:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock12) #20
  br label %ignore_joinbss_callback

if.else98:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %4)
  %cmp100 = icmp eq i32 %4, -4
  br i1 %cmp100, label %if.then101, label %if.else107

if.then101:                                       ; preds = %if.else98
  tail call void @rtw_reset_securitypriv(ptr noundef %adapter) #20
  %assoc_timer102 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %219 = load volatile i32, ptr @jiffies, align 128
  %call.i246 = tail call i32 @mod_timer(ptr noundef %assoc_timer102, i32 noundef %219) #20
  %fw_state.i247 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %220 = ptrtoint ptr %fw_state.i247 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %fw_state.i247, align 4
  %222 = and i32 %221, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool104.not = icmp eq i32 %222, 0
  br i1 %tobool104.not, label %if.then101.ignore_joinbss_callback_crit_edge, label %if.then105

if.then101.ignore_joinbss_callback_crit_edge:     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #22
  br label %ignore_joinbss_callback

if.then105:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #22
  %and.i252 = and i32 %221, -129
  %223 = ptrtoint ptr %fw_state.i247 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %and.i252, ptr %fw_state.i247, align 4
  br label %ignore_joinbss_callback

if.else107:                                       ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #22
  %assoc_timer108 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %224 = load volatile i32, ptr @jiffies, align 128
  %call.i254 = tail call i32 @mod_timer(ptr noundef %assoc_timer108, i32 noundef %224) #20
  %fw_state.i255 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %225 = ptrtoint ptr %fw_state.i255 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %fw_state.i255, align 4
  %and.i256 = and i32 %226, -129
  store i32 %and.i256, ptr %fw_state.i255, align 4
  br label %ignore_joinbss_callback

ignore_joinbss_callback:                          ; preds = %if.else107, %if.then105, %if.then101.ignore_joinbss_callback_crit_edge, %if.else92, %if.end91, %if.then83, %if.else74
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #20
  br label %cleanup

cleanup:                                          ; preds = %ignore_joinbss_callback, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_get_encrypt_decrypt_from_registrypriv(ptr nocapture %adapter) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_reset_securitypriv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_joinbss_event_callback(ptr noundef %adapter, ptr nocapture noundef readonly %pbuf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %join_res = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 5
  %0 = ptrtoint ptr %join_res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %join_res, align 4
  tail call void @mlmeext_joinbss_event_callback(ptr noundef %adapter, i32 noundef %1) #20
  tail call void @rtw_os_xmit_schedule(ptr noundef %adapter) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlmeext_joinbss_event_callback(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_sta_media_status_rpt(ptr noundef %adapter, ptr noundef readonly %psta, i32 noundef %mstatus) local_unnamed_addr #2 align 64 {
entry:
  %media_status_rpt = alloca i16, align 2
  %macid = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %media_status_rpt) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %macid) #20
  %tobool.not = icmp eq ptr %psta, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i.i, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.for.body12.i_crit_edge, label %if.then.i

if.end.for.body12.i_crit_edge:                    ; preds = %if.end
  br label %for.body12.i

if.then.i:                                        ; preds = %if.end
  %max_num_sta.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11, i32 21
  %3 = ptrtoint ptr %max_num_sta.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %max_num_sta.i, align 4
  %conv.i = trunc i16 %4 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %cmp.not31.i = icmp eq i8 %conv.i, 0
  br i1 %cmp.not31.i, label %if.then.i.for.end.i_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %aid.032.i = phi i8 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ %conv.i, %if.then.i.for.body.i_crit_edge ]
  %conv1.i = zext i8 %aid.032.i to i32
  %sub.i = add nsw i32 %conv1.i, -1
  %arrayidx.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 11, i32 18, i32 %sub.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %for.inc.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add i8 %aid.032.i, -1
  %cmp.not.i = icmp eq i8 %dec.i, 0
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %aid.0.lcssa.i = phi i8 [ 0, %if.then.i.for.end.i_crit_edge ], [ 0, %for.inc.i.for.end.i_crit_edge ], [ %aid.032.i, %for.body.i.for.end.i_crit_edge ]
  %add.i = add i8 %aid.0.lcssa.i, 1
  br label %search_max_mac_id.exit

for.body12.i:                                     ; preds = %for.inc18.i.for.body12.i_crit_edge, %if.end.for.body12.i_crit_edge
  %mac_id.034.i = phi i8 [ %dec19.i, %for.inc18.i.for.body12.i_crit_edge ], [ 31, %if.end.for.body12.i_crit_edge ]
  %conv9.i = zext i8 %mac_id.034.i to i32
  %status.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 5, i32 17, i32 39, i32 %conv9.i, i32 1
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp14.i = icmp eq i32 %8, 1
  br i1 %cmp14.i, label %for.body12.i.search_max_mac_id.exit_crit_edge, label %for.inc18.i

for.body12.i.search_max_mac_id.exit_crit_edge:    ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %search_max_mac_id.exit

for.inc18.i:                                      ; preds = %for.body12.i
  %dec19.i = add nsw i8 %mac_id.034.i, -1
  %cmp10.i = icmp ugt i8 %dec19.i, 1
  br i1 %cmp10.i, label %for.inc18.i.for.body12.i_crit_edge, label %for.inc18.i.search_max_mac_id.exit_crit_edge

for.inc18.i.search_max_mac_id.exit_crit_edge:     ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %search_max_mac_id.exit

for.inc18.i.for.body12.i_crit_edge:               ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body12.i

search_max_mac_id.exit:                           ; preds = %for.inc18.i.search_max_mac_id.exit_crit_edge, %for.body12.i.search_max_mac_id.exit_crit_edge, %for.end.i
  %mac_id.1.i = phi i8 [ %add.i, %for.end.i ], [ 1, %for.inc18.i.search_max_mac_id.exit_crit_edge ], [ %mac_id.034.i, %for.body12.i.search_max_mac_id.exit_crit_edge ]
  %9 = ptrtoint ptr %macid to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %mac_id.1.i, ptr %macid, align 1
  call void @SetHwReg8188EU(ptr noundef %adapter, i8 noundef zeroext 59, ptr noundef nonnull %macid) #20
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 9
  %10 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mac_id, align 4
  %shl = shl i32 %11, 8
  %or = or i32 %shl, %mstatus
  %conv = trunc i32 %or to i16
  %12 = ptrtoint ptr %media_status_rpt to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %media_status_rpt, align 2
  call void @SetHwReg8188EU(ptr noundef %adapter, i8 noundef zeroext 60, ptr noundef nonnull %media_status_rpt) #20
  br label %cleanup

cleanup:                                          ; preds = %search_max_mac_id.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %macid) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %media_status_rpt) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @SetHwReg8188EU(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_stassoc_event_callback(ptr noundef %adapter, ptr noundef %pbuf) local_unnamed_addr #2 align 64 {
entry:
  %zero_addr.i.i = alloca [6 x i8], align 1
  %media_status_rpt.i = alloca i16, align 2
  %macid.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4
  %call = tail call zeroext i8 @rtw_access_ctrl(ptr noundef %adapter, ptr noundef %pbuf) #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not = icmp eq i32 %2, 0
  %stapriv12 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %call15 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv12, ptr noundef %pbuf) #20
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool3.not, label %if.end11, label %if.then4

if.then4:                                         ; preds = %if.end
  br i1 %tobool16.not, label %if.then4.cleanup_crit_edge, label %if.then9

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then9:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @rtw_indicate_sta_assoc_event(ptr noundef %adapter, ptr noundef nonnull %call15) #20
  br label %cleanup

if.end11:                                         ; preds = %if.end
  br i1 %tobool16.not, label %if.end18, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call22 = tail call ptr @rtw_alloc_stainfo(ptr noundef %stapriv12, ptr noundef %pbuf) #20
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end18.cleanup_crit_edge, label %if.end25

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %qos_option = getelementptr inbounds %struct.sta_info, ptr %call22, i32 0, i32 10
  %3 = ptrtoint ptr %qos_option to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qos_option, align 8
  %cam_id = getelementptr inbounds %struct.stassoc_event, ptr %pbuf, i32 0, i32 2
  %4 = ptrtoint ptr %cam_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cam_id, align 4
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %call22, i32 0, i32 9
  %6 = ptrtoint ptr %mac_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mac_id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %7 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp = icmp ugt i32 %7, 4
  br i1 %cmp, label %do.end, label %if.end25.if.end.i_crit_edge

if.end25.if.end.i_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

do.end:                                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #22
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #26
  br label %if.end.i

if.end.i:                                         ; preds = %do.end, %if.end25.if.end.i_crit_edge
  tail call void @rtl8188e_SetHalODMVar(ptr noundef %adapter, ptr noundef nonnull %call22, i1 noundef zeroext true) #20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %media_status_rpt.i) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %macid.i) #20
  %8 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_state.i, align 4
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.end.i.for.body12.i.i_crit_edge, label %if.then.i.i

if.end.i.for.body12.i.i_crit_edge:                ; preds = %if.end.i
  br label %for.body12.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %max_num_sta.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11, i32 21
  %11 = ptrtoint ptr %max_num_sta.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max_num_sta.i.i, align 4
  %conv.i.i = trunc i16 %12 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i)
  %cmp.not31.i.i = icmp eq i8 %conv.i.i, 0
  br i1 %cmp.not31.i.i, label %if.then.i.i.for.end.i.i_crit_edge, label %if.then.i.i.for.body.i.i_crit_edge

if.then.i.i.for.body.i.i_crit_edge:               ; preds = %if.then.i.i
  br label %for.body.i.i

if.then.i.i.for.end.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i.i.for.body.i.i_crit_edge
  %aid.032.i.i = phi i8 [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %conv.i.i, %if.then.i.i.for.body.i.i_crit_edge ]
  %conv1.i.i = zext i8 %aid.032.i.i to i32
  %sub.i.i = add nsw i32 %conv1.i.i, -1
  %arrayidx.i.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 11, i32 18, i32 %sub.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %14, null
  br i1 %tobool4.not.i.i, label %for.inc.i.i, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %dec.i.i = add i8 %aid.032.i.i, -1
  %cmp.not.i.i = icmp eq i8 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge, %if.then.i.i.for.end.i.i_crit_edge
  %aid.0.lcssa.i.i = phi i8 [ 0, %if.then.i.i.for.end.i.i_crit_edge ], [ %aid.032.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ 0, %for.inc.i.i.for.end.i.i_crit_edge ]
  %add.i.i = add i8 %aid.0.lcssa.i.i, 1
  br label %rtw_sta_media_status_rpt.exit

for.body12.i.i:                                   ; preds = %for.inc18.i.i.for.body12.i.i_crit_edge, %if.end.i.for.body12.i.i_crit_edge
  %mac_id.034.i.i = phi i8 [ %dec19.i.i, %for.inc18.i.i.for.body12.i.i_crit_edge ], [ 31, %if.end.i.for.body12.i.i_crit_edge ]
  %conv9.i.i = zext i8 %mac_id.034.i.i to i32
  %status.i.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 5, i32 17, i32 39, i32 %conv9.i.i, i32 1
  %15 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp14.i.i = icmp eq i32 %16, 1
  br i1 %cmp14.i.i, label %for.body12.i.i.rtw_sta_media_status_rpt.exit_crit_edge, label %for.inc18.i.i

for.body12.i.i.rtw_sta_media_status_rpt.exit_crit_edge: ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_sta_media_status_rpt.exit

for.inc18.i.i:                                    ; preds = %for.body12.i.i
  %dec19.i.i = add nsw i8 %mac_id.034.i.i, -1
  %cmp10.i.i = icmp ugt i8 %dec19.i.i, 1
  br i1 %cmp10.i.i, label %for.inc18.i.i.for.body12.i.i_crit_edge, label %for.inc18.i.i.rtw_sta_media_status_rpt.exit_crit_edge

for.inc18.i.i.rtw_sta_media_status_rpt.exit_crit_edge: ; preds = %for.inc18.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_sta_media_status_rpt.exit

for.inc18.i.i.for.body12.i.i_crit_edge:           ; preds = %for.inc18.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body12.i.i

rtw_sta_media_status_rpt.exit:                    ; preds = %for.inc18.i.i.rtw_sta_media_status_rpt.exit_crit_edge, %for.body12.i.i.rtw_sta_media_status_rpt.exit_crit_edge, %for.end.i.i
  %mac_id.1.i.i = phi i8 [ %add.i.i, %for.end.i.i ], [ %mac_id.034.i.i, %for.body12.i.i.rtw_sta_media_status_rpt.exit_crit_edge ], [ 1, %for.inc18.i.i.rtw_sta_media_status_rpt.exit_crit_edge ]
  %17 = ptrtoint ptr %macid.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %mac_id.1.i.i, ptr %macid.i, align 1
  call void @SetHwReg8188EU(ptr noundef %adapter, i8 noundef zeroext 59, ptr noundef nonnull %macid.i) #20
  %18 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mac_id, align 4
  %.tr = trunc i32 %19 to i16
  %20 = shl i16 %.tr, 8
  %conv.i = or i16 %20, 1
  %21 = ptrtoint ptr %media_status_rpt.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %media_status_rpt.i, align 2
  call void @SetHwReg8188EU(ptr noundef %adapter, i8 noundef zeroext 60, ptr noundef nonnull %media_status_rpt.i) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %macid.i) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %media_status_rpt.i) #20
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12
  %22 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %securitypriv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp32 = icmp eq i32 %23, 2
  br i1 %cmp32, label %if.then33, label %rtw_sta_media_status_rpt.exit.if.end35_crit_edge

rtw_sta_media_status_rpt.exit.if.end35_crit_edge: ; preds = %rtw_sta_media_status_rpt.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

if.then33:                                        ; preds = %rtw_sta_media_status_rpt.exit
  call void @__sanitizer_cov_trace_pc() #22
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 1
  %24 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  %dot118021XPrivacy = getelementptr inbounds %struct.sta_info, ptr %call22, i32 0, i32 13
  %26 = ptrtoint ptr %dot118021XPrivacy to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dot118021XPrivacy, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %rtw_sta_media_status_rpt.exit.if.end35_crit_edge
  %ieee8021x_blocked = getelementptr inbounds %struct.sta_info, ptr %call22, i32 0, i32 12
  %27 = ptrtoint ptr %ieee8021x_blocked to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ieee8021x_blocked, align 4
  call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #20
  %28 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_state.i, align 4
  %30 = and i32 %29, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %if.end35.if.end54_crit_edge, label %if.then40

if.end35.if.end54_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end54

if.then40:                                        ; preds = %if.end35
  %asoc_sta_count = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11, i32 5
  %32 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %asoc_sta_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp42 = icmp eq i32 %33, 2
  br i1 %cmp42, label %if.then43, label %if.then40.if.end54_crit_edge

if.then40.if.end54_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end54

if.then43:                                        ; preds = %if.then40
  %scanned_queue = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 9
  %lock44 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 9, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock44) #20
  %MacAddress = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i.i) #20
  %34 = call ptr @memset(ptr %zero_addr.i.i, i32 0, i32 6)
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i.i, ptr noundef dereferenceable(6) %MacAddress, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i106 = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i106, label %if.then43.rtw_find_network.exit.thread_crit_edge, label %if.then43.while.cond.i.i_crit_edge

if.then43.while.cond.i.i_crit_edge:               ; preds = %if.then43
  br label %while.cond.i.i

if.then43.rtw_find_network.exit.thread_crit_edge: ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit.thread

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then43.while.cond.i.i_crit_edge
  %plist.0.in.i.i = phi ptr [ %plist.0.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %scanned_queue, %if.then43.while.cond.i.i_crit_edge ]
  %35 = ptrtoint ptr %plist.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %plist.0.i.i = load ptr, ptr %plist.0.in.i.i, align 4
  %cmp.not.i.i107 = icmp eq ptr %plist.0.i.i, %scanned_queue
  br i1 %cmp.not.i.i107, label %while.cond.i.i.rtw_find_network.exit.thread_crit_edge, label %while.body.i.i

while.cond.i.i.rtw_find_network.exit.thread_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit.thread

while.body.i.i:                                   ; preds = %while.cond.i.i
  %MacAddress.i.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i, i32 0, i32 6, i32 1
  %bcmp18.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress, ptr noundef dereferenceable(6) %MacAddress.i.i, i32 6) #25
  %tobool4.not.i.i108 = icmp eq i32 %bcmp18.i.i, 0
  br i1 %tobool4.not.i.i108, label %rtw_find_network.exit, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i.i

rtw_find_network.exit.thread:                     ; preds = %while.cond.i.i.rtw_find_network.exit.thread_crit_edge, %if.then43.rtw_find_network.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i) #20
  %cur_network_scanned112 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 16
  %36 = ptrtoint ptr %cur_network_scanned112 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %cur_network_scanned112, align 4
  br label %if.end50

rtw_find_network.exit:                            ; preds = %while.body.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i) #20
  %cur_network_scanned = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 16
  %37 = ptrtoint ptr %cur_network_scanned to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %plist.0.i.i, ptr %cur_network_scanned, align 4
  %tobool48.not = icmp eq ptr %plist.0.i.i, null
  br i1 %tobool48.not, label %rtw_find_network.exit.if.end50_crit_edge, label %if.then49

rtw_find_network.exit.if.end50_crit_edge:         ; preds = %rtw_find_network.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end50

if.then49:                                        ; preds = %rtw_find_network.exit
  call void @__sanitizer_cov_trace_pc() #22
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %fixed to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %fixed, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %rtw_find_network.exit.if.end50_crit_edge, %rtw_find_network.exit.thread
  call void @_raw_spin_unlock_bh(ptr noundef %lock44) #20
  %to_join.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 3
  %39 = ptrtoint ptr %to_join.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %to_join.i, align 1
  %40 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fw_state.i, align 4
  %and.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i109 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i109, label %if.then.i, label %if.end50.rtw_indicate_connect.exit_crit_edge

if.end50.rtw_indicate_connect.exit_crit_edge:     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_indicate_connect.exit

if.then.i:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #22
  %or.i.i = or i32 %41, 1
  %42 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.i.i, ptr %fw_state.i, align 4
  call void @rtw_led_control(ptr noundef %adapter, i32 noundef 2) #20
  call void @rtw_os_indicate_connect(ptr noundef %adapter) #20
  br label %rtw_indicate_connect.exit

rtw_indicate_connect.exit:                        ; preds = %if.then.i, %if.end50.rtw_indicate_connect.exit_crit_edge
  %to_roaming.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %43 = ptrtoint ptr %to_roaming.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %to_roaming.i, align 2
  br label %if.end54

if.end54:                                         ; preds = %rtw_indicate_connect.exit, %if.then40.if.end54_crit_edge, %if.end35.if.end54_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #20
  call void @mlmeext_sta_add_event_callback(ptr noundef %adapter, ptr noundef nonnull %call22) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end18.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then9, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_access_ctrl(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_indicate_sta_assoc_event(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_SetHalODMVar(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlmeext_sta_add_event_callback(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_stadel_event_callback(ptr noundef %adapter, ptr noundef %pbuf) local_unnamed_addr #2 align 64 {
entry:
  %zero_addr.i.i187 = alloca [6 x i8], align 1
  %zero_addr.i.i = alloca [6 x i8], align 1
  %media_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4
  %stapriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %cur_network = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %pbuf) #20
  %tobool.not = icmp eq ptr %call, null
  %mac_id2 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 9
  %mac_id3 = getelementptr inbounds %struct.stadel_event, ptr %pbuf, i32 0, i32 2
  %mac_id.0.in = select i1 %tobool.not, ptr %mac_id3, ptr %mac_id2
  %0 = ptrtoint ptr %mac_id.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %mac_id.0 = load i32, ptr %mac_id.0.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %1 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %do.end, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %mac_id.0, ptr noundef %pbuf) #26
  br label %do.end11

do.end11:                                         ; preds = %do.end, %entry.do.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mac_id.0)
  %cmp12 = icmp sgt i32 %mac_id.0, -1
  br i1 %cmp12, label %if.then13, label %do.end11.if.end14_crit_edge

do.end11.if.end14_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14

if.then13:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %media_status) #20
  %mac_id.0.tr = trunc i32 %mac_id.0 to i16
  %conv = shl i16 %mac_id.0.tr, 8
  %2 = ptrtoint ptr %media_status to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %media_status, align 2
  call void @SetHwReg8188EU(ptr noundef %adapter, i8 noundef zeroext 60, ptr noundef nonnull %media_status) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %media_status) #20
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %do.end11.if.end14_crit_edge
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i, align 4
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool16.not = icmp eq i32 %5, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @mlmeext_sta_del_event_callback(ptr noundef %adapter) #20
  call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #20
  %6 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_state.i, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool20.not = icmp eq i32 %8, 0
  br i1 %tobool20.not, label %if.end18.if.end58_crit_edge, label %if.then21

if.end18.if.end58_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end58

if.then21:                                        ; preds = %if.end18
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 44
  %9 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp23 = icmp eq i8 %10, 1
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #22
  %to_join.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %to_join.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %to_join.i, align 1
  %to_roaming3.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %to_roaming3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %to_roaming3.i, align 2
  br label %if.end41

if.else26:                                        ; preds = %if.then21
  %to_roaming.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %to_roaming.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %to_roaming.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp29.not = icmp eq i8 %14, 0
  br i1 %cmp29.not, label %if.then37, label %if.then31

if.then31:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #22
  %dec = add i8 %14, -1
  %15 = ptrtoint ptr %to_roaming.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %dec, ptr %to_roaming.i, align 2
  br label %if.end41

if.then37:                                        ; preds = %if.else26
  %max_roaming_times = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 53
  %16 = ptrtoint ptr %max_roaming_times to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %max_roaming_times, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i = icmp eq i8 %17, 0
  br i1 %cmp.i, label %if.then.i, label %if.then37.rtw_set_roaming.exit_crit_edge

if.then37.rtw_set_roaming.exit_crit_edge:         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_set_roaming.exit

if.then.i:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #22
  %to_join.i172 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %to_join.i172 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %to_join.i172, align 1
  br label %rtw_set_roaming.exit

rtw_set_roaming.exit:                             ; preds = %if.then.i, %if.then37.rtw_set_roaming.exit_crit_edge
  %19 = ptrtoint ptr %to_roaming.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %17, ptr %to_roaming.i, align 2
  br label %if.end41

if.end41:                                         ; preds = %rtw_set_roaming.exit, %if.then31, %if.then25
  %rsvd = getelementptr inbounds %struct.stadel_event, ptr %pbuf, i32 0, i32 1
  %20 = ptrtoint ptr %rsvd to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rsvd, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %21)
  %cmp44.not = icmp eq i16 %21, -1
  br i1 %cmp44.not, label %if.end41.if.end47_crit_edge, label %if.then46

if.end41.if.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end47

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #22
  %to_join.i174 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %to_join.i174 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %to_join.i174, align 1
  %to_roaming3.i176 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %to_roaming3.i176 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %to_roaming3.i176, align 2
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end41.if.end47_crit_edge
  %call48 = call i32 @rtw_free_uc_swdec_pending_queue(ptr noundef %adapter) #20
  call void @rtw_free_assoc_resources(ptr noundef %adapter, i32 noundef 1)
  %24 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fw_state.i, align 4
  %and.i.i = and i32 %25, -385
  store i32 %and.i.i, ptr %fw_state.i, align 4
  %to_roaming.i177 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %to_roaming.i177 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %to_roaming.i177, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp.not.i = icmp eq i8 %27, 0
  br i1 %cmp.not.i, label %if.then7.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #22
  %and.i21.i = and i32 %25, -386
  %28 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i21.i, ptr %fw_state.i, align 4
  br label %rtw_indicate_disconnect.exit

if.then7.i:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #22
  call void @rtw_os_indicate_disconnect(ptr noundef %adapter) #20
  %29 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fw_state.i, align 4
  %and.i25.i = and i32 %30, -2
  store i32 %and.i25.i, ptr %fw_state.i, align 4
  call void @rtw_led_control(ptr noundef %adapter, i32 noundef 3) #20
  br label %rtw_indicate_disconnect.exit

rtw_indicate_disconnect.exit:                     ; preds = %if.then7.i, %if.end.thread.i
  %call9.i = call zeroext i8 @p2p_ps_wk_cmd(ptr noundef %adapter, i8 noundef zeroext 0, i8 noundef zeroext 1) #20
  %call10.i = call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %adapter, i8 noundef zeroext 3, i8 noundef zeroext 1) #20
  %scanned_queue = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 9
  %lock49 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 9, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock49) #20
  %MacAddress = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i.i) #20
  %31 = call ptr @memset(ptr %zero_addr.i.i, i32 0, i32 6)
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i.i, ptr noundef dereferenceable(6) %MacAddress, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %rtw_indicate_disconnect.exit.rtw_find_network.exit.thread_crit_edge, label %rtw_indicate_disconnect.exit.while.cond.i.i_crit_edge

rtw_indicate_disconnect.exit.while.cond.i.i_crit_edge: ; preds = %rtw_indicate_disconnect.exit
  br label %while.cond.i.i

rtw_indicate_disconnect.exit.rtw_find_network.exit.thread_crit_edge: ; preds = %rtw_indicate_disconnect.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit.thread

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %rtw_indicate_disconnect.exit.while.cond.i.i_crit_edge
  %plist.0.in.i.i = phi ptr [ %plist.0.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %scanned_queue, %rtw_indicate_disconnect.exit.while.cond.i.i_crit_edge ]
  %32 = ptrtoint ptr %plist.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %plist.0.i.i = load ptr, ptr %plist.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %plist.0.i.i, %scanned_queue
  br i1 %cmp.not.i.i, label %while.cond.i.i.rtw_find_network.exit.thread_crit_edge, label %while.body.i.i

while.cond.i.i.rtw_find_network.exit.thread_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit.thread

while.body.i.i:                                   ; preds = %while.cond.i.i
  %MacAddress.i.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i, i32 0, i32 6, i32 1
  %bcmp18.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress, ptr noundef dereferenceable(6) %MacAddress.i.i, i32 6) #25
  %tobool4.not.i.i = icmp eq i32 %bcmp18.i.i, 0
  br i1 %tobool4.not.i.i, label %rtw_find_network.exit, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i.i

rtw_find_network.exit.thread:                     ; preds = %while.cond.i.i.rtw_find_network.exit.thread_crit_edge, %rtw_indicate_disconnect.exit.rtw_find_network.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i) #20
  br label %if.end55

rtw_find_network.exit:                            ; preds = %while.body.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i) #20
  %tobool53.not = icmp eq ptr %plist.0.i.i, null
  br i1 %tobool53.not, label %rtw_find_network.exit.if.end55_crit_edge, label %if.end3.i.i

rtw_find_network.exit.if.end55_crit_edge:         ; preds = %rtw_find_network.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end55

if.end3.i.i:                                      ; preds = %rtw_find_network.exit
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %fixed to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %fixed, align 4
  %free_bss_pool.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 8
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %plist.0.i.i) #20
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end3.i.i.list_del_init.exit.i.i_crit_edge

if.end3.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %plist.0.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i.i, align 4
  %36 = ptrtoint ptr %plist.0.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %plist.0.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end3.i.i.list_del_init.exit.i.i_crit_edge
  %40 = ptrtoint ptr %plist.0.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %plist.0.i.i, ptr %plist.0.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %plist.0.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %plist.0.i.i, ptr %prev.i3.i.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 8, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i9.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %plist.0.i.i, ptr noundef %43, ptr noundef %free_bss_pool.i.i) #20
  br i1 %call.i.i9.i.i, label %if.end.i.i10.i.i, label %list_del_init.exit.i.i.rtw_free_network_nolock.exit_crit_edge

list_del_init.exit.i.i.rtw_free_network_nolock.exit_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_free_network_nolock.exit

if.end.i.i10.i.i:                                 ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %plist.0.i.i, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %plist.0.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %free_bss_pool.i.i, ptr %plist.0.i.i, align 4
  %46 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev.i3.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %plist.0.i.i, ptr %43, align 4
  br label %rtw_free_network_nolock.exit

rtw_free_network_nolock.exit:                     ; preds = %if.end.i.i10.i.i, %list_del_init.exit.i.i.rtw_free_network_nolock.exit_crit_edge
  %num_of_scanned.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 12
  %48 = ptrtoint ptr %num_of_scanned.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_of_scanned.i.i, align 4
  %dec.i.i = add i32 %49, -1
  store i32 %dec.i.i, ptr %num_of_scanned.i.i, align 4
  br label %if.end55

if.end55:                                         ; preds = %rtw_free_network_nolock.exit, %rtw_find_network.exit.if.end55_crit_edge, %rtw_find_network.exit.thread
  call void @_raw_spin_unlock_bh(ptr noundef %lock49) #20
  call void @_rtw_roaming(ptr noundef %adapter, ptr noundef %cur_network)
  br label %if.end58

if.end58:                                         ; preds = %if.end55, %if.end18.if.end58_crit_edge
  %50 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fw_state.i, align 4
  %52 = and i32 %51, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %if.end58.if.end98_crit_edge, label %if.then63

if.end58.if.end98_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end98

if.then63:                                        ; preds = %if.end58
  %sta_hash_lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock) #20
  %call64 = call i32 @rtw_free_stainfo(ptr noundef %adapter, ptr noundef %call) #20
  call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #20
  %asoc_sta_count = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11, i32 5
  %54 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %asoc_sta_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp67 = icmp eq i32 %55, 1
  br i1 %cmp67, label %if.then69, label %if.then63.if.end98_crit_edge

if.then63.if.end98_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end98

if.then69:                                        ; preds = %if.then63
  %scanned_queue70 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 9
  %lock71 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 9, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock71) #20
  %network73 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6
  %MacAddress74 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i.i187) #20
  %56 = call ptr @memset(ptr %zero_addr.i.i187, i32 0, i32 6)
  %bcmp.i.i188 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i.i187, ptr noundef dereferenceable(6) %MacAddress74, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i188)
  %tobool.not.i.i189 = icmp eq i32 %bcmp.i.i188, 0
  br i1 %tobool.not.i.i189, label %if.then69.rtw_find_network.exit199.thread_crit_edge, label %if.then69.while.cond.i.i193_crit_edge

if.then69.while.cond.i.i193_crit_edge:            ; preds = %if.then69
  br label %while.cond.i.i193

if.then69.rtw_find_network.exit199.thread_crit_edge: ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit199.thread

while.cond.i.i193:                                ; preds = %while.body.i.i197.while.cond.i.i193_crit_edge, %if.then69.while.cond.i.i193_crit_edge
  %plist.0.in.i.i190 = phi ptr [ %plist.0.i.i191, %while.body.i.i197.while.cond.i.i193_crit_edge ], [ %scanned_queue70, %if.then69.while.cond.i.i193_crit_edge ]
  %57 = ptrtoint ptr %plist.0.in.i.i190 to i32
  call void @__asan_load4_noabort(i32 %57)
  %plist.0.i.i191 = load ptr, ptr %plist.0.in.i.i190, align 4
  %cmp.not.i.i192 = icmp eq ptr %plist.0.i.i191, %scanned_queue70
  br i1 %cmp.not.i.i192, label %while.cond.i.i193.rtw_find_network.exit199.thread_crit_edge, label %while.body.i.i197

while.cond.i.i193.rtw_find_network.exit199.thread_crit_edge: ; preds = %while.cond.i.i193
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_find_network.exit199.thread

while.body.i.i197:                                ; preds = %while.cond.i.i193
  %MacAddress.i.i194 = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i191, i32 0, i32 6, i32 1
  %bcmp18.i.i195 = call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress74, ptr noundef dereferenceable(6) %MacAddress.i.i194, i32 6) #25
  %tobool4.not.i.i196 = icmp eq i32 %bcmp18.i.i195, 0
  br i1 %tobool4.not.i.i196, label %rtw_find_network.exit199, label %while.body.i.i197.while.cond.i.i193_crit_edge

while.body.i.i197.while.cond.i.i193_crit_edge:    ; preds = %while.body.i.i197
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.i.i193

rtw_find_network.exit199.thread:                  ; preds = %while.cond.i.i193.rtw_find_network.exit199.thread_crit_edge, %if.then69.rtw_find_network.exit199.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i187) #20
  br label %if.end80

rtw_find_network.exit199:                         ; preds = %while.body.i.i197
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i187) #20
  %tobool77.not = icmp eq ptr %plist.0.i.i191, null
  br i1 %tobool77.not, label %rtw_find_network.exit199.if.end80_crit_edge, label %if.end3.i.i206

rtw_find_network.exit199.if.end80_crit_edge:      ; preds = %rtw_find_network.exit199
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end80

if.end3.i.i206:                                   ; preds = %rtw_find_network.exit199
  %fixed79 = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i191, i32 0, i32 2
  %58 = ptrtoint ptr %fixed79 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %fixed79, align 4
  %free_bss_pool.i.i200 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 8
  %call.i.i.i.i205 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %plist.0.i.i191) #20
  br i1 %call.i.i.i.i205, label %if.end.i.i.i.i209, label %if.end3.i.i206.list_del_init.exit.i.i213_crit_edge

if.end3.i.i206.list_del_init.exit.i.i213_crit_edge: ; preds = %if.end3.i.i206
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_del_init.exit.i.i213

if.end.i.i.i.i209:                                ; preds = %if.end3.i.i206
  call void @__sanitizer_cov_trace_pc() #22
  %prev.i.i.i.i207 = getelementptr inbounds %struct.list_head, ptr %plist.0.i.i191, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i.i.i207 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i.i.i207, align 4
  %61 = ptrtoint ptr %plist.0.i.i191 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %plist.0.i.i191, align 4
  %prev1.i.i.i.i.i208 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i.i.i208, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del_init.exit.i.i213

list_del_init.exit.i.i213:                        ; preds = %if.end.i.i.i.i209, %if.end3.i.i206.list_del_init.exit.i.i213_crit_edge
  %65 = ptrtoint ptr %plist.0.i.i191 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %plist.0.i.i191, ptr %plist.0.i.i191, align 4
  %prev.i3.i.i.i210 = getelementptr inbounds %struct.list_head, ptr %plist.0.i.i191, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i3.i.i.i210 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %plist.0.i.i191, ptr %prev.i3.i.i.i210, align 4
  %prev.i.i.i211 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 8, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i.i211 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i.i211, align 4
  %call.i.i9.i.i212 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %plist.0.i.i191, ptr noundef %68, ptr noundef %free_bss_pool.i.i200) #20
  br i1 %call.i.i9.i.i212, label %if.end.i.i10.i.i214, label %list_del_init.exit.i.i213.rtw_free_network_nolock.exit218_crit_edge

list_del_init.exit.i.i213.rtw_free_network_nolock.exit218_crit_edge: ; preds = %list_del_init.exit.i.i213
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_free_network_nolock.exit218

if.end.i.i10.i.i214:                              ; preds = %list_del_init.exit.i.i213
  call void @__sanitizer_cov_trace_pc() #22
  %69 = ptrtoint ptr %prev.i.i.i211 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %plist.0.i.i191, ptr %prev.i.i.i211, align 4
  %70 = ptrtoint ptr %plist.0.i.i191 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %free_bss_pool.i.i200, ptr %plist.0.i.i191, align 4
  %71 = ptrtoint ptr %prev.i3.i.i.i210 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev.i3.i.i.i210, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %plist.0.i.i191, ptr %68, align 4
  br label %rtw_free_network_nolock.exit218

rtw_free_network_nolock.exit218:                  ; preds = %if.end.i.i10.i.i214, %list_del_init.exit.i.i213.rtw_free_network_nolock.exit218_crit_edge
  %num_of_scanned.i.i215 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 12
  %73 = ptrtoint ptr %num_of_scanned.i.i215 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_of_scanned.i.i215, align 4
  %dec.i.i216 = add i32 %74, -1
  store i32 %dec.i.i216, ptr %num_of_scanned.i.i215, align 4
  br label %if.end80

if.end80:                                         ; preds = %rtw_free_network_nolock.exit218, %rtw_find_network.exit199.if.end80_crit_edge, %rtw_find_network.exit199.thread
  call void @_raw_spin_unlock_bh(ptr noundef %lock71) #20
  %dev_network = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36
  %MacAddress86 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 1
  %IELength.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 11
  %75 = ptrtoint ptr %IELength.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %IELength.i, align 1
  %add.i = add i32 %76, 120
  %77 = call ptr @memcpy(ptr %dev_network, ptr %network73, i32 %add.i)
  %Ssid = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 3
  %assoc_ssid = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 13
  %78 = call ptr @memcpy(ptr %Ssid, ptr %assoc_ssid, i32 36)
  %dot11PrivacyAlgrthm.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 1
  %79 = ptrtoint ptr %dot11PrivacyAlgrthm.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dot11PrivacyAlgrthm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.not.i219 = icmp ne i32 %80, 0
  %cond.i = zext i1 %cmp.not.i219 to i32
  %Privacy.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 4
  %81 = ptrtoint ptr %Privacy.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %cond.i, ptr %Privacy.i, align 1
  %Rssi.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 5
  %82 = ptrtoint ptr %Rssi.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 0, ptr %Rssi.i, align 1
  %wireless_mode.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 7
  %83 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %wireless_mode.i, align 2
  %switch.tableidx = add i8 %84, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %switch.tableidx)
  %85 = icmp ult i8 %switch.tableidx, 11
  br i1 %85, label %switch.hole_check, label %if.end80.sw.epilog.i_crit_edge

if.end80.sw.epilog.i_crit_edge:                   ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

switch.hole_check:                                ; preds = %if.end80
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 1671, %switch.maskindex
  %86 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %switch.lobit.not = icmp eq i16 %86, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #22
  %87 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.rtw_stadel_event_callback, i32 0, i32 %87
  %88 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %88)
  %switch.load = load i32, ptr %switch.gep, align 4
  %NetworkTypeInUse3.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 6
  %89 = ptrtoint ptr %NetworkTypeInUse3.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %switch.load, ptr %NetworkTypeInUse3.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %switch.hole_check.sw.epilog.i_crit_edge, %if.end80.sw.epilog.i_crit_edge
  %channel.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 6
  %90 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %channel.i, align 1
  %conv4.i = zext i8 %91 to i32
  %DSConfig.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 7, i32 3
  %92 = ptrtoint ptr %DSConfig.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %conv4.i, ptr %DSConfig.i, align 1
  %InfrastructureMode.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 6, i32 8
  %93 = ptrtoint ptr %InfrastructureMode.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %InfrastructureMode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp5.i = icmp eq i32 %94, 0
  br i1 %cmp5.i, label %if.then.i220, label %sw.epilog.i.rtw_update_registrypriv_dev_network.exit_crit_edge

sw.epilog.i.rtw_update_registrypriv_dev_network.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rtw_update_registrypriv_dev_network.exit

if.then.i220:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #22
  %ATIMWindow.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 7, i32 2
  %95 = ptrtoint ptr %ATIMWindow.i to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 0, ptr %ATIMWindow.i, align 1
  br label %rtw_update_registrypriv_dev_network.exit

rtw_update_registrypriv_dev_network.exit:         ; preds = %if.then.i220, %sw.epilog.i.rtw_update_registrypriv_dev_network.exit_crit_edge
  %registrypriv.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13
  %InfrastructureMode10.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 8
  %96 = ptrtoint ptr %InfrastructureMode10.i to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %94, ptr %InfrastructureMode10.i, align 1
  %call.i = call i32 @rtw_generate_ie(ptr noundef %registrypriv.i) #20
  %IELength.i221 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 11
  %97 = ptrtoint ptr %IELength.i221 to i32
  call void @__asan_storeN_noabort(i32 %97, i32 4)
  store i32 %call.i, ptr %IELength.i221, align 1
  %add.i.i = add i32 %call.i, 120
  %98 = ptrtoint ptr %dev_network to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 %add.i.i, ptr %dev_network, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %99 = load volatile i32, ptr @jiffies, align 128
  %100 = ptrtoint ptr %MacAddress86 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 2, ptr %MacAddress86, align 1
  %arrayidx1.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 1, i32 1
  %101 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 17, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 1, i32 2
  %102 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -121, ptr %arrayidx2.i, align 1
  %conv.i = trunc i32 %99 to i8
  %arrayidx3.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 1, i32 3
  %103 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv.i, ptr %arrayidx3.i, align 1
  %shr.i = lshr i32 %99, 8
  %conv5.i = trunc i32 %shr.i to i8
  %arrayidx6.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 1, i32 4
  %104 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  %shr7.i = lshr i32 %99, 16
  %conv9.i = trunc i32 %shr7.i to i8
  %arrayidx10.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 1, i32 5
  %105 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv9.i, ptr %arrayidx10.i, align 1
  %106 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %fw_state.i, align 4
  %108 = and i32 %107, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool93.not = icmp eq i32 %108, 0
  br i1 %tobool93.not, label %rtw_update_registrypriv_dev_network.exit.if.end95_crit_edge, label %if.then94

rtw_update_registrypriv_dev_network.exit.if.end95_crit_edge: ; preds = %rtw_update_registrypriv_dev_network.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end95

if.then94:                                        ; preds = %rtw_update_registrypriv_dev_network.exit
  call void @__sanitizer_cov_trace_pc() #22
  %or.i = and i32 %107, -97
  %and.i228 = or i32 %or.i, 64
  %109 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %and.i228, ptr %fw_state.i, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %rtw_update_registrypriv_dev_network.exit.if.end95_crit_edge
  %call96 = call zeroext i8 @rtw_createbss_cmd(ptr noundef %adapter) #20
  br label %if.end98

if.end98:                                         ; preds = %if.end95, %if.then63.if.end98_crit_edge, %if.end58.if.end98_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.end14.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlmeext_sta_del_event_callback(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_uc_swdec_pending_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_roaming(ptr noundef %padapter, ptr noundef %tgt_network) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tgt_network, null
  %cur_network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15
  %pnetwork.0 = select i1 %tobool.not, ptr %cur_network, ptr %tgt_network
  %to_roaming.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %to_roaming.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %to_roaming.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %entry.if.end54_crit_edge, label %do.body

entry.if.end54_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end54

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp3 = icmp ugt i32 %2, 4
  br i1 %cmp3, label %do.end, label %do.body.do.end15_crit_edge

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %Ssid = getelementptr inbounds %struct.wlan_network, ptr %pnetwork.0, i32 0, i32 6, i32 3
  %Ssid7 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork.0, i32 0, i32 6, i32 3, i32 1
  %MacAddress = getelementptr inbounds %struct.wlan_network, ptr %pnetwork.0, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %Ssid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %Ssid, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %Ssid7, ptr noundef %MacAddress, i32 noundef %4) #26
  br label %do.end15

do.end15:                                         ; preds = %do.end, %do.body.do.end15_crit_edge
  %assoc_ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 13
  %Ssid17 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork.0, i32 0, i32 6, i32 3
  %5 = call ptr @memcpy(ptr %assoc_ssid, ptr %Ssid17, i32 36)
  %assoc_by_bssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 19
  %6 = ptrtoint ptr %assoc_by_bssid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %assoc_by_bssid, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end35.while.cond_crit_edge, %do.end15
  %call18 = tail call zeroext i8 @rtw_do_join(ptr noundef %padapter) #20
  %conv19 = zext i8 %call18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call18)
  %cmp20 = icmp eq i8 %call18, 1
  br i1 %cmp20, label %while.cond.if.end54_crit_edge, label %do.body24

while.cond.if.end54_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end54

do.body24:                                        ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %7 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp25 = icmp ugt i32 %7, 4
  br i1 %cmp25, label %do.end30, label %do.body24.do.end35_crit_edge

do.body24.do.end35_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end35

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #22
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %conv19) #26
  br label %do.end35

do.end35:                                         ; preds = %do.end30, %do.body24.do.end35_crit_edge
  %8 = ptrtoint ptr %to_roaming.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %to_roaming.i, align 2
  %dec = add i8 %9, -1
  store i8 %dec, ptr %to_roaming.i, align 2
  %cmp38.not = icmp eq i8 %dec, 0
  br i1 %cmp38.not, label %do.body42, label %do.end35.while.cond_crit_edge

do.end35.while.cond_crit_edge:                    ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond

do.body42:                                        ; preds = %do.end35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %10 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp43 = icmp ugt i32 %10, 4
  br i1 %cmp43, label %do.end53, label %do.end53.thread

do.end53.thread:                                  ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #22
  %fw_state.i.i68 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %fw_state.i.i68 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fw_state.i.i68, align 4
  %and.i.i69 = and i32 %12, -385
  store i32 %and.i.i69, ptr %fw_state.i.i68, align 4
  br label %if.then7.i

do.end53:                                         ; preds = %do.body42
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.49, i32 noundef 2106) #26
  %13 = ptrtoint ptr %to_roaming.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %.pr = load i8, ptr %to_roaming.i, align 2
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %15, -385
  store i32 %and.i.i, ptr %fw_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp.not.i = icmp eq i8 %.pr, 0
  br i1 %cmp.not.i, label %do.end53.if.then7.i_crit_edge, label %if.end.thread.i

do.end53.if.then7.i_crit_edge:                    ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then7.i

if.end.thread.i:                                  ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #22
  %and.i21.i = and i32 %15, -386
  %16 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i21.i, ptr %fw_state.i.i, align 4
  br label %rtw_indicate_disconnect.exit

if.then7.i:                                       ; preds = %do.end53.if.then7.i_crit_edge, %do.end53.thread
  %fw_state.i.i71 = phi ptr [ %fw_state.i.i68, %do.end53.thread ], [ %fw_state.i.i, %do.end53.if.then7.i_crit_edge ]
  tail call void @rtw_os_indicate_disconnect(ptr noundef %padapter) #20
  %17 = ptrtoint ptr %fw_state.i.i71 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fw_state.i.i71, align 4
  %and.i25.i = and i32 %18, -2
  store i32 %and.i25.i, ptr %fw_state.i.i71, align 4
  tail call void @rtw_led_control(ptr noundef %padapter, i32 noundef 3) #20
  br label %rtw_indicate_disconnect.exit

rtw_indicate_disconnect.exit:                     ; preds = %if.then7.i, %if.end.thread.i
  %call9.i = tail call zeroext i8 @p2p_ps_wk_cmd(ptr noundef %padapter, i8 noundef zeroext 0, i8 noundef zeroext 1) #20
  %call10.i = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %padapter, i8 noundef zeroext 3, i8 noundef zeroext 1) #20
  br label %if.end54

if.end54:                                         ; preds = %rtw_indicate_disconnect.exit, %while.cond.if.end54_crit_edge, %entry.if.end54_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_join_timeout_handler(ptr noundef %adapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %0 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp ugt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_state.i, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %2) #26
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 20
  %3 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end4
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 21
  %5 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #20
  %to_roaming.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %to_roaming.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %to_roaming.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp9.not = icmp eq i8 %8, 0
  br i1 %cmp9.not, label %rtw_indicate_disconnect.exit87, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end7
  %9 = ptrtoint ptr %to_roaming.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %to_roaming.i, align 2
  %dec93 = add i8 %10, -1
  store i8 %dec93, ptr %to_roaming.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec93)
  %cmp14.not94 = icmp eq i8 %dec93, 0
  br i1 %cmp14.not94, label %while.cond.preheader.do.body47_crit_edge, label %while.cond.preheader.do.body17_crit_edge

while.cond.preheader.do.body17_crit_edge:         ; preds = %while.cond.preheader
  br label %do.body17

while.cond.preheader.do.body47_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body47

do.body17:                                        ; preds = %do.end45.do.body17_crit_edge, %while.cond.preheader.do.body17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %11 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp18 = icmp ugt i32 %11, 4
  br i1 %cmp18, label %do.end23, label %do.body17.do.end28_crit_edge

do.body17.do.end28_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end28

do.end23:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #22
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13) #26
  br label %do.end28

do.end28:                                         ; preds = %do.end23, %do.body17.do.end28_crit_edge
  %call29 = tail call zeroext i8 @rtw_do_join(ptr noundef %adapter) #20
  %conv30 = zext i8 %call29 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call29)
  %cmp31.not = icmp eq i8 %call29, 1
  br i1 %cmp31.not, label %do.end28.if.end60_crit_edge, label %do.body34

do.end28.if.end60_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end60

do.body34:                                        ; preds = %do.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %12 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp35 = icmp ugt i32 %12, 4
  br i1 %cmp35, label %do.end40, label %do.body34.do.end45_crit_edge

do.body34.do.end45_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end45

do.end40:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #22
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13, i32 noundef %conv30) #26
  br label %do.end45

do.end45:                                         ; preds = %do.end40, %do.body34.do.end45_crit_edge
  %13 = ptrtoint ptr %to_roaming.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %to_roaming.i, align 2
  %dec = add i8 %14, -1
  store i8 %dec, ptr %to_roaming.i, align 2
  %cmp14.not = icmp eq i8 %dec, 0
  br i1 %cmp14.not, label %do.end45.do.body47_crit_edge, label %do.end45.do.body17_crit_edge

do.end45.do.body17_crit_edge:                     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body17

do.end45.do.body47_crit_edge:                     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body47

do.body47:                                        ; preds = %do.end45.do.body47_crit_edge, %while.cond.preheader.do.body47_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %15 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp48 = icmp ugt i32 %15, 4
  br i1 %cmp48, label %do.end58, label %do.end58.thread

do.end58.thread:                                  ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #22
  %fw_state.i.i89 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %fw_state.i.i89 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_state.i.i89, align 4
  %and.i.i90 = and i32 %17, -385
  store i32 %and.i.i90, ptr %fw_state.i.i89, align 4
  br label %if.then7.i

do.end58:                                         ; preds = %do.body47
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.13) #26
  %18 = ptrtoint ptr %to_roaming.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %.pr = load i8, ptr %to_roaming.i, align 2
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %20, -385
  store i32 %and.i.i, ptr %fw_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp.not.i = icmp eq i8 %.pr, 0
  br i1 %cmp.not.i, label %do.end58.if.then7.i_crit_edge, label %if.end.thread.i

do.end58.if.then7.i_crit_edge:                    ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then7.i

if.end.thread.i:                                  ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #22
  %and.i21.i = and i32 %20, -386
  %21 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i21.i, ptr %fw_state.i.i, align 4
  br label %rtw_indicate_disconnect.exit

if.then7.i:                                       ; preds = %do.end58.if.then7.i_crit_edge, %do.end58.thread
  %fw_state.i.i92 = phi ptr [ %fw_state.i.i89, %do.end58.thread ], [ %fw_state.i.i, %do.end58.if.then7.i_crit_edge ]
  tail call void @rtw_os_indicate_disconnect(ptr noundef %adapter) #20
  %22 = ptrtoint ptr %fw_state.i.i92 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw_state.i.i92, align 4
  %and.i25.i = and i32 %23, -2
  store i32 %and.i25.i, ptr %fw_state.i.i92, align 4
  tail call void @rtw_led_control(ptr noundef %adapter, i32 noundef 3) #20
  br label %rtw_indicate_disconnect.exit

rtw_indicate_disconnect.exit:                     ; preds = %if.then7.i, %if.end.thread.i
  %call9.i = tail call zeroext i8 @p2p_ps_wk_cmd(ptr noundef %adapter, i8 noundef zeroext 0, i8 noundef zeroext 1) #20
  %call10.i = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %adapter, i8 noundef zeroext 3, i8 noundef zeroext 1) #20
  br label %if.end60

rtw_indicate_disconnect.exit87:                   ; preds = %if.end7
  %fw_state.i.i77 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %fw_state.i.i77 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fw_state.i.i77, align 4
  %and.i.i78 = and i32 %25, -385
  store i32 %and.i.i78, ptr %fw_state.i.i77, align 4
  tail call void @rtw_os_indicate_disconnect(ptr noundef %adapter) #20
  %26 = ptrtoint ptr %fw_state.i.i77 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fw_state.i.i77, align 4
  %and.i25.i83 = and i32 %27, -2
  store i32 %and.i25.i83, ptr %fw_state.i.i77, align 4
  tail call void @rtw_led_control(ptr noundef %adapter, i32 noundef 3) #20
  %call9.i85 = tail call zeroext i8 @p2p_ps_wk_cmd(ptr noundef %adapter, i8 noundef zeroext 0, i8 noundef zeroext 1) #20
  %call10.i86 = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %adapter, i8 noundef zeroext 3, i8 noundef zeroext 1) #20
  %free_bss_pool.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 8
  %scanned_queue.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 9
  %lock.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 9, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #20
  %lock1.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 8, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock1.i) #20
  %28 = ptrtoint ptr %scanned_queue.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %scanned_queue.i, align 4
  %cmp.not17.i = icmp eq ptr %29, %scanned_queue.i
  br i1 %cmp.not17.i, label %rtw_indicate_disconnect.exit87.free_scanqueue.exit_crit_edge, label %while.body.lr.ph.i

rtw_indicate_disconnect.exit87.free_scanqueue.exit_crit_edge: ; preds = %rtw_indicate_disconnect.exit87
  call void @__sanitizer_cov_trace_pc() #22
  br label %free_scanqueue.exit

while.body.lr.ph.i:                               ; preds = %rtw_indicate_disconnect.exit87
  %prev.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 8, i32 0, i32 1
  %num_of_scanned.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 12
  br label %while.body.i

while.body.i:                                     ; preds = %list_add_tail.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %plist.018.i = phi ptr [ %29, %while.body.lr.ph.i ], [ %31, %list_add_tail.exit.i.while.body.i_crit_edge ]
  %30 = ptrtoint ptr %plist.018.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %plist.018.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plist.018.i) #20
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %plist.018.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %plist.018.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %plist.018.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %38 = ptrtoint ptr %plist.018.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %plist.018.i, ptr %plist.018.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %plist.018.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %plist.018.i, ptr %prev.i3.i.i, align 4
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %call.i.i15.i = tail call zeroext i1 @__list_add_valid(ptr noundef %plist.018.i, ptr noundef %41, ptr noundef %free_bss_pool.i) #20
  br i1 %call.i.i15.i, label %if.end.i.i16.i, label %list_del_init.exit.i.list_add_tail.exit.i_crit_edge

list_del_init.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_add_tail.exit.i

if.end.i.i16.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %plist.018.i, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %plist.018.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %free_bss_pool.i, ptr %plist.018.i, align 4
  %44 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev.i3.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %plist.018.i, ptr %41, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i16.i, %list_del_init.exit.i.list_add_tail.exit.i_crit_edge
  %46 = ptrtoint ptr %num_of_scanned.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_of_scanned.i, align 4
  %dec.i = add i32 %47, -1
  store i32 %dec.i, ptr %num_of_scanned.i, align 4
  %cmp.not.i88 = icmp eq ptr %31, %scanned_queue.i
  br i1 %cmp.not.i88, label %list_add_tail.exit.i.free_scanqueue.exit_crit_edge, label %list_add_tail.exit.i.while.body.i_crit_edge

list_add_tail.exit.i.while.body.i_crit_edge:      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

list_add_tail.exit.i.free_scanqueue.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %free_scanqueue.exit

free_scanqueue.exit:                              ; preds = %list_add_tail.exit.i.free_scanqueue.exit_crit_edge, %rtw_indicate_disconnect.exit87.free_scanqueue.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock1.i) #20
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #20
  br label %if.end60

if.end60:                                         ; preds = %free_scanqueue.exit, %rtw_indicate_disconnect.exit, %do.end28.if.end60_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %lor.lhs.false.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_do_join(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_scan_timeout_handler(ptr noundef %adapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %0 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp ugt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 37
  %1 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pnetdev, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef %2, i32 noundef %4) #26
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #20
  %fw_state.i11 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %fw_state.i11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_state.i11, align 4
  %and.i = and i32 %6, -2049
  store i32 %and.i, ptr %fw_state.i11, align 4
  %bScanInProcess.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %bScanInProcess.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %bScanInProcess.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #20
  tail call void @rtw_os_indicate_scan_done(ptr noundef %adapter, i1 noundef zeroext true) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_dynamic_check_timer_handlder(ptr noundef %adapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %adapter, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 26
  %0 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_init_completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 20
  %2 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 21
  %4 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %net_closed = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 43
  %6 = ptrtoint ptr %net_closed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %net_closed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %call = tail call zeroext i8 @rtw_dynamic_chk_wk_cmd(ptr noundef nonnull %adapter) #20
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 44
  %8 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp eq i8 %9, 1
  br i1 %cmp, label %if.then12, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16

if.then12:                                        ; preds = %if.end10
  %p2p_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18, i32 17
  %10 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %if.then14, label %if.then12.if.end16_crit_edge

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @rtw_auto_scan_handler(ptr noundef nonnull %adapter)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then12.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  %12 = tail call i32 @llvm.read_register.i32(metadata !134) #20
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !145
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i, label %if.end16.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end16.rcu_read_lock.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end16
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 696, ptr noundef nonnull @.str.60) #20
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end16.rcu_read_lock.exit_crit_edge
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 37
  %16 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pnetdev, align 4
  %rx_handler_data = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 95
  %18 = ptrtoint ptr %rx_handler_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %rx_handler_data, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end27_crit_edge

rcu_read_lock.exit.do.end27_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end27

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true.do.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true
  %.b64 = load i1, ptr @rtw_dynamic_check_timer_handlder.__warned, align 1
  br i1 %.b64, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rtw_dynamic_check_timer_handlder.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1421, ptr noundef nonnull @.str.25) #20
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true.do.end27_crit_edge, %rcu_read_lock.exit.do.end27_crit_edge
  %tobool29.not = icmp eq ptr %19, null
  br i1 %tobool29.not, label %do.end27.if.end46_crit_edge, label %land.lhs.true30

do.end27.if.end46_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end46

land.lhs.true30:                                  ; preds = %do.end27
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %21, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i65.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i65.not, label %land.lhs.true30.if.end46_crit_edge, label %if.then33

land.lhs.true30.if.end46_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end46

if.then33:                                        ; preds = %land.lhs.true30
  tail call void @nat25_db_expire(ptr noundef nonnull %adapter) #20
  %pppoe_connection_in_progress = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 55
  %22 = ptrtoint ptr %pppoe_connection_in_progress to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pppoe_connection_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp34 = icmp sgt i32 %23, 0
  br i1 %cmp34, label %if.end38, label %if.then33.if.end46_crit_edge

if.then33.if.end46_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end46

if.end38:                                         ; preds = %if.then33
  %dec = add nsw i32 %23, -1
  %24 = ptrtoint ptr %pppoe_connection_in_progress to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %dec, ptr %pppoe_connection_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp40.not = icmp eq i32 %dec, 0
  br i1 %cmp40.not, label %if.end38.if.end46_crit_edge, label %if.then42

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end46

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #22
  %dec44 = add nsw i32 %23, -2
  %25 = ptrtoint ptr %pppoe_connection_in_progress to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %dec44, ptr %pppoe_connection_in_progress, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end38.if.end46_crit_edge, %if.then33.if.end46_crit_edge, %land.lhs.true30.if.end46_crit_edge, %do.end27.if.end46_crit_edge
  %call.i66 = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i66, label %if.end46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i69

if.end46.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true.i69:                                ; preds = %if.end46
  %call1.i67 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i69.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i71

land.lhs.true.i69.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true2.i71:                               ; preds = %land.lhs.true.i69
  %.b4.i70 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70, label %land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge, label %if.then.i72

land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

if.then.i72:                                      ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.61) #20
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i72, %land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i69.rcu_read_unlock.exit_crit_edge, %if.end46.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !146
  %26 = tail call i32 @llvm.read_register.i32(metadata !134) #20
  %and.i.i.i.i.i73 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i73 to ptr
  %preempt_count.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i74, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i74, align 4
  tail call void @rcu_read_unlock_strict() #20
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_dynamic_chk_wk_cmd(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_auto_scan_handler(ptr noundef %padapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_interval = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 17
  %0 = ptrtoint ptr %scan_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %scan_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

if.then:                                          ; preds = %entry
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %scan_interval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %scan_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp3 = icmp eq i32 %dec, 0
  br i1 %cmp3, label %do.body, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %3 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp5 = icmp ugt i32 %3, 4
  br i1 %cmp5, label %do.end, label %do.body.do.end9_crit_edge

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.58) #26
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %call10 = tail call zeroext i8 @rtw_set_802_11_bssid_list_scan(ptr noundef %padapter, ptr noundef null, i32 noundef 0) #20
  %4 = ptrtoint ptr %scan_interval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 30, ptr %scan_interval, align 4
  br label %if.end13

if.end13:                                         ; preds = %do.end9, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nat25_db_expire(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_disassoc_cmd(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_joinbss_cmd(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_set_auth(ptr noundef %adapter, ptr nocapture noundef readonly %psecuritypriv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #27
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 4) #27
  %tobool2.not = icmp eq ptr %call7.i.i17, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #20
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %2 = ptrtoint ptr %call7.i.i17 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %call7.i.i17, align 8
  %3 = ptrtoint ptr %psecuritypriv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %psecuritypriv, align 8
  %conv = trunc i32 %4 to i8
  store i8 %conv, ptr %call7.i.i17, align 8
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 19, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i17, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rspsz, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i, align 4
  %call5 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i) #20
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i32 [ %call5, %if.end4 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_enqueue_cmd(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_set_key(ptr noundef %adapter, ptr nocapture noundef readonly %psecuritypriv, i32 noundef %keyid, i8 noundef zeroext %set_tx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #27
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %exit

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i93 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 20) #27
  %tobool2.not = icmp eq ptr %call7.i.i93, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #20
  br label %exit

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %psecuritypriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %psecuritypriv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.security_priv, ptr %psecuritypriv, i32 0, i32 1
  %dot118021XGrpPrivacy = getelementptr inbounds %struct.security_priv, ptr %psecuritypriv, i32 0, i32 5
  %storemerge.in.in = select i1 %cmp, ptr %dot118021XGrpPrivacy, ptr %dot11PrivacyAlgrthm
  %4 = ptrtoint ptr %storemerge.in.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %storemerge.in = load i32, ptr %storemerge.in.in, align 4
  %storemerge = trunc i32 %storemerge.in to i8
  %5 = ptrtoint ptr %call7.i.i93 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %storemerge, ptr %call7.i.i93, align 8
  %conv9 = trunc i32 %keyid to i8
  %keyid10 = getelementptr inbounds %struct.setkey_parm, ptr %call7.i.i93, i32 0, i32 1
  %6 = ptrtoint ptr %keyid10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv9, ptr %keyid10, align 1
  %set_tx11 = getelementptr inbounds %struct.setkey_parm, ptr %call7.i.i93, i32 0, i32 3
  %7 = ptrtoint ptr %set_tx11 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %set_tx, ptr %set_tx11, align 1
  %conv13 = and i32 %keyid, 255
  %shl = shl nuw i32 1, %conv13
  %key_mask = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 11
  %8 = ptrtoint ptr %key_mask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %key_mask, align 4
  %10 = trunc i32 %shl to i8
  %conv15 = or i8 %9, %10
  store i8 %conv15, ptr %key_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %11 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp16 = icmp ugt i32 %11, 4
  br i1 %cmp16, label %do.end, label %if.end4.do.end29_crit_edge

if.end4.do.end29_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end29

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  %conv21 = and i32 %storemerge.in, 255
  %conv25 = zext i8 %conv15 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %conv21, i32 noundef %conv13, i32 noundef %conv25) #26
  br label %do.end29

do.end29:                                         ; preds = %do.end, %if.end4.do.end29_crit_edge
  %12 = ptrtoint ptr %call7.i.i93 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %call7.i.i93, align 8
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %13, label %sw.default [
    i8 1, label %sw.bb
    i8 5, label %sw.bb35
    i8 2, label %sw.bb42
    i8 4, label %sw.bb46
  ]

sw.bb:                                            ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #22
  %key = getelementptr inbounds %struct.setkey_parm, ptr %call7.i.i93, i32 0, i32 4
  %arrayidx32 = getelementptr %struct.security_priv, ptr %psecuritypriv, i32 0, i32 3, i32 %keyid
  %15 = call ptr @memcpy(ptr %key, ptr %arrayidx32, i32 5)
  br label %sw.epilog

sw.bb35:                                          ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #22
  %key36 = getelementptr inbounds %struct.setkey_parm, ptr %call7.i.i93, i32 0, i32 4
  %arrayidx39 = getelementptr %struct.security_priv, ptr %psecuritypriv, i32 0, i32 3, i32 %keyid
  %16 = call ptr @memcpy(ptr %key36, ptr %arrayidx39, i32 13)
  br label %sw.epilog

sw.bb42:                                          ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #22
  %key43 = getelementptr inbounds %struct.setkey_parm, ptr %call7.i.i93, i32 0, i32 4
  %arrayidx44 = getelementptr %struct.security_priv, ptr %psecuritypriv, i32 0, i32 7, i32 %keyid
  %17 = call ptr @memcpy(ptr %key43, ptr %arrayidx44, i32 16)
  %grpkey = getelementptr inbounds %struct.setkey_parm, ptr %call7.i.i93, i32 0, i32 2
  %18 = ptrtoint ptr %grpkey to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %grpkey, align 2
  br label %sw.epilog

sw.bb46:                                          ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #22
  %key47 = getelementptr inbounds %struct.setkey_parm, ptr %call7.i.i93, i32 0, i32 4
  %arrayidx49 = getelementptr %struct.security_priv, ptr %psecuritypriv, i32 0, i32 7, i32 %keyid
  %19 = call ptr @memcpy(ptr %key47, ptr %arrayidx49, i32 16)
  %grpkey51 = getelementptr inbounds %struct.setkey_parm, ptr %call7.i.i93, i32 0, i32 2
  %20 = ptrtoint ptr %grpkey51 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %grpkey51, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree(ptr noundef nonnull %call7.i.i93) #20
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #20
  br label %exit

sw.epilog:                                        ; preds = %sw.bb46, %sw.bb42, %sw.bb35, %sw.bb
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 20, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i93, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 20, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %rspsz, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list, ptr %prev.i, align 4
  %call52 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i) #20
  br label %exit

exit:                                             ; preds = %sw.epilog, %sw.default, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i32 [ 0, %sw.default ], [ %call52, %sw.epilog ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_restruct_wmm_ie(ptr nocapture noundef readnone %adapter, ptr nocapture noundef readonly %in_ie, ptr nocapture noundef writeonly %out_ie, i32 noundef %in_len, i32 noundef %initial_out_len) local_unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %in_len)
  %cmp75 = icmp ugt i32 %in_len, 12
  br i1 %cmp75, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %i.076 = phi i32 [ %add45, %if.end.while.body_crit_edge ], [ 12, %entry.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %in_ie, i32 %i.076
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %1)
  %cmp1 = icmp eq i8 %1, -35
  %add = add i32 %i.076, 2
  br i1 %cmp1, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %arrayidx3 = getelementptr i8, ptr %in_ie, i32 %add
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp5 = icmp eq i8 %3, 0
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %add8 = add i32 %i.076, 3
  %arrayidx9 = getelementptr i8, ptr %in_ie, i32 %add8
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %5)
  %cmp11 = icmp eq i8 %5, 80
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true13:                                  ; preds = %land.lhs.true7
  %add14 = add i32 %i.076, 4
  %arrayidx15 = getelementptr i8, ptr %in_ie, i32 %add14
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %7)
  %cmp17 = icmp eq i8 %7, -14
  br i1 %cmp17, label %land.lhs.true19, label %land.lhs.true13.if.end_crit_edge

land.lhs.true13.if.end_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true13
  %add20 = add i32 %i.076, 5
  %arrayidx21 = getelementptr i8, ptr %in_ie, i32 %add20
  %8 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp23 = icmp eq i8 %9, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %in_len)
  %cmp27 = icmp ult i32 %add20, %in_len
  %or.cond = select i1 %cmp23, i1 %cmp27, i1 false
  br i1 %or.cond, label %for.cond.preheader, label %land.lhs.true19.if.end_crit_edge

land.lhs.true19.if.end_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

for.cond.preheader:                               ; preds = %land.lhs.true19
  %add29 = add i32 %i.076, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %i.076)
  %cmp3078 = icmp ult i32 %i.076, -9
  br i1 %cmp3078, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %j.080 = phi i32 [ %inc34, %for.body.for.body_crit_edge ], [ %i.076, %for.cond.preheader.for.body_crit_edge ]
  %ielength.179 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %initial_out_len, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx32 = getelementptr i8, ptr %in_ie, i32 %j.080
  %10 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx32, align 1
  %arrayidx33 = getelementptr i8, ptr %out_ie, i32 %ielength.179
  %12 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx33, align 1
  %inc = add i32 %ielength.179, 1
  %inc34 = add nuw i32 %j.080, 1
  %cmp30 = icmp ult i32 %inc34, %add29
  br i1 %cmp30, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %ielength.1.lcssa = phi i32 [ %initial_out_len, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %add35 = add i32 %initial_out_len, 1
  %arrayidx36 = getelementptr i8, ptr %out_ie, i32 %add35
  %13 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 7, ptr %arrayidx36, align 1
  %add37 = add i32 %initial_out_len, 6
  %arrayidx38 = getelementptr i8, ptr %out_ie, i32 %add37
  %14 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx38, align 1
  %add39 = add i32 %initial_out_len, 8
  %arrayidx40 = getelementptr i8, ptr %out_ie, i32 %add39
  %15 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx40, align 1
  br label %while.end

if.end:                                           ; preds = %land.lhs.true19.if.end_crit_edge, %land.lhs.true13.if.end_crit_edge, %land.lhs.true7.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %add41 = add nuw i32 %i.076, 1
  %arrayidx42 = getelementptr i8, ptr %in_ie, i32 %add41
  %16 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %17 to i32
  %add45 = add i32 %add, %conv43
  %cmp = icmp ult i32 %add45, %in_len
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %for.end, %entry.while.end_crit_edge
  %ielength.2 = phi i32 [ %ielength.1.lcssa, %for.end ], [ 0, %entry.while.end_crit_edge ], [ %initial_out_len, %if.end.while.end_crit_edge ]
  ret i32 %ielength.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_restruct_sec_ie(ptr noundef %adapter, ptr nocapture noundef readonly %in_ie, ptr nocapture noundef %out_ie, i32 noundef %in_len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %ndisauthtype = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 29
  %0 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ndisauthtype, align 4
  %2 = call ptr @memcpy(ptr %out_ie, ptr %in_ie, i32 12)
  %.off = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %spec.select = select i1 %switch, i8 -35, i8 0
  %3 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %switch77 = icmp eq i32 %3, 6
  %spec.select78 = select i1 %switch77, i8 48, i8 %spec.select
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i, align 4
  %6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr = getelementptr i8, ptr %out_ie, i32 12
  %wps_ie = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 20
  %wps_ie_len = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 21
  %7 = ptrtoint ptr %wps_ie_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wps_ie_len, align 8
  %9 = call ptr @memcpy(ptr %add.ptr, ptr %wps_ie, i32 %8)
  %10 = load i32, ptr %wps_ie_len, align 8
  %add = add i32 %10, 12
  br label %if.end29

if.else:                                          ; preds = %entry
  %11 = zext i8 %spec.select78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %spec.select78, label %if.else.if.end29_crit_edge [
    i8 -35, label %if.else.if.then15_crit_edge
    i8 48, label %if.else.if.then15_crit_edge91
  ]

if.else.if.then15_crit_edge91:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then15

if.else.if.then15_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then15

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

if.then15:                                        ; preds = %if.else.if.then15_crit_edge, %if.else.if.then15_crit_edge91
  %arrayidx = getelementptr i8, ptr %out_ie, i32 12
  %supplicant_ie = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 37
  %arrayidx18 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 12, i32 37, i32 1
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %13 to i32
  %add20 = add nuw nsw i32 %conv19, 2
  %14 = call ptr @memcpy(ptr %arrayidx, ptr %supplicant_ie, i32 %add20)
  %15 = load i8, ptr %arrayidx18, align 1
  %conv23 = zext i8 %15 to i32
  %add25 = add nuw nsw i32 %conv23, 14
  tail call void @rtw_report_sec_ie(ptr noundef %adapter, i8 noundef zeroext %spec.select78, ptr noundef %supplicant_ie) #20
  br label %if.end29

if.end29:                                         ; preds = %if.then15, %if.else.if.end29_crit_edge, %if.then7
  %ielength.0 = phi i32 [ %add, %if.then7 ], [ %add25, %if.then15 ], [ 12, %if.else.if.end29_crit_edge ]
  %assoc_bssid = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i.do.body.i_crit_edge, %if.end29
  %i.0.i = phi i32 [ 0, %if.end29 ], [ %inc.i, %if.else.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 12, i32 42, i32 %i.0.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i79 = icmp eq i8 %17, 0
  br i1 %tobool.not.i79, label %do.body.i.if.else.i_crit_edge, label %land.lhs.true.i

do.body.i.if.else.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %Bssid.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 12, i32 42, i32 %i.0.i, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.i, ptr noundef dereferenceable(6) %assoc_bssid, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool3.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.body.i.if.else.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.else.i.cleanup_crit_edge, label %if.else.i.do.body.i_crit_edge

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0.i)
  %cmp5.i = icmp ne i32 %i.0.i, 16
  %or.cond84 = select i1 %cmp5.i, i1 %switch77, i1 false
  br i1 %or.cond84, label %if.then39, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then39:                                        ; preds = %do.end.i
  %arrayidx.i80 = getelementptr i8, ptr %out_ie, i32 13
  %18 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %19)
  %cmp.i = icmp ult i8 %19, 21
  br i1 %cmp.i, label %if.then.i, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then.i:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx2.i = getelementptr i8, ptr %out_ie, i32 %ielength.0
  %20 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %arrayidx2.i, align 1
  %inc.i81 = add i32 %ielength.0, 1
  %arrayidx3.i = getelementptr i8, ptr %out_ie, i32 %inc.i81
  %21 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx3.i, align 1
  %inc4.i = add i32 %ielength.0, 2
  %arrayidx5.i = getelementptr i8, ptr %out_ie, i32 %inc4.i
  %PMKID.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 12, i32 42, i32 %i.0.i, i32 2
  %22 = call ptr @memcpy(ptr %arrayidx5.i, ptr %PMKID.i, i32 16)
  %add.i = add i32 %ielength.0, 18
  %23 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i80, align 1
  %add9.i = add i8 %24, 18
  store i8 %add9.i, ptr %arrayidx.i80, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then39.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %add.i, %if.then.i ], [ %ielength.0, %if.then39.cleanup_crit_edge ], [ %ielength.0, %do.end.i.cleanup_crit_edge ], [ %ielength.0, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_report_sec_ie(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_init_registrypriv_dev_network(ptr nocapture noundef %adapter) local_unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 15, i32 4
  %MacAddress = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 1
  %0 = call ptr @memcpy(ptr %MacAddress, ptr %mac_addr.i, i32 6)
  %Ssid = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 3
  %ssid = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 4
  %1 = call ptr @memcpy(ptr %Ssid, ptr %ssid, i32 36)
  %Configuration = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 7
  %2 = ptrtoint ptr %Configuration to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 32, ptr %Configuration, align 1
  %BeaconPeriod = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 7, i32 1
  %3 = ptrtoint ptr %BeaconPeriod to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 100, ptr %BeaconPeriod, align 1
  %FHConfig = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13, i32 36, i32 7, i32 4
  %4 = call ptr @memset(ptr %FHConfig, i32 0, i32 16)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_generate_ie(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_joinbss_reset(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  %threshold = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %threshold) #20
  %htpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26
  %num_FortyMHzIntolerant = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 25
  %0 = ptrtoint ptr %num_FortyMHzIntolerant to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %num_FortyMHzIntolerant, align 4
  %num_sta_no_ht = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 24
  %1 = ptrtoint ptr %num_sta_no_ht to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %num_sta_no_ht, align 4
  %ampdu_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26, i32 1
  %2 = ptrtoint ptr %ampdu_enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ampdu_enable, align 4
  %3 = ptrtoint ptr %htpriv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 44
  %5 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  %. = zext i1 %cmp to i8
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry.if.end4_crit_edge
  %storemerge = phi i8 [ %., %if.then ], [ 1, %entry.if.end4_crit_edge ]
  %7 = ptrtoint ptr %threshold to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %storemerge, ptr %threshold, align 1
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 35, ptr noundef nonnull %threshold) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %threshold) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_restructure_ht_ie(ptr noundef %padapter, ptr noundef %in_ie, ptr noundef %out_ie, i32 noundef %in_len, ptr noundef %pout_len) local_unnamed_addr #2 align 64 {
entry:
  %ielen = alloca i32, align 4
  %max_rx_ampdu_factor = alloca i32, align 4
  %ht_capie = alloca %struct.ieee80211_ht_cap, align 2
  %WMM_IE = alloca [7 x i8], align 1
  %rx_packet_offset = alloca i32, align 4
  %max_recvbuf_sz = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ielen) #20
  %0 = ptrtoint ptr %ielen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ielen, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_rx_ampdu_factor) #20
  %1 = ptrtoint ptr %max_rx_ampdu_factor to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %max_rx_ampdu_factor, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %ht_capie) #20
  %2 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %ht_capie, i32 0, i32 1
  %3 = call ptr @memset(ptr %ht_capie, i32 255, i32 26)
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %WMM_IE) #20
  %4 = call ptr @memcpy(ptr %WMM_IE, ptr @__const.rtw_restructure_ht_ie.WMM_IE, i32 7)
  %qospriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 23
  %htpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_packet_offset) #20
  %5 = ptrtoint ptr %rx_packet_offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %rx_packet_offset, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_recvbuf_sz) #20
  %6 = ptrtoint ptr %max_recvbuf_sz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %max_recvbuf_sz, align 4, !annotation !144
  %7 = ptrtoint ptr %htpriv to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %htpriv, align 4
  %add.ptr = getelementptr i8, ptr %in_ie, i32 12
  %sub = add i32 %in_len, -12
  %call = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 45, ptr noundef nonnull %ielen, i32 noundef %sub) #20
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end35_crit_edge, label %land.lhs.true

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %ielen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %if.then

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

if.then:                                          ; preds = %land.lhs.true
  %10 = ptrtoint ptr %qospriv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qospriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1 = icmp eq i32 %11, 0
  br i1 %cmp1, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %12 = ptrtoint ptr %pout_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pout_len, align 4
  %add.ptr3 = getelementptr i8, ptr %out_ie, i32 %13
  %call4 = call ptr @rtw_set_ie(ptr noundef %add.ptr3, i32 noundef 221, i32 noundef 7, ptr noundef nonnull %WMM_IE, ptr noundef %pout_len) #20
  %14 = ptrtoint ptr %qospriv to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %qospriv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %15 = ptrtoint ptr %pout_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pout_len, align 4
  %17 = getelementptr inbounds i8, ptr %ht_capie, i32 2
  %18 = call ptr @memset(ptr %17, i32 0, i32 24)
  %19 = ptrtoint ptr %ht_capie to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -7664, ptr %ht_capie, align 2
  %call6 = call zeroext i8 @GetHalDefVar8188EUsb(ptr noundef %padapter, i32 noundef 5, ptr noundef nonnull %rx_packet_offset) #20
  %call7 = call zeroext i8 @GetHalDefVar8188EUsb(ptr noundef %padapter, i32 noundef 4, ptr noundef nonnull %max_recvbuf_sz) #20
  %call8 = call zeroext i8 @GetHalDefVar8188EUsb(ptr noundef %padapter, i32 noundef 11, ptr noundef nonnull %max_rx_ampdu_factor) #20
  %20 = ptrtoint ptr %max_rx_ampdu_factor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_rx_ampdu_factor, align 4
  %22 = trunc i32 %21 to i8
  %conv = and i8 %22, 3
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  %23 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp9 = icmp eq i32 %24, 4
  %25 = or i8 %conv, 28
  %storemerge = select i1 %cmp9, i8 %25, i8 %conv
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %storemerge, ptr %2, align 2
  %add.ptr20 = getelementptr i8, ptr %out_ie, i32 %16
  %call21 = call ptr @rtw_set_ie(ptr noundef %add.ptr20, i32 noundef 45, i32 noundef 26, ptr noundef nonnull %ht_capie, ptr noundef %pout_len) #20
  %27 = ptrtoint ptr %htpriv to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %htpriv, align 4
  %call25 = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 61, ptr noundef nonnull %ielen, i32 noundef %sub) #20
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end.if.end35_crit_edge, label %land.lhs.true27

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

land.lhs.true27:                                  ; preds = %if.end
  %28 = ptrtoint ptr %ielen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %29)
  %cmp28 = icmp eq i32 %29, 22
  br i1 %cmp28, label %if.then30, label %land.lhs.true27.if.end35_crit_edge

land.lhs.true27.if.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

if.then30:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #22
  %30 = ptrtoint ptr %pout_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pout_len, align 4
  %add.ptr31 = getelementptr i8, ptr %out_ie, i32 %31
  %add.ptr32 = getelementptr i8, ptr %call25, i32 2
  %call33 = call ptr @rtw_set_ie(ptr noundef %add.ptr31, i32 noundef 61, i32 noundef 22, ptr noundef %add.ptr32, ptr noundef %pout_len) #20
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %land.lhs.true27.if.end35_crit_edge, %if.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %32 = ptrtoint ptr %htpriv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %htpriv, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_recvbuf_sz) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_packet_offset) #20
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %WMM_IE) #20
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %ht_capie) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_rx_ampdu_factor) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ielen) #20
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_ie(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_set_ie(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_update_ht_cap(ptr nocapture noundef %padapter, ptr noundef %pie, i32 noundef %ie_len) local_unnamed_addr #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #20
  %htpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26
  %0 = ptrtoint ptr %htpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %HT_info_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 22
  %2 = ptrtoint ptr %HT_info_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %HT_info_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %HT_caps_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 21
  %4 = ptrtoint ptr %HT_caps_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %HT_caps_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %6 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp ugt i32 %6, 4
  br i1 %cmp, label %do.end, label %do.body.do.end9_crit_edge

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #26
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %ampdu_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26, i32 1
  %7 = ptrtoint ptr %ampdu_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ampdu_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %land.lhs.true, label %do.end9.if.else22_crit_edge

do.end9.if.else22_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else22

land.lhs.true:                                    ; preds = %do.end9
  %ampdu_enable11 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 39
  %9 = ptrtoint ptr %ampdu_enable11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ampdu_enable11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp12 = icmp eq i8 %10, 1
  br i1 %cmp12, label %if.then14, label %land.lhs.true.if.else22_crit_edge

land.lhs.true.if.else22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else22

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 44
  %11 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp16 = icmp ne i8 %12, 1
  %. = zext i1 %cmp16 to i32
  br label %if.end30.sink.split

if.else22:                                        ; preds = %land.lhs.true.if.else22_crit_edge, %do.end9.if.else22_crit_edge
  %ampdu_enable23 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 39
  %13 = ptrtoint ptr %ampdu_enable23 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ampdu_enable23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp25 = icmp eq i8 %14, 2
  br i1 %cmp25, label %if.else22.if.end30.sink.split_crit_edge, label %if.else22.if.end30_crit_edge

if.else22.if.end30_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end30

if.else22.if.end30.sink.split_crit_edge:          ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.else22.if.end30.sink.split_crit_edge, %if.then14
  %.sink = phi i32 [ %., %if.then14 ], [ 1, %if.else22.if.end30.sink.split_crit_edge ]
  %15 = ptrtoint ptr %ampdu_enable to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %ampdu_enable, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.else22.if.end30_crit_edge
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %len, align 4
  %add.ptr = getelementptr i8, ptr %pie, i32 12
  %sub = add i32 %ie_len, -12
  %call31 = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 45, ptr noundef nonnull %len, i32 noundef %sub) #20
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end30.if.end43_crit_edge, label %land.lhs.true33

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43

land.lhs.true33:                                  ; preds = %if.end30
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp34 = icmp sgt i32 %18, 0
  br i1 %cmp34, label %if.then36, label %land.lhs.true33.if.end43_crit_edge

land.lhs.true33.if.end43_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43

if.then36:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #22
  %ampdu_params_info = getelementptr i8, ptr %call31, i32 4
  %19 = ptrtoint ptr %ampdu_params_info to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ampdu_params_info, align 1
  %21 = and i8 %20, 3
  %shl = shl nuw nsw i8 8, %21
  %conv42 = zext i8 %shl to i32
  %rx_ampdu_maxlen = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26, i32 4
  %22 = ptrtoint ptr %rx_ampdu_maxlen to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv42, ptr %rx_ampdu_maxlen, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %land.lhs.true33.if.end43_crit_edge, %if.end30.if.end43_crit_edge
  %23 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %len, align 4
  %call46 = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 61, ptr noundef nonnull %len, i32 noundef %sub) #20
  %cbw40_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 38
  %24 = ptrtoint ptr %cbw40_enable to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cbw40_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool48.not = icmp eq i8 %25, 0
  br i1 %tobool48.not, label %if.end43.if.end76_crit_edge, label %land.lhs.true49

if.end43.if.end76_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end76

land.lhs.true49:                                  ; preds = %if.end43
  %HT_caps = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36
  %26 = ptrtoint ptr %HT_caps to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %HT_caps, align 4
  %28 = and i16 %27, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool52.not = icmp eq i16 %28, 0
  br i1 %tobool52.not, label %land.lhs.true49.if.end76_crit_edge, label %land.lhs.true53

land.lhs.true49.if.end76_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end76

land.lhs.true53:                                  ; preds = %land.lhs.true49
  %infos = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 37, i32 1
  %29 = ptrtoint ptr %infos to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %infos, align 1
  %31 = and i8 %30, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool56.not = icmp eq i8 %31, 0
  br i1 %tobool56.not, label %land.lhs.true53.if.end76_crit_edge, label %for.body.preheader

land.lhs.true53.if.end76_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end76

for.body.preheader:                               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #22
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @MCS_rate_1R to i32))
  %32 = load i8, ptr @MCS_rate_1R, align 1
  %arrayidx64 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 0
  %33 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx64, align 1
  %and66146 = and i8 %34, %32
  store i8 %and66146, ptr %arrayidx64, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 1) to i32))
  %35 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 1), align 1
  %arrayidx64.1 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %arrayidx64.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx64.1, align 1
  %and66146.1 = and i8 %37, %35
  store i8 %and66146.1, ptr %arrayidx64.1, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 2) to i32))
  %38 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 2), align 1
  %arrayidx64.2 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %arrayidx64.2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx64.2, align 1
  %and66146.2 = and i8 %40, %38
  store i8 %and66146.2, ptr %arrayidx64.2, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 3) to i32))
  %41 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 3), align 1
  %arrayidx64.3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %arrayidx64.3 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx64.3, align 1
  %and66146.3 = and i8 %43, %41
  store i8 %and66146.3, ptr %arrayidx64.3, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 4) to i32))
  %44 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 4), align 1
  %arrayidx64.4 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 4
  %45 = ptrtoint ptr %arrayidx64.4 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx64.4, align 1
  %and66146.4 = and i8 %46, %44
  store i8 %and66146.4, ptr %arrayidx64.4, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 5) to i32))
  %47 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 5), align 1
  %arrayidx64.5 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 5
  %48 = ptrtoint ptr %arrayidx64.5 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx64.5, align 1
  %and66146.5 = and i8 %49, %47
  store i8 %and66146.5, ptr %arrayidx64.5, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 6) to i32))
  %50 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 6), align 1
  %arrayidx64.6 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 6
  %51 = ptrtoint ptr %arrayidx64.6 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx64.6, align 1
  %and66146.6 = and i8 %52, %50
  store i8 %and66146.6, ptr %arrayidx64.6, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 7) to i32))
  %53 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 7), align 1
  %arrayidx64.7 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 7
  %54 = ptrtoint ptr %arrayidx64.7 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx64.7, align 1
  %and66146.7 = and i8 %55, %53
  store i8 %and66146.7, ptr %arrayidx64.7, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 8) to i32))
  %56 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 8), align 1
  %arrayidx64.8 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 8
  %57 = ptrtoint ptr %arrayidx64.8 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx64.8, align 1
  %and66146.8 = and i8 %58, %56
  store i8 %and66146.8, ptr %arrayidx64.8, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 9) to i32))
  %59 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 9), align 1
  %arrayidx64.9 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 9
  %60 = ptrtoint ptr %arrayidx64.9 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx64.9, align 1
  %and66146.9 = and i8 %61, %59
  store i8 %and66146.9, ptr %arrayidx64.9, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 10) to i32))
  %62 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 10), align 1
  %arrayidx64.10 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 10
  %63 = ptrtoint ptr %arrayidx64.10 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx64.10, align 1
  %and66146.10 = and i8 %64, %62
  store i8 %and66146.10, ptr %arrayidx64.10, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 11) to i32))
  %65 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 11), align 1
  %arrayidx64.11 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 11
  %66 = ptrtoint ptr %arrayidx64.11 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx64.11, align 1
  %and66146.11 = and i8 %67, %65
  store i8 %and66146.11, ptr %arrayidx64.11, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 12) to i32))
  %68 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 12), align 1
  %arrayidx64.12 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 12
  %69 = ptrtoint ptr %arrayidx64.12 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx64.12, align 1
  %and66146.12 = and i8 %70, %68
  store i8 %and66146.12, ptr %arrayidx64.12, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 13) to i32))
  %71 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 13), align 1
  %arrayidx64.13 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 13
  %72 = ptrtoint ptr %arrayidx64.13 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx64.13, align 1
  %and66146.13 = and i8 %73, %71
  store i8 %and66146.13, ptr %arrayidx64.13, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 14) to i32))
  %74 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 14), align 1
  %arrayidx64.14 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 14
  %75 = ptrtoint ptr %arrayidx64.14 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx64.14, align 1
  %and66146.14 = and i8 %76, %74
  store i8 %and66146.14, ptr %arrayidx64.14, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 15) to i32))
  %77 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 15), align 1
  %arrayidx64.15 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 15
  %78 = ptrtoint ptr %arrayidx64.15 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx64.15, align 1
  %and66146.15 = and i8 %79, %77
  store i8 %and66146.15, ptr %arrayidx64.15, align 1
  %cur_bwmode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 5
  %80 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %cur_bwmode, align 1
  %81 = ptrtoint ptr %infos to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %infos, align 1
  %83 = and i8 %82, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %83)
  %switch.selectcmp = icmp eq i8 %83, 3
  %switch.select = select i1 %switch.selectcmp, i8 2, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %83)
  %switch.selectcmp149 = icmp eq i8 %83, 1
  %switch.select150 = select i1 %switch.selectcmp149, i8 1, i8 %switch.select
  %cur_ch_offset = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 6
  %84 = ptrtoint ptr %cur_ch_offset to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %switch.select150, ptr %cur_ch_offset, align 8
  br label %if.end76

if.end76:                                         ; preds = %for.body.preheader, %land.lhs.true53.if.end76_crit_edge, %land.lhs.true49.if.end76_crit_edge, %if.end43.if.end76_crit_edge
  %HT_caps77 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36
  %85 = ptrtoint ptr %HT_caps77 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %HT_caps77, align 4
  %87 = lshr i16 %86, 10
  %88 = trunc i16 %87 to i8
  %conv82 = and i8 %88, 3
  %SM_PS = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 26
  %89 = ptrtoint ptr %SM_PS to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv82, ptr %SM_PS, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv82)
  %cmp85 = icmp eq i8 %conv82, 0
  br i1 %cmp85, label %do.body88, label %if.end76.if.end100_crit_edge

if.end76.if.end100_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end100

do.body88:                                        ; preds = %if.end76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %90 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %90)
  %cmp89 = icmp ugt i32 %90, 4
  br i1 %cmp89, label %do.end94, label %do.body88.if.end100_crit_edge

do.body88.if.end100_crit_edge:                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end100

do.end94:                                         ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #22
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42) #26
  br label %if.end100

if.end100:                                        ; preds = %do.end94, %do.body88.if.end100_crit_edge, %if.end76.if.end100_crit_edge
  %arrayidx103 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 37, i32 1, i32 1
  %91 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx103, align 1
  %93 = and i8 %92, 3
  %HT_protection = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 23
  %94 = ptrtoint ptr %HT_protection to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %HT_protection, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end100, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_issue_addbareq_cmd(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %0 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ra, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %LinkDetectInfo = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 27
  %3 = ptrtoint ptr %LinkDetectInfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %LinkDetectInfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %4)
  %cmp = icmp ult i32 %4, 100
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %priority1 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 16
  %5 = ptrtoint ptr %priority1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %priority1, align 2
  %conv = zext i8 %6 to i32
  %psta2 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 40
  %7 = ptrtoint ptr %psta2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %psta2, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11

if.end8:                                          ; preds = %if.end
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call7 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ra) #20
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end11:                                         ; preds = %if.end8.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %psta.073 = phi ptr [ %call7, %if.end8.if.end11_crit_edge ], [ %8, %if.end.if.end11_crit_edge ]
  %htpriv = getelementptr inbounds %struct.sta_info, ptr %psta.073, i32 0, i32 33
  %9 = ptrtoint ptr %htpriv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %land.lhs.true

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end11
  %ampdu_enable = getelementptr inbounds %struct.sta_info, ptr %psta.073, i32 0, i32 33, i32 1
  %11 = ptrtoint ptr %ampdu_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ampdu_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %land.lhs.true.cleanup_crit_edge, label %if.then14

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then14:                                        ; preds = %land.lhs.true
  %agg_enable_bitmap = getelementptr inbounds %struct.sta_info, ptr %psta.073, i32 0, i32 33, i32 8
  %13 = ptrtoint ptr %agg_enable_bitmap to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %agg_enable_bitmap, align 1
  %candidate_tid_bitmap = getelementptr inbounds %struct.sta_info, ptr %psta.073, i32 0, i32 33, i32 9
  %15 = ptrtoint ptr %candidate_tid_bitmap to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %candidate_tid_bitmap, align 4
  %shr6970 = or i8 %16, %14
  %shr69 = zext i8 %shr6970 to i32
  %17 = shl nuw i32 1, %conv
  %18 = and i32 %17, %shr69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp23 = icmp eq i32 %18, 0
  br i1 %cmp23, label %do.body, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body:                                          ; preds = %if.then14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %19 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp26 = icmp ugt i32 %19, 4
  br i1 %cmp26, label %do.end, label %do.body.do.end33_crit_edge

do.body.do.end33_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end33

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %conv) #26
  br label %do.end33

do.end33:                                         ; preds = %do.end, %do.body.do.end33_crit_edge
  %20 = ptrtoint ptr %candidate_tid_bitmap to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %candidate_tid_bitmap, align 8
  %22 = trunc i32 %17 to i8
  %conv40 = or i8 %21, %22
  store i8 %conv40, ptr %candidate_tid_bitmap, align 8
  %call44 = tail call zeroext i8 @rtw_addbareq_cmd(ptr noundef %padapter, i8 noundef zeroext %6, ptr noundef %ra) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %if.then14.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_addbareq_cmd(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_roaming(ptr noundef %padapter, ptr noundef %tgt_network) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #20
  tail call void @_rtw_roaming(ptr noundef %padapter, ptr noundef %tgt_network)
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_wlan_bssid_ex_remove_p2p_attr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_update_protection(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_sta_info(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_set_802_11_bssid_list_scan(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_passing_time_ms(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_wps_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #20

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #21 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #21 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind readonly }
attributes #18 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #22 = { nomerge }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nobuiltin }
attributes #25 = { nobuiltin nounwind }
attributes #26 = { cold nounwind }
attributes #27 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133}
!llvm.named.register.sp = !{!134}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @_rtw_init_mlme_priv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 51, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @_rtw_init_mlme_priv.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 52, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @_rtw_init_mlme_priv.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 53, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 737, i32 5}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rtw_surveydone_event_callback._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @rtw_surveydone_event_callback._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 1199, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rtw_stassoc_event_callback._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @rtw_stassoc_event_callback._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 1242, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rtw_stadel_event_callback._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @rtw_stadel_event_callback._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 1333, i32 2}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @_rtw_join_timeout_handler._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @_rtw_join_timeout_handler._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 1344, i32 5}
!32 = !{ptr @_rtw_join_timeout_handler._entry.14, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @_rtw_join_timeout_handler._entry_ptr.16, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 1347, i32 6}
!36 = !{ptr @_rtw_join_timeout_handler._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @_rtw_join_timeout_handler._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 1352, i32 5}
!40 = !{ptr @_rtw_join_timeout_handler._entry.20, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @_rtw_join_timeout_handler._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 1373, i32 2}
!44 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rtw_scan_timeout_handler._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @rtw_scan_timeout_handler._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 1421, i32 6}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 1523, i32 3}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rtw_select_and_join_from_scanned_queue._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @rtw_select_and_join_from_scanned_queue._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 1527, i32 3}
!57 = !{ptr @rtw_select_and_join_from_scanned_queue._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rtw_select_and_join_from_scanned_queue._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 1534, i32 3}
!61 = !{ptr @rtw_select_and_join_from_scanned_queue._entry.31, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @rtw_select_and_join_from_scanned_queue._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 1545, i32 3}
!65 = !{ptr @rtw_select_and_join_from_scanned_queue._entry.34, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @rtw_select_and_join_from_scanned_queue._entry_ptr.36, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 1620, i32 2}
!71 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @rtw_set_key._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @rtw_set_key._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 1973, i32 2}
!76 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @rtw_update_ht_cap._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @rtw_update_ht_cap._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 2025, i32 3}
!81 = !{ptr @rtw_update_ht_cap._entry.43, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @rtw_update_ht_cap._entry_ptr.45, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 2060, i32 4}
!85 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @rtw_issue_addbareq_cmd._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @rtw_issue_addbareq_cmd._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 2088, i32 3}
!90 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @_rtw_roaming._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @_rtw_roaming._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 2100, i32 5}
!95 = !{ptr @_rtw_roaming._entry.50, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @_rtw_roaming._entry_ptr.52, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 2106, i32 6}
!99 = !{ptr @_rtw_roaming._entry.53, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @_rtw_roaming._entry_ptr.55, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 972, i32 2}
!103 = !{ptr @rtw_joinbss_update_network._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @rtw_joinbss_update_network._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 912, i32 3}
!107 = !{ptr @rtw_joinbss_update_stainfo._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @rtw_joinbss_update_stainfo._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 1388, i32 4}
!111 = !{ptr @rtw_auto_scan_handler._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @rtw_auto_scan_handler._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!114 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!115 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!117 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!118 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!119 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 1479, i32 3}
!122 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @rtw_check_join_candidate._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @rtw_check_join_candidate._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 1485, i32 3}
!127 = !{ptr @rtw_check_join_candidate._entry.64, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @rtw_check_join_candidate._entry_ptr.66, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/staging/r8188eu/core/rtw_mlme.c", i32 620, i32 3}
!131 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @rtw_is_desired_network._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @rtw_is_desired_network._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{!"sp"}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{!"auto-init"}
!145 = !{i64 2149251812}
!146 = !{i64 2149252078}
