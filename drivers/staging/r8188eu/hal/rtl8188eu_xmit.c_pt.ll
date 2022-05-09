; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/rtl8188eu_xmit.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/rtl8188eu_xmit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.tx_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%struct.xmit_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i16, i16, i32, i32, ptr, i32, [8 x ptr], i32, [8 x i8], [8 x i32] }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [6 x i8], i8, i16, [8 x i8], i8, [32 x i8], i16, [32 x i8], i8, i8, %struct.rssi_sta, i8, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.hw_xmit = type { ptr, i32 }

@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@update_txdesc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016R8188EU: pxmitframe->frame_tag == TXAGG_FRAMETAG\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"update_txdesc\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/staging/r8188eu/hal/rtl8188eu_xmit.c\00", [51 x i8] zeroinitializer }, align 32
@update_txdesc._entry_ptr = internal global ptr @update_txdesc._entry, section ".printk_index", align 4
@update_txdesc._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016R8188EU: pxmitframe->frame_tag = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@update_txdesc._entry_ptr.5 = internal global ptr @update_txdesc._entry.3, section ".printk_index", align 4
@xmitframe_direct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016R8188EU: ==> %s xmitframe_coalsece failed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xmitframe_direct\00", [47 x i8] zeroinitializer }, align 32
@xmitframe_direct._entry_ptr = internal global ptr @xmitframe_direct._entry, section ".printk_index", align 4
@switch.table.update_txdesc = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 16384, i32 16384, i32 16384, i32 49152, i32 16384], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 16, i64 2054, i64 34958, i64 34996]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 8]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 16, i64 2054, i64 34958, i64 34996]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 16, i64 2054, i64 34958, i64 34996]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 268, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 270, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [48 x i8] c"../drivers/staging/r8188eu/hal/rtl8188eu_xmit.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 571, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [27 x i8] c"switch.table.update_txdesc\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @update_txdesc._entry, ptr @update_txdesc._entry.3, ptr @update_txdesc._entry_ptr, ptr @update_txdesc._entry_ptr.5, ptr @xmitframe_direct._entry, ptr @xmitframe_direct._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @switch.table.update_txdesc], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_txdesc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_txdesc._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xmitframe_direct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.update_txdesc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8188eu_init_xmit_priv(ptr noundef %adapt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %xmit_tasklet = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 9, i32 26
  %0 = ptrtoint ptr %adapt to i32
  tail call void @tasklet_init(ptr noundef %xmit_tasklet, ptr noundef nonnull @rtl8188eu_xmit_tasklet, i32 noundef %0) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188eu_xmit_tasklet(i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8188e_fill_fake_txdesc(ptr nocapture noundef readnone %adapt, ptr noundef %desc, i32 noundef %BufferLen, i8 noundef zeroext %ispspoll, i8 noundef zeroext %is_btqosnull) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %desc, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %and = and i32 %BufferLen, 65535
  %2 = or i32 %and, -1944059904
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %desc, align 4
  %txdw1 = getelementptr %struct.tx_desc, ptr %desc, i32 0, i32 1
  %5 = ptrtoint ptr %txdw1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1179648, ptr %txdw1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ispspoll)
  %tobool.not = icmp eq i8 %ispspoll, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %txdw1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1183744, ptr %txdw1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %txdw4 = getelementptr inbounds %struct.tx_desc, ptr %desc, i32 0, i32 4
  %7 = ptrtoint ptr %txdw4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %txdw4, align 4
  %or8 = or i32 %8, -2147483648
  store i32 %or8, ptr %txdw4, align 4
  %txdw3 = getelementptr inbounds %struct.tx_desc, ptr %desc, i32 0, i32 3
  %9 = ptrtoint ptr %txdw3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %txdw3, align 4
  %or9 = or i32 %10, 128
  store i32 %or9, ptr %txdw3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %is_btqosnull)
  %tobool10.not = icmp eq i8 %is_btqosnull, 0
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %if.then11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %txdw2 = getelementptr inbounds %struct.tx_desc, ptr %desc, i32 0, i32 2
  %11 = ptrtoint ptr %txdw2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %txdw2, align 4
  %or12 = or i32 %12, 32768
  store i32 %or12, ptr %txdw2, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %txdw414 = getelementptr %struct.tx_desc, ptr %desc, i32 0, i32 4
  %13 = ptrtoint ptr %txdw414 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %txdw414, align 4
  %or15 = or i32 %14, 65536
  store i32 %or15, ptr %txdw414, align 4
  %txdw7.i = getelementptr %struct.tx_desc, ptr %desc, i32 0, i32 7
  %15 = ptrtoint ptr %txdw7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %txdw7.i, align 4
  %and.i = and i32 %16, 65535
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %desc, align 2
  %add.ptr.1.i = getelementptr i16, ptr %desc, i32 1
  %19 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.1.i, align 2
  %21 = ptrtoint ptr %txdw1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %txdw1, align 2
  %add.ptr.3.i = getelementptr i16, ptr %desc, i32 3
  %23 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.3.i, align 2
  %add.ptr.4.i = getelementptr i16, ptr %desc, i32 4
  %25 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.4.i, align 2
  %add.ptr.5.i = getelementptr i16, ptr %desc, i32 5
  %27 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.5.i, align 2
  %add.ptr.6.i = getelementptr i16, ptr %desc, i32 6
  %29 = ptrtoint ptr %add.ptr.6.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.6.i, align 2
  %add.ptr.7.i = getelementptr i16, ptr %desc, i32 7
  %31 = ptrtoint ptr %add.ptr.7.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.7.i, align 2
  %33 = lshr i32 %or15, 16
  %34 = trunc i32 %33 to i16
  %35 = trunc i32 %14 to i16
  %add.ptr.10.i = getelementptr i16, ptr %desc, i32 10
  %36 = ptrtoint ptr %add.ptr.10.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.10.i, align 2
  %add.ptr.11.i = getelementptr i16, ptr %desc, i32 11
  %38 = ptrtoint ptr %add.ptr.11.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.11.i, align 2
  %add.ptr.12.i = getelementptr i16, ptr %desc, i32 12
  %40 = ptrtoint ptr %add.ptr.12.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr.12.i, align 2
  %add.ptr.13.i = getelementptr i16, ptr %desc, i32 13
  %42 = ptrtoint ptr %add.ptr.13.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.13.i, align 2
  %44 = trunc i32 %16 to i16
  %45 = xor i16 %18, %44
  %46 = xor i16 %45, %20
  %47 = xor i16 %46, %22
  %48 = xor i16 %47, %24
  %49 = xor i16 %48, %26
  %50 = xor i16 %49, %28
  %51 = xor i16 %50, %30
  %52 = xor i16 %51, %32
  %53 = xor i16 %52, %34
  %54 = xor i16 %53, %35
  %55 = xor i16 %54, %37
  %56 = xor i16 %55, %39
  %57 = xor i16 %56, %41
  %58 = xor i16 %57, %43
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #5
  %xor.15.i = zext i16 %59 to i32
  %60 = tail call i32 @llvm.bswap.i32(i32 %xor.15.i) #5
  %or.i = or i32 %60, %and.i
  %61 = ptrtoint ptr %txdw7.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or.i, ptr %txdw7.i, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8188eu_xmitframe_complete(ptr noundef %adapt, ptr noundef %pxmitpriv, ptr noundef %pxmitbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %UsbBulkOutSize = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 49
  %0 = ptrtoint ptr %UsbBulkOutSize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %UsbBulkOutSize, align 4
  %tobool.not = icmp eq ptr %pxmitbuf, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call ptr @rtw_alloc_xmitbuf(ptr noundef %pxmitpriv) #5
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %pxmitbuf.addr.0 = phi ptr [ %pxmitbuf, %entry.if.end4_crit_edge ], [ %call, %if.then.if.end4_crit_edge ]
  %call5 = tail call i32 @rtw_free_xmitframe(ptr noundef %pxmitpriv, ptr noundef null) #5
  %hwxmits = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 21
  %2 = ptrtoint ptr %hwxmits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwxmits, align 8
  %hwxmit_entry = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 22
  %4 = ptrtoint ptr %hwxmit_entry to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hwxmit_entry, align 4
  %conv = zext i8 %5 to i32
  %call6 = tail call ptr @rtw_dequeue_xframe(ptr noundef %pxmitpriv, ptr noundef %3, i32 noundef %conv) #5
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 @rtw_free_xmitbuf(ptr noundef %pxmitpriv, ptr noundef nonnull %pxmitbuf.addr.0) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %pxmitbuf11 = getelementptr inbounds %struct.xmit_frame, ptr %call6, i32 0, i32 6
  %6 = ptrtoint ptr %pxmitbuf11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pxmitbuf.addr.0, ptr %pxmitbuf11, align 4
  %pbuf12 = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.addr.0, i32 0, i32 3
  %7 = ptrtoint ptr %pbuf12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pbuf12, align 4
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %call6, i32 0, i32 5
  %9 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %buf_addr, align 4
  %priv_data = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.addr.0, i32 0, i32 4
  %10 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %priv_data, align 4
  %agg_num = getelementptr inbounds %struct.xmit_frame, ptr %call6, i32 0, i32 7
  %11 = ptrtoint ptr %agg_num to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %agg_num, align 4
  %pkt_offset = getelementptr inbounds %struct.xmit_frame, ptr %call6, i32 0, i32 8
  %12 = ptrtoint ptr %pkt_offset to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %pkt_offset, align 1
  %pkt = getelementptr inbounds %struct.xmit_frame, ptr %call6, i32 0, i32 2
  %13 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pkt, align 4
  %call13 = tail call i32 @rtw_xmitframe_coalesce(ptr noundef %adapt, ptr noundef %14, ptr noundef nonnull %call6) #5
  tail call void @rtw_os_xmit_complete(ptr noundef %adapt, ptr noundef nonnull %call6) #5
  %hdrlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call6, i32 0, i32 1, i32 7
  %15 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hdrlen.i, align 2
  %iv_len.i = getelementptr inbounds %struct.xmit_frame, ptr %call6, i32 0, i32 1, i32 12
  %17 = ptrtoint ptr %iv_len.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %iv_len.i, align 2
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call6, i32 0, i32 1, i32 8
  %19 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pktlen.i, align 4
  %bswenc.i = getelementptr inbounds %struct.xmit_frame, ptr %call6, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %bswenc.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bswenc.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end10.xmitframe_need_length.exit_crit_edge, label %cond.true.i

if.end10.xmitframe_need_length.exit_crit_edge:    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %xmitframe_need_length.exit

cond.true.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %icv_len.i = getelementptr inbounds %struct.xmit_frame, ptr %call6, i32 0, i32 1, i32 13
  %23 = ptrtoint ptr %icv_len.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %icv_len.i, align 1
  %conv6.i = zext i8 %24 to i32
  br label %xmitframe_need_length.exit

xmitframe_need_length.exit:                       ; preds = %cond.true.i, %if.end10.xmitframe_need_length.exit_crit_edge
  %cond.i = phi i32 [ %conv6.i, %cond.true.i ], [ 0, %if.end10.xmitframe_need_length.exit_crit_edge ]
  %conv.i = zext i16 %16 to i32
  %conv1.i = zext i8 %18 to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %add3.i = add nuw nsw i32 %add.i, %conv1.i
  %add4.i = add i32 %add3.i, %20
  %add7.i = add i32 %add4.i, %cond.i
  %encrypt.i = getelementptr inbounds %struct.xmit_frame, ptr %call6, i32 0, i32 1, i32 11
  %25 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %encrypt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp.i = icmp eq i8 %26, 2
  %add10.i = add i32 %add7.i, 8
  %spec.select.i = select i1 %cmp.i, i32 %add10.i, i32 %add7.i
  %add = add i32 %spec.select.i, 32
  %27 = ptrtoint ptr %pkt_offset to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pkt_offset, align 1
  %conv16 = sext i8 %28 to i32
  %mul = shl nsw i32 %conv16, 3
  %add17 = add i32 %add, %mul
  %and.i = and i32 %add17, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.not.i = icmp eq i32 %and.i, 0
  %add2.i = select i1 %tobool.not.not.i, i32 0, i32 8
  %shr3.i = add i32 %add2.i, %add17
  %shl.i = and i32 %shr3.i, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %1)
  %cmp = icmp ult i32 %shl.i, %1
  br i1 %cmp, label %xmitframe_need_length.exit.if.end23_crit_edge, label %if.else

xmitframe_need_length.exit.if.end23_crit_edge:    ; preds = %xmitframe_need_length.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.else:                                          ; preds = %xmitframe_need_length.exit
  call void @__sanitizer_cov_trace_pc() #7
  %div = udiv i32 %shl.i, %1
  %add21 = add nuw i32 %div, 1
  %mul22 = mul i32 %add21, %1
  br label %if.end23

if.end23:                                         ; preds = %if.else, %xmitframe_need_length.exit.if.end23_crit_edge
  %desc_cnt.0 = phi i8 [ 0, %if.else ], [ 1, %xmitframe_need_length.exit.if.end23_crit_edge ]
  %bulkptr.0 = phi i32 [ %mul22, %if.else ], [ %1, %xmitframe_need_length.exit.if.end23_crit_edge ]
  %psta24 = getelementptr inbounds %struct.xmit_frame, ptr %call6, i32 0, i32 1, i32 40
  %29 = ptrtoint ptr %psta24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %psta24, align 4
  %priority = getelementptr inbounds %struct.xmit_frame, ptr %call6, i32 0, i32 1, i32 16
  %31 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %priority, align 2
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i8 %32, label %sw.default [
    i8 1, label %if.end23.sw.bb_crit_edge
    i8 2, label %if.end23.sw.bb_crit_edge331
    i8 4, label %if.end23.sw.bb28_crit_edge
    i8 5, label %if.end23.sw.bb28_crit_edge332
    i8 6, label %if.end23.sw.bb32_crit_edge
    i8 7, label %if.end23.sw.bb32_crit_edge333
  ]

if.end23.sw.bb32_crit_edge333:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb32

if.end23.sw.bb32_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb32

if.end23.sw.bb28_crit_edge332:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28

if.end23.sw.bb28_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28

if.end23.sw.bb_crit_edge331:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end23.sw.bb_crit_edge:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.end23.sw.bb_crit_edge, %if.end23.sw.bb_crit_edge331
  %bk_q = getelementptr inbounds %struct.sta_info, ptr %30, i32 0, i32 3, i32 4
  %34 = ptrtoint ptr %hwxmits to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hwxmits, align 8
  %add.ptr = getelementptr %struct.hw_xmit, ptr %35, i32 3
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end23.sw.bb28_crit_edge, %if.end23.sw.bb28_crit_edge332
  %vi_q = getelementptr inbounds %struct.sta_info, ptr %30, i32 0, i32 3, i32 5
  %36 = ptrtoint ptr %hwxmits to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hwxmits, align 8
  %add.ptr31 = getelementptr %struct.hw_xmit, ptr %37, i32 1
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end23.sw.bb32_crit_edge, %if.end23.sw.bb32_crit_edge333
  %vo_q = getelementptr inbounds %struct.sta_info, ptr %30, i32 0, i32 3, i32 6
  %38 = ptrtoint ptr %hwxmits to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hwxmits, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %be_q = getelementptr inbounds %struct.sta_info, ptr %30, i32 0, i32 3, i32 3
  %40 = ptrtoint ptr %hwxmits to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hwxmits, align 8
  %add.ptr38 = getelementptr %struct.hw_xmit, ptr %41, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb32, %sw.bb28, %sw.bb
  %phwxmit.0 = phi ptr [ %add.ptr38, %sw.default ], [ %39, %sw.bb32 ], [ %add.ptr31, %sw.bb28 ], [ %add.ptr, %sw.bb ]
  %ptxservq.0 = phi ptr [ %be_q, %sw.default ], [ %vo_q, %sw.bb32 ], [ %vi_q, %sw.bb28 ], [ %bk_q, %sw.bb ]
  tail call void @_raw_spin_lock_bh(ptr noundef %pxmitpriv) #5
  %sta_pending = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0, i32 0, i32 1
  %42 = ptrtoint ptr %sta_pending to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sta_pending, align 4
  %cmp40.not305 = icmp eq ptr %sta_pending, %43
  br i1 %cmp40.not305, label %sw.epilog.while.end_crit_edge, label %while.body.lr.ph

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %sw.epilog
  %qcnt = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0, i32 0, i32 2
  %accnt = getelementptr inbounds %struct.hw_xmit, ptr %phwxmit.0, i32 0, i32 1
  %UsbTxAggDescNum = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 51
  br label %while.body

while.body:                                       ; preds = %if.end94.while.body_crit_edge, %while.body.lr.ph
  %bulkptr.1311 = phi i32 [ %bulkptr.0, %while.body.lr.ph ], [ %bulkptr.2, %if.end94.while.body_crit_edge ]
  %desc_cnt.1310 = phi i8 [ %desc_cnt.0, %while.body.lr.ph ], [ %desc_cnt.2, %if.end94.while.body_crit_edge ]
  %pbuf_tail.0309 = phi i32 [ %add17, %while.body.lr.ph ], [ %add52, %if.end94.while.body_crit_edge ]
  %pbuf.0308 = phi i32 [ %shl.i, %while.body.lr.ph ], [ %shl.i289, %if.end94.while.body_crit_edge ]
  %xmitframe_plist.0306 = phi ptr [ %43, %while.body.lr.ph ], [ %45, %if.end94.while.body_crit_edge ]
  %44 = ptrtoint ptr %xmitframe_plist.0306 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xmitframe_plist.0306, align 4
  %agg_num44 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0306, i32 0, i32 7
  %46 = ptrtoint ptr %agg_num44 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %agg_num44, align 4
  %pkt_offset45 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0306, i32 0, i32 8
  %47 = ptrtoint ptr %pkt_offset45 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %pkt_offset45, align 1
  %hdrlen.i265 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0306, i32 0, i32 1, i32 7
  %48 = ptrtoint ptr %hdrlen.i265 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %hdrlen.i265, align 2
  %iv_len.i266 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0306, i32 0, i32 1, i32 12
  %50 = ptrtoint ptr %iv_len.i266 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %iv_len.i266, align 2
  %pktlen.i267 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0306, i32 0, i32 1, i32 8
  %52 = ptrtoint ptr %pktlen.i267 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pktlen.i267, align 4
  %bswenc.i268 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0306, i32 0, i32 1, i32 2
  %54 = ptrtoint ptr %bswenc.i268 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bswenc.i268, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i269 = icmp eq i8 %55, 0
  br i1 %tobool.not.i269, label %while.body.xmitframe_need_length.exit284_crit_edge, label %cond.true.i272

while.body.xmitframe_need_length.exit284_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %xmitframe_need_length.exit284

cond.true.i272:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %icv_len.i270 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0306, i32 0, i32 1, i32 13
  %56 = ptrtoint ptr %icv_len.i270 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %icv_len.i270, align 1
  %conv6.i271 = zext i8 %57 to i32
  br label %xmitframe_need_length.exit284

xmitframe_need_length.exit284:                    ; preds = %cond.true.i272, %while.body.xmitframe_need_length.exit284_crit_edge
  %cond.i273 = phi i32 [ %conv6.i271, %cond.true.i272 ], [ 0, %while.body.xmitframe_need_length.exit284_crit_edge ]
  %conv.i274 = zext i16 %49 to i32
  %conv1.i275 = zext i8 %51 to i32
  %add.i276 = add nuw nsw i32 %conv.i274, 8
  %add3.i277 = add nuw nsw i32 %add.i276, %conv1.i275
  %add4.i278 = add i32 %add3.i277, %53
  %add7.i279 = add i32 %add4.i278, %cond.i273
  %encrypt.i280 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0306, i32 0, i32 1, i32 11
  %58 = ptrtoint ptr %encrypt.i280 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %encrypt.i280, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %59)
  %cmp.i281 = icmp eq i8 %59, 2
  %add10.i282 = add i32 %add7.i279, 8
  %spec.select.i283 = select i1 %cmp.i281, i32 %add10.i282, i32 %add7.i279
  %add47 = add i32 %pbuf.0308, 32
  %add52 = add i32 %add47, %spec.select.i283
  %and.i285 = and i32 %add52, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i285)
  %tobool.not.not.i286 = icmp eq i32 %and.i285, 0
  %add2.i287 = select i1 %tobool.not.not.i286, i32 0, i32 8
  %shr3.i288 = add i32 %add2.i287, %add52
  %shl.i289 = and i32 %shr3.i288, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %shl.i289)
  %cmp54 = icmp ugt i32 %shl.i289, 20480
  br i1 %cmp54, label %if.then56, label %if.end59

if.then56:                                        ; preds = %xmitframe_need_length.exit284
  call void @__sanitizer_cov_trace_pc() #7
  %agg_num44.le = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0306, i32 0, i32 7
  %pkt_offset45.le = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0306, i32 0, i32 8
  %60 = ptrtoint ptr %agg_num44.le to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %agg_num44.le, align 4
  %61 = ptrtoint ptr %pkt_offset45.le to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %pkt_offset45.le, align 1
  br label %while.end

if.end59:                                         ; preds = %xmitframe_need_length.exit284
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %xmitframe_plist.0306) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end59.list_del_init.exit_crit_edge

if.end59.list_del_init.exit_crit_edge:            ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %xmitframe_plist.0306, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i, align 4
  %64 = ptrtoint ptr %xmitframe_plist.0306 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %xmitframe_plist.0306, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end59.list_del_init.exit_crit_edge
  %68 = ptrtoint ptr %xmitframe_plist.0306 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %xmitframe_plist.0306, ptr %xmitframe_plist.0306, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %xmitframe_plist.0306, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %xmitframe_plist.0306, ptr %prev.i3.i, align 4
  %70 = ptrtoint ptr %qcnt to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %qcnt, align 4
  %dec = add i32 %71, -1
  store i32 %dec, ptr %qcnt, align 4
  %72 = ptrtoint ptr %accnt to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %accnt, align 4
  %dec60 = add i32 %73, -1
  store i32 %dec60, ptr %accnt, align 4
  %74 = ptrtoint ptr %pbuf12 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pbuf12, align 4
  %add.ptr62 = getelementptr i8, ptr %75, i32 %pbuf.0308
  %buf_addr63 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0306, i32 0, i32 5
  %76 = ptrtoint ptr %buf_addr63 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr62, ptr %buf_addr63, align 4
  %pkt64 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0306, i32 0, i32 2
  %77 = ptrtoint ptr %pkt64 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pkt64, align 4
  %call65 = tail call i32 @rtw_xmitframe_coalesce(ptr noundef %adapt, ptr noundef %78, ptr noundef %xmitframe_plist.0306) #5
  tail call void @rtw_os_xmit_complete(ptr noundef %adapt, ptr noundef %xmitframe_plist.0306) #5
  %79 = ptrtoint ptr %buf_addr63 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %buf_addr63, align 4
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.0306, i32 0, i32 1, i32 9
  %81 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %last_txcmdsz, align 4
  tail call fastcc void @update_txdesc(ptr noundef %xmitframe_plist.0306, ptr noundef %80, i32 noundef %82)
  %call69 = tail call i32 @rtw_free_xmitframe(ptr noundef %pxmitpriv, ptr noundef %xmitframe_plist.0306) #5
  %83 = ptrtoint ptr %agg_num to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %agg_num, align 4
  %inc73 = add i8 %84, 1
  store i8 %inc73, ptr %agg_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %inc73)
  %cmp76 = icmp eq i8 %inc73, -1
  br i1 %cmp76, label %list_del_init.exit.while.end_crit_edge, label %if.end79

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end79:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i289, i32 %bulkptr.1311)
  %cmp80 = icmp ult i32 %shl.i289, %bulkptr.1311
  br i1 %cmp80, label %if.then82, label %if.else90

if.then82:                                        ; preds = %if.end79
  %inc83 = add i8 %desc_cnt.1310, 1
  %85 = ptrtoint ptr %UsbTxAggDescNum to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %UsbTxAggDescNum, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %inc83, i8 %86)
  %cmp86 = icmp eq i8 %inc83, %86
  br i1 %cmp86, label %if.then82.while.end_crit_edge, label %if.then82.if.end94_crit_edge

if.then82.if.end94_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then82.while.end_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.else90:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  %div91 = udiv i32 %shl.i289, %1
  %add92 = add i32 %div91, 1
  %mul93 = mul i32 %add92, %1
  br label %if.end94

if.end94:                                         ; preds = %if.else90, %if.then82.if.end94_crit_edge
  %desc_cnt.2 = phi i8 [ %inc83, %if.then82.if.end94_crit_edge ], [ 0, %if.else90 ]
  %bulkptr.2 = phi i32 [ %bulkptr.1311, %if.then82.if.end94_crit_edge ], [ %mul93, %if.else90 ]
  %cmp40.not = icmp eq ptr %sta_pending, %45
  br i1 %cmp40.not, label %if.end94.while.end_crit_edge, label %if.end94.while.body_crit_edge

if.end94.while.body_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end94.while.end_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end94.while.end_crit_edge, %if.then82.while.end_crit_edge, %list_del_init.exit.while.end_crit_edge, %if.then56, %sw.epilog.while.end_crit_edge
  %pbuf_tail.1 = phi i32 [ %pbuf_tail.0309, %if.then56 ], [ %add17, %sw.epilog.while.end_crit_edge ], [ %add52, %if.then82.while.end_crit_edge ], [ %add52, %list_del_init.exit.while.end_crit_edge ], [ %add52, %if.end94.while.end_crit_edge ]
  %87 = ptrtoint ptr %sta_pending to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %sta_pending, align 4
  %cmp.i295.not = icmp eq ptr %88, %sta_pending
  br i1 %cmp.i295.not, label %if.then98, label %while.end.if.end99_crit_edge

while.end.if.end99_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

if.then98:                                        ; preds = %while.end
  %call.i.i297 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ptxservq.0) #5
  br i1 %call.i.i297, label %if.end.i.i300, label %if.then98.list_del_init.exit302_crit_edge

if.then98.list_del_init.exit302_crit_edge:        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit302

if.end.i.i300:                                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i298 = getelementptr inbounds %struct.list_head, ptr %ptxservq.0, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i298 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i298, align 4
  %91 = ptrtoint ptr %ptxservq.0 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ptxservq.0, align 4
  %prev1.i.i.i299 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i299 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev1.i.i.i299, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %92, ptr %90, align 4
  br label %list_del_init.exit302

list_del_init.exit302:                            ; preds = %if.end.i.i300, %if.then98.list_del_init.exit302_crit_edge
  %95 = ptrtoint ptr %ptxservq.0 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %ptxservq.0, ptr %ptxservq.0, align 4
  %prev.i3.i301 = getelementptr inbounds %struct.list_head, ptr %ptxservq.0, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i3.i301 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %ptxservq.0, ptr %prev.i3.i301, align 4
  br label %if.end99

if.end99:                                         ; preds = %list_del_init.exit302, %while.end.if.end99_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %pxmitpriv) #5
  %ether_type = getelementptr inbounds %struct.xmit_frame, ptr %call6, i32 0, i32 1, i32 4
  %97 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %ether_type, align 4
  %99 = zext i16 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %98, label %land.lhs.true116 [
    i16 2054, label %if.end99.if.end122_crit_edge
    i16 -30578, label %if.end99.if.end122_crit_edge334
    i16 -30540, label %if.end99.if.end122_crit_edge335
  ]

if.end99.if.end122_crit_edge335:                  ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end122

if.end99.if.end122_crit_edge334:                  ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end122

if.end99.if.end122_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end122

land.lhs.true116:                                 ; preds = %if.end99
  %dhcp_pkt = getelementptr inbounds %struct.xmit_frame, ptr %call6, i32 0, i32 1, i32 3
  %100 = ptrtoint ptr %dhcp_pkt to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %dhcp_pkt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %101)
  %cmp119.not = icmp eq i8 %101, 1
  br i1 %cmp119.not, label %land.lhs.true116.if.end122_crit_edge, label %if.then121

land.lhs.true116.if.end122_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end122

if.then121:                                       ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw_issue_addbareq_cmd(ptr noundef %adapt, ptr noundef nonnull %call6) #5
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %land.lhs.true116.if.end122_crit_edge, %if.end99.if.end122_crit_edge, %if.end99.if.end122_crit_edge334, %if.end99.if.end122_crit_edge335
  %rem = urem i32 %pbuf_tail.1, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp123 = icmp eq i32 %rem, 0
  br i1 %cmp123, label %if.then125, label %if.end122.if.end130_crit_edge

if.end122.if.end130_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end130

if.then125:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %pbuf_tail.1, -8
  %102 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %buf_addr, align 4
  %add.ptr127 = getelementptr i8, ptr %103, i32 8
  store ptr %add.ptr127, ptr %buf_addr, align 4
  %104 = ptrtoint ptr %pkt_offset to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %pkt_offset, align 1
  %dec129 = add i8 %105, -1
  store i8 %dec129, ptr %pkt_offset, align 1
  br label %if.end130

if.end130:                                        ; preds = %if.then125, %if.end122.if.end130_crit_edge
  %pbuf_tail.2 = phi i32 [ %sub, %if.then125 ], [ %pbuf_tail.1, %if.end122.if.end130_crit_edge ]
  %106 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %buf_addr, align 4
  %last_txcmdsz133 = getelementptr inbounds %struct.xmit_frame, ptr %call6, i32 0, i32 1, i32 9
  %108 = ptrtoint ptr %last_txcmdsz133 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %last_txcmdsz133, align 4
  tail call fastcc void @update_txdesc(ptr noundef nonnull %call6, ptr noundef %107, i32 noundef %109)
  %call135 = tail call i32 @rtw_get_ff_hwaddr(ptr noundef nonnull %call6) #5
  %call136 = tail call i32 @rtw_write_port(ptr noundef %adapt, i32 noundef %call135, i32 noundef %pbuf_tail.2, ptr noundef %pxmitbuf.addr.0) #5
  %110 = ptrtoint ptr %agg_num to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %agg_num, align 4
  %conv138 = zext i8 %111 to i32
  %mul139.neg = mul nsw i32 %conv138, -32
  %sub140 = add i32 %mul139.neg, %pbuf_tail.2
  %112 = ptrtoint ptr %pkt_offset to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %pkt_offset, align 1
  %conv142 = sext i8 %113 to i32
  %mul143.neg = mul nsw i32 %conv142, -8
  %sub144 = add i32 %sub140, %mul143.neg
  tail call void @rtw_count_tx_stats(ptr noundef %adapt, ptr noundef nonnull %call6, i32 noundef %sub144) #5
  %call145 = tail call i32 @rtw_free_xmitframe(ptr noundef %pxmitpriv, ptr noundef nonnull %call6) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %if.then8, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end130 ], [ 0, %if.then8 ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_xmitbuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_xmitframe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_dequeue_xframe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_xmitbuf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_xmitframe_coalesce(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_xmit_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_txdesc(ptr noundef readonly %pxmitframe, ptr noundef %pmem, i32 noundef %sz) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %padapter = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 4
  %0 = ptrtoint ptr %padapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %padapter, align 4
  %2 = getelementptr inbounds i8, ptr %pmem, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 28)
  %and = and i32 %sz, 65535
  %4 = tail call i32 @llvm.bswap.i32(i32 %and)
  %or6 = or i32 %4, 8332
  %5 = ptrtoint ptr %pmem to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or6, ptr %pmem, align 4
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %6 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ra, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or8 = or i32 %4, 8333
  %9 = ptrtoint ptr %pmem to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or8, ptr %pmem, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pkt_offset = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 8
  %10 = ptrtoint ptr %pkt_offset to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pkt_offset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp sgt i8 %11, 0
  br i1 %cmp, label %if.then11, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv91 = zext i8 %11 to i32
  %12 = shl nuw nsw i32 %conv91, 2
  %13 = and i32 %12, 124
  %txdw1 = getelementptr inbounds %struct.tx_desc, ptr %pmem, i32 0, i32 1
  %14 = ptrtoint ptr %txdw1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %txdw1, align 4
  %or16 = or i32 %15, %13
  store i32 %or16, ptr %txdw1, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.end.if.end17_crit_edge
  %txdw4 = getelementptr %struct.tx_desc, ptr %pmem, i32 0, i32 4
  %16 = ptrtoint ptr %txdw4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %txdw4, align 4
  %or18 = or i32 %17, 65536
  store i32 %or18, ptr %txdw4, align 4
  %frame_tag = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 3
  %18 = ptrtoint ptr %frame_tag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_tag, align 4
  %and19 = and i32 %19, 15
  %20 = zext i32 %and19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %and19, label %do.body191 [
    i32 1, label %if.then22
    i32 3, label %if.then131
    i32 8, label %do.body
  ]

if.then22:                                        ; preds = %if.end17
  %mac_id = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 18
  %21 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mac_id, align 4
  %23 = and i8 %22, 63
  %and24 = zext i8 %23 to i32
  %24 = shl nuw nsw i32 %and24, 24
  %txdw125 = getelementptr inbounds %struct.tx_desc, ptr %pmem, i32 0, i32 1
  %25 = ptrtoint ptr %txdw125 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %txdw125, align 4
  %or26 = or i32 %24, %26
  store i32 %or26, ptr %txdw125, align 4
  %qsel27 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 35
  %27 = ptrtoint ptr %qsel27 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %qsel27, align 1
  %and29 = zext i8 %28 to i32
  %shl30 = shl nuw nsw i32 %and29, 16
  %and31 = and i32 %shl30, 2031616
  %or33 = or i32 %and31, %or26
  store i32 %or33, ptr %txdw125, align 4
  %raid = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 27
  %29 = ptrtoint ptr %raid to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %raid, align 1
  %conv34 = zext i8 %30 to i32
  %shl35 = shl nuw nsw i32 %conv34, 8
  %and36 = and i32 %shl35, 3840
  %or38 = or i32 %and36, %or33
  store i32 %or38, ptr %txdw125, align 4
  %encrypt.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 11
  %31 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %encrypt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp.not.i = icmp eq i8 %32, 0
  br i1 %cmp.not.i, label %if.then22.fill_txdesc_sectype.exit_crit_edge, label %land.lhs.true.i

if.then22.fill_txdesc_sectype.exit_crit_edge:     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_txdesc_sectype.exit

land.lhs.true.i:                                  ; preds = %if.then22
  %bswenc.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %bswenc.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bswenc.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.fill_txdesc_sectype.exit_crit_edge

land.lhs.true.i.fill_txdesc_sectype.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_txdesc_sectype.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %switch.tableidx = add i8 %32, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %35 = icmp ult i8 %switch.tableidx, 5
  br i1 %35, label %switch.lookup, label %if.then.i.fill_txdesc_sectype.exit_crit_edge

if.then.i.fill_txdesc_sectype.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_txdesc_sectype.exit

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.update_txdesc, i32 0, i32 %36
  %37 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load = load i32, ptr %switch.gep, align 4
  %or12.i = or i32 %switch.load, %or38
  %38 = ptrtoint ptr %txdw125 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or12.i, ptr %txdw125, align 4
  %txdw213.i = getelementptr inbounds %struct.tx_desc, ptr %pmem, i32 0, i32 2
  %39 = ptrtoint ptr %txdw213.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %txdw213.i, align 4
  %or4.i = or i32 %40, 28672
  store i32 %or4.i, ptr %txdw213.i, align 4
  br label %fill_txdesc_sectype.exit

fill_txdesc_sectype.exit:                         ; preds = %switch.lookup, %if.then.i.fill_txdesc_sectype.exit_crit_edge, %land.lhs.true.i.fill_txdesc_sectype.exit_crit_edge, %if.then22.fill_txdesc_sectype.exit_crit_edge
  %ampdu_en = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 31
  %41 = ptrtoint ptr %ampdu_en to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ampdu_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not = icmp eq i8 %42, 0
  %txdw241 = getelementptr inbounds %struct.tx_desc, ptr %pmem, i32 0, i32 2
  %43 = ptrtoint ptr %txdw241 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %txdw241, align 4
  br i1 %tobool.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %fill_txdesc_sectype.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or40 = or i32 %44, 1048576
  %45 = ptrtoint ptr %txdw241 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or40, ptr %txdw241, align 4
  %txdw6 = getelementptr inbounds %struct.tx_desc, ptr %pmem, i32 0, i32 6
  %46 = ptrtoint ptr %txdw6 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 16279142, ptr %txdw6, align 4
  br label %if.end43

if.else:                                          ; preds = %fill_txdesc_sectype.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or42 = or i32 %44, 256
  %47 = ptrtoint ptr %txdw241 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or42, ptr %txdw241, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then39
  %seqnum = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 5
  %48 = ptrtoint ptr %seqnum to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %seqnum, align 2
  %conv44 = zext i16 %49 to i32
  %shl45 = shl nuw i32 %conv44, 16
  %and46 = and i32 %shl45, 268369920
  %50 = tail call i32 @llvm.bswap.i32(i32 %and46)
  %txdw3 = getelementptr inbounds %struct.tx_desc, ptr %pmem, i32 0, i32 3
  %51 = ptrtoint ptr %txdw3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %txdw3, align 4
  %or47 = or i32 %50, %52
  store i32 %or47, ptr %txdw3, align 4
  %qos_en = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 25
  %53 = ptrtoint ptr %qos_en to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %qos_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool48.not = icmp eq i8 %54, 0
  br i1 %tobool48.not, label %if.end43.if.end52_crit_edge, label %if.then49

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %or51 = or i32 %17, 1073807360
  %55 = ptrtoint ptr %txdw4 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or51, ptr %txdw4, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end43.if.end52_crit_edge
  %agg_num = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 7
  %56 = ptrtoint ptr %agg_num to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %agg_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp54 = icmp ugt i8 %57, 1
  br i1 %cmp54, label %if.then56, label %if.end52.if.end62_crit_edge

if.end52.if.end62_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %conv53 = zext i8 %57 to i32
  %txdw5 = getelementptr inbounds %struct.tx_desc, ptr %pmem, i32 0, i32 5
  %58 = ptrtoint ptr %txdw5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %txdw5, align 4
  %or61 = or i32 %59, %conv53
  store i32 %or61, ptr %txdw5, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then56, %if.end52.if.end62_crit_edge
  %ether_type = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 4
  %60 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %ether_type, align 4
  %62 = zext i16 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %61, label %land.lhs.true75 [
    i16 -30578, label %if.end62.if.else111_crit_edge
    i16 2054, label %if.end62.if.else111_crit_edge13
    i16 -30540, label %if.end62.if.else111_crit_edge14
  ]

if.end62.if.else111_crit_edge14:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else111

if.end62.if.else111_crit_edge13:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else111

if.end62.if.else111_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else111

land.lhs.true75:                                  ; preds = %if.end62
  %dhcp_pkt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 3
  %63 = ptrtoint ptr %dhcp_pkt to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %dhcp_pkt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %64)
  %cmp77.not = icmp eq i8 %64, 1
  br i1 %cmp77.not, label %land.lhs.true75.if.else111_crit_edge, label %if.then79

land.lhs.true75.if.else111_crit_edge:             ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else111

if.then79:                                        ; preds = %land.lhs.true75
  %vcs_mode.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %65 = ptrtoint ptr %vcs_mode.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %vcs_mode.i, align 1
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %66, label %if.then79.sw.epilog.i_crit_edge [
    i8 1, label %if.then79.sw.epilogthread-pre-split.i_crit_edge
    i8 2, label %sw.bb1.i
  ]

if.then79.sw.epilogthread-pre-split.i_crit_edge:  ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilogthread-pre-split.i

if.then79.sw.epilog.i_crit_edge:                  ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilogthread-pre-split.i

sw.epilogthread-pre-split.i:                      ; preds = %sw.bb1.i, %if.then79.sw.epilogthread-pre-split.i_crit_edge
  %.sink47.i = phi i32 [ 524288, %sw.bb1.i ], [ 1048576, %if.then79.sw.epilogthread-pre-split.i_crit_edge ]
  %68 = ptrtoint ptr %txdw4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %txdw4, align 4
  %or.i = or i32 %69, %.sink47.i
  store i32 %or.i, ptr %txdw4, align 4
  %70 = ptrtoint ptr %vcs_mode.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %.pr.i = load i8, ptr %vcs_mode.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilogthread-pre-split.i, %if.then79.sw.epilog.i_crit_edge
  %71 = phi i8 [ %.pr.i, %sw.epilogthread-pre-split.i ], [ %66, %if.then79.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i2 = icmp eq i8 %71, 0
  br i1 %tobool.not.i2, label %sw.epilog.i.fill_txdesc_vcs.exit_crit_edge, label %if.then.i3

sw.epilog.i.fill_txdesc_vcs.exit_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_txdesc_vcs.exit

if.then.i3:                                       ; preds = %sw.epilog.i
  %72 = ptrtoint ptr %txdw4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %txdw4, align 4
  %or5.i = or i32 %73, 2097152
  store i32 %or5.i, ptr %txdw4, align 4
  %ht_en.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 26
  %74 = ptrtoint ptr %ht_en.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ht_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool6.not.i = icmp eq i8 %75, 0
  br i1 %tobool6.not.i, label %if.then.i3.fill_txdesc_vcs.exit_crit_edge, label %if.then7.i

if.then.i3.fill_txdesc_vcs.exit_crit_edge:        ; preds = %if.then.i3
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_txdesc_vcs.exit

if.then7.i:                                       ; preds = %if.then.i3
  %bwmode.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 28
  %76 = ptrtoint ptr %bwmode.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bwmode.i, align 2
  %78 = shl i8 %77, 3
  %79 = and i8 %78, 8
  %80 = zext i8 %79 to i32
  %or10.i = or i32 %or5.i, %80
  %81 = ptrtoint ptr %txdw4 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or10.i, ptr %txdw4, align 4
  %ch_offset.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 29
  %82 = ptrtoint ptr %ch_offset.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ch_offset.i, align 1
  %84 = zext i8 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %83, label %if.else28.i [
    i8 1, label %if.then7.i.if.end33.sink.split.i_crit_edge
    i8 2, label %if.then19.i
    i8 0, label %if.then7.i.fill_txdesc_vcs.exit_crit_edge
  ]

if.then7.i.fill_txdesc_vcs.exit_crit_edge:        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_txdesc_vcs.exit

if.then7.i.if.end33.sink.split.i_crit_edge:       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.sink.split.i

if.then19.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.sink.split.i

if.else28.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.sink.split.i

if.end33.sink.split.i:                            ; preds = %if.else28.i, %if.then19.i, %if.then7.i.if.end33.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 32, %if.then19.i ], [ 48, %if.else28.i ], [ 16, %if.then7.i.if.end33.sink.split.i_crit_edge ]
  %or20.i = or i32 %.sink.i, %or10.i
  %85 = ptrtoint ptr %txdw4 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or20.i, ptr %txdw4, align 4
  br label %fill_txdesc_vcs.exit

fill_txdesc_vcs.exit:                             ; preds = %if.end33.sink.split.i, %if.then7.i.fill_txdesc_vcs.exit_crit_edge, %if.then.i3.fill_txdesc_vcs.exit_crit_edge, %sw.epilog.i.fill_txdesc_vcs.exit_crit_edge
  %ht_en.i4 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 26
  %86 = ptrtoint ptr %ht_en.i4 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %ht_en.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i5 = icmp eq i8 %87, 0
  br i1 %tobool.not.i5, label %fill_txdesc_vcs.exit.fill_txdesc_phy.exit_crit_edge, label %if.then.i9

fill_txdesc_vcs.exit.fill_txdesc_phy.exit_crit_edge: ; preds = %fill_txdesc_vcs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_txdesc_phy.exit

if.then.i9:                                       ; preds = %fill_txdesc_vcs.exit
  %bwmode.i6 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 28
  %88 = ptrtoint ptr %bwmode.i6 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bwmode.i6, align 2
  %90 = shl i8 %89, 1
  %91 = and i8 %90, 2
  %92 = zext i8 %91 to i32
  %93 = ptrtoint ptr %txdw4 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %txdw4, align 4
  %or.i7 = or i32 %94, %92
  store i32 %or.i7, ptr %txdw4, align 4
  %ch_offset.i8 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 29
  %95 = ptrtoint ptr %ch_offset.i8 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %ch_offset.i8, align 1
  %97 = zext i8 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %96, label %if.else19.i [
    i8 1, label %if.then.i9.if.end23.sink.split.i_crit_edge
    i8 2, label %if.then10.i
    i8 0, label %if.then.i9.fill_txdesc_phy.exit_crit_edge
  ]

if.then.i9.fill_txdesc_phy.exit_crit_edge:        ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_txdesc_phy.exit

if.then.i9.if.end23.sink.split.i_crit_edge:       ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.sink.split.i

if.then10.i:                                      ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.sink.split.i

if.else19.i:                                      ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.else19.i, %if.then10.i, %if.then.i9.if.end23.sink.split.i_crit_edge
  %.sink.i10 = phi i32 [ 12288, %if.else19.i ], [ 8192, %if.then10.i ], [ 4096, %if.then.i9.if.end23.sink.split.i_crit_edge ]
  %or5.i11 = or i32 %.sink.i10, %or.i7
  %98 = ptrtoint ptr %txdw4 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or5.i11, ptr %txdw4, align 4
  br label %fill_txdesc_phy.exit

fill_txdesc_phy.exit:                             ; preds = %if.end23.sink.split.i, %if.then.i9.fill_txdesc_phy.exit_crit_edge, %fill_txdesc_vcs.exit.fill_txdesc_phy.exit_crit_edge
  %99 = ptrtoint ptr %txdw4 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %txdw4, align 4
  %or83 = or i32 %100, 134217728
  store i32 %or83, ptr %txdw4, align 4
  %txdw584 = getelementptr inbounds %struct.tx_desc, ptr %pmem, i32 0, i32 5
  %101 = ptrtoint ptr %txdw584 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %txdw584, align 4
  %or85 = or i32 %102, 16711936
  store i32 %or85, ptr %txdw584, align 4
  %103 = ptrtoint ptr %ht_en.i4 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %ht_en.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool86.not = icmp eq i8 %104, 0
  br i1 %tobool86.not, label %fill_txdesc_phy.exit.if.end95_crit_edge, label %if.then87

fill_txdesc_phy.exit.if.end95_crit_edge:          ; preds = %fill_txdesc_phy.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

if.then87:                                        ; preds = %fill_txdesc_phy.exit
  %odmpriv = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 19, i32 38
  %105 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %mac_id, align 4
  %call89 = tail call zeroext i8 @ODM_RA_GetShortGI_8188E(ptr noundef %odmpriv, i8 noundef zeroext %106) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call89)
  %tobool90.not = icmp eq i8 %call89, 0
  br i1 %tobool90.not, label %if.then87.if.end95_crit_edge, label %if.then91

if.then87.if.end95_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

if.then91:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  %107 = ptrtoint ptr %txdw584 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %txdw584, align 4
  %or93 = or i32 %108, 1073741824
  store i32 %or93, ptr %txdw584, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.then87.if.end95_crit_edge, %fill_txdesc_phy.exit.if.end95_crit_edge
  %odmpriv96 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 19, i32 38
  %109 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %mac_id, align 4
  %call98 = tail call zeroext i8 @ODM_RA_GetDecisionRate_8188E(ptr noundef %odmpriv96, i8 noundef zeroext %110) #5
  %111 = and i8 %call98, 63
  %and100 = zext i8 %111 to i32
  %112 = shl nuw nsw i32 %and100, 24
  %113 = ptrtoint ptr %txdw584 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %txdw584, align 4
  %or102 = or i32 %112, %114
  store i32 %or102, ptr %txdw584, align 4
  %115 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %mac_id, align 4
  %call105 = tail call zeroext i8 @ODM_RA_GetHwPwrStatus_8188E(ptr noundef %odmpriv96, i8 noundef zeroext %116) #5
  %117 = and i8 %call105, 7
  %and107 = zext i8 %117 to i32
  %shl108 = shl nuw nsw i32 %and107, 15
  %118 = tail call i32 @llvm.bswap.i32(i32 %shl108)
  %119 = ptrtoint ptr %txdw4 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %txdw4, align 4
  %or110 = or i32 %118, %120
  store i32 %or110, ptr %txdw4, align 4
  br label %if.end221

if.else111:                                       ; preds = %land.lhs.true75.if.else111_crit_edge, %if.end62.if.else111_crit_edge, %if.end62.if.else111_crit_edge13, %if.end62.if.else111_crit_edge14
  %txdw2112 = getelementptr inbounds %struct.tx_desc, ptr %pmem, i32 0, i32 2
  %121 = ptrtoint ptr %txdw2112 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %txdw2112, align 4
  %or113 = or i32 %122, 256
  store i32 %or113, ptr %txdw2112, align 4
  %preamble_mode = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 17, i32 16
  %123 = ptrtoint ptr %preamble_mode to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %preamble_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %124)
  %cmp115 = icmp eq i8 %124, 3
  br i1 %cmp115, label %if.then117, label %if.else111.if.end120_crit_edge

if.else111.if.end120_crit_edge:                   ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.then117:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #7
  %125 = ptrtoint ptr %txdw4 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %txdw4, align 4
  %or119 = or i32 %126, 1
  store i32 %or119, ptr %txdw4, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then117, %if.else111.if.end120_crit_edge
  %tx_rate = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 22
  %127 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %tx_rate, align 1
  %call121 = tail call zeroext i8 @MRateToHwRate(i8 noundef zeroext %128) #5
  %conv122 = zext i8 %call121 to i32
  %129 = shl nuw i32 %conv122, 24
  %txdw5123 = getelementptr inbounds %struct.tx_desc, ptr %pmem, i32 0, i32 5
  %130 = ptrtoint ptr %txdw5123 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %txdw5123, align 4
  %or124 = or i32 %129, %131
  store i32 %or124, ptr %txdw5123, align 4
  br label %if.end221

if.then131:                                       ; preds = %if.end17
  %mac_id132 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 18
  %132 = ptrtoint ptr %mac_id132 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %mac_id132, align 4
  %134 = and i8 %133, 63
  %and134 = zext i8 %134 to i32
  %135 = shl nuw nsw i32 %and134, 24
  %txdw1135 = getelementptr inbounds %struct.tx_desc, ptr %pmem, i32 0, i32 1
  %136 = ptrtoint ptr %txdw1135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %txdw1135, align 4
  %or136 = or i32 %135, %137
  store i32 %or136, ptr %txdw1135, align 4
  %qsel137 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 35
  %138 = ptrtoint ptr %qsel137 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %qsel137, align 1
  %and139 = zext i8 %139 to i32
  %shl140 = shl nuw nsw i32 %and139, 16
  %and141 = and i32 %shl140, 2031616
  %or143 = or i32 %and141, %or136
  store i32 %or143, ptr %txdw1135, align 4
  %raid144 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 27
  %140 = ptrtoint ptr %raid144 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %raid144, align 1
  %conv145 = zext i8 %141 to i32
  %shl146 = shl nuw nsw i32 %conv145, 8
  %and147 = and i32 %shl146, 3840
  %or149 = or i32 %and147, %or143
  store i32 %or149, ptr %txdw1135, align 4
  %ack_report = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 9
  %142 = ptrtoint ptr %ack_report to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %ack_report, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool150.not = icmp eq i8 %143, 0
  br i1 %tobool150.not, label %if.then131.if.end154_crit_edge, label %if.then151

if.then131.if.end154_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end154

if.then151:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #7
  %txdw2152 = getelementptr inbounds %struct.tx_desc, ptr %pmem, i32 0, i32 2
  %144 = ptrtoint ptr %txdw2152 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %txdw2152, align 4
  %or153 = or i32 %145, 2048
  store i32 %or153, ptr %txdw2152, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %if.then131.if.end154_crit_edge
  %seqnum155 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 5
  %146 = ptrtoint ptr %seqnum155 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %seqnum155, align 2
  %conv156 = zext i16 %147 to i32
  %shl157 = shl nuw i32 %conv156, 16
  %and158 = and i32 %shl157, 268369920
  %148 = tail call i32 @llvm.bswap.i32(i32 %and158)
  %txdw3159 = getelementptr inbounds %struct.tx_desc, ptr %pmem, i32 0, i32 3
  %149 = ptrtoint ptr %txdw3159 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %txdw3159, align 4
  %or160 = or i32 %148, %150
  store i32 %or160, ptr %txdw3159, align 4
  %txdw5161 = getelementptr inbounds %struct.tx_desc, ptr %pmem, i32 0, i32 5
  %151 = ptrtoint ptr %txdw5161 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %txdw5161, align 4
  %or162 = or i32 %152, 512
  store i32 %or162, ptr %txdw5161, align 4
  %retry_ctrl = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 39
  %153 = ptrtoint ptr %retry_ctrl to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %retry_ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool163.not = icmp eq i8 %154, 0
  %storemerge.v = select i1 %tobool163.not, i32 12800, i32 6656
  %storemerge = or i32 %storemerge.v, %152
  %155 = ptrtoint ptr %txdw5161 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %storemerge, ptr %txdw5161, align 4
  %tx_rate171 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 22
  %156 = ptrtoint ptr %tx_rate171 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %tx_rate171, align 1
  %call172 = tail call zeroext i8 @MRateToHwRate(i8 noundef zeroext %157) #5
  %conv173 = zext i8 %call172 to i32
  %158 = shl nuw i32 %conv173, 24
  %159 = ptrtoint ptr %txdw5161 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %txdw5161, align 4
  %or175 = or i32 %158, %160
  store i32 %or175, ptr %txdw5161, align 4
  br label %if.end221

do.body:                                          ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %161 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %161)
  %cmp182 = icmp ugt i32 %161, 4
  br i1 %cmp182, label %do.end, label %do.body.if.end221_crit_edge

do.body.if.end221_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end221

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %if.end221

do.body191:                                       ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %162 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %162)
  %cmp192 = icmp ugt i32 %162, 4
  br i1 %cmp192, label %do.end197, label %do.body191.do.end203_crit_edge

do.body191.do.end203_crit_edge:                   ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end203

do.end197:                                        ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #7
  %call200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %19) #8
  br label %do.end203

do.end203:                                        ; preds = %do.end197, %do.body191.do.end203_crit_edge
  %txdw1204 = getelementptr inbounds %struct.tx_desc, ptr %pmem, i32 0, i32 1
  %163 = ptrtoint ptr %txdw1204 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %txdw1204, align 4
  %or207 = or i32 %164, 67110400
  store i32 %or207, ptr %txdw1204, align 4
  %seqnum208 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 5
  %165 = ptrtoint ptr %seqnum208 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %seqnum208, align 2
  %conv209 = zext i16 %166 to i32
  %shl210 = shl nuw i32 %conv209, 16
  %and211 = and i32 %shl210, 268369920
  %167 = tail call i32 @llvm.bswap.i32(i32 %and211)
  %txdw3212 = getelementptr inbounds %struct.tx_desc, ptr %pmem, i32 0, i32 3
  %168 = ptrtoint ptr %txdw3212 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %txdw3212, align 4
  %or213 = or i32 %167, %169
  store i32 %or213, ptr %txdw3212, align 4
  %tx_rate214 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 22
  %170 = ptrtoint ptr %tx_rate214 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %tx_rate214, align 1
  %call215 = tail call zeroext i8 @MRateToHwRate(i8 noundef zeroext %171) #5
  %conv216 = zext i8 %call215 to i32
  %172 = shl nuw i32 %conv216, 24
  %txdw5217 = getelementptr inbounds %struct.tx_desc, ptr %pmem, i32 0, i32 5
  %173 = ptrtoint ptr %txdw5217 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %txdw5217, align 4
  %or218 = or i32 %172, %174
  store i32 %or218, ptr %txdw5217, align 4
  br label %if.end221

if.end221:                                        ; preds = %do.end203, %do.end, %do.body.if.end221_crit_edge, %if.end154, %if.end120, %if.end95
  %qos_en222 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 25
  %175 = ptrtoint ptr %qos_en222 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %qos_en222, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool223.not = icmp eq i8 %176, 0
  br i1 %tobool223.not, label %if.then224, label %if.end221.if.end229_crit_edge

if.end221.if.end229_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end229

if.then224:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #7
  %txdw3225 = getelementptr inbounds %struct.tx_desc, ptr %pmem, i32 0, i32 3
  %177 = ptrtoint ptr %txdw3225 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %txdw3225, align 4
  %or226 = or i32 %178, 128
  store i32 %or226, ptr %txdw3225, align 4
  %179 = ptrtoint ptr %txdw4 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %txdw4, align 4
  %or228 = or i32 %180, -2147483648
  store i32 %or228, ptr %txdw4, align 4
  br label %if.end229

if.end229:                                        ; preds = %if.then224, %if.end221.if.end229_crit_edge
  %odmpriv230 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 19, i32 38
  %mac_id231 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 18
  %181 = ptrtoint ptr %mac_id231 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %mac_id231, align 4
  tail call void @ODM_SetTxAntByTxInfo_88E(ptr noundef %odmpriv230, ptr noundef %pmem, i8 noundef zeroext %182) #5
  %txdw7.i = getelementptr %struct.tx_desc, ptr %pmem, i32 0, i32 7
  %183 = ptrtoint ptr %txdw7.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %txdw7.i, align 4
  %and.i = and i32 %184, 65535
  %185 = ptrtoint ptr %pmem to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %pmem, align 2
  %add.ptr.1.i = getelementptr i16, ptr %pmem, i32 1
  %187 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %add.ptr.1.i, align 2
  %add.ptr.2.i = getelementptr i16, ptr %pmem, i32 2
  %189 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %add.ptr.2.i, align 2
  %add.ptr.3.i = getelementptr i16, ptr %pmem, i32 3
  %191 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %add.ptr.3.i, align 2
  %add.ptr.4.i = getelementptr i16, ptr %pmem, i32 4
  %193 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %add.ptr.4.i, align 2
  %add.ptr.5.i = getelementptr i16, ptr %pmem, i32 5
  %195 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %add.ptr.5.i, align 2
  %add.ptr.6.i = getelementptr i16, ptr %pmem, i32 6
  %197 = ptrtoint ptr %add.ptr.6.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %add.ptr.6.i, align 2
  %add.ptr.7.i = getelementptr i16, ptr %pmem, i32 7
  %199 = ptrtoint ptr %add.ptr.7.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %add.ptr.7.i, align 2
  %201 = ptrtoint ptr %txdw4 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %txdw4, align 2
  %add.ptr.9.i = getelementptr i16, ptr %pmem, i32 9
  %203 = ptrtoint ptr %add.ptr.9.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %add.ptr.9.i, align 2
  %add.ptr.10.i = getelementptr i16, ptr %pmem, i32 10
  %205 = ptrtoint ptr %add.ptr.10.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %add.ptr.10.i, align 2
  %add.ptr.11.i = getelementptr i16, ptr %pmem, i32 11
  %207 = ptrtoint ptr %add.ptr.11.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %add.ptr.11.i, align 2
  %add.ptr.12.i = getelementptr i16, ptr %pmem, i32 12
  %209 = ptrtoint ptr %add.ptr.12.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %add.ptr.12.i, align 2
  %add.ptr.13.i = getelementptr i16, ptr %pmem, i32 13
  %211 = ptrtoint ptr %add.ptr.13.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %add.ptr.13.i, align 2
  %213 = trunc i32 %184 to i16
  %214 = xor i16 %186, %213
  %215 = xor i16 %214, %188
  %216 = xor i16 %215, %190
  %217 = xor i16 %216, %192
  %218 = xor i16 %217, %194
  %219 = xor i16 %218, %196
  %220 = xor i16 %219, %198
  %221 = xor i16 %220, %200
  %222 = xor i16 %221, %202
  %223 = xor i16 %222, %204
  %224 = xor i16 %223, %206
  %225 = xor i16 %224, %208
  %226 = xor i16 %225, %210
  %227 = xor i16 %226, %212
  %228 = tail call i16 @llvm.bswap.i16(i16 %227) #5
  %xor.15.i = zext i16 %228 to i32
  %229 = tail call i32 @llvm.bswap.i32(i32 %xor.15.i) #5
  %or.i12 = or i32 %229, %and.i
  %230 = ptrtoint ptr %txdw7.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %or.i12, ptr %txdw7.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_issue_addbareq_cmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_ff_hwaddr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write_port(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_count_tx_stats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8188eu_mgnt_xmit(ptr noundef %adapt, ptr noundef %pmgntframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rtw_dump_xframe(ptr noundef %adapt, ptr noundef %pmgntframe)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw_dump_xframe(ptr noundef %adapt, ptr noundef %pxmitframe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pxmitbuf1 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 6
  %0 = ptrtoint ptr %pxmitbuf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pxmitbuf1, align 4
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 9
  %frame_tag = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 3
  %2 = ptrtoint ptr %frame_tag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frame_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ether_type = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ether_type, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %5, label %land.lhs.true17 [
    i16 2054, label %land.lhs.true.if.end_crit_edge
    i16 -30578, label %land.lhs.true.if.end_crit_edge109
    i16 -30540, label %land.lhs.true.if.end_crit_edge110
  ]

land.lhs.true.if.end_crit_edge110:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.if.end_crit_edge109:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true17:                                  ; preds = %land.lhs.true
  %dhcp_pkt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %dhcp_pkt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dhcp_pkt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp20.not = icmp eq i8 %8, 1
  br i1 %cmp20.not, label %land.lhs.true17.if.end_crit_edge, label %if.then

land.lhs.true17.if.end_crit_edge:                 ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw_issue_addbareq_cmd(ptr noundef %adapt, ptr noundef %pxmitframe) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true17.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %land.lhs.true.if.end_crit_edge109, %land.lhs.true.if.end_crit_edge110, %entry.if.end_crit_edge
  %nr_frags = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 10
  %9 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nr_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp2399.not = icmp eq i8 %10, 0
  br i1 %cmp2399.not, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call55106 = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef %pxmitframe) #5
  br label %if.end59

for.body.lr.ph:                                   ; preds = %if.end
  %conv2298 = zext i8 %10 to i32
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 5
  %11 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf_addr, align 4
  %frag_len = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 9, i32 11
  %sw_encrypt = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 12, i32 26
  %icv_len = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 13
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %for.body.lr.ph
  %conv22104 = phi i32 [ %conv2298, %for.body.lr.ph ], [ %conv22, %if.end40.for.body_crit_edge ]
  %mem_addr.0103 = phi ptr [ %12, %for.body.lr.ph ], [ %22, %if.end40.for.body_crit_edge ]
  %t.0102 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end40.for.body_crit_edge ]
  %inner_ret.0101 = phi i32 [ 1, %for.body.lr.ph ], [ %call49, %if.end40.for.body_crit_edge ]
  %ret.0100 = phi i32 [ 1, %for.body.lr.ph ], [ %ret.1, %if.end40.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inner_ret.0101)
  %cmp25.not = icmp eq i32 %inner_ret.0101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0100)
  %cmp28 = icmp eq i32 %ret.0100, 1
  %spec.store.select = select i1 %cmp28, i32 0, i32 %ret.0100
  %ret.1 = select i1 %cmp25.not, i32 %ret.0100, i32 %spec.store.select
  %sub = add nsw i32 %conv22104, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %t.0102, i32 %sub)
  %cmp34.not = icmp eq i32 %t.0102, %sub
  br i1 %cmp34.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %for.body
  %13 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frag_len, align 8
  %sub37 = add i32 %14, -4
  %15 = ptrtoint ptr %sw_encrypt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sw_encrypt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %cond.false, label %if.then36.cond.end_crit_edge

if.then36.cond.end_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %icv_len, align 1
  %conv38 = zext i8 %18 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then36.cond.end_crit_edge
  %cond = phi i32 [ %conv38, %cond.false ], [ 0, %if.then36.cond.end_crit_edge ]
  %sub39 = sub i32 %sub37, %cond
  br label %if.end40

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_txcmdsz, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else, %cond.end
  %sz.0 = phi i32 [ %sub39, %cond.end ], [ %20, %if.else ]
  tail call fastcc void @update_txdesc(ptr noundef %pxmitframe, ptr noundef %mem_addr.0103, i32 noundef %sz.0)
  %add46 = add i32 %sz.0, 40
  %call48 = tail call i32 @rtw_get_ff_hwaddr(ptr noundef %pxmitframe) #5
  %call49 = tail call i32 @rtw_write_port(ptr noundef %adapt, i32 noundef %call48, i32 noundef %add46, ptr noundef %1) #5
  tail call void @rtw_count_tx_stats(ptr noundef %adapt, ptr noundef %pxmitframe, i32 noundef %sz.0) #5
  %add.ptr50 = getelementptr i8, ptr %mem_addr.0103, i32 %add46
  %21 = ptrtoint ptr %add.ptr50 to i32
  %and = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp51.not = icmp eq i32 %and, 0
  %add5496 = select i1 %cmp51.not, i32 0, i32 4
  %shr97 = add i32 %add5496, %21
  %shl = and i32 %shr97, -4
  %22 = inttoptr i32 %shl to ptr
  %inc = add nuw nsw i32 %t.0102, 1
  %23 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nr_frags, align 4
  %conv22 = zext i8 %24 to i32
  %cmp23 = icmp ult i32 %inc, %conv22
  br i1 %cmp23, label %if.end40.for.body_crit_edge, label %for.end

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end40
  %call55 = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef %pxmitframe) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.1)
  %cmp56.not = icmp eq i32 %ret.1, 1
  br i1 %cmp56.not, label %for.end.if.end59_crit_edge, label %if.then58

for.end.if.end59_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then58:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %sctx = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 9
  tail call void @rtw_sctx_done_err(ptr noundef %sctx, i32 noundef 1) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %for.end.if.end59_crit_edge, %for.end.thread
  %ret.0.lcssa108 = phi i32 [ 1, %for.end.thread ], [ %ret.1, %if.then58 ], [ 1, %for.end.if.end59_crit_edge ]
  ret i32 %ret.0.lcssa108
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8188eu_hal_xmit(ptr noundef %adapt, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %xmitpriv.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 9
  %attrib.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %xmitpriv.i) #5
  %call.i = tail call i32 @rtw_txframes_sta_ac_pending(ptr noundef %adapt, ptr noundef %attrib.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %entry.enqueue.i_crit_edge, label %if.end.i

entry.enqueue.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %enqueue.i

if.end.i:                                         ; preds = %entry
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %1, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.end3.i, label %if.end.i.enqueue.i_crit_edge

if.end.i.enqueue.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %enqueue.i

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call ptr @rtw_alloc_xmitbuf(ptr noundef %xmitpriv.i) #5
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end3.i.enqueue.i_crit_edge, label %if.end7.i

if.end3.i.enqueue.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %enqueue.i

if.end7.i:                                        ; preds = %if.end3.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv.i) #5
  %pxmitbuf9.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 6
  %2 = ptrtoint ptr %pxmitbuf9.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4.i, ptr %pxmitbuf9.i, align 4
  %pbuf.i = getelementptr inbounds %struct.xmit_buf, ptr %call4.i, i32 0, i32 3
  %3 = ptrtoint ptr %pbuf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pbuf.i, align 4
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 5
  %5 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %buf_addr.i, align 4
  %priv_data.i = getelementptr inbounds %struct.xmit_buf, ptr %call4.i, i32 0, i32 4
  %6 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pxmitframe, ptr %priv_data.i, align 4
  %pkt.i.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 2
  %7 = ptrtoint ptr %pkt.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pkt.i.i, align 4
  %call.i.i = tail call i32 @rtw_xmitframe_coalesce(ptr noundef %adapt, ptr noundef %8, ptr noundef %pxmitframe) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i.i, label %xmitframe_direct.exit.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %9 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp2.i.i = icmp ugt i32 %9, 4
  br i1 %cmp2.i.i, label %do.end.i.i, label %do.body.i.i.if.then12.i_crit_edge

do.body.i.i.if.then12.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #8
  br label %if.then12.i

xmitframe_direct.exit.i:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i.i = tail call fastcc i32 @rtw_dump_xframe(ptr noundef %adapt, ptr noundef %pxmitframe) #5
  br label %pre_xmitframe.exit

if.then12.i:                                      ; preds = %do.end.i.i, %do.body.i.i.if.then12.i_crit_edge
  %call13.i = tail call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv.i, ptr noundef nonnull %call4.i) #5
  %call14.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv.i, ptr noundef %pxmitframe) #5
  br label %pre_xmitframe.exit

enqueue.i:                                        ; preds = %if.end3.i.enqueue.i_crit_edge, %if.end.i.enqueue.i_crit_edge, %entry.enqueue.i_crit_edge
  %call16.i = tail call i32 @rtw_xmitframe_enqueue(ptr noundef %adapt, ptr noundef %pxmitframe) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.i)
  %cmp18.not.i = icmp eq i32 %call16.i, 1
  br i1 %cmp18.not.i, label %enqueue.i.pre_xmitframe.exit_crit_edge, label %if.then19.i

enqueue.i.pre_xmitframe.exit_crit_edge:           ; preds = %enqueue.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pre_xmitframe.exit

if.then19.i:                                      ; preds = %enqueue.i
  call void @__sanitizer_cov_trace_pc() #7
  %call20.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv.i, ptr noundef %pxmitframe) #5
  %tx_pkts.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 9, i32 17
  %10 = ptrtoint ptr %tx_pkts.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tx_pkts.i, align 8
  %dec.i = add i64 %11, -1
  store i64 %dec.i, ptr %tx_pkts.i, align 8
  %tx_drop.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 9, i32 18
  %12 = ptrtoint ptr %tx_drop.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_drop.i, align 8
  %inc.i = add i64 %13, 1
  store i64 %inc.i, ptr %tx_drop.i, align 8
  br label %pre_xmitframe.exit

pre_xmitframe.exit:                               ; preds = %if.then19.i, %enqueue.i.pre_xmitframe.exit_crit_edge, %if.then12.i, %xmitframe_direct.exit.i
  %retval.0.i = phi i32 [ 1, %if.then19.i ], [ 1, %if.then12.i ], [ 1, %xmitframe_direct.exit.i ], [ 0, %enqueue.i.pre_xmitframe.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ODM_RA_GetShortGI_8188E(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ODM_RA_GetDecisionRate_8188E(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ODM_RA_GetHwPwrStatus_8188E(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @MRateToHwRate(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_SetTxAntByTxInfo_88E(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sctx_done_err(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_txframes_sta_ac_pending(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_xmitframe_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/hal/rtl8188eu_xmit.c", i32 268, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @update_txdesc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @update_txdesc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/hal/rtl8188eu_xmit.c", i32 270, i32 3}
!8 = !{ptr @update_txdesc._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @update_txdesc._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/r8188eu/hal/rtl8188eu_xmit.c", i32 571, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @xmitframe_direct._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @xmitframe_direct._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
