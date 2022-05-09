; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/core/rtw_recv.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/core/rtw_recv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, %struct.__queue, i8, i8, i8, i8, i8, i16, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.2, i32 }
%struct.atomic_t = type { i32 }
%union.anon.2 = type { ptr }
%struct.sk_buff_head = type { %union.anon.3, i32, %struct.spinlock }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.signal_stat = type { i8, i8, i32, i32 }
%struct.recv_frame_hdr = type { %struct.list_head, ptr, ptr, ptr, i8, i32, %struct.rx_pkt_attrib, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rx_pkt_attrib = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, [2 x i32], %struct.phy_info }
%struct.phy_info = type { i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i16], [4 x i16], i8, i8, i8, i8, [4 x i8], [4 x i8], i8, i8 }
%union.recv_frame = type { %union.anon.132 }
%union.anon.132 = type { %struct.recv_frame_hdr }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.spinlock, %struct.registry_priv, %struct.eeprom_priv, ptr, i32, ptr, i32, %struct.hal_ops, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, %struct.rtw_wdev_priv, i32, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, i8, i32, i32, [6 x i8], ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.timer_list, %struct.atomic_t, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect_t, %struct.timer_list, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i8, i32 }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.wlan_bcn_info }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.ndis_802_11_conf, i32, [16 x i8], %struct.wlan_phy_info, i32, [768 x i8] }
%struct.ndis_802_11_conf = type { i32, i32, i32, i32 }
%struct.wlan_phy_info = type { i8, i8, i8, i8 }
%struct.wlan_bcn_info = type { i8, i32, i32, i32, i16, i8 }
%struct.qos_priv = type { i32 }
%struct.ht_priv = type { i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.rt_link_detect_t = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
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
%struct.HT_caps_element = type { %union.anon.129 }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, i8, ptr, %struct.mutex }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, i8, i8, i32, i32, i32, [32 x ptr], i16, i16, i16, %struct.wlan_acl_pool }
%struct.wlan_acl_pool = type { i32, i32, [16 x %struct.rtw_wlan_acl_node], %struct.__queue }
%struct.rtw_wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i8, i32, i32, [5 x %union.Keytype], [5 x %union.Keytype], [5 x %union.Keytype], %union.pn48, %union.pn48, i32, [6 x %union.Keytype], %union.pn48, %union.pn48, i32, i32, i32, i32, i32, i32, [512 x i8], i32, %struct.arc4_ctx, %struct.arc4_ctx, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.ndis_802_11_wep, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.rt_pmkid_list], i8, i8 }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.ndis_802_11_wep = type { i32, i32, i32, [16 x i8] }
%struct.rt_pmkid_list = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
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
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.dvobj_priv = type { ptr, i32, %struct.debug_priv, %struct.spinlock, [32 x i32], %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i32, ptr, %struct.cam_ctl_t, [32 x %struct.cam_entry_cache], [2 x i32], [4 x i32], [8 x i8], i8, %struct.atomic_t, %struct.atomic_t, %struct.pwrctrl_priv, %struct.rtw_traffic_statistics, %struct.sdio_data }
%struct.debug_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cam_ctl_t = type { %struct.spinlock, i64 }
%struct.cam_entry_cache = type { i16, [6 x i8], [16 x i8] }
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.work_struct, i8, %struct.work_struct, %struct.timer_list, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.timer_list, ptr, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i32] }
%struct.rtw_traffic_statistics = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32 }
%struct.sdio_data = type { i8, i8, i8, i32, ptr, ptr }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8, ptr, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %union.Keytype, %union.Keytype, i8 }

@_rtw_init_sta_recv_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&psta_recvpriv->lock\00", [43 x i8] zeroinitializer }, align 32
@_rtw_init_sta_recv_priv.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&psta_recvpriv->defrag_q.lock\00", [34 x i8] zeroinitializer }, align 32
@_rtw_init_recv_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&precvpriv->lock\00", [47 x i8] zeroinitializer }, align 32
@_rtw_init_recv_priv.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&precvpriv->free_recv_queue.lock\00", [63 x i8] zeroinitializer }, align 32
@_rtw_init_recv_priv.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&precvpriv->recv_pending_queue.lock\00", [60 x i8] zeroinitializer }, align 32
@_rtw_init_recv_priv.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"&precvpriv->uc_swdec_pending_queue.lock\00", [56 x i8] zeroinitializer }, align 32
@_rtw_init_recv_priv.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(&precvpriv->signal_stat_timer)\00", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rfc1042_header = external dso_local constant [6 x i8], align 1
@SNAP_ETH_TYPE_IPX = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\817", [30 x i8] zeroinitializer }, align 32
@SNAP_ETH_TYPE_APPLETALK_AARP = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\80\F3", [30 x i8] zeroinitializer }, align 32
@bridge_tunnel_header = external dso_local constant [6 x i8], align 1
@.str.12 = internal constant { [7 x i8], [25 x i8] } zeroinitializer, align 32
@ap2sta_data_frame.send_issue_deauth_time = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 8]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 8, i64 160, i64 192, i64 208]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 8, i64 160, i64 192, i64 208]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 8, i64 160, i64 192, i64 208]
@__sancov_gen_cov_switch_values.18 = internal global [7 x i64] [i64 5, i64 8, i64 4, i64 7, i64 11, i64 15, i64 127]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 80, i64 128]
@__sancov_gen_cov_switch_values.20 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.27 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 23, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 29, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 38, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 41, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 43, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 45, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 81, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"SNAP_ETH_TYPE_IPX\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 14, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [29 x i8] c"SNAP_ETH_TYPE_APPLETALK_AARP\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 15, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 681, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant [23 x i8] c"send_issue_deauth_time\00", align 1
@___asan_gen_.82 = private constant [45 x i8] c"../drivers/staging/rtl8723bs/core/rtw_recv.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 830, i32 26 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @_rtw_init_sta_recv_priv.__key, ptr @.str, ptr @_rtw_init_sta_recv_priv.__key.1, ptr @.str.2, ptr @_rtw_init_recv_priv.__key, ptr @.str.3, ptr @_rtw_init_recv_priv.__key.4, ptr @.str.5, ptr @_rtw_init_recv_priv.__key.6, ptr @.str.7, ptr @_rtw_init_recv_priv.__key.8, ptr @.str.9, ptr @_rtw_init_recv_priv.__key.10, ptr @.str.11, ptr @SNAP_ETH_TYPE_IPX, ptr @SNAP_ETH_TYPE_APPLETALK_AARP, ptr @.str.12, ptr @ap2sta_data_frame.send_issue_deauth_time], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_sta_recv_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_sta_recv_priv.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_recv_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_recv_priv.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_recv_priv.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_recv_priv.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_recv_priv.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SNAP_ETH_TYPE_IPX to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SNAP_ETH_TYPE_APPLETALK_AARP to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap2sta_data_frame.send_issue_deauth_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_init_sta_recv_priv(ptr noundef %psta_recvpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %psta_recvpriv, i32 0, i32 132)
  tail call void @__raw_spin_lock_init(ptr noundef %psta_recvpriv, ptr noundef nonnull @.str, ptr noundef nonnull @_rtw_init_sta_recv_priv.__key, i16 noundef signext 3) #7
  %defrag_q = getelementptr inbounds %struct.sta_recv_priv, ptr %psta_recvpriv, i32 0, i32 2
  %1 = ptrtoint ptr %defrag_q to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %defrag_q, ptr %defrag_q, align 4
  %prev.i = getelementptr inbounds %struct.sta_recv_priv, ptr %psta_recvpriv, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %defrag_q, ptr %prev.i, align 4
  %lock3 = getelementptr inbounds %struct.sta_recv_priv, ptr %psta_recvpriv, i32 0, i32 2, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock3, ptr noundef nonnull @.str.2, ptr noundef nonnull @_rtw_init_sta_recv_priv.__key.1, i16 noundef signext 3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_init_recv_priv(ptr noundef %precvpriv, ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %precvpriv, ptr noundef nonnull @.str.3, ptr noundef nonnull @_rtw_init_recv_priv.__key, i16 noundef signext 3) #7
  %free_recv_queue = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 1
  %0 = ptrtoint ptr %free_recv_queue to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %free_recv_queue, ptr %free_recv_queue, align 4
  %prev.i = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %free_recv_queue, ptr %prev.i, align 4
  %lock3 = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock3, ptr noundef nonnull @.str.5, ptr noundef nonnull @_rtw_init_recv_priv.__key.4, i16 noundef signext 3) #7
  %recv_pending_queue = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 2
  %2 = ptrtoint ptr %recv_pending_queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %recv_pending_queue, ptr %recv_pending_queue, align 4
  %prev.i62 = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i62 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %recv_pending_queue, ptr %prev.i62, align 4
  %lock10 = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 2, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock10, ptr noundef nonnull @.str.7, ptr noundef nonnull @_rtw_init_recv_priv.__key.6, i16 noundef signext 3) #7
  %uc_swdec_pending_queue = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 3
  %4 = ptrtoint ptr %uc_swdec_pending_queue to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %uc_swdec_pending_queue, ptr %uc_swdec_pending_queue, align 4
  %prev.i63 = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 3, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i63 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %uc_swdec_pending_queue, ptr %prev.i63, align 4
  %lock17 = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 3, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock17, ptr noundef nonnull @.str.9, ptr noundef nonnull @_rtw_init_recv_priv.__key.8, i16 noundef signext 3) #7
  %adapter = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 7
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %padapter, ptr %adapter, align 4
  %free_recvframe_cnt = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 6
  %7 = ptrtoint ptr %free_recvframe_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 256, ptr %free_recvframe_cnt, align 8
  %call21 = tail call noalias ptr @vzalloc(i32 noundef 45312) #10
  %pallocated_frame_buf = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 4
  %8 = ptrtoint ptr %pallocated_frame_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call21, ptr %pallocated_frame_buf, align 8
  %tobool.not = icmp eq ptr %call21, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %call21 to i32
  %sub = add i32 %9, 255
  %div61 = and i32 %sub, -256
  %10 = inttoptr i32 %div61 to ptr
  %precv_frame_buf = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 5
  %11 = ptrtoint ptr %precv_frame_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %precv_frame_buf, align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end
  %precvframe.067 = phi ptr [ %10, %if.end ], [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ]
  %i.066 = phi i32 [ 0, %if.end ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %precvframe.067 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %precvframe.067, ptr %precvframe.067, align 4
  %prev.i64 = getelementptr inbounds %struct.list_head, ptr %precvframe.067, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i64 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %precvframe.067, ptr %prev.i64, align 4
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %precvframe.067, ptr noundef %15, ptr noundef %free_recv_queue) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %precvframe.067, ptr %prev.i, align 4
  %17 = ptrtoint ptr %precvframe.067 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %free_recv_queue, ptr %precvframe.067, align 4
  %18 = ptrtoint ptr %prev.i64 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev.i64, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %precvframe.067, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  tail call void @rtw_os_recv_resource_alloc(ptr noundef %padapter, ptr noundef %precvframe.067) #7
  %len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe.067, i32 0, i32 7
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %len, align 4
  %adapter27 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe.067, i32 0, i32 3
  %21 = ptrtoint ptr %adapter27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %padapter, ptr %adapter27, align 4
  %incdec.ptr = getelementptr %union.recv_frame, ptr %precvframe.067, i32 1
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call i32 @rtw_hal_init_recv_priv(ptr noundef %padapter) #7
  %signal_stat_timer = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 31
  tail call void @init_timer_key(ptr noundef %signal_stat_timer, ptr noundef nonnull @rtw_signal_stat_timer_hdl, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @_rtw_init_recv_priv.__key.10) #7
  %signal_stat_sampling_interval = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 32
  %22 = ptrtoint ptr %signal_stat_sampling_interval to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2000, ptr %signal_stat_sampling_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %23, 200
  %call.i = tail call i32 @mod_timer(ptr noundef %signal_stat_timer, i32 noundef %add.i) #7
  br label %exit

exit:                                             ; preds = %for.end, %entry.exit_crit_edge
  %res.0 = phi i32 [ %call28, %for.end ], [ 0, %entry.exit_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_recv_resource_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_init_recv_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_signal_stat_timer_hdl(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -7596
  %is_signal_dbg = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %is_signal_dbg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_signal_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %signal_strength_dbg = getelementptr i8, ptr %t, i32 -7
  %2 = ptrtoint ptr %signal_strength_dbg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %signal_strength_dbg, align 1
  %signal_strength = getelementptr i8, ptr %t, i32 -6
  %4 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %signal_strength, align 2
  %conv = zext i8 %3 to i16
  %add.i = add nuw nsw i16 %conv, 1
  %shr.i = lshr i16 %add.i, 1
  %5 = trunc i16 %shr.i to i8
  %conv7 = add i8 %5, -95
  %rssi = getelementptr i8, ptr %t, i32 -4
  %6 = ptrtoint ptr %rssi to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv7, ptr %rssi, align 8
  br label %set_timer

if.else:                                          ; preds = %entry
  %signal_strength_data = getelementptr i8, ptr %t, i32 64
  %7 = ptrtoint ptr %signal_strength_data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %signal_strength_data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  br i1 %cmp, label %if.then11, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %avg_val = getelementptr i8, ptr %t, i32 65
  %9 = ptrtoint ptr %avg_val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %avg_val, align 1
  %total_num = getelementptr i8, ptr %t, i32 68
  %11 = ptrtoint ptr %total_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_num, align 4
  %13 = ptrtoint ptr %signal_strength_data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %signal_strength_data, align 4
  %phi.cast = zext i8 %10 to i16
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.else.if.end_crit_edge
  %avg_signal_strength.0 = phi i16 [ %phi.cast, %if.then11 ], [ 0, %if.else.if.end_crit_edge ]
  %num_signal_strength.0 = phi i32 [ %12, %if.then11 ], [ 0, %if.else.if.end_crit_edge ]
  %signal_qual_data = getelementptr i8, ptr %t, i32 52
  %14 = ptrtoint ptr %signal_qual_data to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %signal_qual_data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp18 = icmp eq i8 %15, 0
  br i1 %cmp18, label %if.then20, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %avg_val22 = getelementptr i8, ptr %t, i32 53
  %16 = ptrtoint ptr %avg_val22 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %avg_val22, align 1
  %18 = ptrtoint ptr %signal_qual_data to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %signal_qual_data, align 8
  %phi.cast141 = zext i8 %17 to i16
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %if.end.if.end27_crit_edge
  %avg_signal_qual.0 = phi i16 [ %phi.cast141, %if.then20 ], [ 0, %if.end.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_signal_strength.0)
  %cmp28 = icmp eq i32 %num_signal_strength.0, 0
  br i1 %cmp28, label %if.then30, label %if.end27.if.end41_crit_edge

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then30:                                        ; preds = %if.end27
  %call31 = tail call i32 @rtw_get_on_cur_ch_time(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then30.set_timer_crit_edge, label %lor.lhs.false

if.then30.set_timer_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_timer

lor.lhs.false:                                    ; preds = %if.then30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %call34 = tail call i32 @rtw_get_on_cur_ch_time(ptr noundef %add.ptr) #7
  %sub = sub i32 %19, %call34
  %call35 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #7
  %bcn_interval = getelementptr i8, ptr %t, i32 -4522
  %20 = ptrtoint ptr %bcn_interval to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %bcn_interval, align 2
  %conv36 = zext i16 %21 to i32
  %mul = shl nuw nsw i32 %conv36, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call35, i32 %mul)
  %cmp37 = icmp ult i32 %call35, %mul
  br i1 %cmp37, label %lor.lhs.false.set_timer_crit_edge, label %lor.lhs.false.if.end41_crit_edge

lor.lhs.false.if.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

lor.lhs.false.set_timer_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_timer

if.end41:                                         ; preds = %lor.lhs.false.if.end41_crit_edge, %if.end27.if.end41_crit_edge
  %fw_state.i = getelementptr i8, ptr %t, i32 -7528
  %22 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw_state.i, align 4
  %24 = and i32 %23, 2049
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %.not = icmp eq i32 %24, 1
  br i1 %.not, label %if.end51, label %if.end41.set_timer_crit_edge

if.end41.set_timer_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_timer

if.end51:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %signal_strength55 = getelementptr i8, ptr %t, i32 -6
  %25 = ptrtoint ptr %signal_strength55 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %signal_strength55, align 2
  %conv56 = zext i8 %26 to i16
  %mul57 = shl nuw nsw i16 %conv56, 2
  %add = add nuw nsw i16 %mul57, %avg_signal_strength.0
  %add.frozen = freeze i16 %add
  %div151 = udiv i16 %add.frozen, 5
  %27 = mul i16 %div151, 5
  %rem150.decomposed = sub i16 %add.frozen, %27
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem150.decomposed)
  %tobool59.not = icmp ne i16 %rem150.decomposed, 0
  %div.zext = zext i16 %div151 to i32
  %add62 = zext i1 %tobool59.not to i32
  %tmp_s.0 = add nuw nsw i32 %add62, %div.zext
  %28 = tail call i32 @llvm.umin.i32(i32 %tmp_s.0, i32 100)
  %signal_qual = getelementptr i8, ptr %t, i32 -5
  %29 = ptrtoint ptr %signal_qual to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %signal_qual, align 1
  %conv74 = zext i8 %30 to i16
  %mul75 = shl nuw nsw i16 %conv74, 2
  %add76 = add nuw nsw i16 %mul75, %avg_signal_qual.0
  %add76.frozen = freeze i16 %add76
  %div82153 = udiv i16 %add76.frozen, 5
  %31 = mul i16 %div82153, 5
  %rem78152.decomposed = sub i16 %add76.frozen, %31
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem78152.decomposed)
  %tobool79.not = icmp ne i16 %rem78152.decomposed, 0
  %div82.zext = zext i16 %div82153 to i32
  %add83 = zext i1 %tobool79.not to i32
  %tmp_q.0 = add nuw nsw i32 %add83, %div82.zext
  %32 = tail call i32 @llvm.umin.i32(i32 %tmp_q.0, i32 100)
  %conv92 = trunc i32 %28 to i8
  %33 = ptrtoint ptr %signal_strength55 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv92, ptr %signal_strength55, align 2
  %add.i146 = add nuw nsw i32 %28, 1
  %shr.i147 = lshr i32 %add.i146, 1
  %34 = trunc i32 %shr.i147 to i8
  %conv95 = add nuw nsw i8 %34, -95
  %rssi96 = getelementptr i8, ptr %t, i32 -4
  %35 = ptrtoint ptr %rssi96 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv95, ptr %rssi96, align 8
  %conv97 = trunc i32 %32 to i8
  %36 = ptrtoint ptr %signal_qual to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv97, ptr %signal_qual, align 1
  br label %set_timer

set_timer:                                        ; preds = %if.end51, %if.end41.set_timer_crit_edge, %lor.lhs.false.set_timer_crit_edge, %if.then30.set_timer_crit_edge, %if.then
  %signal_stat_sampling_interval = getelementptr i8, ptr %t, i32 48
  %37 = ptrtoint ptr %signal_stat_sampling_interval to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %signal_stat_sampling_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %mul.i = mul i32 %38, 100
  %div.i = udiv i32 %mul.i, 1000
  %add.i149 = add i32 %div.i, %39
  %call.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i149) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_free_recv_priv(ptr noundef %precvpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 7
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %call = tail call i32 @rtw_free_uc_swdec_pending_queue(ptr noundef %1)
  tail call void @rtw_os_recv_resource_free(ptr noundef %precvpriv) #7
  %pallocated_frame_buf = getelementptr inbounds %struct.recv_priv, ptr %precvpriv, i32 0, i32 4
  %2 = ptrtoint ptr %pallocated_frame_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pallocated_frame_buf, align 8
  tail call void @vfree(ptr noundef %3) #7
  tail call void @rtw_hal_free_recv_priv(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_free_uc_swdec_pending_queue(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %uc_swdec_pending_queue = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3
  %lock.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 3, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #7
  %0 = ptrtoint ptr %uc_swdec_pending_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %uc_swdec_pending_queue, align 4
  %cmp.i.not.i.i10 = icmp eq ptr %1, %uc_swdec_pending_queue
  br i1 %cmp.i.not.i.i10, label %entry.rtw_alloc_recvframe.exit.thread_crit_edge, label %if.else.i.i.lr.ph

entry.rtw_alloc_recvframe.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_alloc_recvframe.exit.thread

if.else.i.i.lr.ph:                                ; preds = %entry
  %free_recv_queue = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 1
  br label %if.else.i.i

rtw_alloc_recvframe.exit.thread:                  ; preds = %while.body.rtw_alloc_recvframe.exit.thread_crit_edge, %entry.rtw_alloc_recvframe.exit.thread_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %entry.rtw_alloc_recvframe.exit.thread_crit_edge ], [ %inc, %while.body.rtw_alloc_recvframe.exit.thread_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #7
  br label %while.end

if.else.i.i:                                      ; preds = %while.body.if.else.i.i_crit_edge, %if.else.i.i.lr.ph
  %2 = phi ptr [ %1, %if.else.i.i.lr.ph ], [ %16, %while.body.if.else.i.i_crit_edge ]
  %cnt.011 = phi i32 [ 0, %if.else.i.i.lr.ph ], [ %inc, %while.body.if.else.i.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.else.i.i.list_del_init.exit.i.i_crit_edge

if.else.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
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
  %adapter.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %2, i32 0, i32 3
  %11 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i.i, align 4
  %tobool3.not.i.i = icmp ne ptr %12, null
  %free_recv_queue.i.i = getelementptr inbounds %struct.adapter, ptr %12, i32 0, i32 10, i32 1
  %cmp.i.i = icmp eq ptr %free_recv_queue.i.i, %uc_swdec_pending_queue
  %or.cond.i.i = select i1 %tobool3.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then5.i.i, label %list_del_init.exit.i.i.rtw_alloc_recvframe.exit_crit_edge

list_del_init.exit.i.i.rtw_alloc_recvframe.exit_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_alloc_recvframe.exit

if.then5.i.i:                                     ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %free_recvframe_cnt.i.i = getelementptr inbounds %struct.adapter, ptr %12, i32 0, i32 10, i32 6
  %13 = ptrtoint ptr %free_recvframe_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %free_recvframe_cnt.i.i, align 8
  %dec.i.i = add i32 %14, -1
  store i32 %dec.i.i, ptr %free_recvframe_cnt.i.i, align 8
  br label %rtw_alloc_recvframe.exit

rtw_alloc_recvframe.exit:                         ; preds = %if.then5.i.i, %list_del_init.exit.i.i.rtw_alloc_recvframe.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #7
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %rtw_alloc_recvframe.exit.while.end_crit_edge, label %while.body

rtw_alloc_recvframe.exit.while.end_crit_edge:     ; preds = %rtw_alloc_recvframe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %rtw_alloc_recvframe.exit
  %call2 = tail call i32 @rtw_free_recvframe(ptr noundef nonnull %2, ptr noundef %free_recv_queue)
  %inc = add i32 %cnt.011, 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #7
  %15 = ptrtoint ptr %uc_swdec_pending_queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %uc_swdec_pending_queue, align 4
  %cmp.i.not.i.i = icmp eq ptr %16, %uc_swdec_pending_queue
  br i1 %cmp.i.not.i.i, label %while.body.rtw_alloc_recvframe.exit.thread_crit_edge, label %while.body.if.else.i.i_crit_edge

while.body.if.else.i.i_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

while.body.rtw_alloc_recvframe.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_alloc_recvframe.exit.thread

while.end:                                        ; preds = %rtw_alloc_recvframe.exit.while.end_crit_edge, %rtw_alloc_recvframe.exit.thread
  %cnt.09 = phi i32 [ %cnt.0.lcssa, %rtw_alloc_recvframe.exit.thread ], [ %cnt.011, %rtw_alloc_recvframe.exit.while.end_crit_edge ]
  ret i32 %cnt.09
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_recv_resource_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_free_recv_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @_rtw_alloc_recvframe(ptr noundef %pfree_recv_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pfree_recv_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pfree_recv_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %pfree_recv_queue
  br i1 %cmp.i.not, label %entry.if.end7_crit_edge, label %if.else

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.else:                                          ; preds = %entry
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
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  %adapter = getelementptr inbounds %struct.recv_frame_hdr, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 4
  %tobool3.not = icmp ne ptr %11, null
  %free_recv_queue = getelementptr inbounds %struct.adapter, ptr %11, i32 0, i32 10, i32 1
  %cmp = icmp eq ptr %free_recv_queue, %pfree_recv_queue
  %or.cond = select i1 %tobool3.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then5, label %list_del_init.exit.if.end7_crit_edge

list_del_init.exit.if.end7_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %free_recvframe_cnt = getelementptr inbounds %struct.adapter, ptr %11, i32 0, i32 10, i32 6
  %12 = ptrtoint ptr %free_recvframe_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %free_recvframe_cnt, align 8
  %dec = add i32 %13, -1
  store i32 %dec, ptr %free_recvframe_cnt, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %list_del_init.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  %precvframe.0 = phi ptr [ %1, %if.then5 ], [ %1, %list_del_init.exit.if.end7_crit_edge ], [ null, %entry.if.end7_crit_edge ]
  ret ptr %precvframe.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_alloc_recvframe(ptr noundef %pfree_recv_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.__queue, ptr %pfree_recv_queue, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %0 = ptrtoint ptr %pfree_recv_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pfree_recv_queue, align 4
  %cmp.i.not.i = icmp eq ptr %1, %pfree_recv_queue
  br i1 %cmp.i.not.i, label %entry._rtw_alloc_recvframe.exit_crit_edge, label %if.else.i

entry._rtw_alloc_recvframe.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtw_alloc_recvframe.exit

if.else.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.list_del_init.exit.i_crit_edge

if.else.i.list_del_init.exit.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
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
  %adapter.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i, align 4
  %tobool3.not.i = icmp ne ptr %11, null
  %free_recv_queue.i = getelementptr inbounds %struct.adapter, ptr %11, i32 0, i32 10, i32 1
  %cmp.i = icmp eq ptr %free_recv_queue.i, %pfree_recv_queue
  %or.cond.i = select i1 %tobool3.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.then5.i, label %list_del_init.exit.i._rtw_alloc_recvframe.exit_crit_edge

list_del_init.exit.i._rtw_alloc_recvframe.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtw_alloc_recvframe.exit

if.then5.i:                                       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %free_recvframe_cnt.i = getelementptr inbounds %struct.adapter, ptr %11, i32 0, i32 10, i32 6
  %12 = ptrtoint ptr %free_recvframe_cnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %free_recvframe_cnt.i, align 8
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %free_recvframe_cnt.i, align 8
  br label %_rtw_alloc_recvframe.exit

_rtw_alloc_recvframe.exit:                        ; preds = %if.then5.i, %list_del_init.exit.i._rtw_alloc_recvframe.exit_crit_edge, %entry._rtw_alloc_recvframe.exit_crit_edge
  %precvframe.0.i = phi ptr [ %1, %if.then5.i ], [ %1, %list_del_init.exit.i._rtw_alloc_recvframe.exit_crit_edge ], [ null, %entry._rtw_alloc_recvframe.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  ret ptr %precvframe.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_free_recvframe(ptr noundef %precvframe, ptr noundef %pfree_recv_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  tail call void @rtw_os_free_recvframe(ptr noundef %precvframe) #7
  %lock = getelementptr inbounds %struct.__queue, ptr %pfree_recv_queue, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %precvframe) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 7
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %len, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pfree_recv_queue, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i14 = tail call zeroext i1 @__list_add_valid(ptr noundef %precvframe, ptr noundef %12, ptr noundef %pfree_recv_queue) #7
  br i1 %call.i.i14, label %if.end.i.i15, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i15:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %precvframe, ptr %prev.i, align 4
  %14 = ptrtoint ptr %precvframe to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pfree_recv_queue, ptr %precvframe, align 4
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev.i3.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %precvframe, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i15, %list_del_init.exit.list_add_tail.exit_crit_edge
  %tobool.not = icmp ne ptr %1, null
  %free_recv_queue = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 1
  %cmp = icmp eq ptr %free_recv_queue, %pfree_recv_queue
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then2, label %list_add_tail.exit.if.end3_crit_edge

list_add_tail.exit.if.end3_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %free_recvframe_cnt = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 6
  %17 = ptrtoint ptr %free_recvframe_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %free_recvframe_cnt, align 8
  %inc = add i32 %18, 1
  store i32 %inc, ptr %free_recvframe_cnt, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %list_add_tail.exit.if.end3_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_free_recvframe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_enqueue_recvframe(ptr noundef %precvframe, ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %precvframe) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i.i9 = tail call zeroext i1 @__list_add_valid(ptr noundef %precvframe, ptr noundef %11, ptr noundef %queue) #7
  br i1 %call.i.i9, label %if.end.i.i10, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i10:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.__queue, ptr %queue, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %adapter.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 3
  %0 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %precvframe) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.list_del_init.exit.i_crit_edge

entry.list_del_init.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i.i9.i = tail call zeroext i1 @__list_add_valid(ptr noundef %precvframe, ptr noundef %11, ptr noundef %queue) #7
  br i1 %call.i.i9.i, label %if.end.i.i10.i, label %list_del_init.exit.i.list_add_tail.exit.i_crit_edge

list_del_init.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i10.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtw_enqueue_recvframe.exit

if.then2.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %free_recvframe_cnt.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 6
  %16 = ptrtoint ptr %free_recvframe_cnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %free_recvframe_cnt.i, align 8
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %free_recvframe_cnt.i, align 8
  br label %_rtw_enqueue_recvframe.exit

_rtw_enqueue_recvframe.exit:                      ; preds = %if.then2.i, %list_add_tail.exit.i._rtw_enqueue_recvframe.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_recvframe_queue(ptr noundef %pframequeue, ptr noundef %pfree_recv_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.__queue, ptr %pframequeue, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %0 = ptrtoint ptr %pframequeue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pframequeue, align 4
  %cmp.not10 = icmp eq ptr %1, %pframequeue
  br i1 %cmp.not10, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %plist.011 = phi ptr [ %3, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %plist.011 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plist.011, align 4
  %call3 = tail call i32 @rtw_free_recvframe(ptr noundef %plist.011, ptr noundef %pfree_recv_queue)
  %cmp.not = icmp eq ptr %3, %pframequeue
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_enqueue_recvbuf_to_head(ptr noundef %precvbuf, ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.__queue, ptr %queue, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %precvbuf) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %precvbuf, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %precvbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %precvbuf, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %precvbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %precvbuf, ptr %precvbuf, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %precvbuf, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %precvbuf, ptr %prev.i3.i, align 4
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue, align 4
  %call.i.i6 = tail call zeroext i1 @__list_add_valid(ptr noundef %precvbuf, ptr noundef %queue, ptr noundef %9) #7
  br i1 %call.i.i6, label %if.end.i.i7, label %list_del_init.exit.list_add.exit_crit_edge

list_del_init.exit.list_add.exit_crit_edge:       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i7:                                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %precvbuf, ptr %prev1.i.i, align 4
  %11 = ptrtoint ptr %precvbuf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %precvbuf, align 4
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %queue, ptr %prev.i3.i, align 4
  %13 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %precvbuf, ptr %queue, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i7, %list_del_init.exit.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_enqueue_recvbuf(ptr noundef %precvbuf, ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.__queue, ptr %queue, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %precvbuf) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %precvbuf, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %precvbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %precvbuf, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %precvbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %precvbuf, ptr %precvbuf, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %precvbuf, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %precvbuf, ptr %prev.i3.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %queue, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i6 = tail call zeroext i1 @__list_add_valid(ptr noundef %precvbuf, ptr noundef %9, ptr noundef %queue) #7
  br i1 %call.i.i6, label %if.end.i.i7, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i7:                                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %precvbuf, ptr %prev.i, align 4
  %11 = ptrtoint ptr %precvbuf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %queue, ptr %precvbuf, align 4
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev.i3.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %precvbuf, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i7, %list_del_init.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_dequeue_recvbuf(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.__queue, ptr %queue, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
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
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  %precvbuf.0 = phi ptr [ %1, %list_del_init.exit ], [ null, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  ret ptr %precvbuf.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_reordering_ctrl_timeout_handler(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -64
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr i8, ptr %t, i32 -44
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %call = tail call fastcc i32 @recv_indicatepkts_in_order(ptr noundef %1, ptr noundef %add.ptr, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %6, 5
  %call.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @recv_indicatepkts_in_order(ptr noundef %padapter, ptr noundef %preorder_ctrl, i32 noundef %bforced) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_recvframe_queue = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %preorder_ctrl, i32 0, i32 5
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %2 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pending_recvframe_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bforced)
  %cmp = icmp eq i32 %bforced, 1
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %dbg_rx_ampdu_forced_indicate_count = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2, i32 32
  %4 = ptrtoint ptr %dbg_rx_ampdu_forced_indicate_count to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dbg_rx_ampdu_forced_indicate_count, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %dbg_rx_ampdu_forced_indicate_count, align 8
  %6 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pending_recvframe_queue, align 4
  %cmp.i.not = icmp eq ptr %7, %pending_recvframe_queue
  br i1 %cmp.i.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %indicate_seq = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %preorder_ctrl, i32 0, i32 2
  %8 = ptrtoint ptr %indicate_seq to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %indicate_seq, align 2
  %conv = zext i16 %9 to i64
  %seq_num = getelementptr inbounds %struct.recv_frame_hdr, ptr %3, i32 0, i32 6, i32 11
  %10 = ptrtoint ptr %seq_num to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %seq_num, align 4
  %conv4 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %9)
  %cmp.i91 = icmp ult i16 %11, %9
  br i1 %cmp.i91, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dbg_rx_ampdu_loss_count.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2, i32 33
  %12 = ptrtoint ptr %dbg_rx_ampdu_loss_count.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dbg_rx_ampdu_loss_count.i, align 8
  %add.i = sub nsw i64 4096, %conv
  %sub.i = add nsw i64 %add.i, %conv4
  %add1.i = add i64 %sub.i, %13
  store i64 %add1.i, ptr %dbg_rx_ampdu_loss_count.i, align 8
  br label %recv_indicatepkts_pkt_loss_cnt.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub2.i = sub nsw i64 %conv4, %conv
  %dbg_rx_ampdu_loss_count3.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2, i32 33
  %14 = ptrtoint ptr %dbg_rx_ampdu_loss_count3.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dbg_rx_ampdu_loss_count3.i, align 8
  %add4.i = add i64 %sub2.i, %15
  store i64 %add4.i, ptr %dbg_rx_ampdu_loss_count3.i, align 8
  br label %recv_indicatepkts_pkt_loss_cnt.exit

recv_indicatepkts_pkt_loss_cnt.exit:              ; preds = %if.else.i, %if.then.i
  %16 = ptrtoint ptr %seq_num to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %seq_num, align 4
  %18 = ptrtoint ptr %indicate_seq to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %indicate_seq, align 2
  br label %if.end7

if.end7:                                          ; preds = %recv_indicatepkts_pkt_loss_cnt.exit, %entry.if.end7_crit_edge
  %indicate_seq11 = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %preorder_ctrl, i32 0, i32 2
  %19 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %pending_recvframe_queue, align 4
  %cmp.i92.not94 = icmp eq ptr %20, %pending_recvframe_queue
  br i1 %cmp.i92.not94, label %if.end7.cleanup_crit_edge, label %while.body.lr.ph

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end7
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  br label %while.body

while.body:                                       ; preds = %if.end54.while.body_crit_edge, %while.body.lr.ph
  %plist.095 = phi ptr [ %3, %while.body.lr.ph ], [ %26, %if.end54.while.body_crit_edge ]
  %21 = ptrtoint ptr %indicate_seq11 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %indicate_seq11, align 2
  %conv12 = zext i16 %22 to i32
  %seq_num13 = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.095, i32 0, i32 6, i32 11
  %23 = ptrtoint ptr %seq_num13 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %seq_num13, align 4
  %conv14 = zext i16 %24 to i32
  %sub = sub nsw i32 %conv12, %conv14
  %and = and i32 %sub, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp15.not = icmp eq i32 %and, 0
  br i1 %cmp15.not, label %if.then17, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %while.body
  %25 = ptrtoint ptr %plist.095 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %plist.095, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plist.095) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then17.list_del_init.exit_crit_edge

if.then17.list_del_init.exit_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %plist.095, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %plist.095 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %plist.095, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then17.list_del_init.exit_crit_edge
  %33 = ptrtoint ptr %plist.095 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %plist.095, ptr %plist.095, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %plist.095, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %plist.095, ptr %prev.i3.i, align 4
  %35 = ptrtoint ptr %indicate_seq11 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %indicate_seq11, align 2
  %37 = ptrtoint ptr %seq_num13 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %seq_num13, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %38)
  %cmp23 = icmp eq i16 %36, %38
  br i1 %cmp23, label %if.then25, label %list_del_init.exit.if.end31_crit_edge

list_del_init.exit.if.end31_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then25:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %39 = add i16 %36, 1
  %40 = and i16 %39, 4095
  %41 = ptrtoint ptr %indicate_seq11 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %indicate_seq11, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %list_del_init.exit.if.end31_crit_edge
  %amsdu = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.095, i32 0, i32 6, i32 6
  %42 = ptrtoint ptr %amsdu to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %amsdu, align 1
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i8 %43, label %if.end31.if.end54_crit_edge [
    i8 0, label %if.then33
    i8 1, label %if.then45
  ]

if.end31.if.end54_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then33:                                        ; preds = %if.end31
  %45 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp34 = icmp eq i32 %46, 0
  br i1 %cmp34, label %land.lhs.true, label %if.then33.if.end54_crit_edge

if.then33.if.end54_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

land.lhs.true:                                    ; preds = %if.then33
  %47 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp36 = icmp eq i32 %48, 0
  br i1 %cmp36, label %if.then38, label %land.lhs.true.if.end54_crit_edge

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 @rtw_recv_indicatepkt(ptr noundef %padapter, ptr noundef %plist.095) #7
  br label %if.end54

if.then45:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @amsdu_to_msdu(ptr noundef %padapter, ptr noundef %plist.095)
  br label %if.end54

if.end54:                                         ; preds = %if.then45, %if.then38, %land.lhs.true.if.end54_crit_edge, %if.then33.if.end54_crit_edge, %if.end31.if.end54_crit_edge
  %49 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %pending_recvframe_queue, align 4
  %cmp.i92.not = icmp eq ptr %50, %pending_recvframe_queue
  br i1 %cmp.i92.not, label %if.end54.cleanup_crit_edge, label %if.end54.while.body_crit_edge

if.end54.while.body_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end54.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 1, %while.body.cleanup_crit_edge ], [ 0, %if.end54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_recv_entry(ptr noundef %precvframe) local_unnamed_addr #0 align 64 {
entry:
  %bDumpRxPkt.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 3
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %busetkipkey.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 29
  %5 = ptrtoint ptr %busetkipkey.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %busetkipkey.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not.i = icmp eq i8 %6, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %while.cond.preheader.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

while.cond.preheader.i:                           ; preds = %land.lhs.true.i
  %uc_swdec_pending_queue.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3
  %lock.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #7
  %7 = ptrtoint ptr %uc_swdec_pending_queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %uc_swdec_pending_queue.i, align 4
  %cmp.i.not.i.i78.i = icmp eq ptr %8, %uc_swdec_pending_queue.i
  br i1 %cmp.i.not.i.i78.i, label %while.cond.preheader.i.rtw_alloc_recvframe.exit.thread.i_crit_edge, label %while.cond.preheader.i.if.else.i.i.i_crit_edge

while.cond.preheader.i.if.else.i.i.i_crit_edge:   ; preds = %while.cond.preheader.i
  br label %if.else.i.i.i

while.cond.preheader.i.rtw_alloc_recvframe.exit.thread.i_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_alloc_recvframe.exit.thread.i

rtw_alloc_recvframe.exit.thread.i:                ; preds = %while.body.i.rtw_alloc_recvframe.exit.thread.i_crit_edge, %while.cond.preheader.i.rtw_alloc_recvframe.exit.thread.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #7
  br label %if.end.i

if.else.i.i.i:                                    ; preds = %while.body.i.if.else.i.i.i_crit_edge, %while.cond.preheader.i.if.else.i.i.i_crit_edge
  %9 = phi ptr [ %23, %while.body.i.if.else.i.i.i_crit_edge ], [ %8, %while.cond.preheader.i.if.else.i.i.i_crit_edge ]
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.else.i.i.i.list_del_init.exit.i.i.i_crit_edge

if.else.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %if.else.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %9, ptr %prev.i3.i.i.i.i, align 4
  %adapter.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %9, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i.i.i, align 4
  %tobool3.not.i.i.i = icmp ne ptr %19, null
  %free_recv_queue.i.i.i = getelementptr inbounds %struct.adapter, ptr %19, i32 0, i32 10, i32 1
  %cmp.i.i.i = icmp eq ptr %free_recv_queue.i.i.i, %uc_swdec_pending_queue.i
  %or.cond.i.i.i = select i1 %tobool3.not.i.i.i, i1 %cmp.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.then5.i.i.i, label %list_del_init.exit.i.i.i.rtw_alloc_recvframe.exit.i_crit_edge

list_del_init.exit.i.i.i.rtw_alloc_recvframe.exit.i_crit_edge: ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_alloc_recvframe.exit.i

if.then5.i.i.i:                                   ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %free_recvframe_cnt.i.i.i = getelementptr inbounds %struct.adapter, ptr %19, i32 0, i32 10, i32 6
  %20 = ptrtoint ptr %free_recvframe_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %free_recvframe_cnt.i.i.i, align 8
  %dec.i.i.i = add i32 %21, -1
  store i32 %dec.i.i.i, ptr %free_recvframe_cnt.i.i.i, align 8
  br label %rtw_alloc_recvframe.exit.i

rtw_alloc_recvframe.exit.i:                       ; preds = %if.then5.i.i.i, %list_del_init.exit.i.i.i.rtw_alloc_recvframe.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #7
  %tobool6.not.i = icmp eq ptr %9, null
  br i1 %tobool6.not.i, label %rtw_alloc_recvframe.exit.i.if.end.i_crit_edge, label %while.body.i

rtw_alloc_recvframe.exit.i.if.end.i_crit_edge:    ; preds = %rtw_alloc_recvframe.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

while.body.i:                                     ; preds = %rtw_alloc_recvframe.exit.i
  %call7.i = tail call fastcc i32 @recv_func_posthandle(ptr noundef %1, ptr noundef nonnull %9) #7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #7
  %22 = ptrtoint ptr %uc_swdec_pending_queue.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %uc_swdec_pending_queue.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %23, %uc_swdec_pending_queue.i
  br i1 %cmp.i.not.i.i.i, label %while.body.i.rtw_alloc_recvframe.exit.thread.i_crit_edge, label %while.body.i.if.else.i.i.i_crit_edge

while.body.i.if.else.i.i.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i.i

while.body.i.rtw_alloc_recvframe.exit.thread.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_alloc_recvframe.exit.thread.i

if.end.i:                                         ; preds = %rtw_alloc_recvframe.exit.i.if.end.i_crit_edge, %rtw_alloc_recvframe.exit.thread.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bDumpRxPkt.i.i.i) #7
  %24 = ptrtoint ptr %bDumpRxPkt.i.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %bDumpRxPkt.i.i.i, align 1, !annotation !38
  %rx_data.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 9
  %25 = ptrtoint ptr %rx_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_data.i.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %29 = and i8 %28, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.not.i.i.i = icmp eq i8 %29, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end.i.recv_func_prehandle.exit.i_crit_edge

if.end.i.recv_func_prehandle.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_func_prehandle.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %26, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #7
  %33 = and i16 %32, 12
  %conv7.i.i.i = zext i16 %33 to i32
  %trunc.i.i.i = trunc i16 %31 to i2
  %rev.i.i.i = tail call i2 @llvm.bitreverse.i2(i2 %trunc.i.i.i) #7
  %conv19.i.i.i = zext i2 %rev.i.i.i to i8
  %to_fr_ds.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 5
  %34 = ptrtoint ptr %to_fr_ds.i.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv19.i.i.i, ptr %to_fr_ds.i.i.i, align 2
  %35 = ptrtoint ptr %26 to i32
  %add.i.i.i = add i32 %35, 22
  %36 = inttoptr i32 %add.i.i.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %36, align 2
  %39 = lshr i16 %38, 8
  %40 = trunc i16 %39 to i8
  %conv22.i.i.i = and i8 %40, 15
  %frag_num.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 12
  %41 = ptrtoint ptr %frag_num.i.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv22.i.i.i, ptr %frag_num.i.i.i, align 2
  %42 = load i16, ptr %36, align 2
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #7
  %44 = lshr i16 %43, 4
  %seq_num.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 11
  %45 = ptrtoint ptr %seq_num.i.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %seq_num.i.i.i, align 4
  %46 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %26, align 2
  %48 = trunc i16 %47 to i8
  %49 = lshr i8 %48, 4
  %50 = and i8 %49, 1
  %pw_save.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 9
  %51 = ptrtoint ptr %pw_save.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %pw_save.i.i.i, align 2
  %52 = load i16, ptr %26, align 2
  %53 = trunc i16 %52 to i8
  %54 = lshr i8 %53, 2
  %55 = and i8 %54, 1
  %mfrag.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 13
  %56 = ptrtoint ptr %mfrag.i.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %mfrag.i.i.i, align 1
  %57 = load i16, ptr %26, align 2
  %58 = trunc i16 %57 to i8
  %59 = lshr i8 %58, 5
  %60 = and i8 %59, 1
  %mdata.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 10
  %61 = ptrtoint ptr %mdata.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %mdata.i.i.i, align 1
  %62 = load i16, ptr %26, align 2
  %63 = trunc i16 %62 to i8
  %64 = lshr i8 %63, 6
  %65 = and i8 %64, 1
  %privacy.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 15
  %66 = ptrtoint ptr %privacy.i.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %privacy.i.i.i, align 1
  %67 = load i16, ptr %26, align 2
  %68 = trunc i16 %67 to i8
  %69 = lshr i8 %68, 7
  %order.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 14
  %70 = ptrtoint ptr %order.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %order.i.i.i, align 4
  %call.i.i.i = call zeroext i8 @rtw_hal_get_def_var(ptr noundef %1, i32 noundef 6, ptr noundef nonnull %bDumpRxPkt.i.i.i) #7
  %71 = zext i32 %conv7.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %conv7.i.i.i, label %if.end.i.i.i.recv_func_prehandle.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i.i
    i32 4, label %sw.bb58.i.i.i
    i32 8, label %sw.bb60.i.i.i
  ]

if.end.i.i.i.recv_func_prehandle.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_func_prehandle.exit.i

sw.bb.i.i.i:                                      ; preds = %if.end.i.i.i
  %attrib.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6
  %72 = ptrtoint ptr %rx_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx_data.i.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %73, align 2
  %76 = lshr i16 %75, 8
  %77 = trunc i16 %76 to i8
  %conv1.i.i.i.i = and i8 %77, -4
  %78 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fw_state.i.i, align 4
  %80 = and i32 %79, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %80)
  %.not.i.i.i.i = icmp eq i32 %80, 9
  br i1 %.not.i.i.i.i, label %land.lhs.true4.i.i.i.i, label %sw.bb.i.i.i.if.end56.i.i.i_crit_edge

sw.bb.i.i.i.if.end56.i.i.i_crit_edge:             ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %sw.bb.i.i.i
  %binstallBIPkey.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 28
  %81 = ptrtoint ptr %binstallBIPkey.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %binstallBIPkey.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %82)
  %cmp.i.i.i.i = icmp eq i8 %82, 1
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %land.lhs.true4.i.i.i.i.if.end56.i.i.i_crit_edge

land.lhs.true4.i.i.i.i.if.end56.i.i.i_crit_edge:  ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true4.i.i.i.i
  %83 = ptrtoint ptr %privacy.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %privacy.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool8.not.i.i.i.i = icmp eq i8 %84, 0
  %.pre.i.i.i.i = ptrtoint ptr %73 to i32
  %.pre226.i.i.i.i = add i32 %.pre.i.i.i.i, 4
  %.pre227.i.i.i.i = inttoptr i32 %.pre226.i.i.i.i to ptr
  br i1 %tobool8.not.i.i.i.i, label %if.then.i.i.i.i.if.else.i.i.i.i_crit_edge, label %land.lhs.true9.i.i.i.i

if.then.i.i.i.i.if.else.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i.i.i

land.lhs.true9.i.i.i.i:                           ; preds = %if.then.i.i.i.i
  %85 = ptrtoint ptr %.pre227.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %.pre227.i.i.i.i, align 1
  %87 = and i8 %86, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool11.not.i.i.i.i = icmp eq i8 %87, 0
  br i1 %tobool11.not.i.i.i.i, label %land.lhs.true12.i.i.i.i, label %land.lhs.true9.i.i.i.i.if.else.i.i.i.i_crit_edge

land.lhs.true9.i.i.i.i.if.else.i.i.i.i_crit_edge: ; preds = %land.lhs.true9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i.i.i

land.lhs.true12.i.i.i.i:                          ; preds = %land.lhs.true9.i.i.i.i
  %88 = zext i8 %conv1.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %conv1.i.i.i.i, label %land.lhs.true12.i.i.i.i.if.else.i.i.i.i_crit_edge [
    i8 -64, label %land.lhs.true12.i.i.i.i.if.then23.i.i.i.i_crit_edge
    i8 -96, label %land.lhs.true12.i.i.i.i.if.then23.i.i.i.i_crit_edge27
    i8 -48, label %land.lhs.true12.i.i.i.i.if.then23.i.i.i.i_crit_edge28
  ]

land.lhs.true12.i.i.i.i.if.then23.i.i.i.i_crit_edge28: ; preds = %land.lhs.true12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i.i.i.i

land.lhs.true12.i.i.i.i.if.then23.i.i.i.i_crit_edge27: ; preds = %land.lhs.true12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i.i.i.i

land.lhs.true12.i.i.i.i.if.then23.i.i.i.i_crit_edge: ; preds = %land.lhs.true12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i.i.i.i

land.lhs.true12.i.i.i.i.if.else.i.i.i.i_crit_edge: ; preds = %land.lhs.true12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i.i.i

if.then23.i.i.i.i:                                ; preds = %land.lhs.true12.i.i.i.i.if.then23.i.i.i.i_crit_edge, %land.lhs.true12.i.i.i.i.if.then23.i.i.i.i_crit_edge27, %land.lhs.true12.i.i.i.i.if.then23.i.i.i.i_crit_edge28
  %bdecrypted.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 16
  %89 = ptrtoint ptr %bdecrypted.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %bdecrypted.i.i.i.i, align 2
  %encrypt.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 17
  %90 = ptrtoint ptr %encrypt.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 4, ptr %encrypt.i.i.i.i, align 1
  %hdrlen.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 4
  %91 = ptrtoint ptr %hdrlen.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 24, ptr %hdrlen.i.i.i.i, align 1
  %iv_len30.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 18
  %92 = ptrtoint ptr %iv_len30.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 8, ptr %iv_len30.i.i.i.i, align 4
  %icv_len31.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 19
  %93 = ptrtoint ptr %icv_len31.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 8, ptr %icv_len31.i.i.i.i, align 1
  %ra.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26
  %94 = call ptr @memcpy(ptr %ra.i.i.i.i, ptr %.pre227.i.i.i.i, i32 6)
  %ta.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 25
  %add39.i.i.i.i = add i32 %.pre.i.i.i.i, 10
  %95 = inttoptr i32 %add39.i.i.i.i to ptr
  %96 = call ptr @memcpy(ptr %ta.i.i.i.i, ptr %95, i32 6)
  %97 = ptrtoint ptr %attrib.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %attrib.i.i.i.i, align 4
  %conv40.i.i.i.i = zext i16 %98 to i32
  %sub48.i.i.i.i = add nsw i32 %conv40.i.i.i.i, -40
  %call49.i.i.i.i = call ptr @_rtw_zmalloc(i32 noundef %sub48.i.i.i.i) #7
  %tobool50.not.i.i.i.i = icmp eq ptr %call49.i.i.i.i, null
  br i1 %tobool50.not.i.i.i.i, label %if.then23.i.i.i.i.recv_func_prehandle.exit.i_crit_edge, label %validate_80211w_mgmt.exit.i.i.i

if.then23.i.i.i.i.recv_func_prehandle.exit.i_crit_edge: ; preds = %if.then23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_func_prehandle.exit.i

if.else.i.i.i.i:                                  ; preds = %land.lhs.true12.i.i.i.i.if.else.i.i.i.i_crit_edge, %land.lhs.true9.i.i.i.i.if.else.i.i.i.i_crit_edge, %if.then.i.i.i.i.if.else.i.i.i.i_crit_edge
  %99 = ptrtoint ptr %.pre227.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %.pre227.i.i.i.i, align 1
  %101 = and i8 %100, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool77.not.i.i.i.i = icmp eq i8 %101, 0
  br i1 %tobool77.not.i.i.i.i, label %if.else100.i.i.i.i, label %land.lhs.true78.i.i.i.i

land.lhs.true78.i.i.i.i:                          ; preds = %if.else.i.i.i.i
  %102 = zext i8 %conv1.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %conv1.i.i.i.i, label %land.lhs.true78.i.i.i.i.if.end56.i.i.i_crit_edge [
    i8 -64, label %land.lhs.true78.i.i.i.i.if.then86.i.i.i.i_crit_edge
    i8 -96, label %land.lhs.true78.i.i.i.i.if.then86.i.i.i.i_crit_edge29
    i8 -48, label %land.lhs.true78.i.i.i.i.if.then104.i.i.i.i_crit_edge
  ]

land.lhs.true78.i.i.i.i.if.then104.i.i.i.i_crit_edge: ; preds = %land.lhs.true78.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then104.i.i.i.i

land.lhs.true78.i.i.i.i.if.then86.i.i.i.i_crit_edge29: ; preds = %land.lhs.true78.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then86.i.i.i.i

land.lhs.true78.i.i.i.i.if.then86.i.i.i.i_crit_edge: ; preds = %land.lhs.true78.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then86.i.i.i.i

land.lhs.true78.i.i.i.i.if.end56.i.i.i_crit_edge: ; preds = %land.lhs.true78.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i.i.i

if.then86.i.i.i.i:                                ; preds = %land.lhs.true78.i.i.i.i.if.then86.i.i.i.i_crit_edge, %land.lhs.true78.i.i.i.i.if.then86.i.i.i.i_crit_edge29
  %call87.i.i.i.i = call i32 @rtw_BIP_verify(ptr noundef %1, ptr noundef %precvframe) #7
  %103 = zext i32 %call87.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call87.i.i.i.i, label %if.then86.i.i.i.i.if.end56.i.i.i_crit_edge [
    i32 0, label %if.then86.i.i.i.i.recv_func_prehandle.exit.i_crit_edge
    i32 2, label %if.then94.i.i.i.i
  ]

if.then86.i.i.i.i.recv_func_prehandle.exit.i_crit_edge: ; preds = %if.then86.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_func_prehandle.exit.i

if.then86.i.i.i.i.if.end56.i.i.i_crit_edge:       ; preds = %if.then86.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i.i.i

if.then94.i.i.i.i:                                ; preds = %if.then86.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @issue_action_SA_Query(ptr noundef %1, ptr noundef null, i8 noundef zeroext 0, i16 noundef zeroext 0) #7
  br label %recv_func_prehandle.exit.i

if.else100.i.i.i.i:                               ; preds = %if.else.i.i.i.i
  %104 = zext i8 %conv1.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %conv1.i.i.i.i, label %if.else100.i.i.i.i.if.end56.i.i.i_crit_edge [
    i8 -48, label %if.else100.i.i.i.i.if.then104.i.i.i.i_crit_edge
    i8 -64, label %if.else100.i.i.i.i.if.then138.i.i.i.i_crit_edge
    i8 -96, label %if.else100.i.i.i.i.if.then138.i.i.i.i_crit_edge30
  ]

if.else100.i.i.i.i.if.then138.i.i.i.i_crit_edge30: ; preds = %if.else100.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then138.i.i.i.i

if.else100.i.i.i.i.if.then138.i.i.i.i_crit_edge:  ; preds = %if.else100.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then138.i.i.i.i

if.else100.i.i.i.i.if.then104.i.i.i.i_crit_edge:  ; preds = %if.else100.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then104.i.i.i.i

if.else100.i.i.i.i.if.end56.i.i.i_crit_edge:      ; preds = %if.else100.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i.i.i

if.then104.i.i.i.i:                               ; preds = %if.else100.i.i.i.i.if.then104.i.i.i.i_crit_edge, %land.lhs.true78.i.i.i.i.if.then104.i.i.i.i_crit_edge
  %arrayidx.i.i.i.i = getelementptr i8, ptr %73, i32 24
  %105 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %107 = zext i8 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %106, label %if.then104.i.i.i.i.recv_func_prehandle.exit.i_crit_edge [
    i8 4, label %if.then104.i.i.i.i.if.end56.i.i.i_crit_edge
    i8 7, label %if.then104.i.i.i.i.if.end56.i.i.i_crit_edge31
    i8 11, label %if.then104.i.i.i.i.if.end56.i.i.i_crit_edge32
    i8 15, label %if.then104.i.i.i.i.if.end56.i.i.i_crit_edge33
    i8 127, label %if.then104.i.i.i.i.if.end56.i.i.i_crit_edge34
  ]

if.then104.i.i.i.i.if.end56.i.i.i_crit_edge34:    ; preds = %if.then104.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i.i.i

if.then104.i.i.i.i.if.end56.i.i.i_crit_edge33:    ; preds = %if.then104.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i.i.i

if.then104.i.i.i.i.if.end56.i.i.i_crit_edge32:    ; preds = %if.then104.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i.i.i

if.then104.i.i.i.i.if.end56.i.i.i_crit_edge31:    ; preds = %if.then104.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i.i.i

if.then104.i.i.i.i.if.end56.i.i.i_crit_edge:      ; preds = %if.then104.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i.i.i

if.then104.i.i.i.i.recv_func_prehandle.exit.i_crit_edge: ; preds = %if.then104.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_func_prehandle.exit.i

if.then138.i.i.i.i:                               ; preds = %if.else100.i.i.i.i.if.then138.i.i.i.i_crit_edge, %if.else100.i.i.i.i.if.then138.i.i.i.i_crit_edge30
  call void @issue_action_SA_Query(ptr noundef %1, ptr noundef null, i8 noundef zeroext 0, i16 noundef zeroext 0) #7
  br label %recv_func_prehandle.exit.i

validate_80211w_mgmt.exit.i.i.i:                  ; preds = %if.then23.i.i.i.i
  %call52.i.i.i.i = call fastcc ptr @decryptor(ptr noundef %1, ptr noundef %precvframe) #7
  %108 = ptrtoint ptr %hdrlen.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %hdrlen.i.i.i.i, align 1
  %conv54.i.i.i.i = zext i8 %109 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %73, i32 %conv54.i.i.i.i
  %110 = ptrtoint ptr %iv_len30.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %iv_len30.i.i.i.i, align 4
  %conv56.i.i.i.i = zext i8 %111 to i32
  %add.ptr57.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %conv56.i.i.i.i
  %112 = call ptr @memcpy(ptr %call49.i.i.i.i, ptr %add.ptr57.i.i.i.i, i32 %sub48.i.i.i.i)
  %113 = load i8, ptr %hdrlen.i.i.i.i, align 1
  %conv59.i.i.i.i = zext i8 %113 to i32
  %add.ptr60.i.i.i.i = getelementptr i8, ptr %73, i32 %conv59.i.i.i.i
  %114 = call ptr @memmove(ptr %add.ptr60.i.i.i.i, ptr %add.ptr57.i.i.i.i, i32 %sub48.i.i.i.i)
  %115 = ptrtoint ptr %attrib.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %attrib.i.i.i.i, align 4
  %117 = load i8, ptr %iv_len30.i.i.i.i, align 4
  %conv64.i.i.i.i = zext i8 %117 to i16
  %118 = ptrtoint ptr %icv_len31.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %icv_len31.i.i.i.i, align 1
  %conv67.i.i.i.i = zext i8 %119 to i16
  %120 = add nuw nsw i16 %conv64.i.i.i.i, %conv67.i.i.i.i
  %sub68.i.i.i.i = sub i16 %116, %120
  store i16 %sub68.i.i.i.i, ptr %attrib.i.i.i.i, align 4
  call void @kfree(ptr noundef nonnull %call49.i.i.i.i) #7
  %tobool71.not.i.not.i.i.i = icmp eq ptr %call52.i.i.i.i, null
  br i1 %tobool71.not.i.not.i.i.i, label %validate_80211w_mgmt.exit.i.i.i.recv_func_prehandle.exit.i_crit_edge, label %validate_80211w_mgmt.exit.i.i.i.if.end56.i.i.i_crit_edge

validate_80211w_mgmt.exit.i.i.i.if.end56.i.i.i_crit_edge: ; preds = %validate_80211w_mgmt.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i.i.i

validate_80211w_mgmt.exit.i.i.i.recv_func_prehandle.exit.i_crit_edge: ; preds = %validate_80211w_mgmt.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_func_prehandle.exit.i

if.end56.i.i.i:                                   ; preds = %validate_80211w_mgmt.exit.i.i.i.if.end56.i.i.i_crit_edge, %if.then104.i.i.i.i.if.end56.i.i.i_crit_edge, %if.then104.i.i.i.i.if.end56.i.i.i_crit_edge31, %if.then104.i.i.i.i.if.end56.i.i.i_crit_edge32, %if.then104.i.i.i.i.if.end56.i.i.i_crit_edge33, %if.then104.i.i.i.i.if.end56.i.i.i_crit_edge34, %if.else100.i.i.i.i.if.end56.i.i.i_crit_edge, %if.then86.i.i.i.i.if.end56.i.i.i_crit_edge, %land.lhs.true78.i.i.i.i.if.end56.i.i.i_crit_edge, %land.lhs.true4.i.i.i.i.if.end56.i.i.i_crit_edge, %sw.bb.i.i.i.if.end56.i.i.i_crit_edge
  %call.i.i.i.i = call fastcc ptr @recvframe_chk_defrag(ptr noundef %1, ptr noundef %precvframe) #7
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end56.i.i.i.recv_func_prehandle.exit.i_crit_edge, label %if.end.i105.i.i.i

if.end56.i.i.i.recv_func_prehandle.exit.i_crit_edge: ; preds = %if.end56.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_func_prehandle.exit.i

if.end.i105.i.i.i:                                ; preds = %if.end56.i.i.i
  %stapriv.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11
  %rx_data.i104.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i.i.i.i, i32 0, i32 9
  %121 = ptrtoint ptr %rx_data.i104.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rx_data.i104.i.i.i, align 4
  %123 = ptrtoint ptr %122 to i32
  %add.i.i.i.i = add i32 %123, 10
  %124 = inttoptr i32 %add.i.i.i.i to ptr
  %call1.i.i.i.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i.i.i.i, ptr noundef %124) #7
  %tobool2.not.i.i.i.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i105.i.i.i.if.end51.i.i.i.i_crit_edge, label %if.then3.i.i.i.i

if.end.i105.i.i.i.if.end51.i.i.i.i_crit_edge:     ; preds = %if.end.i105.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i105.i.i.i
  %sta_stats.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call1.i.i.i.i, i32 0, i32 34
  %125 = ptrtoint ptr %sta_stats.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %sta_stats.i.i.i.i, align 8
  %inc.i.i.i.i = add i64 %126, 1
  store i64 %inc.i.i.i.i, ptr %sta_stats.i.i.i.i, align 8
  %127 = ptrtoint ptr %rx_data.i104.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rx_data.i104.i.i.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %128, align 2
  %131 = lshr i16 %130, 8
  %132 = trunc i16 %131 to i8
  %trunc.i.i.i.i = and i8 %132, -4
  %133 = zext i8 %trunc.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %trunc.i.i.i.i, label %if.then3.i.i.i.i.if.end51.i.i.i.i_crit_edge [
    i8 -128, label %if.then6.i.i.i.i
    i8 64, label %if.then14.i.i.i.i
    i8 80, label %if.then23.i106.i.i.i
  ]

if.then3.i.i.i.i.if.end51.i.i.i.i_crit_edge:      ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i.i.i.i

if.then6.i.i.i.i:                                 ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_beacon_pkts.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call1.i.i.i.i, i32 0, i32 34, i32 1
  br label %if.end51.sink.split.i.i.i.i

if.then14.i.i.i.i:                                ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_probereq_pkts.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call1.i.i.i.i, i32 0, i32 34, i32 2
  br label %if.end51.sink.split.i.i.i.i

if.then23.i106.i.i.i:                             ; preds = %if.then3.i.i.i.i
  %mac_addr.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 4
  %134 = ptrtoint ptr %128 to i32
  %add25.i.i.i.i = add i32 %134, 4
  %135 = inttoptr i32 %add25.i.i.i.i to ptr
  %bcmp.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i.i.i.i, ptr noundef dereferenceable(6) %135, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i)
  %tobool27.not.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %tobool27.not.i.i.i.i, label %if.then28.i.i.i.i, label %if.else31.i.i.i.i

if.then28.i.i.i.i:                                ; preds = %if.then23.i106.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_probersp_pkts.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call1.i.i.i.i, i32 0, i32 34, i32 3
  br label %if.end51.sink.split.i.i.i.i

if.else31.i.i.i.i:                                ; preds = %if.then23.i106.i.i.i
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %135, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %137)
  %cmp.i.i.i.i.i = icmp eq i8 %137, -1
  br i1 %cmp.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %lor.lhs.false.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.else31.i.i.i.i
  %arrayidx2.i.i.i.i.i = getelementptr i8, ptr %135, i32 1
  %138 = ptrtoint ptr %arrayidx2.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx2.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %139)
  %cmp4.i.i.i.i.i = icmp eq i8 %139, -1
  br i1 %cmp4.i.i.i.i.i, label %land.lhs.true6.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.else43.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.if.else43.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else43.i.i.i.i

land.lhs.true6.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %arrayidx7.i.i.i.i.i = getelementptr i8, ptr %135, i32 2
  %140 = ptrtoint ptr %arrayidx7.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx7.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %141)
  %cmp9.i.i.i.i.i = icmp eq i8 %141, -1
  br i1 %cmp9.i.i.i.i.i, label %land.lhs.true11.i.i.i.i.i, label %land.lhs.true6.i.i.i.i.i.if.else43.i.i.i.i_crit_edge

land.lhs.true6.i.i.i.i.i.if.else43.i.i.i.i_crit_edge: ; preds = %land.lhs.true6.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else43.i.i.i.i

land.lhs.true11.i.i.i.i.i:                        ; preds = %land.lhs.true6.i.i.i.i.i
  %arrayidx12.i.i.i.i.i = getelementptr i8, ptr %135, i32 3
  %142 = ptrtoint ptr %arrayidx12.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx12.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %143)
  %cmp14.i.i.i.i.i = icmp eq i8 %143, -1
  br i1 %cmp14.i.i.i.i.i, label %land.lhs.true16.i.i.i.i.i, label %land.lhs.true11.i.i.i.i.i.if.else43.i.i.i.i_crit_edge

land.lhs.true11.i.i.i.i.i.if.else43.i.i.i.i_crit_edge: ; preds = %land.lhs.true11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else43.i.i.i.i

land.lhs.true16.i.i.i.i.i:                        ; preds = %land.lhs.true11.i.i.i.i.i
  %arrayidx17.i.i.i.i.i = getelementptr i8, ptr %135, i32 4
  %144 = ptrtoint ptr %arrayidx17.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx17.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %145)
  %cmp19.i.i.i.i.i = icmp eq i8 %145, -1
  br i1 %cmp19.i.i.i.i.i, label %is_broadcast_mac_addr.exit.i.i.i.i, label %land.lhs.true16.i.i.i.i.i.if.else43.i.i.i.i_crit_edge

land.lhs.true16.i.i.i.i.i.if.else43.i.i.i.i_crit_edge: ; preds = %land.lhs.true16.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else43.i.i.i.i

is_broadcast_mac_addr.exit.i.i.i.i:               ; preds = %land.lhs.true16.i.i.i.i.i
  %arrayidx21.i.i.i.i.i = getelementptr i8, ptr %135, i32 5
  %146 = ptrtoint ptr %arrayidx21.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx21.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %147)
  %cmp23.i.not.i.i.i.i = icmp eq i8 %147, -1
  br i1 %cmp23.i.not.i.i.i.i, label %is_broadcast_mac_addr.exit.i.i.i.i.if.then40.i.i.i.i_crit_edge, label %is_broadcast_mac_addr.exit.i.i.i.i.if.else43.i.i.i.i_crit_edge

is_broadcast_mac_addr.exit.i.i.i.i.if.else43.i.i.i.i_crit_edge: ; preds = %is_broadcast_mac_addr.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else43.i.i.i.i

is_broadcast_mac_addr.exit.i.i.i.i.if.then40.i.i.i.i_crit_edge: ; preds = %is_broadcast_mac_addr.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.else31.i.i.i.i
  %148 = and i8 %137, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool39.not.i.i.i.i = icmp eq i8 %148, 0
  br i1 %tobool39.not.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.else43.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.if.then40.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.then40.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40.i.i.i.i

lor.lhs.false.i.i.i.i.if.else43.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else43.i.i.i.i

if.then40.i.i.i.i:                                ; preds = %lor.lhs.false.i.i.i.i.if.then40.i.i.i.i_crit_edge, %is_broadcast_mac_addr.exit.i.i.i.i.if.then40.i.i.i.i_crit_edge
  %rx_probersp_bm_pkts.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call1.i.i.i.i, i32 0, i32 34, i32 4
  br label %if.end51.sink.split.i.i.i.i

if.else43.i.i.i.i:                                ; preds = %lor.lhs.false.i.i.i.i.if.else43.i.i.i.i_crit_edge, %is_broadcast_mac_addr.exit.i.i.i.i.if.else43.i.i.i.i_crit_edge, %land.lhs.true16.i.i.i.i.i.if.else43.i.i.i.i_crit_edge, %land.lhs.true11.i.i.i.i.i.if.else43.i.i.i.i_crit_edge, %land.lhs.true6.i.i.i.i.i.if.else43.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.else43.i.i.i.i_crit_edge
  %rx_probersp_uo_pkts.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call1.i.i.i.i, i32 0, i32 34, i32 5
  br label %if.end51.sink.split.i.i.i.i

if.end51.sink.split.i.i.i.i:                      ; preds = %if.else43.i.i.i.i, %if.then40.i.i.i.i, %if.then28.i.i.i.i, %if.then14.i.i.i.i, %if.then6.i.i.i.i
  %rx_beacon_pkts.sink7.i.i.i.i = phi ptr [ %rx_beacon_pkts.i.i.i.i, %if.then6.i.i.i.i ], [ %rx_probersp_bm_pkts.i.i.i.i, %if.then40.i.i.i.i ], [ %rx_probersp_uo_pkts.i.i.i.i, %if.else43.i.i.i.i ], [ %rx_probersp_pkts.i.i.i.i, %if.then28.i.i.i.i ], [ %rx_probereq_pkts.i.i.i.i, %if.then14.i.i.i.i ]
  %149 = ptrtoint ptr %rx_beacon_pkts.sink7.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %rx_beacon_pkts.sink7.i.i.i.i, align 8
  %inc8.i.i.i.i = add i64 %150, 1
  store i64 %inc8.i.i.i.i, ptr %rx_beacon_pkts.sink7.i.i.i.i, align 8
  br label %if.end51.i.i.i.i

if.end51.i.i.i.i:                                 ; preds = %if.end51.sink.split.i.i.i.i, %if.then3.i.i.i.i.if.end51.i.i.i.i_crit_edge, %if.end.i105.i.i.i.if.end51.i.i.i.i_crit_edge
  call void @mgt_dispatcher(ptr noundef %1, ptr noundef nonnull %call.i.i.i.i) #7
  br label %recv_func_prehandle.exit.i

sw.bb58.i.i.i:                                    ; preds = %if.end.i.i.i
  %stapriv.i107.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11
  %151 = ptrtoint ptr %rx_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %rx_data.i.i.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %152, align 2
  %155 = and i16 %154, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %155)
  %cmp.not.i.i.i.i = icmp eq i16 %155, 1024
  br i1 %cmp.not.i.i.i.i, label %if.end.i112.i.i.i, label %sw.bb58.i.i.i.recv_func_prehandle.exit.i_crit_edge

sw.bb58.i.i.i.recv_func_prehandle.exit.i_crit_edge: ; preds = %sw.bb58.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_func_prehandle.exit.i

if.end.i112.i.i.i:                                ; preds = %sw.bb58.i.i.i
  %156 = ptrtoint ptr %152 to i32
  %add.i109.i.i.i = add i32 %156, 4
  %157 = inttoptr i32 %add.i109.i.i.i to ptr
  %mac_addr.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 4
  %bcmp.i110.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %157, ptr noundef dereferenceable(6) %mac_addr.i.i.i.i.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i110.i.i.i)
  %tobool.not.i111.i.i.i = icmp eq i32 %bcmp.i110.i.i.i, 0
  br i1 %tobool.not.i111.i.i.i, label %if.end4.i.i.i.i, label %if.end.i112.i.i.i.recv_func_prehandle.exit.i_crit_edge

if.end.i112.i.i.i.recv_func_prehandle.exit.i_crit_edge: ; preds = %if.end.i112.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_func_prehandle.exit.i

if.end4.i.i.i.i:                                  ; preds = %if.end.i112.i.i.i
  %add5.i.i.i.i = add i32 %156, 10
  %158 = inttoptr i32 %add5.i.i.i.i to ptr
  %call6.i.i.i.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i107.i.i.i, ptr noundef %158) #7
  %tobool7.not.i.i.i.i = icmp eq ptr %call6.i.i.i.i, null
  br i1 %tobool7.not.i.i.i.i, label %if.end4.i.i.i.i.recv_func_prehandle.exit.i_crit_edge, label %if.end9.i.i.i.i

if.end4.i.i.i.i.recv_func_prehandle.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_func_prehandle.exit.i

if.end9.i.i.i.i:                                  ; preds = %if.end4.i.i.i.i
  %rx_ctrl_pkts.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call6.i.i.i.i, i32 0, i32 34, i32 6
  %159 = ptrtoint ptr %rx_ctrl_pkts.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %rx_ctrl_pkts.i.i.i.i, align 8
  %inc.i113.i.i.i = add i64 %160, 1
  store i64 %inc.i113.i.i.i, ptr %rx_ctrl_pkts.i.i.i.i, align 8
  %161 = ptrtoint ptr %152 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %152, align 2
  %163 = and i16 %162, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23552, i16 %163)
  %cmp12.i.i.i.i = icmp eq i16 %163, -23552
  br i1 %cmp12.i.i.i.i, label %if.then14.i114.i.i.i, label %if.end9.i.i.i.i.recv_func_prehandle.exit.i_crit_edge

if.end9.i.i.i.i.recv_func_prehandle.exit.i_crit_edge: ; preds = %if.end9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_func_prehandle.exit.i

if.then14.i114.i.i.i:                             ; preds = %if.end9.i.i.i.i
  %add15.i.i.i.i = add i32 %156, 2
  %164 = inttoptr i32 %add15.i.i.i.i to ptr
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %164, align 2
  %167 = and i16 %166, -193
  %168 = call i16 @llvm.bswap.i16(i16 %167) #7
  %aid19.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call6.i.i.i.i, i32 0, i32 9
  %169 = ptrtoint ptr %aid19.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %aid19.i.i.i.i, align 4
  %conv20.i.i.i.i = zext i16 %168 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %conv20.i.i.i.i)
  %cmp21.not.i.i.i.i = icmp eq i32 %170, %conv20.i.i.i.i
  br i1 %cmp21.not.i.i.i.i, label %if.end24.i.i.i.i, label %if.then14.i114.i.i.i.recv_func_prehandle.exit.i_crit_edge

if.then14.i114.i.i.i.recv_func_prehandle.exit.i_crit_edge: ; preds = %if.then14.i114.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_func_prehandle.exit.i

if.end24.i.i.i.i:                                 ; preds = %if.then14.i114.i.i.i
  %priority.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 8
  %171 = ptrtoint ptr %priority.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %priority.i.i.i.i, align 1
  %173 = zext i8 %172 to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %172, label %sw.default.i.i.i.i [
    i8 1, label %if.end24.i.i.i.i.sw.bb.i.i.i.i_crit_edge
    i8 2, label %if.end24.i.i.i.i.sw.bb.i.i.i.i_crit_edge35
    i8 4, label %if.end24.i.i.i.i.sw.bb29.i.i.i.i_crit_edge
    i8 5, label %if.end24.i.i.i.i.sw.bb29.i.i.i.i_crit_edge36
    i8 6, label %if.end24.i.i.i.i.sw.bb33.i.i.i.i_crit_edge
    i8 7, label %if.end24.i.i.i.i.sw.bb33.i.i.i.i_crit_edge37
  ]

if.end24.i.i.i.i.sw.bb33.i.i.i.i_crit_edge37:     ; preds = %if.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb33.i.i.i.i

if.end24.i.i.i.i.sw.bb33.i.i.i.i_crit_edge:       ; preds = %if.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb33.i.i.i.i

if.end24.i.i.i.i.sw.bb29.i.i.i.i_crit_edge36:     ; preds = %if.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29.i.i.i.i

if.end24.i.i.i.i.sw.bb29.i.i.i.i_crit_edge:       ; preds = %if.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29.i.i.i.i

if.end24.i.i.i.i.sw.bb.i.i.i.i_crit_edge35:       ; preds = %if.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i.i.i

if.end24.i.i.i.i.sw.bb.i.i.i.i_crit_edge:         ; preds = %if.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %if.end24.i.i.i.i.sw.bb.i.i.i.i_crit_edge, %if.end24.i.i.i.i.sw.bb.i.i.i.i_crit_edge35
  %uapsd_bk.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call6.i.i.i.i, i32 0, i32 64
  br label %sw.epilog.i.i.i.i

sw.bb29.i.i.i.i:                                  ; preds = %if.end24.i.i.i.i.sw.bb29.i.i.i.i_crit_edge, %if.end24.i.i.i.i.sw.bb29.i.i.i.i_crit_edge36
  %uapsd_vi.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call6.i.i.i.i, i32 0, i32 66
  br label %sw.epilog.i.i.i.i

sw.bb33.i.i.i.i:                                  ; preds = %if.end24.i.i.i.i.sw.bb33.i.i.i.i_crit_edge, %if.end24.i.i.i.i.sw.bb33.i.i.i.i_crit_edge37
  %uapsd_vo.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call6.i.i.i.i, i32 0, i32 67
  br label %sw.epilog.i.i.i.i

sw.default.i.i.i.i:                               ; preds = %if.end24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %uapsd_be.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call6.i.i.i.i, i32 0, i32 65
  br label %sw.epilog.i.i.i.i

sw.epilog.i.i.i.i:                                ; preds = %sw.default.i.i.i.i, %sw.bb33.i.i.i.i, %sw.bb29.i.i.i.i, %sw.bb.i.i.i.i
  %wmmps_ac.0.in.in.i.i.i.i = phi ptr [ %uapsd_be.i.i.i.i, %sw.default.i.i.i.i ], [ %uapsd_vo.i.i.i.i, %sw.bb33.i.i.i.i ], [ %uapsd_vi.i.i.i.i, %sw.bb29.i.i.i.i ], [ %uapsd_bk.i.i.i.i, %sw.bb.i.i.i.i ]
  %174 = ptrtoint ptr %wmmps_ac.0.in.in.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %wmmps_ac.0.in.i.i.i.i = load i8, ptr %wmmps_ac.0.in.in.i.i.i.i, align 1
  %wmmps_ac.0.i.i.i.i = and i8 %wmmps_ac.0.in.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wmmps_ac.0.i.i.i.i)
  %tobool41.not.i.i.i.i = icmp eq i8 %wmmps_ac.0.i.i.i.i, 0
  br i1 %tobool41.not.i.i.i.i, label %if.end43.i.i.i.i, label %sw.epilog.i.i.i.i.recv_func_prehandle.exit.i_crit_edge

sw.epilog.i.i.i.i.recv_func_prehandle.exit.i_crit_edge: ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_func_prehandle.exit.i

if.end43.i.i.i.i:                                 ; preds = %sw.epilog.i.i.i.i
  %state.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call6.i.i.i.i, i32 0, i32 8
  %175 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %state.i.i.i.i, align 8
  %and44.i.i.i.i = and i32 %176, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i.i.i.i)
  %tobool45.not.i.i.i.i = icmp eq i32 %and44.i.i.i.i, 0
  br i1 %tobool45.not.i.i.i.i, label %if.end43.i.i.i.i.if.end49.i.i.i.i_crit_edge, label %if.then46.i.i.i.i

if.end43.i.i.i.i.if.end49.i.i.i.i_crit_edge:      ; preds = %if.end43.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i.i.i.i

if.then46.i.i.i.i:                                ; preds = %if.end43.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %expire_to.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11, i32 17
  %177 = ptrtoint ptr %expire_to.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %expire_to.i.i.i.i, align 4
  %expire_to47.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call6.i.i.i.i, i32 0, i32 41
  %179 = ptrtoint ptr %expire_to47.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %expire_to47.i.i.i.i, align 8
  %xor.i.i.i.i = xor i32 %176, 1024
  %180 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %xor.i.i.i.i, ptr %state.i.i.i.i, align 8
  br label %if.end49.i.i.i.i

if.end49.i.i.i.i:                                 ; preds = %if.then46.i.i.i.i, %if.end43.i.i.i.i.if.end49.i.i.i.i_crit_edge
  %181 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %state.i.i.i.i, align 8
  %and51.i.i.i.i = and i32 %182, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i.i.i.i)
  %tobool52.not.i.i.i.i = icmp eq i32 %and51.i.i.i.i, 0
  br i1 %tobool52.not.i.i.i.i, label %if.end49.i.i.i.i.recv_func_prehandle.exit.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end49.i.i.i.i.recv_func_prehandle.exit.i_crit_edge: ; preds = %if.end49.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_func_prehandle.exit.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end49.i.i.i.i
  %sta_dz_bitmap.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11, i32 19
  %183 = ptrtoint ptr %sta_dz_bitmap.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %sta_dz_bitmap.i.i.i.i, align 4
  %conv53.i.i.i.i = zext i16 %184 to i32
  %185 = ptrtoint ptr %aid19.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %aid19.i.i.i.i, align 4
  %shl.i.i.i.i = shl nuw i32 1, %186
  %and55.i.i.i.i = and i32 %shl.i.i.i.i, %conv53.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i.i.i)
  %tobool56.not.i.i.i.i = icmp eq i32 %and55.i.i.i.i, 0
  br i1 %tobool56.not.i.i.i.i, label %land.lhs.true.i.i.i.i.recv_func_prehandle.exit.i_crit_edge, label %if.then57.i.i.i.i

land.lhs.true.i.i.i.i.recv_func_prehandle.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_func_prehandle.exit.i

if.then57.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  %xmitpriv.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9
  call void @_raw_spin_lock_bh(ptr noundef %xmitpriv.i.i.i.i) #7
  %sleep_q.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call6.i.i.i.i, i32 0, i32 6
  %187 = ptrtoint ptr %sleep_q.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %sleep_q.i.i.i.i, align 4
  %cmp60.not.i.i.i.i = icmp eq ptr %sleep_q.i.i.i.i, %188
  br i1 %cmp60.not.i.i.i.i, label %if.else85.i.i.i.i, label %if.then62.i.i.i.i

if.then62.i.i.i.i:                                ; preds = %if.then57.i.i.i.i
  %call.i.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %188) #7
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then62.i.i.i.i.list_del_init.exit.i.i.i.i_crit_edge

if.then62.i.i.i.i.list_del_init.exit.i.i.i.i_crit_edge: ; preds = %if.then62.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then62.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %191 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %188, align 4
  %prev1.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %prev1.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %190, ptr %prev1.i.i.i.i.i.i.i, align 4
  %194 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile ptr %192, ptr %190, align 4
  br label %list_del_init.exit.i.i.i.i

list_del_init.exit.i.i.i.i:                       ; preds = %if.end.i.i.i.i.i.i, %if.then62.i.i.i.i.list_del_init.exit.i.i.i.i_crit_edge
  %195 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %195)
  store volatile ptr %188, ptr %188, align 4
  %prev.i3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %188, i32 0, i32 1
  %196 = ptrtoint ptr %prev.i3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %188, ptr %prev.i3.i.i.i.i.i, align 4
  %sleepq_len.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call6.i.i.i.i, i32 0, i32 7
  %197 = ptrtoint ptr %sleepq_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %sleepq_len.i.i.i.i, align 4
  %dec.i.i.i.i = add i32 %198, -1
  store i32 %dec.i.i.i.i, ptr %sleepq_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %cmp65.not.i.i.i.i = icmp ne i32 %dec.i.i.i.i, 0
  %spec.select.i115.i.i.i = zext i1 %cmp65.not.i.i.i.i to i8
  %199 = getelementptr inbounds %struct.xmit_frame, ptr %188, i32 0, i32 1, i32 33
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %spec.select.i115.i.i.i, ptr %199, align 1
  %triggered.i.i.i.i = getelementptr inbounds %struct.xmit_frame, ptr %188, i32 0, i32 1, i32 35
  %201 = ptrtoint ptr %triggered.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 1, ptr %triggered.i.i.i.i, align 1
  %call73.i.i.i.i = call i32 @rtw_hal_xmitframe_enqueue(ptr noundef %1, ptr noundef %188) #7
  %202 = ptrtoint ptr %sleepq_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %sleepq_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %cmp75.i.i.i.i = icmp eq i32 %203, 0
  br i1 %cmp75.i.i.i.i, label %if.then77.i.i.i.i, label %list_del_init.exit.i.i.i.i.if.end83.i.i.i.i_crit_edge

list_del_init.exit.i.i.i.i.if.end83.i.i.i.i_crit_edge: ; preds = %list_del_init.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i.i.i.i

if.then77.i.i.i.i:                                ; preds = %list_del_init.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %204 = ptrtoint ptr %aid19.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %aid19.i.i.i.i, align 4
  %shl79.i.i.i.i = shl nuw i32 1, %205
  %tim_bitmap.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11, i32 20
  %206 = ptrtoint ptr %tim_bitmap.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %tim_bitmap.i.i.i.i, align 2
  %208 = trunc i32 %shl79.i.i.i.i to i16
  %209 = xor i16 %208, -1
  %conv82.i.i.i.i = and i16 %207, %209
  store i16 %conv82.i.i.i.i, ptr %tim_bitmap.i.i.i.i, align 2
  call void @update_beacon(ptr noundef %1, i8 noundef zeroext 5, ptr noundef null, i8 noundef zeroext 1) #7
  br label %if.end83.i.i.i.i

if.end83.i.i.i.i:                                 ; preds = %if.then77.i.i.i.i, %list_del_init.exit.i.i.i.i.if.end83.i.i.i.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv.i.i.i.i) #7
  br label %recv_func_prehandle.exit.i

if.else85.i.i.i.i:                                ; preds = %if.then57.i.i.i.i
  call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv.i.i.i.i) #7
  %tim_bitmap87.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11, i32 20
  %210 = ptrtoint ptr %tim_bitmap87.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %tim_bitmap87.i.i.i.i, align 2
  %conv88.i.i.i.i = zext i16 %211 to i32
  %212 = ptrtoint ptr %aid19.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %aid19.i.i.i.i, align 4
  %shl90.i.i.i.i = shl nuw i32 1, %213
  %and91.i.i.i.i = and i32 %shl90.i.i.i.i, %conv88.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i.i.i.i)
  %tobool92.not.i.i.i.i = icmp eq i32 %and91.i.i.i.i, 0
  br i1 %tobool92.not.i.i.i.i, label %if.else85.i.i.i.i.recv_func_prehandle.exit.i_crit_edge, label %if.then93.i.i.i.i

if.else85.i.i.i.i.recv_func_prehandle.exit.i_crit_edge: ; preds = %if.else85.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_func_prehandle.exit.i

if.then93.i.i.i.i:                                ; preds = %if.else85.i.i.i.i
  %sleepq_len94.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call6.i.i.i.i, i32 0, i32 7
  %214 = ptrtoint ptr %sleepq_len94.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %sleepq_len94.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %cmp95.i.i.i.i = icmp eq i32 %215, 0
  br i1 %cmp95.i.i.i.i, label %if.then97.i.i.i.i, label %if.else99.i.i.i.i

if.then97.i.i.i.i:                                ; preds = %if.then93.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %hwaddr.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call6.i.i.i.i, i32 0, i32 12
  %call98.i.i.i.i = call i32 @issue_nulldata_in_interrupt(ptr noundef %1, ptr noundef %hwaddr.i.i.i.i) #7
  br label %if.end101.i.i.i.i

if.else99.i.i.i.i:                                ; preds = %if.then93.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %216 = ptrtoint ptr %sleepq_len94.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %sleepq_len94.i.i.i.i, align 4
  br label %if.end101.i.i.i.i

if.end101.i.i.i.i:                                ; preds = %if.else99.i.i.i.i, %if.then97.i.i.i.i
  %217 = ptrtoint ptr %aid19.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %aid19.i.i.i.i, align 4
  %shl103.i.i.i.i = shl nuw i32 1, %218
  %219 = ptrtoint ptr %tim_bitmap87.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %tim_bitmap87.i.i.i.i, align 2
  %221 = trunc i32 %shl103.i.i.i.i to i16
  %222 = xor i16 %221, -1
  %conv108.i.i.i.i = and i16 %220, %222
  store i16 %conv108.i.i.i.i, ptr %tim_bitmap87.i.i.i.i, align 2
  call void @update_beacon(ptr noundef %1, i8 noundef zeroext 5, ptr noundef null, i8 noundef zeroext 1) #7
  br label %recv_func_prehandle.exit.i

sw.bb60.i.i.i:                                    ; preds = %if.end.i.i.i
  %223 = trunc i16 %32 to i8
  %224 = lshr i8 %223, 7
  %qos.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 7
  %225 = ptrtoint ptr %qos.i.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %224, ptr %qos.i.i.i, align 4
  %226 = ptrtoint ptr %rx_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %rx_data.i.i.i, align 4
  %securitypriv.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %227, align 2
  %trunc.i.i.i.i.i = trunc i16 %229 to i2
  %rev.i.i.i.i.i = call i2 @llvm.bitreverse.i2(i2 %trunc.i.i.i.i.i) #7
  %or.i.i.i.i.i = zext i2 %rev.i.i.i.i.i to i32
  %230 = zext i32 %or.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %230, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %or.i.i.i.i.i, label %get_da.exit.thread.i.i.i.i [
    i32 0, label %sw.bb60.i.i.i.get_da.exit.i.i.i.i_crit_edge
    i32 1, label %sw.bb60.i.i.i.get_da.exit.i.i.i.i_crit_edge38
    i32 2, label %get_sa.exit.thread294.i.i.i.i
  ]

sw.bb60.i.i.i.get_da.exit.i.i.i.i_crit_edge38:    ; preds = %sw.bb60.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_da.exit.i.i.i.i

sw.bb60.i.i.i.get_da.exit.i.i.i.i_crit_edge:      ; preds = %sw.bb60.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_da.exit.i.i.i.i

get_sa.exit.thread294.i.i.i.i:                    ; preds = %sw.bb60.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %231 = ptrtoint ptr %227 to i32
  %add10.i284.i.i.i.i = add i32 %231, 16
  %da.0.i285.i.i.i.i = inttoptr i32 %add10.i284.i.i.i.i to ptr
  %add10.i225297.i.i.i.i = add i32 %231, 10
  br label %get_hdr_bssid.exit.i.i.i.i

get_da.exit.thread.i.i.i.i:                       ; preds = %sw.bb60.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %232 = ptrtoint ptr %227 to i32
  %add10.i278.i.i.i.i = add i32 %232, 16
  %da.0.i279.i.i.i.i = inttoptr i32 %add10.i278.i.i.i.i to ptr
  br label %get_sa.exit.thread301.i.i.i.i

get_da.exit.i.i.i.i:                              ; preds = %sw.bb60.i.i.i.get_da.exit.i.i.i.i_crit_edge, %sw.bb60.i.i.i.get_da.exit.i.i.i.i_crit_edge38
  %233 = ptrtoint ptr %227 to i32
  %add10.i.i.i.i.i = add i32 %233, 4
  %da.0.i.i.i.i.i = inttoptr i32 %add10.i.i.i.i.i to ptr
  %234 = zext i32 %or.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %234, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %or.i.i.i.i.i, label %get_da.exit.i.i.i.i.get_sa.exit.thread301.i.i.i.i_crit_edge [
    i32 0, label %get_sa.exit.i.i.i.i
    i32 1, label %get_sa.exit.thread.i.i.i.i
  ]

get_da.exit.i.i.i.i.get_sa.exit.thread301.i.i.i.i_crit_edge: ; preds = %get_da.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_sa.exit.thread301.i.i.i.i

get_sa.exit.thread.i.i.i.i:                       ; preds = %get_da.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add10.i225288.i.i.i.i = add i32 %233, 16
  br label %get_hdr_bssid.exit.i.i.i.i

get_sa.exit.thread301.i.i.i.i:                    ; preds = %get_da.exit.i.i.i.i.get_sa.exit.thread301.i.i.i.i_crit_edge, %get_da.exit.thread.i.i.i.i
  %da.0.i281.i.i.i.i = phi ptr [ %da.0.i279.i.i.i.i, %get_da.exit.thread.i.i.i.i ], [ %da.0.i.i.i.i.i, %get_da.exit.i.i.i.i.get_sa.exit.thread301.i.i.i.i_crit_edge ]
  %235 = phi i32 [ %232, %get_da.exit.thread.i.i.i.i ], [ %233, %get_da.exit.i.i.i.i.get_sa.exit.thread301.i.i.i.i_crit_edge ]
  %add10.i225304.i.i.i.i = add i32 %235, 24
  br label %get_hdr_bssid.exit.i.i.i.i

get_sa.exit.i.i.i.i:                              ; preds = %get_da.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add10.i225.i.i.i.i = add i32 %233, 10
  br label %get_hdr_bssid.exit.i.i.i.i

get_hdr_bssid.exit.i.i.i.i:                       ; preds = %get_sa.exit.i.i.i.i, %get_sa.exit.thread301.i.i.i.i, %get_sa.exit.thread.i.i.i.i, %get_sa.exit.thread294.i.i.i.i
  %sa.0.i293.in.i.i.i.i = phi i32 [ %add10.i225304.i.i.i.i, %get_sa.exit.thread301.i.i.i.i ], [ %add10.i225297.i.i.i.i, %get_sa.exit.thread294.i.i.i.i ], [ %add10.i225288.i.i.i.i, %get_sa.exit.thread.i.i.i.i ], [ %add10.i225.i.i.i.i, %get_sa.exit.i.i.i.i ]
  %236 = phi i32 [ %235, %get_sa.exit.thread301.i.i.i.i ], [ %231, %get_sa.exit.thread294.i.i.i.i ], [ %233, %get_sa.exit.thread.i.i.i.i ], [ %233, %get_sa.exit.i.i.i.i ]
  %da.0.i280291.i.i.i.i = phi ptr [ %da.0.i281.i.i.i.i, %get_sa.exit.thread301.i.i.i.i ], [ %da.0.i285.i.i.i.i, %get_sa.exit.thread294.i.i.i.i ], [ %da.0.i.i.i.i.i, %get_sa.exit.thread.i.i.i.i ], [ %da.0.i.i.i.i.i, %get_sa.exit.i.i.i.i ]
  %.sink17.i.i.i.i.i = phi i32 [ 4, %get_sa.exit.thread301.i.i.i.i ], [ 4, %get_sa.exit.thread294.i.i.i.i ], [ 10, %get_sa.exit.thread.i.i.i.i ], [ 16, %get_sa.exit.i.i.i.i ]
  %sa.0.i293.i.i.i.i = inttoptr i32 %sa.0.i293.in.i.i.i.i to ptr
  %add11.i.i.i.i.i = add i32 %.sink17.i.i.i.i.i, %236
  %sa.0.i231.i.i.i.i = inttoptr i32 %add11.i.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add11.i.i.i.i.i)
  %tobool.not.i117.i.i.i = icmp eq i32 %add11.i.i.i.i.i, 0
  br i1 %tobool.not.i117.i.i.i, label %get_hdr_bssid.exit.i.i.i.i.if.then67.i.i.i_crit_edge, label %if.end.i118.i.i.i

get_hdr_bssid.exit.i.i.i.i.if.then67.i.i.i_crit_edge: ; preds = %get_hdr_bssid.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

if.end.i118.i.i.i:                                ; preds = %get_hdr_bssid.exit.i.i.i.i
  %dst.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 23
  %237 = call ptr @memcpy(ptr %dst.i.i.i.i, ptr %da.0.i280291.i.i.i.i, i32 6)
  %src.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 24
  %238 = call ptr @memcpy(ptr %src.i.i.i.i, ptr %sa.0.i293.i.i.i.i, i32 6)
  %bssid.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 27
  %239 = call ptr @memcpy(ptr %bssid.i.i.i.i, ptr %sa.0.i231.i.i.i.i, i32 6)
  %240 = ptrtoint ptr %to_fr_ds.i.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %to_fr_ds.i.i.i, align 2
  %242 = zext i8 %241 to i64
  call void @__sanitizer_cov_trace_switch(i64 %242, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %241, label %if.end.i118.i.i.i.if.then67.i.i.i_crit_edge [
    i8 0, label %sw.bb.i121.i.i.i
    i8 1, label %sw.bb11.i.i.i.i
    i8 2, label %sw.bb17.i.i.i.i
    i8 3, label %sw.bb23.i.i.i.i
  ]

if.end.i118.i.i.i.if.then67.i.i.i_crit_edge:      ; preds = %if.end.i118.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

sw.bb.i121.i.i.i:                                 ; preds = %if.end.i118.i.i.i
  %ra.i119.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26
  %243 = call ptr @memcpy(ptr %ra.i119.i.i.i, ptr %da.0.i280291.i.i.i.i, i32 6)
  %ta.i120.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 25
  %244 = call ptr @memcpy(ptr %ta.i120.i.i.i, ptr %sa.0.i293.i.i.i.i, i32 6)
  %stapriv.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11
  %mac_address.i.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 20, i32 6, i32 1
  %mac_addr.i.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 4
  %245 = ptrtoint ptr %dst.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %dst.i.i.i.i, align 1
  %247 = and i8 %246, 1
  %248 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %fw_state.i.i, align 4
  %250 = and i32 %249, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %if.else.i.i.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %sw.bb.i121.i.i.i
  %bcmp138.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i.i.i.i.i.i, ptr noundef dereferenceable(6) %src.i.i.i.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp138.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %bcmp138.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i.if.then67.i.i.i_crit_edge, label %if.end.i.i.i.i68.i

if.then.i.i.i.i.i.if.then67.i.i.i_crit_edge:      ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

if.end.i.i.i.i68.i:                               ; preds = %if.then.i.i.i.i.i
  %bcmp139.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i.i.i.i.i.i, ptr noundef dereferenceable(6) %dst.i.i.i.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp139.i.i.i.i.i)
  %tobool12.not.i.i.i.i.i = icmp ne i32 %bcmp139.i.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool13.not.i.i.i.i.i = icmp eq i8 %247, 0
  %or.cond.i.i.i.i.i = select i1 %tobool12.not.i.i.i.i.i, i1 %tobool13.not.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %if.end.i.i.i.i68.i.if.then67.i.i.i_crit_edge, label %if.end15.i.i.i.i.i

if.end.i.i.i.i68.i.if.then67.i.i.i_crit_edge:     ; preds = %if.end.i.i.i.i68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

if.end15.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i68.i
  %bcmp140.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %bssid.i.i.i.i, ptr noundef nonnull dereferenceable(6) @.str.12, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp140.i.i.i.i.i)
  %tobool18.not.i.i.i.i.i = icmp eq i32 %bcmp140.i.i.i.i.i, 0
  br i1 %tobool18.not.i.i.i.i.i, label %if.end15.i.i.i.i.i.if.then67.i.i.i_crit_edge, label %lor.lhs.false19.i.i.i.i.i

if.end15.i.i.i.i.i.if.then67.i.i.i_crit_edge:     ; preds = %if.end15.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

lor.lhs.false19.i.i.i.i.i:                        ; preds = %if.end15.i.i.i.i.i
  %bcmp141.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address.i.i.i.i.i.i, ptr noundef nonnull dereferenceable(6) @.str.12, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp141.i.i.i.i.i)
  %tobool21.not.i.i.i.i.i = icmp eq i32 %bcmp141.i.i.i.i.i, 0
  br i1 %tobool21.not.i.i.i.i.i, label %lor.lhs.false19.i.i.i.i.i.if.then67.i.i.i_crit_edge, label %lor.lhs.false22.i.i.i.i.i

lor.lhs.false19.i.i.i.i.i.if.then67.i.i.i_crit_edge: ; preds = %lor.lhs.false19.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

lor.lhs.false22.i.i.i.i.i:                        ; preds = %lor.lhs.false19.i.i.i.i.i
  %bcmp142.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %bssid.i.i.i.i, ptr noundef dereferenceable(6) %mac_address.i.i.i.i.i.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp142.i.i.i.i.i)
  %tobool26.not.i.i.i.i.i = icmp eq i32 %bcmp142.i.i.i.i.i, 0
  br i1 %tobool26.not.i.i.i.i.i, label %lor.lhs.false22.i.i.i.i.i.if.end90.i.i.i.i.i_crit_edge, label %lor.lhs.false22.i.i.i.i.i.if.then67.i.i.i_crit_edge

lor.lhs.false22.i.i.i.i.i.if.then67.i.i.i_crit_edge: ; preds = %lor.lhs.false22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

lor.lhs.false22.i.i.i.i.i.if.end90.i.i.i.i.i_crit_edge: ; preds = %lor.lhs.false22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %sw.bb.i121.i.i.i
  %and.i148.i.i.i.i.i = and i32 %249, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i148.i.i.i.i.i)
  %tobool.not.i149.not.i.i.i.i.i = icmp eq i32 %and.i148.i.i.i.i.i, 0
  br i1 %tobool.not.i149.not.i.i.i.i.i, label %if.else44.i.i.i.i.i, label %if.then33.i.i.i.i.i

if.then33.i.i.i.i.i:                              ; preds = %if.else.i.i.i.i.i
  %bcmp137.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %bssid.i.i.i.i, ptr noundef dereferenceable(6) %src.i.i.i.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp137.i.i.i.i.i)
  %tobool39.not.i.i.i.i.i = icmp eq i32 %bcmp137.i.i.i.i.i, 0
  br i1 %tobool39.not.i.i.i.i.i, label %if.then33.i.i.i.i.i.if.end90.i.i.i.i.i_crit_edge, label %if.then33.i.i.i.i.i.if.then67.i.i.i_crit_edge

if.then33.i.i.i.i.i.if.then67.i.i.i_crit_edge:    ; preds = %if.then33.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

if.then33.i.i.i.i.i.if.end90.i.i.i.i.i_crit_edge: ; preds = %if.then33.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90.i.i.i.i.i

if.else44.i.i.i.i.i:                              ; preds = %if.else.i.i.i.i.i
  %and.i152.i.i.i.i.i = and i32 %249, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i152.i.i.i.i.i)
  %tobool.not.i153.not.i.i.i.i.i = icmp eq i32 %and.i152.i.i.i.i.i, 0
  br i1 %tobool.not.i153.not.i.i.i.i.i, label %if.else68.i.i.i.i.i, label %if.then47.i.i.i.i.i

if.then47.i.i.i.i.i:                              ; preds = %if.else44.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool48.not.i.i.i.i.i = icmp eq i8 %247, 0
  br i1 %tobool48.not.i.i.i.i.i, label %if.else56.i.i.i.i.i, label %if.then49.i.i.i.i.i

if.then49.i.i.i.i.i:                              ; preds = %if.then47.i.i.i.i.i
  %252 = ptrtoint ptr %bssid.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %bssid.i.i.i.i, align 1
  %254 = and i8 %253, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %254)
  %tobool53.not.i.i.i.i.i = icmp eq i8 %254, 0
  br i1 %tobool53.not.i.i.i.i.i, label %if.then49.i.i.i.i.i.if.then67.i.i.i_crit_edge, label %if.then49.i.i.i.i.i.if.then92.i.i.i.i.i_crit_edge

if.then49.i.i.i.i.i.if.then92.i.i.i.i.i_crit_edge: ; preds = %if.then49.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92.i.i.i.i.i

if.then49.i.i.i.i.i.if.then67.i.i.i_crit_edge:    ; preds = %if.then49.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

if.else56.i.i.i.i.i:                              ; preds = %if.then47.i.i.i.i.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %bssid.i.i.i.i, ptr noundef dereferenceable(6) %dst.i.i.i.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i.i)
  %tobool62.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %tobool62.not.i.i.i.i.i, label %if.else56.i.i.i.i.i.if.else94.i.i.i.i.i_crit_edge, label %if.else56.i.i.i.i.i.if.then67.i.i.i_crit_edge

if.else56.i.i.i.i.i.if.then67.i.i.i_crit_edge:    ; preds = %if.else56.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

if.else56.i.i.i.i.i.if.else94.i.i.i.i.i_crit_edge: ; preds = %if.else56.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else94.i.i.i.i.i

if.else68.i.i.i.i.i:                              ; preds = %if.else44.i.i.i.i.i
  %and.i156.i.i.i.i.i = and i32 %249, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i156.i.i.i.i.i)
  %tobool.not.i157.not.i.i.i.i.i = icmp eq i32 %and.i156.i.i.i.i.i, 0
  br i1 %tobool.not.i157.not.i.i.i.i.i, label %if.else68.i.i.i.i.i.if.end90.i.i.i.i.i_crit_edge, label %if.then71.i.i.i.i.i

if.else68.i.i.i.i.i.if.end90.i.i.i.i.i_crit_edge: ; preds = %if.else68.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90.i.i.i.i.i

if.then71.i.i.i.i.i:                              ; preds = %if.else68.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i.i.i.i = add i32 %236, 4
  %255 = inttoptr i32 %add.i.i.i.i.i to ptr
  %256 = call ptr @memcpy(ptr %dst.i.i.i.i, ptr %255, i32 6)
  %add76.i.i.i.i.i = add i32 %236, 10
  %257 = inttoptr i32 %add76.i.i.i.i.i to ptr
  %258 = call ptr @memcpy(ptr %src.i.i.i.i, ptr %257, i32 6)
  %add79.i.i.i.i.i = add i32 %236, 16
  %259 = inttoptr i32 %add79.i.i.i.i.i to ptr
  %260 = call ptr @memcpy(ptr %bssid.i.i.i.i, ptr %259, i32 6)
  %261 = call ptr @memcpy(ptr %ra.i119.i.i.i, ptr %dst.i.i.i.i, i32 6)
  %262 = call ptr @memcpy(ptr %ta.i120.i.i.i, ptr %src.i.i.i.i, i32 6)
  br label %if.end90.i.i.i.i.i

if.end90.i.i.i.i.i:                               ; preds = %if.then71.i.i.i.i.i, %if.else68.i.i.i.i.i.if.end90.i.i.i.i.i_crit_edge, %if.then33.i.i.i.i.i.if.end90.i.i.i.i.i_crit_edge, %lor.lhs.false22.i.i.i.i.i.if.end90.i.i.i.i.i_crit_edge
  %ret.0.i.i.i.i.i = phi i32 [ 1, %if.then71.i.i.i.i.i ], [ 1, %lor.lhs.false22.i.i.i.i.i.if.end90.i.i.i.i.i_crit_edge ], [ 1, %if.then33.i.i.i.i.i.if.end90.i.i.i.i.i_crit_edge ], [ 0, %if.else68.i.i.i.i.i.if.end90.i.i.i.i.i_crit_edge ]
  %sta_addr.0.i.i.i.i.i = phi ptr [ %mac_address.i.i.i.i.i.i, %if.then71.i.i.i.i.i ], [ %src.i.i.i.i, %lor.lhs.false22.i.i.i.i.i.if.end90.i.i.i.i.i_crit_edge ], [ %bssid.i.i.i.i, %if.then33.i.i.i.i.i.if.end90.i.i.i.i.i_crit_edge ], [ null, %if.else68.i.i.i.i.i.if.end90.i.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool91.not.i.i.i.i.i = icmp eq i8 %247, 0
  br i1 %tobool91.not.i.i.i.i.i, label %if.end90.i.i.i.i.i.if.else94.i.i.i.i.i_crit_edge, label %if.end90.i.i.i.i.i.if.then92.i.i.i.i.i_crit_edge

if.end90.i.i.i.i.i.if.then92.i.i.i.i.i_crit_edge: ; preds = %if.end90.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92.i.i.i.i.i

if.end90.i.i.i.i.i.if.else94.i.i.i.i.i_crit_edge: ; preds = %if.end90.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else94.i.i.i.i.i

if.then92.i.i.i.i.i:                              ; preds = %if.end90.i.i.i.i.i.if.then92.i.i.i.i.i_crit_edge, %if.then49.i.i.i.i.i.if.then92.i.i.i.i.i_crit_edge
  %ret.0169.i.i.i.i.i = phi i32 [ %ret.0.i.i.i.i.i, %if.end90.i.i.i.i.i.if.then92.i.i.i.i.i_crit_edge ], [ 1, %if.then49.i.i.i.i.i.if.then92.i.i.i.i.i_crit_edge ]
  %call93.i.i.i.i.i = call ptr @rtw_get_bcmc_stainfo(ptr noundef %1) #7
  br label %if.end96.i.i.i.i.i

if.else94.i.i.i.i.i:                              ; preds = %if.end90.i.i.i.i.i.if.else94.i.i.i.i.i_crit_edge, %if.else56.i.i.i.i.i.if.else94.i.i.i.i.i_crit_edge
  %sta_addr.0164.i.i.i.i.i = phi ptr [ %sta_addr.0.i.i.i.i.i, %if.end90.i.i.i.i.i.if.else94.i.i.i.i.i_crit_edge ], [ %src.i.i.i.i, %if.else56.i.i.i.i.i.if.else94.i.i.i.i.i_crit_edge ]
  %ret.0163.i.i.i.i.i = phi i32 [ %ret.0.i.i.i.i.i, %if.end90.i.i.i.i.i.if.else94.i.i.i.i.i_crit_edge ], [ 1, %if.else56.i.i.i.i.i.if.else94.i.i.i.i.i_crit_edge ]
  %call95.i.i.i.i.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i.i.i.i.i, ptr noundef %sta_addr.0164.i.i.i.i.i) #7
  br label %if.end96.i.i.i.i.i

if.end96.i.i.i.i.i:                               ; preds = %if.else94.i.i.i.i.i, %if.then92.i.i.i.i.i
  %ret.0162.i.i.i.i.i = phi i32 [ %ret.0163.i.i.i.i.i, %if.else94.i.i.i.i.i ], [ %ret.0169.i.i.i.i.i, %if.then92.i.i.i.i.i ]
  %storemerge.i.i.i.i.i = phi ptr [ %call95.i.i.i.i.i, %if.else94.i.i.i.i.i ], [ %call93.i.i.i.i.i, %if.then92.i.i.i.i.i ]
  %tobool97.not.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %tobool97.not.i.i.i.i.i, label %if.end96.i.i.i.i.i.if.then67.i.i.i_crit_edge, label %if.end96.i.i.i.i.i.sw.epilog.i125.i.i.i_crit_edge

if.end96.i.i.i.i.i.sw.epilog.i125.i.i.i_crit_edge: ; preds = %if.end96.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i125.i.i.i

if.end96.i.i.i.i.i.if.then67.i.i.i_crit_edge:     ; preds = %if.end96.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

sw.bb11.i.i.i.i:                                  ; preds = %if.end.i118.i.i.i
  %ra12.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26
  %263 = call ptr @memcpy(ptr %ra12.i.i.i.i, ptr %da.0.i280291.i.i.i.i, i32 6)
  %ta14.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 25
  %264 = call ptr @memcpy(ptr %ta14.i.i.i.i, ptr %sa.0.i231.i.i.i.i, i32 6)
  %stapriv.i233.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11
  %mac_address.i.i234.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 20, i32 6, i32 1
  %mac_addr.i.i235.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 4
  %265 = ptrtoint ptr %dst.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %dst.i.i.i.i, align 1
  %267 = and i8 %266, 1
  %268 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %269, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  %270 = and i32 %269, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %271 = icmp eq i32 %270, 0
  %or.cond197.i.i.i.i.i = or i1 %tobool.not.i.not.i.i.i.i.i, %271
  br i1 %or.cond197.i.i.i.i.i, label %if.else52.i.i.i.i.i, label %if.then.i240.i.i.i.i

if.then.i240.i.i.i.i:                             ; preds = %sw.bb11.i.i.i.i
  %bcmp168.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i.i235.i.i.i.i, ptr noundef dereferenceable(6) %src.i.i.i.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp168.i.i.i.i.i)
  %tobool.not.i239.i.i.i.i = icmp eq i32 %bcmp168.i.i.i.i.i, 0
  br i1 %tobool.not.i239.i.i.i.i, label %if.then.i240.i.i.i.i.if.then67.i.i.i_crit_edge, label %if.end.i242.i.i.i.i

if.then.i240.i.i.i.i.if.then67.i.i.i_crit_edge:   ; preds = %if.then.i240.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

if.end.i242.i.i.i.i:                              ; preds = %if.then.i240.i.i.i.i
  %bcmp169.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i.i235.i.i.i.i, ptr noundef dereferenceable(6) %dst.i.i.i.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp169.i.i.i.i.i)
  %tobool14.not.i.i.i.i.i = icmp ne i32 %bcmp169.i.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool16.not.i.i.i.i.i = icmp eq i8 %267, 0
  %or.cond.i241.i.i.i.i = select i1 %tobool14.not.i.i.i.i.i, i1 %tobool16.not.i.i.i.i.i, i1 false
  br i1 %or.cond.i241.i.i.i.i, label %if.end.i242.i.i.i.i.if.then67.i.i.i_crit_edge, label %if.end18.i.i.i.i.i

if.end.i242.i.i.i.i.if.then67.i.i.i_crit_edge:    ; preds = %if.end.i242.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

if.end18.i.i.i.i.i:                               ; preds = %if.end.i242.i.i.i.i
  %bcmp170.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %bssid.i.i.i.i, ptr noundef nonnull dereferenceable(6) @.str.12, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp170.i.i.i.i.i)
  %tobool21.not.i244.i.i.i.i = icmp eq i32 %bcmp170.i.i.i.i.i, 0
  br i1 %tobool21.not.i244.i.i.i.i, label %if.end18.i.i.i.i.i.if.then30.i.i.i.i.i_crit_edge, label %lor.lhs.false22.i245.i.i.i.i

if.end18.i.i.i.i.i.if.then30.i.i.i.i.i_crit_edge: ; preds = %if.end18.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30.i.i.i.i.i

lor.lhs.false22.i245.i.i.i.i:                     ; preds = %if.end18.i.i.i.i.i
  %bcmp171.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address.i.i234.i.i.i.i, ptr noundef nonnull dereferenceable(6) @.str.12, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp171.i.i.i.i.i)
  %tobool24.not.i.i.i.i.i = icmp eq i32 %bcmp171.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i.i.i, label %lor.lhs.false22.i245.i.i.i.i.if.then30.i.i.i.i.i_crit_edge, label %lor.lhs.false25.i.i.i.i.i

lor.lhs.false22.i245.i.i.i.i.if.then30.i.i.i.i.i_crit_edge: ; preds = %lor.lhs.false22.i245.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30.i.i.i.i.i

lor.lhs.false25.i.i.i.i.i:                        ; preds = %lor.lhs.false22.i245.i.i.i.i
  %bcmp172.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %bssid.i.i.i.i, ptr noundef dereferenceable(6) %mac_address.i.i234.i.i.i.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp172.i.i.i.i.i)
  %tobool29.not.i.i.i.i.i = icmp eq i32 %bcmp172.i.i.i.i.i, 0
  br i1 %tobool29.not.i.i.i.i.i, label %if.end37.i.i.i.i.i, label %lor.lhs.false25.i.i.i.i.i.if.then30.i.i.i.i.i_crit_edge

lor.lhs.false25.i.i.i.i.i.if.then30.i.i.i.i.i_crit_edge: ; preds = %lor.lhs.false25.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30.i.i.i.i.i

if.then30.i.i.i.i.i:                              ; preds = %lor.lhs.false25.i.i.i.i.i.if.then30.i.i.i.i.i_crit_edge, %lor.lhs.false22.i245.i.i.i.i.if.then30.i.i.i.i.i_crit_edge, %if.end18.i.i.i.i.i.if.then30.i.i.i.i.i_crit_edge
  br i1 %tobool16.not.i.i.i.i.i, label %if.then32.i.i.i.i.i, label %if.then30.i.i.i.i.i.if.then67.i.i.i_crit_edge

if.then30.i.i.i.i.i.if.then67.i.i.i_crit_edge:    ; preds = %if.then30.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

if.then32.i.i.i.i.i:                              ; preds = %if.then30.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call35.i.i.i.i.i = call i32 @issue_deauth(ptr noundef %1, ptr noundef %bssid.i.i.i.i, i16 noundef zeroext 7) #7
  br label %if.then67.i.i.i

if.end37.i.i.i.i.i:                               ; preds = %lor.lhs.false25.i.i.i.i.i
  br i1 %tobool16.not.i.i.i.i.i, label %if.else.i246.i.i.i.i, label %if.then39.i.i.i.i.i

if.then39.i.i.i.i.i:                              ; preds = %if.end37.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call40.i.i.i.i.i = call ptr @rtw_get_bcmc_stainfo(ptr noundef %1) #7
  br label %if.end44.i.i.i.i.i

if.else.i246.i.i.i.i:                             ; preds = %if.end37.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call43.i.i.i.i.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i233.i.i.i.i, ptr noundef %bssid.i.i.i.i) #7
  br label %if.end44.i.i.i.i.i

if.end44.i.i.i.i.i:                               ; preds = %if.else.i246.i.i.i.i, %if.then39.i.i.i.i.i
  %storemerge.i247.i.i.i.i = phi ptr [ %call43.i.i.i.i.i, %if.else.i246.i.i.i.i ], [ %call40.i.i.i.i.i, %if.then39.i.i.i.i.i ]
  %tobool45.not.i.i.i.i.i = icmp eq ptr %storemerge.i247.i.i.i.i, null
  br i1 %tobool45.not.i.i.i.i.i, label %if.end44.i.i.i.i.i.if.then67.i.i.i_crit_edge, label %if.end47.i.i.i.i.i

if.end44.i.i.i.i.i.if.then67.i.i.i_crit_edge:     ; preds = %if.end44.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

if.end47.i.i.i.i.i:                               ; preds = %if.end44.i.i.i.i.i
  %272 = ptrtoint ptr %227 to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %227, align 2
  %274 = and i16 %273, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %274)
  %tobool49.not.i.i.i.i.i = icmp eq i16 %274, 0
  br i1 %tobool49.not.i.i.i.i.i, label %if.end47.i.i.i.i.i.if.end39.i.i.i.i_crit_edge, label %if.then50.i.i.i.i.i

if.end47.i.i.i.i.i.if.end39.i.i.i.i_crit_edge:    ; preds = %if.end47.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i.i.i

if.then50.i.i.i.i.i:                              ; preds = %if.end47.i.i.i.i.i
  %len.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 7
  %275 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %len.i.i.i.i, align 4
  %conv.i.i.i = sext i32 %276 to i64
  %rx_bytes.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 9
  %277 = ptrtoint ptr %rx_bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %277)
  %278 = load i64, ptr %rx_bytes.i.i.i, align 8
  %add.i5.i.i = add i64 %278, %conv.i.i.i
  store i64 %add.i5.i.i, ptr %rx_bytes.i.i.i, align 8
  %NumRxOkInPeriod.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 34, i32 1
  %279 = ptrtoint ptr %NumRxOkInPeriod.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %NumRxOkInPeriod.i.i.i, align 4
  %inc.i6.i.i = add i32 %280, 1
  store i32 %inc.i6.i.i, ptr %NumRxOkInPeriod.i.i.i, align 4
  %281 = ptrtoint ptr %dst.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %dst.i.i.i.i, align 2
  %283 = and i8 %282, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %tobool.not.i.i.i = icmp eq i8 %283, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then50.i.i.i.i.i.count_rx_stats.exit.i.i_crit_edge

if.then50.i.i.i.i.i.count_rx_stats.exit.i.i_crit_edge: ; preds = %if.then50.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %count_rx_stats.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then50.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %NumRxUnicastOkInPeriod.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 34, i32 2
  %284 = ptrtoint ptr %NumRxUnicastOkInPeriod.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %NumRxUnicastOkInPeriod.i.i.i, align 8
  %inc37.i.i.i = add i32 %285, 1
  store i32 %inc37.i.i.i, ptr %NumRxUnicastOkInPeriod.i.i.i, align 8
  br label %count_rx_stats.exit.i.i

count_rx_stats.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then50.i.i.i.i.i.count_rx_stats.exit.i.i_crit_edge
  %rx_data_pkts.i.i.i = getelementptr inbounds %struct.sta_info, ptr %storemerge.i247.i.i.i.i, i32 0, i32 34, i32 7
  %286 = ptrtoint ptr %rx_data_pkts.i.i.i to i32
  call void @__asan_load8_noabort(i32 %286)
  %287 = load i64, ptr %rx_data_pkts.i.i.i, align 8
  %inc44.i.i.i = add i64 %287, 1
  store i64 %inc44.i.i.i, ptr %rx_data_pkts.i.i.i, align 8
  %rx_bytes46.i.i.i = getelementptr inbounds %struct.sta_info, ptr %storemerge.i247.i.i.i.i, i32 0, i32 34, i32 16
  %288 = ptrtoint ptr %rx_bytes46.i.i.i to i32
  call void @__asan_load8_noabort(i32 %288)
  %289 = load i64, ptr %rx_bytes46.i.i.i, align 8
  %add47.i.i.i = add i64 %289, %conv.i.i.i
  store i64 %add47.i.i.i, ptr %rx_bytes46.i.i.i, align 8
  call void @traffic_check_for_leave_lps(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 0) #7
  br label %recv_func_prehandle.exit.i

if.else52.i.i.i.i.i:                              ; preds = %sw.bb11.i.i.i.i
  %290 = and i32 %269, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %290)
  %.not.i.i.i.i.i = icmp eq i32 %290, 65537
  br i1 %.not.i.i.i.i.i, label %if.then60.i.i.i.i.i, label %if.else83.i.i.i.i.i

if.then60.i.i.i.i.i:                              ; preds = %if.else52.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i248.i.i.i.i = add i32 %236, 4
  %291 = inttoptr i32 %add.i248.i.i.i.i to ptr
  %292 = call ptr @memcpy(ptr %dst.i.i.i.i, ptr %291, i32 6)
  %add65.i.i.i.i.i = add i32 %236, 10
  %293 = inttoptr i32 %add65.i.i.i.i.i to ptr
  %294 = call ptr @memcpy(ptr %src.i.i.i.i, ptr %293, i32 6)
  %add68.i.i.i.i.i = add i32 %236, 16
  %295 = inttoptr i32 %add68.i.i.i.i.i to ptr
  %296 = call ptr @memcpy(ptr %bssid.i.i.i.i, ptr %295, i32 6)
  %297 = call ptr @memcpy(ptr %ra12.i.i.i.i, ptr %dst.i.i.i.i, i32 6)
  %298 = call ptr @memcpy(ptr %ta14.i.i.i.i, ptr %src.i.i.i.i, i32 6)
  %299 = call ptr @memcpy(ptr %bssid.i.i.i.i, ptr %mac_address.i.i234.i.i.i.i, i32 6)
  %call79.i.i.i.i.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i233.i.i.i.i, ptr noundef %bssid.i.i.i.i) #7
  %tobool80.not.i.i.i.i.i = icmp ne ptr %call79.i.i.i.i.i, null
  %spec.select.i251.i.i.i.i = zext i1 %tobool80.not.i.i.i.i.i to i32
  br label %sw.epilog.i125.i.i.i

if.else83.i.i.i.i.i:                              ; preds = %if.else52.i.i.i.i.i
  %and.i191.i.i.i.i.i = and i32 %269, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i191.i.i.i.i.i)
  %tobool.not.i192.not.i.i.i.i.i = icmp eq i32 %and.i191.i.i.i.i.i, 0
  br i1 %tobool.not.i192.not.i.i.i.i.i, label %if.else88.i.i.i.i.i, label %if.else83.i.i.i.i.i.recv_func_prehandle.exit.i_crit_edge

if.else83.i.i.i.i.i.recv_func_prehandle.exit.i_crit_edge: ; preds = %if.else83.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_func_prehandle.exit.i

if.else88.i.i.i.i.i:                              ; preds = %if.else83.i.i.i.i.i
  %bcmp.i252.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i.i235.i.i.i.i, ptr noundef dereferenceable(6) %dst.i.i.i.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i252.i.i.i.i)
  %tobool92.not.i.i.i.i.i = icmp eq i32 %bcmp.i252.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool94.not.i.i.i.i.i = icmp eq i8 %267, 0
  %or.cond173.i.i.i.i.i = select i1 %tobool92.not.i.i.i.i.i, i1 %tobool94.not.i.i.i.i.i, i1 false
  br i1 %or.cond173.i.i.i.i.i, label %if.then95.i.i.i.i.i, label %if.else88.i.i.i.i.i.if.then67.i.i.i_crit_edge

if.else88.i.i.i.i.i.if.then67.i.i.i_crit_edge:    ; preds = %if.else88.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

if.then95.i.i.i.i.i:                              ; preds = %if.else88.i.i.i.i.i
  %call98.i.i.i.i.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i233.i.i.i.i, ptr noundef %bssid.i.i.i.i) #7
  %tobool99.not.i.i.i.i.i = icmp eq ptr %call98.i.i.i.i.i, null
  br i1 %tobool99.not.i.i.i.i.i, label %if.then100.i.i.i.i.i, label %if.then95.i.i.i.i.i.if.then67.i.i.i_crit_edge

if.then95.i.i.i.i.i.if.then67.i.i.i_crit_edge:    ; preds = %if.then95.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

if.then100.i.i.i.i.i:                             ; preds = %if.then95.i.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %300 = load volatile i32, ptr @jiffies, align 128
  %301 = load i32, ptr @ap2sta_data_frame.send_issue_deauth_time, align 4
  %sub.i.i.i.i.i = sub i32 %300, %301
  %call101.i.i.i.i.i = call i32 @jiffies_to_msecs(i32 noundef %sub.i.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call101.i.i.i.i.i)
  %cmp102.i.i.i.i.i = icmp ugt i32 %call101.i.i.i.i.i, 10000
  br i1 %cmp102.i.i.i.i.i, label %if.then100.i.i.i.i.i.if.then107.i.i.i.i.i_crit_edge, label %lor.lhs.false104.i.i.i.i.i

if.then100.i.i.i.i.i.if.then107.i.i.i.i.i_crit_edge: ; preds = %if.then100.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then107.i.i.i.i.i

lor.lhs.false104.i.i.i.i.i:                       ; preds = %if.then100.i.i.i.i.i
  %302 = load i32, ptr @ap2sta_data_frame.send_issue_deauth_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %cmp105.i.i.i.i.i = icmp eq i32 %302, 0
  br i1 %cmp105.i.i.i.i.i, label %lor.lhs.false104.i.i.i.i.i.if.then107.i.i.i.i.i_crit_edge, label %lor.lhs.false104.i.i.i.i.i.if.then67.i.i.i_crit_edge

lor.lhs.false104.i.i.i.i.i.if.then67.i.i.i_crit_edge: ; preds = %lor.lhs.false104.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

lor.lhs.false104.i.i.i.i.i.if.then107.i.i.i.i.i_crit_edge: ; preds = %lor.lhs.false104.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then107.i.i.i.i.i

if.then107.i.i.i.i.i:                             ; preds = %lor.lhs.false104.i.i.i.i.i.if.then107.i.i.i.i.i_crit_edge, %if.then100.i.i.i.i.i.if.then107.i.i.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %303 = load volatile i32, ptr @jiffies, align 128
  store i32 %303, ptr @ap2sta_data_frame.send_issue_deauth_time, align 4
  %call110.i.i.i.i.i = call i32 @issue_deauth(ptr noundef %1, ptr noundef %bssid.i.i.i.i, i16 noundef zeroext 7) #7
  br label %if.then67.i.i.i

sw.bb17.i.i.i.i:                                  ; preds = %if.end.i118.i.i.i
  %ra18.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26
  %304 = call ptr @memcpy(ptr %ra18.i.i.i.i, ptr %sa.0.i231.i.i.i.i, i32 6)
  %ta20.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 25
  %305 = call ptr @memcpy(ptr %ta20.i.i.i.i, ptr %sa.0.i293.i.i.i.i, i32 6)
  %stapriv.i255.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11
  %306 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i257.i.i.i.i = and i32 %307, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i257.i.i.i.i)
  %tobool.not.i.not.i258.i.i.i.i = icmp eq i32 %and.i.i257.i.i.i.i, 0
  br i1 %tobool.not.i.not.i258.i.i.i.i, label %if.else.i269.i.i.i.i, label %if.then.i262.i.i.i.i

if.then.i262.i.i.i.i:                             ; preds = %sw.bb17.i.i.i.i
  %mac_address.i.i259.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 20, i32 6, i32 1
  %bcmp58.i.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %bssid.i.i.i.i, ptr noundef dereferenceable(6) %mac_address.i.i259.i.i.i.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp58.i.i.i.i.i)
  %tobool.not.i261.i.i.i.i = icmp eq i32 %bcmp58.i.i.i.i.i, 0
  br i1 %tobool.not.i261.i.i.i.i, label %if.end.i264.i.i.i.i, label %if.then.i262.i.i.i.i.if.then67.i.i.i_crit_edge

if.then.i262.i.i.i.i.if.then67.i.i.i_crit_edge:   ; preds = %if.then.i262.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

if.end.i264.i.i.i.i:                              ; preds = %if.then.i262.i.i.i.i
  %call5.i.i.i.i.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i255.i.i.i.i, ptr noundef %src.i.i.i.i) #7
  %tobool6.not.i.i.i.i.i = icmp eq ptr %call5.i.i.i.i.i, null
  br i1 %tobool6.not.i.i.i.i.i, label %if.then7.i.i.i.i.i, label %if.end11.i.i.i.i.i

if.then7.i.i.i.i.i:                               ; preds = %if.end.i264.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i.i.i.i.i = call i32 @issue_deauth(ptr noundef %1, ptr noundef %src.i.i.i.i, i16 noundef zeroext 7) #7
  br label %recv_func_prehandle.exit.i

if.end11.i.i.i.i.i:                               ; preds = %if.end.i264.i.i.i.i
  %308 = ptrtoint ptr %rx_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %rx_data.i.i.i, align 4
  %call.i.i.i122.i.i.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i255.i.i.i.i, ptr noundef %src.i.i.i.i) #7
  %tobool.not.i59.i.i.i.i.i = icmp eq ptr %call.i.i.i122.i.i.i, null
  br i1 %tobool.not.i59.i.i.i.i.i, label %if.end11.i.i.i.i.i.process_pwrbit_data.exit.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i

if.end11.i.i.i.i.i.process_pwrbit_data.exit.i.i.i.i.i_crit_edge: ; preds = %if.end11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %process_pwrbit_data.exit.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.end11.i.i.i.i.i
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %309, align 2
  %312 = and i16 %311, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %312)
  %tobool3.not.i.i.i.i.i.i = icmp eq i16 %312, 0
  %state8.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i.i.i122.i.i.i, i32 0, i32 8
  %313 = ptrtoint ptr %state8.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %state8.i.i.i.i.i.i, align 8
  %and9.i.i.i.i.i.i = and i32 %314, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i.i.i.i.i)
  %tobool10.not.i.i.i.i.i.i = icmp eq i32 %and9.i.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i, label %if.then4.i.i.i.i.i.i

if.then4.i.i.i.i.i.i:                             ; preds = %if.then.i.i.i.i.i.i
  br i1 %tobool10.not.i.i.i.i.i.i, label %if.then7.i.i.i.i.i.i, label %if.then4.i.i.i.i.i.i.process_pwrbit_data.exit.i.i.i.i.i_crit_edge

if.then4.i.i.i.i.i.i.process_pwrbit_data.exit.i.i.i.i.i_crit_edge: ; preds = %if.then4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %process_pwrbit_data.exit.i.i.i.i.i

if.then7.i.i.i.i.i.i:                             ; preds = %if.then4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @stop_sta_xmit(ptr noundef %1, ptr noundef nonnull %call.i.i.i122.i.i.i) #7
  br label %process_pwrbit_data.exit.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i.i
  br i1 %tobool10.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.process_pwrbit_data.exit.i.i.i.i.i_crit_edge, label %if.then11.i.i.i.i.i.i

if.else.i.i.i.i.i.i.process_pwrbit_data.exit.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %process_pwrbit_data.exit.i.i.i.i.i

if.then11.i.i.i.i.i.i:                            ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @wakeup_sta_to_xmit(ptr noundef %1, ptr noundef nonnull %call.i.i.i122.i.i.i) #7
  br label %process_pwrbit_data.exit.i.i.i.i.i

process_pwrbit_data.exit.i.i.i.i.i:               ; preds = %if.then11.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.process_pwrbit_data.exit.i.i.i.i.i_crit_edge, %if.then7.i.i.i.i.i.i, %if.then4.i.i.i.i.i.i.process_pwrbit_data.exit.i.i.i.i.i_crit_edge, %if.end11.i.i.i.i.i.process_pwrbit_data.exit.i.i.i.i.i_crit_edge
  %315 = ptrtoint ptr %227 to i32
  call void @__asan_load2_noabort(i32 %315)
  %316 = load i16, ptr %227, align 2
  %317 = and i16 %316, -30720
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %317)
  %cmp13.i.i.i.i.i = icmp eq i16 %317, -30720
  br i1 %cmp13.i.i.i.i.i, label %if.then15.i.i.i.i.i, label %process_pwrbit_data.exit.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge

process_pwrbit_data.exit.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge: ; preds = %process_pwrbit_data.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i.i.i.i

if.then15.i.i.i.i.i:                              ; preds = %process_pwrbit_data.exit.i.i.i.i.i
  %call.i62.i.i.i.i.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i255.i.i.i.i, ptr noundef %src.i.i.i.i) #7
  %tobool.not.i63.i.i.i.i.i = icmp eq ptr %call.i62.i.i.i.i.i, null
  br i1 %tobool.not.i63.i.i.i.i.i, label %if.then15.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge, label %if.end.i.i.i123.i.i.i

if.then15.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge: ; preds = %if.then15.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i.i.i.i

if.end.i.i.i123.i.i.i:                            ; preds = %if.then15.i.i.i.i.i
  %qos_option.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i62.i.i.i.i.i, i32 0, i32 11
  %318 = ptrtoint ptr %qos_option.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %qos_option.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %319)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %319, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end.i.i.i123.i.i.i.if.end16.i.i.i.i.i_crit_edge, label %if.end3.i.i.i.i.i.i

if.end.i.i.i123.i.i.i.if.end16.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i123.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i.i.i.i

if.end3.i.i.i.i.i.i:                              ; preds = %if.end.i.i.i123.i.i.i
  %qos_info.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i62.i.i.i.i.i, i32 0, i32 62
  %320 = ptrtoint ptr %qos_info.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %qos_info.i.i.i.i.i.i, align 8
  %322 = and i8 %321, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool4.not.i.i.i.i.i.i = icmp eq i8 %322, 0
  br i1 %tobool4.not.i.i.i.i.i.i, label %if.end3.i.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge, label %if.end6.i.i.i.i.i.i

if.end3.i.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge: ; preds = %if.end3.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i.i.i.i

if.end6.i.i.i.i.i.i:                              ; preds = %if.end3.i.i.i.i.i.i
  %state.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i62.i.i.i.i.i, i32 0, i32 8
  %323 = ptrtoint ptr %state.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %state.i.i.i.i.i.i, align 8
  %and7.i.i.i.i.i.i = and i32 %324, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i.i.i.i)
  %tobool8.not.i.i.i.i.i.i = icmp eq i32 %and7.i.i.i.i.i.i, 0
  br i1 %tobool8.not.i.i.i.i.i.i, label %if.end6.i.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge, label %if.then9.i.i.i.i.i.i

if.end6.i.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge: ; preds = %if.end6.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i.i.i.i

if.then9.i.i.i.i.i.i:                             ; preds = %if.end6.i.i.i.i.i.i
  %priority.i.i.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 8
  %325 = ptrtoint ptr %priority.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %priority.i.i.i.i.i.i, align 1
  %327 = zext i8 %326 to i64
  call void @__sanitizer_cov_trace_switch(i64 %327, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %326, label %sw.default.i.i.i.i.i.i [
    i8 1, label %if.then9.i.i.i.i.i.i.sw.bb.i.i.i.i.i.i_crit_edge
    i8 2, label %if.then9.i.i.i.i.i.i.sw.bb.i.i.i.i.i.i_crit_edge39
    i8 4, label %if.then9.i.i.i.i.i.i.sw.bb14.i.i.i.i.i.i_crit_edge
    i8 5, label %if.then9.i.i.i.i.i.i.sw.bb14.i.i.i.i.i.i_crit_edge40
    i8 6, label %if.then9.i.i.i.i.i.i.sw.bb18.i.i.i.i.i.i_crit_edge
    i8 7, label %if.then9.i.i.i.i.i.i.sw.bb18.i.i.i.i.i.i_crit_edge41
  ]

if.then9.i.i.i.i.i.i.sw.bb18.i.i.i.i.i.i_crit_edge41: ; preds = %if.then9.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb18.i.i.i.i.i.i

if.then9.i.i.i.i.i.i.sw.bb18.i.i.i.i.i.i_crit_edge: ; preds = %if.then9.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb18.i.i.i.i.i.i

if.then9.i.i.i.i.i.i.sw.bb14.i.i.i.i.i.i_crit_edge40: ; preds = %if.then9.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i.i.i.i.i.i

if.then9.i.i.i.i.i.i.sw.bb14.i.i.i.i.i.i_crit_edge: ; preds = %if.then9.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i.i.i.i.i.i

if.then9.i.i.i.i.i.i.sw.bb.i.i.i.i.i.i_crit_edge39: ; preds = %if.then9.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i.i.i.i.i

if.then9.i.i.i.i.i.i.sw.bb.i.i.i.i.i.i_crit_edge: ; preds = %if.then9.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i.i.i.i.i

sw.bb.i.i.i.i.i.i:                                ; preds = %if.then9.i.i.i.i.i.i.sw.bb.i.i.i.i.i.i_crit_edge, %if.then9.i.i.i.i.i.i.sw.bb.i.i.i.i.i.i_crit_edge39
  %uapsd_bk.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i62.i.i.i.i.i, i32 0, i32 64
  br label %sw.epilog.i.i.i.i.i.i

sw.bb14.i.i.i.i.i.i:                              ; preds = %if.then9.i.i.i.i.i.i.sw.bb14.i.i.i.i.i.i_crit_edge, %if.then9.i.i.i.i.i.i.sw.bb14.i.i.i.i.i.i_crit_edge40
  %uapsd_vi.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i62.i.i.i.i.i, i32 0, i32 66
  br label %sw.epilog.i.i.i.i.i.i

sw.bb18.i.i.i.i.i.i:                              ; preds = %if.then9.i.i.i.i.i.i.sw.bb18.i.i.i.i.i.i_crit_edge, %if.then9.i.i.i.i.i.i.sw.bb18.i.i.i.i.i.i_crit_edge41
  %uapsd_vo.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i62.i.i.i.i.i, i32 0, i32 67
  br label %sw.epilog.i.i.i.i.i.i

sw.default.i.i.i.i.i.i:                           ; preds = %if.then9.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %uapsd_be.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i62.i.i.i.i.i, i32 0, i32 65
  br label %sw.epilog.i.i.i.i.i.i

sw.epilog.i.i.i.i.i.i:                            ; preds = %sw.default.i.i.i.i.i.i, %sw.bb18.i.i.i.i.i.i, %sw.bb14.i.i.i.i.i.i, %sw.bb.i.i.i.i.i.i
  %wmmps_ac.0.in.in.i.i.i.i.i.i = phi ptr [ %uapsd_be.i.i.i.i.i.i, %sw.default.i.i.i.i.i.i ], [ %uapsd_vo.i.i.i.i.i.i, %sw.bb18.i.i.i.i.i.i ], [ %uapsd_vi.i.i.i.i.i.i, %sw.bb14.i.i.i.i.i.i ], [ %uapsd_bk.i.i.i.i.i.i, %sw.bb.i.i.i.i.i.i ]
  %328 = ptrtoint ptr %wmmps_ac.0.in.in.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %wmmps_ac.0.in.i.i.i.i.i.i = load i8, ptr %wmmps_ac.0.in.in.i.i.i.i.i.i, align 1
  %wmmps_ac.0.i.i.i.i.i.i = and i8 %wmmps_ac.0.in.i.i.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wmmps_ac.0.i.i.i.i.i.i)
  %tobool26.not.i.i.i.i.i.i = icmp eq i8 %wmmps_ac.0.i.i.i.i.i.i, 0
  br i1 %tobool26.not.i.i.i.i.i.i, label %sw.epilog.i.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge, label %if.then27.i.i.i.i.i.i

sw.epilog.i.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge: ; preds = %sw.epilog.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i.i.i.i

if.then27.i.i.i.i.i.i:                            ; preds = %sw.epilog.i.i.i.i.i.i
  %sleepq_ac_len.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i62.i.i.i.i.i, i32 0, i32 69
  %329 = ptrtoint ptr %sleepq_ac_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %sleepq_ac_len.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %330)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %330, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.else.i64.i.i.i.i.i, label %if.then29.i.i.i.i.i.i

if.then29.i.i.i.i.i.i:                            ; preds = %if.then27.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @xmit_delivery_enabled_frames(ptr noundef %1, ptr noundef nonnull %call.i62.i.i.i.i.i) #7
  br label %if.end16.i.i.i.i.i

if.else.i64.i.i.i.i.i:                            ; preds = %if.then27.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %hwaddr.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call.i62.i.i.i.i.i, i32 0, i32 12
  %conv32.i.i.i.i.i.i = zext i8 %326 to i16
  %call33.i.i.i.i.i.i = call i32 @issue_qos_nulldata(ptr noundef %1, ptr noundef %hwaddr.i.i.i.i.i.i, i16 noundef zeroext %conv32.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0) #7
  br label %if.end16.i.i.i.i.i

if.end16.i.i.i.i.i:                               ; preds = %if.else.i64.i.i.i.i.i, %if.then29.i.i.i.i.i.i, %sw.epilog.i.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge, %if.end6.i.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge, %if.end3.i.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge, %if.end.i.i.i123.i.i.i.if.end16.i.i.i.i.i_crit_edge, %if.then15.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge, %process_pwrbit_data.exit.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge
  %331 = ptrtoint ptr %227 to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %227, align 2
  %333 = and i16 %332, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %333)
  %tobool20.not.i.i.i.i.i = icmp eq i16 %333, 0
  br i1 %tobool20.not.i.i.i.i.i, label %if.end16.i.i.i.i.i.if.end39.i.i.i.i_crit_edge, label %if.then21.i.i.i.i.i

if.end16.i.i.i.i.i.if.end39.i.i.i.i_crit_edge:    ; preds = %if.end16.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i.i.i

if.then21.i.i.i.i.i:                              ; preds = %if.end16.i.i.i.i.i
  %len.i.i.i.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 7
  %334 = ptrtoint ptr %len.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %len.i.i.i.i.i.i.i, align 4
  %conv.i.i.i.i.i.i = sext i32 %335 to i64
  %rx_bytes.i.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 9
  %336 = ptrtoint ptr %rx_bytes.i.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %336)
  %337 = load i64, ptr %rx_bytes.i.i.i.i.i.i, align 8
  %add.i.i.i.i.i.i = add i64 %337, %conv.i.i.i.i.i.i
  store i64 %add.i.i.i.i.i.i, ptr %rx_bytes.i.i.i.i.i.i, align 8
  %NumRxOkInPeriod.i.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 34, i32 1
  %338 = ptrtoint ptr %NumRxOkInPeriod.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %NumRxOkInPeriod.i.i.i.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %339, 1
  store i32 %inc.i.i.i.i.i.i, ptr %NumRxOkInPeriod.i.i.i.i.i.i, align 4
  %340 = ptrtoint ptr %dst.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %dst.i.i.i.i, align 2
  %342 = and i8 %341, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %342)
  %tobool.not.i65.i.i.i.i.i = icmp eq i8 %342, 0
  br i1 %tobool.not.i65.i.i.i.i.i, label %if.then.i66.i.i.i.i.i, label %if.then21.i.i.i.i.i.count_rx_stats.exit.i.i.i.i.i_crit_edge

if.then21.i.i.i.i.i.count_rx_stats.exit.i.i.i.i.i_crit_edge: ; preds = %if.then21.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %count_rx_stats.exit.i.i.i.i.i

if.then.i66.i.i.i.i.i:                            ; preds = %if.then21.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %NumRxUnicastOkInPeriod.i.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 34, i32 2
  %343 = ptrtoint ptr %NumRxUnicastOkInPeriod.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %NumRxUnicastOkInPeriod.i.i.i.i.i.i, align 8
  %inc37.i.i.i.i.i.i = add i32 %344, 1
  store i32 %inc37.i.i.i.i.i.i, ptr %NumRxUnicastOkInPeriod.i.i.i.i.i.i, align 8
  br label %count_rx_stats.exit.i.i.i.i.i

count_rx_stats.exit.i.i.i.i.i:                    ; preds = %if.then.i66.i.i.i.i.i, %if.then21.i.i.i.i.i.count_rx_stats.exit.i.i.i.i.i_crit_edge
  %rx_data_pkts.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call5.i.i.i.i.i, i32 0, i32 34, i32 7
  %345 = ptrtoint ptr %rx_data_pkts.i.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %345)
  %346 = load i64, ptr %rx_data_pkts.i.i.i.i.i.i, align 8
  %inc44.i.i.i.i.i.i = add i64 %346, 1
  store i64 %inc44.i.i.i.i.i.i, ptr %rx_data_pkts.i.i.i.i.i.i, align 8
  %rx_bytes46.i.i.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call5.i.i.i.i.i, i32 0, i32 34, i32 16
  %347 = ptrtoint ptr %rx_bytes46.i.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %347)
  %348 = load i64, ptr %rx_bytes46.i.i.i.i.i.i, align 8
  %add47.i.i.i.i.i.i = add i64 %348, %conv.i.i.i.i.i.i
  store i64 %add47.i.i.i.i.i.i, ptr %rx_bytes46.i.i.i.i.i.i, align 8
  call void @traffic_check_for_leave_lps(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 0) #7
  br label %recv_func_prehandle.exit.i

if.else.i269.i.i.i.i:                             ; preds = %sw.bb17.i.i.i.i
  %mac_addr.i.i265.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 4
  %bcmp.i267.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %ra18.i.i.i.i, ptr noundef dereferenceable(6) %mac_addr.i.i265.i.i.i.i, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i267.i.i.i.i)
  %tobool26.not.i268.i.i.i.i = icmp eq i32 %bcmp.i267.i.i.i.i, 0
  br i1 %tobool26.not.i268.i.i.i.i, label %if.end28.i.i.i.i.i, label %if.else.i269.i.i.i.i.recv_func_prehandle.exit.i_crit_edge

if.else.i269.i.i.i.i.recv_func_prehandle.exit.i_crit_edge: ; preds = %if.else.i269.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_func_prehandle.exit.i

if.end28.i.i.i.i.i:                               ; preds = %if.else.i269.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call31.i.i.i.i.i = call i32 @issue_deauth(ptr noundef %1, ptr noundef %src.i.i.i.i, i16 noundef zeroext 7) #7
  br label %recv_func_prehandle.exit.i

sw.bb23.i.i.i.i:                                  ; preds = %if.end.i118.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %ra24.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26
  %add.i124.i.i.i = add i32 %236, 4
  %349 = inttoptr i32 %add.i124.i.i.i to ptr
  %350 = call ptr @memcpy(ptr %ra24.i.i.i.i, ptr %349, i32 6)
  %ta26.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 25
  %add28.i.i.i.i = add i32 %236, 10
  %351 = inttoptr i32 %add28.i.i.i.i to ptr
  %352 = call ptr @memcpy(ptr %ta26.i.i.i.i, ptr %351, i32 6)
  br label %if.then67.i.i.i

sw.epilog.i125.i.i.i:                             ; preds = %if.then60.i.i.i.i.i, %if.end96.i.i.i.i.i.sw.epilog.i125.i.i.i_crit_edge
  %psta.3.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i, %if.end96.i.i.i.i.i.sw.epilog.i125.i.i.i_crit_edge ], [ %call79.i.i.i.i.i, %if.then60.i.i.i.i.i ]
  %ret.0.i.i.i.i = phi i32 [ %ret.0162.i.i.i.i.i, %if.end96.i.i.i.i.i.sw.epilog.i125.i.i.i_crit_edge ], [ %spec.select.i251.i.i.i.i, %if.then60.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i.i.i)
  %cond.i.i.i.i = icmp eq i32 %ret.0.i.i.i.i, 0
  %tobool37.not.i.i.i.i = icmp eq ptr %psta.3.i.i.i.i, null
  %or.cond.i.i.i.i = select i1 %cond.i.i.i.i, i1 true, i1 %tobool37.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %sw.epilog.i125.i.i.i.if.then67.i.i.i_crit_edge, label %sw.epilog.i125.i.i.i.if.end39.i.i.i.i_crit_edge

sw.epilog.i125.i.i.i.if.end39.i.i.i.i_crit_edge:  ; preds = %sw.epilog.i125.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i.i.i

sw.epilog.i125.i.i.i.if.then67.i.i.i_crit_edge:   ; preds = %sw.epilog.i125.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

if.end39.i.i.i.i:                                 ; preds = %sw.epilog.i125.i.i.i.if.end39.i.i.i.i_crit_edge, %if.end16.i.i.i.i.i.if.end39.i.i.i.i_crit_edge, %if.end47.i.i.i.i.i.if.end39.i.i.i.i_crit_edge
  %psta.3318324.i.i.i.i = phi ptr [ %call5.i.i.i.i.i, %if.end16.i.i.i.i.i.if.end39.i.i.i.i_crit_edge ], [ %storemerge.i247.i.i.i.i, %if.end47.i.i.i.i.i.if.end39.i.i.i.i_crit_edge ], [ %psta.3.i.i.i.i, %sw.epilog.i125.i.i.i.if.end39.i.i.i.i_crit_edge ]
  %psta40.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 13
  %353 = ptrtoint ptr %psta40.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr %psta.3318324.i.i.i.i, ptr %psta40.i.i.i.i, align 4
  %amsdu.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 6
  %354 = ptrtoint ptr %amsdu.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 0, ptr %amsdu.i.i.i.i, align 1
  %ack_policy.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 28
  %355 = ptrtoint ptr %ack_policy.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 0, ptr %ack_policy.i.i.i.i, align 4
  %356 = ptrtoint ptr %qos.i.i.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %qos.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %357)
  %cmp42.i.i.i.i = icmp eq i8 %357, 1
  br i1 %cmp42.i.i.i.i, label %if.then44.i.i.i.i, label %if.else74.i.i.i.i

if.then44.i.i.i.i:                                ; preds = %if.end39.i.i.i.i
  %add.ptr.i126.i.i.i = getelementptr i8, ptr %227, i32 24
  %358 = ptrtoint ptr %add.ptr.i126.i.i.i to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %add.ptr.i126.i.i.i, align 2
  %360 = lshr i16 %359, 8
  %361 = trunc i16 %360 to i8
  %conv47.i.i.i.i = and i8 %361, 15
  %priority.i127.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 8
  %362 = ptrtoint ptr %priority.i127.i.i.i to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %conv47.i.i.i.i, ptr %priority.i127.i.i.i, align 1
  %363 = load i16, ptr %add.ptr.i126.i.i.i, align 2
  %364 = lshr i16 %363, 13
  %365 = trunc i16 %364 to i8
  %conv51.i.i.i.i = and i8 %365, 3
  %366 = ptrtoint ptr %ack_policy.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 %conv51.i.i.i.i, ptr %ack_policy.i.i.i.i, align 4
  %367 = load i16, ptr %add.ptr.i126.i.i.i, align 2
  %368 = lshr i16 %367, 15
  %conv57.i.i.i.i = trunc i16 %368 to i8
  %369 = ptrtoint ptr %amsdu.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 %conv57.i.i.i.i, ptr %amsdu.i.i.i.i, align 1
  %370 = ptrtoint ptr %to_fr_ds.i.i.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %to_fr_ds.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %371)
  %cmp61.i.i.i.i = icmp eq i8 %371, 3
  %conv63.i.i.i.i = select i1 %cmp61.i.i.i.i, i8 32, i8 26
  %hdrlen.i128.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 4
  %372 = ptrtoint ptr %hdrlen.i128.i.i.i to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 %conv63.i.i.i.i, ptr %hdrlen.i128.i.i.i, align 1
  %trunc.i129.i.i.i = trunc i16 %360 to i4
  %373 = zext i4 %trunc.i129.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %373, ptr @__sancov_gen_cov_switch_values.25)
  switch i4 %trunc.i129.i.i.i, label %if.then72.i.i.i.i [
    i4 0, label %if.then44.i.i.i.i.if.end83.i130.i.i.i_crit_edge
    i4 3, label %if.then44.i.i.i.i.if.end83.i130.i.i.i_crit_edge42
  ]

if.then44.i.i.i.i.if.end83.i130.i.i.i_crit_edge42: ; preds = %if.then44.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i130.i.i.i

if.then44.i.i.i.i.if.end83.i130.i.i.i_crit_edge:  ; preds = %if.then44.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i130.i.i.i

if.then72.i.i.i.i:                                ; preds = %if.then44.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %bIsAnyNonBEPkts.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 8
  %374 = ptrtoint ptr %bIsAnyNonBEPkts.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 1, ptr %bIsAnyNonBEPkts.i.i.i.i, align 8
  br label %if.end83.i130.i.i.i

if.else74.i.i.i.i:                                ; preds = %if.end39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %priority75.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 8
  %375 = ptrtoint ptr %priority75.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 0, ptr %priority75.i.i.i.i, align 1
  %376 = ptrtoint ptr %to_fr_ds.i.i.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %to_fr_ds.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %377)
  %cmp78.i.i.i.i = icmp eq i8 %377, 3
  %conv81.i.i.i.i = select i1 %cmp78.i.i.i.i, i8 30, i8 24
  %hdrlen82.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 4
  %378 = ptrtoint ptr %hdrlen82.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 %conv81.i.i.i.i, ptr %hdrlen82.i.i.i.i, align 1
  br label %if.end83.i130.i.i.i

if.end83.i130.i.i.i:                              ; preds = %if.else74.i.i.i.i, %if.then72.i.i.i.i, %if.then44.i.i.i.i.if.end83.i130.i.i.i_crit_edge, %if.then44.i.i.i.i.if.end83.i130.i.i.i_crit_edge42
  %379 = ptrtoint ptr %order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %order.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %380)
  %tobool84.not.i.i.i.i = icmp eq i8 %380, 0
  br i1 %tobool84.not.i.i.i.i, label %if.end83.i130.i.i.i.if.end90.i.i.i.i_crit_edge, label %if.then85.i.i.i.i

if.end83.i130.i.i.i.if.end90.i.i.i.i_crit_edge:   ; preds = %if.end83.i130.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90.i.i.i.i

if.then85.i.i.i.i:                                ; preds = %if.end83.i130.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %hdrlen86.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 4
  %381 = ptrtoint ptr %hdrlen86.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %hdrlen86.i.i.i.i, align 1
  %add88.i.i.i.i = add i8 %382, 4
  store i8 %add88.i.i.i.i, ptr %hdrlen86.i.i.i.i, align 1
  br label %if.end90.i.i.i.i

if.end90.i.i.i.i:                                 ; preds = %if.then85.i.i.i.i, %if.end83.i130.i.i.i.if.end90.i.i.i.i_crit_edge
  %priority91.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 8
  %383 = ptrtoint ptr %priority91.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %priority91.i.i.i.i, align 1
  %idxprom.i.i.i.i = zext i8 %384 to i32
  %arrayidx.i131.i.i.i = getelementptr %struct.sta_info, ptr %psta.3318324.i.i.i.i, i32 0, i32 36, i32 %idxprom.i.i.i.i
  %preorder_ctrl.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 14
  %385 = ptrtoint ptr %preorder_ctrl.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr %arrayidx.i131.i.i.i, ptr %preorder_ctrl.i.i.i.i, align 4
  %386 = ptrtoint ptr %seq_num.i.i.i to i32
  call void @__asan_load2_noabort(i32 %386)
  %387 = load i16, ptr %seq_num.i.i.i, align 4
  %shl.i.i.i.i.i = shl i16 %387, 4
  %388 = ptrtoint ptr %frag_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %frag_num.i.i.i, align 2
  %390 = and i8 %389, 15
  %and5.i.i.i.i.i = zext i8 %390 to i16
  %or.i271.i.i.i.i = or i16 %shl.i.i.i.i.i, %and5.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %384)
  %cmp.i.i132.i.i.i = icmp ugt i8 %384, 15
  br i1 %cmp.i.i132.i.i.i, label %if.end90.i.i.i.i.if.then67.i.i.i_crit_edge, label %if.end.i272.i.i.i.i

if.end90.i.i.i.i.if.then67.i.i.i_crit_edge:       ; preds = %if.end90.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

if.end.i272.i.i.i.i:                              ; preds = %if.end90.i.i.i.i
  %rxcache.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %psta.3318324.i.i.i.i, i32 0, i32 5, i32 3
  %arrayidx.i.i.i.i.i = getelementptr [16 x i16], ptr %rxcache.i.i.i.i, i32 0, i32 %idxprom.i.i.i.i
  %391 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %391)
  %392 = load i16, ptr %arrayidx.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i271.i.i.i.i, i16 %392)
  %cmp10.i.i.i.i.i = icmp eq i16 %or.i271.i.i.i.i, %392
  br i1 %cmp10.i.i.i.i.i, label %if.end.i272.i.i.i.i.if.then67.i.i.i_crit_edge, label %if.end96.i.i.i.i

if.end.i272.i.i.i.i.if.then67.i.i.i_crit_edge:    ; preds = %if.end.i272.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i.i

if.end96.i.i.i.i:                                 ; preds = %if.end.i272.i.i.i.i
  %393 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %393)
  store i16 %or.i271.i.i.i.i, ptr %arrayidx.i.i.i.i.i, align 2
  %394 = ptrtoint ptr %privacy.i.i.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %privacy.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %395)
  %tobool97.not.i.i.i.i = icmp eq i8 %395, 0
  br i1 %tobool97.not.i.i.i.i, label %if.else137.i.i.i.i, label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %if.end96.i.i.i.i
  %396 = ptrtoint ptr %securitypriv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %securitypriv.i.i.i.i, align 8
  %398 = zext i32 %397 to i64
  call void @__sanitizer_cov_trace_switch(i64 %398, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %397, label %do.body.i.i.i.i.do.body118.i.i.i.i_crit_edge [
    i32 0, label %do.body.i.i.i.i.sw.bb99.i.i.i.i_crit_edge
    i32 1, label %do.body.i.i.i.i.sw.bb99.i.i.i.i_crit_edge43
    i32 3, label %do.body.i.i.i.i.sw.bb99.i.i.i.i_crit_edge44
    i32 2, label %sw.bb101.i.i.i.i
    i32 4, label %sw.bb113.i.i.i.i
  ]

do.body.i.i.i.i.sw.bb99.i.i.i.i_crit_edge44:      ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb99.i.i.i.i

do.body.i.i.i.i.sw.bb99.i.i.i.i_crit_edge43:      ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb99.i.i.i.i

do.body.i.i.i.i.sw.bb99.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb99.i.i.i.i

do.body.i.i.i.i.do.body118.i.i.i.i_crit_edge:     ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body118.i.i.i.i

sw.bb99.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.sw.bb99.i.i.i.i_crit_edge, %do.body.i.i.i.i.sw.bb99.i.i.i.i_crit_edge43, %do.body.i.i.i.i.sw.bb99.i.i.i.i_crit_edge44
  %dot11PrivacyAlgrthm.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 1
  br label %do.body118.sink.split.i.i.i.i

sw.bb101.i.i.i.i:                                 ; preds = %do.body.i.i.i.i
  %ra102.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26
  %399 = ptrtoint ptr %ra102.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %ra102.i.i.i.i, align 1
  %401 = and i8 %400, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %401)
  %tobool105.not.i.i.i.i = icmp eq i8 %401, 0
  br i1 %tobool105.not.i.i.i.i, label %if.else109.i.i.i.i, label %if.then106.i.i.i.i

if.then106.i.i.i.i:                               ; preds = %sw.bb101.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dot118021XGrpPrivacy.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 6
  br label %do.body118.sink.split.i.i.i.i

if.else109.i.i.i.i:                               ; preds = %sw.bb101.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dot118021XPrivacy.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %psta.3318324.i.i.i.i, i32 0, i32 14
  br label %do.body118.sink.split.i.i.i.i

sw.bb113.i.i.i.i:                                 ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dot11PrivacyAlgrthm114.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 1
  br label %do.body118.sink.split.i.i.i.i

do.body118.sink.split.i.i.i.i:                    ; preds = %sw.bb113.i.i.i.i, %if.else109.i.i.i.i, %if.then106.i.i.i.i, %sw.bb99.i.i.i.i
  %.sink.in.i.i.i.i = phi ptr [ %dot11PrivacyAlgrthm.i.i.i.i, %sw.bb99.i.i.i.i ], [ %dot11PrivacyAlgrthm114.i.i.i.i, %sw.bb113.i.i.i.i ], [ %dot118021XPrivacy.i.i.i.i, %if.else109.i.i.i.i ], [ %dot118021XGrpPrivacy.i.i.i.i, %if.then106.i.i.i.i ]
  %402 = ptrtoint ptr %.sink.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %.sink.i.i.i.i = load i32, ptr %.sink.in.i.i.i.i, align 4
  %conv100.i.i.i.i = trunc i32 %.sink.i.i.i.i to i8
  %encrypt.i134.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 17
  %403 = ptrtoint ptr %encrypt.i134.i.i.i to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 %conv100.i.i.i.i, ptr %encrypt.i134.i.i.i, align 1
  br label %do.body118.i.i.i.i

do.body118.i.i.i.i:                               ; preds = %do.body118.sink.split.i.i.i.i, %do.body.i.i.i.i.do.body118.i.i.i.i_crit_edge
  %encrypt119.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 17
  %404 = ptrtoint ptr %encrypt119.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %encrypt119.i.i.i.i, align 1
  %406 = zext i8 %405 to i64
  call void @__sanitizer_cov_trace_switch(i64 %406, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %405, label %sw.default131.i.i.i.i [
    i8 1, label %do.body118.i.i.i.i.sw.bb121.i.i.i.i_crit_edge
    i8 5, label %do.body118.i.i.i.i.sw.bb121.i.i.i.i_crit_edge45
    i8 2, label %sw.bb122.i.i.i.i
    i8 4, label %sw.bb125.i.i.i.i
    i8 6, label %sw.bb128.i.i.i.i
  ]

do.body118.i.i.i.i.sw.bb121.i.i.i.i_crit_edge45:  ; preds = %do.body118.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb121.i.i.i.i

do.body118.i.i.i.i.sw.bb121.i.i.i.i_crit_edge:    ; preds = %do.body118.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb121.i.i.i.i

sw.bb121.i.i.i.i:                                 ; preds = %do.body118.i.i.i.i.sw.bb121.i.i.i.i_crit_edge, %do.body118.i.i.i.i.sw.bb121.i.i.i.i_crit_edge45
  %iv_len.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 18
  %407 = ptrtoint ptr %iv_len.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 4, ptr %iv_len.i.i.i.i, align 4
  %icv_len.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 19
  %408 = ptrtoint ptr %icv_len.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 4, ptr %icv_len.i.i.i.i, align 1
  br label %if.then10.i

sw.bb122.i.i.i.i:                                 ; preds = %do.body118.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %iv_len123.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 18
  %409 = ptrtoint ptr %iv_len123.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 8, ptr %iv_len123.i.i.i.i, align 4
  %icv_len124.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 19
  %410 = ptrtoint ptr %icv_len124.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 4, ptr %icv_len124.i.i.i.i, align 1
  br label %if.then10.i

sw.bb125.i.i.i.i:                                 ; preds = %do.body118.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %iv_len126.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 18
  %411 = ptrtoint ptr %iv_len126.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 8, ptr %iv_len126.i.i.i.i, align 4
  %icv_len127.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 19
  %412 = ptrtoint ptr %icv_len127.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 8, ptr %icv_len127.i.i.i.i, align 1
  br label %if.then10.i

sw.bb128.i.i.i.i:                                 ; preds = %do.body118.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %iv_len129.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 18
  %413 = ptrtoint ptr %iv_len129.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 18, ptr %iv_len129.i.i.i.i, align 4
  %icv_len130.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 19
  %414 = ptrtoint ptr %icv_len130.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 16, ptr %icv_len130.i.i.i.i, align 1
  br label %if.then10.i

sw.default131.i.i.i.i:                            ; preds = %do.body118.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %iv_len132.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 18
  %415 = ptrtoint ptr %iv_len132.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 0, ptr %iv_len132.i.i.i.i, align 4
  %icv_len133.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 19
  %416 = ptrtoint ptr %icv_len133.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 0, ptr %icv_len133.i.i.i.i, align 1
  br label %if.then10.i

if.else137.i.i.i.i:                               ; preds = %if.end96.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %encrypt138.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 17
  %417 = ptrtoint ptr %encrypt138.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 0, ptr %encrypt138.i.i.i.i, align 1
  %icv_len139.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 19
  %418 = ptrtoint ptr %icv_len139.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 0, ptr %icv_len139.i.i.i.i, align 1
  %iv_len140.i.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 18
  %419 = ptrtoint ptr %iv_len140.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 0, ptr %iv_len140.i.i.i.i, align 4
  br label %if.then10.i

if.then67.i.i.i:                                  ; preds = %if.end.i272.i.i.i.i.if.then67.i.i.i_crit_edge, %if.end90.i.i.i.i.if.then67.i.i.i_crit_edge, %sw.epilog.i125.i.i.i.if.then67.i.i.i_crit_edge, %sw.bb23.i.i.i.i, %if.then.i262.i.i.i.i.if.then67.i.i.i_crit_edge, %if.then107.i.i.i.i.i, %lor.lhs.false104.i.i.i.i.i.if.then67.i.i.i_crit_edge, %if.then95.i.i.i.i.i.if.then67.i.i.i_crit_edge, %if.else88.i.i.i.i.i.if.then67.i.i.i_crit_edge, %if.end44.i.i.i.i.i.if.then67.i.i.i_crit_edge, %if.then32.i.i.i.i.i, %if.then30.i.i.i.i.i.if.then67.i.i.i_crit_edge, %if.end.i242.i.i.i.i.if.then67.i.i.i_crit_edge, %if.then.i240.i.i.i.i.if.then67.i.i.i_crit_edge, %if.end96.i.i.i.i.i.if.then67.i.i.i_crit_edge, %if.else56.i.i.i.i.i.if.then67.i.i.i_crit_edge, %if.then49.i.i.i.i.i.if.then67.i.i.i_crit_edge, %if.then33.i.i.i.i.i.if.then67.i.i.i_crit_edge, %lor.lhs.false22.i.i.i.i.i.if.then67.i.i.i_crit_edge, %lor.lhs.false19.i.i.i.i.i.if.then67.i.i.i_crit_edge, %if.end15.i.i.i.i.i.if.then67.i.i.i_crit_edge, %if.end.i.i.i.i68.i.if.then67.i.i.i_crit_edge, %if.then.i.i.i.i.i.if.then67.i.i.i_crit_edge, %if.end.i118.i.i.i.if.then67.i.i.i_crit_edge, %get_hdr_bssid.exit.i.i.i.i.if.then67.i.i.i_crit_edge
  %rx_drop.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 11
  %420 = ptrtoint ptr %rx_drop.i.i.i to i32
  call void @__asan_load8_noabort(i32 %420)
  %421 = load i64, ptr %rx_drop.i.i.i, align 8
  %inc.i.i.i = add i64 %421, 1
  store i64 %inc.i.i.i, ptr %rx_drop.i.i.i, align 8
  br label %recv_func_prehandle.exit.i

recv_func_prehandle.exit.i:                       ; preds = %if.then67.i.i.i, %if.end28.i.i.i.i.i, %if.else.i269.i.i.i.i.recv_func_prehandle.exit.i_crit_edge, %count_rx_stats.exit.i.i.i.i.i, %if.then7.i.i.i.i.i, %if.else83.i.i.i.i.i.recv_func_prehandle.exit.i_crit_edge, %count_rx_stats.exit.i.i, %if.end101.i.i.i.i, %if.else85.i.i.i.i.recv_func_prehandle.exit.i_crit_edge, %if.end83.i.i.i.i, %land.lhs.true.i.i.i.i.recv_func_prehandle.exit.i_crit_edge, %if.end49.i.i.i.i.recv_func_prehandle.exit.i_crit_edge, %sw.epilog.i.i.i.i.recv_func_prehandle.exit.i_crit_edge, %if.then14.i114.i.i.i.recv_func_prehandle.exit.i_crit_edge, %if.end9.i.i.i.i.recv_func_prehandle.exit.i_crit_edge, %if.end4.i.i.i.i.recv_func_prehandle.exit.i_crit_edge, %if.end.i112.i.i.i.recv_func_prehandle.exit.i_crit_edge, %sw.bb58.i.i.i.recv_func_prehandle.exit.i_crit_edge, %if.end51.i.i.i.i, %if.end56.i.i.i.recv_func_prehandle.exit.i_crit_edge, %validate_80211w_mgmt.exit.i.i.i.recv_func_prehandle.exit.i_crit_edge, %if.then138.i.i.i.i, %if.then104.i.i.i.i.recv_func_prehandle.exit.i_crit_edge, %if.then94.i.i.i.i, %if.then86.i.i.i.i.recv_func_prehandle.exit.i_crit_edge, %if.then23.i.i.i.i.recv_func_prehandle.exit.i_crit_edge, %if.end.i.i.i.recv_func_prehandle.exit.i_crit_edge, %if.end.i.recv_func_prehandle.exit.i_crit_edge
  %retval1.0.i.ph.i.i = phi i32 [ 0, %if.then104.i.i.i.i.recv_func_prehandle.exit.i_crit_edge ], [ 0, %if.then138.i.i.i.i ], [ %call87.i.i.i.i, %if.then86.i.i.i.i.recv_func_prehandle.exit.i_crit_edge ], [ 0, %if.then94.i.i.i.i ], [ 0, %if.then23.i.i.i.i.recv_func_prehandle.exit.i_crit_edge ], [ 2, %count_rx_stats.exit.i.i ], [ 2, %if.else83.i.i.i.i.i.recv_func_prehandle.exit.i_crit_edge ], [ 2, %count_rx_stats.exit.i.i.i.i.i ], [ 2, %if.then7.i.i.i.i.i ], [ 2, %if.else.i269.i.i.i.i.recv_func_prehandle.exit.i_crit_edge ], [ 2, %if.end28.i.i.i.i.i ], [ 0, %if.end101.i.i.i.i ], [ 0, %if.else85.i.i.i.i.recv_func_prehandle.exit.i_crit_edge ], [ 0, %if.end83.i.i.i.i ], [ 0, %land.lhs.true.i.i.i.i.recv_func_prehandle.exit.i_crit_edge ], [ 0, %if.end49.i.i.i.i.recv_func_prehandle.exit.i_crit_edge ], [ 0, %sw.epilog.i.i.i.i.recv_func_prehandle.exit.i_crit_edge ], [ 0, %if.then14.i114.i.i.i.recv_func_prehandle.exit.i_crit_edge ], [ 0, %if.end9.i.i.i.i.recv_func_prehandle.exit.i_crit_edge ], [ 0, %if.end4.i.i.i.i.recv_func_prehandle.exit.i_crit_edge ], [ 0, %if.end.i112.i.i.i.recv_func_prehandle.exit.i_crit_edge ], [ 0, %sw.bb58.i.i.i.recv_func_prehandle.exit.i_crit_edge ], [ 0, %if.end51.i.i.i.i ], [ 0, %if.end56.i.i.i.recv_func_prehandle.exit.i_crit_edge ], [ 0, %if.end.i.i.i.recv_func_prehandle.exit.i_crit_edge ], [ 0, %validate_80211w_mgmt.exit.i.i.i.recv_func_prehandle.exit.i_crit_edge ], [ 0, %if.end.i.recv_func_prehandle.exit.i_crit_edge ], [ 0, %if.then67.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bDumpRxPkt.i.i.i) #7
  %free_recv_queue.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 1
  %call1.i.i = call i32 @rtw_free_recvframe(ptr noundef %precvframe, ptr noundef %free_recv_queue.i.i) #7
  br label %recv_func.exit

if.then10.i:                                      ; preds = %if.else137.i.i.i.i, %sw.default131.i.i.i.i, %sw.bb128.i.i.i.i, %sw.bb125.i.i.i.i, %sw.bb122.i.i.i.i, %sw.bb121.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bDumpRxPkt.i.i.i) #7
  %422 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %fw_state.i.i, align 4
  %424 = and i32 %423, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %424)
  %tobool12.not.i = icmp eq i32 %424, 0
  br i1 %tobool12.not.i, label %if.then10.i.do_posthandle.i_crit_edge, label %land.lhs.true13.i

if.then10.i.do_posthandle.i_crit_edge:            ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_posthandle.i

land.lhs.true13.i:                                ; preds = %if.then10.i
  %ra.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26
  %425 = ptrtoint ptr %ra.i to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %ra.i, align 1
  %427 = and i8 %426, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %427)
  %tobool15.not.i = icmp eq i8 %427, 0
  br i1 %tobool15.not.i, label %land.lhs.true16.i, label %land.lhs.true13.i.do_posthandle.i_crit_edge

land.lhs.true13.i.do_posthandle.i_crit_edge:      ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_posthandle.i

land.lhs.true16.i:                                ; preds = %land.lhs.true13.i
  %encrypt.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 17
  %428 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %encrypt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %429)
  %cmp18.not.i = icmp eq i8 %429, 0
  br i1 %cmp18.not.i, label %land.lhs.true16.i.do_posthandle.i_crit_edge, label %land.lhs.true20.i

land.lhs.true16.i.do_posthandle.i_crit_edge:      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_posthandle.i

land.lhs.true20.i:                                ; preds = %land.lhs.true16.i
  %bdecrypted.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 16
  %430 = ptrtoint ptr %bdecrypted.i to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %bdecrypted.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %431)
  %cmp22.i = icmp eq i8 %431, 0
  br i1 %cmp22.i, label %land.lhs.true20.i.land.lhs.true26.i_crit_edge, label %lor.lhs.false.i

land.lhs.true20.i.land.lhs.true26.i_crit_edge:    ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true26.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true20.i
  %sw_decrypt.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 33
  %432 = ptrtoint ptr %sw_decrypt.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %sw_decrypt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %433)
  %cmp24.i = icmp eq i32 %433, 1
  br i1 %cmp24.i, label %lor.lhs.false.i.land.lhs.true26.i_crit_edge, label %lor.lhs.false.i.do_posthandle.i_crit_edge

lor.lhs.false.i.do_posthandle.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_posthandle.i

lor.lhs.false.i.land.lhs.true26.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true26.i

land.lhs.true26.i:                                ; preds = %lor.lhs.false.i.land.lhs.true26.i_crit_edge, %land.lhs.true20.i.land.lhs.true26.i_crit_edge
  %ndisauthtype.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 35
  %434 = ptrtoint ptr %ndisauthtype.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %ndisauthtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %435)
  %cmp27.i = icmp eq i32 %435, 4
  br i1 %cmp27.i, label %land.lhs.true29.i, label %land.lhs.true26.i.do_posthandle.i_crit_edge

land.lhs.true26.i.do_posthandle.i_crit_edge:      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_posthandle.i

land.lhs.true29.i:                                ; preds = %land.lhs.true26.i
  %busetkipkey30.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12, i32 29
  %436 = ptrtoint ptr %busetkipkey30.i to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %busetkipkey30.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %437)
  %tobool31.not.i = icmp eq i8 %437, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %land.lhs.true29.i.do_posthandle.i_crit_edge

land.lhs.true29.i.do_posthandle.i_crit_edge:      ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_posthandle.i

if.then32.i:                                      ; preds = %land.lhs.true29.i
  %uc_swdec_pending_queue34.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3
  %lock.i9 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock.i9) #7
  %438 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %adapter, align 4
  %call.i.i.i.i11 = call zeroext i1 @__list_del_entry_valid(ptr noundef %precvframe) #7
  br i1 %call.i.i.i.i11, label %if.end.i.i.i.i14, label %if.then32.i.list_del_init.exit.i.i16_crit_edge

if.then32.i.list_del_init.exit.i.i16_crit_edge:   ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i.i16

if.end.i.i.i.i14:                                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i12 = getelementptr inbounds %struct.list_head, ptr %precvframe, i32 0, i32 1
  %440 = ptrtoint ptr %prev.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %prev.i.i.i.i12, align 4
  %442 = ptrtoint ptr %precvframe to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %precvframe, align 4
  %prev1.i.i.i.i.i13 = getelementptr inbounds %struct.list_head, ptr %443, i32 0, i32 1
  %444 = ptrtoint ptr %prev1.i.i.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %444)
  store ptr %441, ptr %prev1.i.i.i.i.i13, align 4
  %445 = ptrtoint ptr %441 to i32
  call void @__asan_store4_noabort(i32 %445)
  store volatile ptr %443, ptr %441, align 4
  br label %list_del_init.exit.i.i16

list_del_init.exit.i.i16:                         ; preds = %if.end.i.i.i.i14, %if.then32.i.list_del_init.exit.i.i16_crit_edge
  %446 = ptrtoint ptr %precvframe to i32
  call void @__asan_store4_noabort(i32 %446)
  store volatile ptr %precvframe, ptr %precvframe, align 4
  %prev.i3.i.i.i15 = getelementptr inbounds %struct.list_head, ptr %precvframe, i32 0, i32 1
  %447 = ptrtoint ptr %prev.i3.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %447)
  store ptr %precvframe, ptr %prev.i3.i.i.i15, align 4
  %prev.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3, i32 0, i32 1
  %448 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i9.i.i = call zeroext i1 @__list_add_valid(ptr noundef %precvframe, ptr noundef %449, ptr noundef %uc_swdec_pending_queue34.i) #7
  br i1 %call.i.i9.i.i, label %if.end.i.i10.i.i, label %list_del_init.exit.i.i16.list_add_tail.exit.i.i_crit_edge

list_del_init.exit.i.i16.list_add_tail.exit.i.i_crit_edge: ; preds = %list_del_init.exit.i.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i.i

if.end.i.i10.i.i:                                 ; preds = %list_del_init.exit.i.i16
  call void @__sanitizer_cov_trace_pc() #9
  %450 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %450)
  store ptr %precvframe, ptr %prev.i.i.i, align 4
  %451 = ptrtoint ptr %precvframe to i32
  call void @__asan_store4_noabort(i32 %451)
  store ptr %uc_swdec_pending_queue34.i, ptr %precvframe, align 4
  %452 = ptrtoint ptr %prev.i3.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %452)
  store ptr %449, ptr %prev.i3.i.i.i15, align 4
  %453 = ptrtoint ptr %449 to i32
  call void @__asan_store4_noabort(i32 %453)
  store volatile ptr %precvframe, ptr %449, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i10.i.i, %list_del_init.exit.i.i16.list_add_tail.exit.i.i_crit_edge
  %tobool.not.i.i = icmp ne ptr %439, null
  %free_recv_queue.i.i17 = getelementptr inbounds %struct.adapter, ptr %439, i32 0, i32 10, i32 1
  %cmp.i.i18 = icmp eq ptr %free_recv_queue.i.i17, %uc_swdec_pending_queue34.i
  %or.cond.i.i19 = select i1 %tobool.not.i.i, i1 %cmp.i.i18, i1 false
  br i1 %or.cond.i.i19, label %if.then2.i.i, label %list_add_tail.exit.i.i.rtw_enqueue_recvframe.exit_crit_edge

list_add_tail.exit.i.i.rtw_enqueue_recvframe.exit_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_enqueue_recvframe.exit

if.then2.i.i:                                     ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %free_recvframe_cnt.i.i20 = getelementptr inbounds %struct.adapter, ptr %439, i32 0, i32 10, i32 6
  %454 = ptrtoint ptr %free_recvframe_cnt.i.i20 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %free_recvframe_cnt.i.i20, align 8
  %inc.i.i = add i32 %455, 1
  store i32 %inc.i.i, ptr %free_recvframe_cnt.i.i20, align 8
  br label %rtw_enqueue_recvframe.exit

rtw_enqueue_recvframe.exit:                       ; preds = %if.then2.i.i, %list_add_tail.exit.i.i.rtw_enqueue_recvframe.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i9) #7
  %free_recvframe_cnt.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 6
  %456 = ptrtoint ptr %free_recvframe_cnt.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %free_recvframe_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %457)
  %cmp36.i = icmp ult i32 %457, 64
  br i1 %cmp36.i, label %if.then38.i, label %rtw_enqueue_recvframe.exit.if.end_crit_edge

rtw_enqueue_recvframe.exit.if.end_crit_edge:      ; preds = %rtw_enqueue_recvframe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then38.i:                                      ; preds = %rtw_enqueue_recvframe.exit
  call void @_raw_spin_lock_bh(ptr noundef %lock.i9) #7
  %458 = ptrtoint ptr %uc_swdec_pending_queue34.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load volatile ptr, ptr %uc_swdec_pending_queue34.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %459, %uc_swdec_pending_queue34.i
  br i1 %cmp.i.not.i.i, label %rtw_alloc_recvframe.exit.thread, label %if.else.i.i

rtw_alloc_recvframe.exit.thread:                  ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i9) #7
  br label %if.end

if.else.i.i:                                      ; preds = %if.then38.i
  %call.i.i.i.i7 = call zeroext i1 @__list_del_entry_valid(ptr noundef %459) #7
  br i1 %call.i.i.i.i7, label %if.end.i.i.i.i, label %if.else.i.i.list_del_init.exit.i.i_crit_edge

if.else.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %459, i32 0, i32 1
  %460 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %prev.i.i.i.i, align 4
  %462 = ptrtoint ptr %459 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %459, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %463, i32 0, i32 1
  %464 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %464)
  store ptr %461, ptr %prev1.i.i.i.i.i, align 4
  %465 = ptrtoint ptr %461 to i32
  call void @__asan_store4_noabort(i32 %465)
  store volatile ptr %463, ptr %461, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.else.i.i.list_del_init.exit.i.i_crit_edge
  %466 = ptrtoint ptr %459 to i32
  call void @__asan_store4_noabort(i32 %466)
  store volatile ptr %459, ptr %459, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %459, i32 0, i32 1
  %467 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %467)
  store ptr %459, ptr %prev.i3.i.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %459, i32 0, i32 3
  %468 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %adapter.i.i, align 4
  %tobool3.not.i.i = icmp ne ptr %469, null
  %free_recv_queue.i.i8 = getelementptr inbounds %struct.adapter, ptr %469, i32 0, i32 10, i32 1
  %cmp.i.i = icmp eq ptr %free_recv_queue.i.i8, %uc_swdec_pending_queue34.i
  %or.cond.i.i = select i1 %tobool3.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then5.i.i, label %list_del_init.exit.i.i.rtw_alloc_recvframe.exit_crit_edge

list_del_init.exit.i.i.rtw_alloc_recvframe.exit_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_alloc_recvframe.exit

if.then5.i.i:                                     ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %free_recvframe_cnt.i.i = getelementptr inbounds %struct.adapter, ptr %469, i32 0, i32 10, i32 6
  %470 = ptrtoint ptr %free_recvframe_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %free_recvframe_cnt.i.i, align 8
  %dec.i.i = add i32 %471, -1
  store i32 %dec.i.i, ptr %free_recvframe_cnt.i.i, align 8
  br label %rtw_alloc_recvframe.exit

rtw_alloc_recvframe.exit:                         ; preds = %if.then5.i.i, %list_del_init.exit.i.i.rtw_alloc_recvframe.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i9) #7
  %tobool42.not.i = icmp eq ptr %459, null
  br i1 %tobool42.not.i, label %rtw_alloc_recvframe.exit.if.end_crit_edge, label %rtw_alloc_recvframe.exit.do_posthandle.i_crit_edge

rtw_alloc_recvframe.exit.do_posthandle.i_crit_edge: ; preds = %rtw_alloc_recvframe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_posthandle.i

rtw_alloc_recvframe.exit.if.end_crit_edge:        ; preds = %rtw_alloc_recvframe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do_posthandle.i:                                  ; preds = %rtw_alloc_recvframe.exit.do_posthandle.i_crit_edge, %land.lhs.true29.i.do_posthandle.i_crit_edge, %land.lhs.true26.i.do_posthandle.i_crit_edge, %lor.lhs.false.i.do_posthandle.i_crit_edge, %land.lhs.true16.i.do_posthandle.i_crit_edge, %land.lhs.true13.i.do_posthandle.i_crit_edge, %if.then10.i.do_posthandle.i_crit_edge
  %rframe.addr.0.i = phi ptr [ %precvframe, %land.lhs.true13.i.do_posthandle.i_crit_edge ], [ %precvframe, %land.lhs.true29.i.do_posthandle.i_crit_edge ], [ %459, %rtw_alloc_recvframe.exit.do_posthandle.i_crit_edge ], [ %precvframe, %land.lhs.true26.i.do_posthandle.i_crit_edge ], [ %precvframe, %lor.lhs.false.i.do_posthandle.i_crit_edge ], [ %precvframe, %land.lhs.true16.i.do_posthandle.i_crit_edge ], [ %precvframe, %if.then10.i.do_posthandle.i_crit_edge ]
  %call47.i = call fastcc i32 @recv_func_posthandle(ptr noundef %1, ptr noundef %rframe.addr.0.i) #7
  br label %recv_func.exit

recv_func.exit:                                   ; preds = %do_posthandle.i, %recv_func_prehandle.exit.i
  %ret.0.i = phi i32 [ %call47.i, %do_posthandle.i ], [ %retval1.0.i.ph.i.i, %recv_func_prehandle.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp eq i32 %ret.0.i, 0
  br i1 %cmp, label %recv_func.exit.cleanup_crit_edge, label %recv_func.exit.if.end_crit_edge

recv_func.exit.if.end_crit_edge:                  ; preds = %recv_func.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

recv_func.exit.cleanup_crit_edge:                 ; preds = %recv_func.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %recv_func.exit.if.end_crit_edge, %rtw_alloc_recvframe.exit.if.end_crit_edge, %rtw_alloc_recvframe.exit.thread, %rtw_enqueue_recvframe.exit.if.end_crit_edge
  %ret.0.i25 = phi i32 [ %ret.0.i, %recv_func.exit.if.end_crit_edge ], [ 1, %rtw_alloc_recvframe.exit.if.end_crit_edge ], [ 1, %rtw_enqueue_recvframe.exit.if.end_crit_edge ], [ 1, %rtw_alloc_recvframe.exit.thread ]
  %rx_pkts = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 10
  %472 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load8_noabort(i32 %472)
  %473 = load i64, ptr %rx_pkts, align 8
  %inc = add i64 %473, 1
  store i64 %inc, ptr %rx_pkts, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %recv_func.exit.cleanup_crit_edge
  %ret.0.i26 = phi i32 [ 0, %recv_func.exit.cleanup_crit_edge ], [ %ret.0.i25, %if.end ]
  ret i32 %ret.0.i26
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_recv_indicatepkt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amsdu_to_msdu(ptr noundef %padapter, ptr noundef %prframe) unnamed_addr #0 align 64 {
entry:
  %subframes = alloca [64 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %subframes) #7
  %0 = call ptr @memset(ptr %subframes, i32 255, i32 256)
  %attrib = getelementptr inbounds %struct.recv_frame_hdr, ptr %prframe, i32 0, i32 6
  %hdrlen = getelementptr inbounds %struct.recv_frame_hdr, ptr %prframe, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %2 to i32
  %cmp.i = icmp eq ptr %prframe, null
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %rx_data.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %prframe, i32 0, i32 9
  %3 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %conv
  store ptr %add.ptr.i, ptr %rx_data.i, align 4
  %rx_tail.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %prframe, i32 0, i32 10
  %5 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_tail.i, align 4
  %cmp2.i = icmp ugt ptr %add.ptr.i, %6
  br i1 %cmp2.i, label %if.then3.i, label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %rx_data.i, align 4
  br label %recvframe_pull.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %len.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %prframe, i32 0, i32 7
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %9, %conv
  store i32 %sub.i, ptr %len.i, align 4
  br label %recvframe_pull.exit

recvframe_pull.exit:                              ; preds = %if.end6.i, %if.then3.i
  %iv_len = getelementptr inbounds %struct.recv_frame_hdr, ptr %prframe, i32 0, i32 6, i32 18
  %10 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iv_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not = icmp eq i8 %11, 0
  br i1 %cmp.not, label %recvframe_pull.exit.if.end_crit_edge, label %if.end.i6

recvframe_pull.exit.if.end_crit_edge:             ; preds = %recvframe_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i6:                                        ; preds = %recvframe_pull.exit
  %conv2 = zext i8 %11 to i32
  %12 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_data.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %13, i32 %conv2
  store ptr %add.ptr.i3, ptr %rx_data.i, align 4
  %14 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_tail.i, align 4
  %cmp2.i5 = icmp ugt ptr %add.ptr.i3, %15
  br i1 %cmp2.i5, label %if.then3.i7, label %if.end6.i10

if.then3.i7:                                      ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %rx_data.i, align 4
  br label %if.end

if.end6.i10:                                      ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #9
  %len.i8 = getelementptr inbounds %struct.recv_frame_hdr, ptr %prframe, i32 0, i32 7
  %17 = ptrtoint ptr %len.i8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i8, align 4
  %sub.i9 = sub i32 %18, %conv2
  store i32 %sub.i9, ptr %len.i8, align 4
  br label %if.end

if.end:                                           ; preds = %if.end6.i10, %if.then3.i7, %recvframe_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %len = getelementptr inbounds %struct.recv_frame_hdr, ptr %prframe, i32 0, i32 7
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %20)
  %cmp816 = icmp sgt i32 %20, 14
  br i1 %cmp816, label %while.body.preheader, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

while.body.preheader:                             ; preds = %if.end
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %prframe, i32 0, i32 9
  %21 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_data, align 4
  br label %while.body

while.body:                                       ; preds = %if.then31.while.body_crit_edge, %while.body.preheader
  %indvars.iv = phi i32 [ 0, %while.body.preheader ], [ %indvars.iv.next, %if.then31.while.body_crit_edge ]
  %a_len.019 = phi i32 [ %20, %while.body.preheader ], [ %sub44, %if.then31.while.body_crit_edge ]
  %pdata.018 = phi ptr [ %22, %while.body.preheader ], [ %add.ptr43, %if.then31.while.body_crit_edge ]
  %nr_subframes.017 = phi i8 [ 0, %while.body.preheader ], [ %inc, %if.then31.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %pdata.018, i32 12
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %add.ptr, align 1
  %conv11 = zext i16 %24 to i32
  %add = add nuw nsw i32 %conv11, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %a_len.019, i32 %add)
  %cmp12 = icmp ult i32 %a_len.019, %add
  br i1 %cmp12, label %while.body.while.end_crit_edge, label %if.end15

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end15:                                         ; preds = %while.body
  %call16 = tail call ptr @rtw_os_alloc_msdu_pkt(ptr noundef %prframe, i16 noundef zeroext %24, ptr noundef %pdata.018) #7
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %if.end15.while.end_crit_edge, label %if.end18

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end18:                                         ; preds = %if.end15
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %inc = add nuw nsw i8 %nr_subframes.017, 1
  %arrayidx = getelementptr [64 x ptr], ptr %subframes, i32 0, i32 %indvars.iv
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %indvars.iv)
  %exitcond = icmp eq i32 %indvars.iv, 63
  br i1 %exitcond, label %if.end18.for.body.preheader_crit_edge, label %if.end24

if.end18.for.body.preheader_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.end24:                                         ; preds = %if.end18
  %sub = add nsw i32 %a_len.019, -14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv11)
  %cmp29.not = icmp eq i32 %sub, %conv11
  br i1 %cmp29.not, label %if.end24.for.body.preheader_crit_edge, label %if.then31

if.end24.for.body.preheader_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then31:                                        ; preds = %if.end24
  %sub28 = sub nsw i32 %sub, %conv11
  %add.ptr19 = getelementptr i8, ptr %pdata.018, i32 14
  %add.ptr26 = getelementptr i8, ptr %add.ptr19, i32 %conv11
  %and = and i32 %add, 3
  %sub34 = sub nuw nsw i32 4, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp35 = icmp eq i32 %and, 0
  %spec.store.select = select i1 %cmp35, i32 0, i32 %sub34
  call void @__sanitizer_cov_trace_cmp4(i32 %sub28, i32 %spec.store.select)
  %cmp39 = icmp sge i32 %sub28, %spec.store.select
  %add.ptr43 = getelementptr i8, ptr %add.ptr26, i32 %spec.store.select
  %sub44 = sub nsw i32 %sub28, %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub44)
  %cmp8 = icmp sgt i32 %sub44, 14
  %or.cond = select i1 %cmp39, i1 %cmp8, i1 false
  br i1 %or.cond, label %if.then31.while.body_crit_edge, label %if.then31.for.body.preheader_crit_edge

if.then31.for.body.preheader_crit_edge:           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then31.while.body_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end15.while.end_crit_edge, %while.body.while.end_crit_edge
  %26 = trunc i32 %indvars.iv to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp4824.not = icmp eq i8 %26, 0
  br i1 %cmp4824.not, label %while.end.for.end_crit_edge, label %while.end.for.body.preheader_crit_edge

while.end.for.body.preheader_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %while.end.for.body.preheader_crit_edge, %if.then31.for.body.preheader_crit_edge, %if.end24.for.body.preheader_crit_edge, %if.end18.for.body.preheader_crit_edge
  %nr_subframes.134 = phi i8 [ %26, %while.end.for.body.preheader_crit_edge ], [ %inc, %if.end24.for.body.preheader_crit_edge ], [ 64, %if.end18.for.body.preheader_crit_edge ], [ %inc, %if.then31.for.body.preheader_crit_edge ]
  %wide.trip.count = zext i8 %nr_subframes.134 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %indvars.iv26 = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next27, %for.inc.for.body_crit_edge ]
  %arrayidx51 = getelementptr [64 x ptr], ptr %subframes, i32 0, i32 %indvars.iv26
  %27 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx51, align 4
  %tobool52.not = icmp eq ptr %28, null
  br i1 %tobool52.not, label %for.body.for.inc_crit_edge, label %if.then53

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then53:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw_os_recv_indicate_pkt(ptr noundef %padapter, ptr noundef nonnull %28, ptr noundef %attrib) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then53, %for.body.for.inc_crit_edge
  %indvars.iv.next27 = add nuw nsw i32 %indvars.iv26, 1
  %exitcond28.not = icmp eq i32 %indvars.iv.next27, %wide.trip.count
  br i1 %exitcond28.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.end.for.end_crit_edge, %if.end.for.end_crit_edge
  %free_recv_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %len, align 4
  %call58 = tail call i32 @rtw_free_recvframe(ptr noundef %prframe, ptr noundef %free_recv_queue)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %subframes) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_os_alloc_msdu_pkt(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_recv_indicate_pkt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @recv_func_posthandle(ptr noundef %padapter, ptr noundef %prframe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %free_recv_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 1
  %call = tail call fastcc ptr @decryptor(ptr noundef %padapter, ptr noundef %prframe)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry._recv_data_drop_crit_edge, label %if.end

entry._recv_data_drop_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_recv_data_drop

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @recvframe_chk_defrag(ptr noundef %padapter, ptr noundef nonnull %call)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end._recv_data_drop_crit_edge, label %get_recvframe_data.exit.i

if.end._recv_data_drop_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %_recv_data_drop

get_recvframe_data.exit.i:                        ; preds = %if.end
  %stapriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %securitypriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %0 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %securitypriv.i, align 8
  %rx_data.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call2, i32 0, i32 9
  %2 = ptrtoint ptr %rx_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_data.i.i, align 4
  %ta.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call2, i32 0, i32 6, i32 25
  %call1.i = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv.i, ptr noundef %ta.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp ne i32 %1, 2
  %tobool.not.i = icmp eq ptr %call1.i, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %get_recvframe_data.exit.i.if.end9_crit_edge, label %land.lhs.true.i

get_recvframe_data.exit.i.if.end9_crit_edge:      ; preds = %get_recvframe_data.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true.i:                                  ; preds = %get_recvframe_data.exit.i
  %ieee8021x_blocked.i = getelementptr inbounds %struct.sta_info, ptr %call1.i, i32 0, i32 13
  %4 = ptrtoint ptr %ieee8021x_blocked.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ieee8021x_blocked.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i = icmp eq i32 %5, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end9_crit_edge, label %if.then3.i

land.lhs.true.i.if.end9_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then3.i:                                       ; preds = %land.lhs.true.i
  %hdrlen.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call2, i32 0, i32 6, i32 4
  %6 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hdrlen.i, align 1
  %conv.i = zext i8 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %iv_len.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call2, i32 0, i32 6, i32 18
  %8 = ptrtoint ptr %iv_len.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iv_len.i, align 4
  %conv6.i = zext i8 %9 to i32
  %add.ptr7.i = getelementptr i8, ptr %add.ptr.i, i32 %conv6.i
  %add.ptr8.i = getelementptr i8, ptr %add.ptr7.i, i32 6
  %10 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %be_tmp.0.copyload.i = load i16, ptr %add.ptr8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %be_tmp.0.copyload.i)
  %cmp11.i = icmp eq i16 %be_tmp.0.copyload.i, -30578
  br i1 %cmp11.i, label %if.then3.i.if.end9_crit_edge, label %portctrl.exit

if.then3.i.if.end9_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

portctrl.exit:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = tail call i32 @rtw_free_recvframe(ptr noundef nonnull %call2, ptr noundef %free_recv_queue) #7
  br label %_recv_data_drop

if.end9:                                          ; preds = %if.then3.i.if.end9_crit_edge, %land.lhs.true.i.if.end9_crit_edge, %get_recvframe_data.exit.i.if.end9_crit_edge
  %len.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call2, i32 0, i32 7
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i, align 4
  %conv.i29 = sext i32 %12 to i64
  %rx_bytes.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 9
  %13 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rx_bytes.i, align 8
  %add.i = add i64 %14, %conv.i29
  store i64 %add.i, ptr %rx_bytes.i, align 8
  %NumRxOkInPeriod.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 1
  %15 = ptrtoint ptr %NumRxOkInPeriod.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %NumRxOkInPeriod.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %NumRxOkInPeriod.i, align 4
  %dst.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call2, i32 0, i32 6, i32 23
  %17 = ptrtoint ptr %dst.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dst.i, align 2
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i30 = icmp eq i8 %19, 0
  br i1 %tobool.not.i30, label %if.then.i, label %if.end9.if.end.i_crit_edge

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %NumRxUnicastOkInPeriod.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 2
  %20 = ptrtoint ptr %NumRxUnicastOkInPeriod.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %NumRxUnicastOkInPeriod.i, align 8
  %inc37.i = add i32 %21, 1
  store i32 %inc37.i, ptr %NumRxUnicastOkInPeriod.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end9.if.end.i_crit_edge
  %psta40.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call2, i32 0, i32 13
  %22 = ptrtoint ptr %psta40.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %psta40.i, align 4
  %tobool42.not.i = icmp eq ptr %23, null
  br i1 %tobool42.not.i, label %if.end.i.count_rx_stats.exit_crit_edge, label %if.then43.i

if.end.i.count_rx_stats.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %count_rx_stats.exit

if.then43.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_data_pkts.i = getelementptr inbounds %struct.sta_info, ptr %23, i32 0, i32 34, i32 7
  %24 = ptrtoint ptr %rx_data_pkts.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rx_data_pkts.i, align 8
  %inc44.i = add i64 %25, 1
  store i64 %inc44.i, ptr %rx_data_pkts.i, align 8
  %rx_bytes46.i = getelementptr inbounds %struct.sta_info, ptr %23, i32 0, i32 34, i32 16
  %26 = ptrtoint ptr %rx_bytes46.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rx_bytes46.i, align 8
  %add47.i = add i64 %27, %conv.i29
  store i64 %add47.i, ptr %rx_bytes46.i, align 8
  br label %count_rx_stats.exit

count_rx_stats.exit:                              ; preds = %if.then43.i, %if.end.i.count_rx_stats.exit_crit_edge
  tail call void @traffic_check_for_leave_lps(ptr noundef %padapter, i8 noundef zeroext 0, i32 noundef 0) #7
  %htpriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33
  %28 = ptrtoint ptr %htpriv.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %htpriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp.i31 = icmp eq i8 %29, 1
  br i1 %cmp.i31, label %if.then.i32, label %if.else.i34

if.then.i32:                                      ; preds = %count_rx_stats.exit
  %preorder_ctrl2.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call2, i32 0, i32 14
  %30 = ptrtoint ptr %preorder_ctrl2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %preorder_ctrl2.i.i, align 4
  %dvobj.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %32 = ptrtoint ptr %dvobj.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dvobj.i.i, align 4
  %amsdu.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call2, i32 0, i32 6, i32 6
  %34 = ptrtoint ptr %amsdu.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %amsdu.i.i, align 1
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %35, label %if.then.i32.if.end47.i.i_crit_edge [
    i8 0, label %if.then.i.i
    i8 1, label %if.then26.i.i
  ]

if.then.i32.if.end47.i.i_crit_edge:               ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i.i

if.then.i.i:                                      ; preds = %if.then.i32
  tail call fastcc void @wlanhdr_to_ethhdr(ptr noundef nonnull %call2) #7
  %qos.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call2, i32 0, i32 6, i32 7
  %37 = ptrtoint ptr %qos.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %qos.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp.not.i.i = icmp eq i8 %38, 1
  br i1 %cmp.not.i.i, label %if.end11.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  %bDriverStopped.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %39 = ptrtoint ptr %bDriverStopped.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bDriverStopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp5.i.i = icmp eq i32 %40, 0
  br i1 %cmp5.i.i, label %land.lhs.true.i.i, label %if.then4.i.i.if.then5.i_crit_edge

if.then4.i.i.if.then5.i_crit_edge:                ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

land.lhs.true.i.i:                                ; preds = %if.then4.i.i
  %bSurpriseRemoved.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %41 = ptrtoint ptr %bSurpriseRemoved.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bSurpriseRemoved.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp7.i.i = icmp eq i32 %42, 0
  br i1 %cmp7.i.i, label %if.then9.i.i, label %land.lhs.true.i.i.if.then5.i_crit_edge

land.lhs.true.i.i.if.then5.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

if.then9.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i.i = tail call i32 @rtw_recv_indicatepkt(ptr noundef %padapter, ptr noundef nonnull %call2) #7
  br label %_recv_data_drop

if.end11.i.i:                                     ; preds = %if.then.i.i
  %enable.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %31, i32 0, i32 1
  %43 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %enable.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp13.i.i = icmp eq i8 %44, 0
  br i1 %cmp13.i.i, label %if.then15.i.i, label %if.end11.i.i.if.end47.i.i_crit_edge

if.end11.i.i.if.end47.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i.i

if.then15.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %seq_num.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call2, i32 0, i32 6, i32 11
  %45 = ptrtoint ptr %seq_num.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %seq_num.i.i, align 4
  %indicate_seq.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %31, i32 0, i32 2
  %47 = ptrtoint ptr %indicate_seq.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %indicate_seq.i.i, align 2
  %call16.i.i = tail call i32 @rtw_recv_indicatepkt(ptr noundef %padapter, ptr noundef nonnull %call2) #7
  %48 = ptrtoint ptr %indicate_seq.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %indicate_seq.i.i, align 2
  %50 = add i16 %49, 1
  %51 = and i16 %50, 4095
  store i16 %51, ptr %indicate_seq.i.i, align 2
  br label %_recv_data_drop

if.then26.i.i:                                    ; preds = %if.then.i32
  %enable27.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %31, i32 0, i32 1
  %52 = ptrtoint ptr %enable27.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %enable27.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp29.i.i = icmp eq i8 %53, 0
  br i1 %cmp29.i.i, label %if.then31.i.i, label %if.then26.i.i.if.end47.i.i_crit_edge

if.then26.i.i.if.end47.i.i_crit_edge:             ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i.i

if.then31.i.i:                                    ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %seq_num32.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call2, i32 0, i32 6, i32 11
  %54 = ptrtoint ptr %seq_num32.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %seq_num32.i.i, align 4
  %indicate_seq33.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %31, i32 0, i32 2
  %56 = ptrtoint ptr %indicate_seq33.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %indicate_seq33.i.i, align 2
  tail call fastcc void @amsdu_to_msdu(ptr noundef %padapter, ptr noundef nonnull %call2) #7
  %57 = ptrtoint ptr %indicate_seq33.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %indicate_seq33.i.i, align 2
  %59 = add i16 %58, 1
  %60 = and i16 %59, 4095
  store i16 %60, ptr %indicate_seq33.i.i, align 2
  br label %_recv_data_drop

if.end47.i.i:                                     ; preds = %if.then26.i.i.if.end47.i.i_crit_edge, %if.end11.i.i.if.end47.i.i_crit_edge, %if.then.i32.if.end47.i.i_crit_edge
  %lock.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %31, i32 0, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #7
  %seq_num48.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call2, i32 0, i32 6, i32 11
  %61 = ptrtoint ptr %seq_num48.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %seq_num48.i.i, align 4
  %63 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %31, align 4
  %dvobj.i.i.i = getelementptr inbounds %struct.adapter, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %dvobj.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dvobj.i.i.i, align 4
  %wsize_b.i.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %31, i32 0, i32 4
  %67 = ptrtoint ptr %wsize_b.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %wsize_b.i.i.i, align 2
  %indicate_seq.i.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %31, i32 0, i32 2
  %69 = ptrtoint ptr %indicate_seq.i.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %indicate_seq.i.i.i, align 2
  %conv2.i.i.i = zext i8 %68 to i32
  %71 = zext i8 %68 to i16
  %72 = add nuw nsw i16 %71, 4095
  %73 = add i16 %72, %70
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %70)
  %cmp.i.i.i = icmp eq i16 %70, -1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end47.i.i.if.end.i.i.i_crit_edge

if.end47.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %indicate_seq.i.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %62, ptr %indicate_seq.i.i.i, align 2
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end47.i.i.if.end.i.i.i_crit_edge
  %conv8.i.i.i = zext i16 %62 to i32
  %75 = ptrtoint ptr %indicate_seq.i.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %indicate_seq.i.i.i, align 2
  %conv10.i.i.i = zext i16 %76 to i32
  %sub11.i.i.i = sub nsw i32 %conv8.i.i.i, %conv10.i.i.i
  %and12.i.i.i = and i32 %sub11.i.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i.i)
  %cmp13.not.i.i.i = icmp eq i32 %and12.i.i.i, 0
  br i1 %cmp13.not.i.i.i, label %if.end16.i.i.i, label %if.then51.i.i

if.end16.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %76, i16 %62)
  %cmp20.i.i.i = icmp eq i16 %76, %62
  br i1 %cmp20.i.i.i, label %if.then22.i.i.i, label %if.else.i.i.i

if.then22.i.i.i:                                  ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add25.i.i.i = add i16 %62, 1
  %and26.i.i.i = and i16 %add25.i.i.i, 4095
  %77 = ptrtoint ptr %indicate_seq.i.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %and26.i.i.i, ptr %indicate_seq.i.i.i, align 2
  br label %if.end52.i.i

if.else.i.i.i:                                    ; preds = %if.end16.i.i.i
  %conv29.i.i.i = zext i16 %73 to i32
  %sub31.i.i.i = sub nsw i32 %conv29.i.i.i, %conv8.i.i.i
  %and32.i.i.i = and i32 %sub31.i.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i.i.i)
  %cmp33.not.i.i.i = icmp eq i32 %and32.i.i.i, 0
  br i1 %cmp33.not.i.i.i, label %if.else.i.i.i.if.end52.i.i_crit_edge, label %if.then35.i.i.i

if.else.i.i.i.if.end52.i.i_crit_edge:             ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i.i

if.then35.i.i.i:                                  ; preds = %if.else.i.i.i
  %sub38.i.i.i = add nsw i32 %conv2.i.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub38.i.i.i, i32 %conv8.i.i.i)
  %cmp39.not.i.i.i = icmp sgt i32 %sub38.i.i.i, %conv8.i.i.i
  br i1 %cmp39.not.i.i.i, label %if.else48.i.i.i, label %if.then41.i.i.i

if.then41.i.i.i:                                  ; preds = %if.then35.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add43.i.i.i = add nuw nsw i32 %conv8.i.i.i, 1
  %sub45.i.i.i = sub nsw i32 %add43.i.i.i, %conv2.i.i.i
  %conv46.i.i.i = trunc i32 %sub45.i.i.i to i16
  br label %if.end57.i.i.i

if.else48.i.i.i:                                  ; preds = %if.then35.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add51.neg.i.i.i = xor i32 %conv8.i.i.i, -1
  %sub52.i.i.i = add nsw i32 %conv2.i.i.i, %add51.neg.i.i.i
  %78 = trunc i32 %sub52.i.i.i to i16
  %conv55.i.i.i = sub i16 4096, %78
  br label %if.end57.i.i.i

if.end57.i.i.i:                                   ; preds = %if.else48.i.i.i, %if.then41.i.i.i
  %storemerge.i.i.i = phi i16 [ %conv55.i.i.i, %if.else48.i.i.i ], [ %conv46.i.i.i, %if.then41.i.i.i ]
  %79 = ptrtoint ptr %indicate_seq.i.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %storemerge.i.i.i, ptr %indicate_seq.i.i.i, align 2
  %dbg_rx_ampdu_window_shift_cnt.i.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %66, i32 0, i32 2, i32 35
  %80 = ptrtoint ptr %dbg_rx_ampdu_window_shift_cnt.i.i.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %dbg_rx_ampdu_window_shift_cnt.i.i.i, align 8
  %inc.i.i.i = add i64 %81, 1
  store i64 %inc.i.i.i, ptr %dbg_rx_ampdu_window_shift_cnt.i.i.i, align 8
  br label %if.end52.i.i

if.then51.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dbg_rx_ampdu_drop_count.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %33, i32 0, i32 2, i32 31
  %82 = ptrtoint ptr %dbg_rx_ampdu_drop_count.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %dbg_rx_ampdu_drop_count.i.i, align 8
  %inc.i.i = add i64 %83, 1
  store i64 %inc.i.i, ptr %dbg_rx_ampdu_drop_count.i.i, align 8
  br label %_err_exit.i.i

if.end52.i.i:                                     ; preds = %if.end57.i.i.i, %if.else.i.i.i.if.end52.i.i_crit_edge, %if.then22.i.i.i
  %pending_recvframe_queue.i.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %31, i32 0, i32 5
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %if.end52.i.i
  %plist.0.in.i.i.i = phi ptr [ %pending_recvframe_queue.i.i.i, %if.end52.i.i ], [ %plist.0.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %84 = ptrtoint ptr %plist.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %plist.0.i.i.i = load ptr, ptr %plist.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %pending_recvframe_queue.i.i.i, %plist.0.i.i.i
  br i1 %cmp.not.i.i.i, label %while.cond.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i

while.cond.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %seq_num.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.0.i.i.i, i32 0, i32 6, i32 11
  %85 = ptrtoint ptr %seq_num.i.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %seq_num.i.i.i, align 4
  %conv.i.i.i = zext i16 %86 to i32
  %87 = ptrtoint ptr %seq_num48.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %seq_num48.i.i, align 4
  %conv4.i.i.i = zext i16 %88 to i32
  %sub.i.i.i = sub nsw i32 %conv.i.i.i, %conv4.i.i.i
  %and.i.i.i = and i32 %sub.i.i.i, 2048
  %cmp5.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp5.not.i.i.i, label %if.else.i107.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i.i

if.else.i107.i.i:                                 ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %86, i16 %88)
  %cmp12.i.i.i = icmp eq i16 %86, %88
  br i1 %cmp12.i.i.i, label %if.else.i107.i.i._err_exit.i.i_crit_edge, label %if.else.i107.i.i.while.end.i.i.i_crit_edge

if.else.i107.i.i.while.end.i.i.i_crit_edge:       ; preds = %if.else.i107.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i.i

if.else.i107.i.i._err_exit.i.i_crit_edge:         ; preds = %if.else.i107.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_err_exit.i.i

while.end.i.i.i:                                  ; preds = %if.else.i107.i.i.while.end.i.i.i_crit_edge, %while.cond.i.i.i.while.end.i.i.i_crit_edge
  %plist.036.i.i.i = phi ptr [ %plist.0.i.i.i, %if.else.i107.i.i.while.end.i.i.i_crit_edge ], [ %pending_recvframe_queue.i.i.i, %while.cond.i.i.i.while.end.i.i.i_crit_edge ]
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %call2) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %while.end.i.i.i.list_del_init.exit.i.i.i_crit_edge

while.end.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call2, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %91 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %call2, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev1.i.i.i.i.i.i, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %92, ptr %90, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %while.end.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %95 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %call2, ptr %call2, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call2, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call2, ptr %prev.i3.i.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %plist.036.i.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i30.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call2, ptr noundef %98, ptr noundef %plist.036.i.i.i) #7
  br i1 %call.i.i30.i.i.i, label %if.end.i.i31.i.i.i, label %list_del_init.exit.i.i.i.if.end56.i.i_crit_edge

list_del_init.exit.i.i.i.if.end56.i.i_crit_edge:  ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i.i

if.end.i.i31.i.i.i:                               ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call2, ptr %prev.i.i.i.i, align 4
  %100 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %plist.036.i.i.i, ptr %call2, align 4
  %101 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev.i3.i.i.i.i, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %call2, ptr %98, align 4
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.end.i.i31.i.i.i, %list_del_init.exit.i.i.i.if.end56.i.i_crit_edge
  %call57.i.i = tail call fastcc i32 @recv_indicatepkts_in_order(ptr noundef %padapter, ptr noundef %31, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call57.i.i)
  %cmp58.i.i = icmp eq i32 %call57.i.i, 1
  br i1 %cmp58.i.i, label %if.then60.i.i, label %if.else62.i.i

if.then60.i.i:                                    ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %reordering_ctrl_timer.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %31, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %103 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %103, 5
  %call.i.i.i = tail call i32 @mod_timer(ptr noundef %reordering_ctrl_timer.i.i, i32 noundef %add.i.i.i) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #7
  br label %_recv_data_drop

if.else62.i.i:                                    ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #7
  %reordering_ctrl_timer64.i.i = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %31, i32 0, i32 6
  %call65.i.i = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer64.i.i) #7
  br label %_recv_data_drop

_err_exit.i.i:                                    ; preds = %if.else.i107.i.i._err_exit.i.i_crit_edge, %if.then51.i.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #7
  br label %if.then5.i

if.then5.i:                                       ; preds = %_err_exit.i.i, %land.lhs.true.i.i.if.then5.i_crit_edge, %if.then4.i.i.if.then5.i_crit_edge
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %104 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bDriverStopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp6.i = icmp eq i32 %105, 0
  br i1 %cmp6.i, label %land.lhs.true.i33, label %if.then5.i._recv_data_drop_crit_edge

if.then5.i._recv_data_drop_crit_edge:             ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_recv_data_drop

land.lhs.true.i33:                                ; preds = %if.then5.i
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %106 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp8.i = icmp eq i32 %107, 0
  br i1 %cmp8.i, label %land.lhs.true.i33.if.then11_crit_edge, label %land.lhs.true.i33._recv_data_drop_crit_edge

land.lhs.true.i33._recv_data_drop_crit_edge:      ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %_recv_data_drop

land.lhs.true.i33.if.then11_crit_edge:            ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.else.i34:                                      ; preds = %count_rx_stats.exit
  tail call fastcc void @wlanhdr_to_ethhdr(ptr noundef nonnull %call2) #7
  %bDriverStopped17.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %108 = ptrtoint ptr %bDriverStopped17.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bDriverStopped17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp18.i = icmp eq i32 %109, 0
  br i1 %cmp18.i, label %land.lhs.true20.i, label %if.else.i34.if.then11_crit_edge

if.else.i34.if.then11_crit_edge:                  ; preds = %if.else.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

land.lhs.true20.i:                                ; preds = %if.else.i34
  %bSurpriseRemoved21.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %110 = ptrtoint ptr %bSurpriseRemoved21.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %bSurpriseRemoved21.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp22.i = icmp eq i32 %111, 0
  br i1 %cmp22.i, label %if.then24.i, label %land.lhs.true20.i.if.then11_crit_edge

land.lhs.true20.i.if.then11_crit_edge:            ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.then24.i:                                      ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #9
  %call25.i = tail call i32 @rtw_recv_indicatepkt(ptr noundef %padapter, ptr noundef nonnull %call2) #7
  br label %_recv_data_drop

if.then11:                                        ; preds = %land.lhs.true20.i.if.then11_crit_edge, %if.else.i34.if.then11_crit_edge, %land.lhs.true.i33.if.then11_crit_edge
  %call12 = tail call i32 @rtw_free_recvframe(ptr noundef %prframe, ptr noundef %free_recv_queue)
  br label %_recv_data_drop

_recv_data_drop:                                  ; preds = %if.then11, %if.then24.i, %land.lhs.true.i33._recv_data_drop_crit_edge, %if.then5.i._recv_data_drop_crit_edge, %if.else62.i.i, %if.then60.i.i, %if.then31.i.i, %if.then15.i.i, %if.then9.i.i, %portctrl.exit, %if.end._recv_data_drop_crit_edge, %entry._recv_data_drop_crit_edge
  %ret.0 = phi i32 [ 0, %if.then11 ], [ 1, %if.end._recv_data_drop_crit_edge ], [ 0, %entry._recv_data_drop_crit_edge ], [ 0, %portctrl.exit ], [ 1, %if.then9.i.i ], [ 1, %if.then15.i.i ], [ 1, %if.then31.i.i ], [ 1, %if.then60.i.i ], [ 1, %if.else62.i.i ], [ 1, %if.then5.i._recv_data_drop_crit_edge ], [ 1, %land.lhs.true.i33._recv_data_drop_crit_edge ], [ 1, %if.then24.i ]
  %rx_drop = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 11
  %112 = ptrtoint ptr %rx_drop to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %rx_drop, align 8
  %inc = add i64 %113, 1
  store i64 %inc, ptr %rx_drop, align 8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @decryptor(ptr noundef %padapter, ptr noundef %precv_frame) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %encrypt = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 17
  %0 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %encrypt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %entry.if.else63_crit_edge, label %land.lhs.true

entry.if.else63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else63

land.lhs.true:                                    ; preds = %entry
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
  %2 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_data, align 4
  %hdrlen = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdrlen, align 1
  %conv2 = zext i8 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv2
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = lshr i8 %7, 6
  %key_index = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 29
  %9 = ptrtoint ptr %key_index to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %key_index, align 1
  %bdecrypted = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 16
  %10 = ptrtoint ptr %bdecrypted to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bdecrypted, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp23 = icmp eq i8 %11, 0
  br i1 %cmp23, label %land.lhs.true.if.then27_crit_edge, label %lor.lhs.false

land.lhs.true.if.then27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

lor.lhs.false:                                    ; preds = %land.lhs.true
  %sw_decrypt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 33
  %12 = ptrtoint ptr %sw_decrypt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sw_decrypt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp25 = icmp eq i32 %13, 1
  br i1 %cmp25, label %lor.lhs.false.if.then27_crit_edge, label %if.else.thread

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %land.lhs.true.if.then27_crit_edge
  %hw_decrypted = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 34
  %14 = ptrtoint ptr %hw_decrypted to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %hw_decrypted, align 4
  %15 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %encrypt, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %16, label %if.then27.if.else63_crit_edge [
    i8 1, label %if.then27.sw.bb30_crit_edge
    i8 5, label %if.then27.sw.bb30_crit_edge98
    i8 2, label %sw.bb31
    i8 4, label %sw.bb32
  ]

if.then27.sw.bb30_crit_edge98:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb30

if.then27.sw.bb30_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb30

if.then27.if.else63_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else63

sw.bb30:                                          ; preds = %if.then27.sw.bb30_crit_edge, %if.then27.sw.bb30_crit_edge98
  tail call void @rtw_wep_decrypt(ptr noundef %padapter, ptr noundef %precv_frame) #7
  br label %if.else63

sw.bb31:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @rtw_tkip_decrypt(ptr noundef %padapter, ptr noundef %precv_frame) #7
  br label %if.end58

sw.bb32:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = tail call i32 @rtw_aes_decrypt(ptr noundef %padapter, ptr noundef %precv_frame) #7
  br label %if.end58

if.else.thread:                                   ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %bdecrypted to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bdecrypted, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp3895 = icmp eq i8 %19, 1
  br i1 %cmp3895, label %land.lhs.true45, label %if.else.thread.if.else63_crit_edge

if.else.thread.if.else63_crit_edge:               ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else63

land.lhs.true45:                                  ; preds = %if.else.thread
  %busetkipkey = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 29
  %20 = ptrtoint ptr %busetkipkey to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %busetkipkey, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp47 = icmp ne i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp52.not = icmp eq i8 %1, 2
  %or.cond = select i1 %cmp47, i1 %cmp52.not, i1 false
  br i1 %or.cond, label %land.lhs.true45.if.else63_crit_edge, label %if.then54

land.lhs.true45.if.else63_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else63

if.then54:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  %hw_decrypted55 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 34
  %22 = ptrtoint ptr %hw_decrypted55 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %hw_decrypted55, align 4
  br label %if.else63

if.end58:                                         ; preds = %sw.bb32, %sw.bb31
  %res.0 = phi i32 [ %call33, %sw.bb32 ], [ %call, %sw.bb31 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0)
  %cmp59 = icmp eq i32 %res.0, 0
  br i1 %cmp59, label %if.then61, label %if.end58.if.else63_crit_edge

if.end58.if.else63_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else63

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %free_recv_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 1
  %call62 = tail call i32 @rtw_free_recvframe(ptr noundef %precv_frame, ptr noundef %free_recv_queue)
  br label %if.end65

if.else63:                                        ; preds = %if.end58.if.else63_crit_edge, %if.then54, %land.lhs.true45.if.else63_crit_edge, %if.else.thread.if.else63_crit_edge, %sw.bb30, %if.then27.if.else63_crit_edge, %entry.if.else63_crit_edge
  %bdecrypted64 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 16
  %23 = ptrtoint ptr %bdecrypted64 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %bdecrypted64, align 2
  br label %if.end65

if.end65:                                         ; preds = %if.else63, %if.then61
  %return_packet.0 = phi ptr [ null, %if.then61 ], [ %precv_frame, %if.else63 ]
  ret ptr %return_packet.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @recvframe_chk_defrag(ptr noundef %padapter, ptr noundef %precv_frame) unnamed_addr #0 align 64 {
entry:
  %miccode.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %free_recv_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 1
  %mfrag = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 13
  %0 = ptrtoint ptr %mfrag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mfrag, align 1
  %frag_num = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 12
  %2 = ptrtoint ptr %frag_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %frag_num, align 2
  %ta = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 25
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ta) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %entry
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
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
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %entry.if.end11_crit_edge
  %call.pn = phi ptr [ %call7, %if.then6 ], [ %call, %entry.if.end11_crit_edge ]
  %pdefrag_q.1 = getelementptr inbounds %struct.sta_info, ptr %call.pn, i32 0, i32 5, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp13 = icmp eq i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp16 = icmp eq i8 %3, 0
  %or.cond = select i1 %cmp13, i1 %cmp16, i1 false
  %prtnframe.0 = select i1 %or.cond, ptr %precv_frame, ptr null
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp21 = icmp eq i8 %1, 1
  br i1 %cmp21, label %if.then23, label %if.end11.if.end39_crit_edge

if.end11.if.end39_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end11.thread:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp13130 = icmp eq i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp16131 = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp21134 = icmp eq i8 %1, 1
  br i1 %cmp21134, label %if.end11.thread.if.end39.thread171_crit_edge, label %if.end39.thread

if.end11.thread.if.end39.thread171_crit_edge:     ; preds = %if.end11.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.thread171

if.then23:                                        ; preds = %if.end11
  %tobool24.not = icmp eq ptr %pdefrag_q.1, null
  br i1 %tobool24.not, label %if.then23.if.end39.thread171_crit_edge, label %if.then25

if.then23.if.end39.thread171_crit_edge:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.thread171

if.then25:                                        ; preds = %if.then23
  br i1 %cmp16, label %if.then29, label %if.then25.if.end34_crit_edge

if.then25.if.end34_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then29:                                        ; preds = %if.then25
  %9 = ptrtoint ptr %pdefrag_q.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %pdefrag_q.1, align 4
  %cmp.i.not = icmp eq ptr %10, %pdefrag_q.1
  br i1 %cmp.i.not, label %if.then29.if.end34_crit_edge, label %if.then32

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then32:                                        ; preds = %if.then29
  %lock.i = getelementptr inbounds %struct.sta_info, ptr %call.pn, i32 0, i32 5, i32 2, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %11 = ptrtoint ptr %pdefrag_q.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdefrag_q.1, align 4
  %cmp.not10.i = icmp eq ptr %12, %pdefrag_q.1
  br i1 %cmp.not10.i, label %if.then32.rtw_free_recvframe_queue.exit_crit_edge, label %if.then32.while.body.i_crit_edge

if.then32.while.body.i_crit_edge:                 ; preds = %if.then32
  br label %while.body.i

if.then32.rtw_free_recvframe_queue.exit_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_free_recvframe_queue.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then32.while.body.i_crit_edge
  %plist.011.i = phi ptr [ %14, %while.body.i.while.body.i_crit_edge ], [ %12, %if.then32.while.body.i_crit_edge ]
  %13 = ptrtoint ptr %plist.011.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plist.011.i, align 4
  %call3.i = tail call i32 @rtw_free_recvframe(ptr noundef %plist.011.i, ptr noundef %free_recv_queue) #7
  %cmp.not.i = icmp eq ptr %14, %pdefrag_q.1
  br i1 %cmp.not.i, label %while.body.i.rtw_free_recvframe_queue.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.rtw_free_recvframe_queue.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_free_recvframe_queue.exit

rtw_free_recvframe_queue.exit:                    ; preds = %while.body.i.rtw_free_recvframe_queue.exit_crit_edge, %if.then32.rtw_free_recvframe_queue.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  br label %if.end34

if.end34:                                         ; preds = %rtw_free_recvframe_queue.exit, %if.then29.if.end34_crit_edge, %if.then25.if.end34_crit_edge
  %prev.i = getelementptr inbounds %struct.sta_info, ptr %call.pn, i32 0, i32 5, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %precv_frame, ptr noundef %16, ptr noundef nonnull %pdefrag_q.1) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end34.if.end39_crit_edge

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end.i.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
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
  br label %if.end39

if.end39:                                         ; preds = %if.end.i.i, %if.end34.if.end39_crit_edge, %if.end11.if.end39_crit_edge
  %prtnframe.1 = phi ptr [ %prtnframe.0, %if.end11.if.end39_crit_edge ], [ null, %if.end34.if.end39_crit_edge ], [ null, %if.end.i.i ]
  %cmp13.not = xor i1 %cmp13, true
  %or.cond103 = select i1 %cmp13.not, i1 true, i1 %cmp16
  br i1 %or.cond103, label %if.end39.if.end56_crit_edge, label %if.then47

if.end39.if.end56_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.end39.thread171:                               ; preds = %if.then23.if.end39.thread171_crit_edge, %if.end11.thread.if.end39.thread171_crit_edge
  %cmp13140148 = phi i1 [ %cmp13, %if.then23.if.end39.thread171_crit_edge ], [ %cmp13130, %if.end11.thread.if.end39.thread171_crit_edge ]
  %cmp16141147 = phi i1 [ %cmp16, %if.then23.if.end39.thread171_crit_edge ], [ %cmp16131, %if.end11.thread.if.end39.thread171_crit_edge ]
  %call37 = tail call i32 @rtw_free_recvframe(ptr noundef %precv_frame, ptr noundef %free_recv_queue)
  %cmp13.not176 = xor i1 %cmp13140148, true
  %or.cond103177 = select i1 %cmp13.not176, i1 true, i1 %cmp16141147
  br i1 %or.cond103177, label %if.end39.thread171.if.end69_crit_edge, label %if.end39.thread171.if.end56.thread_crit_edge

if.end39.thread171.if.end56.thread_crit_edge:     ; preds = %if.end39.thread171
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.thread

if.end39.thread171.if.end69_crit_edge:            ; preds = %if.end39.thread171
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.end39.thread:                                  ; preds = %if.end11.thread
  %or.cond132 = select i1 %cmp13130, i1 %cmp16131, i1 false
  %prtnframe.0133 = select i1 %or.cond132, ptr %precv_frame, ptr null
  %cmp13.not154 = xor i1 %cmp13130, true
  %or.cond103155 = select i1 %cmp13.not154, i1 true, i1 %cmp16131
  br i1 %or.cond103155, label %if.end39.thread.if.end56_crit_edge, label %if.end39.thread.if.end56.thread_crit_edge

if.end39.thread.if.end56.thread_crit_edge:        ; preds = %if.end39.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.thread

if.end39.thread.if.end56_crit_edge:               ; preds = %if.end39.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then47:                                        ; preds = %if.end39
  %tobool48.not = icmp eq ptr %pdefrag_q.1, null
  br i1 %tobool48.not, label %if.then47.if.end56.thread_crit_edge, label %if.then49

if.then47.if.end56.thread_crit_edge:              ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.thread

if.then49:                                        ; preds = %if.then47
  %prev.i104 = getelementptr inbounds %struct.sta_info, ptr %call.pn, i32 0, i32 5, i32 2, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i104 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i104, align 4
  %call.i.i105 = tail call zeroext i1 @__list_add_valid(ptr noundef %precv_frame, ptr noundef %22, ptr noundef nonnull %pdefrag_q.1) #7
  br i1 %call.i.i105, label %if.end.i.i107, label %if.then49.list_add_tail.exit108_crit_edge

if.then49.list_add_tail.exit108_crit_edge:        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit108

if.end.i.i107:                                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %prev.i104 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %precv_frame, ptr %prev.i104, align 4
  %24 = ptrtoint ptr %precv_frame to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pdefrag_q.1, ptr %precv_frame, align 4
  %prev3.i.i106 = getelementptr inbounds %struct.list_head, ptr %precv_frame, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i106 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i106, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %precv_frame, ptr %22, align 4
  br label %list_add_tail.exit108

list_add_tail.exit108:                            ; preds = %if.end.i.i107, %if.then49.list_add_tail.exit108_crit_edge
  %27 = ptrtoint ptr %pdefrag_q.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdefrag_q.1, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %28) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_add_tail.exit108.list_del_init.exit.i_crit_edge

list_add_tail.exit108.list_del_init.exit.i_crit_edge: ; preds = %list_add_tail.exit108
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %list_add_tail.exit108
  call void @__sanitizer_cov_trace_pc() #9
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

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %list_add_tail.exit108.list_del_init.exit.i_crit_edge
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %28, ptr %28, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %28, ptr %prev.i3.i.i, align 4
  %frag_num.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %28, i32 0, i32 6, i32 12
  %37 = ptrtoint ptr %frag_num.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %frag_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp.not.i109 = icmp eq i8 %38, 0
  br i1 %cmp.not.i109, label %while.cond.preheader.i, label %if.then.i

while.cond.preheader.i:                           ; preds = %list_del_init.exit.i
  %39 = ptrtoint ptr %pdefrag_q.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %plist.0110.i = load ptr, ptr %pdefrag_q.1, align 4
  %cmp7.not111.i = icmp eq ptr %plist.0110.i, %pdefrag_q.1
  br i1 %cmp7.not111.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %icv_len.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %28, i32 0, i32 6, i32 19
  %cmp.i83.i = icmp eq ptr %28, null
  %rx_tail.i84.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %28, i32 0, i32 10
  %rx_data.i86.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %28, i32 0, i32 9
  %len.i90.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %28, i32 0, i32 7
  %rx_end.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %28, i32 0, i32 11
  br label %while.body.i110

if.then.i:                                        ; preds = %list_del_init.exit.i
  %call4.i = tail call i32 @rtw_free_recvframe(ptr noundef %28, ptr noundef %free_recv_queue) #7
  %lock.i.i = getelementptr inbounds %struct.sta_info, ptr %call.pn, i32 0, i32 5, i32 2, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #7
  %40 = ptrtoint ptr %pdefrag_q.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdefrag_q.1, align 4
  %cmp.not10.i.i = icmp eq ptr %41, %pdefrag_q.1
  br i1 %cmp.not10.i.i, label %if.then.i.recvframe_defrag.exit_crit_edge, label %if.then.i.while.body.i.i_crit_edge

if.then.i.while.body.i.i_crit_edge:               ; preds = %if.then.i
  br label %while.body.i.i

if.then.i.recvframe_defrag.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recvframe_defrag.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i.while.body.i.i_crit_edge
  %plist.011.i.i = phi ptr [ %43, %while.body.i.i.while.body.i.i_crit_edge ], [ %41, %if.then.i.while.body.i.i_crit_edge ]
  %42 = ptrtoint ptr %plist.011.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %plist.011.i.i, align 4
  %call3.i.i = tail call i32 @rtw_free_recvframe(ptr noundef %plist.011.i.i, ptr noundef %free_recv_queue) #7
  %cmp.not.i.i = icmp eq ptr %43, %pdefrag_q.1
  br i1 %cmp.not.i.i, label %while.body.i.i.recvframe_defrag.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.body.i.i.recvframe_defrag.exit_crit_edge:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recvframe_defrag.exit

while.body.i110:                                  ; preds = %recvframe_put.exit.i.while.body.i110_crit_edge, %while.body.lr.ph.i
  %plist.0113.i = phi ptr [ %plist.0110.i, %while.body.lr.ph.i ], [ %plist.0.i, %recvframe_put.exit.i.while.body.i110_crit_edge ]
  %curfragnum.0112.i = phi i8 [ 1, %while.body.lr.ph.i ], [ %inc18.i, %recvframe_put.exit.i.while.body.i110_crit_edge ]
  %frag_num11.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.0113.i, i32 0, i32 6, i32 12
  %44 = ptrtoint ptr %frag_num11.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %frag_num11.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %curfragnum.0112.i, i8 %45)
  %cmp13.not.i = icmp eq i8 %curfragnum.0112.i, %45
  br i1 %cmp13.not.i, label %if.end17.i, label %if.then15.i

if.then15.i:                                      ; preds = %while.body.i110
  %call16.i = tail call i32 @rtw_free_recvframe(ptr noundef %28, ptr noundef %free_recv_queue) #7
  %lock.i76.i = getelementptr inbounds %struct.sta_info, ptr %call.pn, i32 0, i32 5, i32 2, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i76.i) #7
  %46 = ptrtoint ptr %pdefrag_q.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdefrag_q.1, align 4
  %cmp.not10.i77.i = icmp eq ptr %47, %pdefrag_q.1
  br i1 %cmp.not10.i77.i, label %if.then15.i.recvframe_defrag.exit_crit_edge, label %if.then15.i.while.body.i81.i_crit_edge

if.then15.i.while.body.i81.i_crit_edge:           ; preds = %if.then15.i
  br label %while.body.i81.i

if.then15.i.recvframe_defrag.exit_crit_edge:      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recvframe_defrag.exit

while.body.i81.i:                                 ; preds = %while.body.i81.i.while.body.i81.i_crit_edge, %if.then15.i.while.body.i81.i_crit_edge
  %plist.011.i78.i = phi ptr [ %49, %while.body.i81.i.while.body.i81.i_crit_edge ], [ %47, %if.then15.i.while.body.i81.i_crit_edge ]
  %48 = ptrtoint ptr %plist.011.i78.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %plist.011.i78.i, align 4
  %call3.i79.i = tail call i32 @rtw_free_recvframe(ptr noundef %plist.011.i78.i, ptr noundef %free_recv_queue) #7
  %cmp.not.i80.i = icmp eq ptr %49, %pdefrag_q.1
  br i1 %cmp.not.i80.i, label %while.body.i81.i.recvframe_defrag.exit_crit_edge, label %while.body.i81.i.while.body.i81.i_crit_edge

while.body.i81.i.while.body.i81.i_crit_edge:      ; preds = %while.body.i81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i81.i

while.body.i81.i.recvframe_defrag.exit_crit_edge: ; preds = %while.body.i81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recvframe_defrag.exit

if.end17.i:                                       ; preds = %while.body.i110
  %inc18.i = add i8 %curfragnum.0112.i, 1
  %hdrlen.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.0113.i, i32 0, i32 6, i32 4
  %50 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %hdrlen.i, align 1
  %iv_len.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.0113.i, i32 0, i32 6, i32 18
  %52 = ptrtoint ptr %iv_len.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %iv_len.i, align 4
  %add.i = add i8 %53, %51
  %conv24.i = zext i8 %add.i to i32
  %cmp.i.i = icmp eq ptr %plist.0113.i, null
  br i1 %cmp.i.i, label %if.end17.i.recvframe_pull.exit.i_crit_edge, label %if.end.i.i111

if.end17.i.recvframe_pull.exit.i_crit_edge:       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recvframe_pull.exit.i

if.end.i.i111:                                    ; preds = %if.end17.i
  %rx_data.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.0113.i, i32 0, i32 9
  %54 = ptrtoint ptr %rx_data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 %conv24.i
  store ptr %add.ptr.i.i, ptr %rx_data.i.i, align 4
  %rx_tail.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.0113.i, i32 0, i32 10
  %56 = ptrtoint ptr %rx_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rx_tail.i.i, align 4
  %cmp2.i.i = icmp ugt ptr %add.ptr.i.i, %57
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end6.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i111
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %rx_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %rx_data.i.i, align 4
  br label %recvframe_pull.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i111
  call void @__sanitizer_cov_trace_pc() #9
  %len.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.0113.i, i32 0, i32 7
  %59 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.i.i, align 4
  %sub.i.i = sub i32 %60, %conv24.i
  store i32 %sub.i.i, ptr %len.i.i, align 4
  br label %recvframe_pull.exit.i

recvframe_pull.exit.i:                            ; preds = %if.end6.i.i, %if.then3.i.i, %if.end17.i.recvframe_pull.exit.i_crit_edge
  %61 = ptrtoint ptr %icv_len.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %icv_len.i, align 1
  %conv27.i = zext i8 %62 to i32
  %63 = ptrtoint ptr %rx_tail.i84.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rx_tail.i84.i, align 4
  br i1 %cmp.i83.i, label %recvframe_pull_tail.exit.i, label %if.end.i88.i

if.end.i88.i:                                     ; preds = %recvframe_pull.exit.i
  %idx.neg.i.i = sub nsw i32 0, %conv27.i
  %add.ptr.i85.i = getelementptr i8, ptr %64, i32 %idx.neg.i.i
  %65 = ptrtoint ptr %rx_tail.i84.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr.i85.i, ptr %rx_tail.i84.i, align 4
  %66 = ptrtoint ptr %rx_data.i86.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rx_data.i86.i, align 4
  %cmp2.i87.i = icmp ult ptr %add.ptr.i85.i, %67
  br i1 %cmp2.i87.i, label %if.then3.i89.i, label %if.end6.i92.i

if.then3.i89.i:                                   ; preds = %if.end.i88.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %rx_tail.i84.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %64, ptr %rx_tail.i84.i, align 4
  br label %if.end.i96.i

if.end6.i92.i:                                    ; preds = %if.end.i88.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %len.i90.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len.i90.i, align 4
  %sub.i91.i = sub i32 %70, %conv27.i
  store i32 %sub.i91.i, ptr %len.i90.i, align 4
  br label %if.end.i96.i

recvframe_pull_tail.exit.i:                       ; preds = %recvframe_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_data.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.0113.i, i32 0, i32 9
  %71 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rx_data.i, align 4
  %len.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.0113.i, i32 0, i32 7
  %73 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i, align 4
  %75 = call ptr @memcpy(ptr %64, ptr %72, i32 %74)
  br label %recvframe_put.exit.i

if.end.i96.i:                                     ; preds = %if.end6.i92.i, %if.then3.i89.i
  %76 = ptrtoint ptr %rx_tail.i84.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rx_tail.i84.i, align 4
  %rx_data107.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.0113.i, i32 0, i32 9
  %78 = ptrtoint ptr %rx_data107.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rx_data107.i, align 4
  %len108.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.0113.i, i32 0, i32 7
  %80 = ptrtoint ptr %len108.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len108.i, align 4
  %82 = call ptr @memcpy(ptr %77, ptr %79, i32 %81)
  %83 = load i32, ptr %len108.i, align 4
  %84 = load ptr, ptr %rx_tail.i84.i, align 4
  %add.ptr.i95.i = getelementptr i8, ptr %84, i32 %83
  store ptr %add.ptr.i95.i, ptr %rx_tail.i84.i, align 4
  %85 = ptrtoint ptr %rx_end.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rx_end.i.i, align 4
  %cmp3.i.i = icmp ugt ptr %add.ptr.i95.i, %86
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.end6.i98.i

if.then4.i.i:                                     ; preds = %if.end.i96.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %rx_tail.i84.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %rx_tail.i84.i, align 4
  br label %recvframe_put.exit.i

if.end6.i98.i:                                    ; preds = %if.end.i96.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %len.i90.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len.i90.i, align 4
  %add.i.i = add i32 %89, %83
  store i32 %add.i.i, ptr %len.i90.i, align 4
  br label %recvframe_put.exit.i

recvframe_put.exit.i:                             ; preds = %if.end6.i98.i, %if.then4.i.i, %recvframe_pull_tail.exit.i
  %icv_len32.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %plist.0113.i, i32 0, i32 6, i32 19
  %90 = ptrtoint ptr %icv_len32.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %icv_len32.i, align 1
  %92 = ptrtoint ptr %icv_len.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %icv_len.i, align 1
  %93 = ptrtoint ptr %plist.0113.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %plist.0.i = load ptr, ptr %plist.0113.i, align 4
  %cmp7.not.i = icmp eq ptr %plist.0.i, %pdefrag_q.1
  br i1 %cmp7.not.i, label %recvframe_put.exit.i.while.end.i_crit_edge, label %recvframe_put.exit.i.while.body.i110_crit_edge

recvframe_put.exit.i.while.body.i110_crit_edge:   ; preds = %recvframe_put.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i110

recvframe_put.exit.i.while.end.i_crit_edge:       ; preds = %recvframe_put.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %recvframe_put.exit.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %lock.i99.i = getelementptr inbounds %struct.sta_info, ptr %call.pn, i32 0, i32 5, i32 2, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i99.i) #7
  %94 = ptrtoint ptr %pdefrag_q.1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pdefrag_q.1, align 4
  %cmp.not10.i100.i = icmp eq ptr %95, %pdefrag_q.1
  br i1 %cmp.not10.i100.i, label %while.end.i.recvframe_defrag.exit_crit_edge, label %while.end.i.while.body.i104.i_crit_edge

while.end.i.while.body.i104.i_crit_edge:          ; preds = %while.end.i
  br label %while.body.i104.i

while.end.i.recvframe_defrag.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recvframe_defrag.exit

while.body.i104.i:                                ; preds = %while.body.i104.i.while.body.i104.i_crit_edge, %while.end.i.while.body.i104.i_crit_edge
  %plist.011.i101.i = phi ptr [ %97, %while.body.i104.i.while.body.i104.i_crit_edge ], [ %95, %while.end.i.while.body.i104.i_crit_edge ]
  %96 = ptrtoint ptr %plist.011.i101.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %plist.011.i101.i, align 4
  %call3.i102.i = tail call i32 @rtw_free_recvframe(ptr noundef %plist.011.i101.i, ptr noundef %free_recv_queue) #7
  %cmp.not.i103.i = icmp eq ptr %97, %pdefrag_q.1
  br i1 %cmp.not.i103.i, label %while.body.i104.i.recvframe_defrag.exit_crit_edge, label %while.body.i104.i.while.body.i104.i_crit_edge

while.body.i104.i.while.body.i104.i_crit_edge:    ; preds = %while.body.i104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i104.i

while.body.i104.i.recvframe_defrag.exit_crit_edge: ; preds = %while.body.i104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recvframe_defrag.exit

recvframe_defrag.exit:                            ; preds = %while.body.i104.i.recvframe_defrag.exit_crit_edge, %while.end.i.recvframe_defrag.exit_crit_edge, %while.body.i81.i.recvframe_defrag.exit_crit_edge, %if.then15.i.recvframe_defrag.exit_crit_edge, %while.body.i.i.recvframe_defrag.exit_crit_edge, %if.then.i.recvframe_defrag.exit_crit_edge
  %lock.i99.sink.i = phi ptr [ %lock.i.i, %if.then.i.recvframe_defrag.exit_crit_edge ], [ %lock.i76.i, %if.then15.i.recvframe_defrag.exit_crit_edge ], [ %lock.i99.i, %while.end.i.recvframe_defrag.exit_crit_edge ], [ %lock.i99.i, %while.body.i104.i.recvframe_defrag.exit_crit_edge ], [ %lock.i76.i, %while.body.i81.i.recvframe_defrag.exit_crit_edge ], [ %lock.i.i, %while.body.i.i.recvframe_defrag.exit_crit_edge ]
  %retval.0.i = phi ptr [ null, %if.then.i.recvframe_defrag.exit_crit_edge ], [ null, %if.then15.i.recvframe_defrag.exit_crit_edge ], [ %28, %while.end.i.recvframe_defrag.exit_crit_edge ], [ %28, %while.body.i104.i.recvframe_defrag.exit_crit_edge ], [ null, %while.body.i81.i.recvframe_defrag.exit_crit_edge ], [ null, %while.body.i.i.recvframe_defrag.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i99.sink.i) #7
  br label %if.end56

if.end56.thread:                                  ; preds = %if.then47.if.end56.thread_crit_edge, %if.end39.thread.if.end56.thread_crit_edge, %if.end39.thread171.if.end56.thread_crit_edge
  %call54 = tail call i32 @rtw_free_recvframe(ptr noundef %precv_frame, ptr noundef %free_recv_queue)
  br label %if.end69

if.end56:                                         ; preds = %recvframe_defrag.exit, %if.end39.thread.if.end56_crit_edge, %if.end39.if.end56_crit_edge
  %prtnframe.2 = phi ptr [ %retval.0.i, %recvframe_defrag.exit ], [ %prtnframe.1, %if.end39.if.end56_crit_edge ], [ %prtnframe.0133, %if.end39.thread.if.end56_crit_edge ]
  %tobool57.not = icmp eq ptr %prtnframe.2, null
  br i1 %tobool57.not, label %if.end56.if.end69_crit_edge, label %land.lhs.true58

if.end56.if.end69_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.lhs.true58:                                  ; preds = %if.end56
  %privacy = getelementptr inbounds %struct.recv_frame_hdr, ptr %prtnframe.2, i32 0, i32 6, i32 15
  %98 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %privacy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool61.not = icmp eq i8 %99, 0
  br i1 %tobool61.not, label %land.lhs.true58.if.end69_crit_edge, label %if.then62

land.lhs.true58.if.end69_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then62:                                        ; preds = %land.lhs.true58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %miccode.i) #7
  %100 = getelementptr inbounds [8 x i8], ptr %miccode.i, i32 0, i32 1
  %101 = getelementptr inbounds [8 x i8], ptr %miccode.i, i32 0, i32 2
  %102 = getelementptr inbounds [8 x i8], ptr %miccode.i, i32 0, i32 3
  %103 = getelementptr inbounds [8 x i8], ptr %miccode.i, i32 0, i32 4
  %104 = getelementptr inbounds [8 x i8], ptr %miccode.i, i32 0, i32 5
  %105 = getelementptr inbounds [8 x i8], ptr %miccode.i, i32 0, i32 6
  %106 = getelementptr inbounds [8 x i8], ptr %miccode.i, i32 0, i32 7
  %ta.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %prtnframe.2, i32 0, i32 6, i32 25
  %107 = ptrtoint ptr %miccode.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 -1, ptr %miccode.i, align 8
  %call.i = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ta.i) #7
  %encrypt.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %prtnframe.2, i32 0, i32 6, i32 17
  %108 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %encrypt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %109)
  %cmp.i112 = icmp eq i8 %109, 2
  br i1 %cmp.i112, label %if.then.i113, label %recvframe_chkmic.exit.thread163

recvframe_chkmic.exit.thread163:                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %miccode.i) #7
  br label %if.end69

if.then.i113:                                     ; preds = %if.then62
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i113.if.end.i.i124_crit_edge, label %if.then2.i

if.then.i113.if.end.i.i124_crit_edge:             ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i124

if.then2.i:                                       ; preds = %if.then.i113
  %ra.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %prtnframe.2, i32 0, i32 6, i32 26
  %110 = ptrtoint ptr %ra.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %ra.i, align 1
  %112 = and i8 %111, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool4.not.i = icmp eq i8 %112, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then2.i
  %key_index.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %prtnframe.2, i32 0, i32 6, i32 29
  %113 = ptrtoint ptr %key_index.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %key_index.i, align 1
  %idxprom.i = zext i8 %114 to i32
  %arrayidx6.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 10, i32 %idxprom.i
  %binstallGrpkey.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 27
  %115 = ptrtoint ptr %binstallGrpkey.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %binstallGrpkey.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp9.i = icmp eq i8 %116, 0
  br i1 %cmp9.i, label %recvframe_chkmic.exit.thread, label %if.then5.i.if.end13.i_crit_edge

if.then5.i.if.end13.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

recvframe_chkmic.exit.thread:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %miccode.i) #7
  br label %if.then66

if.else.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %dot11tkiprxmickey.i = getelementptr inbounds %struct.sta_info, ptr %call.i, i32 0, i32 16
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then5.i.if.end13.i_crit_edge
  %mickey.0.i = phi ptr [ %arrayidx6.i, %if.then5.i.if.end13.i_crit_edge ], [ %dot11tkiprxmickey.i, %if.else.i ]
  %len.i114 = getelementptr inbounds %struct.recv_frame_hdr, ptr %prtnframe.2, i32 0, i32 7
  %117 = ptrtoint ptr %len.i114 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %len.i114, align 4
  %hdrlen.i115 = getelementptr inbounds %struct.recv_frame_hdr, ptr %prtnframe.2, i32 0, i32 6, i32 4
  %119 = ptrtoint ptr %hdrlen.i115 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %hdrlen.i115, align 1
  %conv14.i = zext i8 %120 to i32
  %iv_len.i116 = getelementptr inbounds %struct.recv_frame_hdr, ptr %prtnframe.2, i32 0, i32 6, i32 18
  %121 = ptrtoint ptr %iv_len.i116 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %iv_len.i116, align 4
  %conv15.i = zext i8 %122 to i32
  %icv_len.i117 = getelementptr inbounds %struct.recv_frame_hdr, ptr %prtnframe.2, i32 0, i32 6, i32 19
  %123 = ptrtoint ptr %icv_len.i117 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %icv_len.i117, align 1
  %conv17.i = zext i8 %124 to i32
  %.neg = add i32 %118, -8
  %125 = add nuw nsw i32 %conv14.i, %conv15.i
  %126 = add nuw nsw i32 %125, %conv17.i
  %sub19.i = sub i32 %.neg, %126
  %rx_data.i118 = getelementptr inbounds %struct.recv_frame_hdr, ptr %prtnframe.2, i32 0, i32 9
  %127 = ptrtoint ptr %rx_data.i118 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rx_data.i118, align 4
  %add.ptr.i = getelementptr i8, ptr %128, i32 %conv14.i
  %add.ptr24.i = getelementptr i8, ptr %add.ptr.i, i32 %conv15.i
  %priority.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %prtnframe.2, i32 0, i32 6, i32 8
  %129 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %priority.i, align 1
  call void @rtw_seccalctkipmic(ptr noundef %mickey.0.i, ptr noundef %128, ptr noundef %add.ptr24.i, i32 noundef %sub19.i, ptr noundef nonnull %miccode.i, i8 noundef zeroext %130) #7
  %add.ptr26.i = getelementptr i8, ptr %add.ptr24.i, i32 %sub19.i
  %131 = ptrtoint ptr %miccode.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %miccode.i, align 8
  %133 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %add.ptr26.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %132, i8 %134)
  %cmp33.not.i = icmp ne i8 %132, %134
  %135 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %100, align 1
  %add.ptr31.1.i = getelementptr i8, ptr %add.ptr26.i, i32 1
  %137 = ptrtoint ptr %add.ptr31.1.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %add.ptr31.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %136, i8 %138)
  %cmp33.not.1.i = icmp ne i8 %136, %138
  %139 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %101, align 2
  %add.ptr31.2.i = getelementptr i8, ptr %add.ptr26.i, i32 2
  %141 = ptrtoint ptr %add.ptr31.2.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %add.ptr31.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %140, i8 %142)
  %cmp33.not.2.i = icmp ne i8 %140, %142
  %143 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %102, align 1
  %add.ptr31.3.i = getelementptr i8, ptr %add.ptr26.i, i32 3
  %145 = ptrtoint ptr %add.ptr31.3.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %add.ptr31.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %144, i8 %146)
  %cmp33.not.3.i = icmp ne i8 %144, %146
  %147 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %103, align 4
  %add.ptr31.4.i = getelementptr i8, ptr %add.ptr26.i, i32 4
  %149 = ptrtoint ptr %add.ptr31.4.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %add.ptr31.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %148, i8 %150)
  %cmp33.not.4.i = icmp ne i8 %148, %150
  %151 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %104, align 1
  %add.ptr31.5.i = getelementptr i8, ptr %add.ptr26.i, i32 5
  %153 = ptrtoint ptr %add.ptr31.5.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %add.ptr31.5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %152, i8 %154)
  %cmp33.not.5.i = icmp ne i8 %152, %154
  %155 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %105, align 2
  %add.ptr31.6.i = getelementptr i8, ptr %add.ptr26.i, i32 6
  %157 = ptrtoint ptr %add.ptr31.6.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %add.ptr31.6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %156, i8 %158)
  %cmp33.not.6.i = icmp ne i8 %156, %158
  %159 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %106, align 1
  %add.ptr31.7.i = getelementptr i8, ptr %add.ptr26.i, i32 7
  %161 = ptrtoint ptr %add.ptr31.7.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %add.ptr31.7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %160, i8 %162)
  %cmp33.not.7.i = icmp ne i8 %160, %162
  %163 = select i1 %cmp33.not.7.i, i1 true, i1 %cmp33.not.6.i
  %164 = select i1 %163, i1 true, i1 %cmp33.not.5.i
  %165 = select i1 %164, i1 true, i1 %cmp33.not.4.i
  %166 = select i1 %165, i1 true, i1 %cmp33.not.3.i
  %167 = select i1 %166, i1 true, i1 %cmp33.not.2.i
  %168 = select i1 %167, i1 true, i1 %cmp33.not.1.i
  %narrow.i = select i1 %168, i1 true, i1 %cmp33.not.i
  br i1 %narrow.i, label %if.then40.i, label %if.else64.i

if.then40.i:                                      ; preds = %if.end13.i
  %169 = ptrtoint ptr %ra.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %ra.i, align 1
  %171 = and i8 %170, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %cmp44.not.i = icmp eq i8 %171, 0
  br i1 %cmp44.not.i, label %if.then40.i.if.end52.i_crit_edge, label %land.lhs.true.i

if.then40.i.if.end52.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i

land.lhs.true.i:                                  ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  %key_index46.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %prtnframe.2, i32 0, i32 6, i32 29
  %172 = ptrtoint ptr %key_index46.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %key_index46.i, align 1
  %conv47.i = zext i8 %173 to i32
  %key_index48.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 8
  %174 = ptrtoint ptr %key_index48.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %key_index48.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %conv47.i)
  %cmp49.not.i = icmp ne i32 %175, %conv47.i
  br label %if.end52.i

if.end52.i:                                       ; preds = %land.lhs.true.i, %if.then40.i.if.end52.i_crit_edge
  %tobool57.not.i = phi i1 [ false, %if.then40.i.if.end52.i_crit_edge ], [ %cmp49.not.i, %land.lhs.true.i ]
  %bdecrypted.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %prtnframe.2, i32 0, i32 6, i32 16
  %176 = ptrtoint ptr %bdecrypted.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %bdecrypted.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool54.not.i = icmp eq i8 %177, 0
  %brmerge.i = select i1 %tobool54.not.i, i1 true, i1 %tobool57.not.i
  br i1 %brmerge.i, label %if.end52.i.if.end.i.i124_crit_edge, label %if.then58.i

if.end52.i.if.end.i.i124_crit_edge:               ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i124

if.then58.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtw_handle_tkip_mic_err(ptr noundef %padapter, i8 noundef zeroext %171) #7
  br label %if.end.i.i124

if.else64.i:                                      ; preds = %if.end13.i
  %bcheck_grpkey.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 30
  %178 = ptrtoint ptr %bcheck_grpkey.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %bcheck_grpkey.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool65.not.i = icmp eq i8 %179, 0
  br i1 %tobool65.not.i, label %land.lhs.true66.i, label %if.else64.i.if.end.i.i124_crit_edge

if.else64.i.if.end.i.i124_crit_edge:              ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i124

land.lhs.true66.i:                                ; preds = %if.else64.i
  %180 = ptrtoint ptr %ra.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %ra.i, align 1
  %182 = and i8 %181, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool70.not.i = icmp eq i8 %182, 0
  br i1 %tobool70.not.i, label %land.lhs.true66.i.if.end.i.i124_crit_edge, label %if.then71.i

land.lhs.true66.i.if.end.i.i124_crit_edge:        ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i124

if.then71.i:                                      ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #9
  %183 = ptrtoint ptr %bcheck_grpkey.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 1, ptr %bcheck_grpkey.i, align 1
  br label %if.end.i.i124

if.end.i.i124:                                    ; preds = %if.then71.i, %land.lhs.true66.i.if.end.i.i124_crit_edge, %if.else64.i.if.end.i.i124_crit_edge, %if.then58.i, %if.end52.i.if.end.i.i124_crit_edge, %if.then.i113.if.end.i.i124_crit_edge
  %cmp64 = phi i1 [ false, %if.then.i113.if.end.i.i124_crit_edge ], [ true, %if.end52.i.if.end.i.i124_crit_edge ], [ true, %if.then58.i ], [ false, %if.else64.i.if.end.i.i124_crit_edge ], [ false, %land.lhs.true66.i.if.end.i.i124_crit_edge ], [ false, %if.then71.i ]
  %rx_tail.i.i120 = getelementptr inbounds %struct.recv_frame_hdr, ptr %prtnframe.2, i32 0, i32 10
  %184 = ptrtoint ptr %rx_tail.i.i120 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %rx_tail.i.i120, align 4
  %add.ptr.i.i121 = getelementptr i8, ptr %185, i32 -8
  store ptr %add.ptr.i.i121, ptr %rx_tail.i.i120, align 4
  %rx_data.i.i122 = getelementptr inbounds %struct.recv_frame_hdr, ptr %prtnframe.2, i32 0, i32 9
  %186 = ptrtoint ptr %rx_data.i.i122 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %rx_data.i.i122, align 4
  %cmp2.i.i123 = icmp ult ptr %add.ptr.i.i121, %187
  br i1 %cmp2.i.i123, label %if.then3.i.i125, label %if.end6.i.i128

if.then3.i.i125:                                  ; preds = %if.end.i.i124
  call void @__sanitizer_cov_trace_pc() #9
  %188 = ptrtoint ptr %rx_tail.i.i120 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %185, ptr %rx_tail.i.i120, align 4
  br label %recvframe_chkmic.exit

if.end6.i.i128:                                   ; preds = %if.end.i.i124
  call void @__sanitizer_cov_trace_pc() #9
  %len.i.i126 = getelementptr inbounds %struct.recv_frame_hdr, ptr %prtnframe.2, i32 0, i32 7
  %189 = ptrtoint ptr %len.i.i126 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %len.i.i126, align 4
  %sub.i.i127 = add i32 %190, -8
  store i32 %sub.i.i127, ptr %len.i.i126, align 4
  br label %recvframe_chkmic.exit

recvframe_chkmic.exit:                            ; preds = %if.end6.i.i128, %if.then3.i.i125
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %miccode.i) #7
  br i1 %cmp64, label %recvframe_chkmic.exit.if.then66_crit_edge, label %recvframe_chkmic.exit.if.end69_crit_edge

recvframe_chkmic.exit.if.end69_crit_edge:         ; preds = %recvframe_chkmic.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

recvframe_chkmic.exit.if.then66_crit_edge:        ; preds = %recvframe_chkmic.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then66

if.then66:                                        ; preds = %recvframe_chkmic.exit.if.then66_crit_edge, %recvframe_chkmic.exit.thread
  %call67 = call i32 @rtw_free_recvframe(ptr noundef nonnull %prtnframe.2, ptr noundef %free_recv_queue)
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %recvframe_chkmic.exit.if.end69_crit_edge, %recvframe_chkmic.exit.thread163, %land.lhs.true58.if.end69_crit_edge, %if.end56.if.end69_crit_edge, %if.end56.thread, %if.end39.thread171.if.end69_crit_edge
  %prtnframe.3 = phi ptr [ null, %if.then66 ], [ %prtnframe.2, %recvframe_chkmic.exit.if.end69_crit_edge ], [ %prtnframe.2, %land.lhs.true58.if.end69_crit_edge ], [ null, %if.end56.if.end69_crit_edge ], [ null, %if.end56.thread ], [ %prtnframe.2, %recvframe_chkmic.exit.thread163 ], [ null, %if.end39.thread171.if.end69_crit_edge ]
  ret ptr %prtnframe.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_wep_decrypt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_tkip_decrypt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_aes_decrypt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_bcmc_stainfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_seccalctkipmic(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_handle_tkip_mic_err(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @traffic_check_for_leave_lps(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @wlanhdr_to_ethhdr(ptr noundef %precvframe) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %cmp.i = icmp eq ptr %precvframe, null
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %get_recvframe_data.exit.thread

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

get_recvframe_data.exit.thread:                   ; preds = %entry
  %rx_data.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 9
  %2 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_data.i, align 4
  %encrypt34 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 17
  %4 = ptrtoint ptr %encrypt34 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %encrypt34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not35 = icmp eq i8 %5, 0
  br i1 %tobool.not35, label %get_recvframe_data.exit.thread.if.end_crit_edge, label %if.end.i6

get_recvframe_data.exit.thread.if.end_crit_edge:  ; preds = %get_recvframe_data.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i6:                                        ; preds = %get_recvframe_data.exit.thread
  %icv_len39 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 19
  %6 = ptrtoint ptr %icv_len39 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %icv_len39, align 1
  %conv40 = zext i8 %7 to i32
  %rx_tail.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 10
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
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %rx_tail.i, align 4
  br label %if.end

if.end6.i:                                        ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #9
  %len.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 7
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %14, %conv40
  store i32 %sub.i, ptr %len.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end6.i, %if.then3.i, %get_recvframe_data.exit.thread.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i37 = phi ptr [ %3, %get_recvframe_data.exit.thread.if.end_crit_edge ], [ %3, %if.then3.i ], [ %3, %if.end6.i ], [ null, %entry.if.end_crit_edge ]
  %hdrlen = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 4
  %15 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hdrlen, align 1
  %conv3 = zext i8 %16 to i32
  %add.ptr = getelementptr i8, ptr %retval.0.i37, i32 %conv3
  %iv_len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 18
  %17 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %iv_len, align 4
  %conv4 = zext i8 %18 to i32
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %conv4
  %add.ptr12 = getelementptr i8, ptr %add.ptr5, i32 6
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr5, ptr noundef nonnull dereferenceable(6) @rfc1042_header, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool14.not = icmp eq i32 %bcmp, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %bcmp1 = tail call i32 @bcmp(ptr noundef dereferenceable(2) %add.ptr12, ptr noundef nonnull dereferenceable(2) @SNAP_ETH_TYPE_IPX, i32 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1)
  %tobool16.not = icmp eq i32 %bcmp1, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true17

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true17:                                  ; preds = %land.lhs.true
  %bcmp3 = tail call i32 @bcmp(ptr noundef dereferenceable(2) %add.ptr12, ptr noundef nonnull dereferenceable(2) @SNAP_ETH_TYPE_APPLETALK_AARP, i32 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp3)
  %tobool19.not = icmp eq i32 %bcmp3, 0
  br i1 %tobool19.not, label %land.lhs.true17.if.end23_crit_edge, label %land.lhs.true17.if.end23.thread_crit_edge

land.lhs.true17.if.end23.thread_crit_edge:        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.thread

land.lhs.true17.if.end23_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true17.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %bcmp2 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr5, ptr noundef nonnull dereferenceable(6) @bridge_tunnel_header, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp2)
  %tobool21.not = icmp ne i32 %bcmp2, 0
  %spec.select62 = select i1 %tobool21.not, i32 0, i32 6
  br label %if.end23.thread

if.end23.thread:                                  ; preds = %if.end23, %land.lhs.true17.if.end23.thread_crit_edge
  %tobool29.not46 = phi i1 [ %tobool21.not, %if.end23 ], [ false, %land.lhs.true17.if.end23.thread_crit_edge ]
  %19 = phi i32 [ %spec.select62, %if.end23 ], [ 6, %land.lhs.true17.if.end23.thread_crit_edge ]
  %add48 = add nuw nsw i32 %conv4, %conv3
  %add30 = add nuw nsw i32 %add48, %19
  %len31 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 7
  %20 = ptrtoint ptr %len31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len31, align 4
  %sub = sub i32 %21, %add30
  %conv32 = trunc i32 %sub to i16
  %add.ptr33 = getelementptr i8, ptr %retval.0.i37, i32 %add30
  %22 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %be_tmp.0.copyload = load i16, ptr %add.ptr33, align 1
  %eth_type34 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 22
  %23 = ptrtoint ptr %eth_type34 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %be_tmp.0.copyload, ptr %eth_type34, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %25, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.else46, label %if.then37

if.then37:                                        ; preds = %if.end23.thread
  %26 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -121, ptr %add.ptr33, align 1
  %add.ptr39 = getelementptr i8, ptr %add.ptr33, i32 1
  %27 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 18, ptr %add.ptr39, align 1
  %sub42 = add nsw i32 %add30, -36
  br i1 %cmp.i, label %if.then37.get_rxmem.exit_crit_edge, label %if.end.i12

if.then37.get_rxmem.exit_crit_edge:               ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_rxmem.exit

if.end.i12:                                       ; preds = %if.then37
  %rx_data.i8 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 9
  %28 = ptrtoint ptr %rx_data.i8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_data.i8, align 4
  %add.ptr.i9 = getelementptr i8, ptr %29, i32 %sub42
  store ptr %add.ptr.i9, ptr %rx_data.i8, align 4
  %rx_tail.i10 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 10
  %30 = ptrtoint ptr %rx_tail.i10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_tail.i10, align 4
  %cmp2.i11 = icmp ugt ptr %add.ptr.i9, %31
  br i1 %cmp2.i11, label %if.then3.i13, label %if.end6.i16

if.then3.i13:                                     ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %rx_data.i8 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %rx_data.i8, align 4
  br label %if.end.i19

if.end6.i16:                                      ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %len31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len31, align 4
  %sub.i15 = sub i32 %34, %sub42
  store i32 %sub.i15, ptr %len31, align 4
  br label %if.end.i19

if.end.i19:                                       ; preds = %if.end6.i16, %if.then3.i13
  %retval.0.i17.ph = phi ptr [ %add.ptr.i9, %if.end6.i16 ], [ null, %if.then3.i13 ]
  %rx_head.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 8
  %35 = ptrtoint ptr %rx_head.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_head.i, align 4
  br label %get_rxmem.exit

get_rxmem.exit:                                   ; preds = %if.end.i19, %if.then37.get_rxmem.exit_crit_edge
  %retval.0.i1751 = phi ptr [ %retval.0.i17.ph, %if.end.i19 ], [ null, %if.then37.get_rxmem.exit_crit_edge ]
  %retval.0.i20 = phi ptr [ %36, %if.end.i19 ], [ null, %if.then37.get_rxmem.exit_crit_edge ]
  %37 = call ptr @memcpy(ptr %retval.0.i1751, ptr %retval.0.i20, i32 24)
  %add.ptr45 = getelementptr i8, ptr %retval.0.i1751, i32 24
  %dst52 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 23
  %38 = call ptr @memcpy(ptr %add.ptr45, ptr %dst52, i32 6)
  %add.ptr5453 = getelementptr i8, ptr %retval.0.i1751, i32 30
  %src54 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 24
  %39 = call ptr @memcpy(ptr %add.ptr5453, ptr %src54, i32 6)
  br i1 %tobool29.not46, label %get_rxmem.exit.if.then57_crit_edge, label %get_rxmem.exit.if.end59_crit_edge

get_rxmem.exit.if.end59_crit_edge:                ; preds = %get_rxmem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

get_rxmem.exit.if.then57_crit_edge:               ; preds = %get_rxmem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

if.else46:                                        ; preds = %if.end23.thread
  %sub47 = select i1 %tobool29.not46, i32 -14, i32 -12
  %add51 = add nsw i32 %sub47, %add30
  br i1 %cmp.i, label %if.end53, label %if.end.i26

if.end.i26:                                       ; preds = %if.else46
  %rx_data.i22 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 9
  %40 = ptrtoint ptr %rx_data.i22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_data.i22, align 4
  %add.ptr.i23 = getelementptr i8, ptr %41, i32 %add51
  store ptr %add.ptr.i23, ptr %rx_data.i22, align 4
  %rx_tail.i24 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 10
  %42 = ptrtoint ptr %rx_tail.i24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_tail.i24, align 4
  %cmp2.i25 = icmp ugt ptr %add.ptr.i23, %43
  br i1 %cmp2.i25, label %if.then3.i27, label %if.end6.i30

if.then3.i27:                                     ; preds = %if.end.i26
  %44 = ptrtoint ptr %rx_data.i22 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %rx_data.i22, align 4
  %dst56 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 23
  %45 = call ptr @memcpy(ptr null, ptr %dst56, i32 6)
  %src57 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 24
  %46 = call ptr @memcpy(ptr inttoptr (i32 6 to ptr), ptr %src57, i32 6)
  br i1 %tobool29.not46, label %if.then3.i27.if.then57_crit_edge, label %if.then3.i27.if.end59_crit_edge

if.then3.i27.if.end59_crit_edge:                  ; preds = %if.then3.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then3.i27.if.then57_crit_edge:                 ; preds = %if.then3.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

if.end6.i30:                                      ; preds = %if.end.i26
  %sub.i29 = sub i32 %21, %add51
  %47 = ptrtoint ptr %len31 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub.i29, ptr %len31, align 4
  %dst58 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 23
  %48 = call ptr @memcpy(ptr %add.ptr.i23, ptr %dst58, i32 6)
  %add.ptr5459 = getelementptr i8, ptr %add.ptr.i23, i32 6
  %src60 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 24
  %49 = call ptr @memcpy(ptr %add.ptr5459, ptr %src60, i32 6)
  br i1 %tobool29.not46, label %if.end6.i30.if.then57_crit_edge, label %if.end6.i30.if.end59_crit_edge

if.end6.i30.if.end59_crit_edge:                   ; preds = %if.end6.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.end6.i30.if.then57_crit_edge:                  ; preds = %if.end6.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

if.end53:                                         ; preds = %if.else46
  %50 = call ptr @memcpy(ptr null, ptr inttoptr (i32 54 to ptr), i32 6)
  %51 = call ptr @memcpy(ptr inttoptr (i32 6 to ptr), ptr inttoptr (i32 60 to ptr), i32 6)
  br i1 %tobool29.not46, label %if.end53.if.then57_crit_edge, label %if.end53.if.end59_crit_edge

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.end53.if.then57_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

if.then57:                                        ; preds = %if.end53.if.then57_crit_edge, %if.end6.i30.if.then57_crit_edge, %if.then3.i27.if.then57_crit_edge, %get_rxmem.exit.if.then57_crit_edge
  %ptr.055 = phi ptr [ %add.ptr45, %get_rxmem.exit.if.then57_crit_edge ], [ null, %if.end53.if.then57_crit_edge ], [ null, %if.then3.i27.if.then57_crit_edge ], [ %add.ptr.i23, %if.end6.i30.if.then57_crit_edge ]
  %add.ptr58 = getelementptr i8, ptr %ptr.055, i32 12
  %52 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %conv32, ptr %add.ptr58, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end53.if.end59_crit_edge, %if.end6.i30.if.end59_crit_edge, %if.then3.i27.if.end59_crit_edge, %get_rxmem.exit.if.end59_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_hal_get_def_var(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_zmalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_BIP_verify(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @issue_action_SA_Query(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgt_dispatcher(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_xmitframe_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_beacon(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @issue_nulldata_in_interrupt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @issue_deauth(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_sta_xmit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_sta_to_xmit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xmit_delivery_enabled_frames(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @issue_qos_nulldata(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_on_cur_ch_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @_rtw_init_sta_recv_priv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/core/rtw_recv.c", i32 23, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @_rtw_init_sta_recv_priv.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/rtl8723bs/core/rtw_recv.c", i32 29, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @_rtw_init_recv_priv.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/core/rtw_recv.c", i32 38, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @_rtw_init_recv_priv.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8723bs/core/rtw_recv.c", i32 41, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @_rtw_init_recv_priv.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8723bs/core/rtw_recv.c", i32 43, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @_rtw_init_recv_priv.__key.8, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8723bs/core/rtw_recv.c", i32 45, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @_rtw_init_recv_priv.__key.10, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8723bs/core/rtw_recv.c", i32 81, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @SNAP_ETH_TYPE_IPX, !22, !"SNAP_ETH_TYPE_IPX", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8723bs/core/rtw_recv.c", i32 14, i32 11}
!23 = !{ptr @SNAP_ETH_TYPE_APPLETALK_AARP, !24, !"SNAP_ETH_TYPE_APPLETALK_AARP", i1 false, i1 false}
!24 = !{!"../drivers/staging/rtl8723bs/core/rtw_recv.c", i32 15, i32 11}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/rtl8723bs/core/rtw_recv.c", i32 681, i32 31}
!27 = !{ptr @ap2sta_data_frame.send_issue_deauth_time, !28, !"send_issue_deauth_time", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8723bs/core/rtw_recv.c", i32 830, i32 26}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
