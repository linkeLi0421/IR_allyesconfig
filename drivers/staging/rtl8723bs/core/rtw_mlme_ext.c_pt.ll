; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlme_handler = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.ht_priv = type { i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fwevent = type { i32, ptr }
%struct.rt_channel_plan_map = type { i8 }
%struct.rt_channel_plan_2g = type { [14 x i8], i8 }
%struct.p2p_oper_class_map = type { i32, i8, i8, i8, i8, i32 }
%struct.rt_channel_info = type { i8, i32 }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.spinlock, %struct.registry_priv, %struct.eeprom_priv, ptr, i32, ptr, i32, %struct.hal_ops, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, %struct.rtw_wdev_priv, i32, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, i8, i32, i32, [6 x i8], ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.timer_list, %struct.atomic_t, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect_t, %struct.timer_list, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i8, i32 }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.wlan_bcn_info }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.ndis_802_11_conf, i32, [16 x i8], %struct.wlan_phy_info, i32, [768 x i8] }
%struct.ndis_802_11_conf = type { i32, i32, i32, i32 }
%struct.wlan_phy_info = type { i8, i8, i8, i8 }
%struct.wlan_bcn_info = type { i8, i32, i32, i32, i16, i8 }
%struct.qos_priv = type { i32 }
%struct.rt_link_detect_t = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.mlme_ext_priv = type { ptr, i8, %struct.atomic_t, i16, i16, i64, i64, i8, i8, i8, i8, i8, [14 x %struct.rt_channel_info], %struct.p2p_channels, [13 x i8], [13 x i8], [16 x i8], %struct.ss_res, %struct.mlme_ext_info, %struct.timer_list, %struct.timer_list, %struct.timer_list, i16, i32, i8, i8, i32, i64, i8, [9 x i32], [9 x i32], i32, i8, i8, i8, i8, i8, i16, i8 }
%struct.p2p_channels = type { [10 x %struct.p2p_reg_class], i32 }
%struct.p2p_reg_class = type { i8, [20 x i8], i32 }
%struct.ss_res = type { i32, i32, i32, i32, i8, i8, [9 x %struct.ndis_802_11_ssid], [51 x %struct.rtw_ieee80211_channel] }
%struct.rtw_ieee80211_channel = type { i16, i32 }
%struct.mlme_ext_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i8], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ADDBA_request, %struct.WMM_para_element, %struct.HT_caps_element, %struct.HT_info_element, %struct.wlan_bssid_ex, [32 x %struct.FW_Sta_Info] }
%struct.ADDBA_request = type <{ i8, i16, i16, i16 }>
%struct.WMM_para_element = type { i8, i8, [4 x %struct.AC_param] }
%struct.AC_param = type { i8, i8, i16 }
%struct.HT_caps_element = type { %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i16, i8, [16 x i8], i16, i16, i8 }
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
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, %struct.__queue, i8, i8, i8, i8, i8, i16, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.102, i32 }
%union.anon.102 = type { ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.signal_stat = type { i8, i8, i32, i32 }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, i8, i8, i32, i32, i32, [32 x ptr], i16, i16, i16, %struct.wlan_acl_pool }
%struct.wlan_acl_pool = type { i32, i32, [16 x %struct.rtw_wlan_acl_node], %struct.__queue }
%struct.rtw_wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i8, i32, i32, [5 x %union.Keytype], [5 x %union.Keytype], [5 x %union.Keytype], %union.pn48, %union.pn48, i32, [6 x %union.Keytype], %union.pn48, %union.pn48, i32, i32, i32, i32, i32, i32, [512 x i8], i32, %struct.arc4_ctx, %struct.arc4_ctx, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.ndis_802_11_wep, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.rt_pmkid_list], i8, i8 }
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
%struct.recv_frame_hdr = type { %struct.list_head, ptr, ptr, ptr, i8, i32, %struct.rx_pkt_attrib, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rx_pkt_attrib = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, [2 x i32], %struct.phy_info }
%struct.phy_info = type { i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i16], [4 x i16], i8, i8, i8, i8, [4 x i8], [4 x i8], i8, i8 }
%struct.dvobj_priv = type { ptr, i32, %struct.debug_priv, %struct.spinlock, [32 x i32], %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i32, ptr, %struct.cam_ctl_t, [32 x %struct.cam_entry_cache], [2 x i32], [4 x i32], [8 x i8], i8, %struct.atomic_t, %struct.atomic_t, %struct.pwrctrl_priv, %struct.rtw_traffic_statistics, %struct.sdio_data }
%struct.debug_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cam_ctl_t = type { %struct.spinlock, i64 }
%struct.cam_entry_cache = type { i16, [6 x i8], [16 x i8] }
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.work_struct, i8, %struct.work_struct, %struct.timer_list, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.timer_list, ptr, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i32] }
%struct.rtw_traffic_statistics = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32 }
%struct.sdio_data = type { i8, i8, i8, i32, ptr, ptr }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8, ptr, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %union.Keytype, %union.Keytype, i8 }
%struct.rt_channel_plan = type { [14 x i8], i8 }
%struct.cmd_obj = type { ptr, i16, i8, ptr, i32, ptr, i32, ptr, %struct.list_head }
%struct.rtw_ieee802_11_elems = type { ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8, ptr, i8 }
%struct.ndis_80211_var_ie = type { i8, i8, [0 x i8] }
%struct.sitesurvey_parm = type { i32, i8, i8, [9 x %struct.ndis_802_11_ssid], [51 x %struct.rtw_ieee80211_channel] }
%struct.setkey_parm = type { i8, i8, i8, i8, [16 x i8] }
%struct.set_stakey_parm = type { [6 x i8], i8, i8, [16 x i8] }
%struct.addBaReq_parm = type { i32, [6 x i8] }
%struct.set_ch_parm = type { i8, i8, i8 }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.RunInThread_param = type { ptr, ptr }

@RTW_WPA_OUI = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\01", [28 x i8] zeroinitializer }, align 32
@WMM_OUI = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\02", [28 x i8] zeroinitializer }, align 32
@WPS_OUI = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\04", [28 x i8] zeroinitializer }, align 32
@P2P_OUI = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"Po\9A\09", [28 x i8] zeroinitializer }, align 32
@WFD_OUI = dso_local global { [4 x i8], [28 x i8] } { [4 x i8] c"Po\9A\0A", [28 x i8] zeroinitializer }, align 32
@WMM_INFO_OUI = dso_local global { [6 x i8], [26 x i8] } { [6 x i8] c"\00P\F2\02\00\01", [26 x i8] zeroinitializer }, align 32
@WMM_PARA_OUI = dso_local global { [6 x i8], [26 x i8] } { [6 x i8] c"\00P\F2\02\01\01", [26 x i8] zeroinitializer }, align 32
@__const.init_mlme_default_rate_set.mixed_datarate = private unnamed_addr constant [13 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\FF", align 1
@__const.init_mlme_default_rate_set.mixed_basicrate = private unnamed_addr constant [13 x i8] c"\00\01\02\03\04\06\08\FF\00\00\00\00\00", align 1
@__const.init_mlme_default_rate_set.supported_mcs_set = private unnamed_addr constant <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 -1, i8 -1, i8 0, i8 0, i8 1, [11 x i8] zeroinitializer }>, align 1
@mlme_sta_tbl = internal global { [15 x %struct.mlme_handler], [44 x i8] } { [15 x %struct.mlme_handler] [%struct.mlme_handler { i32 0, ptr @.str.24, ptr @OnAssocReq }, %struct.mlme_handler { i32 16, ptr @.str.25, ptr @OnAssocRsp }, %struct.mlme_handler { i32 32, ptr @.str.26, ptr @OnAssocReq }, %struct.mlme_handler { i32 48, ptr @.str.27, ptr @OnAssocRsp }, %struct.mlme_handler { i32 64, ptr @.str.28, ptr @OnProbeReq }, %struct.mlme_handler { i32 80, ptr @.str.29, ptr @OnProbeRsp }, %struct.mlme_handler { i32 0, ptr @.str.30, ptr @DoReserved }, %struct.mlme_handler { i32 0, ptr @.str.30, ptr @DoReserved }, %struct.mlme_handler { i32 128, ptr @.str.1, ptr @OnBeacon }, %struct.mlme_handler { i32 144, ptr @.str.31, ptr @OnAtim }, %struct.mlme_handler { i32 160, ptr @.str.9, ptr @OnDisassoc }, %struct.mlme_handler { i32 176, ptr @.str.32, ptr @OnAuthClient }, %struct.mlme_handler { i32 192, ptr @.str.6, ptr @OnDeAuth }, %struct.mlme_handler { i32 208, ptr @.str.33, ptr @OnAction }, %struct.mlme_handler { i32 224, ptr @.str.34, ptr @OnAction }], [44 x i8] zeroinitializer }, align 32
@OnBeacon.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8723bs\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OnBeacon\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/staging/rtl8723bs/core/rtw_mlme_ext.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ap has changed, disconnect now\0A \00", [63 x i8] zeroinitializer }, align 32
@OnAuth.stat = internal global { %struct.sta_info, [784 x i8] } zeroinitializer, align 32
@OnAuthClient.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OnAuthClient\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"auth success, start assoc\0A\00", [37 x i8] zeroinitializer }, align 32
@__const.OnAssocReq.WMM_IE = private unnamed_addr constant [6 x i8] c"\00P\F2\02\00\01", align 1
@OnDeAuth.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 1, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OnDeAuth\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ap recv deauth reason code(%d) sta:%pM\0A\00", [56 x i8] zeroinitializer }, align 32
@OnDeAuth.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 1, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"sta recv deauth reason code(%d) sta:%pM, ignore = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@OnDisassoc.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 1, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OnDisassoc\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ap recv disassoc reason code(%d) sta:%pM\0A\00", [54 x i8] zeroinitializer }, align 32
@OnDisassoc.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 1, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sta recv disassoc reason code(%d) sta:%pM\0A\00", [53 x i8] zeroinitializer }, align 32
@dump_mgntframe_and_wait_ack.seq_no = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(%s) remainder_ielen > MAX_IE_SZ\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.issue_probersp = private unnamed_addr constant [15 x i8] c"issue_probersp\00", align 1
@__const.issue_asocrsp.WMM_PARA_IE = private unnamed_addr constant [6 x i8] c"\00P\F2\02\01\01", align 1
@REALTEK_96B_IE = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\00\E0L\02\01 ", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@start_clnt_auth.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 4, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"start_clnt_auth\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"start auth\0A\00", [20 x i8] zeroinitializer }, align 32
@null_addr = internal global { [6 x i8], [26 x i8] } zeroinitializer, align 32
@linked_status_chk.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 4, i8 -14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"linked_status_chk\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(%s) disconnect or roaming\0A\00", [34 x i8] zeroinitializer }, align 32
@setkey_hdl.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 5, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"setkey_hdl\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"set group key camid:%d, addr:%pM, kid:%d, type:%s\0A\00", [45 x i8] zeroinitializer }, align 32
@set_stakey_hdl.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 5, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set_stakey_hdl\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s sta:%pM not found\0A\00", [42 x i8] zeroinitializer }, align 32
@set_stakey_hdl.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 5, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"clear key for addr:%pM, camid:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@set_stakey_hdl.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.22, i8 5, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"set pairwise key camid:%d, addr:%pM, kid:%d, type:%s\0A\00", [42 x i8] zeroinitializer }, align 32
@wlanevents = internal constant { [26 x %struct.fwevent], [48 x i8] } { [26 x %struct.fwevent] [%struct.fwevent { i32 0, ptr @rtw_dummy_event_callback }, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent { i32 0, ptr @rtw_survey_event_callback }, %struct.fwevent { i32 4, ptr @rtw_surveydone_event_callback }, %struct.fwevent { i32 0, ptr @rtw_joinbss_event_callback }, %struct.fwevent { i32 12, ptr @rtw_stassoc_event_callback }, %struct.fwevent { i32 12, ptr @rtw_stadel_event_callback }, %struct.fwevent { i32 0, ptr @rtw_atimdone_event_callback }, %struct.fwevent { i32 0, ptr @rtw_dummy_event_callback }, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent { i32 0, ptr @rtw_fwdbg_event_callback }, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent zeroinitializer, %struct.fwevent { i32 0, ptr @rtw_cpwm_event_callback }, %struct.fwevent zeroinitializer, %struct.fwevent { i32 0, ptr @rtw_wmm_event_callback }], [48 x i8] zeroinitializer }, align 32
@RTW_ChannelPlanMap = internal constant { [88 x %struct.rt_channel_plan_map], [40 x i8] } { [88 x %struct.rt_channel_plan_map] [%struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map { i8 1 }, %struct.rt_channel_plan_map { i8 1 }, %struct.rt_channel_plan_map { i8 1 }, %struct.rt_channel_plan_map { i8 3 }, %struct.rt_channel_plan_map { i8 3 }, %struct.rt_channel_plan_map { i8 1 }, %struct.rt_channel_plan_map { i8 3 }, %struct.rt_channel_plan_map { i8 3 }, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map { i8 1 }, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map { i8 1 }, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map { i8 1 }, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map { i8 3 }, %struct.rt_channel_plan_map { i8 6 }, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map { i8 6 }, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map { i8 1 }, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map { i8 3 }, %struct.rt_channel_plan_map { i8 4 }, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map { i8 3 }, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map { i8 3 }, %struct.rt_channel_plan_map { i8 3 }, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map { i8 5 }, %struct.rt_channel_plan_map { i8 1 }, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map { i8 2 }, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer, %struct.rt_channel_plan_map zeroinitializer], [40 x i8] zeroinitializer }, align 32
@RTW_ChannelPlan2G = internal constant { <{ %struct.rt_channel_plan_2g, %struct.rt_channel_plan_2g, %struct.rt_channel_plan_2g, %struct.rt_channel_plan_2g, { <{ i8, i8, i8, i8, [10 x i8] }>, i8 }, %struct.rt_channel_plan_2g, %struct.rt_channel_plan_2g }>, [55 x i8] } { <{ %struct.rt_channel_plan_2g, %struct.rt_channel_plan_2g, %struct.rt_channel_plan_2g, %struct.rt_channel_plan_2g, { <{ i8, i8, i8, i8, [10 x i8] }>, i8 }, %struct.rt_channel_plan_2g, %struct.rt_channel_plan_2g }> <{ %struct.rt_channel_plan_2g { [14 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\00", i8 13 }, %struct.rt_channel_plan_2g { [14 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\00", i8 13 }, %struct.rt_channel_plan_2g { [14 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\00\00\00", i8 11 }, %struct.rt_channel_plan_2g { [14 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E", i8 14 }, { <{ i8, i8, i8, i8, [10 x i8] }>, i8 } { <{ i8, i8, i8, i8, [10 x i8] }> <{ i8 10, i8 11, i8 12, i8 13, [10 x i8] zeroinitializer }>, i8 4 }, %struct.rt_channel_plan_2g { [14 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E", i8 14 }, %struct.rt_channel_plan_2g zeroinitializer }>, [55 x i8] zeroinitializer }, align 32
@init_channel_list.op_class = internal constant { [10 x %struct.p2p_oper_class_map], [40 x i8] } { [10 x %struct.p2p_oper_class_map] [%struct.p2p_oper_class_map { i32 0, i8 81, i8 1, i8 13, i8 1, i32 0 }, %struct.p2p_oper_class_map { i32 0, i8 82, i8 14, i8 14, i8 1, i32 0 }, %struct.p2p_oper_class_map { i32 1, i8 115, i8 36, i8 48, i8 4, i32 0 }, %struct.p2p_oper_class_map { i32 1, i8 116, i8 36, i8 44, i8 8, i32 1 }, %struct.p2p_oper_class_map { i32 1, i8 117, i8 40, i8 48, i8 8, i32 2 }, %struct.p2p_oper_class_map { i32 1, i8 124, i8 -107, i8 -95, i8 4, i32 0 }, %struct.p2p_oper_class_map { i32 1, i8 125, i8 -107, i8 -87, i8 4, i32 0 }, %struct.p2p_oper_class_map { i32 1, i8 126, i8 -107, i8 -99, i8 8, i32 1 }, %struct.p2p_oper_class_map { i32 1, i8 127, i8 -103, i8 -95, i8 8, i32 2 }, %struct.p2p_oper_class_map { i32 -1, i8 0, i8 0, i8 0, i8 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OnAssocReq\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OnAssocRsp\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OnReAssocReq\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OnReAssocRsp\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OnProbeReq\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OnProbeRsp\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DoReserved\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OnATIM\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OnAuth\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OnAction\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OnActionNoAck\00", [18 x i8] zeroinitializer }, align 32
@__const._mgt_dispatcher.bc_addr = private unnamed_addr constant [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s(token:%u)\00", [19 x i8] zeroinitializer }, align 32
@rtw_scan_ch_decision.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 5, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtw_scan_ch_decision\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(%s) out_num:%u not enough\0A\00", [34 x i8] zeroinitializer }, align 32
@rtw_scan_ch_decision.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 5, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@switch.table.OnAuthClient = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 4, i32 16], [20 x i8] zeroinitializer }, align 32
@switch.table.OnProbeReq = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 10, i32 16, i32 10], [20 x i8] zeroinitializer }, align 32
@switch.table.OnAssocRsp = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 4, i32 16], [20 x i8] zeroinitializer }, align 32
@switch.table.issue_action_BA = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 512, i16 1024, i16 2048], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 10, i64 65]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.52 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 4, i64 8, i64 11, i64 13]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 768]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 3328]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 16, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 80, i64 128]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 48]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 8, i64 42, i64 45, i64 61, i64 221]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 16, i64 512, i64 1536]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 8, i64 45, i64 48, i64 127, i64 221]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 8, i64 45, i64 61, i64 221]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 10, i64 65]
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"RTW_WPA_OUI\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 57, i32 15 }
@___asan_gen_.82 = private unnamed_addr constant [8 x i8] c"WMM_OUI\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 58, i32 15 }
@___asan_gen_.85 = private unnamed_addr constant [8 x i8] c"WPS_OUI\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 59, i32 15 }
@___asan_gen_.88 = private unnamed_addr constant [8 x i8] c"P2P_OUI\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 60, i32 15 }
@___asan_gen_.91 = private unnamed_addr constant [8 x i8] c"WFD_OUI\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 61, i32 15 }
@___asan_gen_.94 = private unnamed_addr constant [13 x i8] c"WMM_INFO_OUI\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 63, i32 15 }
@___asan_gen_.97 = private unnamed_addr constant [13 x i8] c"WMM_PARA_OUI\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 64, i32 15 }
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"mlme_sta_tbl\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 14, i32 28 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 634, i32 6 }
@___asan_gen_.115 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 688, i32 25 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 930, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1489, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1529, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1563, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1585, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"seq_no\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2066, i32 12 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2390, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant [15 x i8] c"REALTEK_96B_IE\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 66, i32 22 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 4223, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [10 x i8] c"null_addr\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 52, i32 11 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 5063, i32 6 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 5674, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 5705, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 5719, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 5726, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [11 x i8] c"wlanevents\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 5823, i32 23 }
@___asan_gen_.187 = private unnamed_addr constant [19 x i8] c"RTW_ChannelPlanMap\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 81, i32 35 }
@___asan_gen_.190 = private unnamed_addr constant [18 x i8] c"RTW_ChannelPlan2G\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 71, i32 34 }
@___asan_gen_.193 = private unnamed_addr constant [9 x i8] c"op_class\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 288, i32 41 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 15, i32 19 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 16, i32 19 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 17, i32 20 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 18, i32 20 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 19, i32 19 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 20, i32 19 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 25, i32 10 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 28, i32 16 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 30, i32 16 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 32, i32 17 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 33, i32 22 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1799, i32 30 }
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.236 = private constant [49 x i8] c"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 5524, i32 5 }
@___asan_gen_.238 = private unnamed_addr constant [26 x i8] c"switch.table.OnAuthClient\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [24 x i8] c"switch.table.OnProbeReq\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [24 x i8] c"switch.table.OnAssocRsp\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [29 x i8] c"switch.table.issue_action_BA\00", align 1
@llvm.compiler.used = appending global [57 x ptr] [ptr @RTW_WPA_OUI, ptr @WMM_OUI, ptr @WPS_OUI, ptr @P2P_OUI, ptr @WFD_OUI, ptr @WMM_INFO_OUI, ptr @WMM_PARA_OUI, ptr @mlme_sta_tbl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @OnAuth.stat, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @dump_mgntframe_and_wait_ack.seq_no, ptr @.str.12, ptr @REALTEK_96B_IE, ptr @.str.13, ptr @.str.14, ptr @null_addr, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @wlanevents, ptr @RTW_ChannelPlanMap, ptr @RTW_ChannelPlan2G, ptr @init_channel_list.op_class, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.49, ptr @.str.50, ptr @switch.table.OnAuthClient, ptr @switch.table.OnProbeReq, ptr @switch.table.OnAssocRsp, ptr @switch.table.issue_action_BA], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RTW_WPA_OUI to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WMM_OUI to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPS_OUI to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @P2P_OUI to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WFD_OUI to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WMM_INFO_OUI to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WMM_PARA_OUI to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlme_sta_tbl to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @OnAuth.stat to i32), i32 3152, i32 3936, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_mgntframe_and_wait_ack.seq_no to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REALTEK_96B_IE to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlanevents to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RTW_ChannelPlanMap to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RTW_ChannelPlan2G to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_channel_list.op_class to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.OnAuthClient to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.OnProbeReq to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.OnAssocRsp to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.issue_action_BA to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_ch_set_search_ch(ptr nocapture noundef readonly %ch_set, i32 noundef %ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.cond_crit_edge ]
  %arrayidx = getelementptr %struct.rt_channel_info, ptr %ch_set, i32 %i.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %ch)
  %cmp5 = icmp eq i32 %conv, %ch
  %or.cond = or i1 %cmp.not, %cmp5
  %inc = add i32 %i.0, 1
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  %conv.le = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %conv.le)
  %cmp10.not = icmp slt i32 %i.0, %conv.le
  %i.0. = select i1 %cmp10.not, i32 %i.0, i32 -1
  ret i32 %i.0.
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_hw_mlme_ext(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %0 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_channel, align 8
  %cur_ch_offset = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 9
  %2 = ptrtoint ptr %cur_ch_offset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cur_ch_offset, align 2
  %cur_bwmode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %4 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cur_bwmode, align 1
  %conv = zext i8 %5 to i16
  tail call void @set_channel_bwmode(ptr noundef %padapter, i8 noundef zeroext %1, i8 noundef zeroext %3, i16 noundef zeroext %conv) #17
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_channel_bwmode(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @init_mlme_default_rate_set(ptr nocapture noundef writeonly %padapter) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %datarate = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 15
  %0 = call ptr @memcpy(ptr %datarate, ptr @__const.init_mlme_default_rate_set.mixed_datarate, i32 13)
  %basicrate = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 14
  %1 = call ptr @memcpy(ptr %basicrate, ptr @__const.init_mlme_default_rate_set.mixed_basicrate, i32 13)
  %default_supported_mcs_set = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16
  %2 = call ptr @memcpy(ptr %default_supported_mcs_set, ptr @__const.init_mlme_default_rate_set.supported_mcs_set, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_mlme_ext_priv(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmeextpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5
  %0 = ptrtoint ptr %mlmeextpriv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %padapter, ptr %mlmeextpriv, align 8
  %mlmext_info.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %event_seq.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event_seq.i, i32 noundef 4) #17
  %1 = ptrtoint ptr %event_seq.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %event_seq.i, align 4
  %mgnt_seq.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 3
  %channel.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 6
  %2 = call ptr @memset(ptr %mgnt_seq.i, i32 0, i32 20)
  %3 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %channel.i, align 1
  %cur_channel.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %5 = ptrtoint ptr %cur_channel.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %cur_channel.i, align 8
  %cur_bwmode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %cur_bwmode.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %cur_bwmode.i, align 1
  %cur_ch_offset.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 9
  %7 = ptrtoint ptr %cur_ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %cur_ch_offset.i, align 2
  %retry.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 26
  %8 = ptrtoint ptr %retry.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %retry.i, align 8
  %wireless_mode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 7
  %9 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wireless_mode.i, align 2
  %cur_wireless_mode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 10
  %11 = ptrtoint ptr %cur_wireless_mode.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %cur_wireless_mode.i, align 1
  %datarate.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 15
  %12 = call ptr @memcpy(ptr %datarate.i.i, ptr @__const.init_mlme_default_rate_set.mixed_datarate, i32 13)
  %basicrate.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 14
  %13 = call ptr @memcpy(ptr %basicrate.i.i, ptr @__const.init_mlme_default_rate_set.mixed_basicrate, i32 13)
  %default_supported_mcs_set.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16
  %14 = call ptr @memcpy(ptr %default_supported_mcs_set.i.i, ptr @__const.init_mlme_default_rate_set.supported_mcs_set, i32 16)
  %tx_rate.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %15 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %tx_rate.i, align 1
  %sitesurvey_res.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17
  %16 = ptrtoint ptr %sitesurvey_res.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sitesurvey_res.i, align 8
  %channel_idx.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 2
  %17 = ptrtoint ptr %channel_idx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %channel_idx.i, align 8
  %bss_cnt.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 1
  %18 = ptrtoint ptr %bss_cnt.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %bss_cnt.i, align 4
  %scan_abort.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 24
  %19 = ptrtoint ptr %scan_abort.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %scan_abort.i, align 4
  %slotTime.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 15
  %20 = call ptr @memset(ptr %mlmext_info.i, i32 0, i32 168)
  %21 = ptrtoint ptr %slotTime.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 9, ptr %slotTime.i, align 1
  %preamble_mode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 16
  %22 = ptrtoint ptr %preamble_mode.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %preamble_mode.i, align 4
  %dialogToken.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 30
  %23 = ptrtoint ptr %dialogToken.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %dialogToken.i, align 2
  %action_public_rxseq.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 37
  %24 = ptrtoint ptr %action_public_rxseq.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %action_public_rxseq.i, align 2
  %action_public_dialog_token.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 36
  %25 = ptrtoint ptr %action_public_dialog_token.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %action_public_dialog_token.i, align 4
  %accept_addba_req = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 51
  %26 = ptrtoint ptr %accept_addba_req to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %accept_addba_req, align 4, !range !151
  %accept_addba_req2 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 31
  %28 = ptrtoint ptr %accept_addba_req2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %accept_addba_req2, align 1
  tail call void @init_mlme_ext_timer(ptr noundef %padapter) #17
  tail call void @init_mlme_ap_info(ptr noundef %padapter) #17
  %ChannelPlan = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 37
  %29 = ptrtoint ptr %ChannelPlan to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ChannelPlan, align 1
  %channel_set = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12
  %31 = call ptr @memset(ptr %channel_set, i32 0, i32 112)
  %conv.i = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 88, i8 %30)
  %cmp.i = icmp ult i8 %30, 88
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %30)
  %cmp3.not.i = icmp eq i8 %30, 127
  %or.cond.i = or i1 %cmp.i, %cmp3.not.i
  br i1 %or.cond.i, label %if.end.i, label %entry.init_channel_set.exit_crit_edge

entry.init_channel_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_channel_set.exit

if.end.i:                                         ; preds = %entry
  %32 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %wireless_mode.i, align 2
  %34 = and i8 %33, 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %if.end.i.init_channel_set.exit_crit_edge, label %if.then6.i

if.end.i.init_channel_set.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_channel_set.exit

if.then6.i:                                       ; preds = %if.end.i
  br i1 %cmp3.not.i, label %if.then6.i.if.end13.i_crit_edge, label %if.else.i

if.then6.i.if.end13.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i

if.else.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr [88 x %struct.rt_channel_plan_map], ptr @RTW_ChannelPlanMap, i32 0, i32 %conv.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i, align 1
  %phi.cast.i = zext i8 %36 to i32
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then6.i.if.end13.i_crit_edge
  %Index2G.0.i = phi i32 [ %phi.cast.i, %if.else.i ], [ 3, %if.then6.i.if.end13.i_crit_edge ]
  %Len.i = getelementptr [7 x %struct.rt_channel_plan_2g], ptr @RTW_ChannelPlan2G, i32 0, i32 %Index2G.0.i, i32 1
  %37 = ptrtoint ptr %Len.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %Len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp20143.not.i = icmp eq i8 %38, 0
  br i1 %cmp20143.not.i, label %if.end13.i.init_channel_set.exit_crit_edge, label %for.body.lr.ph.i

if.end13.i.init_channel_set.exit_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_channel_set.exit

for.body.lr.ph.i:                                 ; preds = %if.end13.i
  %arrayidx18.i = getelementptr [7 x %struct.rt_channel_plan_2g], ptr @RTW_ChannelPlan2G, i32 0, i32 %Index2G.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Index2G.0.i)
  %cmp77.i = icmp eq i32 %Index2G.0.i, 0
  %wide.trip.count.i = zext i8 %38 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %if.end100.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %if.end100.i.for.body.i_crit_edge ]
  %arrayidx25.i = getelementptr [14 x i8], ptr %arrayidx18.i, i32 0, i32 %indvars.iv.i
  %39 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx25.i, align 1
  %arrayidx27.i = getelementptr %struct.rt_channel_info, ptr %channel_set, i32 %indvars.iv.i
  %41 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx27.i, align 4
  %42 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i8 %30, label %lor.lhs.false75.i [
    i8 9, label %for.body.i.if.then34.i_crit_edge
    i8 65, label %for.body.i.if.then34.i_crit_edge25
    i8 10, label %for.body.i.if.then79.i_crit_edge
  ]

for.body.i.if.then79.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then79.i

for.body.i.if.then34.i_crit_edge25:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then34.i

for.body.i.if.then34.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then34.i

if.then34.i:                                      ; preds = %for.body.i.if.then34.i_crit_edge, %for.body.i.if.then34.i_crit_edge25
  %43 = add i8 %40, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %43)
  %44 = icmp ult i8 %43, 11
  br i1 %44, label %if.then48.i, label %if.else51.i

if.then48.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #19
  %ScanType.i = getelementptr %struct.rt_channel_info, ptr %channel_set, i32 %indvars.iv.i, i32 1
  %45 = ptrtoint ptr %ScanType.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %ScanType.i, align 4
  br label %if.end100.i

if.else51.i:                                      ; preds = %if.then34.i
  %46 = add i8 %40, -12
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %46)
  %47 = icmp ult i8 %46, 3
  br i1 %47, label %if.then65.i, label %if.else51.i.if.end100.i_crit_edge

if.else51.i.if.end100.i_crit_edge:                ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end100.i

if.then65.i:                                      ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #19
  %ScanType68.i = getelementptr %struct.rt_channel_info, ptr %channel_set, i32 %indvars.iv.i, i32 1
  %48 = ptrtoint ptr %ScanType68.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %ScanType68.i, align 4
  br label %if.end100.i

lor.lhs.false75.i:                                ; preds = %for.body.i
  br i1 %cmp77.i, label %lor.lhs.false75.i.if.then79.i_crit_edge, label %if.else95.i

lor.lhs.false75.i.if.then79.i_crit_edge:          ; preds = %lor.lhs.false75.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then79.i

if.then79.i:                                      ; preds = %lor.lhs.false75.i.if.then79.i_crit_edge, %for.body.i.if.then79.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %40)
  %cmp84.i = icmp ult i8 %40, 12
  %ScanType89.i = getelementptr %struct.rt_channel_info, ptr %channel_set, i32 %indvars.iv.i, i32 1
  br i1 %cmp84.i, label %if.then86.i, label %if.else90.i

if.then86.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #19
  %49 = ptrtoint ptr %ScanType89.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %ScanType89.i, align 4
  br label %if.end100.i

if.else90.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #19
  %50 = ptrtoint ptr %ScanType89.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %ScanType89.i, align 4
  br label %if.end100.i

if.else95.i:                                      ; preds = %lor.lhs.false75.i
  call void @__sanitizer_cov_trace_pc() #19
  %ScanType98.i = getelementptr %struct.rt_channel_info, ptr %channel_set, i32 %indvars.iv.i, i32 1
  %51 = ptrtoint ptr %ScanType98.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %ScanType98.i, align 4
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.else95.i, %if.else90.i, %if.then86.i, %if.then65.i, %if.else51.i.if.end100.i_crit_edge, %if.then48.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %if.end100.i.init_channel_set.exit_crit_edge, label %if.end100.i.for.body.i_crit_edge

if.end100.i.for.body.i_crit_edge:                 ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

if.end100.i.init_channel_set.exit_crit_edge:      ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_channel_set.exit

init_channel_set.exit:                            ; preds = %if.end100.i.init_channel_set.exit_crit_edge, %if.end13.i.init_channel_set.exit_crit_edge, %if.end.i.init_channel_set.exit_crit_edge, %entry.init_channel_set.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %entry.init_channel_set.exit_crit_edge ], [ 0, %if.end.i.init_channel_set.exit_crit_edge ], [ 0, %if.end13.i.init_channel_set.exit_crit_edge ], [ %38, %if.end100.i.init_channel_set.exit_crit_edge ]
  %max_chan_nums = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 11
  %52 = ptrtoint ptr %max_chan_nums to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %retval.0.i, ptr %max_chan_nums, align 4
  %channel_list = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 13
  tail call fastcc void @init_channel_list(ptr noundef %padapter, ptr noundef %channel_set, i8 noundef zeroext %retval.0.i, ptr noundef %channel_list)
  %last_scan_time = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 23
  %53 = ptrtoint ptr %last_scan_time to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %last_scan_time, align 8
  %chan_scan_time = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 22
  %54 = ptrtoint ptr %chan_scan_time to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 100, ptr %chan_scan_time, align 4
  %mlmeext_init = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 1
  %55 = ptrtoint ptr %mlmeext_init to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %mlmeext_init, align 4
  %active_keep_alive_check = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 38
  %56 = ptrtoint ptr %active_keep_alive_check to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %active_keep_alive_check, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_mlme_ext_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_mlme_ap_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_channel_list(ptr nocapture noundef readonly %padapter, ptr nocapture noundef readonly %channel_set, i8 noundef zeroext %chanset_size, ptr noundef %channel_list) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i8 %chanset_size to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %chanset_size)
  %cmp8.not.i = icmp eq i8 %chanset_size, 0
  %ht_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 37
  %bw_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 38
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %op_class77 = phi ptr [ getelementptr inbounds ([10 x %struct.p2p_oper_class_map], ptr @init_channel_list.op_class, i32 0, i32 0, i32 1), %entry ], [ %op_class, %for.end.for.body_crit_edge ]
  %op.075 = phi i32 [ 0, %entry ], [ %inc43, %for.end.for.body_crit_edge ]
  %cla.074 = phi i32 [ 0, %entry ], [ %cla.1.lcssa, %for.end.for.body_crit_edge ]
  %min_chan = getelementptr [10 x %struct.p2p_oper_class_map], ptr @init_channel_list.op_class, i32 0, i32 %op.075, i32 2
  %0 = ptrtoint ptr %min_chan to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %min_chan, align 1
  %max_chan = getelementptr [10 x %struct.p2p_oper_class_map], ptr @init_channel_list.op_class, i32 0, i32 %op.075, i32 3
  %2 = ptrtoint ptr %max_chan to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_chan, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not67 = icmp ugt i8 %1, %3
  br i1 %cmp.not67, label %for.body.for.end_crit_edge, label %for.body5.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body5.lr.ph:                                  ; preds = %for.body
  %4 = lshr i32 408, %op.075
  %5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not = icmp eq i32 %5, 0
  %6 = and i32 %op.075, 1073741819
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %7 = icmp eq i32 %6, 3
  %inc38 = getelementptr [10 x %struct.p2p_oper_class_map], ptr @init_channel_list.op_class, i32 0, i32 %op.075, i32 4
  %8 = ptrtoint ptr %inc38 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %inc38, align 1
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.body5.lr.ph
  %reg.072 = phi ptr [ null, %for.body5.lr.ph ], [ %reg.2, %for.inc.for.body5_crit_edge ]
  %ch.070 = phi i8 [ %1, %for.body5.lr.ph ], [ %add, %for.inc.for.body5_crit_edge ]
  %cla.168 = phi i32 [ %cla.074, %for.body5.lr.ph ], [ %cla.3, %for.inc.for.body5_crit_edge ]
  br i1 %cmp8.not.i, label %for.body5.for.inc_crit_edge, label %for.body5.for.body.i_crit_edge

for.body5.for.body.i_crit_edge:                   ; preds = %for.body5
  br label %for.body.i

for.body5.for.inc_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.for.inc_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.cond.i.for.inc_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body5.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body5.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rt_channel_info, ptr %channel_set, i32 %i.09.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %ch.070)
  %cmp4.i = icmp eq i8 %11, %ch.070
  br i1 %cmp4.i, label %if.end, label %for.cond.i

if.end:                                           ; preds = %for.body.i
  %12 = ptrtoint ptr %ht_enable to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ht_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp8 = icmp ne i8 %13, 0
  %brmerge = select i1 %cmp8, i1 true, i1 %cmp11.not
  br i1 %brmerge, label %if.end14, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end14:                                         ; preds = %if.end
  %14 = ptrtoint ptr %bw_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bw_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %15)
  %cmp17.not = icmp ult i8 %15, 16
  br i1 %cmp17.not, label %if.end14.if.end26_crit_edge, label %land.lhs.true19

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

land.lhs.true19:                                  ; preds = %if.end14
  %16 = zext i32 %op.075 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %op.075, label %lor.lhs.false [
    i32 8, label %land.lhs.true19.for.inc_crit_edge
    i32 4, label %land.lhs.true19.for.inc_crit_edge78
  ]

land.lhs.true19.for.inc_crit_edge78:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

lor.lhs.false:                                    ; preds = %land.lhs.true19
  br i1 %7, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.end26_crit_edge

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end26:                                         ; preds = %lor.lhs.false.if.end26_crit_edge, %if.end14.if.end26_crit_edge
  %tobool27.not = icmp eq ptr %reg.072, null
  br i1 %tobool27.not, label %if.then28, label %if.end26.if.end33_crit_edge

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx29 = getelementptr [10 x %struct.p2p_reg_class], ptr %channel_list, i32 0, i32 %cla.168
  %inc30 = add i32 %cla.168, 1
  %17 = ptrtoint ptr %op_class77 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %op_class77, align 4
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx29, align 4
  %channels = getelementptr [10 x %struct.p2p_reg_class], ptr %channel_list, i32 0, i32 %cla.168, i32 2
  %20 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %channels, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end26.if.end33_crit_edge
  %cla.2 = phi i32 [ %cla.168, %if.end26.if.end33_crit_edge ], [ %inc30, %if.then28 ]
  %reg.1 = phi ptr [ %reg.072, %if.end26.if.end33_crit_edge ], [ %arrayidx29, %if.then28 ]
  %channels34 = getelementptr inbounds %struct.p2p_reg_class, ptr %reg.1, i32 0, i32 2
  %21 = ptrtoint ptr %channels34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channels34, align 4
  %arrayidx35 = getelementptr %struct.p2p_reg_class, ptr %reg.1, i32 0, i32 1, i32 %22
  %23 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %ch.070, ptr %arrayidx35, align 1
  %24 = load i32, ptr %channels34, align 4
  %inc37 = add i32 %24, 1
  store i32 %inc37, ptr %channels34, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end33, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true19.for.inc_crit_edge, %land.lhs.true19.for.inc_crit_edge78, %if.end.for.inc_crit_edge, %for.cond.i.for.inc_crit_edge, %for.body5.for.inc_crit_edge
  %cla.3 = phi i32 [ %cla.168, %land.lhs.true19.for.inc_crit_edge ], [ %cla.168, %lor.lhs.false.for.inc_crit_edge ], [ %cla.2, %if.end33 ], [ %cla.168, %land.lhs.true19.for.inc_crit_edge78 ], [ %cla.168, %for.body5.for.inc_crit_edge ], [ %cla.168, %if.end.for.inc_crit_edge ], [ %cla.168, %for.cond.i.for.inc_crit_edge ]
  %reg.2 = phi ptr [ %reg.072, %land.lhs.true19.for.inc_crit_edge ], [ %reg.072, %lor.lhs.false.for.inc_crit_edge ], [ %reg.1, %if.end33 ], [ %reg.072, %land.lhs.true19.for.inc_crit_edge78 ], [ %reg.072, %for.body5.for.inc_crit_edge ], [ %reg.072, %if.end.for.inc_crit_edge ], [ %reg.072, %for.cond.i.for.inc_crit_edge ]
  %add = add i8 %9, %ch.070
  %cmp.not = icmp ugt i8 %add, %3
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body5_crit_edge

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body5

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %cla.1.lcssa = phi i32 [ %cla.074, %for.body.for.end_crit_edge ], [ %cla.3, %for.inc.for.end_crit_edge ]
  %inc43 = add nuw nsw i32 %op.075, 1
  %op_class = getelementptr [10 x %struct.p2p_oper_class_map], ptr @init_channel_list.op_class, i32 0, i32 %inc43, i32 1
  %exitcond = icmp eq i32 %inc43, 9
  br i1 %exitcond, label %for.end44, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end44:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %reg_classes = getelementptr inbounds %struct.p2p_channels, ptr %channel_list, i32 0, i32 1
  %25 = ptrtoint ptr %reg_classes to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cla.1.lcssa, ptr %reg_classes, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_mlme_ext_priv(ptr noundef %pmlmeext) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pmlmeext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmlmeext, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %survey_timer = getelementptr inbounds %struct.mlme_ext_priv, ptr %pmlmeext, i32 0, i32 19
  %call = tail call i32 @del_timer_sync(ptr noundef %survey_timer) #17
  %link_timer = getelementptr inbounds %struct.mlme_ext_priv, ptr %pmlmeext, i32 0, i32 20
  %call4 = tail call i32 @del_timer_sync(ptr noundef %link_timer) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mgt_dispatcher(ptr noundef %padapter, ptr noundef %precv_frame) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_data, align 4
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %2 = ptrtoint ptr %1 to i32
  %add = add i32 %2, 10
  %3 = inttoptr i32 %add to ptr
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %3) #17
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %4 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvobj, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 2
  %8 = and i16 %7, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.not = icmp eq i16 %8, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %add2 = add i32 %2, 4
  %9 = inttoptr i32 %add2 to ptr
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %9, ptr noundef dereferenceable(6) %mac_addr.i, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %bcmp83 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %9, ptr noundef nonnull dereferenceable(6) @__const._mgt_dispatcher.bc_addr, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp83)
  %tobool7.not = icmp eq i32 %bcmp83, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %10 = lshr i16 %7, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %10)
  %cmp12 = icmp eq i16 %10, 15
  br i1 %cmp12, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %shr = zext i16 %10 to i32
  %add.ptr = getelementptr %struct.mlme_handler, ptr @mlme_sta_tbl, i32 %shr
  %tobool16.not = icmp eq ptr %call, null
  br i1 %tobool16.not, label %if.end15.if.end33_crit_edge, label %if.then17

if.end15.if.end33_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33

if.then17:                                        ; preds = %if.end15
  %11 = and i16 %7, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp20.not = icmp eq i16 %11, 0
  br i1 %cmp20.not, label %if.then17.if.end29_crit_edge, label %if.then22

if.then17.if.end29_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then22:                                        ; preds = %if.then17
  %seq_num = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 11
  %12 = ptrtoint ptr %seq_num to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %seq_num, align 4
  %RxMgmtFrameSeqNum = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 82
  %14 = ptrtoint ptr %RxMgmtFrameSeqNum to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %RxMgmtFrameSeqNum, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp25 = icmp eq i16 %13, %15
  br i1 %cmp25, label %if.then27, label %if.then22.if.end29_crit_edge

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #19
  %dbg_rx_dup_mgt_frame_drop_count = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 2, i32 34
  %16 = ptrtoint ptr %dbg_rx_dup_mgt_frame_drop_count to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dbg_rx_dup_mgt_frame_drop_count, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %dbg_rx_dup_mgt_frame_drop_count, align 8
  br label %cleanup

if.end29:                                         ; preds = %if.then22.if.end29_crit_edge, %if.then17.if.end29_crit_edge
  %seq_num31 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 11
  %18 = ptrtoint ptr %seq_num31 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %seq_num31, align 4
  %RxMgmtFrameSeqNum32 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 82
  %20 = ptrtoint ptr %RxMgmtFrameSeqNum32 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %RxMgmtFrameSeqNum32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end29, %if.end15.if.end33_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %1, align 2
  %23 = lshr i16 %22, 8
  %24 = and i16 %23, 252
  %and35 = zext i16 %24 to i32
  %25 = tail call i32 @llvm.fshl.i32(i32 %and35, i32 %and35, i32 28)
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %25, label %sw.default [
    i32 11, label %sw.bb
    i32 0, label %if.end33.sw.bb41_crit_edge
    i32 2, label %if.end33.sw.bb41_crit_edge85
    i32 4, label %sw.bb42
    i32 8, label %sw.bb43
    i32 13, label %sw.bb44
  ]

if.end33.sw.bb41_crit_edge85:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb41

if.end33.sw.bb41_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb41

sw.bb:                                            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fw_state.i, align 4
  %29 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool37.not = icmp eq i32 %29, 0
  %func39 = getelementptr %struct.mlme_handler, ptr @mlme_sta_tbl, i32 %shr, i32 2
  %OnAuthClient.OnAuth = select i1 %tobool37.not, ptr @OnAuthClient, ptr @OnAuth
  %30 = ptrtoint ptr %func39 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %OnAuthClient.OnAuth, ptr %func39, align 4
  br label %sw.bb41

sw.bb41:                                          ; preds = %sw.bb, %if.end33.sw.bb41_crit_edge, %if.end33.sw.bb41_crit_edge85
  %func.i = getelementptr %struct.mlme_handler, ptr @mlme_sta_tbl, i32 %shr, i32 2
  %31 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %func.i, align 4
  %tobool.not.i84 = icmp eq ptr %32, null
  br i1 %tobool.not.i84, label %sw.bb41.cleanup_crit_edge, label %if.then.i

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb41
  %33 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_data, align 4
  %35 = ptrtoint ptr %34 to i32
  %add.i = add i32 %35, 4
  %36 = inttoptr i32 %add.i to ptr
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %36, ptr noundef dereferenceable(6) %mac_addr.i, i32 6) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool2.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %bcmp15.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %36, ptr noundef nonnull dereferenceable(6) @__const._mgt_dispatcher.bc_addr, i32 6) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp15.i)
  %tobool5.not.i = icmp eq i32 %bcmp15.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %call8.i = tail call i32 %32(ptr noundef %padapter, ptr noundef %precv_frame) #17
  br label %cleanup

sw.bb42:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @_mgt_dispatcher(ptr noundef %padapter, ptr noundef %add.ptr, ptr noundef %precv_frame)
  br label %cleanup

sw.bb43:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @_mgt_dispatcher(ptr noundef %padapter, ptr noundef %add.ptr, ptr noundef %precv_frame)
  br label %cleanup

sw.bb44:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @_mgt_dispatcher(ptr noundef %padapter, ptr noundef %add.ptr, ptr noundef %precv_frame)
  br label %cleanup

sw.default:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @_mgt_dispatcher(ptr noundef %padapter, ptr noundef %add.ptr, ptr noundef %precv_frame)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb44, %sw.bb43, %sw.bb42, %if.end.i, %land.lhs.true.i.cleanup_crit_edge, %sw.bb41.cleanup_crit_edge, %if.then27, %if.end9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @OnAuth(ptr noundef %padapter, ptr noundef %precv_frame) #2 align 64 {
entry:
  %ie_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ie_len) #17
  %0 = ptrtoint ptr %ie_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ie_len, align 4, !annotation !152
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
  %1 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rx_data, align 4
  %len1 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 7
  %3 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len1, align 4
  %5 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp.not = icmp eq i32 %and, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %7 = ptrtoint ptr %2 to i32
  %add = add i32 %7, 10
  %8 = inttoptr i32 %add to ptr
  %9 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %securitypriv, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %2, align 2
  %13 = and i16 %12, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp3.not = icmp eq i16 %13, 0
  br i1 %cmp3.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %hdrlen = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 4
  %14 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 24, ptr %hdrlen, align 1
  %encrypt = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 17
  %15 = ptrtoint ptr %encrypt to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %encrypt, align 1
  %arrayidx = getelementptr i8, ptr %2, i32 27
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %18 = lshr i8 %17, 6
  %key_index = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 29
  %19 = ptrtoint ptr %key_index to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %key_index, align 1
  %iv_len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 18
  %20 = ptrtoint ptr %iv_len to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %iv_len, align 4
  %icv_len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 19
  %21 = ptrtoint ptr %icv_len to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %icv_len, align 1
  tail call void @rtw_wep_decrypt(ptr noundef %padapter, ptr noundef %precv_frame) #17
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end.if.end11_crit_edge
  %offset.0 = phi i32 [ 4, %if.then5 ], [ 0, %if.end.if.end11_crit_edge ]
  %add12 = add i32 %7, 24
  %add14 = add i32 %add12, %offset.0
  %22 = inttoptr i32 %add14 to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %22, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %add18 = add i32 %add14, 2
  %26 = inttoptr i32 %add18 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %26, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %conv19 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp20 = icmp eq i32 %10, 2
  br i1 %cmp20, label %land.lhs.true, label %if.end11.if.end29_crit_edge

if.end11.if.end29_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  %30 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  %32 = add i32 %31, -1
  %switch.and = and i32 %32, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %33 = select i1 %switch.selectcmp, i32 2, i32 0
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true, %if.end11.if.end29_crit_edge
  %auth_mode.0 = phi i32 [ %10, %if.end11.if.end29_crit_edge ], [ %33, %land.lhs.true ]
  %conv30 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp31.not = icmp ne i16 %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %auth_mode.0)
  %cmp34 = icmp eq i32 %auth_mode.0, 0
  %or.cond = select i1 %cmp31.not, i1 %cmp34, i1 false
  br i1 %or.cond, label %if.end29.if.end169_crit_edge, label %lor.lhs.false

if.end29.if.end169_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end169

lor.lhs.false:                                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp37 = icmp eq i16 %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %auth_mode.0)
  %cmp40 = icmp eq i32 %auth_mode.0, 1
  %or.cond273 = select i1 %cmp37, i1 %cmp40, i1 false
  br i1 %or.cond273, label %lor.lhs.false.if.end169_crit_edge, label %if.end43

lor.lhs.false.if.end169_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end169

if.end43:                                         ; preds = %lor.lhs.false
  %call = tail call zeroext i8 @rtw_access_ctrl(ptr noundef %padapter, ptr noundef %8) #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %cmp45 = icmp eq i8 %call, 0
  br i1 %cmp45, label %if.end43.if.end169_crit_edge, label %if.end48

if.end43.if.end169_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end169

if.end48:                                         ; preds = %if.end43
  %call49 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %8) #17
  %tobool.not = icmp eq ptr %call49, null
  br i1 %tobool.not, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.end48
  %call51 = tail call ptr @rtw_alloc_stainfo(ptr noundef %stapriv, ptr noundef %8) #17
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.then50.if.end169_crit_edge, label %if.end54

if.then50.if.end169_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end169

if.end54:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #19
  %state55 = getelementptr inbounds %struct.sta_info, ptr %call51, i32 0, i32 8
  %34 = ptrtoint ptr %state55 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 256, ptr %state55, align 8
  %auth_seq = getelementptr inbounds %struct.sta_info, ptr %call51, i32 0, i32 42
  %35 = ptrtoint ptr %auth_seq to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %auth_seq, align 4
  br label %if.end71

if.else:                                          ; preds = %if.end48
  %asoc_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #17
  %asoc_list = getelementptr inbounds %struct.sta_info, ptr %call49, i32 0, i32 39
  %36 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %asoc_list, align 4
  %cmp.i.not = icmp eq ptr %37, %asoc_list
  br i1 %cmp.i.not, label %if.else.if.end65_crit_edge, label %if.then59

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65

if.then59:                                        ; preds = %if.else
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %asoc_list) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.then59.list_del_init.exit_crit_edge

if.then59.list_del_init.exit_crit_edge:           ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.sta_info, ptr %call49, i32 0, i32 39, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %asoc_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then59.list_del_init.exit_crit_edge
  %44 = ptrtoint ptr %asoc_list to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %asoc_list, ptr %asoc_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.sta_info, ptr %call49, i32 0, i32 39, i32 1
  %45 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %asoc_list, ptr %prev.i3.i, align 4
  %asoc_list_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 13
  %46 = ptrtoint ptr %asoc_list_cnt to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %asoc_list_cnt, align 4
  %dec = add i8 %47, -1
  store i8 %dec, ptr %asoc_list_cnt, align 4
  br label %if.end65

if.end65:                                         ; preds = %list_del_init.exit, %if.else.if.end65_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #17
  br label %if.end71

if.end71:                                         ; preds = %if.end65, %if.end54
  %pstat.0 = phi ptr [ %call49, %if.end65 ], [ %call51, %if.end54 ]
  %auth_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %auth_list_lock) #17
  %auth_list = getelementptr inbounds %struct.sta_info, ptr %pstat.0, i32 0, i32 40
  %48 = ptrtoint ptr %auth_list to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %auth_list, align 4
  %cmp.i274.not = icmp eq ptr %49, %auth_list
  br i1 %cmp.i274.not, label %if.then74, label %if.end71.if.end77_crit_edge

if.end71.if.end77_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end77

if.then74:                                        ; preds = %if.end71
  %auth_list76 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 10
  %prev.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 10, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i, align 4
  %call.i.i276 = tail call zeroext i1 @__list_add_valid(ptr noundef %auth_list, ptr noundef %51, ptr noundef %auth_list76) #17
  br i1 %call.i.i276, label %if.end.i.i277, label %if.then74.list_add_tail.exit_crit_edge

if.then74.list_add_tail.exit_crit_edge:           ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i277:                                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #19
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %auth_list, ptr %prev.i, align 4
  %53 = ptrtoint ptr %auth_list to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %auth_list76, ptr %auth_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.sta_info, ptr %pstat.0, i32 0, i32 40, i32 1
  %54 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %auth_list, ptr %51, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i277, %if.then74.list_add_tail.exit_crit_edge
  %auth_list_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 14
  %56 = ptrtoint ptr %auth_list_cnt to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %auth_list_cnt, align 1
  %inc = add i8 %57, 1
  store i8 %inc, ptr %auth_list_cnt, align 1
  br label %if.end77

if.end77:                                         ; preds = %list_add_tail.exit, %if.end71.if.end77_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %auth_list_lock) #17
  %auth_seq79 = getelementptr inbounds %struct.sta_info, ptr %pstat.0, i32 0, i32 42
  %58 = ptrtoint ptr %auth_seq79 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %auth_seq79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp80 = icmp eq i32 %59, 0
  br i1 %cmp80, label %if.then82, label %if.end77.if.end84_crit_edge

if.end77.if.end84_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end84

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #19
  %auth_to = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 15
  %60 = ptrtoint ptr %auth_to to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %auth_to, align 4
  %expire_to83 = getelementptr inbounds %struct.sta_info, ptr %pstat.0, i32 0, i32 41
  %62 = ptrtoint ptr %expire_to83 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %expire_to83, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.end77.if.end84_crit_edge
  %63 = ptrtoint ptr %auth_seq79 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %auth_seq79, align 4
  %add86 = add i32 %64, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add86, i32 %conv19)
  %cmp87.not = icmp eq i32 %add86, %conv19
  br i1 %cmp87.not, label %if.end90, label %if.end84.if.then167_crit_edge

if.end84.if.then167_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then167

if.end90:                                         ; preds = %if.end84
  br i1 %cmp37, label %land.lhs.true94, label %if.end90.if.else114_crit_edge

if.end90.if.else114_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else114

land.lhs.true94:                                  ; preds = %if.end90
  %65 = zext i32 %auth_mode.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %auth_mode.0, label %land.lhs.true94.if.else114_crit_edge [
    i32 0, label %land.lhs.true94.if.then103_crit_edge
    i32 2, label %land.lhs.true94.if.then103_crit_edge284
    i32 3, label %land.lhs.true94.if.then103_crit_edge285
  ]

land.lhs.true94.if.then103_crit_edge285:          ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then103

land.lhs.true94.if.then103_crit_edge284:          ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then103

land.lhs.true94.if.then103_crit_edge:             ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then103

land.lhs.true94.if.else114_crit_edge:             ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else114

if.then103:                                       ; preds = %land.lhs.true94.if.then103_crit_edge, %land.lhs.true94.if.then103_crit_edge284, %land.lhs.true94.if.then103_crit_edge285
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %28)
  %cmp104 = icmp eq i16 %28, 256
  br i1 %cmp104, label %if.then106, label %if.then103.if.then167_crit_edge

if.then103.if.then167_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then167

if.then106:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #19
  %state107 = getelementptr inbounds %struct.sta_info, ptr %pstat.0, i32 0, i32 8
  %66 = ptrtoint ptr %state107 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %state107, align 8
  %and108 = and i32 %67, -1281
  %or = or i32 %and108, 1024
  store i32 %or, ptr %state107, align 8
  %assoc_to = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 16
  %68 = ptrtoint ptr %assoc_to to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %assoc_to, align 4
  %expire_to110 = getelementptr inbounds %struct.sta_info, ptr %pstat.0, i32 0, i32 41
  %70 = ptrtoint ptr %expire_to110 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %expire_to110, align 8
  %authalg = getelementptr inbounds %struct.sta_info, ptr %pstat.0, i32 0, i32 43
  %71 = ptrtoint ptr %authalg to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %authalg, align 8
  br label %if.end157

if.else114:                                       ; preds = %land.lhs.true94.if.else114_crit_edge, %if.end90.if.else114_crit_edge
  %72 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %28, label %if.else114.if.then167_crit_edge [
    i16 256, label %if.then117
    i16 768, label %if.then127
  ]

if.else114.if.then167_crit_edge:                  ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then167

if.then117:                                       ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #19
  %chg_txt = getelementptr inbounds %struct.sta_info, ptr %pstat.0, i32 0, i32 44
  %73 = call ptr @memset(ptr %chg_txt, i32 78, i32 128)
  %state118 = getelementptr inbounds %struct.sta_info, ptr %pstat.0, i32 0, i32 8
  %74 = ptrtoint ptr %state118 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %state118, align 8
  %and119 = and i32 %75, -769
  %or121 = or i32 %and119, 512
  store i32 %or121, ptr %state118, align 8
  %authalg123 = getelementptr inbounds %struct.sta_info, ptr %pstat.0, i32 0, i32 43
  %76 = ptrtoint ptr %authalg123 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv30, ptr %authalg123, align 8
  br label %if.end157

if.then127:                                       ; preds = %if.else114
  %add.ptr130 = getelementptr i8, ptr %2, i32 34
  %sub132 = add i32 %4, -34
  %call133 = call ptr @rtw_get_ie(ptr noundef %add.ptr130, i32 noundef 16, ptr noundef nonnull %ie_len, i32 noundef %sub132) #17
  %tobool134.not = icmp eq ptr %call133, null
  br i1 %tobool134.not, label %if.then127.if.then167_crit_edge, label %lor.lhs.false135

if.then127.if.then167_crit_edge:                  ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then167

lor.lhs.false135:                                 ; preds = %if.then127
  %77 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp136 = icmp eq i32 %78, 0
  br i1 %cmp136, label %lor.lhs.false135.if.then167_crit_edge, label %if.end139

lor.lhs.false135.if.then167_crit_edge:            ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then167

if.end139:                                        ; preds = %lor.lhs.false135
  %add.ptr140 = getelementptr i8, ptr %call133, i32 2
  %chg_txt141 = getelementptr inbounds %struct.sta_info, ptr %pstat.0, i32 0, i32 44
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(128) %add.ptr140, ptr noundef dereferenceable(128) %chg_txt141, i32 128) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool144.not = icmp eq i32 %bcmp, 0
  br i1 %tobool144.not, label %if.then145, label %if.end139.if.then167_crit_edge

if.end139.if.then167_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then167

if.then145:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #19
  %state146 = getelementptr inbounds %struct.sta_info, ptr %pstat.0, i32 0, i32 8
  %79 = ptrtoint ptr %state146 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %state146, align 8
  %and147 = and i32 %80, -1537
  %or149 = or i32 %and147, 1024
  store i32 %or149, ptr %state146, align 8
  %assoc_to150 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 16
  %81 = ptrtoint ptr %assoc_to150 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %assoc_to150, align 4
  %expire_to151 = getelementptr inbounds %struct.sta_info, ptr %pstat.0, i32 0, i32 41
  %83 = ptrtoint ptr %expire_to151 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %expire_to151, align 8
  br label %if.end157

if.end157:                                        ; preds = %if.then145, %if.then117, %if.then106
  %add158 = add nuw nsw i32 %conv19, 1
  %84 = ptrtoint ptr %auth_seq79 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add158, ptr %auth_seq79, align 4
  call void @issue_auth(ptr noundef %padapter, ptr noundef nonnull %pstat.0, i16 noundef zeroext 0)
  %state160 = getelementptr inbounds %struct.sta_info, ptr %pstat.0, i32 0, i32 8
  %85 = ptrtoint ptr %state160 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %state160, align 8
  %and161 = and i32 %86, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.end157.cleanup_crit_edge, label %if.then163

if.end157.cleanup_crit_edge:                      ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then163:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #19
  %87 = ptrtoint ptr %auth_seq79 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %auth_seq79, align 4
  br label %cleanup

if.then167:                                       ; preds = %if.end139.if.then167_crit_edge, %lor.lhs.false135.if.then167_crit_edge, %if.then127.if.then167_crit_edge, %if.else114.if.then167_crit_edge, %if.then103.if.then167_crit_edge, %if.end84.if.then167_crit_edge
  %status.0.ph = phi i16 [ 14, %if.else114.if.then167_crit_edge ], [ 15, %if.end139.if.then167_crit_edge ], [ 15, %if.then127.if.then167_crit_edge ], [ 15, %lor.lhs.false135.if.then167_crit_edge ], [ 14, %if.then103.if.then167_crit_edge ], [ 14, %if.end84.if.then167_crit_edge ]
  %call168 = call i32 @rtw_free_stainfo(ptr noundef %padapter, ptr noundef nonnull %pstat.0) #17
  br label %if.end169

if.end169:                                        ; preds = %if.then167, %if.then50.if.end169_crit_edge, %if.end43.if.end169_crit_edge, %lor.lhs.false.if.end169_crit_edge, %if.end29.if.end169_crit_edge
  %status.0282 = phi i16 [ %status.0.ph, %if.then167 ], [ 13, %lor.lhs.false.if.end169_crit_edge ], [ 13, %if.end29.if.end169_crit_edge ], [ 17, %if.end43.if.end169_crit_edge ], [ 17, %if.then50.if.end169_crit_edge ]
  %88 = call ptr @memset(ptr @OnAuth.stat, i32 0, i32 3152)
  store i32 2, ptr getelementptr inbounds (%struct.sta_info, ptr @OnAuth.stat, i32 0, i32 42), align 4
  %89 = call ptr @memcpy(ptr getelementptr inbounds (%struct.sta_info, ptr @OnAuth.stat, i32 0, i32 12), ptr %8, i32 6)
  call void @issue_auth(ptr noundef %padapter, ptr noundef nonnull @OnAuth.stat, i16 noundef zeroext %status.0282)
  br label %cleanup

cleanup:                                          ; preds = %if.end169, %if.then163, %if.end157.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end169 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then163 ], [ 1, %if.end157.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ie_len) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @OnAuthClient(ptr noundef %padapter, ptr nocapture noundef readonly %precv_frame) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #17
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !152
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
  %1 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rx_data, align 4
  %len1 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 7
  %3 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len1, align 4
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %2, align 2
  %trunc.i = trunc i16 %6 to i2
  %rev.i = tail call i2 @llvm.bitreverse.i2(i2 %trunc.i) #17
  %7 = sext i2 %rev.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %.not = icmp eq i2 %rev.i, -1
  br i1 %.not, label %entry.get_da.exit_crit_edge, label %switch.lookup

entry.get_da.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_da.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %or.i = zext i2 %rev.i to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.OnAuthClient, i32 0, i32 %or.i
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_da.exit

get_da.exit:                                      ; preds = %switch.lookup, %entry.get_da.exit_crit_edge
  %.sink16.i = phi i32 [ %switch.load, %switch.lookup ], [ 16, %entry.get_da.exit_crit_edge ]
  %9 = ptrtoint ptr %2 to i32
  %add10.i = add i32 %.sink16.i, %9
  %da.0.i = inttoptr i32 %add10.i to ptr
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i, ptr noundef dereferenceable(6) %da.0.i, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end, label %get_da.exit.cleanup_crit_edge

get_da.exit.cleanup_crit_edge:                    ; preds = %get_da.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %get_da.exit
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %10 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = lshr i16 %6, 4
  %13 = and i16 %12, 4
  %14 = zext i16 %13 to i32
  %add = add i32 %9, 24
  %add9 = add i32 %add, %14
  %add14 = add i32 %add9, 4
  %15 = inttoptr i32 %add14 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %17, label %if.end6.do.body_crit_edge [
    i16 0, label %if.end29
    i16 3328, label %if.then21
  ]

if.end6.do.body_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

if.then21:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %auth_algo = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 5
  %19 = ptrtoint ptr %auth_algo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %auth_algo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp22 = icmp ne i32 %20, 1
  %. = zext i1 %cmp22 to i32
  %21 = ptrtoint ptr %auth_algo to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %., ptr %auth_algo, align 4
  br label %do.body

do.body:                                          ; preds = %if.then21, %if.end6.do.body_crit_edge
  %link_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @mod_timer(ptr noundef %link_timer, i32 noundef %22) #17
  br label %cleanup

if.end29:                                         ; preds = %if.end6
  %add10 = add i32 %add9, 2
  %23 = inttoptr i32 %add10 to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %25, label %if.end29.cleanup_crit_edge [
    i16 512, label %if.then32
    i16 1024, label %if.then53
  ]

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then32:                                        ; preds = %if.end29
  %auth_algo33 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 5
  %27 = ptrtoint ptr %auth_algo33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %auth_algo33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp34 = icmp eq i32 %28, 1
  br i1 %cmp34, label %if.then36, label %if.then32.do.body66_crit_edge

if.then32.do.body66_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body66

if.then36:                                        ; preds = %if.then32
  %add.ptr37 = getelementptr i8, ptr %2, i32 30
  %sub38 = add i32 %4, -30
  %call39 = call ptr @rtw_get_ie(ptr noundef %add.ptr37, i32 noundef 16, ptr noundef nonnull %len, i32 noundef %sub38) #17
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.then36.cleanup_crit_edge, label %if.end42

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end42:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #19
  %chg_txt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 10
  %add.ptr43 = getelementptr i8, ptr %call39, i32 2
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %31 = call ptr @memcpy(ptr %chg_txt, ptr %add.ptr43, i32 %30)
  %auth_seq = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 4
  %32 = ptrtoint ptr %auth_seq to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %auth_seq, align 4
  call void @issue_auth(ptr noundef %padapter, ptr noundef null, i16 noundef zeroext 0)
  %link_timer45 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %33, 30
  %call.i109 = call i32 @mod_timer(ptr noundef %link_timer45, i32 noundef %add.i) #17
  br label %cleanup

if.then53:                                        ; preds = %if.end29
  %auth_algo54 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 5
  %34 = ptrtoint ptr %auth_algo54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %auth_algo54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp55 = icmp eq i32 %35, 1
  br i1 %cmp55, label %if.then53.do.body66_crit_edge, label %if.then53.cleanup_crit_edge

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then53.do.body66_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body66

do.body66:                                        ; preds = %if.then53.do.body66_crit_edge, %if.then32.do.body66_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @OnAuthClient.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@OnAuthClient, %if.then71)) #17
          to label %do.end76 [label %if.then71], !srcloc !153

if.then71:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #19
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %36 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @OnAuthClient.__UNIQUE_ID_ddebug346, ptr noundef %37, ptr noundef nonnull @.str.5) #17
  br label %do.end76

do.end76:                                         ; preds = %if.then71, %do.body66
  %link_timer.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 20
  %call.i110 = tail call i32 @del_timer_sync(ptr noundef %link_timer.i) #17
  %38 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mlmext_info, align 4
  %and.i = and i32 %39, -9985
  %or.i111 = or i32 %and.i, 9216
  store i32 %or.i111, ptr %mlmext_info, align 4
  tail call void @issue_assocreq(ptr noundef %padapter) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %40, 30
  %call.i.i = tail call i32 @mod_timer(ptr noundef %link_timer.i, i32 noundef %add.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %if.then53.cleanup_crit_edge, %if.end42, %if.then36.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %do.body, %if.end.cleanup_crit_edge, %get_da.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end42 ], [ 1, %do.end76 ], [ 1, %get_da.exit.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ 0, %if.then53.cleanup_crit_edge ], [ 0, %if.then36.cleanup_crit_edge ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_mgt_dispatcher(ptr noundef %padapter, ptr nocapture noundef readonly %ptable, ptr noundef %precv_frame) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %func = getelementptr inbounds %struct.mlme_handler, ptr %ptable, i32 0, i32 2
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %entry
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
  %2 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_data, align 4
  %4 = ptrtoint ptr %3 to i32
  %add = add i32 %4, 4
  %5 = inttoptr i32 %add to ptr
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %5, ptr noundef dereferenceable(6) %mac_addr.i, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %bcmp15 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %5, ptr noundef nonnull dereferenceable(6) @__const._mgt_dispatcher.bc_addr, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp15)
  %tobool5.not = icmp eq i32 %bcmp15, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %call8 = tail call i32 %1(ptr noundef %padapter, ptr noundef %precv_frame) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @OnProbeReq(ptr noundef %padapter, ptr nocapture noundef readonly %precv_frame) #2 align 64 {
entry:
  %ielen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ielen) #17
  %0 = ptrtoint ptr %ielen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ielen, align 4, !annotation !152
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
  %1 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rx_data, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp ne i32 %5, 0
  %6 = and i32 %4, 81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  %or.cond = or i1 %tobool.not, %7
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %entry
  %len1 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 7
  %8 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len1, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 24
  %sub = add i32 %9, -24
  %call9 = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %ielen, i32 noundef %sub) #17
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %if.end14

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %ielen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp15.not = icmp eq i32 %11, 0
  br i1 %cmp15.not, label %land.lhs.true24, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.end14
  %add.ptr17 = getelementptr i8, ptr %call9, i32 2
  %ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3
  %ssid18 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3, i32 1
  %12 = ptrtoint ptr %ssid to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %ssid, align 1
  %bcmp = call i32 @bcmp(ptr %add.ptr17, ptr %ssid18, i32 %13) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool21.not = icmp eq i32 %bcmp, 0
  br i1 %tobool21.not, label %land.lhs.true16._issue_probersp_crit_edge, label %land.lhs.true16.cleanup_crit_edge

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true16._issue_probersp_crit_edge:        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #19
  br label %_issue_probersp

land.lhs.true24:                                  ; preds = %if.end14
  %hidden_ssid_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 33
  %14 = ptrtoint ptr %hidden_ssid_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hidden_ssid_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool25.not = icmp eq i8 %15, 0
  br i1 %tobool25.not, label %land.lhs.true24._issue_probersp_crit_edge, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true24._issue_probersp_crit_edge:        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #19
  br label %_issue_probersp

_issue_probersp:                                  ; preds = %land.lhs.true24._issue_probersp_crit_edge, %land.lhs.true16._issue_probersp_crit_edge
  %16 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_state.i, align 4
  %and.i69 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69)
  %tobool29.not = icmp eq i32 %and.i69, 0
  br i1 %tobool29.not, label %lor.lhs.false32, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %_issue_probersp
  %join_res = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 5
  %18 = ptrtoint ptr %join_res to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %join_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool31.not = icmp eq i32 %19, 0
  %20 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool34.not = icmp eq i32 %20, 0
  %or.cond76 = select i1 %tobool31.not, i1 %tobool34.not, i1 false
  br i1 %or.cond76, label %land.lhs.true30.cleanup_crit_edge, label %land.lhs.true30.if.then35_crit_edge

land.lhs.true30.if.then35_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then35

land.lhs.true30.cleanup_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false32:                                  ; preds = %_issue_probersp
  %.old = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.old)
  %tobool34.not.old = icmp eq i32 %.old, 0
  br i1 %tobool34.not.old, label %lor.lhs.false32.cleanup_crit_edge, label %lor.lhs.false32.if.then35_crit_edge

lor.lhs.false32.if.then35_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then35

lor.lhs.false32.cleanup_crit_edge:                ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then35:                                        ; preds = %lor.lhs.false32.if.then35_crit_edge, %land.lhs.true30.if.then35_crit_edge
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %2, align 2
  %trunc.i = trunc i16 %22 to i2
  %rev.i = call i2 @llvm.bitreverse.i2(i2 %trunc.i) #17
  %23 = sext i2 %rev.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %.not = icmp eq i2 %rev.i, -1
  br i1 %.not, label %if.then35.get_sa.exit_crit_edge, label %switch.lookup

if.then35.get_sa.exit_crit_edge:                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_sa.exit

switch.lookup:                                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #19
  %or.i = zext i2 %rev.i to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.OnProbeReq, i32 0, i32 %or.i
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_sa.exit

get_sa.exit:                                      ; preds = %switch.lookup, %if.then35.get_sa.exit_crit_edge
  %.sink16.i = phi i32 [ %switch.load, %switch.lookup ], [ 24, %if.then35.get_sa.exit_crit_edge ]
  %25 = ptrtoint ptr %2 to i32
  %add10.i = add i32 %.sink16.i, %25
  %sa.0.i = inttoptr i32 %add10.i to ptr
  call void @issue_probersp(ptr noundef %padapter, ptr noundef %sa.0.i, i8 zeroext undef)
  br label %cleanup

cleanup:                                          ; preds = %get_sa.exit, %lor.lhs.false32.cleanup_crit_edge, %land.lhs.true30.cleanup_crit_edge, %land.lhs.true24.cleanup_crit_edge, %land.lhs.true16.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ielen) #17
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_ie(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @issue_probersp(ptr noundef %padapter, ptr noundef readonly %da, i8 zeroext %is_valid_p2p_probereq) local_unnamed_addr #2 align 64 {
entry:
  %wps_ielen = alloca i32, align 4
  %ssid_ielen = alloca i32, align 4
  %erpinfo = alloca i8, align 1
  %ATIMWindow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wps_ielen) #17
  %0 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wps_ielen, align 4, !annotation !152
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %tobool.not = icmp eq ptr %da, null
  br i1 %tobool.not, label %entry.cleanup198_crit_edge, label %if.end

entry.cleanup198_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup198

if.end:                                           ; preds = %entry
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %call1.i.i = tail call ptr @rtw_alloc_xmitframe_ext(ptr noundef %xmitpriv) #17
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.cleanup198_crit_edge, label %if.end4.i.i

if.end.cleanup198_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup198

if.end4.i.i:                                      ; preds = %if.end
  %call5.i.i = tail call ptr @rtw_alloc_xmitbuf_ext(ptr noundef %xmitpriv) #17
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end3

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %cleanup198

if.end3:                                          ; preds = %if.end4.i.i
  %frame_tag.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %frame_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %frame_tag.i.i, align 4
  %pxmitbuf10.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5.i.i, ptr %pxmitbuf10.i.i, align 4
  %pbuf.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %pbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pbuf.i.i, align 4
  %buf_addr.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %buf_addr.i.i, align 4
  %priv_data.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1.i.i, ptr %priv_data.i.i, align 4
  %hdrlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 7
  %7 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 24, ptr %hdrlen.i, align 2
  %nr_frags.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 10
  %8 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %nr_frags.i, align 4
  %priority.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 16
  %9 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 7, ptr %priority.i, align 2
  %mac_id.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 18
  %10 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %mac_id.i, align 4
  %qsel.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 36
  %11 = ptrtoint ptr %qsel.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 18, ptr %qsel.i, align 2
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 8
  %12 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pktlen.i, align 4
  %tx_rate.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %13 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tx_rate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp.i = icmp eq i8 %14, 2
  %..i = select i1 %cmp.i, i8 1, i8 2
  %call.i = tail call zeroext i8 @rtw_get_mgntframe_raid(ptr noundef %padapter, i8 noundef zeroext %..i) #17
  %raid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 27
  %15 = ptrtoint ptr %raid.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call.i, ptr %raid.i, align 1
  %16 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx_rate.i, align 1
  %rate.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 39
  %18 = ptrtoint ptr %rate.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %rate.i, align 1
  %encrypt.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 11
  %19 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %encrypt.i, align 1
  %bswenc.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %bswenc.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %bswenc.i, align 2
  %qos_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 25
  %21 = ptrtoint ptr %qos_en.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %qos_en.i, align 1
  %ht_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 26
  %22 = ptrtoint ptr %ht_en.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %ht_en.i, align 4
  %bwmode.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 28
  %23 = ptrtoint ptr %bwmode.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %bwmode.i, align 2
  %ch_offset.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 29
  %24 = ptrtoint ptr %ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %ch_offset.i, align 1
  %sgi.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 30
  %25 = ptrtoint ptr %sgi.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %sgi.i, align 4
  %mgnt_seq.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 3
  %26 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mgnt_seq.i, align 4
  %seqnum.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 5
  %28 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %seqnum.i, align 2
  %retry_ctrl.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 41
  %29 = ptrtoint ptr %retry_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %retry_ctrl.i, align 1
  %mbssid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 42
  %30 = ptrtoint ptr %mbssid.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %mbssid.i, align 4
  %31 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf_addr.i.i, align 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 104)
  %34 = load ptr, ptr %buf_addr.i.i, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 40
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %mac_address = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 1
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %add.ptr, align 2
  %addr1 = getelementptr i8, ptr %34, i32 44
  %36 = call ptr @memcpy(ptr %addr1, ptr %da, i32 6)
  %addr2 = getelementptr i8, ptr %34, i32 50
  %37 = call ptr @memcpy(ptr %addr2, ptr %mac_addr.i, i32 6)
  %addr3 = getelementptr i8, ptr %34, i32 56
  %38 = call ptr @memcpy(ptr %addr3, ptr %mac_address, i32 6)
  %39 = ptrtoint ptr %add.ptr to i32
  %add = add i32 %39, 22
  %40 = inttoptr i32 %add to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %40, align 2
  %43 = and i16 %42, 3840
  %44 = load i16, ptr %mgnt_seq.i, align 4
  %shl = shl i16 %44, 4
  %45 = tail call i16 @llvm.bswap.i16(i16 %shl)
  %or333 = or i16 %45, %43
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %or333, ptr %40, align 2
  %47 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mgnt_seq.i, align 4
  %inc = add i16 %48, 1
  store i16 %inc, ptr %mgnt_seq.i, align 4
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr, align 2
  %51 = and i16 %50, 1023
  %52 = or i16 %51, 20480
  store i16 %52, ptr %add.ptr, align 2
  %53 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 24, ptr %hdrlen.i, align 2
  %54 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 24, ptr %pktlen.i, align 4
  %add.ptr29 = getelementptr i8, ptr %34, i32 64
  %ie_length = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 11
  %55 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %ie_length, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %56)
  %cmp = icmp ugt i32 %56, 768
  br i1 %cmp, label %if.end3.cleanup198_crit_edge, label %if.end32

if.end3.cleanup198_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup198

if.end32:                                         ; preds = %if.end3
  %57 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mlmext_info, align 4
  %and33 = and i32 %58, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and33)
  %cmp34 = icmp eq i32 %and33, 3
  br i1 %cmp34, label %if.then36, label %if.else143

if.then36:                                        ; preds = %if.end32
  %ies = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12
  %add.ptr38 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12, i32 12
  %sub = add nsw i32 %56, -12
  %call40 = call ptr @rtw_get_wps_ie(ptr noundef %add.ptr38, i32 noundef %sub, ptr noundef null, ptr noundef nonnull %wps_ielen) #17
  %wps_probe_resp_ie = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 54
  %59 = ptrtoint ptr %wps_probe_resp_ie to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wps_probe_resp_ie, align 4
  %tobool41.not = icmp eq ptr %60, null
  %tobool42.not = icmp eq ptr %call40, null
  %or.cond = select i1 %tobool41.not, i1 true, i1 %tobool42.not
  br i1 %or.cond, label %if.then36.if.else_crit_edge, label %land.lhs.true43

if.then36.if.else_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

land.lhs.true43:                                  ; preds = %if.then36
  %61 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %wps_ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp44.not = icmp eq i32 %62, 0
  br i1 %cmp44.not, label %land.lhs.true43.if.else_crit_edge, label %if.then46

land.lhs.true43.if.else_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then46:                                        ; preds = %land.lhs.true43
  %sub.ptr.lhs.cast = ptrtoint ptr %call40 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %ies to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr49 = getelementptr i8, ptr %call40, i32 %62
  %63 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %ie_length, align 1
  %65 = add i32 %62, %sub.ptr.sub
  %sub52 = sub i32 %64, %65
  %66 = call ptr @memcpy(ptr %add.ptr29, ptr %ies, i32 %sub.ptr.sub)
  %add.ptr55 = getelementptr i8, ptr %add.ptr29, i32 %sub.ptr.sub
  %67 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pktlen.i, align 4
  %add57 = add i32 %68, %sub.ptr.sub
  store i32 %add57, ptr %pktlen.i, align 4
  %69 = ptrtoint ptr %wps_probe_resp_ie to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wps_probe_resp_ie, align 4
  %arrayidx = getelementptr i8, ptr %70, i32 1
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx, align 1
  %conv59 = zext i8 %72 to i32
  %73 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv59, ptr %wps_ielen, align 4
  %add60 = add i32 %sub.ptr.sub, 2
  %add61 = add i32 %add60, %conv59
  call void @__sanitizer_cov_trace_const_cmp4(i32 769, i32 %add61)
  %cmp62 = icmp ult i32 %add61, 769
  br i1 %cmp62, label %if.then64, label %if.then46.if.end72_crit_edge

if.then46.if.end72_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end72

if.then64:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #19
  %add66 = add nuw nsw i32 %conv59, 2
  %74 = call ptr @memcpy(ptr %add.ptr55, ptr %70, i32 %add66)
  %75 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %wps_ielen, align 4
  %add67 = add i32 %76, 2
  %add.ptr68 = getelementptr i8, ptr %add.ptr55, i32 %add67
  %77 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pktlen.i, align 4
  %add71 = add i32 %78, %add67
  store i32 %add71, ptr %pktlen.i, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then64, %if.then46.if.end72_crit_edge
  %pframe.0 = phi ptr [ %add.ptr68, %if.then64 ], [ %add.ptr55, %if.then46.if.end72_crit_edge ]
  %79 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %wps_ielen, align 4
  %add74 = add i32 %add60, %sub52
  %add75 = add i32 %add74, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 769, i32 %add75)
  %cmp76 = icmp ult i32 %add75, 769
  br i1 %cmp76, label %if.then78, label %if.end72.if.end91_crit_edge

if.end72.if.end91_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end91

if.then78:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #19
  %81 = call ptr @memcpy(ptr %pframe.0, ptr %add.ptr49, i32 %sub52)
  %add.ptr79 = getelementptr i8, ptr %pframe.0, i32 %sub52
  br label %if.end91.sink.split

if.else:                                          ; preds = %land.lhs.true43.if.else_crit_edge, %if.then36.if.else_crit_edge
  %82 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %ie_length, align 1
  %84 = call ptr @memcpy(ptr %add.ptr29, ptr %ies, i32 %83)
  %85 = load i32, ptr %ie_length, align 1
  %add.ptr87 = getelementptr i8, ptr %add.ptr29, i32 %85
  br label %if.end91.sink.split

if.end91.sink.split:                              ; preds = %if.else, %if.then78
  %sub52.sink = phi i32 [ %sub52, %if.then78 ], [ %85, %if.else ]
  %pframe.2.ph = phi ptr [ %add.ptr79, %if.then78 ], [ %add.ptr87, %if.else ]
  %86 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pktlen.i, align 4
  %add81 = add i32 %87, %sub52.sink
  store i32 %add81, ptr %pktlen.i, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.end91.sink.split, %if.end72.if.end91_crit_edge
  %pframe.2 = phi ptr [ %pframe.0, %if.end72.if.end91_crit_edge ], [ %pframe.2.ph, %if.end91.sink.split ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ssid_ielen) #17
  %88 = ptrtoint ptr %ssid_ielen to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %ssid_ielen, align 4, !annotation !152
  %89 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %buf_addr.i.i, align 4
  %call96 = call ptr @_rtw_zmalloc(i32 noundef 768) #17
  %tobool97.not = icmp eq ptr %call96, null
  br i1 %tobool97.not, label %cleanup198.critedge, label %if.end99

if.end99:                                         ; preds = %if.end91
  %add.ptr95 = getelementptr i8, ptr %90, i32 64
  %add.ptr100 = getelementptr i8, ptr %90, i32 76
  %sub.ptr.lhs.cast101 = ptrtoint ptr %pframe.2 to i32
  %sub.ptr.rhs.cast102 = ptrtoint ptr %add.ptr95 to i32
  %sub.ptr.sub103 = add i32 %sub.ptr.lhs.cast101, -12
  %sub104 = sub i32 %sub.ptr.sub103, %sub.ptr.rhs.cast102
  %call105 = call ptr @rtw_get_ie(ptr noundef %add.ptr100, i32 noundef 0, ptr noundef nonnull %ssid_ielen, i32 noundef %sub104) #17
  %ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3
  %91 = ptrtoint ptr %ssid to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %ssid, align 1
  %93 = ptrtoint ptr %ssid_ielen to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ssid_ielen, align 4
  %sub106 = sub i32 %92, %94
  %tobool107.not = icmp eq ptr %call105, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool111.not = icmp eq i32 %92, 0
  %or.cond334 = select i1 %tobool107.not, i1 true, i1 %tobool111.not
  br i1 %or.cond334, label %if.end99.if.end138_crit_edge, label %if.then112

if.end99.if.end138_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end138

if.then112:                                       ; preds = %if.end99
  %add.ptr114 = getelementptr i8, ptr %call105, i32 2
  %sub.ptr.rhs.cast116 = ptrtoint ptr %add.ptr114 to i32
  %sub.ptr.sub117 = sub i32 %sub.ptr.lhs.cast101, %sub.ptr.rhs.cast116
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %sub.ptr.sub117)
  %cmp118 = icmp ugt i32 %sub.ptr.sub117, 768
  br i1 %cmp118, label %if.then120, label %if.then112.if.end123_crit_edge

if.then112.if.end123_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end123

if.then120:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #19
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %95 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pnetdev, align 8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %96, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.issue_probersp, ptr noundef %96) #22
  br label %if.end123

if.end123:                                        ; preds = %if.then120, %if.then112.if.end123_crit_edge
  %remainder_ielen113.0 = phi i32 [ 768, %if.then120 ], [ %sub.ptr.sub117, %if.then112.if.end123_crit_edge ]
  %97 = call ptr @memcpy(ptr %call96, ptr %add.ptr114, i32 %remainder_ielen113.0)
  %add.ptr124 = getelementptr i8, ptr %add.ptr114, i32 %sub106
  %98 = call ptr @memmove(ptr %add.ptr124, ptr %add.ptr114, i32 %remainder_ielen113.0)
  %99 = ptrtoint ptr %ssid to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %ssid, align 1
  %conv127 = trunc i32 %100 to i8
  %add.ptr128 = getelementptr i8, ptr %call105, i32 1
  %101 = ptrtoint ptr %add.ptr128 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv127, ptr %add.ptr128, align 1
  %ssid131 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3, i32 1
  %102 = load i32, ptr %ssid, align 1
  %103 = call ptr @memcpy(ptr %add.ptr114, ptr %ssid131, i32 %102)
  %104 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pktlen.i, align 4
  %add137 = add i32 %105, %sub106
  store i32 %add137, ptr %pktlen.i, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.end123, %if.end99.if.end138_crit_edge
  call void @kfree(ptr noundef nonnull %call96) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ssid_ielen) #17
  br label %if.end196

if.else143:                                       ; preds = %if.end32
  %add.ptr144 = getelementptr i8, ptr %34, i32 72
  %106 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 32, ptr %pktlen.i, align 4
  %ies147 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12
  %call149 = tail call ptr @rtw_get_beacon_interval_from_ie(ptr noundef %ies147) #17
  %107 = ptrtoint ptr %call149 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %call149, align 1
  %109 = ptrtoint ptr %add.ptr144 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 2)
  store i16 %108, ptr %add.ptr144, align 1
  %add.ptr150 = getelementptr i8, ptr %34, i32 74
  %110 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pktlen.i, align 4
  %add152 = add i32 %111, 2
  store i32 %add152, ptr %pktlen.i, align 4
  %call155 = tail call ptr @rtw_get_capability_from_ie(ptr noundef %ies147) #17
  %112 = ptrtoint ptr %call155 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %113 = load i16, ptr %call155, align 1
  %114 = ptrtoint ptr %add.ptr150 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 2)
  store i16 %113, ptr %add.ptr150, align 1
  %add.ptr156 = getelementptr i8, ptr %34, i32 76
  %115 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pktlen.i, align 4
  %add158 = add i32 %116, 2
  store i32 %add158, ptr %pktlen.i, align 4
  %ssid159 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3
  %117 = ptrtoint ptr %ssid159 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %ssid159, align 1
  %ssid162 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3, i32 1
  %call165 = tail call ptr @rtw_set_ie(ptr noundef %add.ptr156, i32 noundef 0, i32 noundef %118, ptr noundef %ssid162, ptr noundef %pktlen.i) #17
  %supported_rates = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 9
  %call167 = tail call i32 @rtw_get_rateset_len(ptr noundef %supported_rates) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call167)
  %cmp168 = icmp ugt i32 %call167, 8
  %119 = tail call i32 @llvm.umin.i32(i32 %call167, i32 8)
  %call173 = tail call ptr @rtw_set_ie(ptr noundef %call165, i32 noundef 1, i32 noundef %119, ptr noundef %supported_rates, ptr noundef %pktlen.i) #17
  %ds_config = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 7, i32 3
  %call175 = tail call ptr @rtw_set_ie(ptr noundef %call173, i32 noundef 3, i32 noundef 1, ptr noundef %ds_config, ptr noundef %pktlen.i) #17
  %120 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %mlmext_info, align 4
  %and177 = and i32 %121, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and177)
  %cmp178 = icmp eq i32 %and177, 1
  br i1 %cmp178, label %if.then180, label %if.else143.if.end185_crit_edge

if.else143.if.end185_crit_edge:                   ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end185

if.then180:                                       ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %erpinfo) #17
  %122 = ptrtoint ptr %erpinfo to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %erpinfo, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ATIMWindow) #17
  %123 = ptrtoint ptr %ATIMWindow to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %ATIMWindow, align 4
  %call182 = call ptr @rtw_set_ie(ptr noundef %call175, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %ATIMWindow, ptr noundef %pktlen.i) #17
  %call184 = call ptr @rtw_set_ie(ptr noundef %call182, i32 noundef 42, i32 noundef 1, ptr noundef nonnull %erpinfo, ptr noundef %pktlen.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ATIMWindow) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %erpinfo) #17
  br label %if.end185

if.end185:                                        ; preds = %if.then180, %if.else143.if.end185_crit_edge
  %pframe.3 = phi ptr [ %call184, %if.then180 ], [ %call175, %if.else143.if.end185_crit_edge ]
  br i1 %cmp168, label %if.then188, label %if.end185.if.end196_crit_edge

if.end185.if.end196_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end196

if.then188:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #19
  %sub189 = add i32 %call167, -8
  %add.ptr192 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 9, i32 8
  %call194 = call ptr @rtw_set_ie(ptr noundef %pframe.3, i32 noundef 50, i32 noundef %sub189, ptr noundef %add.ptr192, ptr noundef %pktlen.i) #17
  br label %if.end196

if.end196:                                        ; preds = %if.then188, %if.end185.if.end196_crit_edge, %if.end138
  %124 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pktlen.i, align 4
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 9
  %126 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %last_txcmdsz, align 4
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %127 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool.not.i = icmp eq i32 %128, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end196.if.then.i_crit_edge

if.end196.if.then.i_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end196
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %129 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %bDriverStopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool1.not.i = icmp eq i32 %130, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end196.if.then.i_crit_edge
  %131 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pxmitbuf10.i.i, align 4
  %call.i335 = call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %132) #17
  %call3.i = call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %cleanup198

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  %call4.i = call i32 @rtw_hal_mgnt_xmit(ptr noundef %padapter, ptr noundef nonnull %call1.i.i) #17
  br label %cleanup198

cleanup198.critedge:                              ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ssid_ielen) #17
  br label %cleanup198

cleanup198:                                       ; preds = %cleanup198.critedge, %if.end.i, %if.then.i, %if.end3.cleanup198_crit_edge, %if.then7.i.i, %if.end.cleanup198_crit_edge, %entry.cleanup198_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wps_ielen) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @OnProbeRsp(ptr noundef %padapter, ptr nocapture noundef readonly %precv_frame) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sitesurvey_res = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17
  %0 = ptrtoint ptr %sitesurvey_res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sitesurvey_res, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @report_survey_event(ptr noundef %padapter, ptr noundef %precv_frame)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @report_survey_event(ptr noundef %padapter, ptr nocapture noundef readonly %precv_frame) local_unnamed_addr #2 align 64 {
entry:
  %len.i = alloca i32, align 4
  %chplan_ap.i = alloca %struct.rt_channel_plan, align 1
  %chplan_sta.i = alloca [14 x %struct.rt_channel_info], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %padapter, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #17
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @_rtw_zmalloc(i32 noundef 880) #17
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call) #17
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 56, ptr %cmdcode, align 4
  %cmdsz8 = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %cmdsz8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 880, ptr %cmdsz8, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %parmbuf, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rspsz, align 4
  %7 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %call4, align 4
  %bf.clear = and i32 %bf.load, -16777216
  %bf.set11 = or i32 %bf.clear, 525160
  store i32 %bf.set11, ptr %call4, align 4
  %event_seq = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event_seq, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %event_seq, i32 1, i32 3, i32 1) #17
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %event_seq, ptr %event_seq, i32 1, ptr elementtype(i32) %event_seq) #17, !srcloc !155
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !156
  %9 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load13 = load i32, ptr %call4, align 4
  %bf.shl = shl i32 %asmresult.i.i.i.i, 24
  %bf.clear14 = and i32 %bf.load13, 16777215
  %bf.set15 = or i32 %bf.clear14, %bf.shl
  store i32 %bf.set15, ptr %call4, align 4
  %add.ptr = getelementptr i8, ptr %call4, i32 8
  %call16 = tail call zeroext i8 @collect_bss_info(ptr noundef nonnull %padapter, ptr noundef %precv_frame, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call16)
  %cmp = icmp eq i8 %call16, 0
  br i1 %cmp, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call) #17
  tail call void @kfree(ptr noundef nonnull %call4) #17
  br label %cleanup

if.end19:                                         ; preds = %if.end7
  %enable80211d.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 59
  %10 = ptrtoint ptr %enable80211d.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enable80211d.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end19.if.end265.i_crit_edge, label %land.lhs.true.i

if.end19.if.end265.i_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end265.i

land.lhs.true.i:                                  ; preds = %if.end19
  %update_channel_plan_by_ap_done.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 35
  %12 = ptrtoint ptr %update_channel_plan_by_ap_done.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %update_channel_plan_by_ap_done.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.if.end265.i_crit_edge

land.lhs.true.i.if.end265.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end265.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #17
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %len.i, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %chplan_ap.i) #17
  %15 = getelementptr inbounds %struct.rt_channel_plan, ptr %chplan_ap.i, i32 0, i32 1
  %16 = call ptr @memset(ptr %chplan_ap.i, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %chplan_sta.i) #17
  %add.ptr.i = getelementptr i8, ptr %call4, i32 124
  %ie_length.i = getelementptr i8, ptr %call4, i32 108
  %17 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %ie_length.i, align 1
  %sub.i = add i32 %18, -12
  %call.i = call ptr @rtw_get_ie(ptr noundef %add.ptr.i, i32 noundef 7, ptr noundef nonnull %len.i, i32 noundef %sub.i) #17
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %if.then.i.cleanup.i_crit_edge, label %if.end.i

if.then.i.cleanup.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

if.end.i:                                         ; preds = %if.then.i
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %cmp.i = icmp ult i32 %20, 6
  br i1 %cmp.i, label %if.end.i.cleanup.i_crit_edge, label %if.end6.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

if.end6.i:                                        ; preds = %if.end.i
  %add.ptr7.i = getelementptr i8, ptr %call.i, i32 2
  %add.ptr8.i = getelementptr i8, ptr %add.ptr7.i, i32 %20
  %add.ptr11.i = getelementptr i8, ptr %call.i, i32 5
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr8.i to i32
  %sub.ptr.rhs.cast418.i = ptrtoint ptr %add.ptr11.i to i32
  %sub.ptr.sub419.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast418.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub419.i)
  %cmp12420.i = icmp sgt i32 %sub.ptr.sub419.i, 2
  br i1 %cmp12420.i, label %if.end6.i.while.body.i_crit_edge, label %if.end6.i.while.end.i_crit_edge

if.end6.i.while.end.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  br label %while.body.i

while.cond.loopexit.i:                            ; preds = %for.body.i.while.cond.loopexit.i_crit_edge, %while.body.i.while.cond.loopexit.i_crit_edge
  %i.1.lcssa.i = phi i8 [ %i.0421.i, %while.body.i.while.cond.loopexit.i_crit_edge ], [ %inc.i, %for.body.i.while.cond.loopexit.i_crit_edge ]
  %sub.ptr.rhs.cast.i = ptrtoint ptr %incdec.ptr15.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp12.i = icmp sgt i32 %sub.ptr.sub.i, 2
  br i1 %cmp12.i, label %while.cond.loopexit.i.while.body.i_crit_edge, label %while.cond.loopexit.i.while.end.i_crit_edge

while.cond.loopexit.i.while.end.i_crit_edge:      ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %if.end6.i.while.body.i_crit_edge
  %p.0422.i = phi ptr [ %incdec.ptr15.i, %while.cond.loopexit.i.while.body.i_crit_edge ], [ %add.ptr11.i, %if.end6.i.while.body.i_crit_edge ]
  %i.0421.i = phi i8 [ %i.1.lcssa.i, %while.cond.loopexit.i.while.body.i_crit_edge ], [ 0, %if.end6.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %p.0422.i, i32 1
  %21 = ptrtoint ptr %p.0422.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %p.0422.i, align 1
  %23 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %incdec.ptr.i, align 1
  %incdec.ptr15.i = getelementptr i8, ptr %p.0422.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp18415.not.i = icmp eq i8 %24, 0
  br i1 %cmp18415.not.i, label %while.body.i.while.cond.loopexit.i_crit_edge, label %for.body.lr.ph.i

while.body.i.while.cond.loopexit.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.loopexit.i

for.body.lr.ph.i:                                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %22)
  %cmp21.i = icmp ult i8 %22, 15
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.0417.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %inc32.i, %for.body.i.for.body.i_crit_edge ]
  %i.1416.i = phi i8 [ %i.0421.i, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = shl i8 %j.0417.i, 2
  %channel.0.v.i = select i1 %cmp21.i, i8 %j.0417.i, i8 %mul.i
  %channel.0.i = add i8 %channel.0.v.i, %22
  %inc.i = add i8 %i.1416.i, 1
  %idxprom.i = zext i8 %i.1416.i to i32
  %arrayidx.i = getelementptr [14 x i8], ptr %chplan_ap.i, i32 0, i32 %idxprom.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %channel.0.i, ptr %arrayidx.i, align 1
  %inc32.i = add nuw i8 %j.0417.i, 1
  %cmp18.i = icmp ult i8 %inc32.i, %24
  br i1 %cmp18.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.while.cond.loopexit.i_crit_edge

for.body.i.while.cond.loopexit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.loopexit.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

while.end.i:                                      ; preds = %while.cond.loopexit.i.while.end.i_crit_edge, %if.end6.i.while.end.i_crit_edge
  %i.0.lcssa.i = phi i8 [ 0, %if.end6.i.while.end.i_crit_edge ], [ %i.1.lcssa.i, %while.cond.loopexit.i.while.end.i_crit_edge ]
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %i.0.lcssa.i, ptr %15, align 1
  %channel_set.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12
  %27 = call ptr @memcpy(ptr %chplan_sta.i, ptr %channel_set.i, i32 112)
  %28 = call ptr @memset(ptr %channel_set.i, i32 0, i32 112)
  %wireless_mode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 7
  %29 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %wireless_mode.i, align 2
  %31 = and i8 %30, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool40.not.i = icmp eq i8 %31, 0
  br i1 %tobool40.not.i, label %while.end.i.land.lhs.true206.i_crit_edge, label %while.end.i.lor.lhs.false.i_crit_edge

while.end.i.lor.lhs.false.i_crit_edge:            ; preds = %while.end.i
  br label %lor.lhs.false.i

while.end.i.land.lhs.true206.i_crit_edge:         ; preds = %while.end.i
  br label %land.lhs.true206.i

lor.lhs.false.i:                                  ; preds = %do.cond.i.lor.lhs.false.i_crit_edge, %while.end.i.lor.lhs.false.i_crit_edge
  %k.0426.i = phi i8 [ %k.1.i, %do.cond.i.lor.lhs.false.i_crit_edge ], [ 0, %while.end.i.lor.lhs.false.i_crit_edge ]
  %j.1425.i = phi i8 [ %j.2.i, %do.cond.i.lor.lhs.false.i_crit_edge ], [ 0, %while.end.i.lor.lhs.false.i_crit_edge ]
  %i.2424.i = phi i8 [ %i.3.i, %do.cond.i.lor.lhs.false.i_crit_edge ], [ 0, %while.end.i.lor.lhs.false.i_crit_edge ]
  %conv42.i = zext i8 %i.2424.i to i32
  %arrayidx46.i = getelementptr [14 x %struct.rt_channel_info], ptr %chplan_sta.i, i32 0, i32 %conv42.i
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx46.i, align 4
  %34 = add i8 %33, -15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %34)
  %35 = icmp ult i8 %34, -14
  call void @__sanitizer_cov_trace_cmp1(i8 %j.1425.i, i8 %i.0.lcssa.i)
  %cmp62.i = icmp eq i8 %j.1425.i, %i.0.lcssa.i
  %or.cond413.i = select i1 %35, i1 true, i1 %cmp62.i
  br i1 %or.cond413.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false64.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

lor.lhs.false64.i:                                ; preds = %lor.lhs.false.i
  %conv59.i = zext i8 %j.1425.i to i32
  %arrayidx67.i = getelementptr [14 x i8], ptr %chplan_ap.i, i32 0, i32 %conv59.i
  %36 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx67.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %37)
  %cmp69.i = icmp ugt i8 %37, 14
  br i1 %cmp69.i, label %lor.lhs.false64.i.do.end.i_crit_edge, label %if.end72.i

lor.lhs.false64.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false64.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

if.end72.i:                                       ; preds = %lor.lhs.false64.i
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %37)
  %cmp81.i = icmp eq i8 %33, %37
  br i1 %cmp81.i, label %if.then83.i, label %if.else95.i

if.then83.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #19
  %idxprom87.i = zext i8 %k.0426.i to i32
  %arrayidx88.i = getelementptr %struct.rt_channel_info, ptr %channel_set.i, i32 %idxprom87.i
  %38 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %33, ptr %arrayidx88.i, align 4
  %ScanType.i = getelementptr %struct.rt_channel_info, ptr %channel_set.i, i32 %idxprom87.i, i32 1
  %39 = ptrtoint ptr %ScanType.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %ScanType.i, align 4
  %inc92.i = add i8 %i.2424.i, 1
  %inc93.i = add i8 %j.1425.i, 1
  %inc94.i = add i8 %k.0426.i, 1
  br label %do.cond.i

if.else95.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %37)
  %cmp104.i = icmp ult i8 %33, %37
  br i1 %cmp104.i, label %if.then106.i, label %if.else118.i

if.then106.i:                                     ; preds = %if.else95.i
  call void @__sanitizer_cov_trace_pc() #19
  %idxprom110.i = zext i8 %k.0426.i to i32
  %arrayidx111.i = getelementptr %struct.rt_channel_info, ptr %channel_set.i, i32 %idxprom110.i
  %40 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %33, ptr %arrayidx111.i, align 4
  %ScanType115.i = getelementptr %struct.rt_channel_info, ptr %channel_set.i, i32 %idxprom110.i, i32 1
  %41 = ptrtoint ptr %ScanType115.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %ScanType115.i, align 4
  %inc116.i = add i8 %i.2424.i, 1
  %inc117.i = add i8 %k.0426.i, 1
  br label %do.cond.i

if.else118.i:                                     ; preds = %if.else95.i
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %37)
  %cmp127.i = icmp ugt i8 %33, %37
  br i1 %cmp127.i, label %if.then129.i, label %if.else118.i.do.cond.i_crit_edge

if.else118.i.do.cond.i_crit_edge:                 ; preds = %if.else118.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond.i

if.then129.i:                                     ; preds = %if.else118.i
  call void @__sanitizer_cov_trace_pc() #19
  %idxprom133.i = zext i8 %k.0426.i to i32
  %arrayidx134.i = getelementptr %struct.rt_channel_info, ptr %channel_set.i, i32 %idxprom133.i
  %42 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %37, ptr %arrayidx134.i, align 4
  %ScanType138.i = getelementptr %struct.rt_channel_info, ptr %channel_set.i, i32 %idxprom133.i, i32 1
  %43 = ptrtoint ptr %ScanType138.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %ScanType138.i, align 4
  %inc139.i = add i8 %j.1425.i, 1
  %inc140.i = add i8 %k.0426.i, 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then129.i, %if.else118.i.do.cond.i_crit_edge, %if.then106.i, %if.then83.i
  %i.3.i = phi i8 [ %inc92.i, %if.then83.i ], [ %inc116.i, %if.then106.i ], [ %i.2424.i, %if.then129.i ], [ %i.2424.i, %if.else118.i.do.cond.i_crit_edge ]
  %j.2.i = phi i8 [ %inc93.i, %if.then83.i ], [ %j.1425.i, %if.then106.i ], [ %inc139.i, %if.then129.i ], [ %j.1425.i, %if.else118.i.do.cond.i_crit_edge ]
  %k.1.i = phi i8 [ %inc94.i, %if.then83.i ], [ %inc117.i, %if.then106.i ], [ %inc140.i, %if.then129.i ], [ %k.0426.i, %if.else118.i.do.cond.i_crit_edge ]
  %cmp43.i = icmp eq i8 %i.3.i, 14
  br i1 %cmp43.i, label %do.cond.i.while.end173.i_crit_edge, label %do.cond.i.lor.lhs.false.i_crit_edge

do.cond.i.lor.lhs.false.i_crit_edge:              ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false.i

do.cond.i.while.end173.i_crit_edge:               ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end173.i

do.end.i:                                         ; preds = %lor.lhs.false64.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %i.2424.i)
  %cmp146427.i = icmp ult i8 %i.2424.i, 14
  br i1 %cmp146427.i, label %do.end.i.land.lhs.true148.i_crit_edge, label %do.end.i.while.end173.i_crit_edge

do.end.i.while.end173.i_crit_edge:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end173.i

do.end.i.land.lhs.true148.i_crit_edge:            ; preds = %do.end.i
  br label %land.lhs.true148.i

land.lhs.true148.i:                               ; preds = %while.body161.i.land.lhs.true148.i_crit_edge, %do.end.i.land.lhs.true148.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %while.body161.i.land.lhs.true148.i_crit_edge ], [ %conv42.i, %do.end.i.land.lhs.true148.i_crit_edge ]
  %k.2429.i = phi i8 [ %inc172.i, %while.body161.i.land.lhs.true148.i_crit_edge ], [ %k.0426.i, %do.end.i.land.lhs.true148.i_crit_edge ]
  %arrayidx150.i = getelementptr [14 x %struct.rt_channel_info], ptr %chplan_sta.i, i32 0, i32 %indvars.iv.i
  %44 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx150.i, align 4
  %46 = add i8 %45, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %46)
  %47 = icmp ult i8 %46, 14
  br i1 %47, label %while.body161.i, label %land.lhs.true148.i.while.end173.i_crit_edge

land.lhs.true148.i.while.end173.i_crit_edge:      ; preds = %land.lhs.true148.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end173.i

while.body161.i:                                  ; preds = %land.lhs.true148.i
  %idxprom165.i = zext i8 %k.2429.i to i32
  %arrayidx166.i = getelementptr %struct.rt_channel_info, ptr %channel_set.i, i32 %idxprom165.i
  %48 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %45, ptr %arrayidx166.i, align 4
  %ScanType170.i = getelementptr %struct.rt_channel_info, ptr %channel_set.i, i32 %idxprom165.i, i32 1
  %49 = ptrtoint ptr %ScanType170.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %ScanType170.i, align 4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %inc172.i = add i8 %k.2429.i, 1
  %lftr.wideiv = trunc i32 %indvars.iv.next.i to i8
  %exitcond = icmp eq i8 %lftr.wideiv, 14
  br i1 %exitcond, label %while.body161.i.while.end173.i_crit_edge, label %while.body161.i.land.lhs.true148.i_crit_edge

while.body161.i.land.lhs.true148.i_crit_edge:     ; preds = %while.body161.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true148.i

while.body161.i.while.end173.i_crit_edge:         ; preds = %while.body161.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end173.i

while.end173.i:                                   ; preds = %while.body161.i.while.end173.i_crit_edge, %land.lhs.true148.i.while.end173.i_crit_edge, %do.end.i.while.end173.i_crit_edge, %do.cond.i.while.end173.i_crit_edge
  %j.1.lcssa459.i = phi i8 [ %j.1425.i, %do.end.i.while.end173.i_crit_edge ], [ %j.1425.i, %land.lhs.true148.i.while.end173.i_crit_edge ], [ %j.1425.i, %while.body161.i.while.end173.i_crit_edge ], [ %j.2.i, %do.cond.i.while.end173.i_crit_edge ]
  %k.2.lcssa.i = phi i8 [ %k.0426.i, %do.end.i.while.end173.i_crit_edge ], [ %inc172.i, %while.body161.i.while.end173.i_crit_edge ], [ %k.2429.i, %land.lhs.true148.i.while.end173.i_crit_edge ], [ %k.1.i, %do.cond.i.while.end173.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %j.1.lcssa459.i, i8 %i.0.lcssa.i)
  %cmp178432.i = icmp ult i8 %j.1.lcssa459.i, %i.0.lcssa.i
  br i1 %cmp178432.i, label %land.rhs180.preheader.i, label %while.end173.i.if.end254.i_crit_edge

while.end173.i.if.end254.i_crit_edge:             ; preds = %while.end173.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end254.i

land.rhs180.preheader.i:                          ; preds = %while.end173.i
  %50 = zext i8 %j.1.lcssa459.i to i32
  br label %land.rhs180.i

land.rhs180.i:                                    ; preds = %while.body188.i.land.rhs180.i_crit_edge, %land.rhs180.preheader.i
  %indvars.iv442.i = phi i32 [ %50, %land.rhs180.preheader.i ], [ %indvars.iv.next443.i, %while.body188.i.land.rhs180.i_crit_edge ]
  %k.3434.i = phi i8 [ %k.2.lcssa.i, %land.rhs180.preheader.i ], [ %inc199.i, %while.body188.i.land.rhs180.i_crit_edge ]
  %arrayidx183.i = getelementptr [14 x i8], ptr %chplan_ap.i, i32 0, i32 %indvars.iv442.i
  %51 = ptrtoint ptr %arrayidx183.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx183.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %52)
  %cmp185.i = icmp ult i8 %52, 15
  br i1 %cmp185.i, label %while.body188.i, label %land.rhs180.i.if.end254.i_crit_edge

land.rhs180.i.if.end254.i_crit_edge:              ; preds = %land.rhs180.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end254.i

while.body188.i:                                  ; preds = %land.rhs180.i
  %idxprom192.i = zext i8 %k.3434.i to i32
  %arrayidx193.i = getelementptr %struct.rt_channel_info, ptr %channel_set.i, i32 %idxprom192.i
  %53 = ptrtoint ptr %arrayidx193.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx193.i, align 4
  %ScanType197.i = getelementptr %struct.rt_channel_info, ptr %channel_set.i, i32 %idxprom192.i, i32 1
  %54 = ptrtoint ptr %ScanType197.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %ScanType197.i, align 4
  %indvars.iv.next443.i = add nuw nsw i32 %indvars.iv442.i, 1
  %inc199.i = add i8 %k.3434.i, 1
  %lftr.wideiv444.i = trunc i32 %indvars.iv.next443.i to i8
  %exitcond445.not.i = icmp eq i8 %i.0.lcssa.i, %lftr.wideiv444.i
  br i1 %exitcond445.not.i, label %while.body188.i.if.end254.i_crit_edge, label %while.body188.i.land.rhs180.i_crit_edge

while.body188.i.land.rhs180.i_crit_edge:          ; preds = %while.body188.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs180.i

while.body188.i.if.end254.i_crit_edge:            ; preds = %while.body188.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end254.i

land.lhs.true206.i:                               ; preds = %while.body221.i.land.lhs.true206.i_crit_edge, %while.end.i.land.lhs.true206.i_crit_edge
  %indvars.iv446.i = phi i32 [ %indvars.iv.next447.i, %while.body221.i.land.lhs.true206.i_crit_edge ], [ 0, %while.end.i.land.lhs.true206.i_crit_edge ]
  %arrayidx208.i = getelementptr [14 x %struct.rt_channel_info], ptr %chplan_sta.i, i32 0, i32 %indvars.iv446.i
  %55 = ptrtoint ptr %arrayidx208.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx208.i, align 4
  %57 = add i8 %56, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %57)
  %58 = icmp ult i8 %57, 14
  br i1 %58, label %while.body221.i, label %land.lhs.true206.i.if.end254.i_crit_edge

land.lhs.true206.i.if.end254.i_crit_edge:         ; preds = %land.lhs.true206.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end254.i

while.body221.i:                                  ; preds = %land.lhs.true206.i
  %arrayidx226.i = getelementptr %struct.rt_channel_info, ptr %channel_set.i, i32 %indvars.iv446.i
  %59 = ptrtoint ptr %arrayidx226.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %56, ptr %arrayidx226.i, align 4
  %ScanType230.i = getelementptr [14 x %struct.rt_channel_info], ptr %chplan_sta.i, i32 0, i32 %indvars.iv446.i, i32 1
  %60 = ptrtoint ptr %ScanType230.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ScanType230.i, align 4
  %ScanType233.i = getelementptr %struct.rt_channel_info, ptr %channel_set.i, i32 %indvars.iv446.i, i32 1
  %62 = ptrtoint ptr %ScanType233.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %ScanType233.i, align 4
  %indvars.iv.next447.i = add nuw nsw i32 %indvars.iv446.i, 1
  %exitcond448.not.i = icmp eq i32 %indvars.iv.next447.i, 14
  br i1 %exitcond448.not.i, label %while.body221.i.if.end254.i_crit_edge, label %while.body221.i.land.lhs.true206.i_crit_edge

while.body221.i.land.lhs.true206.i_crit_edge:     ; preds = %while.body221.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true206.i

while.body221.i.if.end254.i_crit_edge:            ; preds = %while.body221.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end254.i

if.end254.i:                                      ; preds = %while.body221.i.if.end254.i_crit_edge, %land.lhs.true206.i.if.end254.i_crit_edge, %while.body188.i.if.end254.i_crit_edge, %land.rhs180.i.if.end254.i_crit_edge, %while.end173.i.if.end254.i_crit_edge
  %63 = ptrtoint ptr %update_channel_plan_by_ap_done.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %update_channel_plan_by_ap_done.i, align 1
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %chplan_sta.i) #17
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %chplan_ap.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #17
  br label %if.end265.i

cleanup.i:                                        ; preds = %if.end.i.cleanup.i_crit_edge, %if.then.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %chplan_sta.i) #17
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %chplan_ap.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #17
  br label %process_80211d.exit

if.end265.i:                                      ; preds = %if.end254.i, %land.lhs.true.i.if.end265.i_crit_edge, %if.end19.if.end265.i_crit_edge
  %ds_config.i = getelementptr i8, ptr %call4, i32 80
  %64 = ptrtoint ptr %ds_config.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %ds_config.i, align 1
  %channel_set267.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12
  %66 = trunc i32 %65 to i8
  %67 = ptrtoint ptr %channel_set267.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %channel_set267.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp278.not.i = icmp eq i8 %68, 0
  br i1 %cmp278.not.i, label %if.end265.i.process_80211d.exit_crit_edge, label %while.body281.i

if.end265.i.process_80211d.exit_crit_edge:        ; preds = %if.end265.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_80211d.exit

while.cond269.i:                                  ; preds = %while.body281.i
  %arrayidx275.1.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12, i32 1
  %69 = ptrtoint ptr %arrayidx275.1.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx275.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp278.not.1.i = icmp eq i8 %70, 0
  br i1 %cmp278.not.1.i, label %while.cond269.i.process_80211d.exit_crit_edge, label %while.body281.1.i

while.cond269.i.process_80211d.exit_crit_edge:    ; preds = %while.cond269.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_80211d.exit

while.body281.1.i:                                ; preds = %while.cond269.i
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %66)
  %cmp287.1.i = icmp eq i8 %70, %66
  br i1 %cmp287.1.i, label %while.body281.1.i.if.then289.i_crit_edge, label %while.cond269.1.i

while.body281.1.i.if.then289.i_crit_edge:         ; preds = %while.body281.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then289.i

while.cond269.1.i:                                ; preds = %while.body281.1.i
  %arrayidx275.2.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12, i32 2
  %71 = ptrtoint ptr %arrayidx275.2.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx275.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp278.not.2.i = icmp eq i8 %72, 0
  br i1 %cmp278.not.2.i, label %while.cond269.1.i.process_80211d.exit_crit_edge, label %while.body281.2.i

while.cond269.1.i.process_80211d.exit_crit_edge:  ; preds = %while.cond269.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_80211d.exit

while.body281.2.i:                                ; preds = %while.cond269.1.i
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %66)
  %cmp287.2.i = icmp eq i8 %72, %66
  br i1 %cmp287.2.i, label %while.body281.2.i.if.then289.i_crit_edge, label %while.cond269.2.i

while.body281.2.i.if.then289.i_crit_edge:         ; preds = %while.body281.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then289.i

while.cond269.2.i:                                ; preds = %while.body281.2.i
  %arrayidx275.3.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12, i32 3
  %73 = ptrtoint ptr %arrayidx275.3.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx275.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp278.not.3.i = icmp eq i8 %74, 0
  br i1 %cmp278.not.3.i, label %while.cond269.2.i.process_80211d.exit_crit_edge, label %while.body281.3.i

while.cond269.2.i.process_80211d.exit_crit_edge:  ; preds = %while.cond269.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_80211d.exit

while.body281.3.i:                                ; preds = %while.cond269.2.i
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %66)
  %cmp287.3.i = icmp eq i8 %74, %66
  br i1 %cmp287.3.i, label %while.body281.3.i.if.then289.i_crit_edge, label %while.cond269.3.i

while.body281.3.i.if.then289.i_crit_edge:         ; preds = %while.body281.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then289.i

while.cond269.3.i:                                ; preds = %while.body281.3.i
  %arrayidx275.4.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12, i32 4
  %75 = ptrtoint ptr %arrayidx275.4.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx275.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp278.not.4.i = icmp eq i8 %76, 0
  br i1 %cmp278.not.4.i, label %while.cond269.3.i.process_80211d.exit_crit_edge, label %while.body281.4.i

while.cond269.3.i.process_80211d.exit_crit_edge:  ; preds = %while.cond269.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_80211d.exit

while.body281.4.i:                                ; preds = %while.cond269.3.i
  call void @__sanitizer_cov_trace_cmp1(i8 %76, i8 %66)
  %cmp287.4.i = icmp eq i8 %76, %66
  br i1 %cmp287.4.i, label %while.body281.4.i.if.then289.i_crit_edge, label %while.cond269.4.i

while.body281.4.i.if.then289.i_crit_edge:         ; preds = %while.body281.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then289.i

while.cond269.4.i:                                ; preds = %while.body281.4.i
  %arrayidx275.5.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12, i32 5
  %77 = ptrtoint ptr %arrayidx275.5.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx275.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp278.not.5.i = icmp eq i8 %78, 0
  br i1 %cmp278.not.5.i, label %while.cond269.4.i.process_80211d.exit_crit_edge, label %while.body281.5.i

while.cond269.4.i.process_80211d.exit_crit_edge:  ; preds = %while.cond269.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_80211d.exit

while.body281.5.i:                                ; preds = %while.cond269.4.i
  call void @__sanitizer_cov_trace_cmp1(i8 %78, i8 %66)
  %cmp287.5.i = icmp eq i8 %78, %66
  br i1 %cmp287.5.i, label %while.body281.5.i.if.then289.i_crit_edge, label %while.cond269.5.i

while.body281.5.i.if.then289.i_crit_edge:         ; preds = %while.body281.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then289.i

while.cond269.5.i:                                ; preds = %while.body281.5.i
  %arrayidx275.6.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12, i32 6
  %79 = ptrtoint ptr %arrayidx275.6.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx275.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp278.not.6.i = icmp eq i8 %80, 0
  br i1 %cmp278.not.6.i, label %while.cond269.5.i.process_80211d.exit_crit_edge, label %while.body281.6.i

while.cond269.5.i.process_80211d.exit_crit_edge:  ; preds = %while.cond269.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_80211d.exit

while.body281.6.i:                                ; preds = %while.cond269.5.i
  call void @__sanitizer_cov_trace_cmp1(i8 %80, i8 %66)
  %cmp287.6.i = icmp eq i8 %80, %66
  br i1 %cmp287.6.i, label %while.body281.6.i.if.then289.i_crit_edge, label %while.cond269.6.i

while.body281.6.i.if.then289.i_crit_edge:         ; preds = %while.body281.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then289.i

while.cond269.6.i:                                ; preds = %while.body281.6.i
  %arrayidx275.7.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12, i32 7
  %81 = ptrtoint ptr %arrayidx275.7.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx275.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp278.not.7.i = icmp eq i8 %82, 0
  br i1 %cmp278.not.7.i, label %while.cond269.6.i.process_80211d.exit_crit_edge, label %while.body281.7.i

while.cond269.6.i.process_80211d.exit_crit_edge:  ; preds = %while.cond269.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_80211d.exit

while.body281.7.i:                                ; preds = %while.cond269.6.i
  call void @__sanitizer_cov_trace_cmp1(i8 %82, i8 %66)
  %cmp287.7.i = icmp eq i8 %82, %66
  br i1 %cmp287.7.i, label %while.body281.7.i.if.then289.i_crit_edge, label %while.cond269.7.i

while.body281.7.i.if.then289.i_crit_edge:         ; preds = %while.body281.7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then289.i

while.cond269.7.i:                                ; preds = %while.body281.7.i
  %arrayidx275.8.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12, i32 8
  %83 = ptrtoint ptr %arrayidx275.8.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx275.8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp278.not.8.i = icmp eq i8 %84, 0
  br i1 %cmp278.not.8.i, label %while.cond269.7.i.process_80211d.exit_crit_edge, label %while.body281.8.i

while.cond269.7.i.process_80211d.exit_crit_edge:  ; preds = %while.cond269.7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_80211d.exit

while.body281.8.i:                                ; preds = %while.cond269.7.i
  call void @__sanitizer_cov_trace_cmp1(i8 %84, i8 %66)
  %cmp287.8.i = icmp eq i8 %84, %66
  br i1 %cmp287.8.i, label %while.body281.8.i.if.then289.i_crit_edge, label %while.cond269.8.i

while.body281.8.i.if.then289.i_crit_edge:         ; preds = %while.body281.8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then289.i

while.cond269.8.i:                                ; preds = %while.body281.8.i
  %arrayidx275.9.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12, i32 9
  %85 = ptrtoint ptr %arrayidx275.9.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx275.9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp278.not.9.i = icmp eq i8 %86, 0
  br i1 %cmp278.not.9.i, label %while.cond269.8.i.process_80211d.exit_crit_edge, label %while.body281.9.i

while.cond269.8.i.process_80211d.exit_crit_edge:  ; preds = %while.cond269.8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_80211d.exit

while.body281.9.i:                                ; preds = %while.cond269.8.i
  call void @__sanitizer_cov_trace_cmp1(i8 %86, i8 %66)
  %cmp287.9.i = icmp eq i8 %86, %66
  br i1 %cmp287.9.i, label %while.body281.9.i.if.then289.i_crit_edge, label %while.cond269.9.i

while.body281.9.i.if.then289.i_crit_edge:         ; preds = %while.body281.9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then289.i

while.cond269.9.i:                                ; preds = %while.body281.9.i
  %arrayidx275.10.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12, i32 10
  %87 = ptrtoint ptr %arrayidx275.10.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx275.10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp278.not.10.i = icmp eq i8 %88, 0
  br i1 %cmp278.not.10.i, label %while.cond269.9.i.process_80211d.exit_crit_edge, label %while.body281.10.i

while.cond269.9.i.process_80211d.exit_crit_edge:  ; preds = %while.cond269.9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_80211d.exit

while.body281.10.i:                               ; preds = %while.cond269.9.i
  call void @__sanitizer_cov_trace_cmp1(i8 %88, i8 %66)
  %cmp287.10.i = icmp eq i8 %88, %66
  br i1 %cmp287.10.i, label %while.body281.10.i.if.then289.i_crit_edge, label %while.cond269.10.i

while.body281.10.i.if.then289.i_crit_edge:        ; preds = %while.body281.10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then289.i

while.cond269.10.i:                               ; preds = %while.body281.10.i
  %arrayidx275.11.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12, i32 11
  %89 = ptrtoint ptr %arrayidx275.11.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx275.11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp278.not.11.i = icmp eq i8 %90, 0
  br i1 %cmp278.not.11.i, label %while.cond269.10.i.process_80211d.exit_crit_edge, label %while.body281.11.i

while.cond269.10.i.process_80211d.exit_crit_edge: ; preds = %while.cond269.10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_80211d.exit

while.body281.11.i:                               ; preds = %while.cond269.10.i
  call void @__sanitizer_cov_trace_cmp1(i8 %90, i8 %66)
  %cmp287.11.i = icmp eq i8 %90, %66
  br i1 %cmp287.11.i, label %while.body281.11.i.if.then289.i_crit_edge, label %while.cond269.11.i

while.body281.11.i.if.then289.i_crit_edge:        ; preds = %while.body281.11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then289.i

while.cond269.11.i:                               ; preds = %while.body281.11.i
  %arrayidx275.12.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12, i32 12
  %91 = ptrtoint ptr %arrayidx275.12.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx275.12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp278.not.12.i = icmp eq i8 %92, 0
  br i1 %cmp278.not.12.i, label %while.cond269.11.i.process_80211d.exit_crit_edge, label %while.body281.12.i

while.cond269.11.i.process_80211d.exit_crit_edge: ; preds = %while.cond269.11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_80211d.exit

while.body281.12.i:                               ; preds = %while.cond269.11.i
  call void @__sanitizer_cov_trace_cmp1(i8 %92, i8 %66)
  %cmp287.12.i = icmp eq i8 %92, %66
  br i1 %cmp287.12.i, label %while.body281.12.i.if.then289.i_crit_edge, label %while.cond269.12.i

while.body281.12.i.if.then289.i_crit_edge:        ; preds = %while.body281.12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then289.i

while.cond269.12.i:                               ; preds = %while.body281.12.i
  %arrayidx275.13.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12, i32 13
  %93 = ptrtoint ptr %arrayidx275.13.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx275.13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp278.not.13.i = icmp ne i8 %94, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %94, i8 %66)
  %cmp287.13.i = icmp eq i8 %94, %66
  %or.cond.i = select i1 %cmp278.not.13.i, i1 %cmp287.13.i, i1 false
  br i1 %or.cond.i, label %while.cond269.12.i.if.then289.i_crit_edge, label %while.cond269.12.i.process_80211d.exit_crit_edge

while.cond269.12.i.process_80211d.exit_crit_edge: ; preds = %while.cond269.12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_80211d.exit

while.cond269.12.i.if.then289.i_crit_edge:        ; preds = %while.cond269.12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then289.i

while.body281.i:                                  ; preds = %if.end265.i
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %66)
  %cmp287.i = icmp eq i8 %68, %66
  br i1 %cmp287.i, label %while.body281.i.if.then289.i_crit_edge, label %while.cond269.i

while.body281.i.if.then289.i_crit_edge:           ; preds = %while.body281.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then289.i

if.then289.i:                                     ; preds = %while.body281.i.if.then289.i_crit_edge, %while.cond269.12.i.if.then289.i_crit_edge, %while.body281.12.i.if.then289.i_crit_edge, %while.body281.11.i.if.then289.i_crit_edge, %while.body281.10.i.if.then289.i_crit_edge, %while.body281.9.i.if.then289.i_crit_edge, %while.body281.8.i.if.then289.i_crit_edge, %while.body281.7.i.if.then289.i_crit_edge, %while.body281.6.i.if.then289.i_crit_edge, %while.body281.5.i.if.then289.i_crit_edge, %while.body281.4.i.if.then289.i_crit_edge, %while.body281.3.i.if.then289.i_crit_edge, %while.body281.2.i.if.then289.i_crit_edge, %while.body281.1.i.if.then289.i_crit_edge
  %conv270.lcssa441.i = phi i32 [ 0, %while.body281.i.if.then289.i_crit_edge ], [ 1, %while.body281.1.i.if.then289.i_crit_edge ], [ 2, %while.body281.2.i.if.then289.i_crit_edge ], [ 3, %while.body281.3.i.if.then289.i_crit_edge ], [ 4, %while.body281.4.i.if.then289.i_crit_edge ], [ 5, %while.body281.5.i.if.then289.i_crit_edge ], [ 6, %while.body281.6.i.if.then289.i_crit_edge ], [ 7, %while.body281.7.i.if.then289.i_crit_edge ], [ 8, %while.body281.8.i.if.then289.i_crit_edge ], [ 9, %while.body281.9.i.if.then289.i_crit_edge ], [ 10, %while.body281.10.i.if.then289.i_crit_edge ], [ 11, %while.body281.11.i.if.then289.i_crit_edge ], [ 12, %while.body281.12.i.if.then289.i_crit_edge ], [ 13, %while.cond269.12.i.if.then289.i_crit_edge ]
  %ScanType292.i = getelementptr %struct.rt_channel_info, ptr %channel_set267.i, i32 %conv270.lcssa441.i, i32 1
  %95 = ptrtoint ptr %ScanType292.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ScanType292.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp293.i = icmp eq i32 %96, 0
  br i1 %cmp293.i, label %if.then295.i, label %if.then289.i.process_80211d.exit_crit_edge

if.then289.i.process_80211d.exit_crit_edge:       ; preds = %if.then289.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_80211d.exit

if.then295.i:                                     ; preds = %if.then289.i
  call void @__sanitizer_cov_trace_pc() #19
  %97 = ptrtoint ptr %ScanType292.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %ScanType292.i, align 4
  br label %process_80211d.exit

process_80211d.exit:                              ; preds = %if.then295.i, %if.then289.i.process_80211d.exit_crit_edge, %while.cond269.12.i.process_80211d.exit_crit_edge, %while.cond269.11.i.process_80211d.exit_crit_edge, %while.cond269.10.i.process_80211d.exit_crit_edge, %while.cond269.9.i.process_80211d.exit_crit_edge, %while.cond269.8.i.process_80211d.exit_crit_edge, %while.cond269.7.i.process_80211d.exit_crit_edge, %while.cond269.6.i.process_80211d.exit_crit_edge, %while.cond269.5.i.process_80211d.exit_crit_edge, %while.cond269.4.i.process_80211d.exit_crit_edge, %while.cond269.3.i.process_80211d.exit_crit_edge, %while.cond269.2.i.process_80211d.exit_crit_edge, %while.cond269.1.i.process_80211d.exit_crit_edge, %while.cond269.i.process_80211d.exit_crit_edge, %if.end265.i.process_80211d.exit_crit_edge, %cleanup.i
  %call21 = call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call) #17
  %bss_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 1
  %98 = ptrtoint ptr %bss_cnt to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bss_cnt, align 4
  %inc = add i32 %99, 1
  store i32 %inc, ptr %bss_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %process_80211d.exit, %if.then18, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @OnBeacon(ptr noundef %padapter, ptr nocapture noundef readonly %precv_frame) #2 align 64 {
entry:
  %ielen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmeextpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_data, align 4
  %len1 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 7
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ielen) #17
  %4 = ptrtoint ptr %ielen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ielen, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %add.ptr2 = getelementptr i8, ptr %1, i32 36
  %sub4 = add i32 %3, -36
  %call = call ptr @rtw_get_ie(ptr noundef %add.ptr2, i32 noundef 50, ptr noundef nonnull %ielen, i32 noundef %sub4) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %land.lhs.true

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %ielen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %land.lhs.true.if.end19_crit_edge, label %if.then

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then:                                          ; preds = %land.lhs.true
  %add.ptr5 = getelementptr i8, ptr %call, i32 1
  %add.ptr6 = getelementptr i8, ptr %add.ptr5, i32 %6
  %7 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %8)
  %cmp7 = icmp eq i8 %8, 45
  br i1 %cmp7, label %land.lhs.true9, label %if.then.if.end19_crit_edge

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

land.lhs.true9:                                   ; preds = %if.then
  %add.ptr10 = getelementptr i8, ptr %call, i32 2
  %add.ptr11 = getelementptr i8, ptr %add.ptr10, i32 %6
  %9 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %10)
  %cmp13.not = icmp eq i8 %10, 45
  br i1 %cmp13.not, label %land.lhs.true9.if.end19_crit_edge, label %if.then15

land.lhs.true9.if.end19_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then15:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #19
  %11 = trunc i32 %6 to i8
  %conv17 = add i8 %11, -1
  %12 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv17, ptr %add.ptr5, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %land.lhs.true9.if.end19_crit_edge, %if.then.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %entry.if.end19_crit_edge
  %sitesurvey_res = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17
  %13 = ptrtoint ptr %sitesurvey_res to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sitesurvey_res, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp20 = icmp eq i32 %14, 3
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  call void @report_survey_event(ptr noundef %padapter, ptr noundef %precv_frame)
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %15 = ptrtoint ptr %1 to i32
  %add = add i32 %15, 16
  %16 = inttoptr i32 %add to ptr
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %call24 = call ptr @get_my_bssid(ptr noundef %network) #17
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %16, ptr noundef dereferenceable(6) %call24, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool26.not = icmp eq i32 %bcmp, 0
  br i1 %tobool26.not, label %if.then27, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then27:                                        ; preds = %if.end23
  %17 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end47, label %if.then30

if.then30:                                        ; preds = %if.then27
  %call31 = call ptr @_rtw_malloc(i32 noundef 872) #17
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.then30.if.end42_crit_edge, label %if.then33

if.then30.if.end42_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42

if.then33:                                        ; preds = %if.then30
  %call34 = call zeroext i8 @collect_bss_info(ptr noundef %padapter, ptr noundef %precv_frame, ptr noundef nonnull %call31)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call34)
  %cmp36 = icmp eq i8 %call34, 1
  br i1 %cmp36, label %if.then38, label %if.then33.if.end41_crit_edge

if.then33.if.end41_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.then38:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #19
  %cur_network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20
  %network39 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6
  call void @update_network(ptr noundef %network39, ptr noundef nonnull %call31, ptr noundef %padapter, i1 noundef zeroext true) #17
  call void @rtw_get_bcn_info(ptr noundef %cur_network) #17
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.then33.if.end41_crit_edge
  call void @kfree(ptr noundef nonnull %call31) #17
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then30.if.end42_crit_edge
  %sub44 = add i32 %3, -24
  %call45 = call zeroext i8 @check_assoc_AP(ptr noundef %add.ptr, i32 noundef %sub44) #17
  %assoc_AP_vendor = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 14
  %19 = ptrtoint ptr %assoc_AP_vendor to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call45, ptr %assoc_AP_vendor, align 2
  call void @update_TSF(ptr noundef %mlmeextpriv, ptr noundef %1, i32 noundef %3) #17
  %adaptive_tsf_done = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 28
  %20 = ptrtoint ptr %adaptive_tsf_done to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %adaptive_tsf_done, align 8
  %DrvBcnEarly = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 32
  %21 = ptrtoint ptr %DrvBcnEarly to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %DrvBcnEarly, align 8
  %DrvBcnTimeOut = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 33
  %22 = ptrtoint ptr %DrvBcnTimeOut to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %DrvBcnTimeOut, align 1
  %bcn_delay_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 29
  %link_timer.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 20
  %23 = call ptr @memset(ptr %bcn_delay_cnt, i32 0, i32 76)
  %call.i = call i32 @del_timer_sync(ptr noundef %link_timer.i) #17
  %24 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mlmext_info, align 4
  %and.i = and i32 %25, -769
  %or.i = or i32 %and.i, 512
  store i32 %or.i, ptr %mlmext_info, align 4
  %auth_seq.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 4
  %26 = ptrtoint ptr %auth_seq.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %auth_seq.i, align 4
  %reauth_count.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 1
  %27 = ptrtoint ptr %reauth_count.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %reauth_count.i, align 4
  %reassoc_count.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 2
  %28 = ptrtoint ptr %reassoc_count.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %reassoc_count.i, align 4
  %link_count.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 3
  %29 = ptrtoint ptr %link_count.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %link_count.i, align 4
  %retry.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 26
  %30 = ptrtoint ptr %retry.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %retry.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_clnt_auth.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@OnBeacon, %if.then.i)) #17
          to label %start_clnt_auth.exit [label %if.then.i], !srcloc !153

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  %pnetdev.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %31 = ptrtoint ptr %pnetdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pnetdev.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @start_clnt_auth.__UNIQUE_ID_ddebug351, ptr noundef %32, ptr noundef nonnull @.str.14) #17
  br label %start_clnt_auth.exit

start_clnt_auth.exit:                             ; preds = %if.then.i, %if.end42
  call void @issue_auth(ptr noundef %padapter, ptr noundef null, i16 noundef zeroext 0) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %33, 30
  %call.i.i = call i32 @mod_timer(ptr noundef %link_timer.i, i32 noundef %add.i.i) #17
  br label %cleanup

if.end47:                                         ; preds = %if.then27
  %34 = and i32 %18, 16387
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %34)
  %.not = icmp eq i32 %34, 16386
  br i1 %.not, label %if.then56, label %if.else

if.then56:                                        ; preds = %if.end47
  %add57 = add i32 %15, 10
  %35 = inttoptr i32 %add57 to ptr
  %call58 = call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %35) #17
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.then56.cleanup_crit_edge, label %if.then60

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then60:                                        ; preds = %if.then56
  %call61 = call i32 @rtw_check_bcn_info(ptr noundef %padapter, ptr noundef %1, i32 noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.body64, label %if.end76

do.body64:                                        ; preds = %if.then60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @OnBeacon.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@OnBeacon, %if.then69)) #17
          to label %do.end72 [label %if.then69], !srcloc !153

if.then69:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #19
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %36 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pnetdev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @OnBeacon.__UNIQUE_ID_ddebug345, ptr noundef %37, ptr noundef nonnull @.str.3) #17
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %do.body64
  %mac_address = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 1
  %call75 = call i32 @receive_disconnect(ptr noundef %padapter, ptr noundef %mac_address, i16 noundef zeroext 0)
  br label %cleanup

if.end76:                                         ; preds = %if.then60
  %sta_stats = getelementptr inbounds %struct.sta_info, ptr %call58, i32 0, i32 34
  %38 = ptrtoint ptr %sta_stats to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %sta_stats, align 8
  %rx_ctrl_pkts = getelementptr inbounds %struct.sta_info, ptr %call58, i32 0, i32 34, i32 6
  %40 = ptrtoint ptr %rx_ctrl_pkts to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rx_ctrl_pkts, align 8
  %add78 = add i64 %41, %39
  %rx_data_pkts = getelementptr inbounds %struct.sta_info, ptr %call58, i32 0, i32 34, i32 7
  %42 = ptrtoint ptr %rx_data_pkts to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rx_data_pkts, align 8
  %add80 = add i64 %add78, %43
  %and81 = and i64 %add80, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and81)
  %cmp82 = icmp eq i64 %and81, 0
  br i1 %cmp82, label %if.then84, label %if.end76.if.end85_crit_edge

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end85

if.then84:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #19
  call void @update_beacon_info(ptr noundef %padapter, ptr noundef %1, i32 noundef %3, ptr noundef nonnull %call58) #17
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end76.if.end85_crit_edge
  call void @adaptive_early_32k(ptr noundef %mlmeextpriv, ptr noundef %1, i32 noundef %3) #17
  br label %cleanup

if.else:                                          ; preds = %if.end47
  %and49 = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and49)
  %cmp89 = icmp eq i32 %and49, 1
  br i1 %cmp89, label %if.then91, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then91:                                        ; preds = %if.else
  %add92 = add i32 %15, 10
  %44 = inttoptr i32 %add92 to ptr
  %call93 = call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %44) #17
  %tobool94.not = icmp eq ptr %call93, null
  br i1 %tobool94.not, label %if.else109, label %if.then95

if.then95:                                        ; preds = %if.then91
  %sta_stats96 = getelementptr inbounds %struct.sta_info, ptr %call93, i32 0, i32 34
  %45 = ptrtoint ptr %sta_stats96 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %sta_stats96, align 8
  %rx_ctrl_pkts99 = getelementptr inbounds %struct.sta_info, ptr %call93, i32 0, i32 34, i32 6
  %47 = ptrtoint ptr %rx_ctrl_pkts99 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %rx_ctrl_pkts99, align 8
  %add100 = add i64 %48, %46
  %rx_data_pkts102 = getelementptr inbounds %struct.sta_info, ptr %call93, i32 0, i32 34, i32 7
  %49 = ptrtoint ptr %rx_data_pkts102 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %rx_data_pkts102, align 8
  %add103 = add i64 %add100, %50
  %and104 = and i64 %add103, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and104)
  %cmp105 = icmp eq i64 %and104, 0
  br i1 %cmp105, label %if.then107, label %if.then95.cleanup_crit_edge

if.then95.cleanup_crit_edge:                      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then107:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #19
  call void @update_beacon_info(ptr noundef %padapter, ptr noundef %1, i32 noundef %3, ptr noundef nonnull %call93) #17
  br label %cleanup

if.else109:                                       ; preds = %if.then91
  %call110 = call i32 @allocate_fw_sta_entry(ptr noundef %padapter) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call110)
  %cmp111 = icmp eq i32 %call110, 32
  br i1 %cmp111, label %if.else109.cleanup_crit_edge, label %if.end114

if.else109.cleanup_crit_edge:                     ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end114:                                        ; preds = %if.else109
  %call119 = call i32 @update_sta_support_rate(ptr noundef %padapter, ptr noundef %add.ptr2, i32 noundef %sub4, i32 noundef %call110) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp eq i32 %call119, 0
  br i1 %cmp120, label %if.then122, label %if.end123

if.then122:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #19
  %status = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40, i32 %call110, i32 1
  %51 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %status, align 4
  br label %cleanup

if.end123:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #19
  call void @update_TSF(ptr noundef %mlmeextpriv, ptr noundef %1, i32 noundef %3) #17
  call void @report_add_sta_event(ptr noundef %padapter, ptr noundef %44, i32 noundef %call110)
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %if.then122, %if.else109.cleanup_crit_edge, %if.then107, %if.then95.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end85, %do.end72, %if.then56.cleanup_crit_edge, %start_clnt_auth.exit, %if.end23.cleanup_crit_edge, %if.then22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ielen) #17
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_my_bssid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_malloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @collect_bss_info(ptr noundef %padapter, ptr nocapture noundef readonly %precv_frame, ptr noundef %bssid) local_unnamed_addr #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #17
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_data, align 4
  %len1 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 7
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1, align 4
  %sub = add i32 %3, -24
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %sub)
  %cmp = icmp ugt i32 %sub, 768
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = call ptr @memset(ptr %bssid, i32 0, i32 872)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 2
  %8 = lshr i16 %7, 8
  %9 = trunc i16 %8 to i8
  %trunc = and i8 %9, -4
  %10 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %trunc, label %if.end.if.end25_crit_edge [
    i8 -128, label %if.end.if.end25.sink.split_crit_edge
    i8 80, label %if.then10
    i8 64, label %if.then17
  ]

if.end.if.end25.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25.sink.split

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25.sink.split

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.then17, %if.then10, %if.end.if.end25.sink.split_crit_edge
  %.sink312 = phi i8 [ 3, %if.then10 ], [ 2, %if.then17 ], [ 1, %if.end.if.end25.sink.split_crit_edge ]
  %ie_offset.0.ph = phi i32 [ 12, %if.then10 ], [ 0, %if.then17 ], [ 12, %if.end.if.end25.sink.split_crit_edge ]
  %reserved11 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bssid, i32 0, i32 2
  %11 = ptrtoint ptr %reserved11 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink312, ptr %reserved11, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %if.end.if.end25_crit_edge
  %ie_offset.0 = phi i32 [ 12, %if.end.if.end25_crit_edge ], [ %ie_offset.0.ph, %if.end25.sink.split ]
  %add = add nuw nsw i32 %3, 80
  %12 = ptrtoint ptr %bssid to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %add, ptr %bssid, align 1
  %ie_length = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bssid, i32 0, i32 11
  %13 = ptrtoint ptr %ie_length to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %sub, ptr %ie_length, align 1
  %ies = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bssid, i32 0, i32 12
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %14 = call ptr @memcpy(ptr %ies, ptr %add.ptr, i32 %sub)
  %RecvSignalPower = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 34, i32 8
  %15 = ptrtoint ptr %RecvSignalPower to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %RecvSignalPower, align 1
  %conv27 = sext i8 %16 to i32
  %rssi = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bssid, i32 0, i32 5
  %17 = ptrtoint ptr %rssi to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %conv27, ptr %rssi, align 1
  %SignalQuality = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 34, i32 1
  %18 = ptrtoint ptr %SignalQuality to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %SignalQuality, align 1
  %phy_info30 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bssid, i32 0, i32 10
  %signal_quality = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bssid, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %signal_quality to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %signal_quality, align 1
  %SignalStrength = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 34, i32 10
  %21 = ptrtoint ptr %SignalStrength to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %SignalStrength, align 1
  %23 = ptrtoint ptr %phy_info30 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %phy_info30, align 1
  %add.ptr37 = getelementptr i8, ptr %ies, i32 %ie_offset.0
  %sub40 = sub nsw i32 %sub, %ie_offset.0
  %call = call ptr @rtw_get_ie(ptr noundef %add.ptr37, i32 noundef 0, ptr noundef nonnull %len, i32 noundef %sub40) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end25.cleanup_crit_edge, label %if.end42

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end42:                                         ; preds = %if.end25
  %add.ptr43 = getelementptr i8, ptr %call, i32 1
  %24 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool44.not = icmp eq i8 %25, 0
  br i1 %tobool44.not, label %if.else58, label %if.then45

if.then45:                                        ; preds = %if.end42
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %27)
  %cmp46 = icmp ugt i32 %27, 32
  br i1 %cmp46, label %if.then45.cleanup_crit_edge, label %if.end49

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end49:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  %ssid = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bssid, i32 0, i32 3
  %ssid50 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bssid, i32 0, i32 3, i32 1
  %add.ptr52 = getelementptr i8, ptr %call, i32 2
  %conv54 = zext i8 %25 to i32
  %28 = call ptr @memcpy(ptr %ssid50, ptr %add.ptr52, i32 %conv54)
  %29 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr43, align 1
  %conv56 = zext i8 %30 to i32
  %31 = ptrtoint ptr %ssid to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %conv56, ptr %ssid, align 1
  br label %if.end61

if.else58:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  %ssid59 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bssid, i32 0, i32 3
  %32 = ptrtoint ptr %ssid59 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 0, ptr %ssid59, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.else58, %if.end49
  %supported_rates = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bssid, i32 0, i32 9
  %33 = call ptr @memset(ptr %supported_rates, i32 0, i32 16)
  %34 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %ie_length, align 1
  %sub69 = sub i32 %35, %ie_offset.0
  %call70 = call ptr @rtw_get_ie(ptr noundef %add.ptr37, i32 noundef 1, ptr noundef nonnull %len, i32 noundef %sub69) #17
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %if.end61.if.end80_crit_edge, label %if.then72

if.end61.if.end80_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end80

if.then72:                                        ; preds = %if.end61
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %37)
  %cmp73 = icmp ugt i32 %37, 16
  br i1 %cmp73, label %if.then72.cleanup_crit_edge, label %if.end76

if.then72.cleanup_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end76:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr79 = getelementptr i8, ptr %call70, i32 2
  %38 = call ptr @memcpy(ptr %supported_rates, ptr %add.ptr79, i32 %37)
  br label %if.end80

if.end80:                                         ; preds = %if.end76, %if.end61.if.end80_crit_edge
  %i.0 = phi i32 [ %37, %if.end76 ], [ 0, %if.end61.if.end80_crit_edge ]
  %39 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %ie_length, align 1
  %sub87 = sub i32 %40, %ie_offset.0
  %call88 = call ptr @rtw_get_ie(ptr noundef %add.ptr37, i32 noundef 50, ptr noundef nonnull %len, i32 noundef %sub87) #17
  %tobool89.not = icmp eq ptr %call88, null
  br i1 %tobool89.not, label %if.end80.if.end100_crit_edge, label %if.then90

if.end80.if.end100_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end100

if.then90:                                        ; preds = %if.end80
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len, align 4
  %sub91 = sub nuw nsw i32 16, %i.0
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %sub91)
  %cmp92 = icmp ugt i32 %42, %sub91
  br i1 %cmp92, label %if.then90.cleanup_crit_edge, label %if.end95

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end95:                                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr98 = getelementptr i8, ptr %supported_rates, i32 %i.0
  %add.ptr99 = getelementptr i8, ptr %call88, i32 2
  %43 = call ptr @memcpy(ptr %add.ptr98, ptr %add.ptr99, i32 %42)
  br label %if.end100

if.end100:                                        ; preds = %if.end95, %if.end80.if.end100_crit_edge
  %network_type_in_use = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bssid, i32 0, i32 6
  %44 = ptrtoint ptr %network_type_in_use to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 3, ptr %network_type_in_use, align 1
  %45 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %ie_length, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %46)
  %cmp102 = icmp ult i32 %46, 12
  br i1 %cmp102, label %if.end100.cleanup_crit_edge, label %if.end105

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end105:                                        ; preds = %if.end100
  %sub112 = sub nuw i32 %46, %ie_offset.0
  %call113 = call ptr @rtw_get_ie(ptr noundef %add.ptr37, i32 noundef 3, ptr noundef nonnull %len, i32 noundef %sub112) #17
  %configuration = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bssid, i32 0, i32 7
  %ds_config = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bssid, i32 0, i32 7, i32 3
  %47 = ptrtoint ptr %ds_config to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 0, ptr %ds_config, align 1
  %48 = ptrtoint ptr %configuration to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 0, ptr %configuration, align 1
  %tobool116.not = icmp eq ptr %call113, null
  br i1 %tobool116.not, label %if.else122, label %if.then117

if.then117:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr118 = getelementptr i8, ptr %call113, i32 2
  %49 = ptrtoint ptr %add.ptr118 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr118, align 1
  br label %if.end143

if.else122:                                       ; preds = %if.end105
  %51 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %ie_length, align 1
  %sub129 = sub i32 %52, %ie_offset.0
  %call130 = call ptr @rtw_get_ie(ptr noundef %add.ptr37, i32 noundef 61, ptr noundef nonnull %len, i32 noundef %sub129) #17
  %tobool131.not = icmp eq ptr %call130, null
  br i1 %tobool131.not, label %if.else137, label %if.then132

if.then132:                                       ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr133 = getelementptr i8, ptr %call130, i32 2
  %53 = ptrtoint ptr %add.ptr133 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr133, align 1
  br label %if.end143

if.else137:                                       ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #19
  %call138 = call zeroext i8 @rtw_get_oper_ch(ptr noundef %padapter) #17
  br label %if.end143

if.end143:                                        ; preds = %if.else137, %if.then132, %if.then117
  %.sink313 = phi i8 [ %54, %if.then132 ], [ %call138, %if.else137 ], [ %50, %if.then117 ]
  %conv134 = zext i8 %.sink313 to i32
  %55 = ptrtoint ptr %ds_config to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %conv134, ptr %ds_config, align 1
  %call146 = call ptr @rtw_get_beacon_interval_from_ie(ptr noundef %ies) #17
  %56 = ptrtoint ptr %call146 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %le32_tmp.0.copyload = load i16, ptr %call146, align 1
  %le32_tmp.0.insert.ext = zext i16 %le32_tmp.0.copyload to i32
  %le32_tmp.0.insert.shift = shl nuw i32 %le32_tmp.0.insert.ext, 16
  %le32_tmp.0.insert.insert = or i32 %le32_tmp.0.insert.shift, 65535
  %57 = call i32 @llvm.bswap.i32(i32 %le32_tmp.0.insert.insert)
  %beacon_period = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bssid, i32 0, i32 7, i32 1
  %58 = ptrtoint ptr %beacon_period to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %57, ptr %beacon_period, align 1
  %call148 = call zeroext i16 @rtw_get_capability(ptr noundef %bssid) #17
  %conv149 = zext i16 %call148 to i32
  %and150 = and i32 %conv149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  %not.tobool151.not = xor i1 %tobool151.not, true
  %. = zext i1 %not.tobool151.not to i32
  %.320 = select i1 %tobool151.not, i32 16, i32 10
  %infrastructure_mode156 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bssid, i32 0, i32 8
  %59 = ptrtoint ptr %infrastructure_mode156 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %., ptr %infrastructure_mode156, align 1
  %mac_address157 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bssid, i32 0, i32 1
  %60 = ptrtoint ptr %1 to i32
  %add159 = add i32 %.320, %60
  %61 = inttoptr i32 %add159 to ptr
  %62 = call ptr @memcpy(ptr %mac_address157, ptr %61, i32 6)
  %and162 = lshr i32 %conv149, 4
  %and162.lobit = and i32 %and162, 1
  %63 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bssid, i32 0, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %and162.lobit, ptr %63, align 1
  %atim_window = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bssid, i32 0, i32 7, i32 2
  %65 = ptrtoint ptr %atim_window to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 0, ptr %atim_window, align 1
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 48
  %66 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %cmp170 = icmp eq i8 %67, 1
  br i1 %cmp170, label %land.lhs.true, label %if.end143.if.end198_crit_edge

if.end143.if.end198_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end198

land.lhs.true:                                    ; preds = %if.end143
  %bwmode_updated = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 32
  %68 = ptrtoint ptr %bwmode_updated to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bwmode_updated, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp173 = icmp eq i8 %69, 0
  br i1 %cmp173, label %if.then175, label %land.lhs.true.if.end198_crit_edge

land.lhs.true.if.end198_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end198

if.then175:                                       ; preds = %land.lhs.true
  %70 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %ie_length, align 1
  %sub182 = sub i32 %71, %ie_offset.0
  %call183 = call ptr @rtw_get_ie(ptr noundef %add.ptr37, i32 noundef 45, ptr noundef nonnull %len, i32 noundef %sub182) #17
  %tobool184.not = icmp eq ptr %call183, null
  br i1 %tobool184.not, label %if.then175.if.else195_crit_edge, label %land.lhs.true185

if.then175.if.else195_crit_edge:                  ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else195

land.lhs.true185:                                 ; preds = %if.then175
  %72 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp186.not = icmp eq i32 %73, 0
  br i1 %cmp186.not, label %land.lhs.true185.if.else195_crit_edge, label %if.then188

land.lhs.true185.if.else195_crit_edge:            ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else195

if.then188:                                       ; preds = %land.lhs.true185
  %add.ptr189 = getelementptr i8, ptr %call183, i32 2
  %74 = ptrtoint ptr %add.ptr189 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %add.ptr189, align 1
  %76 = and i16 %75, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool192.not = icmp eq i16 %76, 0
  br i1 %tobool192.not, label %if.then188.if.end198_crit_edge, label %if.then193

if.then188.if.end198_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end198

if.then193:                                       ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #19
  %num_FortyMHzIntolerant = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 32
  br label %if.end198.sink.split

if.else195:                                       ; preds = %land.lhs.true185.if.else195_crit_edge, %if.then175.if.else195_crit_edge
  %num_sta_no_ht = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 31
  br label %if.end198.sink.split

if.end198.sink.split:                             ; preds = %if.else195, %if.then193
  %num_sta_no_ht.sink319 = phi ptr [ %num_sta_no_ht, %if.else195 ], [ %num_FortyMHzIntolerant, %if.then193 ]
  %77 = ptrtoint ptr %num_sta_no_ht.sink319 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_sta_no_ht.sink319, align 4
  %inc196 = add i32 %78, 1
  store i32 %inc196, ptr %num_sta_no_ht.sink319, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.end198.sink.split, %if.then188.if.end198_crit_edge, %land.lhs.true.if.end198_crit_edge, %if.end143.if.end198_crit_edge
  %79 = ptrtoint ptr %ds_config to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %ds_config, align 1
  %call201 = call zeroext i8 @rtw_get_oper_ch(ptr noundef %padapter) #17
  %conv202 = zext i8 %call201 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %conv202)
  %cmp203.not = icmp eq i32 %80, %conv202
  br i1 %cmp203.not, label %if.end198.cleanup_crit_edge, label %if.then205

if.end198.cleanup_crit_edge:                      ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then205:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #19
  %81 = ptrtoint ptr %signal_quality to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 101, ptr %signal_quality, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then205, %if.end198.cleanup_crit_edge, %if.end100.cleanup_crit_edge, %if.then90.cleanup_crit_edge, %if.then72.cleanup_crit_edge, %if.then45.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %if.then45.cleanup_crit_edge ], [ 0, %if.then72.cleanup_crit_edge ], [ 0, %if.then90.cleanup_crit_edge ], [ 0, %if.end100.cleanup_crit_edge ], [ 1, %if.then205 ], [ 1, %if.end198.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #17
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_network(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_get_bcn_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @check_assoc_AP(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_TSF(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @start_clnt_auth(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %link_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 20
  %call = tail call i32 @del_timer_sync(ptr noundef %link_timer) #17
  %0 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %1, -769
  %or = or i32 %and, 512
  store i32 %or, ptr %mlmext_info, align 4
  %auth_seq = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 4
  %2 = ptrtoint ptr %auth_seq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %auth_seq, align 4
  %reauth_count = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 1
  %3 = ptrtoint ptr %reauth_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %reauth_count, align 4
  %reassoc_count = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 2
  %4 = ptrtoint ptr %reassoc_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %reassoc_count, align 4
  %link_count = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 3
  %5 = ptrtoint ptr %link_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %link_count, align 4
  %retry = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 26
  %6 = ptrtoint ptr %retry to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %retry, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_clnt_auth.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_clnt_auth, %if.then)) #17
          to label %do.end7 [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %7 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @start_clnt_auth.__UNIQUE_ID_ddebug351, ptr noundef %8, ptr noundef nonnull @.str.14) #17
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  tail call void @issue_auth(ptr noundef %padapter, ptr noundef null, i16 noundef zeroext 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %9, 30
  %call.i = tail call i32 @mod_timer(ptr noundef %link_timer, i32 noundef %add.i) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_check_bcn_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @receive_disconnect(ptr noundef %padapter, ptr noundef %MacAddr, i16 noundef zeroext %reason) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %call = tail call ptr @get_my_bssid(ptr noundef %network) #17
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddr, ptr noundef dereferenceable(6) %call, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp = icmp eq i32 %and, 2
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %and4 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mlmext_info, align 4
  tail call void @report_del_sta_event(ptr noundef %padapter, ptr noundef %MacAddr, i16 noundef zeroext %reason)
  br label %cleanup

if.else:                                          ; preds = %if.then2
  %and9 = and i32 %1, 9984
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else.cleanup_crit_edge, label %if.then11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %mlmext_info, align 4
  tail call void @report_join_res(ptr noundef %padapter, i32 noundef -2)
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.else.cleanup_crit_edge, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_beacon_info(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @adaptive_early_32k(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @allocate_fw_sta_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_sta_support_rate(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @report_add_sta_event(ptr noundef %padapter, ptr nocapture noundef readonly %MacAddr, i32 noundef %cam_idx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 20) #17
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call) #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 56, ptr %cmdcode, align 4
  %cmdsz5 = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %cmdsz5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 20, ptr %cmdsz5, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %parmbuf, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rspsz, align 4
  %7 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %call1, align 4
  %bf.clear = and i32 %bf.load, -16777216
  %bf.set8 = or i32 %bf.clear, 720908
  store i32 %bf.set8, ptr %call1, align 4
  %event_seq = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event_seq, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %event_seq, i32 1, i32 3, i32 1) #17
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %event_seq, ptr %event_seq, i32 1, ptr elementtype(i32) %event_seq) #17, !srcloc !155
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !156
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load10 = load i32, ptr %call1, align 4
  %bf.shl = shl i32 %asmresult.i.i.i.i, 24
  %bf.clear11 = and i32 %bf.load10, 16777215
  %bf.set12 = or i32 %bf.clear11, %bf.shl
  store i32 %bf.set12, ptr %call1, align 4
  %add.ptr = getelementptr i8, ptr %call1, i32 8
  %10 = call ptr @memcpy(ptr %add.ptr, ptr %MacAddr, i32 6)
  %cam_id = getelementptr i8, ptr %call1, i32 16
  %11 = ptrtoint ptr %cam_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cam_idx, ptr %cam_id, align 4
  %call13 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_wep_decrypt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_access_ctrl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @issue_auth(ptr noundef %padapter, ptr noundef %psta, i16 noundef zeroext %status) local_unnamed_addr #2 align 64 {
entry:
  %le_tmp = alloca i16, align 2
  %le_tmp32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %le_tmp) #17
  %call1.i.i = tail call ptr @rtw_alloc_xmitframe_ext(ptr noundef %xmitpriv) #17
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %entry.cleanup_crit_edge, label %if.end4.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4.i.i:                                      ; preds = %entry
  %call5.i.i = tail call ptr @rtw_alloc_xmitbuf_ext(ptr noundef %xmitpriv) #17
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %cleanup

if.end:                                           ; preds = %if.end4.i.i
  %frame_tag.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 3
  %0 = ptrtoint ptr %frame_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %frame_tag.i.i, align 4
  %pxmitbuf10.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call5.i.i, ptr %pxmitbuf10.i.i, align 4
  %pbuf.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %pbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pbuf.i.i, align 4
  %buf_addr.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %buf_addr.i.i, align 4
  %priv_data.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.i.i, ptr %priv_data.i.i, align 4
  %hdrlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 24, ptr %hdrlen.i, align 2
  %nr_frags.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 10
  %7 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %nr_frags.i, align 4
  %priority.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 16
  %8 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 7, ptr %priority.i, align 2
  %mac_id.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 18
  %9 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %mac_id.i, align 4
  %qsel.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 36
  %10 = ptrtoint ptr %qsel.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 18, ptr %qsel.i, align 2
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %pktlen.i, align 4
  %tx_rate.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %12 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_rate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp.i = icmp eq i8 %13, 2
  %..i = select i1 %cmp.i, i8 1, i8 2
  %call.i = tail call zeroext i8 @rtw_get_mgntframe_raid(ptr noundef %padapter, i8 noundef zeroext %..i) #17
  %raid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 27
  %14 = ptrtoint ptr %raid.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call.i, ptr %raid.i, align 1
  %15 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tx_rate.i, align 1
  %rate.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 39
  %17 = ptrtoint ptr %rate.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %rate.i, align 1
  %encrypt.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 11
  %18 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %encrypt.i, align 1
  %bswenc.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %bswenc.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %bswenc.i, align 2
  %qos_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 25
  %20 = ptrtoint ptr %qos_en.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %qos_en.i, align 1
  %ht_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 26
  %21 = ptrtoint ptr %ht_en.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %ht_en.i, align 4
  %bwmode.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %bwmode.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %bwmode.i, align 2
  %ch_offset.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 29
  %23 = ptrtoint ptr %ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %ch_offset.i, align 1
  %sgi.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 30
  %24 = ptrtoint ptr %sgi.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %sgi.i, align 4
  %mgnt_seq.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 3
  %25 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mgnt_seq.i, align 4
  %seqnum.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %seqnum.i, align 2
  %retry_ctrl.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 41
  %28 = ptrtoint ptr %retry_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %retry_ctrl.i, align 1
  %mbssid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 42
  %29 = ptrtoint ptr %mbssid.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %mbssid.i, align 4
  %30 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf_addr.i.i, align 4
  %32 = call ptr @memset(ptr %31, i32 0, i32 104)
  %33 = load ptr, ptr %buf_addr.i.i, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 40
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %add.ptr, align 2
  %35 = ptrtoint ptr %add.ptr to i32
  %add = add i32 %35, 22
  %36 = inttoptr i32 %add to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %36, align 2
  %39 = and i16 %38, 3840
  %40 = load i16, ptr %mgnt_seq.i, align 4
  %shl = shl i16 %40, 4
  %41 = tail call i16 @llvm.bswap.i16(i16 %shl)
  %or211 = or i16 %41, %39
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %or211, ptr %36, align 2
  %43 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %mgnt_seq.i, align 4
  %inc = add i16 %44, 1
  store i16 %inc, ptr %mgnt_seq.i, align 4
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr, align 2
  %47 = and i16 %46, 1023
  %48 = or i16 %47, -20480
  store i16 %48, ptr %add.ptr, align 2
  %add.ptr18 = getelementptr i8, ptr %33, i32 64
  %49 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 24, ptr %pktlen.i, align 4
  %tobool19.not = icmp eq ptr %psta, null
  %addr155 = getelementptr i8, ptr %33, i32 44
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 12
  %50 = call ptr @memcpy(ptr %addr155, ptr %hwaddr, i32 6)
  %addr2 = getelementptr i8, ptr %33, i32 50
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %51 = call ptr @memcpy(ptr %addr2, ptr %mac_addr.i, i32 6)
  %addr3 = getelementptr i8, ptr %33, i32 56
  %52 = call ptr @memcpy(ptr %addr3, ptr %mac_addr.i, i32 6)
  %authalg = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 43
  %53 = ptrtoint ptr %authalg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %authalg, align 8
  %conv27 = trunc i32 %54 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %status)
  %cmp.not = icmp eq i16 %status, 0
  %spec.store.select = select i1 %cmp.not, i16 %conv27, i16 0
  %55 = tail call i16 @llvm.bswap.i16(i16 %spec.store.select)
  %56 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %le_tmp, align 2
  %call36 = call ptr @rtw_set_fixed_ie(ptr noundef %add.ptr18, i32 noundef 2, ptr noundef nonnull %le_tmp, ptr noundef %pktlen.i) #17
  %auth_seq = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 42
  %57 = ptrtoint ptr %auth_seq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %auth_seq, align 4
  %conv37 = trunc i32 %58 to i16
  %59 = call i16 @llvm.bswap.i16(i16 %conv37)
  %60 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %le_tmp, align 2
  %call39 = call ptr @rtw_set_fixed_ie(ptr noundef %call36, i32 noundef 2, ptr noundef nonnull %le_tmp, ptr noundef %pktlen.i) #17
  %61 = call i16 @llvm.bswap.i16(i16 %status)
  %62 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %le_tmp, align 2
  %call41 = call ptr @rtw_set_fixed_ie(ptr noundef %call39, i32 noundef 2, ptr noundef nonnull %le_tmp, ptr noundef %pktlen.i) #17
  %63 = ptrtoint ptr %auth_seq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %auth_seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp43 = icmp eq i32 %64, 2
  br i1 %cmp43, label %land.lhs.true, label %if.then20.if.end120_crit_edge

if.then20.if.end120_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end120

land.lhs.true:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.store.select)
  %tobool32.not = icmp eq i16 %spec.store.select, 0
  %state = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 8
  %65 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %state, align 8
  %and45 = and i32 %66, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %brmerge = select i1 %tobool46.not, i1 true, i1 %tobool32.not
  br i1 %brmerge, label %land.lhs.true.if.end120_crit_edge, label %if.then50

land.lhs.true.if.end120_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end120

if.then50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %chg_txt = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 44
  %call53 = call ptr @rtw_set_ie(ptr noundef %call41, i32 noundef 16, i32 noundef 128, ptr noundef %chg_txt, ptr noundef %pktlen.i) #17
  br label %if.end120

if.else:                                          ; preds = %if.end
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %call57 = tail call ptr @get_my_bssid(ptr noundef %network) #17
  %67 = call ptr @memcpy(ptr %addr155, ptr %call57, i32 6)
  %addr258 = getelementptr i8, ptr %33, i32 50
  %mac_addr.i216 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %68 = call ptr @memcpy(ptr %addr258, ptr %mac_addr.i216, i32 6)
  %addr362 = getelementptr i8, ptr %33, i32 56
  %call65 = tail call ptr @get_my_bssid(ptr noundef %network) #17
  %69 = call ptr @memcpy(ptr %addr362, ptr %call65, i32 6)
  %auth_algo = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 5
  %70 = ptrtoint ptr %auth_algo to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %auth_algo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp66 = icmp eq i32 %71, 1
  %spec.select = select i1 %cmp66, i16 256, i16 0
  %72 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %spec.select, ptr %le_tmp, align 2
  %auth_seq72 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 4
  %73 = ptrtoint ptr %auth_seq72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %auth_seq72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %74)
  %cmp73 = icmp eq i32 %74, 3
  br i1 %cmp73, label %land.lhs.true75, label %if.else.if.end88_crit_edge

if.else.if.end88_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end88

land.lhs.true75:                                  ; preds = %if.else
  %75 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mlmext_info, align 4
  %and77 = and i32 %76, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %cmp66.not = xor i1 %cmp66, true
  %brmerge212 = select i1 %tobool78.not, i1 true, i1 %cmp66.not
  br i1 %brmerge212, label %land.lhs.true75.if.end88_crit_edge, label %if.then82

land.lhs.true75.if.end88_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end88

if.then82:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_tmp32) #17
  %iv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 9
  %77 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %iv, align 4
  %inc83 = add i32 %78, 1
  store i32 %inc83, ptr %iv, align 4
  %key_index = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 8
  %79 = ptrtoint ptr %key_index to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %key_index, align 4
  %shl84 = shl i32 %80, 30
  %or85 = or i32 %shl84, %78
  %81 = tail call i32 @llvm.bswap.i32(i32 %or85)
  %82 = ptrtoint ptr %le_tmp32 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %le_tmp32, align 4
  %call87 = call ptr @rtw_set_fixed_ie(ptr noundef %add.ptr18, i32 noundef 4, ptr noundef nonnull %le_tmp32, ptr noundef %pktlen.i) #17
  %iv_len = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 12
  %83 = ptrtoint ptr %iv_len to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 4, ptr %iv_len, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_tmp32) #17
  br label %if.end88

if.end88:                                         ; preds = %if.then82, %land.lhs.true75.if.end88_crit_edge, %if.else.if.end88_crit_edge
  %pframe.0 = phi ptr [ %call87, %if.then82 ], [ %add.ptr18, %land.lhs.true75.if.end88_crit_edge ], [ %add.ptr18, %if.else.if.end88_crit_edge ]
  %call90 = call ptr @rtw_set_fixed_ie(ptr noundef %pframe.0, i32 noundef 2, ptr noundef nonnull %le_tmp, ptr noundef %pktlen.i) #17
  %84 = ptrtoint ptr %auth_seq72 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %auth_seq72, align 4
  %conv92 = trunc i32 %85 to i16
  %86 = call i16 @llvm.bswap.i16(i16 %conv92)
  %87 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %le_tmp, align 2
  %call94 = call ptr @rtw_set_fixed_ie(ptr noundef %call90, i32 noundef 2, ptr noundef nonnull %le_tmp, ptr noundef %pktlen.i) #17
  %88 = call i16 @llvm.bswap.i16(i16 %status)
  %89 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %le_tmp, align 2
  %call96 = call ptr @rtw_set_fixed_ie(ptr noundef %call94, i32 noundef 2, ptr noundef nonnull %le_tmp, ptr noundef %pktlen.i) #17
  %90 = ptrtoint ptr %auth_seq72 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %auth_seq72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %91)
  %cmp98 = icmp eq i32 %91, 3
  br i1 %cmp98, label %land.lhs.true100, label %if.end88.if.end120_crit_edge

if.end88.if.end120_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end120

land.lhs.true100:                                 ; preds = %if.end88
  %92 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mlmext_info, align 4
  %and102 = and i32 %93, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  %cmp66.not213 = xor i1 %cmp66, true
  %brmerge214 = select i1 %tobool103.not, i1 true, i1 %cmp66.not213
  br i1 %brmerge214, label %land.lhs.true100.if.end120_crit_edge, label %if.then107

land.lhs.true100.if.end120_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end120

if.then107:                                       ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #19
  %chg_txt108 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 10
  %call111 = call ptr @rtw_set_ie(ptr noundef %call96, i32 noundef 16, i32 noundef 128, ptr noundef %chg_txt108, ptr noundef %pktlen.i) #17
  %94 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %add.ptr, align 2
  %96 = or i16 %95, 64
  store i16 %96, ptr %add.ptr, align 2
  %97 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 24, ptr %hdrlen.i, align 2
  %98 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %encrypt.i, align 1
  %icv_len = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 13
  %99 = ptrtoint ptr %icv_len to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 4, ptr %icv_len, align 1
  %100 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pktlen.i, align 4
  %add118 = add i32 %101, 4
  store i32 %add118, ptr %pktlen.i, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then107, %land.lhs.true100.if.end120_crit_edge, %if.end88.if.end120_crit_edge, %if.then50, %land.lhs.true.if.end120_crit_edge, %if.then20.if.end120_crit_edge
  %102 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pktlen.i, align 4
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 9
  %104 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %last_txcmdsz, align 4
  call void @rtw_wep_encrypt(ptr noundef %padapter, ptr noundef nonnull %call1.i.i) #17
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %105 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i = icmp eq i32 %106, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end120.if.then.i_crit_edge

if.end120.if.then.i_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end120
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %107 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bDriverStopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool1.not.i = icmp eq i32 %108, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end120.if.then.i_crit_edge
  %109 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pxmitbuf10.i.i, align 4
  %call.i217 = call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %110) #17
  %call3.i = call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  %call4.i = call i32 @rtw_hal_mgnt_xmit(ptr noundef %padapter, ptr noundef nonnull %call1.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %if.then7.i.i, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %le_tmp) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @start_clnt_assoc(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %link_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 20
  %call = tail call i32 @del_timer_sync(ptr noundef %link_timer) #17
  %0 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %1, -9985
  %or = or i32 %and, 9216
  store i32 %or, ptr %mlmext_info, align 4
  tail call void @issue_assocreq(ptr noundef %padapter)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %2, 30
  %call.i = tail call i32 @mod_timer(ptr noundef %link_timer, i32 noundef %add.i) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @OnAssocReq(ptr noundef %padapter, ptr nocapture noundef readonly %precv_frame) #2 align 64 {
entry:
  %elems = alloca %struct.rtw_ieee802_11_elems, align 4
  %ie_len = alloca i32, align 4
  %supportRate = alloca [16 x i8], align 1
  %group_cipher = alloca i32, align 4
  %pairwise_cipher = alloca i32, align 4
  %group_cipher158 = alloca i32, align 4
  %pairwise_cipher159 = alloca i32, align 4
  %selected_registrar = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %elems) #17
  %0 = call ptr @memset(ptr %elems, i32 255, i32 208)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ie_len) #17
  %1 = ptrtoint ptr %ie_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ie_len, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %supportRate) #17
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
  %2 = call ptr @memset(ptr %supportRate, i32 255, i32 16)
  %3 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_data, align 4
  %len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 7
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %7 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp.not = icmp eq i32 %and, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup498_crit_edge

entry.cleanup498_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup498

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %10)
  %cmp4 = icmp ult i16 %10, 1024
  %..neg798 = select i1 %cmp4, i32 -4, i32 -10
  %. = select i1 %cmp4, i32 4, i32 10
  %add = add nuw nsw i32 %., 24
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add)
  %cmp9 = icmp ult i32 %6, %add
  br i1 %cmp9, label %if.end.cleanup498_crit_edge, label %if.end12

if.end.cleanup498_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup498

if.end12:                                         ; preds = %if.end
  %11 = ptrtoint ptr %4 to i32
  %add13 = add i32 %11, 10
  %12 = inttoptr i32 %add13 to ptr
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %12) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end12.asoc_class2_error_crit_edge, label %if.end15

if.end12.asoc_class2_error_crit_edge:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %asoc_class2_error

if.end15:                                         ; preds = %if.end12
  %add.ptr = getelementptr i8, ptr %4, i32 24
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %add.ptr, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #17
  %sub = sub i32 %6, %add
  %add.ptr21 = getelementptr i8, ptr %4, i32 %add
  %state22 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 8
  %16 = ptrtoint ptr %state22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state22, align 8
  %and23 = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end15.if.end40_crit_edge

if.end15.if.end40_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

if.then25:                                        ; preds = %if.end15
  %and27 = and i32 %17, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then25.asoc_class2_error_crit_edge, label %if.then25.if.end40_crit_edge

if.then25.if.end40_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

if.then25.asoc_class2_error_crit_edge:            ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #19
  br label %asoc_class2_error

if.end40:                                         ; preds = %if.then25.if.end40_crit_edge, %if.end15.if.end40_crit_edge
  %.sink = phi i32 [ -24577, %if.then25.if.end40_crit_edge ], [ -1025, %if.end15.if.end40_crit_edge ]
  %and37 = and i32 %17, %.sink
  %storemerge = or i32 %and37, 8192
  %18 = ptrtoint ptr %state22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %state22, align 8
  %capability = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 45
  %19 = ptrtoint ptr %capability to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %15, ptr %capability, align 4
  %call41 = call i32 @rtw_ieee802_11_parse_elems(ptr noundef %add.ptr21, i32 noundef %sub, ptr noundef nonnull %elems, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41)
  %cmp42 = icmp eq i32 %call41, -1
  br i1 %cmp42, label %if.end40.OnAssocReqFail_crit_edge, label %lor.lhs.false

if.end40.OnAssocReqFail_crit_edge:                ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  br label %OnAssocReqFail

lor.lhs.false:                                    ; preds = %if.end40
  %20 = ptrtoint ptr %elems to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %elems, align 4
  %tobool44.not = icmp eq ptr %21, null
  br i1 %tobool44.not, label %lor.lhs.false.OnAssocReqFail_crit_edge, label %if.end46

lor.lhs.false.OnAssocReqFail_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %OnAssocReqFail

if.end46:                                         ; preds = %lor.lhs.false
  %add.ptr49 = getelementptr i8, ptr %add.ptr, i32 %.
  %sub50 = add i32 %6, -24
  %sub52 = add i32 %sub50, %..neg798
  %call53 = call ptr @rtw_get_ie(ptr noundef %add.ptr49, i32 noundef 0, ptr noundef nonnull %ie_len, i32 noundef %sub52) #17
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.end46.OnAssocReqFail_crit_edge, label %lor.lhs.false55

if.end46.OnAssocReqFail_crit_edge:                ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %OnAssocReqFail

lor.lhs.false55:                                  ; preds = %if.end46
  %22 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp56 = icmp eq i32 %23, 0
  br i1 %cmp56, label %lor.lhs.false55.OnAssocReqFail_crit_edge, label %if.else59

lor.lhs.false55.OnAssocReqFail_crit_edge:         ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #19
  br label %OnAssocReqFail

if.else59:                                        ; preds = %lor.lhs.false55
  %add.ptr60 = getelementptr i8, ptr %call53, i32 2
  %ssid61 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3
  %ssid62 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3, i32 1
  %24 = ptrtoint ptr %ssid61 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %ssid61, align 1
  %bcmp = call i32 @bcmp(ptr %add.ptr60, ptr %ssid62, i32 %25) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool65.not = icmp eq i32 %bcmp, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp70.not = icmp eq i32 %23, %25
  %26 = select i1 %cmp70.not, i1 %tobool65.not, i1 false
  %status.1 = select i1 %26, i16 0, i16 15
  br i1 %26, label %if.end79, label %if.else59.OnAssocReqFail_crit_edge

if.else59.OnAssocReqFail_crit_edge:               ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #19
  br label %OnAssocReqFail

if.end79:                                         ; preds = %if.else59
  %call86 = call ptr @rtw_get_ie(ptr noundef %add.ptr49, i32 noundef 1, ptr noundef nonnull %ie_len, i32 noundef %sub52) #17
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.end79.OnAssocReqFail_crit_edge, label %if.else89

if.end79.OnAssocReqFail_crit_edge:                ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #19
  br label %OnAssocReqFail

if.else89:                                        ; preds = %if.end79
  %add.ptr91 = getelementptr i8, ptr %call86, i32 2
  %27 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ie_len, align 4
  %29 = call ptr @memcpy(ptr %supportRate, ptr %add.ptr91, i32 %28)
  %call98 = call ptr @rtw_get_ie(ptr noundef %add.ptr49, i32 noundef 50, ptr noundef nonnull %ie_len, i32 noundef %sub52) #17
  %tobool99.not = icmp ne ptr %call98, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %28)
  %cmp101 = icmp ult i32 %28, 17
  %or.cond = select i1 %tobool99.not, i1 %cmp101, i1 false
  br i1 %or.cond, label %if.then103, label %if.else89.if.end110_crit_edge

if.else89.if.end110_crit_edge:                    ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end110

if.then103:                                       ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr105 = getelementptr i8, ptr %supportRate, i32 %28
  %add.ptr106 = getelementptr i8, ptr %call98, i32 2
  %30 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ie_len, align 4
  %32 = call ptr @memcpy(ptr %add.ptr105, ptr %add.ptr106, i32 %31)
  %add107 = add i32 %31, %28
  br label %if.end110

if.end110:                                        ; preds = %if.then103, %if.else89.if.end110_crit_edge
  %supportRateNum.0 = phi i32 [ %add107, %if.then103 ], [ %28, %if.else89.if.end110_crit_edge ]
  %bssratelen = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 22
  %33 = ptrtoint ptr %bssratelen to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %supportRateNum.0, ptr %bssratelen, align 8
  %bssrateset = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 21
  %34 = call ptr @memcpy(ptr %bssrateset, ptr %supportRate, i32 %supportRateNum.0)
  %35 = load i32, ptr %bssratelen, align 8
  call void @UpdateBrateTblForSoftAP(ptr noundef %bssrateset, i32 noundef %35) #17
  %dot8021xalg = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 47
  %wpa_psk = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 48
  %wpa_group_cipher = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 49
  %wpa2_group_cipher = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 50
  %wpa_pairwise_cipher = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 51
  %wpa2_pairwise_cipher = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 52
  %wpa_ie116 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 54
  %36 = call ptr @memset(ptr %wpa_ie116, i32 0, i32 32)
  %wpa_psk118 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 18
  %37 = call ptr @memset(ptr %dot8021xalg, i32 0, i32 24)
  %38 = ptrtoint ptr %wpa_psk118 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wpa_psk118, align 4
  %and119 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end110.if.else150_crit_edge, label %land.lhs.true

if.end110.if.else150_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else150

land.lhs.true:                                    ; preds = %if.end110
  %rsn_ie = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 22
  %40 = ptrtoint ptr %rsn_ie to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rsn_ie, align 4
  %tobool121.not = icmp eq ptr %41, null
  br i1 %tobool121.not, label %land.lhs.true.if.else150_crit_edge, label %if.then122

land.lhs.true.if.else150_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else150

if.then122:                                       ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group_cipher) #17
  %42 = ptrtoint ptr %group_cipher to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %group_cipher, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pairwise_cipher) #17
  %43 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %pairwise_cipher, align 4
  %rsn_ie_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 23
  %44 = ptrtoint ptr %rsn_ie_len to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rsn_ie_len, align 4
  %conv124 = zext i8 %45 to i32
  %add.ptr125 = getelementptr i8, ptr %41, i32 -2
  %add126 = add nuw nsw i32 %conv124, 2
  %call127 = call i32 @rtw_parse_wpa2_ie(ptr noundef %add.ptr125, i32 noundef %add126, ptr noundef nonnull %group_cipher, ptr noundef nonnull %pairwise_cipher, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call127)
  %cmp128 = icmp eq i32 %call127, 1
  br i1 %cmp128, label %if.then130, label %if.then122.if.end149_crit_edge

if.then122.if.end149_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end149

if.then130:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #19
  %46 = ptrtoint ptr %dot8021xalg to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %dot8021xalg, align 4
  %47 = ptrtoint ptr %wpa_psk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wpa_psk, align 8
  %or133 = or i32 %48, 2
  store i32 %or133, ptr %wpa_psk, align 8
  %49 = ptrtoint ptr %group_cipher to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %group_cipher, align 4
  %wpa2_group_cipher134 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 20
  %51 = ptrtoint ptr %wpa2_group_cipher134 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wpa2_group_cipher134, align 4
  %and135 = and i32 %52, %50
  %53 = ptrtoint ptr %wpa2_group_cipher to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and135, ptr %wpa2_group_cipher, align 8
  %54 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pairwise_cipher, align 4
  %wpa2_pairwise_cipher137 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 22
  %56 = ptrtoint ptr %wpa2_pairwise_cipher137 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %wpa2_pairwise_cipher137, align 4
  %and138 = and i32 %57, %55
  %58 = ptrtoint ptr %wpa2_pairwise_cipher to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and138, ptr %wpa2_pairwise_cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool141.not = icmp eq i32 %and135, 0
  %spec.select745 = select i1 %tobool141.not, i16 41, i16 %status.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool145.not = icmp eq i32 %and138, 0
  %spec.select751 = select i1 %tobool145.not, i16 42, i16 %spec.select745
  br label %if.end149

if.end149:                                        ; preds = %if.then130, %if.then122.if.end149_crit_edge
  %status.3 = phi i16 [ 40, %if.then122.if.end149_crit_edge ], [ %spec.select751, %if.then130 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pairwise_cipher) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group_cipher) #17
  br label %if.end190

if.else150:                                       ; preds = %land.lhs.true.if.else150_crit_edge, %if.end110.if.else150_crit_edge
  %and152 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %if.else150.if.then198_crit_edge, label %land.lhs.true154

if.else150.if.then198_crit_edge:                  ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then198

land.lhs.true154:                                 ; preds = %if.else150
  %wpa_ie155 = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 20
  %59 = ptrtoint ptr %wpa_ie155 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wpa_ie155, align 4
  %tobool156.not = icmp eq ptr %60, null
  br i1 %tobool156.not, label %land.lhs.true154.if.then198_crit_edge, label %if.then157

land.lhs.true154.if.then198_crit_edge:            ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then198

if.then157:                                       ; preds = %land.lhs.true154
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group_cipher158) #17
  %61 = ptrtoint ptr %group_cipher158 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %group_cipher158, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pairwise_cipher159) #17
  %62 = ptrtoint ptr %pairwise_cipher159 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %pairwise_cipher159, align 4
  %wpa_ie_len161 = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 21
  %63 = ptrtoint ptr %wpa_ie_len161 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %wpa_ie_len161, align 4
  %conv162 = zext i8 %64 to i32
  %add.ptr163 = getelementptr i8, ptr %60, i32 -2
  %add164 = add nuw nsw i32 %conv162, 2
  %call165 = call i32 @rtw_parse_wpa_ie(ptr noundef %add.ptr163, i32 noundef %add164, ptr noundef nonnull %group_cipher158, ptr noundef nonnull %pairwise_cipher159, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call165)
  %cmp166 = icmp eq i32 %call165, 1
  br i1 %cmp166, label %if.then168, label %if.then157.if.end187_crit_edge

if.then157.if.end187_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end187

if.then168:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #19
  %65 = ptrtoint ptr %dot8021xalg to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %dot8021xalg, align 4
  %66 = ptrtoint ptr %wpa_psk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %wpa_psk, align 8
  %or171 = or i32 %67, 1
  store i32 %or171, ptr %wpa_psk, align 8
  %68 = ptrtoint ptr %group_cipher158 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %group_cipher158, align 4
  %wpa_group_cipher172 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 19
  %70 = ptrtoint ptr %wpa_group_cipher172 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %wpa_group_cipher172, align 8
  %and173 = and i32 %71, %69
  %72 = ptrtoint ptr %wpa_group_cipher to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and173, ptr %wpa_group_cipher, align 4
  %73 = ptrtoint ptr %pairwise_cipher159 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pairwise_cipher159, align 4
  %wpa_pairwise_cipher175 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 21
  %75 = ptrtoint ptr %wpa_pairwise_cipher175 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %wpa_pairwise_cipher175, align 8
  %and176 = and i32 %76, %74
  %77 = ptrtoint ptr %wpa_pairwise_cipher to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and176, ptr %wpa_pairwise_cipher, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool179.not = icmp eq i32 %and173, 0
  %spec.select746 = select i1 %tobool179.not, i16 41, i16 %status.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool183.not = icmp eq i32 %and176, 0
  %spec.select752 = select i1 %tobool183.not, i16 42, i16 %spec.select746
  br label %if.end187

if.end187:                                        ; preds = %if.then168, %if.then157.if.end187_crit_edge
  %status.5 = phi i16 [ 40, %if.then157.if.end187_crit_edge ], [ %spec.select752, %if.then168 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pairwise_cipher159) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group_cipher158) #17
  br label %if.end190

if.end190:                                        ; preds = %if.end187, %if.end149
  %wpa_ie.0 = phi ptr [ %41, %if.end149 ], [ %60, %if.end187 ]
  %wpa_ie_len.0 = phi i32 [ %conv124, %if.end149 ], [ %conv162, %if.end187 ]
  %status.6 = phi i16 [ %status.3, %if.end149 ], [ %status.5, %if.end187 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %status.6)
  %cmp192.not = icmp eq i16 %status.6, 0
  br i1 %cmp192.not, label %if.else224, label %if.end190.OnAssocReqFail_crit_edge

if.end190.OnAssocReqFail_crit_edge:               ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #19
  br label %OnAssocReqFail

if.then198:                                       ; preds = %land.lhs.true154.if.then198_crit_edge, %if.else150.if.then198_crit_edge
  %flags767 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 46
  %78 = ptrtoint ptr %flags767 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags767, align 8
  %and196768 = and i32 %79, -12289
  %wps_ie = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 28
  %80 = ptrtoint ptr %wps_ie to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wps_ie, align 4
  %tobool199.not = icmp eq ptr %81, null
  %storemerge737.v = select i1 %tobool199.not, i32 8192, i32 4096
  %storemerge737 = or i32 %storemerge737.v, %and196768
  store i32 %storemerge737, ptr %flags767, align 8
  %82 = ptrtoint ptr %wpa_psk118 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %wpa_psk118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp208.not = icmp eq i32 %83, 0
  br i1 %cmp208.not, label %if.then198.if.end251_crit_edge, label %if.then214

if.then198.if.end251_crit_edge:                   ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end251

if.then214:                                       ; preds = %if.then198
  %wps_beacon_ie = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 53
  %84 = ptrtoint ptr %wps_beacon_ie to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wps_beacon_ie, align 4
  %tobool215.not = icmp eq ptr %85, null
  br i1 %tobool215.not, label %if.then214.if.end251_crit_edge, label %if.then216

if.then214.if.end251_crit_edge:                   ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end251

if.then216:                                       ; preds = %if.then214
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %selected_registrar) #17
  %86 = ptrtoint ptr %selected_registrar to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %selected_registrar, align 1
  %wps_beacon_ie_len = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 56
  %87 = ptrtoint ptr %wps_beacon_ie_len to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %wps_beacon_ie_len, align 4
  %call218 = call ptr @rtw_get_wps_attr_content(ptr noundef nonnull %85, i32 noundef %88, i16 noundef zeroext 4161, ptr noundef nonnull %selected_registrar, ptr noundef null) #17
  %89 = ptrtoint ptr %selected_registrar to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %selected_registrar, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool219.not = icmp eq i8 %90, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %selected_registrar) #17
  br i1 %tobool219.not, label %if.then216.OnAssocReqFail_crit_edge, label %if.then216.if.end251_crit_edge

if.then216.if.end251_crit_edge:                   ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end251

if.then216.OnAssocReqFail_crit_edge:              ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #19
  br label %OnAssocReqFail

if.else224:                                       ; preds = %if.end190
  %flags = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 46
  %91 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags, align 8
  %and196 = and i32 %92, -12289
  store i32 %and196, ptr %flags, align 8
  %93 = ptrtoint ptr %wpa_psk118 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %wpa_psk118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp226 = icmp eq i32 %94, 0
  br i1 %cmp226, label %if.else224.OnAssocReqFail_crit_edge, label %if.end229

if.else224.OnAssocReqFail_crit_edge:              ; preds = %if.else224
  call void @__sanitizer_cov_trace_pc() #19
  br label %OnAssocReqFail

if.end229:                                        ; preds = %if.else224
  %wps_ie230 = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 28
  %95 = ptrtoint ptr %wps_ie230 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wps_ie230, align 4
  %tobool231.not = icmp eq ptr %96, null
  br i1 %tobool231.not, label %if.then243, label %if.end240

if.end240:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #19
  %or234 = or i32 %and196, 4096
  %97 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or234, ptr %flags, align 8
  br label %if.end251

if.then243:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %wpa_ie_len.0)
  %cmp237 = icmp ugt i32 %wpa_ie_len.0, 30
  %add236 = add nuw nsw i32 %wpa_ie_len.0, 2
  %spec.select748 = select i1 %cmp237, i32 32, i32 %add236
  %add.ptr246 = getelementptr i8, ptr %wpa_ie.0, i32 -2
  %98 = call ptr @memcpy(ptr %wpa_ie116, ptr %add.ptr246, i32 %spec.select748)
  br label %if.end251

if.end251:                                        ; preds = %if.then243, %if.end240, %if.then216.if.end251_crit_edge, %if.then214.if.end251_crit_edge, %if.then198.if.end251_crit_edge
  %flags771 = phi ptr [ %flags767, %if.then216.if.end251_crit_edge ], [ %flags767, %if.then214.if.end251_crit_edge ], [ %flags767, %if.then198.if.end251_crit_edge ], [ %flags, %if.then243 ], [ %flags, %if.end240 ]
  %99 = ptrtoint ptr %flags771 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags771, align 8
  %and253 = and i32 %100, -513
  store i32 %and253, ptr %flags771, align 8
  %qos_option = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 11
  %101 = ptrtoint ptr %qos_option to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %qos_option, align 4
  %qos_info = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 62
  %102 = ptrtoint ptr %qos_info to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %qos_info, align 8
  %has_legacy_ac = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 68
  %103 = ptrtoint ptr %has_legacy_ac to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %has_legacy_ac, align 2
  %uapsd_vo = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 67
  %uapsd_vi = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 66
  %uapsd_be = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 65
  %uapsd_bk = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 64
  %qospriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 30
  %104 = ptrtoint ptr %uapsd_bk to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 0, ptr %uapsd_bk, align 2
  %105 = ptrtoint ptr %qospriv to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %qospriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool255.not = icmp eq i32 %106, 0
  br i1 %tobool255.not, label %if.end251.if.end337_crit_edge, label %if.then256

if.end251.if.end337_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end337

if.then256:                                       ; preds = %if.end251
  %107 = ptrtoint ptr %ie_len to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %ie_len, align 4
  %call263792 = call ptr @rtw_get_ie(ptr noundef %add.ptr49, i32 noundef 221, ptr noundef nonnull %ie_len, i32 noundef %sub52) #17
  %tobool264.not793 = icmp eq ptr %call263792, null
  br i1 %tobool264.not793, label %if.then256.if.end337_crit_edge, label %if.then256.if.then265_crit_edge

if.then256.if.then265_crit_edge:                  ; preds = %if.then256
  br label %if.then265

if.then256.if.end337_crit_edge:                   ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end337

if.then265:                                       ; preds = %if.end334.if.then265_crit_edge, %if.then256.if.then265_crit_edge
  %call263794 = phi ptr [ %call263, %if.end334.if.then265_crit_edge ], [ %call263792, %if.then256.if.then265_crit_edge ]
  %add.ptr266 = getelementptr i8, ptr %call263794, i32 2
  %bcmp740 = call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr266, ptr noundef nonnull dereferenceable(6) @__const.OnAssocReq.WMM_IE, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp740)
  %tobool269.not = icmp eq i32 %bcmp740, 0
  br i1 %tobool269.not, label %if.then270, label %if.end334

if.then270:                                       ; preds = %if.then265
  %108 = ptrtoint ptr %flags771 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags771, align 8
  %or272 = or i32 %109, 512
  store i32 %or272, ptr %flags771, align 8
  %110 = ptrtoint ptr %qos_option to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %qos_option, align 4
  %add.ptr274 = getelementptr i8, ptr %call263794, i32 8
  %111 = ptrtoint ptr %add.ptr274 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %add.ptr274, align 1
  %113 = ptrtoint ptr %qos_info to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %qos_info, align 8
  %114 = lshr i8 %112, 5
  %115 = and i8 %114, 3
  %max_sp_len = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 63
  %116 = ptrtoint ptr %max_sp_len to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %max_sp_len, align 1
  %117 = and i8 %112, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %117)
  %cmp283.not = icmp ne i8 %117, 15
  %.749 = zext i1 %cmp283.not to i8
  %118 = ptrtoint ptr %has_legacy_ac to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %.749, ptr %has_legacy_ac, align 2
  %conv291 = zext i8 %112 to i32
  %and292 = and i32 %conv291, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and292)
  %tobool293.not = icmp eq i32 %and292, 0
  br i1 %tobool293.not, label %if.then270.if.end337_crit_edge, label %if.then294

if.then270.if.end337_crit_edge:                   ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end337

if.then294:                                       ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #19
  %and297 = and i32 %conv291, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and297)
  %tobool298.not = icmp eq i32 %and297, 0
  %.750 = select i1 %tobool298.not, i8 0, i8 3
  %119 = ptrtoint ptr %uapsd_vo to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %.750, ptr %uapsd_vo, align 1
  %120 = and i8 %112, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool307.not = icmp eq i8 %120, 0
  %storemerge743 = select i1 %tobool307.not, i8 0, i8 3
  %121 = ptrtoint ptr %uapsd_vi to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %storemerge743, ptr %uapsd_vi, align 4
  %122 = and i8 %112, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool316.not = icmp eq i8 %122, 0
  %storemerge744 = select i1 %tobool316.not, i8 0, i8 3
  %123 = ptrtoint ptr %uapsd_bk to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %storemerge744, ptr %uapsd_bk, align 2
  %124 = and i8 %112, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool325.not = icmp eq i8 %124, 0
  %.804 = select i1 %tobool325.not, i8 0, i8 3
  %125 = ptrtoint ptr %uapsd_be to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %.804, ptr %uapsd_be, align 1
  br label %if.end337

if.end334:                                        ; preds = %if.then265
  %126 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ie_len, align 4
  %add.ptr335 = getelementptr i8, ptr %call263794, i32 2
  %add.ptr336 = getelementptr i8, ptr %add.ptr335, i32 %127
  %call263 = call ptr @rtw_get_ie(ptr noundef %add.ptr336, i32 noundef 221, ptr noundef nonnull %ie_len, i32 noundef %sub52) #17
  %tobool264.not = icmp eq ptr %call263, null
  br i1 %tobool264.not, label %if.end334.if.end337_crit_edge, label %if.end334.if.then265_crit_edge

if.end334.if.then265_crit_edge:                   ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then265

if.end334.if.end337_crit_edge:                    ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end337

if.end337:                                        ; preds = %if.end334.if.end337_crit_edge, %if.then294, %if.then270.if.end337_crit_edge, %if.then256.if.end337_crit_edge, %if.end251.if.end337_crit_edge
  %ht_cap = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 38, i32 15
  %128 = call ptr @memset(ptr %ht_cap, i32 0, i32 26)
  %ht_capabilities = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 40
  %129 = ptrtoint ptr %ht_capabilities to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ht_capabilities, align 4
  %tobool338.not = icmp eq ptr %130, null
  br i1 %tobool338.not, label %if.end337.if.else351_crit_edge, label %land.lhs.true339

if.end337.if.else351_crit_edge:                   ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else351

land.lhs.true339:                                 ; preds = %if.end337
  %ht_capabilities_len = getelementptr inbounds %struct.rtw_ieee802_11_elems, ptr %elems, i32 0, i32 41
  %131 = ptrtoint ptr %ht_capabilities_len to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %ht_capabilities_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %132)
  %cmp341 = icmp ugt i8 %132, 25
  br i1 %cmp341, label %if.then343, label %land.lhs.true339.if.else351_crit_edge

land.lhs.true339.if.else351_crit_edge:            ; preds = %land.lhs.true339
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else351

if.then343:                                       ; preds = %land.lhs.true339
  call void @__sanitizer_cov_trace_pc() #19
  %133 = ptrtoint ptr %flags771 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %flags771, align 8
  %or347 = or i32 %134, 2560
  store i32 %or347, ptr %flags771, align 8
  %135 = call ptr @memcpy(ptr %ht_cap, ptr %130, i32 26)
  br label %if.end354

if.else351:                                       ; preds = %land.lhs.true339.if.else351_crit_edge, %if.end337.if.else351_crit_edge
  %136 = ptrtoint ptr %flags771 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %flags771, align 8
  %and353 = and i32 %137, -2049
  store i32 %and353, ptr %flags771, align 8
  br label %if.end354

if.end354:                                        ; preds = %if.else351, %if.then343
  %htpriv355 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33
  %138 = ptrtoint ptr %htpriv355 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %htpriv355, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp357 = icmp eq i8 %139, 0
  br i1 %cmp357, label %land.lhs.true359, label %if.end354.if.end364_crit_edge

if.end354.if.end364_crit_edge:                    ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end364

land.lhs.true359:                                 ; preds = %if.end354
  %140 = ptrtoint ptr %flags771 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %flags771, align 8
  %and361 = and i32 %141, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and361)
  %tobool362.not = icmp eq i32 %and361, 0
  br i1 %tobool362.not, label %land.lhs.true359.if.end364_crit_edge, label %land.lhs.true359.OnAssocReqFail_crit_edge

land.lhs.true359.OnAssocReqFail_crit_edge:        ; preds = %land.lhs.true359
  call void @__sanitizer_cov_trace_pc() #19
  br label %OnAssocReqFail

land.lhs.true359.if.end364_crit_edge:             ; preds = %land.lhs.true359
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end364

if.end364:                                        ; preds = %land.lhs.true359.if.end364_crit_edge, %if.end354.if.end364_crit_edge
  %142 = ptrtoint ptr %flags771 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flags771, align 8
  %or379 = or i32 %143, -2147483648
  store i32 %or379, ptr %flags771, align 8
  %144 = ptrtoint ptr %bssratelen to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %bssratelen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp382795.not = icmp eq i32 %145, 0
  br i1 %cmp382795.not, label %if.end364.for.end393_crit_edge, label %if.end364.for.body_crit_edge

if.end364.for.body_crit_edge:                     ; preds = %if.end364
  br label %for.body

if.end364.for.end393_crit_edge:                   ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end393

for.cond380:                                      ; preds = %for.body
  %inc = add nuw i32 %i.0796, 1
  %exitcond.not = icmp eq i32 %inc, %145
  br i1 %exitcond.not, label %for.cond380.for.end393_crit_edge, label %for.cond380.for.body_crit_edge

for.cond380.for.body_crit_edge:                   ; preds = %for.cond380
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond380.for.end393_crit_edge:                 ; preds = %for.cond380
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end393

for.body:                                         ; preds = %for.cond380.for.body_crit_edge, %if.end364.for.body_crit_edge
  %i.0796 = phi i32 [ %inc, %for.cond380.for.body_crit_edge ], [ 0, %if.end364.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sta_info, ptr %call, i32 0, i32 21, i32 %i.0796
  %146 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx, align 1
  %148 = and i8 %147, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %148)
  %cmp387 = icmp ugt i8 %148, 22
  br i1 %cmp387, label %if.then389, label %for.cond380

if.then389:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %and391 = and i32 %143, 2147483647
  %149 = ptrtoint ptr %flags771 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %and391, ptr %flags771, align 8
  br label %for.end393

for.end393:                                       ; preds = %if.then389, %for.cond380.for.end393_crit_edge, %if.end364.for.end393_crit_edge
  %150 = ptrtoint ptr %capability to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %capability, align 4
  %152 = ptrtoint ptr %flags771 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %flags771, align 8
  %and403 = and i32 %153, -129
  %154 = shl i16 %151, 2
  %155 = and i16 %154, 128
  %156 = zext i16 %155 to i32
  %storemerge738 = or i32 %and403, %156
  store i32 %storemerge738, ptr %flags771, align 8
  %aid = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 9
  %157 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %aid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp410 = icmp eq i32 %158, 0
  br i1 %cmp410, label %for.cond414.preheader, label %for.end393.if.end441_crit_edge

for.end393.if.end441_crit_edge:                   ; preds = %for.end393
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end441

for.cond414.preheader:                            ; preds = %for.end393
  %159 = ptrtoint ptr %aid to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 1, ptr %aid, align 4
  br label %for.body418

for.body418:                                      ; preds = %for.inc425.for.body418_crit_edge, %for.cond414.preheader
  %storemerge739797 = phi i32 [ 1, %for.cond414.preheader ], [ %inc427, %for.inc425.for.body418_crit_edge ]
  %sub420 = add nsw i32 %storemerge739797, -1
  %arrayidx421 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 18, i32 %sub420
  %160 = ptrtoint ptr %arrayidx421 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx421, align 4
  %tobool422.not = icmp eq ptr %161, null
  br i1 %tobool422.not, label %for.body418.for.end428_crit_edge, label %for.inc425

for.body418.for.end428_crit_edge:                 ; preds = %for.body418
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end428

for.inc425:                                       ; preds = %for.body418
  %inc427 = add nuw nsw i32 %storemerge739797, 1
  %162 = ptrtoint ptr %aid to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %inc427, ptr %aid, align 4
  %exitcond800.not = icmp eq i32 %inc427, 33
  br i1 %exitcond800.not, label %for.inc425.for.end428_crit_edge, label %for.inc425.for.body418_crit_edge

for.inc425.for.body418_crit_edge:                 ; preds = %for.inc425
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body418

for.inc425.for.end428_crit_edge:                  ; preds = %for.inc425
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end428

for.end428:                                       ; preds = %for.inc425.for.end428_crit_edge, %for.body418.for.end428_crit_edge
  %storemerge739.lcssa = phi i32 [ %storemerge739797, %for.body418.for.end428_crit_edge ], [ 33, %for.inc425.for.end428_crit_edge ]
  %max_num_sta = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 21
  %163 = ptrtoint ptr %max_num_sta to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %max_num_sta, align 4
  %conv430 = zext i16 %164 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge739.lcssa, i32 %conv430)
  %cmp431 = icmp ugt i32 %storemerge739.lcssa, %conv430
  br i1 %cmp431, label %if.then433, label %if.else435

if.then433:                                       ; preds = %for.end428
  call void @__sanitizer_cov_trace_pc() #19
  %165 = ptrtoint ptr %aid to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %aid, align 4
  br label %OnAssocReqFail

if.else435:                                       ; preds = %for.end428
  call void @__sanitizer_cov_trace_pc() #19
  %sub438 = add nsw i32 %storemerge739.lcssa, -1
  %arrayidx439 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 18, i32 %sub438
  %166 = ptrtoint ptr %arrayidx439 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call, ptr %arrayidx439, align 4
  br label %if.end441

if.end441:                                        ; preds = %if.else435, %for.end393.if.end441_crit_edge
  %167 = ptrtoint ptr %state22 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %state22, align 8
  %and443 = and i32 %168, -24577
  %or445 = or i32 %and443, 16384
  store i32 %or445, ptr %state22, align 8
  %auth_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %auth_list_lock) #17
  %auth_list = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 40
  %169 = ptrtoint ptr %auth_list to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile ptr, ptr %auth_list, align 4
  %cmp.i.not = icmp eq ptr %170, %auth_list
  br i1 %cmp.i.not, label %if.end441.if.end450_crit_edge, label %if.then448

if.end441.if.end450_crit_edge:                    ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end450

if.then448:                                       ; preds = %if.end441
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %auth_list) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.then448.list_del_init.exit_crit_edge

if.then448.list_del_init.exit_crit_edge:          ; preds = %if.then448
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then448
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 40, i32 1
  %171 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %prev.i.i, align 4
  %173 = ptrtoint ptr %auth_list to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %auth_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %172, ptr %prev1.i.i.i, align 4
  %176 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %174, ptr %172, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then448.list_del_init.exit_crit_edge
  %177 = ptrtoint ptr %auth_list to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile ptr %auth_list, ptr %auth_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 40, i32 1
  %178 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %auth_list, ptr %prev.i3.i, align 4
  %auth_list_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 14
  %179 = ptrtoint ptr %auth_list_cnt to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %auth_list_cnt, align 1
  %dec = add i8 %180, -1
  store i8 %dec, ptr %auth_list_cnt, align 1
  br label %if.end450

if.end450:                                        ; preds = %list_del_init.exit, %if.end441.if.end450_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %auth_list_lock) #17
  %asoc_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 11
  call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #17
  %asoc_list = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 39
  %181 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile ptr, ptr %asoc_list, align 4
  %cmp.i753.not = icmp eq ptr %182, %asoc_list
  br i1 %cmp.i753.not, label %if.then454, label %if.end450.if.end459_crit_edge

if.end450.if.end459_crit_edge:                    ; preds = %if.end450
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end459

if.then454:                                       ; preds = %if.end450
  %expire_to = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 17
  %183 = ptrtoint ptr %expire_to to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %expire_to, align 4
  %expire_to455 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 41
  %185 = ptrtoint ptr %expire_to455 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %expire_to455, align 8
  %asoc_list457 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 9
  %prev.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 9, i32 1
  %186 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %prev.i, align 4
  %call.i.i755 = call zeroext i1 @__list_add_valid(ptr noundef %asoc_list, ptr noundef %187, ptr noundef %asoc_list457) #17
  br i1 %call.i.i755, label %if.end.i.i756, label %if.then454.list_add_tail.exit_crit_edge

if.then454.list_add_tail.exit_crit_edge:          ; preds = %if.then454
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i756:                                    ; preds = %if.then454
  call void @__sanitizer_cov_trace_pc() #19
  %188 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %asoc_list, ptr %prev.i, align 4
  %189 = ptrtoint ptr %asoc_list to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %asoc_list457, ptr %asoc_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 39, i32 1
  %190 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %187, ptr %prev3.i.i, align 4
  %191 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile ptr %asoc_list, ptr %187, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i756, %if.then454.list_add_tail.exit_crit_edge
  %asoc_list_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 13
  %192 = ptrtoint ptr %asoc_list_cnt to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %asoc_list_cnt, align 4
  %inc458 = add i8 %193, 1
  store i8 %inc458, ptr %asoc_list_cnt, align 4
  br label %if.end459

if.end459:                                        ; preds = %list_add_tail.exit, %if.end450.if.end459_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #17
  %194 = ptrtoint ptr %state22 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %state22, align 8
  %and464 = and i32 %195, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and464)
  %tobool465.not = icmp eq i32 %and464, 0
  br i1 %tobool465.not, label %if.end459.cleanup498_crit_edge, label %if.then470

if.end459.cleanup498_crit_edge:                   ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup498

if.then470:                                       ; preds = %if.end459
  call void @bss_cap_update_on_sta_join(ptr noundef %padapter, ptr noundef %call) #17
  call void @sta_info_update(ptr noundef %padapter, ptr noundef %call) #17
  %.805 = select i1 %cmp4, i32 16, i32 48
  call void @issue_asocrsp(ptr noundef %padapter, i16 noundef zeroext 0, ptr noundef %call, i32 noundef %.805)
  call void @_raw_spin_lock_bh(ptr noundef %call) #17
  %passoc_req = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 72
  %196 = ptrtoint ptr %passoc_req to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %passoc_req, align 8
  call void @kfree(ptr noundef %197) #17
  %assoc_req_len = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 73
  %198 = ptrtoint ptr %assoc_req_len to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 0, ptr %assoc_req_len, align 4
  %call477 = call ptr @_rtw_zmalloc(i32 noundef %6) #17
  %199 = ptrtoint ptr %passoc_req to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call477, ptr %passoc_req, align 8
  %tobool480.not = icmp eq ptr %call477, null
  br i1 %tobool480.not, label %if.then470.if.end484_crit_edge, label %if.then481

if.then470.if.end484_crit_edge:                   ; preds = %if.then470
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end484

if.then481:                                       ; preds = %if.then470
  call void @__sanitizer_cov_trace_pc() #19
  %200 = call ptr @memcpy(ptr %call477, ptr %4, i32 %6)
  %201 = ptrtoint ptr %assoc_req_len to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %6, ptr %assoc_req_len, align 4
  br label %if.end484

if.end484:                                        ; preds = %if.then481, %if.then470.if.end484_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %call) #17
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 12
  %202 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %aid, align 4
  call void @report_add_sta_event(ptr noundef %padapter, ptr noundef %hwaddr, i32 noundef %203)
  br label %cleanup498

asoc_class2_error:                                ; preds = %if.then25.asoc_class2_error_crit_edge, %if.end12.asoc_class2_error_crit_edge
  %call.i = tail call fastcc i32 @_issue_deauth(ptr noundef %padapter, ptr noundef %12, i16 noundef zeroext 6, i1 noundef zeroext false) #17
  br label %cleanup498

OnAssocReqFail:                                   ; preds = %if.then433, %land.lhs.true359.OnAssocReqFail_crit_edge, %if.else224.OnAssocReqFail_crit_edge, %if.then216.OnAssocReqFail_crit_edge, %if.end190.OnAssocReqFail_crit_edge, %if.end79.OnAssocReqFail_crit_edge, %if.else59.OnAssocReqFail_crit_edge, %lor.lhs.false55.OnAssocReqFail_crit_edge, %if.end46.OnAssocReqFail_crit_edge, %lor.lhs.false.OnAssocReqFail_crit_edge, %if.end40.OnAssocReqFail_crit_edge
  %status.11 = phi i16 [ 15, %if.else59.OnAssocReqFail_crit_edge ], [ %status.6, %if.end190.OnAssocReqFail_crit_edge ], [ 17, %if.then433 ], [ 17, %if.then216.OnAssocReqFail_crit_edge ], [ 15, %lor.lhs.false.OnAssocReqFail_crit_edge ], [ 15, %if.end40.OnAssocReqFail_crit_edge ], [ 15, %lor.lhs.false55.OnAssocReqFail_crit_edge ], [ 15, %if.end46.OnAssocReqFail_crit_edge ], [ 15, %if.end79.OnAssocReqFail_crit_edge ], [ 15, %land.lhs.true359.OnAssocReqFail_crit_edge ], [ 40, %if.else224.OnAssocReqFail_crit_edge ]
  %aid491 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 9
  %204 = ptrtoint ptr %aid491 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 0, ptr %aid491, align 4
  br i1 %cmp4, label %if.then495, label %if.else496

if.then495:                                       ; preds = %OnAssocReqFail
  call void @__sanitizer_cov_trace_pc() #19
  call void @issue_asocrsp(ptr noundef %padapter, i16 noundef zeroext %status.11, ptr noundef %call, i32 noundef 16)
  br label %cleanup498

if.else496:                                       ; preds = %OnAssocReqFail
  call void @__sanitizer_cov_trace_pc() #19
  call void @issue_asocrsp(ptr noundef %padapter, i16 noundef zeroext %status.11, ptr noundef %call, i32 noundef 48)
  br label %cleanup498

cleanup498:                                       ; preds = %if.else496, %if.then495, %asoc_class2_error, %if.end484, %if.end459.cleanup498_crit_edge, %if.end.cleanup498_crit_edge, %entry.cleanup498_crit_edge
  %retval.0 = phi i32 [ 0, %asoc_class2_error ], [ 0, %entry.cleanup498_crit_edge ], [ 0, %if.end.cleanup498_crit_edge ], [ 1, %if.end484 ], [ 1, %if.end459.cleanup498_crit_edge ], [ 0, %if.else496 ], [ 0, %if.then495 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %supportRate) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ie_len) #17
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %elems) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_ieee802_11_parse_elems(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @UpdateBrateTblForSoftAP(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_parse_wpa2_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_parse_wpa_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_wps_attr_content(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bss_cap_update_on_sta_join(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sta_info_update(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @issue_asocrsp(ptr noundef %padapter, i16 noundef zeroext %status, ptr noundef %pstat, i32 noundef %pkt_type) local_unnamed_addr #2 align 64 {
entry:
  %val = alloca i16, align 2
  %lestatus = alloca i16, align 2
  %le_tmp = alloca i16, align 2
  %ie_len = alloca i32, align 4
  %ie_len110 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #17
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %ies = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lestatus) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %le_tmp) #17
  %call1.i.i = tail call ptr @rtw_alloc_xmitframe_ext(ptr noundef %xmitpriv) #17
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %entry.cleanup_crit_edge, label %if.end4.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4.i.i:                                      ; preds = %entry
  %call5.i.i = tail call ptr @rtw_alloc_xmitbuf_ext(ptr noundef %xmitpriv) #17
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %cleanup

if.end:                                           ; preds = %if.end4.i.i
  %frame_tag.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 3
  %0 = ptrtoint ptr %frame_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %frame_tag.i.i, align 4
  %pxmitbuf10.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call5.i.i, ptr %pxmitbuf10.i.i, align 4
  %pbuf.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %pbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pbuf.i.i, align 4
  %buf_addr.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %buf_addr.i.i, align 4
  %priv_data.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.i.i, ptr %priv_data.i.i, align 4
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %hdrlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 24, ptr %hdrlen.i, align 2
  %nr_frags.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 10
  %7 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %nr_frags.i, align 4
  %priority.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 16
  %8 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 7, ptr %priority.i, align 2
  %mac_id.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 18
  %9 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %mac_id.i, align 4
  %qsel.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 36
  %10 = ptrtoint ptr %qsel.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 18, ptr %qsel.i, align 2
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %pktlen.i, align 4
  %tx_rate.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %12 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_rate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp.i = icmp eq i8 %13, 2
  %..i = select i1 %cmp.i, i8 1, i8 2
  %call.i = tail call zeroext i8 @rtw_get_mgntframe_raid(ptr noundef %padapter, i8 noundef zeroext %..i) #17
  %raid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 27
  %14 = ptrtoint ptr %raid.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call.i, ptr %raid.i, align 1
  %15 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tx_rate.i, align 1
  %rate.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 39
  %17 = ptrtoint ptr %rate.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %rate.i, align 1
  %encrypt.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 11
  %18 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %encrypt.i, align 1
  %bswenc.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %bswenc.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %bswenc.i, align 2
  %qos_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 25
  %20 = ptrtoint ptr %qos_en.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %qos_en.i, align 1
  %ht_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 26
  %21 = ptrtoint ptr %ht_en.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %ht_en.i, align 4
  %bwmode.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %bwmode.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %bwmode.i, align 2
  %ch_offset.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 29
  %23 = ptrtoint ptr %ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %ch_offset.i, align 1
  %sgi.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 30
  %24 = ptrtoint ptr %sgi.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %sgi.i, align 4
  %mgnt_seq.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 3
  %25 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mgnt_seq.i, align 4
  %seqnum.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %seqnum.i, align 2
  %retry_ctrl.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 41
  %28 = ptrtoint ptr %retry_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %retry_ctrl.i, align 1
  %mbssid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 42
  %29 = ptrtoint ptr %mbssid.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %mbssid.i, align 4
  %30 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf_addr.i.i, align 4
  %32 = call ptr @memset(ptr %31, i32 0, i32 104)
  %33 = load ptr, ptr %buf_addr.i.i, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 40
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %add.ptr, align 2
  %35 = ptrtoint ptr %add.ptr to i32
  %add = add i32 %35, 4
  %36 = inttoptr i32 %add to ptr
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %pstat, i32 0, i32 12
  %37 = call ptr @memcpy(ptr %36, ptr %hwaddr, i32 6)
  %add3 = add i32 %35, 10
  %38 = inttoptr i32 %add3 to ptr
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %39 = call ptr @memcpy(ptr %38, ptr %mac_addr.i, i32 6)
  %add5 = add i32 %35, 16
  %40 = inttoptr i32 %add5 to ptr
  %call7 = tail call ptr @get_my_bssid(ptr noundef %network) #17
  %41 = call ptr @memcpy(ptr %40, ptr %call7, i32 6)
  %add8 = add i32 %35, 22
  %42 = inttoptr i32 %add8 to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %42, align 2
  %45 = and i16 %44, 3840
  %46 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %mgnt_seq.i, align 4
  %shl = shl i16 %47, 4
  %48 = tail call i16 @llvm.bswap.i16(i16 %shl)
  %or266 = or i16 %48, %45
  %49 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %or266, ptr %42, align 2
  %50 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %mgnt_seq.i, align 4
  %inc = add i16 %51, 1
  store i16 %inc, ptr %mgnt_seq.i, align 4
  %52 = zext i32 %pkt_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %pkt_type, label %if.end.cleanup_crit_edge [
    i32 16, label %if.end.do.body20_crit_edge
    i32 48, label %if.end.do.body20_crit_edge284
  ]

if.end.do.body20_crit_edge284:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body20

if.end.do.body20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body20:                                        ; preds = %if.end.do.body20_crit_edge, %if.end.do.body20_crit_edge284
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %add.ptr, align 2
  %55 = and i16 %54, 1023
  %conv24 = trunc i32 %pkt_type to i16
  %56 = tail call i16 @llvm.bswap.i16(i16 %conv24)
  %or27267 = or i16 %55, %56
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %or27267, ptr %add.ptr, align 2
  %58 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 24, ptr %hdrlen.i, align 2
  %59 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pktlen.i, align 4
  %add34 = add i32 %60, 24
  store i32 %add34, ptr %pktlen.i, align 4
  %add.ptr37 = getelementptr i8, ptr %33, i32 64
  %call38 = tail call ptr @rtw_get_capability_from_ie(ptr noundef %ies) #17
  %61 = ptrtoint ptr %call38 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %call38, align 2
  %63 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %val, align 2
  %call40 = call ptr @rtw_set_fixed_ie(ptr noundef %add.ptr37, i32 noundef 2, ptr noundef nonnull %val, ptr noundef %pktlen.i) #17
  %64 = call i16 @llvm.bswap.i16(i16 %status)
  %65 = ptrtoint ptr %lestatus to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %lestatus, align 2
  %call42 = call ptr @rtw_set_fixed_ie(ptr noundef %call40, i32 noundef 2, ptr noundef nonnull %lestatus, ptr noundef %pktlen.i) #17
  %aid = getelementptr inbounds %struct.sta_info, ptr %pstat, i32 0, i32 9
  %66 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %aid, align 4
  %68 = trunc i32 %67 to i16
  %conv45 = or i16 %68, -16384
  %69 = call i16 @llvm.bswap.i16(i16 %conv45)
  %70 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %le_tmp, align 2
  %call47 = call ptr @rtw_set_fixed_ie(ptr noundef %call42, i32 noundef 2, ptr noundef nonnull %le_tmp, ptr noundef %pktlen.i) #17
  %bssratelen = getelementptr inbounds %struct.sta_info, ptr %pstat, i32 0, i32 22
  %71 = ptrtoint ptr %bssratelen to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bssratelen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %72)
  %cmp48 = icmp ult i32 %72, 9
  %bssrateset = getelementptr inbounds %struct.sta_info, ptr %pstat, i32 0, i32 21
  br i1 %cmp48, label %if.then50, label %if.else55

if.then50:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #19
  %call54 = call ptr @rtw_set_ie(ptr noundef %call47, i32 noundef 1, i32 noundef %72, ptr noundef %bssrateset, ptr noundef %pktlen.i) #17
  br label %if.end66

if.else55:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #19
  %call59 = call ptr @rtw_set_ie(ptr noundef %call47, i32 noundef 1, i32 noundef 8, ptr noundef %bssrateset, ptr noundef %pktlen.i) #17
  %73 = ptrtoint ptr %bssratelen to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bssratelen, align 8
  %sub = add i32 %74, -8
  %add.ptr63 = getelementptr %struct.sta_info, ptr %pstat, i32 0, i32 21, i32 8
  %call65 = call ptr @rtw_set_ie(ptr noundef %call59, i32 noundef 50, i32 noundef %sub, ptr noundef %add.ptr63, ptr noundef %pktlen.i) #17
  br label %if.end66

if.end66:                                         ; preds = %if.else55, %if.then50
  %pframe.0 = phi ptr [ %call54, %if.then50 ], [ %call65, %if.else55 ]
  %flags = getelementptr inbounds %struct.sta_info, ptr %pstat, i32 0, i32 46
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags, align 8
  %and67 = and i32 %76, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end103_crit_edge, label %land.lhs.true

if.end66.if.end103_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end103

land.lhs.true:                                    ; preds = %if.end66
  %htpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33
  %77 = ptrtoint ptr %htpriv to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool70.not = icmp eq i8 %78, 0
  br i1 %tobool70.not, label %land.lhs.true.if.end103_crit_edge, label %if.then71

land.lhs.true.if.end103_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end103

if.then71:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ie_len) #17
  %79 = ptrtoint ptr %ie_len to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %ie_len, align 4
  %add.ptr72 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12, i32 12
  %ie_length = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 11
  %80 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %ie_length, align 1
  %sub73 = add i32 %81, -12
  %call74 = call ptr @rtw_get_ie(ptr noundef %add.ptr72, i32 noundef 45, ptr noundef nonnull %ie_len, i32 noundef %sub73) #17
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %if.then71.if.end86_crit_edge, label %land.lhs.true76

if.then71.if.end86_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end86

land.lhs.true76:                                  ; preds = %if.then71
  %82 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp77.not = icmp eq i32 %83, 0
  br i1 %cmp77.not, label %land.lhs.true76.if.end86_crit_edge, label %if.then79

land.lhs.true76.if.end86_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end86

if.then79:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #19
  %add80 = add i32 %83, 2
  %84 = call ptr @memcpy(ptr %pframe.0, ptr %call74, i32 %add80)
  %85 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ie_len, align 4
  %add81 = add i32 %86, 2
  %add.ptr82 = getelementptr i8, ptr %pframe.0, i32 %add81
  %87 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pktlen.i, align 4
  %add85 = add i32 %88, %add81
  store i32 %add85, ptr %pktlen.i, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then79, %land.lhs.true76.if.end86_crit_edge, %if.then71.if.end86_crit_edge
  %pframe.1 = phi ptr [ %add.ptr82, %if.then79 ], [ %pframe.0, %land.lhs.true76.if.end86_crit_edge ], [ %pframe.0, %if.then71.if.end86_crit_edge ]
  %89 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %ie_length, align 1
  %sub89 = add i32 %90, -12
  %call90 = call ptr @rtw_get_ie(ptr noundef %add.ptr72, i32 noundef 61, ptr noundef nonnull %ie_len, i32 noundef %sub89) #17
  %tobool91.not = icmp eq ptr %call90, null
  br i1 %tobool91.not, label %if.end86.if.end102_crit_edge, label %land.lhs.true92

if.end86.if.end102_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end102

land.lhs.true92:                                  ; preds = %if.end86
  %91 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp93.not = icmp eq i32 %92, 0
  br i1 %cmp93.not, label %land.lhs.true92.if.end102_crit_edge, label %if.then95

land.lhs.true92.if.end102_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end102

if.then95:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #19
  %add96 = add i32 %92, 2
  %93 = call ptr @memcpy(ptr %pframe.1, ptr %call90, i32 %add96)
  %94 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ie_len, align 4
  %add97 = add i32 %95, 2
  %add.ptr98 = getelementptr i8, ptr %pframe.1, i32 %add97
  %96 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pktlen.i, align 4
  %add101 = add i32 %97, %add97
  store i32 %add101, ptr %pktlen.i, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then95, %land.lhs.true92.if.end102_crit_edge, %if.end86.if.end102_crit_edge
  %pframe.2 = phi ptr [ %add.ptr98, %if.then95 ], [ %pframe.1, %land.lhs.true92.if.end102_crit_edge ], [ %pframe.1, %if.end86.if.end102_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ie_len) #17
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %land.lhs.true.if.end103_crit_edge, %if.end66.if.end103_crit_edge
  %pframe.3 = phi ptr [ %pframe.2, %if.end102 ], [ %pframe.0, %land.lhs.true.if.end103_crit_edge ], [ %pframe.0, %if.end66.if.end103_crit_edge ]
  %98 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags, align 8
  %and105 = and i32 %99, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end103.if.end139_crit_edge, label %land.lhs.true107

if.end103.if.end139_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end139

land.lhs.true107:                                 ; preds = %if.end103
  %qospriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 30
  %100 = ptrtoint ptr %qospriv to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %qospriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool108.not = icmp eq i32 %101, 0
  br i1 %tobool108.not, label %land.lhs.true107.if.end139_crit_edge, label %if.then109

land.lhs.true107.if.end139_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end139

if.then109:                                       ; preds = %land.lhs.true107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ie_len110) #17
  %102 = ptrtoint ptr %ie_len110 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %ie_len110, align 4
  %add.ptr111 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12, i32 12
  %ie_length112 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 11
  %103 = ptrtoint ptr %ie_length112 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %ie_length112, align 1
  %105 = add i32 %104, -14
  %call116274 = call ptr @rtw_get_ie(ptr noundef %add.ptr111, i32 noundef 221, ptr noundef nonnull %ie_len110, i32 noundef %105) #17
  %tobool117.not275 = icmp eq ptr %call116274, null
  br i1 %tobool117.not275, label %if.then109.for.end_crit_edge, label %if.then109.land.lhs.true118_crit_edge

if.then109.land.lhs.true118_crit_edge:            ; preds = %if.then109
  br label %land.lhs.true118

if.then109.for.end_crit_edge:                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

land.lhs.true118:                                 ; preds = %for.inc.land.lhs.true118_crit_edge, %if.then109.land.lhs.true118_crit_edge
  %call116276 = phi ptr [ %call116, %for.inc.land.lhs.true118_crit_edge ], [ %call116274, %if.then109.land.lhs.true118_crit_edge ]
  %add.ptr119 = getelementptr i8, ptr %call116276, i32 2
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr119, ptr noundef nonnull dereferenceable(6) @__const.issue_asocrsp.WMM_PARA_IE, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool122.not = icmp eq i32 %bcmp, 0
  %106 = ptrtoint ptr %ie_len110 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ie_len110, align 4
  br i1 %tobool122.not, label %if.then123, label %lor.lhs.false132.critedge

if.then123:                                       ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #19
  %add124 = add i32 %107, 2
  %108 = call ptr @memcpy(ptr %pframe.3, ptr %call116276, i32 %add124)
  %109 = ptrtoint ptr %ie_len110 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ie_len110, align 4
  %add125 = add i32 %110, 2
  %add.ptr126 = getelementptr i8, ptr %pframe.3, i32 %add125
  %111 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pktlen.i, align 4
  %add129 = add i32 %112, %add125
  store i32 %add129, ptr %pktlen.i, align 4
  br label %for.end

lor.lhs.false132.critedge:                        ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp133 = icmp eq i32 %107, 0
  br i1 %cmp133, label %lor.lhs.false132.critedge.for.end_crit_edge, label %for.inc

lor.lhs.false132.critedge.for.end_crit_edge:      ; preds = %lor.lhs.false132.critedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false132.critedge
  %add137 = add i32 %107, 2
  %add.ptr138 = getelementptr i8, ptr %call116276, i32 %add137
  %113 = ptrtoint ptr %ie_length112 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %ie_length112, align 1
  %115 = ptrtoint ptr %ie_len110 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ie_len110, align 4
  %117 = add i32 %114, -14
  %sub115 = sub i32 %117, %116
  %call116 = call ptr @rtw_get_ie(ptr noundef %add.ptr138, i32 noundef 221, ptr noundef nonnull %ie_len110, i32 noundef %sub115) #17
  %tobool117.not = icmp eq ptr %call116, null
  br i1 %tobool117.not, label %for.inc.for.end_crit_edge, label %for.inc.land.lhs.true118_crit_edge

for.inc.land.lhs.true118_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true118

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lor.lhs.false132.critedge.for.end_crit_edge, %if.then123, %if.then109.for.end_crit_edge
  %pframe.4 = phi ptr [ %add.ptr126, %if.then123 ], [ %pframe.3, %if.then109.for.end_crit_edge ], [ %pframe.3, %for.inc.for.end_crit_edge ], [ %pframe.3, %lor.lhs.false132.critedge.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ie_len110) #17
  br label %if.end139

if.end139:                                        ; preds = %for.end, %land.lhs.true107.if.end139_crit_edge, %if.end103.if.end139_crit_edge
  %pframe.5 = phi ptr [ %pframe.4, %for.end ], [ %pframe.3, %land.lhs.true107.if.end139_crit_edge ], [ %pframe.3, %if.end103.if.end139_crit_edge ]
  %assoc_AP_vendor = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 14
  %118 = ptrtoint ptr %assoc_AP_vendor to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %assoc_AP_vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %119)
  %cmp141 = icmp eq i8 %119, 1
  br i1 %cmp141, label %if.then143, label %if.end139.if.end146_crit_edge

if.end139.if.end146_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end146

if.then143:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #19
  %call145 = call ptr @rtw_set_ie(ptr noundef %pframe.5, i32 noundef 221, i32 noundef 6, ptr noundef nonnull @REALTEK_96B_IE, ptr noundef %pktlen.i) #17
  br label %if.end146

if.end146:                                        ; preds = %if.then143, %if.end139.if.end146_crit_edge
  %pframe.6 = phi ptr [ %call145, %if.then143 ], [ %pframe.5, %if.end139.if.end146_crit_edge ]
  %wps_assoc_resp_ie = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 55
  %120 = ptrtoint ptr %wps_assoc_resp_ie to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %wps_assoc_resp_ie, align 4
  %tobool147.not = icmp eq ptr %121, null
  br i1 %tobool147.not, label %if.end146.if.end159_crit_edge, label %land.lhs.true148

if.end146.if.end159_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end159

land.lhs.true148:                                 ; preds = %if.end146
  %wps_assoc_resp_ie_len = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 58
  %122 = ptrtoint ptr %wps_assoc_resp_ie_len to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %wps_assoc_resp_ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp149.not = icmp eq i32 %123, 0
  br i1 %cmp149.not, label %land.lhs.true148.if.end159_crit_edge, label %if.then151

land.lhs.true148.if.end159_crit_edge:             ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end159

if.then151:                                       ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #19
  %124 = call ptr @memcpy(ptr %pframe.6, ptr %121, i32 %123)
  %125 = ptrtoint ptr %wps_assoc_resp_ie_len to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %wps_assoc_resp_ie_len, align 4
  %127 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pktlen.i, align 4
  %add158 = add i32 %128, %126
  store i32 %add158, ptr %pktlen.i, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then151, %land.lhs.true148.if.end159_crit_edge, %if.end146.if.end159_crit_edge
  %129 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pktlen.i, align 4
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 9
  %131 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %last_txcmdsz, align 4
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %132 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i = icmp eq i32 %133, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end159.if.then.i_crit_edge

if.end159.if.then.i_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end159
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %134 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %bDriverStopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool1.not.i = icmp eq i32 %135, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end159.if.then.i_crit_edge
  %136 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pxmitbuf10.i.i, align 4
  %call.i268 = call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %137) #17
  %call3.i = call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef %call1.i.i) #17
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  %call4.i = call i32 @rtw_hal_mgnt_xmit(ptr noundef %padapter, ptr noundef %call1.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %if.end.cleanup_crit_edge, %if.then7.i.i, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %le_tmp) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lestatus) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_zmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @issue_deauth(ptr noundef %padapter, ptr nocapture noundef readonly %da, i16 noundef zeroext %reason) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_issue_deauth(ptr noundef %padapter, ptr noundef %da, i16 noundef zeroext %reason, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @OnAssocRsp(ptr noundef %padapter, ptr nocapture noundef readonly %precv_frame) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_data, align 4
  %len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 7
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %trunc.i = trunc i16 %5 to i2
  %rev.i = tail call i2 @llvm.bitreverse.i2(i2 %trunc.i) #17
  %6 = sext i2 %rev.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %.not = icmp eq i2 %rev.i, -1
  br i1 %.not, label %entry.get_da.exit_crit_edge, label %switch.lookup

entry.get_da.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_da.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %or.i = zext i2 %rev.i to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.OnAssocRsp, i32 0, i32 %or.i
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_da.exit

get_da.exit:                                      ; preds = %switch.lookup, %entry.get_da.exit_crit_edge
  %.sink16.i = phi i32 [ %switch.load, %switch.lookup ], [ 16, %entry.get_da.exit_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  %add10.i = add i32 %.sink16.i, %8
  %da.0.i = inttoptr i32 %add10.i to ptr
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i, ptr noundef dereferenceable(6) %da.0.i, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end, label %get_da.exit.cleanup_crit_edge

get_da.exit.cleanup_crit_edge:                    ; preds = %get_da.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %get_da.exit
  %9 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %10, 9216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp ne i32 %and, 0
  %and7 = and i32 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond = and i1 %tobool3.not, %tobool8.not
  br i1 %or.cond, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %link_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 20
  %call11 = tail call i32 @del_timer_sync(ptr noundef %link_timer) #17
  %add.ptr12 = getelementptr i8, ptr %1, i32 26
  %11 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.not = icmp eq i16 %12, 0
  br i1 %cmp.not, label %if.end16, label %report_assoc_result.thread

report_assoc_result.thread:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %mlmext_info, align 4
  br label %if.else

if.end16:                                         ; preds = %if.end10
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %capability = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 13
  %17 = ptrtoint ptr %capability to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %capability, align 4
  %18 = and i16 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool21.not = icmp eq i16 %18, 0
  %conv22 = select i1 %tobool21.not, i8 20, i8 9
  %slotTime = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 15
  %19 = ptrtoint ptr %slotTime to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv22, ptr %slotTime, align 1
  %add.ptr24 = getelementptr i8, ptr %1, i32 28
  %20 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr24, align 2
  %22 = and i16 %21, -193
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %aid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 11
  %24 = ptrtoint ptr %aid to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %aid, align 4
  %conv28 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %3)
  %cmp29103 = icmp ugt i32 %3, 30
  br i1 %cmp29103, label %if.end16.for.body_crit_edge, label %if.end16.report_assoc_result_crit_edge

if.end16.report_assoc_result_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %report_assoc_result

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %if.end16.for.body_crit_edge
  %i.0104 = phi i32 [ %add42, %sw.epilog.for.body_crit_edge ], [ 30, %if.end16.for.body_crit_edge ]
  %add.ptr31 = getelementptr i8, ptr %1, i32 %i.0104
  %25 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr31, align 1
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %26, label %for.body.sw.epilog_crit_edge [
    i8 -35, label %sw.bb
    i8 45, label %sw.bb38
    i8 61, label %sw.bb39
    i8 42, label %sw.bb40
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %data = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr31, i32 0, i32 2
  %bcmp98 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %data, ptr noundef nonnull dereferenceable(6) @WMM_PARA_OUI, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp98)
  %tobool34.not = icmp eq i32 %bcmp98, 0
  br i1 %tobool34.not, label %if.then35, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then35:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %call36 = tail call i32 @WMM_param_handler(ptr noundef %padapter, ptr noundef %add.ptr31) #17
  br label %sw.epilog

sw.bb38:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @HT_caps_handler(ptr noundef %padapter, ptr noundef %add.ptr31) #17
  br label %sw.epilog

sw.bb39:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @HT_info_handler(ptr noundef %padapter, ptr noundef %add.ptr31) #17
  br label %sw.epilog

sw.bb40:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ERP_IE_handler(ptr noundef %padapter, ptr noundef %add.ptr31) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb40, %sw.bb39, %sw.bb38, %if.then35, %sw.bb.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %length = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr31, i32 0, i32 1
  %28 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %length, align 1
  %conv41 = zext i8 %29 to i32
  %add = add i32 %i.0104, 2
  %add42 = add i32 %add, %conv41
  %cmp29 = icmp ult i32 %add42, %3
  br i1 %cmp29, label %sw.epilog.for.body_crit_edge, label %sw.epilog.report_assoc_result_crit_edge

sw.epilog.report_assoc_result_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %report_assoc_result

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

report_assoc_result:                              ; preds = %sw.epilog.report_assoc_result_crit_edge, %if.end16.report_assoc_result_crit_edge
  %30 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mlmext_info, align 4
  %and44 = and i32 %31, -24577
  %or = or i32 %and44, 16384
  store i32 %or, ptr %mlmext_info, align 4
  %supported_rates = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 9
  tail call void @UpdateBrateTbl(ptr noundef %padapter, ptr noundef %supported_rates) #17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp47.not = icmp eq i16 %22, 0
  br i1 %cmp47.not, label %report_assoc_result.if.else_crit_edge, label %if.then49

report_assoc_result.if.else_crit_edge:            ; preds = %report_assoc_result
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then49:                                        ; preds = %report_assoc_result
  call void @__sanitizer_cov_trace_pc() #19
  %assoc_rsp = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 51
  %assoc_rsp_len = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 52
  tail call void @rtw_buf_update(ptr noundef %assoc_rsp, ptr noundef %assoc_rsp_len, ptr noundef %1, i32 noundef %3) #17
  br label %if.end52

if.else:                                          ; preds = %report_assoc_result.if.else_crit_edge, %report_assoc_result.thread
  %res.0102 = phi i32 [ -4, %report_assoc_result.thread ], [ %conv28, %report_assoc_result.if.else_crit_edge ]
  %assoc_rsp50 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 51
  %assoc_rsp_len51 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 52
  tail call void @rtw_buf_free(ptr noundef %assoc_rsp50, ptr noundef %assoc_rsp_len51) #17
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then49
  %res.0101 = phi i32 [ %res.0102, %if.else ], [ %conv28, %if.then49 ]
  tail call void @report_join_res(ptr noundef %padapter, i32 noundef %res.0101)
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end.cleanup_crit_edge, %get_da.exit.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @WMM_param_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @HT_caps_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @HT_info_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ERP_IE_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @UpdateBrateTbl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_buf_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_buf_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @report_join_res(ptr noundef %padapter, i32 noundef %res) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 928) #17
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call) #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 56, ptr %cmdcode, align 4
  %cmdsz5 = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %cmdsz5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 928, ptr %cmdsz5, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %parmbuf, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rspsz, align 4
  %7 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %call1, align 4
  %bf.clear = and i32 %bf.load, -16777216
  %bf.set8 = or i32 %bf.clear, 656280
  store i32 %bf.set8, ptr %call1, align 4
  %event_seq = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event_seq, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %event_seq, i32 1, i32 3, i32 1) #17
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %event_seq, ptr %event_seq, i32 1, ptr elementtype(i32) %event_seq) #17, !srcloc !155
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !156
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load10 = load i32, ptr %call1, align 4
  %bf.shl = shl i32 %asmresult.i.i.i.i, 24
  %bf.clear11 = and i32 %bf.load10, 16777215
  %bf.set12 = or i32 %bf.clear11, %bf.shl
  store i32 %bf.set12, ptr %call1, align 4
  %add.ptr = getelementptr i8, ptr %call1, i32 8
  %network13 = getelementptr i8, ptr %call1, i32 36
  %network14 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %10 = call ptr @memcpy(ptr %network13, ptr %network14, i32 872)
  %aid = getelementptr i8, ptr %call1, i32 28
  %11 = ptrtoint ptr %aid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %res, ptr %aid, align 4
  %join_res = getelementptr i8, ptr %call1, i32 32
  %12 = ptrtoint ptr %join_res to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %res, ptr %join_res, align 4
  tail call void @rtw_joinbss_event_prehandle(ptr noundef %padapter, ptr noundef %add.ptr) #17
  %call18 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @OnDeAuth(ptr noundef %padapter, ptr nocapture noundef readonly %precv_frame) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_data, align 4
  %2 = ptrtoint ptr %1 to i32
  %add = add i32 %2, 16
  %3 = inttoptr i32 %add to ptr
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %call = tail call ptr @get_my_bssid(ptr noundef %network) #17
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %3, ptr noundef dereferenceable(6) %call, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_state.i, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @OnDeAuth.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@OnDeAuth, %if.then10)) #17
          to label %do.end14 [label %if.then10], !srcloc !153

if.then10:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %10 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pnetdev, align 8
  %conv = zext i16 %6 to i32
  %add11 = add i32 %2, 10
  %12 = inttoptr i32 %add11 to ptr
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @OnDeAuth.__UNIQUE_ID_ddebug347, ptr noundef %11, ptr noundef nonnull @.str.7, i32 noundef %conv, ptr noundef %12) #17
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %if.then4
  %add15 = add i32 %2, 10
  %13 = inttoptr i32 %add15 to ptr
  %call16 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %13) #17
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end14.cleanup_crit_edge, label %if.then18

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then18:                                        ; preds = %do.end14
  %asoc_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #17
  %asoc_list = getelementptr inbounds %struct.sta_info, ptr %call16, i32 0, i32 39
  %14 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %asoc_list, align 4
  %cmp.i.not = icmp eq ptr %15, %asoc_list
  br i1 %cmp.i.not, label %if.then18.if.end24_crit_edge, label %if.then21

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

if.then21:                                        ; preds = %if.then18
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %asoc_list) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.then21.list_del_init.exit_crit_edge

if.then21.list_del_init.exit_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.sta_info, ptr %call16, i32 0, i32 39, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asoc_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then21.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %asoc_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %asoc_list, ptr %asoc_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.sta_info, ptr %call16, i32 0, i32 39, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %asoc_list, ptr %prev.i3.i, align 4
  %asoc_list_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 13
  %24 = ptrtoint ptr %asoc_list_cnt to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %asoc_list_cnt, align 4
  %dec = add i8 %25, -1
  store i8 %dec, ptr %asoc_list_cnt, align 4
  %call23 = tail call zeroext i8 @ap_free_sta(ptr noundef %padapter, ptr noundef nonnull %call16, i1 noundef zeroext false, i16 noundef zeroext %6) #17
  br label %if.end24

if.end24:                                         ; preds = %list_del_init.exit, %if.then18.if.end24_crit_edge
  %updated.0 = phi i8 [ %call23, %list_del_init.exit ], [ 0, %if.then18.if.end24_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #17
  tail call void @associated_clients_update(ptr noundef %padapter, i8 noundef zeroext %updated.0) #17
  br label %cleanup

if.else:                                          ; preds = %if.end
  %26 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mlmext_info, align 4
  %28 = and i32 %27, 8704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %if.else.do.body45_crit_edge, label %if.then31

if.else.do.body45_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body45

if.then31:                                        ; preds = %if.else
  %30 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %5, label %do.body45.fold.split [
    i16 1536, label %if.then31.do.body45_crit_edge
    i16 512, label %if.then31.do.body45_crit_edge112
  ]

if.then31.do.body45_crit_edge112:                 ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body45

if.then31.do.body45_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body45

do.body45.fold.split:                             ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body45

do.body45:                                        ; preds = %do.body45.fold.split, %if.then31.do.body45_crit_edge, %if.then31.do.body45_crit_edge112, %if.else.do.body45_crit_edge
  %cmp66 = phi i1 [ true, %if.else.do.body45_crit_edge ], [ false, %if.then31.do.body45_crit_edge ], [ true, %do.body45.fold.split ], [ false, %if.then31.do.body45_crit_edge112 ]
  %ignore_received_deauth.0 = phi i32 [ 0, %if.else.do.body45_crit_edge ], [ 1, %if.then31.do.body45_crit_edge ], [ 0, %do.body45.fold.split ], [ 1, %if.then31.do.body45_crit_edge112 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @OnDeAuth.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@OnDeAuth, %if.then57)) #17
          to label %do.end65 [label %if.then57], !srcloc !153

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #19
  %pnetdev58 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %31 = ptrtoint ptr %pnetdev58 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pnetdev58, align 8
  %conv59 = zext i16 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @OnDeAuth.__UNIQUE_ID_ddebug348, ptr noundef %32, ptr noundef nonnull @.str.8, i32 noundef %conv59, ptr noundef %3, i32 noundef %ignore_received_deauth.0) #17
  br label %do.end65

do.end65:                                         ; preds = %if.then57, %do.body45
  br i1 %cmp66, label %if.then68, label %do.end65.if.end71_crit_edge

do.end65.if.end71_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.then68:                                        ; preds = %do.end65
  %call.i = tail call ptr @get_my_bssid(ptr noundef %network) #17
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %3, ptr noundef dereferenceable(6) %call.i, i32 6) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i107 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i107, label %if.end.i, label %if.then68.if.end71_crit_edge

if.then68.if.end71_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.end.i:                                         ; preds = %if.then68
  %33 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mlmext_info, align 4
  %and.i108 = and i32 %34, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i108)
  %cmp.i109 = icmp eq i32 %and.i108, 2
  br i1 %cmp.i109, label %if.then2.i, label %if.end.i.if.end71_crit_edge

if.end.i.if.end71_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.then2.i:                                       ; preds = %if.end.i
  %and4.i = and i32 %34, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  %35 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %mlmext_info, align 4
  tail call void @report_del_sta_event(ptr noundef %padapter, ptr noundef %3, i16 noundef zeroext %6) #17
  br label %if.end71

if.else.i:                                        ; preds = %if.then2.i
  %and9.i = and i32 %34, 9984
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else.i.if.end71_crit_edge, label %if.then11.i

if.else.i.if.end71_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %36 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %mlmext_info, align 4
  tail call void @report_join_res(ptr noundef %padapter, i32 noundef -2) #17
  br label %if.end71

if.end71:                                         ; preds = %if.then11.i, %if.else.i.if.end71_crit_edge, %if.then6.i, %if.end.i.if.end71_crit_edge, %if.then68.if.end71_crit_edge, %do.end65.if.end71_crit_edge
  %bBusyTraffic = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 3
  %37 = ptrtoint ptr %bBusyTraffic to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %bBusyTraffic, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end24, %do.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ap_free_sta(ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @associated_clients_update(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @OnDisassoc(ptr noundef %padapter, ptr nocapture noundef readonly %precv_frame) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_data, align 4
  %2 = ptrtoint ptr %1 to i32
  %add = add i32 %2, 16
  %3 = inttoptr i32 %add to ptr
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %call = tail call ptr @get_my_bssid(ptr noundef %network) #17
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %3, ptr noundef dereferenceable(6) %call, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_state.i, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %do.body28, label %if.then4

if.then4:                                         ; preds = %if.end
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @OnDisassoc.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@OnDisassoc, %if.then10)) #17
          to label %do.end14 [label %if.then10], !srcloc !153

if.then10:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %10 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pnetdev, align 8
  %conv = zext i16 %6 to i32
  %add11 = add i32 %2, 10
  %12 = inttoptr i32 %add11 to ptr
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @OnDisassoc.__UNIQUE_ID_ddebug349, ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef %conv, ptr noundef %12) #17
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %if.then4
  %add15 = add i32 %2, 10
  %13 = inttoptr i32 %add15 to ptr
  %call16 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %13) #17
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end14.cleanup_crit_edge, label %if.then18

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then18:                                        ; preds = %do.end14
  %asoc_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #17
  %asoc_list = getelementptr inbounds %struct.sta_info, ptr %call16, i32 0, i32 39
  %14 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %asoc_list, align 4
  %cmp.i.not = icmp eq ptr %15, %asoc_list
  br i1 %cmp.i.not, label %if.then18.if.end24_crit_edge, label %if.then21

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

if.then21:                                        ; preds = %if.then18
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %asoc_list) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.then21.list_del_init.exit_crit_edge

if.then21.list_del_init.exit_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.sta_info, ptr %call16, i32 0, i32 39, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asoc_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then21.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %asoc_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %asoc_list, ptr %asoc_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.sta_info, ptr %call16, i32 0, i32 39, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %asoc_list, ptr %prev.i3.i, align 4
  %asoc_list_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 13
  %24 = ptrtoint ptr %asoc_list_cnt to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %asoc_list_cnt, align 4
  %dec = add i8 %25, -1
  store i8 %dec, ptr %asoc_list_cnt, align 4
  %call23 = tail call zeroext i8 @ap_free_sta(ptr noundef %padapter, ptr noundef nonnull %call16, i1 noundef zeroext false, i16 noundef zeroext %6) #17
  br label %if.end24

if.end24:                                         ; preds = %list_del_init.exit, %if.then18.if.end24_crit_edge
  %updated.0 = phi i8 [ %call23, %list_del_init.exit ], [ 0, %if.then18.if.end24_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #17
  tail call void @associated_clients_update(ptr noundef %padapter, i8 noundef zeroext %updated.0) #17
  br label %cleanup

do.body28:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @OnDisassoc.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@OnDisassoc, %if.then40)) #17
          to label %do.end48 [label %if.then40], !srcloc !153

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #19
  %pnetdev41 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %26 = ptrtoint ptr %pnetdev41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pnetdev41, align 8
  %conv42 = zext i16 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @OnDisassoc.__UNIQUE_ID_ddebug350, ptr noundef %27, ptr noundef nonnull @.str.11, i32 noundef %conv42, ptr noundef %3) #17
  br label %do.end48

do.end48:                                         ; preds = %if.then40, %do.body28
  %mlmext_info.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %call.i = tail call ptr @get_my_bssid(ptr noundef %network) #17
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %3, ptr noundef dereferenceable(6) %call.i, i32 6) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i81 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i81, label %if.end.i, label %do.end48.receive_disconnect.exit_crit_edge

do.end48.receive_disconnect.exit_crit_edge:       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %receive_disconnect.exit

if.end.i:                                         ; preds = %do.end48
  %28 = ptrtoint ptr %mlmext_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mlmext_info.i, align 4
  %and.i82 = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i82)
  %cmp.i83 = icmp eq i32 %and.i82, 2
  br i1 %cmp.i83, label %if.then2.i, label %if.end.i.receive_disconnect.exit_crit_edge

if.end.i.receive_disconnect.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %receive_disconnect.exit

if.then2.i:                                       ; preds = %if.end.i
  %and4.i = and i32 %29, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %mlmext_info.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %mlmext_info.i, align 4
  tail call void @report_del_sta_event(ptr noundef %padapter, ptr noundef %3, i16 noundef zeroext %6) #17
  br label %receive_disconnect.exit

if.else.i:                                        ; preds = %if.then2.i
  %and9.i = and i32 %29, 9984
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else.i.receive_disconnect.exit_crit_edge, label %if.then11.i

if.else.i.receive_disconnect.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %receive_disconnect.exit

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %31 = ptrtoint ptr %mlmext_info.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %mlmext_info.i, align 4
  tail call void @report_join_res(ptr noundef %padapter, i32 noundef -2) #17
  br label %receive_disconnect.exit

receive_disconnect.exit:                          ; preds = %if.then11.i, %if.else.i.receive_disconnect.exit_crit_edge, %if.then6.i, %if.end.i.receive_disconnect.exit_crit_edge, %do.end48.receive_disconnect.exit_crit_edge
  %bBusyTraffic = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 3
  %32 = ptrtoint ptr %bBusyTraffic to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %bBusyTraffic, align 4
  br label %cleanup

cleanup:                                          ; preds = %receive_disconnect.exit, %if.end24, %do.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @OnAtim(ptr nocapture readnone %padapter, ptr nocapture readnone %precv_frame) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @on_action_spct(ptr noundef %padapter, ptr nocapture noundef readonly %precv_frame) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_data, align 4
  %2 = ptrtoint ptr %1 to i32
  %add = add i32 %2, 10
  %3 = inttoptr i32 %add to ptr
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %3) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @OnAction_back(ptr noundef %padapter, ptr nocapture noundef readonly %precv_frame) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_data, align 4
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %2 = ptrtoint ptr %1 to i32
  %add = add i32 %2, 4
  %3 = inttoptr i32 %add to ptr
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i, ptr noundef dereferenceable(6) %3, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %4 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp.not = icmp ne i32 %and, 3
  %and4 = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = and i1 %cmp.not, %tobool5.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %add9 = add i32 %2, 10
  %6 = inttoptr i32 %add9 to ptr
  %call10 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %6) #17
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp14 = icmp eq i8 %8, 3
  br i1 %cmp14, label %if.then16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  %HT_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 20
  %9 = ptrtoint ptr %HT_enable to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %HT_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool17.not = icmp eq i8 %10, 0
  br i1 %tobool17.not, label %if.then16.cleanup_crit_edge, label %if.end19

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end19:                                         ; preds = %if.then16
  %arrayidx20 = getelementptr i8, ptr %1, i32 25
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx20, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %12, label %if.end19.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb27
    i8 2, label %sw.bb72
  ]

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end19
  %ADDBA_req = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 35
  %arrayidx22 = getelementptr i8, ptr %1, i32 26
  %14 = call ptr @memcpy(ptr %ADDBA_req, ptr %arrayidx22, i32 7)
  tail call void @process_addba_req(ptr noundef %padapter, ptr noundef %ADDBA_req, ptr noundef %6) #17
  %accept_addba_req = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 31
  %15 = ptrtoint ptr %accept_addba_req to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %accept_addba_req, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool24.not = icmp eq i8 %16, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @issue_action_BA(ptr noundef %padapter, ptr noundef %6, i8 noundef zeroext 1, i16 noundef zeroext 0)
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @issue_action_BA(ptr noundef %padapter, ptr noundef %6, i8 noundef zeroext 1, i16 noundef zeroext 37)
  br label %cleanup

sw.bb27:                                          ; preds = %if.end19
  %arrayidx28 = getelementptr i8, ptr %1, i32 27
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %arrayidx28, align 1
  %arrayidx30 = getelementptr i8, ptr %1, i32 29
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx30, align 1
  %21 = lshr i8 %20, 2
  %22 = and i8 %21, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp35 = icmp eq i16 %18, 0
  %shl = shl nuw i8 1, %22
  br i1 %cmp35, label %if.then37, label %if.else47

if.then37:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #19
  %agg_enable_bitmap = getelementptr inbounds %struct.sta_info, ptr %call10, i32 0, i32 38, i32 10
  %23 = ptrtoint ptr %agg_enable_bitmap to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %agg_enable_bitmap, align 8
  %conv40 = or i8 %24, %shl
  store i8 %conv40, ptr %agg_enable_bitmap, align 8
  %candidate_tid_bitmap = getelementptr inbounds %struct.sta_info, ptr %call10, i32 0, i32 38, i32 11
  %25 = ptrtoint ptr %candidate_tid_bitmap to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %candidate_tid_bitmap, align 1
  %27 = xor i8 %shl, -1
  %conv46 = and i8 %26, %27
  store i8 %conv46, ptr %candidate_tid_bitmap, align 1
  br label %if.end56

if.else47:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #19
  %neg50 = xor i8 %shl, -1
  %agg_enable_bitmap52 = getelementptr inbounds %struct.sta_info, ptr %call10, i32 0, i32 38, i32 10
  %28 = ptrtoint ptr %agg_enable_bitmap52 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %agg_enable_bitmap52, align 8
  %and54 = and i8 %29, %neg50
  store i8 %and54, ptr %agg_enable_bitmap52, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.else47, %if.then37
  %state57 = getelementptr inbounds %struct.sta_info, ptr %call10, i32 0, i32 8
  %30 = ptrtoint ptr %state57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state57, align 8
  %and58 = and i32 %31, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end56.cleanup_crit_edge, label %if.then60

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  %shl62 = shl nuw i8 1, %22
  %neg63 = xor i8 %shl62, -1
  %agg_enable_bitmap65 = getelementptr inbounds %struct.sta_info, ptr %call10, i32 0, i32 38, i32 10
  %32 = ptrtoint ptr %agg_enable_bitmap65 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %agg_enable_bitmap65, align 8
  %and67 = and i8 %33, %neg63
  store i8 %and67, ptr %agg_enable_bitmap65, align 8
  %expire_to = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 17
  %34 = ptrtoint ptr %expire_to to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %expire_to, align 4
  %expire_to69 = getelementptr inbounds %struct.sta_info, ptr %call10, i32 0, i32 41
  %36 = ptrtoint ptr %expire_to69 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %expire_to69, align 8
  %xor = xor i32 %31, 1024
  %37 = ptrtoint ptr %state57 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %xor, ptr %state57, align 8
  br label %cleanup

sw.bb72:                                          ; preds = %if.end19
  %arrayidx73 = getelementptr i8, ptr %1, i32 27
  %38 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %39 to i32
  %and75 = and i32 %conv74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %cmp76 = icmp eq i32 %and75, 0
  %40 = lshr i32 %conv74, 4
  br i1 %cmp76, label %if.then78, label %if.then107

if.then78:                                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #19
  %shl83 = shl nuw nsw i32 1, %40
  %agg_enable_bitmap86 = getelementptr inbounds %struct.sta_info, ptr %call10, i32 0, i32 38, i32 10
  %41 = ptrtoint ptr %agg_enable_bitmap86 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %agg_enable_bitmap86, align 8
  %43 = trunc i32 %shl83 to i8
  %44 = xor i8 %43, -1
  %conv89 = and i8 %42, %44
  store i8 %conv89, ptr %agg_enable_bitmap86, align 8
  %45 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx73, align 1
  %47 = lshr i8 %46, 4
  %48 = zext i8 %47 to i16
  %shl94 = shl nuw i16 1, %48
  %candidate_tid_bitmap97 = getelementptr inbounds %struct.sta_info, ptr %call10, i32 0, i32 38, i32 11
  %49 = ptrtoint ptr %candidate_tid_bitmap97 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %candidate_tid_bitmap97, align 1
  %51 = trunc i16 %shl94 to i8
  %52 = xor i8 %51, -1
  %conv100 = and i8 %50, %52
  store i8 %conv100, ptr %candidate_tid_bitmap97, align 1
  br label %cleanup

if.then107:                                       ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #19
  %enable = getelementptr %struct.sta_info, ptr %call10, i32 0, i32 36, i32 %40, i32 1
  %53 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %enable, align 4
  %indicate_seq = getelementptr %struct.sta_info, ptr %call10, i32 0, i32 36, i32 %40, i32 2
  %54 = ptrtoint ptr %indicate_seq to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -1, ptr %indicate_seq, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then107, %if.then78, %if.then60, %if.end56.cleanup_crit_edge, %if.else, %if.then25, %if.end19.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @process_addba_req(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @issue_action_BA(ptr noundef %padapter, ptr noundef %raddr, i8 noundef zeroext %action, i16 noundef zeroext %status) local_unnamed_addr #2 align 64 {
entry:
  %action.addr = alloca i8, align 1
  %status.addr = alloca i16, align 2
  %category = alloca i8, align 1
  %max_rx_ampdu_factor = alloca i32, align 4
  %le_tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %action.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %action, ptr %action.addr, align 1
  %1 = ptrtoint ptr %status.addr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %status, ptr %status.addr, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %category) #17
  %2 = ptrtoint ptr %category to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %category, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_rx_ampdu_factor) #17
  %3 = ptrtoint ptr %max_rx_ampdu_factor to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %max_rx_ampdu_factor, align 4, !annotation !152
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %le_tmp) #17
  %4 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %le_tmp, align 2, !annotation !152
  %call1.i.i = tail call ptr @rtw_alloc_xmitframe_ext(ptr noundef %xmitpriv) #17
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %entry.cleanup_crit_edge, label %if.end4.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4.i.i:                                      ; preds = %entry
  %call5.i.i = tail call ptr @rtw_alloc_xmitbuf_ext(ptr noundef %xmitpriv) #17
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %cleanup

if.end:                                           ; preds = %if.end4.i.i
  %frame_tag.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %frame_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %frame_tag.i.i, align 4
  %pxmitbuf10.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5.i.i, ptr %pxmitbuf10.i.i, align 4
  %pbuf.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %pbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pbuf.i.i, align 4
  %buf_addr.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %buf_addr.i.i, align 4
  %priv_data.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1.i.i, ptr %priv_data.i.i, align 4
  %hdrlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 7
  %11 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 24, ptr %hdrlen.i, align 2
  %nr_frags.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 10
  %12 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %nr_frags.i, align 4
  %priority.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 16
  %13 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 7, ptr %priority.i, align 2
  %mac_id.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 18
  %14 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %mac_id.i, align 4
  %qsel.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 36
  %15 = ptrtoint ptr %qsel.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 18, ptr %qsel.i, align 2
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 8
  %16 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pktlen.i, align 4
  %tx_rate.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %17 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tx_rate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp.i = icmp eq i8 %18, 2
  %..i = select i1 %cmp.i, i8 1, i8 2
  %call.i = tail call zeroext i8 @rtw_get_mgntframe_raid(ptr noundef %padapter, i8 noundef zeroext %..i) #17
  %raid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 27
  %19 = ptrtoint ptr %raid.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call.i, ptr %raid.i, align 1
  %20 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tx_rate.i, align 1
  %rate.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 39
  %22 = ptrtoint ptr %rate.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %rate.i, align 1
  %encrypt.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 11
  %23 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %encrypt.i, align 1
  %bswenc.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %bswenc.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %bswenc.i, align 2
  %qos_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 25
  %25 = ptrtoint ptr %qos_en.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %qos_en.i, align 1
  %ht_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 26
  %26 = ptrtoint ptr %ht_en.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %ht_en.i, align 4
  %bwmode.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 28
  %27 = ptrtoint ptr %bwmode.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %bwmode.i, align 2
  %ch_offset.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 29
  %28 = ptrtoint ptr %ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %ch_offset.i, align 1
  %sgi.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 30
  %29 = ptrtoint ptr %sgi.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %sgi.i, align 4
  %mgnt_seq.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 3
  %30 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mgnt_seq.i, align 4
  %seqnum.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 5
  %32 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %seqnum.i, align 2
  %retry_ctrl.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 41
  %33 = ptrtoint ptr %retry_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %retry_ctrl.i, align 1
  %mbssid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 42
  %34 = ptrtoint ptr %mbssid.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %mbssid.i, align 4
  %35 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf_addr.i.i, align 4
  %37 = call ptr @memset(ptr %36, i32 0, i32 104)
  %38 = load ptr, ptr %buf_addr.i.i, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 40
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %add.ptr, align 2
  %addr1 = getelementptr i8, ptr %38, i32 44
  %40 = call ptr @memcpy(ptr %addr1, ptr %raddr, i32 6)
  %addr2 = getelementptr i8, ptr %38, i32 50
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %41 = call ptr @memcpy(ptr %addr2, ptr %mac_addr.i, i32 6)
  %addr3 = getelementptr i8, ptr %38, i32 56
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %call5 = tail call ptr @get_my_bssid(ptr noundef %network) #17
  %42 = call ptr @memcpy(ptr %addr3, ptr %call5, i32 6)
  %43 = ptrtoint ptr %add.ptr to i32
  %add = add i32 %43, 22
  %44 = inttoptr i32 %add to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %44, align 2
  %47 = and i16 %46, 3840
  %48 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %mgnt_seq.i, align 4
  %shl = shl i16 %49, 4
  %50 = tail call i16 @llvm.bswap.i16(i16 %shl)
  %or295 = or i16 %50, %47
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %or295, ptr %44, align 2
  %52 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %mgnt_seq.i, align 4
  %inc = add i16 %53, 1
  store i16 %inc, ptr %mgnt_seq.i, align 4
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr, align 2
  %56 = and i16 %55, 1023
  %57 = or i16 %56, -12288
  store i16 %57, ptr %add.ptr, align 2
  %add.ptr22 = getelementptr i8, ptr %38, i32 64
  %58 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 24, ptr %pktlen.i, align 4
  %call24 = call ptr @rtw_set_fixed_ie(ptr noundef %add.ptr22, i32 noundef 1, ptr noundef nonnull %category, ptr noundef %pktlen.i) #17
  %call26 = call ptr @rtw_set_fixed_ie(ptr noundef %call24, i32 noundef 1, ptr noundef nonnull %action.addr, ptr noundef %pktlen.i) #17
  %59 = ptrtoint ptr %category to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %category, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %60)
  %cmp = icmp eq i8 %60, 3
  br i1 %cmp, label %if.then29, label %if.end.if.end198_crit_edge

if.end.if.end198_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end198

if.then29:                                        ; preds = %if.end
  %61 = ptrtoint ptr %action.addr to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %action.addr, align 1
  %63 = zext i8 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %62, label %if.then29.if.end198_crit_edge [
    i8 0, label %do.body31.preheader
    i8 1, label %sw.bb86
    i8 2, label %sw.bb189
  ]

if.then29.if.end198_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end198

do.body31.preheader:                              ; preds = %if.then29
  %dialogToken = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 30
  %64 = ptrtoint ptr %dialogToken to i32
  call void @__asan_load1_noabort(i32 %64)
  %dialogToken.promoted = load i8, ptr %dialogToken, align 2
  %phi.bo = add i8 %dialogToken.promoted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %phi.bo)
  %cmp36.peel = icmp eq i8 %phi.bo, 0
  %.lcssa = select i1 %cmp36.peel, i8 1, i8 %phi.bo
  %65 = ptrtoint ptr %dialogToken to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %.lcssa, ptr %dialogToken, align 2
  %call41 = call ptr @rtw_set_fixed_ie(ptr noundef %call26, i32 noundef 1, ptr noundef %dialogToken, ptr noundef %pktlen.i) #17
  %call42 = call i32 @hal_btcoex_IsBTCoexCtrlAMPDUSize(ptr noundef %padapter) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  %66 = ptrtoint ptr %status.addr to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %status.addr, align 2
  %68 = shl i16 %67, 2
  %69 = and i16 %68, 60
  %. = select i1 %tobool43.not, i16 4098, i16 514
  %70 = or i16 %69, %.
  %71 = call i16 @llvm.bswap.i16(i16 %70)
  %72 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %le_tmp, align 2
  %call64 = call ptr @rtw_set_fixed_ie(ptr noundef %call41, i32 noundef 2, ptr noundef nonnull %le_tmp, ptr noundef %pktlen.i) #17
  %73 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 -30701, ptr %le_tmp, align 2
  %call66 = call ptr @rtw_set_fixed_ie(ptr noundef %call64, i32 noundef 2, ptr noundef nonnull %le_tmp, ptr noundef %pktlen.i) #17
  %call67 = call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %raddr) #17
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %do.body31.preheader.if.end83_crit_edge, label %if.then69

do.body31.preheader.if.end83_crit_edge:           ; preds = %do.body31.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end83

if.then69:                                        ; preds = %do.body31.preheader
  call void @__sanitizer_cov_trace_pc() #19
  %74 = ptrtoint ptr %status.addr to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %status.addr, align 2
  %76 = and i16 %75, 7
  %and71 = zext i16 %76 to i32
  %arrayidx = getelementptr %struct.sta_info, ptr %call67, i32 0, i32 4, i32 9, i32 %and71
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx, align 2
  %79 = and i16 %78, 4095
  %narrow = add nuw nsw i16 %79, 1
  %arrayidx79 = getelementptr %struct.sta_info, ptr %call67, i32 0, i32 37, i32 %and71
  %80 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %narrow, ptr %arrayidx79, align 2
  %shl81 = shl i16 %narrow, 4
  br label %if.end83

if.end83:                                         ; preds = %if.then69, %do.body31.preheader.if.end83_crit_edge
  %BA_starting_seqctrl.0 = phi i16 [ %shl81, %if.then69 ], [ 0, %do.body31.preheader.if.end83_crit_edge ]
  %81 = call i16 @llvm.bswap.i16(i16 %BA_starting_seqctrl.0)
  %82 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %le_tmp, align 2
  %call85 = call ptr @rtw_set_fixed_ie(ptr noundef %call66, i32 noundef 2, ptr noundef nonnull %le_tmp, ptr noundef %pktlen.i) #17
  br label %if.end198

sw.bb86:                                          ; preds = %if.then29
  %ADDBA_req = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 35
  %call88 = call ptr @rtw_set_fixed_ie(ptr noundef %call26, i32 noundef 1, ptr noundef %ADDBA_req, ptr noundef %pktlen.i) #17
  %call90 = call ptr @rtw_set_fixed_ie(ptr noundef %call88, i32 noundef 2, ptr noundef nonnull %status.addr, ptr noundef %pktlen.i) #17
  %driver_rx_ampdu_factor = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 62
  %83 = ptrtoint ptr %driver_rx_ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %driver_rx_ampdu_factor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %84)
  %cmp92.not = icmp eq i8 %84, -1
  br i1 %cmp92.not, label %if.else97, label %if.then94

if.then94:                                        ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #19
  %conv91 = zext i8 %84 to i32
  %85 = ptrtoint ptr %max_rx_ampdu_factor to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %conv91, ptr %max_rx_ampdu_factor, align 4
  br label %if.end99

if.else97:                                        ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #19
  %call98 = call zeroext i8 @rtw_hal_get_def_var(ptr noundef %padapter, i32 noundef 17, ptr noundef nonnull %max_rx_ampdu_factor) #17
  %86 = ptrtoint ptr %max_rx_ampdu_factor to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pr = load i32, ptr %max_rx_ampdu_factor, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.else97, %if.then94
  %87 = phi i32 [ %.pr, %if.else97 ], [ %conv91, %if.then94 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %87)
  %88 = icmp ult i32 %87, 3
  br i1 %88, label %switch.lookup, label %if.end99.if.end149_crit_edge

if.end99.if.end149_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end149

switch.lookup:                                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.issue_action_BA, i32 0, i32 %87
  %89 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %89)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %if.end149

if.end149:                                        ; preds = %switch.lookup, %if.end99.if.end149_crit_edge
  %.sink300 = phi i16 [ 4096, %if.end99.if.end149_crit_edge ], [ %switch.load, %switch.lookup ]
  %BA_para_set114 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 35, i32 1
  %90 = ptrtoint ptr %BA_para_set114 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %BA_para_set114, align 1
  %92 = lshr i16 %91, 8
  %93 = and i16 %92, 63
  %94 = or i16 %93, %.sink300
  %call150 = call i32 @hal_btcoex_IsBTCoexCtrlAMPDUSize(ptr noundef %padapter) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.end149.if.end163_crit_edge, label %land.lhs.true

if.end149.if.end163_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end163

land.lhs.true:                                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #19
  %95 = ptrtoint ptr %driver_rx_ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %driver_rx_ampdu_factor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %96)
  %cmp154 = icmp eq i8 %96, -1
  %97 = or i16 %93, 512
  %spec.select = select i1 %cmp154, i16 %97, i16 %94
  br label %if.end163

if.end163:                                        ; preds = %land.lhs.true, %if.end149.if.end163_crit_edge
  %BA_para_set.2 = phi i16 [ %94, %if.end149.if.end163_crit_edge ], [ %spec.select, %land.lhs.true ]
  %ampdu_amsdu = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 41
  %98 = ptrtoint ptr %ampdu_amsdu to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %ampdu_amsdu, align 2
  %100 = zext i8 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %99, label %if.else180 [
    i8 0, label %if.then167
    i8 1, label %if.then176
  ]

if.then167:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #19
  %101 = and i16 %BA_para_set.2, -2
  %102 = call i16 @llvm.bswap.i16(i16 %101)
  %103 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %le_tmp, align 2
  br label %if.end182

if.then176:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #19
  %104 = or i16 %BA_para_set.2, 1
  %105 = call i16 @llvm.bswap.i16(i16 %104)
  %106 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %le_tmp, align 2
  br label %if.end182

if.else180:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #19
  %107 = call i16 @llvm.bswap.i16(i16 %BA_para_set.2)
  %108 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %le_tmp, align 2
  br label %if.end182

if.end182:                                        ; preds = %if.else180, %if.then176, %if.then167
  %call184 = call ptr @rtw_set_fixed_ie(ptr noundef %call90, i32 noundef 2, ptr noundef nonnull %le_tmp, ptr noundef %pktlen.i) #17
  %BA_timeout_value186 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 35, i32 2
  %call188 = call ptr @rtw_set_fixed_ie(ptr noundef %call184, i32 noundef 2, ptr noundef %BA_timeout_value186, ptr noundef %pktlen.i) #17
  br label %if.end198

sw.bb189:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  %109 = ptrtoint ptr %status.addr to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %status.addr, align 2
  %111 = shl i16 %110, 11
  %112 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %le_tmp, align 2
  %call195 = call ptr @rtw_set_fixed_ie(ptr noundef %call26, i32 noundef 2, ptr noundef nonnull %le_tmp, ptr noundef %pktlen.i) #17
  %113 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 9472, ptr %le_tmp, align 2
  %call197 = call ptr @rtw_set_fixed_ie(ptr noundef %call195, i32 noundef 2, ptr noundef nonnull %le_tmp, ptr noundef %pktlen.i) #17
  br label %if.end198

if.end198:                                        ; preds = %sw.bb189, %if.end182, %if.end83, %if.then29.if.end198_crit_edge, %if.end.if.end198_crit_edge
  %114 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pktlen.i, align 4
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 9
  %116 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %last_txcmdsz, align 4
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %117 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.not.i = icmp eq i32 %118, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end198.if.then.i_crit_edge

if.end198.if.then.i_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end198
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %119 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %bDriverStopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool1.not.i = icmp eq i32 %120, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end198.if.then.i_crit_edge
  %121 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pxmitbuf10.i.i, align 4
  %call.i296 = call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %122) #17
  %call3.i = call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef %call1.i.i) #17
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  %call4.i = call i32 @rtw_hal_mgnt_xmit(ptr noundef %padapter, ptr noundef %call1.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %if.then7.i.i, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %le_tmp) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_rx_ampdu_factor) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %category) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @on_action_public(ptr nocapture noundef readonly %padapter, ptr nocapture noundef readonly %precv_frame) local_unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_data, align 4
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %2 = ptrtoint ptr %1 to i32
  %add = add i32 %2, 4
  %3 = inttoptr i32 %add to ptr
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_addr.i, ptr noundef dereferenceable(6) %3, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp.not = icmp eq i8 %5, 4
  br i1 %cmp.not, label %if.end4, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit

if.end4:                                          ; preds = %if.end
  %arrayidx5 = getelementptr i8, ptr %1, i32 25
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %7)
  %cond = icmp eq i8 %7, 9
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 26
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr1.i, ptr noundef nonnull dereferenceable(4) @P2P_OUI, i32 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb.exit_crit_edge

sw.bb.exit_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit

if.then.i:                                        ; preds = %sw.bb
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 31
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %adapter1.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 3
  %10 = ptrtoint ptr %adapter1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter1.i.i.i, align 4
  %seq_num.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 11
  %12 = ptrtoint ptr %seq_num.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %seq_num.i.i.i, align 4
  %shl.i.i.i = shl i16 %13, 4
  %frag_num.i.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 12
  %14 = ptrtoint ptr %frag_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %frag_num.i.i.i, align 2
  %16 = and i8 %15, 15
  %and4.i.i.i = zext i8 %16 to i16
  %or.i.i.i = or i16 %shl.i.i.i, %and4.i.i.i
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %1, align 2
  %19 = and i16 %18, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp.not.i.i.i = icmp eq i16 %19, 0
  br i1 %cmp.not.i.i.i, label %if.then.i.rtw_action_public_decache.exit.i.i_crit_edge, label %if.then11.i.i.i

if.then.i.rtw_action_public_decache.exit.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtw_action_public_decache.exit.i.i

if.then11.i.i.i:                                  ; preds = %if.then.i
  %action_public_rxseq.i.i.i = getelementptr inbounds %struct.adapter, ptr %11, i32 0, i32 5, i32 37
  %20 = ptrtoint ptr %action_public_rxseq.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %action_public_rxseq.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i.i.i, i16 %21)
  %cmp14.i.i.i = icmp eq i16 %or.i.i.i, %21
  br i1 %cmp14.i.i.i, label %land.lhs.true.i.i.i, label %if.then11.i.i.i.rtw_action_public_decache.exit.i.i_crit_edge

if.then11.i.i.i.rtw_action_public_decache.exit.i.i_crit_edge: ; preds = %if.then11.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtw_action_public_decache.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then11.i.i.i
  %action_public_dialog_token.i.i.i = getelementptr inbounds %struct.adapter, ptr %11, i32 0, i32 5, i32 36
  %22 = ptrtoint ptr %action_public_dialog_token.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %action_public_dialog_token.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %9)
  %cmp17.i.i.i = icmp eq i8 %23, %9
  br i1 %cmp17.i.i.i, label %land.lhs.true.i.i.i.exit_crit_edge, label %land.lhs.true.i.i.i.rtw_action_public_decache.exit.i.i_crit_edge

land.lhs.true.i.i.i.rtw_action_public_decache.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtw_action_public_decache.exit.i.i

land.lhs.true.i.i.i.exit_crit_edge:               ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit

rtw_action_public_decache.exit.i.i:               ; preds = %land.lhs.true.i.i.i.rtw_action_public_decache.exit.i.i_crit_edge, %if.then11.i.i.i.rtw_action_public_decache.exit.i.i_crit_edge, %if.then.i.rtw_action_public_decache.exit.i.i_crit_edge
  %action_public_rxseq29.i.i.i = getelementptr inbounds %struct.adapter, ptr %11, i32 0, i32 5, i32 37
  %24 = ptrtoint ptr %action_public_rxseq29.i.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %or.i.i.i, ptr %action_public_rxseq29.i.i.i, align 2
  %action_public_dialog_token34.i.i.i = getelementptr inbounds %struct.adapter, ptr %11, i32 0, i32 5, i32 36
  %25 = ptrtoint ptr %action_public_dialog_token34.i.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %9, ptr %action_public_dialog_token34.i.i.i, align 4
  br label %exit

sw.default:                                       ; preds = %if.end4
  %len.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 7
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i, align 4
  %adapter1.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 3
  %28 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter1.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %msg.i) #17
  %30 = call ptr @memset(ptr %msg.i, i32 255, i32 64)
  %arrayidx.i = getelementptr i8, ptr %1, i32 26
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %32 to i32
  %seq_num.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 11
  %33 = ptrtoint ptr %seq_num.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %seq_num.i.i, align 4
  %shl.i.i = shl i16 %34, 4
  %frag_num.i.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 6, i32 12
  %35 = ptrtoint ptr %frag_num.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %frag_num.i.i, align 2
  %37 = and i8 %36, 15
  %and4.i.i = zext i8 %37 to i16
  %or.i.i = or i16 %shl.i.i, %and4.i.i
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %1, align 2
  %40 = and i16 %39, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp.not.i.i = icmp eq i16 %40, 0
  br i1 %cmp.not.i.i, label %sw.default.if.end.i_crit_edge, label %if.then11.i.i

sw.default.if.end.i_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then11.i.i:                                    ; preds = %sw.default
  %action_public_rxseq.i.i = getelementptr inbounds %struct.adapter, ptr %29, i32 0, i32 5, i32 37
  %41 = ptrtoint ptr %action_public_rxseq.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %action_public_rxseq.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i.i, i16 %42)
  %cmp14.i.i = icmp eq i16 %or.i.i, %42
  br i1 %cmp14.i.i, label %land.lhs.true.i.i, label %if.then11.i.i.if.end.i_crit_edge

if.then11.i.i.if.end.i_crit_edge:                 ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %if.then11.i.i
  %action_public_dialog_token.i.i = getelementptr inbounds %struct.adapter, ptr %29, i32 0, i32 5, i32 36
  %43 = ptrtoint ptr %action_public_dialog_token.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %action_public_dialog_token.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %32)
  %cmp17.i.i = icmp eq i8 %44, %32
  br i1 %cmp17.i.i, label %land.lhs.true.i.i.on_action_public_default.exit_crit_edge, label %land.lhs.true.i.i.if.end.i_crit_edge

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

land.lhs.true.i.i.on_action_public_default.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %on_action_public_default.exit

if.end.i:                                         ; preds = %land.lhs.true.i.i.if.end.i_crit_edge, %if.then11.i.i.if.end.i_crit_edge, %sw.default.if.end.i_crit_edge
  %action_public_rxseq29.i.i = getelementptr inbounds %struct.adapter, ptr %29, i32 0, i32 5, i32 37
  %45 = ptrtoint ptr %action_public_rxseq29.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %or.i.i, ptr %action_public_rxseq29.i.i, align 2
  %action_public_dialog_token34.i.i = getelementptr inbounds %struct.adapter, ptr %29, i32 0, i32 5, i32 36
  %46 = ptrtoint ptr %action_public_dialog_token34.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %32, ptr %action_public_dialog_token34.i.i, align 4
  %call3.i = tail call ptr @action_public_str(i8 noundef zeroext %7) #17
  %call5.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %msg.i, i32 noundef 64, ptr noundef nonnull @.str.35, ptr noundef %call3.i, i32 noundef %conv.i) #17
  call void @rtw_cfg80211_rx_action(ptr noundef %29, ptr noundef %1, i32 noundef %27, ptr noundef nonnull %msg.i) #17
  br label %on_action_public_default.exit

on_action_public_default.exit:                    ; preds = %if.end.i, %land.lhs.true.i.i.on_action_public_default.exit_crit_edge
  %ret.0.i15 = phi i32 [ 1, %if.end.i ], [ 0, %land.lhs.true.i.i.on_action_public_default.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msg.i) #17
  br label %exit

exit:                                             ; preds = %on_action_public_default.exit, %rtw_action_public_decache.exit.i.i, %land.lhs.true.i.i.i.exit_crit_edge, %sw.bb.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %ret.0 = phi i32 [ 0, %entry.exit_crit_edge ], [ 0, %if.end.exit_crit_edge ], [ %ret.0.i15, %on_action_public_default.exit ], [ 0, %sw.bb.exit_crit_edge ], [ 1, %rtw_action_public_decache.exit.i.i ], [ 0, %land.lhs.true.i.i.i.exit_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @OnAction_ht(ptr nocapture noundef readonly %padapter, ptr nocapture noundef readonly %precv_frame) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @OnAction_sa_query(ptr noundef %padapter, ptr nocapture noundef readonly %precv_frame) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_data, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 25
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %3, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx1 = getelementptr i8, ptr %1, i32 26
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %tid.0.copyload = load i16, ptr %arrayidx1, align 1
  %6 = ptrtoint ptr %1 to i32
  %add = add i32 %6, 10
  %7 = inttoptr i32 %add to ptr
  tail call void @issue_action_SA_Query(ptr noundef %padapter, ptr noundef %7, i8 noundef zeroext 1, i16 noundef zeroext %tid.0.copyload)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sa_query_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 21
  %call = tail call i32 @del_timer_sync(ptr noundef %sa_query_timer) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @issue_action_SA_Query(ptr noundef %padapter, ptr noundef readonly %raddr, i8 noundef zeroext %action, i16 noundef zeroext %tid) local_unnamed_addr #2 align 64 {
entry:
  %action.addr = alloca i8, align 1
  %category = alloca i8, align 1
  %le_tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %action.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %action, ptr %action.addr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %category) #17
  %1 = ptrtoint ptr %category to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 8, ptr %category, align 1
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %le_tmp) #17
  %2 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %le_tmp, align 2, !annotation !152
  %call1.i.i = tail call ptr @rtw_alloc_xmitframe_ext(ptr noundef %xmitpriv) #17
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %entry.cleanup_crit_edge, label %if.end4.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4.i.i:                                      ; preds = %entry
  %call5.i.i = tail call ptr @rtw_alloc_xmitbuf_ext(ptr noundef %xmitpriv) #17
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %cleanup

if.end:                                           ; preds = %if.end4.i.i
  %frame_tag.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %frame_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %frame_tag.i.i, align 4
  %pxmitbuf10.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5.i.i, ptr %pxmitbuf10.i.i, align 4
  %pbuf.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %pbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pbuf.i.i, align 4
  %buf_addr.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %buf_addr.i.i, align 4
  %priv_data.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i.i, ptr %priv_data.i.i, align 4
  %hdrlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 7
  %9 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 24, ptr %hdrlen.i, align 2
  %nr_frags.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 10
  %10 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %nr_frags.i, align 4
  %priority.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 16
  %11 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 7, ptr %priority.i, align 2
  %mac_id.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 18
  %12 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %mac_id.i, align 4
  %qsel.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 36
  %13 = ptrtoint ptr %qsel.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 18, ptr %qsel.i, align 2
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 8
  %14 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %pktlen.i, align 4
  %tx_rate.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %15 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tx_rate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp.i = icmp eq i8 %16, 2
  %..i = select i1 %cmp.i, i8 1, i8 2
  %call.i = tail call zeroext i8 @rtw_get_mgntframe_raid(ptr noundef %padapter, i8 noundef zeroext %..i) #17
  %raid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 27
  %17 = ptrtoint ptr %raid.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call.i, ptr %raid.i, align 1
  %18 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tx_rate.i, align 1
  %rate.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 39
  %20 = ptrtoint ptr %rate.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %rate.i, align 1
  %encrypt.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 11
  %21 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %encrypt.i, align 1
  %bswenc.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %bswenc.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %bswenc.i, align 2
  %qos_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 25
  %23 = ptrtoint ptr %qos_en.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %qos_en.i, align 1
  %ht_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 26
  %24 = ptrtoint ptr %ht_en.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %ht_en.i, align 4
  %bwmode.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 28
  %25 = ptrtoint ptr %bwmode.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %bwmode.i, align 2
  %ch_offset.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 29
  %26 = ptrtoint ptr %ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %ch_offset.i, align 1
  %sgi.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 30
  %27 = ptrtoint ptr %sgi.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %sgi.i, align 4
  %mgnt_seq.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 3
  %28 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mgnt_seq.i, align 4
  %seqnum.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 5
  %30 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %seqnum.i, align 2
  %retry_ctrl.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 41
  %31 = ptrtoint ptr %retry_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %retry_ctrl.i, align 1
  %mbssid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 42
  %32 = ptrtoint ptr %mbssid.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %mbssid.i, align 4
  %33 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf_addr.i.i, align 4
  %35 = call ptr @memset(ptr %34, i32 0, i32 104)
  %36 = load ptr, ptr %buf_addr.i.i, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 40
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %add.ptr, align 2
  %tobool2.not = icmp eq ptr %raddr, null
  %addr14 = getelementptr i8, ptr %36, i32 44
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %38 = call ptr @memcpy(ptr %addr14, ptr %raddr, i32 6)
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %call6 = tail call ptr @get_my_bssid(ptr noundef %network) #17
  %39 = call ptr @memcpy(ptr %addr14, ptr %call6, i32 6)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %addr2 = getelementptr i8, ptr %36, i32 50
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %40 = call ptr @memcpy(ptr %addr2, ptr %mac_addr.i, i32 6)
  %addr3 = getelementptr i8, ptr %36, i32 56
  %network11 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %call12 = tail call ptr @get_my_bssid(ptr noundef %network11) #17
  %41 = call ptr @memcpy(ptr %addr3, ptr %call12, i32 6)
  %42 = ptrtoint ptr %add.ptr to i32
  %add = add i32 %42, 22
  %43 = inttoptr i32 %add to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %43, align 2
  %46 = and i16 %45, 3840
  %47 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mgnt_seq.i, align 4
  %shl = shl i16 %48, 4
  %49 = tail call i16 @llvm.bswap.i16(i16 %shl)
  %or90 = or i16 %49, %46
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %or90, ptr %43, align 2
  %51 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %mgnt_seq.i, align 4
  %inc = add i16 %52, 1
  store i16 %inc, ptr %mgnt_seq.i, align 4
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %add.ptr, align 2
  %55 = and i16 %54, 1023
  %56 = or i16 %55, -12288
  store i16 %56, ptr %add.ptr, align 2
  %add.ptr29 = getelementptr i8, ptr %36, i32 64
  %57 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 24, ptr %pktlen.i, align 4
  %call31 = call ptr @rtw_set_fixed_ie(ptr noundef %add.ptr29, i32 noundef 1, ptr noundef nonnull %category, ptr noundef %pktlen.i) #17
  %call33 = call ptr @rtw_set_fixed_ie(ptr noundef %call31, i32 noundef 1, ptr noundef nonnull %action.addr, ptr noundef %pktlen.i) #17
  %58 = ptrtoint ptr %action.addr to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %action.addr, align 1
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %59, label %if.end7.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb42
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %sa_query_seq = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 4
  %call36 = call ptr @rtw_set_fixed_ie(ptr noundef %call33, i32 noundef 2, ptr noundef %sa_query_seq, ptr noundef %pktlen.i) #17
  %61 = ptrtoint ptr %sa_query_seq to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %sa_query_seq, align 2
  %inc38 = add i16 %62, 1
  store i16 %inc38, ptr %sa_query_seq, align 2
  %sa_query_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %63, 100
  %call.i91 = call i32 @mod_timer(ptr noundef %sa_query_timer, i32 noundef %add.i) #17
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %64 = call i16 @llvm.bswap.i16(i16 %tid)
  %65 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %le_tmp, align 2
  %call44 = call ptr @rtw_set_fixed_ie(ptr noundef %call33, i32 noundef 2, ptr noundef nonnull %le_tmp, ptr noundef %pktlen.i) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb42, %sw.bb, %if.end7.sw.epilog_crit_edge
  %66 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pktlen.i, align 4
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 9
  %68 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %last_txcmdsz, align 4
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %69 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %sw.epilog.if.then.i_crit_edge

sw.epilog.if.then.i_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.epilog
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %71 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bDriverStopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool1.not.i = icmp eq i32 %72, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.epilog.if.then.i_crit_edge
  %73 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pxmitbuf10.i.i, align 4
  %call.i92 = call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %74) #17
  %call3.i = call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  %call4.i = call i32 @rtw_hal_mgnt_xmit(ptr noundef %padapter, ptr noundef nonnull %call1.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %if.then7.i.i, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %le_tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %category) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @OnAction(ptr noundef %padapter, ptr nocapture noundef readonly %precv_frame) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precv_frame, i32 0, i32 9
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %3, label %entry.for.inc.12_crit_edge [
    i8 0, label %for.inc.2.thread
    i8 3, label %if.then.3
    i8 4, label %if.then.4
    i8 8, label %if.then.8
  ]

entry.for.inc.12_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.12

for.inc.2.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %stapriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %5 = ptrtoint ptr %1 to i32
  %add.i = add i32 %5, 10
  %6 = inttoptr i32 %add.i to ptr
  %call.i = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv.i, ptr noundef %6) #17
  br label %for.inc.12

if.then.3:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call.3 = tail call i32 @OnAction_back(ptr noundef %padapter, ptr noundef %precv_frame) #17
  br label %for.inc.12

if.then.4:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call.4 = tail call i32 @on_action_public(ptr noundef %padapter, ptr noundef %precv_frame) #17
  br label %for.inc.12

if.then.8:                                        ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %1, i32 25
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %8, label %if.then.8.for.inc.12_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb2.i
  ]

if.then.8.for.inc.12_crit_edge:                   ; preds = %if.then.8
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.12

sw.bb.i:                                          ; preds = %if.then.8
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx1.i = getelementptr i8, ptr %1, i32 26
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %tid.0.copyload.i = load i16, ptr %arrayidx1.i, align 1
  %11 = ptrtoint ptr %1 to i32
  %add.i23 = add i32 %11, 10
  %12 = inttoptr i32 %add.i23 to ptr
  tail call void @issue_action_SA_Query(ptr noundef %padapter, ptr noundef %12, i8 noundef zeroext 1, i16 noundef zeroext %tid.0.copyload.i) #17
  br label %for.inc.12

sw.bb2.i:                                         ; preds = %if.then.8
  call void @__sanitizer_cov_trace_pc() #19
  %sa_query_timer.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 21
  %call.i24 = tail call i32 @del_timer_sync(ptr noundef %sa_query_timer.i) #17
  br label %for.inc.12

for.inc.12:                                       ; preds = %sw.bb2.i, %sw.bb.i, %if.then.8.for.inc.12_crit_edge, %if.then.4, %if.then.3, %for.inc.2.thread, %entry.for.inc.12_crit_edge
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @DoReserved(ptr nocapture readnone %padapter, ptr nocapture readnone %precv_frame) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_mgtxmitframe(ptr noundef %pxmitpriv) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i = tail call ptr @rtw_alloc_xmitframe_ext(ptr noundef %pxmitpriv) #17
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %entry._alloc_mgtxmitframe.exit_crit_edge, label %if.end4.i

entry._alloc_mgtxmitframe.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %_alloc_mgtxmitframe.exit

if.end4.i:                                        ; preds = %entry
  %call5.i = tail call ptr @rtw_alloc_xmitbuf_ext(ptr noundef %pxmitpriv) #17
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i = tail call i32 @rtw_free_xmitframe(ptr noundef %pxmitpriv, ptr noundef nonnull %call1.i) #17
  br label %_alloc_mgtxmitframe.exit

if.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  %frame_tag.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i, i32 0, i32 3
  %0 = ptrtoint ptr %frame_tag.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %frame_tag.i, align 4
  %pxmitbuf10.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i, i32 0, i32 6
  %1 = ptrtoint ptr %pxmitbuf10.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call5.i, ptr %pxmitbuf10.i, align 4
  %pbuf.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i, i32 0, i32 3
  %2 = ptrtoint ptr %pbuf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pbuf.i, align 4
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i, i32 0, i32 5
  %4 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %buf_addr.i, align 4
  %priv_data.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i, i32 0, i32 4
  %5 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.i, ptr %priv_data.i, align 4
  br label %_alloc_mgtxmitframe.exit

_alloc_mgtxmitframe.exit:                         ; preds = %if.end9.i, %if.then7.i, %entry._alloc_mgtxmitframe.exit_crit_edge
  %pmgntframe.1.i = phi ptr [ %call1.i, %if.end9.i ], [ null, %if.then7.i ], [ null, %entry._alloc_mgtxmitframe.exit_crit_edge ]
  ret ptr %pmgntframe.1.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @update_mgnt_tx_rate(ptr nocapture noundef writeonly %padapter, i8 noundef zeroext %rate) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_rate = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %0 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %rate, ptr %tx_rate, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_mgntframe_attrib(ptr noundef %padapter, ptr nocapture noundef writeonly %pattrib) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hdrlen = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 7
  %0 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 24, ptr %hdrlen, align 2
  %nr_frags = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 10
  %1 = ptrtoint ptr %nr_frags to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %nr_frags, align 4
  %priority = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 16
  %2 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 7, ptr %priority, align 2
  %mac_id = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 18
  %3 = ptrtoint ptr %mac_id to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %mac_id, align 4
  %qsel = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 36
  %4 = ptrtoint ptr %qsel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 18, ptr %qsel, align 2
  %pktlen = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 8
  %5 = ptrtoint ptr %pktlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %pktlen, align 4
  %tx_rate = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %6 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_rate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp eq i8 %7, 2
  %. = select i1 %cmp, i8 1, i8 2
  %call = tail call zeroext i8 @rtw_get_mgntframe_raid(ptr noundef %padapter, i8 noundef zeroext %.) #17
  %raid = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 27
  %8 = ptrtoint ptr %raid to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call, ptr %raid, align 1
  %9 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tx_rate, align 1
  %rate = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 39
  %11 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %rate, align 1
  %encrypt = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 11
  %12 = ptrtoint ptr %encrypt to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %encrypt, align 1
  %bswenc = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 2
  %13 = ptrtoint ptr %bswenc to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %bswenc, align 2
  %qos_en = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 25
  %14 = ptrtoint ptr %qos_en to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %qos_en, align 1
  %ht_en = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 26
  %15 = ptrtoint ptr %ht_en to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %ht_en, align 4
  %bwmode = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 28
  %16 = ptrtoint ptr %bwmode to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %bwmode, align 2
  %ch_offset = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 29
  %17 = ptrtoint ptr %ch_offset to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ch_offset, align 1
  %sgi = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 30
  %18 = ptrtoint ptr %sgi to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %sgi, align 4
  %mgnt_seq = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 3
  %19 = ptrtoint ptr %mgnt_seq to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mgnt_seq, align 4
  %seqnum = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 5
  %21 = ptrtoint ptr %seqnum to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %seqnum, align 2
  %retry_ctrl = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 41
  %22 = ptrtoint ptr %retry_ctrl to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %retry_ctrl, align 1
  %mbssid = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 42
  %23 = ptrtoint ptr %mbssid to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %mbssid, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_get_mgntframe_raid(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @update_mgntframe_attrib_addr(ptr nocapture noundef readnone %padapter, ptr nocapture noundef %pmgntframe) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pmgntframe, i32 0, i32 5
  %0 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pmgntframe, i32 0, i32 1, i32 23
  %2 = ptrtoint ptr %add.ptr to i32
  %add = add i32 %2, 4
  %3 = inttoptr i32 %add to ptr
  %4 = call ptr @memcpy(ptr %ra, ptr %3, i32 6)
  %ta = getelementptr inbounds %struct.xmit_frame, ptr %pmgntframe, i32 0, i32 1, i32 22
  %add2 = add i32 %2, 10
  %5 = inttoptr i32 %add2 to ptr
  %6 = call ptr @memcpy(ptr %ta, ptr %5, i32 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dump_mgntframe(ptr noundef %padapter, ptr noundef %pmgntframe) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %0 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %2 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %pxmitbuf = getelementptr inbounds %struct.xmit_frame, ptr %pmgntframe, i32 0, i32 6
  %4 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pxmitbuf, align 4
  %call = tail call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %5) #17
  %call3 = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef %pmgntframe) #17
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %call4 = tail call i32 @rtw_hal_mgnt_xmit(ptr noundef %padapter, ptr noundef %pmgntframe) #17
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_xmitbuf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_xmitframe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_mgnt_xmit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dump_mgntframe_and_wait(ptr noundef %padapter, ptr noundef %pmgntframe, i32 noundef %timeout_ms) local_unnamed_addr #2 align 64 {
entry:
  %sctx = alloca %struct.submit_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %pxmitbuf1 = getelementptr inbounds %struct.xmit_frame, ptr %pmgntframe, i32 0, i32 6
  %0 = ptrtoint ptr %pxmitbuf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pxmitbuf1, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %sctx) #17
  %2 = call ptr @memset(ptr %sctx, i32 255, i32 68)
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %3 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %5 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %1) #17
  %call6 = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef %pmgntframe) #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @rtw_sctx_init(ptr noundef nonnull %sctx, i32 noundef %timeout_ms) #17
  %sctx7 = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %sctx7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sctx, ptr %sctx7, align 4
  %call8 = call i32 @rtw_hal_mgnt_xmit(ptr noundef %padapter, ptr noundef %pmgntframe) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp = icmp eq i32 %call8, 1
  br i1 %cmp, label %if.then9, label %if.end.do.body12_crit_edge

if.end.do.body12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call10 = call i32 @rtw_sctx_wait(ptr noundef nonnull %sctx) #17
  br label %do.body12

do.body12:                                        ; preds = %if.then9, %if.end.do.body12_crit_edge
  %ret.0 = phi i32 [ %call10, %if.then9 ], [ %call8, %if.end.do.body12_crit_edge ]
  %lock_sctx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 46
  %call15 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock_sctx) #17
  %8 = ptrtoint ptr %sctx7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sctx7, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock_sctx, i32 noundef %call15) #17
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %do.body12 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %sctx) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sctx_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_sctx_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dump_mgntframe_and_wait_ack(ptr noundef %padapter, ptr noundef %pmgntframe) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %0 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %2 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %pxmitbuf = getelementptr inbounds %struct.xmit_frame, ptr %pmgntframe, i32 0, i32 6
  %4 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pxmitbuf, align 4
  %call = tail call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %5) #17
  %call4 = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef %pmgntframe) #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ack_tx_mutex = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 43
  %call5 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ack_tx_mutex, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %ack_tx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 42
  %6 = ptrtoint ptr %ack_tx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ack_tx, align 8
  %7 = load i8, ptr @dump_mgntframe_and_wait_ack.seq_no, align 1
  %inc = add i8 %7, 1
  store i8 %inc, ptr @dump_mgntframe_and_wait_ack.seq_no, align 1
  %seq_no = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 45
  %8 = ptrtoint ptr %seq_no to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %seq_no, align 4
  %ack_report = getelementptr inbounds %struct.xmit_frame, ptr %pmgntframe, i32 0, i32 9
  %9 = ptrtoint ptr %ack_report to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %ack_report, align 2
  %call7 = tail call i32 @rtw_hal_mgnt_xmit(ptr noundef %padapter, ptr noundef %pmgntframe) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 1
  br i1 %cmp8, label %if.then9, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  %call10 = tail call i32 @rtw_ack_tx_wait(ptr noundef %xmitpriv, i32 noundef 500) #17
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then6.if.end11_crit_edge
  %ret.0 = phi i32 [ %call10, %if.then9 ], [ 0, %if.then6.if.end11_crit_edge ]
  %10 = ptrtoint ptr %ack_tx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ack_tx, align 8
  tail call void @mutex_unlock(ptr noundef %ack_tx_mutex) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %ret.0, %if.end11 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_ack_tx_wait(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @issue_beacon(ptr noundef %padapter, i32 noundef %timeout_ms) local_unnamed_addr #2 align 64 {
entry:
  %ssid_len_ori.i = alloca i32, align 4
  %wps_ielen = alloca i32, align 4
  %sr = alloca i8, align 1
  %erpinfo = alloca i8, align 1
  %ATIMWindow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %call1.i.i = tail call ptr @rtw_alloc_xmitframe_ext(ptr noundef %xmitpriv) #17
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %entry.cleanup_crit_edge, label %if.end4.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4.i.i:                                      ; preds = %entry
  %call5.i.i = tail call ptr @rtw_alloc_xmitbuf_ext(ptr noundef %xmitpriv) #17
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %cleanup

if.end:                                           ; preds = %if.end4.i.i
  %frame_tag.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 3
  %0 = ptrtoint ptr %frame_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %frame_tag.i.i, align 4
  %pxmitbuf10.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call5.i.i, ptr %pxmitbuf10.i.i, align 4
  %pbuf.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %pbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pbuf.i.i, align 4
  %buf_addr.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %buf_addr.i.i, align 4
  %priv_data.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.i.i, ptr %priv_data.i.i, align 4
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %bcn_update_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock) #17
  %hdrlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 24, ptr %hdrlen.i, align 2
  %nr_frags.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 10
  %7 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %nr_frags.i, align 4
  %priority.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 16
  %8 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 7, ptr %priority.i, align 2
  %mac_id.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 18
  %9 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %mac_id.i, align 4
  %qsel.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 36
  %10 = ptrtoint ptr %qsel.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 18, ptr %qsel.i, align 2
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %pktlen.i, align 4
  %tx_rate.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %12 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_rate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp.i = icmp eq i8 %13, 2
  %..i = select i1 %cmp.i, i8 1, i8 2
  %call.i = tail call zeroext i8 @rtw_get_mgntframe_raid(ptr noundef %padapter, i8 noundef zeroext %..i) #17
  %raid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 27
  %14 = ptrtoint ptr %raid.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call.i, ptr %raid.i, align 1
  %15 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tx_rate.i, align 1
  %rate.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 39
  %17 = ptrtoint ptr %rate.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %rate.i, align 1
  %encrypt.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 11
  %18 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %encrypt.i, align 1
  %bswenc.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %bswenc.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %bswenc.i, align 2
  %qos_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 25
  %20 = ptrtoint ptr %qos_en.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %qos_en.i, align 1
  %ht_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 26
  %21 = ptrtoint ptr %ht_en.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %ht_en.i, align 4
  %bwmode.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %bwmode.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %bwmode.i, align 2
  %ch_offset.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 29
  %23 = ptrtoint ptr %ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %ch_offset.i, align 1
  %sgi.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 30
  %24 = ptrtoint ptr %sgi.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %sgi.i, align 4
  %mgnt_seq.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 3
  %25 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mgnt_seq.i, align 4
  %seqnum.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %seqnum.i, align 2
  %retry_ctrl.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 41
  %28 = ptrtoint ptr %retry_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %retry_ctrl.i, align 1
  %mbssid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 42
  %29 = ptrtoint ptr %mbssid.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %mbssid.i, align 4
  %30 = ptrtoint ptr %qsel.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 16, ptr %qsel.i, align 2
  %31 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf_addr.i.i, align 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 104)
  %34 = load ptr, ptr %buf_addr.i.i, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 40
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %add.ptr, align 2
  %addr1 = getelementptr i8, ptr %34, i32 44
  %36 = call ptr @memset(ptr %addr1, i32 255, i32 6)
  %addr2 = getelementptr i8, ptr %34, i32 50
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %37 = call ptr @memcpy(ptr %addr2, ptr %mac_addr.i, i32 6)
  %addr3 = getelementptr i8, ptr %34, i32 56
  %call5 = tail call ptr @get_my_bssid(ptr noundef %network) #17
  %38 = call ptr @memcpy(ptr %addr3, ptr %call5, i32 6)
  %39 = ptrtoint ptr %add.ptr to i32
  %add = add i32 %39, 22
  %40 = inttoptr i32 %add to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %40, align 2
  %43 = and i16 %42, 3840
  store i16 %43, ptr %40, align 2
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr, align 2
  %46 = and i16 %45, 1023
  %47 = or i16 %46, -32768
  store i16 %47, ptr %add.ptr, align 2
  %48 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 24, ptr %pktlen.i, align 4
  %49 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mlmext_info, align 4
  %and18 = and i32 %50, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and18)
  %cmp = icmp eq i32 %and18, 3
  br i1 %cmp, label %if.then20, label %if.end51

if.then20:                                        ; preds = %if.end
  %add.ptr17 = getelementptr i8, ptr %34, i32 64
  %ies = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12
  %ie_length = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 11
  %51 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %ie_length, align 1
  %53 = call ptr @memcpy(ptr %add.ptr17, ptr %ies, i32 %52)
  %add.ptr22 = getelementptr i8, ptr %34, i32 76
  %54 = load i32, ptr %ie_length, align 1
  %sub = add i32 %54, -12
  %hidden_ssid_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 33
  %55 = ptrtoint ptr %hidden_ssid_mode to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %hidden_ssid_mode, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ssid_len_ori.i) #17
  %57 = ptrtoint ptr %ssid_len_ori.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %ssid_len_ori.i, align 4, !annotation !152
  %call.i195 = call ptr @rtw_get_ie(ptr noundef %add.ptr22, i32 noundef 0, ptr noundef nonnull %ssid_len_ori.i, i32 noundef %sub) #17
  %tobool.not.i = icmp eq ptr %call.i195, null
  br i1 %tobool.not.i, label %if.then20.update_hidden_ssid.exit_crit_edge, label %land.lhs.true.i

if.then20.update_hidden_ssid.exit_crit_edge:      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_hidden_ssid.exit

land.lhs.true.i:                                  ; preds = %if.then20
  %58 = ptrtoint ptr %ssid_len_ori.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ssid_len_ori.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i196 = icmp sgt i32 %59, 0
  br i1 %cmp.i196, label %if.then.i, label %land.lhs.true.i.update_hidden_ssid.exit_crit_edge

land.lhs.true.i.update_hidden_ssid.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_hidden_ssid.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %60 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %56, label %if.then.i.update_hidden_ssid.exit_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb4.i
  ]

if.then.i.update_hidden_ssid.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_hidden_ssid.exit

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr i8, ptr %call.i195, i32 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %59
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr22 to i32
  %sub.ptr.sub.neg.i = add i32 %sub, %sub.ptr.rhs.cast.i
  %sub.i = sub i32 %sub.ptr.sub.neg.i, %sub.ptr.lhs.cast.i
  %arrayidx.i = getelementptr i8, ptr %call.i195, i32 1
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx.i, align 1
  %62 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr1.i, i32 %sub.i)
  %63 = ptrtoint ptr %ssid_len_ori.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ssid_len_ori.i, align 4
  %sub3.i = sub i32 0, %64
  br label %update_hidden_ssid.exit

sw.bb4.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx5.i = getelementptr i8, ptr %call.i195, i32 2
  %65 = call ptr @memset(ptr %arrayidx5.i, i32 0, i32 %59)
  br label %update_hidden_ssid.exit

update_hidden_ssid.exit:                          ; preds = %sw.bb4.i, %sw.bb.i, %if.then.i.update_hidden_ssid.exit_crit_edge, %land.lhs.true.i.update_hidden_ssid.exit_crit_edge, %if.then20.update_hidden_ssid.exit_crit_edge
  %len_diff.0.i = phi i32 [ 0, %if.then.i.update_hidden_ssid.exit_crit_edge ], [ 0, %sw.bb4.i ], [ %sub3.i, %sw.bb.i ], [ 0, %land.lhs.true.i.update_hidden_ssid.exit_crit_edge ], [ 0, %if.then20.update_hidden_ssid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ssid_len_ori.i) #17
  %66 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %ie_length, align 1
  %add26 = add i32 %67, %len_diff.0.i
  %68 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pktlen.i, align 4
  %add31 = add i32 %add26, %69
  store i32 %add31, ptr %pktlen.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wps_ielen) #17
  %70 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %wps_ielen, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sr) #17
  %71 = ptrtoint ptr %sr to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %sr, align 1
  %72 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %buf_addr.i.i, align 4
  %add.ptr35 = getelementptr i8, ptr %73, i32 76
  %sub38 = add i32 %add31, -36
  %call39 = call ptr @rtw_get_wps_ie(ptr noundef %add.ptr35, i32 noundef %sub38, ptr noundef null, ptr noundef nonnull %wps_ielen) #17
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %update_hidden_ssid.exit.if.end45_crit_edge, label %land.lhs.true

update_hidden_ssid.exit.if.end45_crit_edge:       ; preds = %update_hidden_ssid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

land.lhs.true:                                    ; preds = %update_hidden_ssid.exit
  %74 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %wps_ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp41.not = icmp eq i32 %75, 0
  br i1 %cmp41.not, label %land.lhs.true.if.end45_crit_edge, label %if.then43

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %call44 = call ptr @rtw_get_wps_attr_content(ptr noundef nonnull %call39, i32 noundef %75, i16 noundef zeroext 4161, ptr noundef nonnull %sr, ptr noundef null) #17
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %land.lhs.true.if.end45_crit_edge, %update_hidden_ssid.exit.if.end45_crit_edge
  %76 = ptrtoint ptr %sr to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %sr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp47.not = icmp eq i8 %77, 0
  %fw_state.i197 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %78 = ptrtoint ptr %fw_state.i197 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fw_state.i197, align 4
  %and.i = and i32 %79, -257
  %masksel = select i1 %cmp47.not, i32 0, i32 256
  %and.i.sink = or i32 %and.i, %masksel
  store i32 %and.i.sink, ptr %fw_state.i197, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sr) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wps_ielen) #17
  br label %_issue_bcn

if.end51:                                         ; preds = %if.end
  %add.ptr52 = getelementptr i8, ptr %34, i32 72
  %80 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 32, ptr %pktlen.i, align 4
  %ies55 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12
  %call57 = tail call ptr @rtw_get_beacon_interval_from_ie(ptr noundef %ies55) #17
  %81 = ptrtoint ptr %call57 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %call57, align 1
  %83 = ptrtoint ptr %add.ptr52 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 %82, ptr %add.ptr52, align 1
  %add.ptr58 = getelementptr i8, ptr %34, i32 74
  %84 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pktlen.i, align 4
  %add60 = add i32 %85, 2
  store i32 %add60, ptr %pktlen.i, align 4
  %call63 = tail call ptr @rtw_get_capability_from_ie(ptr noundef %ies55) #17
  %86 = ptrtoint ptr %call63 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %call63, align 1
  %88 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 %87, ptr %add.ptr58, align 1
  %add.ptr64 = getelementptr i8, ptr %34, i32 76
  %89 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pktlen.i, align 4
  %add66 = add i32 %90, 2
  store i32 %add66, ptr %pktlen.i, align 4
  %ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3
  %91 = ptrtoint ptr %ssid to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %ssid, align 1
  %ssid68 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3, i32 1
  %call71 = tail call ptr @rtw_set_ie(ptr noundef %add.ptr64, i32 noundef 0, i32 noundef %92, ptr noundef %ssid68, ptr noundef %pktlen.i) #17
  %supported_rates = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 9
  %call73 = tail call i32 @rtw_get_rateset_len(ptr noundef %supported_rates) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call73)
  %cmp74 = icmp ugt i32 %call73, 8
  %93 = tail call i32 @llvm.umin.i32(i32 %call73, i32 8)
  %call79 = tail call ptr @rtw_set_ie(ptr noundef %call71, i32 noundef 1, i32 noundef %93, ptr noundef %supported_rates, ptr noundef %pktlen.i) #17
  %ds_config = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 7, i32 3
  %call81 = tail call ptr @rtw_set_ie(ptr noundef %call79, i32 noundef 3, i32 noundef 1, ptr noundef %ds_config, ptr noundef %pktlen.i) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %erpinfo) #17
  %94 = ptrtoint ptr %erpinfo to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %erpinfo, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ATIMWindow) #17
  %95 = ptrtoint ptr %ATIMWindow to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %ATIMWindow, align 4
  %call83 = call ptr @rtw_set_ie(ptr noundef %call81, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %ATIMWindow, ptr noundef %pktlen.i) #17
  %call85 = call ptr @rtw_set_ie(ptr noundef %call83, i32 noundef 42, i32 noundef 1, ptr noundef nonnull %erpinfo, ptr noundef %pktlen.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ATIMWindow) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %erpinfo) #17
  br i1 %cmp74, label %if.then88, label %if.end51._issue_bcn_crit_edge

if.end51._issue_bcn_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %_issue_bcn

if.then88:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  %sub89 = add i32 %call73, -8
  %add.ptr92 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 9, i32 8
  %call94 = call ptr @rtw_set_ie(ptr noundef %call85, i32 noundef 50, i32 noundef %sub89, ptr noundef %add.ptr92, ptr noundef %pktlen.i) #17
  br label %_issue_bcn

_issue_bcn:                                       ; preds = %if.then88, %if.end51._issue_bcn_crit_edge, %if.end45
  %update_bcn = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 70
  %96 = ptrtoint ptr %update_bcn to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %update_bcn, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock) #17
  %97 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pktlen.i, align 4
  %99 = add i32 %98, -473
  call void @__sanitizer_cov_trace_const_cmp4(i32 -513, i32 %99)
  %cmp99 = icmp ult i32 %99, -513
  br i1 %cmp99, label %_issue_bcn.cleanup_crit_edge, label %if.end102

_issue_bcn.cleanup_crit_edge:                     ; preds = %_issue_bcn
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end102:                                        ; preds = %_issue_bcn
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 9
  %100 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %98, ptr %last_txcmdsz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout_ms)
  %cmp104 = icmp sgt i32 %timeout_ms, 0
  br i1 %cmp104, label %if.then106, label %if.else108

if.then106:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #19
  %call107 = call i32 @dump_mgntframe_and_wait(ptr noundef %padapter, ptr noundef nonnull %call1.i.i, i32 noundef %timeout_ms)
  br label %cleanup

if.else108:                                       ; preds = %if.end102
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %101 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i198 = icmp eq i32 %102, 0
  br i1 %tobool.not.i198, label %lor.lhs.false.i, label %if.else108.if.then.i200_crit_edge

if.else108.if.then.i200_crit_edge:                ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i200

lor.lhs.false.i:                                  ; preds = %if.else108
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %103 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bDriverStopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool1.not.i = icmp eq i32 %104, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i200_crit_edge

lor.lhs.false.i.if.then.i200_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i200

if.then.i200:                                     ; preds = %lor.lhs.false.i.if.then.i200_crit_edge, %if.else108.if.then.i200_crit_edge
  %105 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pxmitbuf10.i.i, align 4
  %call.i199 = call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %106) #17
  %call3.i = call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  %call4.i = call i32 @rtw_hal_mgnt_xmit(ptr noundef %padapter, ptr noundef nonnull %call1.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i200, %if.then106, %_issue_bcn.cleanup_crit_edge, %if.then7.i.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_wps_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_beacon_interval_from_ie(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_capability_from_ie(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_set_ie(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_rateset_len(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @issue_probereq(ptr noundef %padapter, ptr noundef %pssid, ptr noundef %da) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call fastcc i32 @_issue_probereq(ptr noundef %padapter, ptr noundef %pssid, ptr noundef %da, i8 noundef zeroext 0, i1 noundef zeroext true, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_issue_probereq(ptr noundef %padapter, ptr noundef %pssid, ptr noundef readonly %da, i8 noundef zeroext %ch, i1 noundef zeroext %append_wps, i1 noundef zeroext %wait_ack) unnamed_addr #2 align 64 {
entry:
  %ch.addr = alloca i8, align 1
  %bssrate = alloca [13 x i8], align 1
  %bssrate_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ch.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %ch, ptr %ch.addr, align 1
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %bssrate) #17
  %1 = getelementptr inbounds [13 x i8], ptr %bssrate, i32 0, i32 8
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %2 = call ptr @memset(ptr %bssrate, i32 255, i32 13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bssrate_len) #17
  %3 = ptrtoint ptr %bssrate_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bssrate_len, align 4
  %call1.i.i = tail call ptr @rtw_alloc_xmitframe_ext(ptr noundef %xmitpriv) #17
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %entry.exit_crit_edge, label %if.end4.i.i

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit

if.end4.i.i:                                      ; preds = %entry
  %call5.i.i = tail call ptr @rtw_alloc_xmitbuf_ext(ptr noundef %xmitpriv) #17
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %exit

if.end:                                           ; preds = %if.end4.i.i
  %frame_tag.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %frame_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %frame_tag.i.i, align 4
  %pxmitbuf10.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5.i.i, ptr %pxmitbuf10.i.i, align 4
  %pbuf.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %pbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pbuf.i.i, align 4
  %buf_addr.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %buf_addr.i.i, align 4
  %priv_data.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1.i.i, ptr %priv_data.i.i, align 4
  %hdrlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 7
  %10 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 24, ptr %hdrlen.i, align 2
  %nr_frags.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 10
  %11 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %nr_frags.i, align 4
  %priority.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 16
  %12 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 7, ptr %priority.i, align 2
  %mac_id.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 18
  %13 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %mac_id.i, align 4
  %qsel.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 36
  %14 = ptrtoint ptr %qsel.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 18, ptr %qsel.i, align 2
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 8
  %15 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pktlen.i, align 4
  %tx_rate.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %16 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx_rate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp.i = icmp eq i8 %17, 2
  %..i = select i1 %cmp.i, i8 1, i8 2
  %call.i = tail call zeroext i8 @rtw_get_mgntframe_raid(ptr noundef %padapter, i8 noundef zeroext %..i) #17
  %raid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 27
  %18 = ptrtoint ptr %raid.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call.i, ptr %raid.i, align 1
  %19 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tx_rate.i, align 1
  %rate.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 39
  %21 = ptrtoint ptr %rate.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %rate.i, align 1
  %encrypt.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 11
  %22 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %encrypt.i, align 1
  %bswenc.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %bswenc.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %bswenc.i, align 2
  %qos_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 25
  %24 = ptrtoint ptr %qos_en.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %qos_en.i, align 1
  %ht_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 26
  %25 = ptrtoint ptr %ht_en.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %ht_en.i, align 4
  %bwmode.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 28
  %26 = ptrtoint ptr %bwmode.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %bwmode.i, align 2
  %ch_offset.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 29
  %27 = ptrtoint ptr %ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %ch_offset.i, align 1
  %sgi.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 30
  %28 = ptrtoint ptr %sgi.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %sgi.i, align 4
  %mgnt_seq.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 3
  %29 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mgnt_seq.i, align 4
  %seqnum.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 5
  %31 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %seqnum.i, align 2
  %retry_ctrl.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 41
  %32 = ptrtoint ptr %retry_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %retry_ctrl.i, align 1
  %mbssid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 42
  %33 = ptrtoint ptr %mbssid.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %mbssid.i, align 4
  %34 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf_addr.i.i, align 4
  %36 = call ptr @memset(ptr %35, i32 0, i32 104)
  %37 = load ptr, ptr %buf_addr.i.i, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 40
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %add.ptr, align 2
  %tobool4.not = icmp eq ptr %da, null
  %addr17 = getelementptr i8, ptr %37, i32 44
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %39 = call ptr @memcpy(ptr %addr17, ptr %da, i32 6)
  %addr3 = getelementptr i8, ptr %37, i32 56
  %40 = call ptr @memcpy(ptr %addr3, ptr %da, i32 6)
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %41 = call ptr @memset(ptr %addr17, i32 255, i32 6)
  %addr39 = getelementptr i8, ptr %37, i32 56
  %42 = call ptr @memset(ptr %addr39, i32 255, i32 6)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5
  %addr2 = getelementptr i8, ptr %37, i32 50
  %43 = call ptr @memcpy(ptr %addr2, ptr %mac_addr.i, i32 6)
  %44 = ptrtoint ptr %add.ptr to i32
  %add = add i32 %44, 22
  %45 = inttoptr i32 %add to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %45, align 2
  %48 = and i16 %47, 3840
  %49 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %mgnt_seq.i, align 4
  %shl = shl i16 %50, 4
  %51 = tail call i16 @llvm.bswap.i16(i16 %shl)
  %or132 = or i16 %51, %48
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %or132, ptr %45, align 2
  %53 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %mgnt_seq.i, align 4
  %inc = add i16 %54, 1
  store i16 %inc, ptr %mgnt_seq.i, align 4
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr, align 2
  %57 = and i16 %56, 1023
  %58 = or i16 %57, 16384
  store i16 %58, ptr %add.ptr, align 2
  %add.ptr29 = getelementptr i8, ptr %37, i32 64
  %59 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 24, ptr %pktlen.i, align 4
  %tobool30.not = icmp eq ptr %pssid, null
  br i1 %tobool30.not, label %if.else35, label %if.then31

if.then31:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %60 = ptrtoint ptr %pssid to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pssid, align 4
  %ssid = getelementptr inbounds %struct.ndis_802_11_ssid, ptr %pssid, i32 0, i32 1
  %call34 = tail call ptr @rtw_set_ie(ptr noundef %add.ptr29, i32 noundef 0, i32 noundef %61, ptr noundef %ssid, ptr noundef %pktlen.i) #17
  br label %if.end38

if.else35:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %call37 = tail call ptr @rtw_set_ie(ptr noundef %add.ptr29, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef %pktlen.i) #17
  br label %if.end38

if.end38:                                         ; preds = %if.else35, %if.then31
  %pframe.0 = phi ptr [ %call34, %if.then31 ], [ %call37, %if.else35 ]
  call void @get_rate_set(ptr noundef %padapter, ptr noundef nonnull %bssrate, ptr noundef nonnull %bssrate_len) #17
  %62 = ptrtoint ptr %bssrate_len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bssrate_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %63)
  %cmp = icmp sgt i32 %63, 8
  br i1 %cmp, label %if.then41, label %if.else49

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  %call44 = call ptr @rtw_set_ie(ptr noundef %pframe.0, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %bssrate, ptr noundef %pktlen.i) #17
  %64 = ptrtoint ptr %bssrate_len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bssrate_len, align 4
  %sub = add i32 %65, -8
  %call48 = call ptr @rtw_set_ie(ptr noundef %call44, i32 noundef 50, i32 noundef %sub, ptr noundef %1, ptr noundef %pktlen.i) #17
  br label %if.end53

if.else49:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  %call52 = call ptr @rtw_set_ie(ptr noundef %pframe.0, i32 noundef 1, i32 noundef %63, ptr noundef nonnull %bssrate, ptr noundef %pktlen.i) #17
  br label %if.end53

if.end53:                                         ; preds = %if.else49, %if.then41
  %pframe.1 = phi ptr [ %call48, %if.then41 ], [ %call52, %if.else49 ]
  %66 = ptrtoint ptr %ch.addr to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ch.addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool54.not = icmp eq i8 %67, 0
  br i1 %tobool54.not, label %if.end53.if.end58_crit_edge, label %if.then55

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  %call57 = call ptr @rtw_set_ie(ptr noundef %pframe.1, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %ch.addr, ptr noundef %pktlen.i) #17
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end53.if.end58_crit_edge
  %pframe.2 = phi ptr [ %call57, %if.then55 ], [ %pframe.1, %if.end53.if.end58_crit_edge ]
  br i1 %append_wps, label %if.then60, label %if.end58.if.end73_crit_edge

if.end58.if.end73_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end73

if.then60:                                        ; preds = %if.end58
  %wps_probe_req_ie_len = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 40
  %68 = ptrtoint ptr %wps_probe_req_ie_len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %wps_probe_req_ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp61.not = icmp eq i32 %69, 0
  br i1 %cmp61.not, label %if.then60.if.end73_crit_edge, label %land.lhs.true

if.then60.if.end73_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end73

land.lhs.true:                                    ; preds = %if.then60
  %wps_probe_req_ie = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 39
  %70 = ptrtoint ptr %wps_probe_req_ie to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wps_probe_req_ie, align 4
  %tobool63.not = icmp eq ptr %71, null
  br i1 %tobool63.not, label %land.lhs.true.if.end73_crit_edge, label %if.then64

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end73

if.then64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %72 = call ptr @memcpy(ptr %pframe.2, ptr %71, i32 %69)
  %73 = ptrtoint ptr %wps_probe_req_ie_len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %wps_probe_req_ie_len, align 4
  %75 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pktlen.i, align 4
  %add71 = add i32 %76, %74
  store i32 %add71, ptr %pktlen.i, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then64, %land.lhs.true.if.end73_crit_edge, %if.then60.if.end73_crit_edge, %if.end58.if.end73_crit_edge
  %77 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pktlen.i, align 4
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 9
  %79 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %last_txcmdsz, align 4
  br i1 %wait_ack, label %if.then76, label %if.else78

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  %call77 = call i32 @dump_mgntframe_and_wait_ack(ptr noundef %padapter, ptr noundef nonnull %call1.i.i)
  br label %exit

if.else78:                                        ; preds = %if.end73
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %80 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i = icmp eq i32 %81, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.else78.if.then.i_crit_edge

if.else78.if.then.i_crit_edge:                    ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.else78
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %82 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bDriverStopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool1.not.i = icmp eq i32 %83, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.else78.if.then.i_crit_edge
  %84 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pxmitbuf10.i.i, align 4
  %call.i133 = call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %85) #17
  %call3.i = call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  %call4.i = call i32 @rtw_hal_mgnt_xmit(ptr noundef %padapter, ptr noundef nonnull %call1.i.i) #17
  br label %exit

exit:                                             ; preds = %if.end.i, %if.then.i, %if.then76, %if.then7.i.i, %entry.exit_crit_edge
  %ret.0 = phi i32 [ %call77, %if.then76 ], [ 1, %if.then.i ], [ 1, %if.end.i ], [ 0, %if.then7.i.i ], [ 0, %entry.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bssrate_len) #17
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %bssrate) #17
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @issue_probereq_ex(ptr noundef %padapter, ptr noundef %pssid, ptr noundef %da, i8 noundef zeroext %ch, i1 noundef zeroext %append_wps, i32 noundef %try_cnt, i32 noundef %wait_ms) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_ms)
  %cmp = icmp sgt i32 %wait_ms, 0
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_ms)
  %cmp11 = icmp eq i32 %wait_ms, 0
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond.do.body_crit_edge ]
  %call = tail call fastcc i32 @_issue_probereq(ptr noundef %padapter, ptr noundef %pssid, ptr noundef %da, i8 noundef zeroext %ch, i1 noundef zeroext %append_wps, i1 noundef zeroext %cmp)
  %inc = add nuw nsw i32 %i.0, 1
  %0 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

lor.lhs.false:                                    ; preds = %do.body
  %2 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %try_cnt)
  %cmp3 = icmp slt i32 %inc, %try_cnt
  %brmerge.demorgan = and i1 %cmp, %cmp3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp eq i32 %call, 0
  %or.cond = select i1 %brmerge.demorgan, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.then7, label %if.end.do.cond_crit_edge

if.end.do.cond_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @msleep(i32 noundef %wait_ms) #17
  br label %do.cond

do.cond:                                          ; preds = %if.then7, %if.end.do.cond_crit_edge
  %or.cond26 = or i1 %cmp11, %cmp6
  %or.cond27 = select i1 %cmp3, i1 %or.cond26, i1 false
  br i1 %or.cond27, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %do.body.do.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12.not = icmp ne i32 %call, 0
  %spec.store.select = zext i1 %cmp12.not to i32
  ret i32 %spec.store.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_set_fixed_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_wep_encrypt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @issue_assocreq(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  %bssrate = alloca [13 x i8], align 1
  %sta_bssrate = alloca [13 x i8], align 1
  %sta_bssrate_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %bssrate) #17
  %0 = getelementptr inbounds [13 x i8], ptr %bssrate, i32 0, i32 8
  %1 = call ptr @memset(ptr %bssrate, i32 255, i32 13)
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %sta_bssrate) #17
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %2 = call ptr @memset(ptr %sta_bssrate, i32 255, i32 13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sta_bssrate_len) #17
  %3 = ptrtoint ptr %sta_bssrate_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sta_bssrate_len, align 4
  %call1.i.i = tail call ptr @rtw_alloc_xmitframe_ext(ptr noundef %xmitpriv) #17
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %entry.if.else207_crit_edge, label %if.end4.i.i

entry.if.else207_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else207

if.end4.i.i:                                      ; preds = %entry
  %call5.i.i = tail call ptr @rtw_alloc_xmitbuf_ext(ptr noundef %xmitpriv) #17
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %if.else207

if.end:                                           ; preds = %if.end4.i.i
  %frame_tag.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %frame_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %frame_tag.i.i, align 4
  %pxmitbuf10.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5.i.i, ptr %pxmitbuf10.i.i, align 4
  %pbuf.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %pbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pbuf.i.i, align 4
  %buf_addr.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %buf_addr.i.i, align 4
  %priv_data.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1.i.i, ptr %priv_data.i.i, align 4
  %hdrlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 7
  %10 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 24, ptr %hdrlen.i, align 2
  %nr_frags.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 10
  %11 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %nr_frags.i, align 4
  %priority.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 16
  %12 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 7, ptr %priority.i, align 2
  %mac_id.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 18
  %13 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %mac_id.i, align 4
  %qsel.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 36
  %14 = ptrtoint ptr %qsel.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 18, ptr %qsel.i, align 2
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 8
  %15 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pktlen.i, align 4
  %tx_rate.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %16 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx_rate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp.i = icmp eq i8 %17, 2
  %..i = select i1 %cmp.i, i8 1, i8 2
  %call.i = tail call zeroext i8 @rtw_get_mgntframe_raid(ptr noundef %padapter, i8 noundef zeroext %..i) #17
  %raid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 27
  %18 = ptrtoint ptr %raid.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call.i, ptr %raid.i, align 1
  %19 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tx_rate.i, align 1
  %rate.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 39
  %21 = ptrtoint ptr %rate.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %rate.i, align 1
  %encrypt.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 11
  %22 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %encrypt.i, align 1
  %bswenc.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %bswenc.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %bswenc.i, align 2
  %qos_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 25
  %24 = ptrtoint ptr %qos_en.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %qos_en.i, align 1
  %ht_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 26
  %25 = ptrtoint ptr %ht_en.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %ht_en.i, align 4
  %bwmode.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 28
  %26 = ptrtoint ptr %bwmode.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %bwmode.i, align 2
  %ch_offset.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 29
  %27 = ptrtoint ptr %ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %ch_offset.i, align 1
  %sgi.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 30
  %28 = ptrtoint ptr %sgi.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %sgi.i, align 4
  %mgnt_seq.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 3
  %29 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mgnt_seq.i, align 4
  %seqnum.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 5
  %31 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %seqnum.i, align 2
  %retry_ctrl.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 41
  %32 = ptrtoint ptr %retry_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %retry_ctrl.i, align 1
  %mbssid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 42
  %33 = ptrtoint ptr %mbssid.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %mbssid.i, align 4
  %34 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf_addr.i.i, align 4
  %36 = call ptr @memset(ptr %35, i32 0, i32 104)
  %37 = load ptr, ptr %buf_addr.i.i, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 40
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %add.ptr, align 2
  %addr1 = getelementptr i8, ptr %37, i32 44
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %call2 = tail call ptr @get_my_bssid(ptr noundef %network) #17
  %39 = call ptr @memcpy(ptr %addr1, ptr %call2, i32 6)
  %addr2 = getelementptr i8, ptr %37, i32 50
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %40 = call ptr @memcpy(ptr %addr2, ptr %mac_addr.i, i32 6)
  %addr3 = getelementptr i8, ptr %37, i32 56
  %call7 = tail call ptr @get_my_bssid(ptr noundef %network) #17
  %41 = call ptr @memcpy(ptr %addr3, ptr %call7, i32 6)
  %42 = ptrtoint ptr %add.ptr to i32
  %add = add i32 %42, 22
  %43 = inttoptr i32 %add to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %43, align 2
  %46 = and i16 %45, 3840
  %47 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mgnt_seq.i, align 4
  %shl = shl i16 %48, 4
  %49 = tail call i16 @llvm.bswap.i16(i16 %shl)
  %or315 = or i16 %49, %46
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %or315, ptr %43, align 2
  %51 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %mgnt_seq.i, align 4
  %inc = add i16 %52, 1
  store i16 %inc, ptr %mgnt_seq.i, align 4
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %add.ptr, align 2
  %55 = and i16 %54, 1023
  store i16 %55, ptr %add.ptr, align 2
  %add.ptr24 = getelementptr i8, ptr %37, i32 64
  %56 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 24, ptr %pktlen.i, align 4
  %ies = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12
  %call27 = tail call ptr @rtw_get_capability_from_ie(ptr noundef %ies) #17
  %57 = ptrtoint ptr %call27 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %call27, align 1
  %59 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %58, ptr %add.ptr24, align 1
  %add.ptr28 = getelementptr i8, ptr %37, i32 66
  %60 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pktlen.i, align 4
  %add30 = add i32 %61, 2
  store i32 %add30, ptr %pktlen.i, align 4
  %62 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 768, ptr %add.ptr28, align 1
  %add.ptr31 = getelementptr i8, ptr %37, i32 68
  %63 = load i32, ptr %pktlen.i, align 4
  %add33 = add i32 %63, 2
  store i32 %add33, ptr %pktlen.i, align 4
  %ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3
  %64 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ssid, align 4
  %ssid37 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3, i32 1
  %call40 = tail call ptr @rtw_set_ie(ptr noundef %add.ptr31, i32 noundef 0, i32 noundef %65, ptr noundef %ssid37, ptr noundef %pktlen.i) #17
  call void @get_rate_set(ptr noundef %padapter, ptr noundef nonnull %sta_bssrate, ptr noundef nonnull %sta_bssrate_len) #17
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %66 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %cur_channel, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %67)
  %cmp = icmp eq i8 %67, 14
  br i1 %cmp, label %if.then44, label %if.end.for.body58.preheader_crit_edge

if.end.for.body58.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body58.preheader

if.then44:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %68 = ptrtoint ptr %sta_bssrate_len to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4, ptr %sta_bssrate_len, align 4
  br label %for.body58.preheader

for.body58.preheader:                             ; preds = %if.then44, %if.end.for.body58.preheader_crit_edge
  br label %for.body58

for.body58:                                       ; preds = %for.inc95.for.body58_crit_edge, %for.body58.preheader
  %index.0334 = phi i32 [ %index.1, %for.inc95.for.body58_crit_edge ], [ 0, %for.body58.preheader ]
  %i.1333 = phi i32 [ %inc96, %for.inc95.for.body58_crit_edge ], [ 0, %for.body58.preheader ]
  %arrayidx61 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 9, i32 %i.1333
  %69 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp63 = icmp eq i8 %70, 0
  br i1 %cmp63, label %for.body58.for.end97_crit_edge, label %for.cond67.preheader

for.body58.for.end97_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end97

for.cond67.preheader:                             ; preds = %for.body58
  %71 = ptrtoint ptr %sta_bssrate_len to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sta_bssrate_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp68328.not = icmp eq i32 %72, 0
  br i1 %cmp68328.not, label %for.cond67.preheader.for.end85_crit_edge, label %for.cond67.preheader.for.body70_crit_edge

for.cond67.preheader.for.body70_crit_edge:        ; preds = %for.cond67.preheader
  br label %for.body70

for.cond67.preheader.for.end85_crit_edge:         ; preds = %for.cond67.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end85

for.body70:                                       ; preds = %for.inc83.for.body70_crit_edge, %for.cond67.preheader.for.body70_crit_edge
  %j.0329 = phi i32 [ %inc84, %for.inc83.for.body70_crit_edge ], [ 0, %for.cond67.preheader.for.body70_crit_edge ]
  %arrayidx76 = getelementptr [13 x i8], ptr %sta_bssrate, i32 0, i32 %j.0329
  %73 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx76, align 1
  %75 = xor i8 %74, %70
  %76 = and i8 %75, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp79 = icmp eq i8 %76, 0
  br i1 %cmp79, label %for.body70.for.end85_crit_edge, label %for.inc83

for.body70.for.end85_crit_edge:                   ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end85

for.inc83:                                        ; preds = %for.body70
  %inc84 = add nuw i32 %j.0329, 1
  %exitcond.not = icmp eq i32 %inc84, %72
  br i1 %exitcond.not, label %for.inc83.for.inc95_crit_edge, label %for.inc83.for.body70_crit_edge

for.inc83.for.body70_crit_edge:                   ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body70

for.inc83.for.inc95_crit_edge:                    ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc95

for.end85:                                        ; preds = %for.body70.for.end85_crit_edge, %for.cond67.preheader.for.end85_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.cond67.preheader.for.end85_crit_edge ], [ %j.0329, %for.body70.for.end85_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa, i32 %72)
  %cmp86.not = icmp eq i32 %j.0.lcssa, %72
  br i1 %cmp86.not, label %for.end85.for.inc95_crit_edge, label %if.then88

for.end85.for.inc95_crit_edge:                    ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc95

if.then88:                                        ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #19
  %inc92 = add i32 %index.0334, 1
  %arrayidx93 = getelementptr [13 x i8], ptr %bssrate, i32 0, i32 %index.0334
  %77 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %70, ptr %arrayidx93, align 1
  br label %for.inc95

for.inc95:                                        ; preds = %if.then88, %for.end85.for.inc95_crit_edge, %for.inc83.for.inc95_crit_edge
  %index.1 = phi i32 [ %inc92, %if.then88 ], [ %index.0334, %for.end85.for.inc95_crit_edge ], [ %index.0334, %for.inc83.for.inc95_crit_edge ]
  %inc96 = add nuw nsw i32 %i.1333, 1
  %exitcond339.not = icmp eq i32 %inc96, 16
  br i1 %exitcond339.not, label %for.inc95.for.end97_crit_edge, label %for.inc95.for.body58_crit_edge

for.inc95.for.body58_crit_edge:                   ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body58

for.inc95.for.end97_crit_edge:                    ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end97

for.end97:                                        ; preds = %for.inc95.for.end97_crit_edge, %for.body58.for.end97_crit_edge
  %index.0.lcssa = phi i32 [ %index.0334, %for.body58.for.end97_crit_edge ], [ %index.1, %for.inc95.for.end97_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.0.lcssa)
  %cmp98 = icmp eq i32 %index.0.lcssa, 0
  br i1 %cmp98, label %if.then100, label %if.end103

if.then100:                                       ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #19
  %78 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pxmitbuf10.i.i, align 4
  %call101 = call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %79) #17
  %call102 = call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %if.else207

if.end103:                                        ; preds = %for.end97
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %index.0.lcssa)
  %cmp104 = icmp sgt i32 %index.0.lcssa, 8
  br i1 %cmp104, label %if.then106, label %if.else

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #19
  %call109 = call ptr @rtw_set_ie(ptr noundef %call40, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %bssrate, ptr noundef %pktlen.i) #17
  %sub = add nsw i32 %index.0.lcssa, -8
  %call113 = call ptr @rtw_set_ie(ptr noundef %call109, i32 noundef 50, i32 noundef %sub, ptr noundef %0, ptr noundef %pktlen.i) #17
  br label %if.end117

if.else:                                          ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #19
  %call116 = call ptr @rtw_set_ie(ptr noundef %call40, i32 noundef 1, i32 noundef %index.0.lcssa, ptr noundef nonnull %bssrate, ptr noundef %pktlen.i) #17
  br label %if.end117

if.end117:                                        ; preds = %if.else, %if.then106
  %pframe.0 = phi ptr [ %call113, %if.then106 ], [ %call116, %if.else ]
  %ie_length = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 11
  %80 = ptrtoint ptr %ie_length to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ie_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %81)
  %cmp120335 = icmp ugt i32 %81, 12
  br i1 %cmp120335, label %for.body122.lr.ph, label %if.end117.for.end194_crit_edge

if.end117.for.end194_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end194

for.body122.lr.ph:                                ; preds = %if.end117
  %htpriv179 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33
  %HT_caps = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 48
  br label %for.body122

for.body122:                                      ; preds = %sw.epilog.for.body122_crit_edge, %for.body122.lr.ph
  %i.2337 = phi i32 [ 12, %for.body122.lr.ph ], [ %add193, %sw.epilog.for.body122_crit_edge ]
  %pframe.1336 = phi ptr [ %pframe.0, %for.body122.lr.ph ], [ %pframe.2, %sw.epilog.for.body122_crit_edge ]
  %add.ptr126 = getelementptr i8, ptr %ies, i32 %i.2337
  %82 = ptrtoint ptr %add.ptr126 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %add.ptr126, align 1
  %84 = zext i8 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %83, label %for.body122.sw.epilog_crit_edge [
    i8 -35, label %sw.bb
    i8 48, label %sw.bb154
    i8 45, label %sw.bb161
    i8 127, label %sw.bb177
  ]

for.body122.sw.epilog_crit_edge:                  ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body122
  %data = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr126, i32 0, i32 2
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(4) %data, ptr noundef nonnull dereferenceable(4) @RTW_WPA_OUI, i32 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool130.not = icmp eq i32 %bcmp, 0
  br i1 %tobool130.not, label %sw.bb.if.then140_crit_edge, label %lor.lhs.false

sw.bb.if.then140_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then140

lor.lhs.false:                                    ; preds = %sw.bb
  %bcmp317 = call i32 @bcmp(ptr noundef dereferenceable(4) %data, ptr noundef nonnull dereferenceable(4) @WMM_OUI, i32 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp317)
  %tobool134.not = icmp eq i32 %bcmp317, 0
  br i1 %tobool134.not, label %lor.lhs.false.if.then140_crit_edge, label %lor.lhs.false135

lor.lhs.false.if.then140_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then140

lor.lhs.false135:                                 ; preds = %lor.lhs.false
  %bcmp318 = call i32 @bcmp(ptr noundef dereferenceable(4) %data, ptr noundef nonnull dereferenceable(4) @WPS_OUI, i32 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp318)
  %tobool139.not = icmp eq i32 %bcmp318, 0
  br i1 %tobool139.not, label %lor.lhs.false135.if.then140_crit_edge, label %lor.lhs.false135.sw.epilog_crit_edge

lor.lhs.false135.sw.epilog_crit_edge:             ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

lor.lhs.false135.if.then140_crit_edge:            ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then140

if.then140:                                       ; preds = %lor.lhs.false135.if.then140_crit_edge, %lor.lhs.false.if.then140_crit_edge, %sw.bb.if.then140_crit_edge
  %length = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr126, i32 0, i32 1
  %85 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %length, align 1
  %87 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool141.not = icmp eq i8 %88, 0
  br i1 %tobool141.not, label %land.lhs.true, label %if.then140.if.end147_crit_edge

if.then140.if.end147_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end147

land.lhs.true:                                    ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #19
  %bcmp316 = call i32 @bcmp(ptr noundef dereferenceable(4) %data, ptr noundef nonnull dereferenceable(4) @WPS_OUI, i32 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp316)
  %tobool145.not = icmp eq i32 %bcmp316, 0
  %spec.select = select i1 %tobool145.not, i8 14, i8 %86
  br label %if.end147

if.end147:                                        ; preds = %land.lhs.true, %if.then140.if.end147_crit_edge
  %vs_ie_length.0 = phi i8 [ %86, %if.then140.if.end147_crit_edge ], [ %spec.select, %land.lhs.true ]
  %conv148 = zext i8 %vs_ie_length.0 to i32
  %call152 = call ptr @rtw_set_ie(ptr noundef %pframe.1336, i32 noundef 221, i32 noundef %conv148, ptr noundef %data, ptr noundef %pktlen.i) #17
  br label %sw.epilog

sw.bb154:                                         ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #19
  %length155 = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr126, i32 0, i32 1
  %89 = ptrtoint ptr %length155 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %length155, align 1
  %conv156 = zext i8 %90 to i32
  %data157 = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr126, i32 0, i32 2
  %call160 = call ptr @rtw_set_ie(ptr noundef %pframe.1336, i32 noundef 48, i32 noundef %conv156, ptr noundef %data157, ptr noundef %pktlen.i) #17
  br label %sw.epilog

sw.bb161:                                         ; preds = %for.body122
  %91 = ptrtoint ptr %htpriv179 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %htpriv179, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool163.not = icmp eq i8 %92, 0
  br i1 %tobool163.not, label %sw.bb161.sw.epilog_crit_edge, label %if.then164

sw.bb161.sw.epilog_crit_edge:                     ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then164:                                       ; preds = %sw.bb161
  %call165 = call i32 @is_ap_in_tkip(ptr noundef %padapter) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.then167, label %if.then164.sw.epilog_crit_edge

if.then164.sw.epilog_crit_edge:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then167:                                       ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #19
  %data168 = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr126, i32 0, i32 2
  %93 = call ptr @memcpy(ptr %HT_caps, ptr %data168, i32 26)
  %length170 = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr126, i32 0, i32 1
  %94 = ptrtoint ptr %length170 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %length170, align 1
  %conv171 = zext i8 %95 to i32
  %call174 = call ptr @rtw_set_ie(ptr noundef %pframe.1336, i32 noundef 45, i32 noundef %conv171, ptr noundef %HT_caps, ptr noundef %pktlen.i) #17
  br label %sw.epilog

sw.bb177:                                         ; preds = %for.body122
  %96 = ptrtoint ptr %htpriv179 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %htpriv179, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool181.not = icmp eq i8 %97, 0
  br i1 %tobool181.not, label %sw.bb177.sw.epilog_crit_edge, label %if.then182

sw.bb177.sw.epilog_crit_edge:                     ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then182:                                       ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #19
  %length183 = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr126, i32 0, i32 1
  %98 = ptrtoint ptr %length183 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %length183, align 1
  %conv184 = zext i8 %99 to i32
  %data185 = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr126, i32 0, i32 2
  %call188 = call ptr @rtw_set_ie(ptr noundef %pframe.1336, i32 noundef 127, i32 noundef %conv184, ptr noundef %data185, ptr noundef %pktlen.i) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then182, %sw.bb177.sw.epilog_crit_edge, %if.then167, %if.then164.sw.epilog_crit_edge, %sw.bb161.sw.epilog_crit_edge, %sw.bb154, %if.end147, %lor.lhs.false135.sw.epilog_crit_edge, %for.body122.sw.epilog_crit_edge
  %pframe.2 = phi ptr [ %pframe.1336, %for.body122.sw.epilog_crit_edge ], [ %call188, %if.then182 ], [ %pframe.1336, %sw.bb177.sw.epilog_crit_edge ], [ %pframe.1336, %if.then164.sw.epilog_crit_edge ], [ %call174, %if.then167 ], [ %pframe.1336, %sw.bb161.sw.epilog_crit_edge ], [ %call160, %sw.bb154 ], [ %pframe.1336, %lor.lhs.false135.sw.epilog_crit_edge ], [ %call152, %if.end147 ]
  %length190 = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr126, i32 0, i32 1
  %100 = ptrtoint ptr %length190 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %length190, align 1
  %conv191 = zext i8 %101 to i32
  %add192 = add i32 %i.2337, 2
  %add193 = add i32 %add192, %conv191
  %102 = ptrtoint ptr %ie_length to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ie_length, align 4
  %cmp120 = icmp ult i32 %add193, %103
  br i1 %cmp120, label %sw.epilog.for.body122_crit_edge, label %sw.epilog.for.end194_crit_edge

sw.epilog.for.end194_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end194

sw.epilog.for.body122_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body122

for.end194:                                       ; preds = %sw.epilog.for.end194_crit_edge, %if.end117.for.end194_crit_edge
  %pframe.1.lcssa = phi ptr [ %pframe.0, %if.end117.for.end194_crit_edge ], [ %pframe.2, %sw.epilog.for.end194_crit_edge ]
  %assoc_AP_vendor = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 14
  %104 = ptrtoint ptr %assoc_AP_vendor to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %assoc_AP_vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %105)
  %cmp196 = icmp eq i8 %105, 1
  br i1 %cmp196, label %if.then198, label %for.end194.if.end201_crit_edge

for.end194.if.end201_crit_edge:                   ; preds = %for.end194
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end201

if.then198:                                       ; preds = %for.end194
  call void @__sanitizer_cov_trace_pc() #19
  %call200 = call ptr @rtw_set_ie(ptr noundef %pframe.1.lcssa, i32 noundef 221, i32 noundef 6, ptr noundef nonnull @REALTEK_96B_IE, ptr noundef %pktlen.i) #17
  br label %if.end201

if.end201:                                        ; preds = %if.then198, %for.end194.if.end201_crit_edge
  %106 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pktlen.i, align 4
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 9
  %108 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %last_txcmdsz, align 4
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %109 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i = icmp eq i32 %110, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end201.if.then.i_crit_edge

if.end201.if.then.i_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end201
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %111 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bDriverStopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool1.not.i = icmp eq i32 %112, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end201.if.then.i_crit_edge
  %113 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pxmitbuf10.i.i, align 4
  %call.i319 = call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %114) #17
  %call3.i = call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef %call1.i.i) #17
  br label %if.then205

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  %call4.i = call i32 @rtw_hal_mgnt_xmit(ptr noundef %padapter, ptr noundef %call1.i.i) #17
  br label %if.then205

if.then205:                                       ; preds = %if.end.i, %if.then.i
  %assoc_req = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 49
  %assoc_req_len = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 50
  %115 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pktlen.i, align 4
  call void @rtw_buf_update(ptr noundef %assoc_req, ptr noundef %assoc_req_len, ptr noundef %add.ptr, i32 noundef %116) #17
  br label %if.end210

if.else207:                                       ; preds = %if.then100, %if.then7.i.i, %entry.if.else207_crit_edge
  %assoc_req208 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 49
  %assoc_req_len209 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 50
  call void @rtw_buf_free(ptr noundef %assoc_req208, ptr noundef %assoc_req_len209) #17
  br label %if.end210

if.end210:                                        ; preds = %if.else207, %if.then205
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sta_bssrate_len) #17
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %sta_bssrate) #17
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %bssrate) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_rate_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_ap_in_tkip(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @issue_nulldata(ptr noundef %padapter, ptr noundef %da, i32 noundef %power_mode, i32 noundef %try_cnt, i32 noundef %wait_ms) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %da, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %call = tail call ptr @get_my_bssid(ptr noundef %network) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %da.addr.0 = phi ptr [ %da, %entry.if.end_crit_edge ], [ %call, %if.then ]
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call1 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %da.addr.0) #17
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power_mode)
  %tobool4.not = icmp eq i32 %power_mode, 0
  %mac_id7 = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 10
  %0 = ptrtoint ptr %mac_id7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_id7, align 8
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  %call6 = tail call i32 @rtw_hal_macid_sleep(ptr noundef %padapter, i32 noundef %1) #17
  br label %if.end28

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  %call8 = tail call i32 @rtw_hal_macid_wakeup(ptr noundef %padapter, i32 noundef %1) #17
  br label %if.end28

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3129, i32 noundef 9, ptr noundef null) #17
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.else, %if.then5
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_ms)
  %cmp = icmp sgt i32 %wait_ms, 0
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_ms)
  %cmp44 = icmp eq i32 %wait_ms, 0
  br label %do.body29

do.body29:                                        ; preds = %do.cond41.do.body29_crit_edge, %if.end28
  %i.0 = phi i32 [ 0, %if.end28 ], [ %inc, %do.cond41.do.body29_crit_edge ]
  %call30 = tail call fastcc i32 @_issue_nulldata(ptr noundef %padapter, ptr noundef %da.addr.0, i32 noundef %power_mode, i1 noundef zeroext %cmp)
  %inc = add nuw nsw i32 %i.0, 1
  %2 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool31.not = icmp eq i32 %3, 0
  br i1 %tobool31.not, label %lor.lhs.false, label %do.body29.do.end45_crit_edge

do.body29.do.end45_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end45

lor.lhs.false:                                    ; preds = %do.body29
  %4 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool32.not = icmp eq i32 %5, 0
  br i1 %tobool32.not, label %if.end34, label %lor.lhs.false.do.end45_crit_edge

lor.lhs.false.do.end45_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end45

if.end34:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %try_cnt)
  %cmp35 = icmp slt i32 %inc, %try_cnt
  %brmerge.demorgan = and i1 %cmp, %cmp35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp38 = icmp eq i32 %call30, 0
  %or.cond = select i1 %brmerge.demorgan, i1 %cmp38, i1 false
  br i1 %or.cond, label %if.then39, label %if.end34.do.cond41_crit_edge

if.end34.do.cond41_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond41

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @msleep(i32 noundef %wait_ms) #17
  br label %do.cond41

do.cond41:                                        ; preds = %if.then39, %if.end34.do.cond41_crit_edge
  %or.cond70 = or i1 %cmp44, %cmp38
  %or.cond71 = select i1 %cmp35, i1 %or.cond70, i1 false
  br i1 %or.cond71, label %do.cond41.do.body29_crit_edge, label %do.cond41.do.end45_crit_edge

do.cond41.do.end45_crit_edge:                     ; preds = %do.cond41
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end45

do.cond41.do.body29_crit_edge:                    ; preds = %do.cond41
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body29

do.end45:                                         ; preds = %do.cond41.do.end45_crit_edge, %lor.lhs.false.do.end45_crit_edge, %do.body29.do.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp46.not = icmp ne i32 %call30, 0
  %spec.store.select = zext i1 %cmp46.not to i32
  ret i32 %spec.store.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_macid_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_macid_wakeup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_issue_nulldata(ptr noundef %padapter, ptr nocapture noundef readonly %da, i32 noundef %power_mode, i1 noundef zeroext %wait_ack) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %padapter, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit

if.end:                                           ; preds = %entry
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %call1.i.i = tail call ptr @rtw_alloc_xmitframe_ext(ptr noundef %xmitpriv) #17
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.exit_crit_edge, label %if.end4.i.i

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit

if.end4.i.i:                                      ; preds = %if.end
  %call5.i.i = tail call ptr @rtw_alloc_xmitbuf_ext(ptr noundef %xmitpriv) #17
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end3

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %exit

if.end3:                                          ; preds = %if.end4.i.i
  %frame_tag.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 3
  %0 = ptrtoint ptr %frame_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %frame_tag.i.i, align 4
  %pxmitbuf10.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call5.i.i, ptr %pxmitbuf10.i.i, align 4
  %pbuf.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %pbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pbuf.i.i, align 4
  %buf_addr.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %buf_addr.i.i, align 4
  %priv_data.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.i.i, ptr %priv_data.i.i, align 4
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %hdrlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 24, ptr %hdrlen.i, align 2
  %nr_frags.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 10
  %7 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %nr_frags.i, align 4
  %priority.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 16
  %8 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 7, ptr %priority.i, align 2
  %mac_id.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 18
  %9 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %mac_id.i, align 4
  %qsel.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 36
  %10 = ptrtoint ptr %qsel.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 18, ptr %qsel.i, align 2
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %pktlen.i, align 4
  %tx_rate.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %12 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_rate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp.i = icmp eq i8 %13, 2
  %..i = select i1 %cmp.i, i8 1, i8 2
  %call.i = tail call zeroext i8 @rtw_get_mgntframe_raid(ptr noundef nonnull %padapter, i8 noundef zeroext %..i) #17
  %raid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 27
  %14 = ptrtoint ptr %raid.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call.i, ptr %raid.i, align 1
  %15 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tx_rate.i, align 1
  %rate.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 39
  %17 = ptrtoint ptr %rate.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %rate.i, align 1
  %encrypt.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 11
  %18 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %encrypt.i, align 1
  %bswenc.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %bswenc.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %bswenc.i, align 2
  %qos_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 25
  %20 = ptrtoint ptr %qos_en.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %qos_en.i, align 1
  %ht_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 26
  %21 = ptrtoint ptr %ht_en.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %ht_en.i, align 4
  %bwmode.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %bwmode.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %bwmode.i, align 2
  %ch_offset.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 29
  %23 = ptrtoint ptr %ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %ch_offset.i, align 1
  %sgi.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 30
  %24 = ptrtoint ptr %sgi.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %sgi.i, align 4
  %mgnt_seq.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 3
  %25 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mgnt_seq.i, align 4
  %seqnum.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %seqnum.i, align 2
  %retry_ctrl.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 41
  %mbssid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 42
  %28 = ptrtoint ptr %mbssid.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %mbssid.i, align 4
  %29 = ptrtoint ptr %retry_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %retry_ctrl.i, align 1
  %30 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf_addr.i.i, align 4
  %32 = call ptr @memset(ptr %31, i32 0, i32 104)
  %33 = load ptr, ptr %buf_addr.i.i, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 40
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %add.ptr, align 2
  %35 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %36, 3
  %37 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %and, label %if.end3.if.end16_crit_edge [
    i32 3, label %if.end3.if.end16.sink.split_crit_edge
    i32 2, label %if.then11
  ]

if.end3.if.end16.sink.split_crit_edge:            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.sink.split

if.end3.if.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.then11:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %if.then11, %if.end3.if.end16.sink.split_crit_edge
  %.sink = phi i16 [ 1, %if.then11 ], [ 2, %if.end3.if.end16.sink.split_crit_edge ]
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %.sink, ptr %add.ptr, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.end3.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power_mode)
  %tobool17.not = icmp eq i32 %power_mode, 0
  br i1 %tobool17.not, label %if.end16.if.end22_crit_edge, label %if.then18

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr, align 2
  %41 = or i16 %40, 16
  store i16 %41, ptr %add.ptr, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end16.if.end22_crit_edge
  %addr1 = getelementptr i8, ptr %33, i32 44
  %42 = call ptr @memcpy(ptr %addr1, ptr %da, i32 6)
  %addr2 = getelementptr i8, ptr %33, i32 50
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %43 = call ptr @memcpy(ptr %addr2, ptr %mac_addr.i, i32 6)
  %addr3 = getelementptr i8, ptr %33, i32 56
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %call26 = tail call ptr @get_my_bssid(ptr noundef %network) #17
  %44 = call ptr @memcpy(ptr %addr3, ptr %call26, i32 6)
  %45 = ptrtoint ptr %add.ptr to i32
  %add = add i32 %45, 22
  %46 = inttoptr i32 %add to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %46, align 2
  %49 = and i16 %48, 3840
  %50 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %mgnt_seq.i, align 4
  %shl = shl i16 %51, 4
  %52 = tail call i16 @llvm.bswap.i16(i16 %shl)
  %or3383 = or i16 %52, %49
  %53 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %or3383, ptr %46, align 2
  %54 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %mgnt_seq.i, align 4
  %inc = add i16 %55, 1
  store i16 %inc, ptr %mgnt_seq.i, align 4
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr, align 2
  %58 = and i16 %57, 1023
  %59 = or i16 %58, 18432
  store i16 %59, ptr %add.ptr, align 2
  %60 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 24, ptr %pktlen.i, align 4
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 9
  %61 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 24, ptr %last_txcmdsz, align 4
  br i1 %wait_ack, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  %call50 = tail call i32 @dump_mgntframe_and_wait_ack(ptr noundef nonnull %padapter, ptr noundef nonnull %call1.i.i)
  br label %exit

if.else51:                                        ; preds = %if.end22
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %62 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.else51.if.then.i_crit_edge

if.else51.if.then.i_crit_edge:                    ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.else51
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %64 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bDriverStopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool1.not.i = icmp eq i32 %65, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.else51.if.then.i_crit_edge
  %66 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pxmitbuf10.i.i, align 4
  %call.i84 = tail call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %67) #17
  %call3.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  %call4.i = tail call i32 @rtw_hal_mgnt_xmit(ptr noundef nonnull %padapter, ptr noundef nonnull %call1.i.i) #17
  br label %exit

exit:                                             ; preds = %if.end.i, %if.then.i, %if.then49, %if.then7.i.i, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %ret.0 = phi i32 [ %call50, %if.then49 ], [ 0, %entry.exit_crit_edge ], [ 1, %if.then.i ], [ 1, %if.end.i ], [ 0, %if.then7.i.i ], [ 0, %if.end.exit_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @issue_nulldata_in_interrupt(ptr noundef %padapter, ptr noundef readonly %da) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %da, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %call = tail call ptr @get_my_bssid(ptr noundef %network) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %da.addr.0 = phi ptr [ %da, %entry.if.end_crit_edge ], [ %call, %if.then ]
  %call1 = tail call fastcc i32 @_issue_nulldata(ptr noundef %padapter, ptr noundef %da.addr.0, i32 noundef 0, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @issue_qos_nulldata(ptr noundef %padapter, ptr noundef readonly %da, i16 noundef zeroext %tid, i32 noundef %try_cnt, i32 noundef %wait_ms) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %da, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %call = tail call ptr @get_my_bssid(ptr noundef %network) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %da.addr.0 = phi ptr [ %da, %entry.if.end_crit_edge ], [ %call, %if.then ]
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_ms)
  %cmp = icmp sgt i32 %wait_ms, 0
  %xmitpriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %mlmext_info.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %tx_rate.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %mgnt_seq.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 3
  %0 = shl i16 %tid, 8
  %1 = and i16 %0, 3840
  %mac_addr.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %network.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %bDriverStopped.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_ms)
  %cmp14 = icmp eq i32 %wait_ms, 0
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %do.cond.do.body_crit_edge ]
  %call1.i.i.i = tail call ptr @rtw_alloc_xmitframe_ext(ptr noundef %xmitpriv.i) #17
  %tobool2.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %do.body._issue_qos_nulldata.exit_crit_edge, label %if.end4.i.i.i

do.body._issue_qos_nulldata.exit_crit_edge:       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %_issue_qos_nulldata.exit

if.end4.i.i.i:                                    ; preds = %do.body
  %call5.i.i.i = tail call ptr @rtw_alloc_xmitbuf_ext(ptr noundef %xmitpriv.i) #17
  %tobool6.not.i.i.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool6.not.i.i.i, label %if.then7.i.i.i, label %if.end.i

if.then7.i.i.i:                                   ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i.i.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv.i, ptr noundef nonnull %call1.i.i.i) #17
  br label %_issue_qos_nulldata.exit

if.end.i:                                         ; preds = %if.end4.i.i.i
  %frame_tag.i.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %frame_tag.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %frame_tag.i.i.i, align 4
  %pxmitbuf10.i.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %pxmitbuf10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5.i.i.i, ptr %pxmitbuf10.i.i.i, align 4
  %pbuf.i.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %pbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pbuf.i.i.i, align 4
  %buf_addr.i.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %buf_addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %buf_addr.i.i.i, align 4
  %priv_data.i.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %priv_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1.i.i.i, ptr %priv_data.i.i.i, align 4
  %hdrlen.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 7
  %8 = ptrtoint ptr %hdrlen.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 24, ptr %hdrlen.i.i, align 2
  %nr_frags.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 10
  %9 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %nr_frags.i.i, align 4
  %priority.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 16
  %10 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 7, ptr %priority.i.i, align 2
  %mac_id.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 18
  %11 = ptrtoint ptr %mac_id.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %mac_id.i.i, align 4
  %qsel.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 36
  %12 = ptrtoint ptr %qsel.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 18, ptr %qsel.i.i, align 2
  %pktlen.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 8
  %13 = ptrtoint ptr %pktlen.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %pktlen.i.i, align 4
  %14 = ptrtoint ptr %tx_rate.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_rate.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp.i.i = icmp eq i8 %15, 2
  %..i.i = select i1 %cmp.i.i, i8 1, i8 2
  %call.i.i = tail call zeroext i8 @rtw_get_mgntframe_raid(ptr noundef %padapter, i8 noundef zeroext %..i.i) #17
  %raid.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 27
  %16 = ptrtoint ptr %raid.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call.i.i, ptr %raid.i.i, align 1
  %17 = ptrtoint ptr %tx_rate.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tx_rate.i.i, align 1
  %rate.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 39
  %19 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %rate.i.i, align 1
  %encrypt.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 11
  %20 = ptrtoint ptr %encrypt.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %encrypt.i.i, align 1
  %bswenc.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %bswenc.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %bswenc.i.i, align 2
  %qos_en.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 25
  %22 = ptrtoint ptr %qos_en.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %qos_en.i.i, align 1
  %ht_en.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 26
  %23 = ptrtoint ptr %ht_en.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %ht_en.i.i, align 4
  %bwmode.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 28
  %24 = ptrtoint ptr %bwmode.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %bwmode.i.i, align 2
  %ch_offset.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 29
  %25 = ptrtoint ptr %ch_offset.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %ch_offset.i.i, align 1
  %sgi.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 30
  %26 = ptrtoint ptr %sgi.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %sgi.i.i, align 4
  %27 = ptrtoint ptr %mgnt_seq.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %mgnt_seq.i.i, align 4
  %seqnum.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 5
  %29 = ptrtoint ptr %seqnum.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %seqnum.i.i, align 2
  %retry_ctrl.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 41
  %30 = ptrtoint ptr %retry_ctrl.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %retry_ctrl.i.i, align 1
  %mbssid.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 42
  %31 = ptrtoint ptr %mbssid.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %mbssid.i.i, align 4
  %32 = ptrtoint ptr %hdrlen.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %hdrlen.i.i, align 2
  %add.i = add i16 %33, 2
  store i16 %add.i, ptr %hdrlen.i.i, align 2
  store i8 1, ptr %qos_en.i.i, align 1
  %eosp.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 38
  %34 = ptrtoint ptr %eosp.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %eosp.i, align 4
  %ack_policy.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 17
  %35 = ptrtoint ptr %ack_policy.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %ack_policy.i, align 1
  %mdata.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 33
  %36 = ptrtoint ptr %mdata.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %mdata.i, align 1
  %37 = ptrtoint ptr %buf_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buf_addr.i.i.i, align 4
  %39 = call ptr @memset(ptr %38, i32 0, i32 104)
  %40 = load ptr, ptr %buf_addr.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 40
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %add.ptr.i, align 2
  %42 = ptrtoint ptr %mlmext_info.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mlmext_info.i, align 4
  %and.i = and i32 %43, 3
  %44 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %and.i, label %if.end.i.if.end16.i_crit_edge [
    i32 3, label %if.end.i.if.end16.sink.split.i_crit_edge
    i32 2, label %if.then11.i
  ]

if.end.i.if.end16.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.sink.split.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.sink.split.i

if.end16.sink.split.i:                            ; preds = %if.then11.i, %if.end.i.if.end16.sink.split.i_crit_edge
  %.sink.i = phi i16 [ 1, %if.then11.i ], [ 2, %if.end.i.if.end16.sink.split.i_crit_edge ]
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %.sink.i, ptr %add.ptr.i, align 2
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end16.sink.split.i, %if.end.i.if.end16.i_crit_edge
  %46 = ptrtoint ptr %hdrlen.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %hdrlen.i.i, align 2
  %conv18.i = zext i16 %47 to i32
  %add.ptr19.i = getelementptr i8, ptr %40, i32 38
  %add.ptr20.i = getelementptr i8, ptr %add.ptr19.i, i32 %conv18.i
  %48 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr20.i, align 2
  %or26115.i = or i16 %49, %1
  store i16 %or26115.i, ptr %add.ptr20.i, align 2
  %50 = ptrtoint ptr %eosp.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %eosp.i, align 4
  %52 = shl i8 %51, 4
  %53 = and i8 %52, 16
  %conv31.i = zext i8 %53 to i16
  %54 = shl nuw nsw i16 %conv31.i, 8
  %or34.i = or i16 %54, %or26115.i
  store i16 %or34.i, ptr %add.ptr20.i, align 2
  %55 = ptrtoint ptr %ack_policy.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ack_policy.i, align 1
  %57 = shl i8 %56, 5
  %58 = and i8 %57, 96
  %conv40.i = zext i8 %58 to i16
  %59 = shl nuw nsw i16 %conv40.i, 8
  %or43.i = or i16 %59, %or34.i
  store i16 %or43.i, ptr %add.ptr20.i, align 2
  %addr1.i = getelementptr i8, ptr %40, i32 44
  %60 = call ptr @memcpy(ptr %addr1.i, ptr %da.addr.0, i32 6)
  %addr2.i = getelementptr i8, ptr %40, i32 50
  %61 = call ptr @memcpy(ptr %addr2.i, ptr %mac_addr.i.i, i32 6)
  %addr3.i = getelementptr i8, ptr %40, i32 56
  %call48.i = tail call ptr @get_my_bssid(ptr noundef %network.i) #17
  %62 = call ptr @memcpy(ptr %addr3.i, ptr %call48.i, i32 6)
  %63 = ptrtoint ptr %add.ptr.i to i32
  %add49.i = add i32 %63, 22
  %64 = inttoptr i32 %add49.i to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %64, align 2
  %67 = and i16 %66, 3840
  %68 = ptrtoint ptr %mgnt_seq.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %mgnt_seq.i.i, align 4
  %shl53.i = shl i16 %69, 4
  %70 = tail call i16 @llvm.bswap.i16(i16 %shl53.i) #17
  %or57116.i = or i16 %70, %67
  %71 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %or57116.i, ptr %64, align 2
  %72 = ptrtoint ptr %mgnt_seq.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %mgnt_seq.i.i, align 4
  %inc.i = add i16 %73, 1
  store i16 %inc.i, ptr %mgnt_seq.i.i, align 4
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr.i, align 2
  %76 = and i16 %75, 1023
  %77 = or i16 %76, -14336
  store i16 %77, ptr %add.ptr.i, align 2
  %78 = ptrtoint ptr %pktlen.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 26, ptr %pktlen.i.i, align 4
  %last_txcmdsz.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i.i, i32 0, i32 1, i32 9
  %79 = ptrtoint ptr %last_txcmdsz.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 26, ptr %last_txcmdsz.i, align 4
  br i1 %cmp, label %if.then73.i, label %if.else75.i

if.then73.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  %call74.i = tail call i32 @dump_mgntframe_and_wait_ack(ptr noundef %padapter, ptr noundef nonnull %call1.i.i.i) #17
  br label %_issue_qos_nulldata.exit

if.else75.i:                                      ; preds = %if.end16.i
  %80 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i.i = icmp eq i32 %81, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.else75.i.if.then.i.i_crit_edge

if.else75.i.if.then.i.i_crit_edge:                ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.else75.i
  %82 = ptrtoint ptr %bDriverStopped.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bDriverStopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool1.not.i.i = icmp eq i32 %83, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.else75.i.if.then.i.i_crit_edge
  %84 = ptrtoint ptr %pxmitbuf10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pxmitbuf10.i.i.i, align 4
  %call.i117.i = tail call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv.i, ptr noundef %85) #17
  %call3.i.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv.i, ptr noundef nonnull %call1.i.i.i) #17
  br label %_issue_qos_nulldata.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call4.i.i = tail call i32 @rtw_hal_mgnt_xmit(ptr noundef %padapter, ptr noundef nonnull %call1.i.i.i) #17
  br label %_issue_qos_nulldata.exit

_issue_qos_nulldata.exit:                         ; preds = %if.end.i.i, %if.then.i.i, %if.then73.i, %if.then7.i.i.i, %do.body._issue_qos_nulldata.exit_crit_edge
  %ret.0.i = phi i32 [ %call74.i, %if.then73.i ], [ 1, %if.then.i.i ], [ 1, %if.end.i.i ], [ 0, %if.then7.i.i.i ], [ 0, %do.body._issue_qos_nulldata.exit_crit_edge ]
  %inc = add nuw nsw i32 %i.0, 1
  %86 = ptrtoint ptr %bDriverStopped.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bDriverStopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool2.not = icmp eq i32 %87, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %_issue_qos_nulldata.exit.do.end_crit_edge

_issue_qos_nulldata.exit.do.end_crit_edge:        ; preds = %_issue_qos_nulldata.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

lor.lhs.false:                                    ; preds = %_issue_qos_nulldata.exit
  %88 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool3.not = icmp eq i32 %89, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %try_cnt)
  %cmp6 = icmp slt i32 %inc, %try_cnt
  %brmerge.demorgan = and i1 %cmp, %cmp6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp9 = icmp eq i32 %ret.0.i, 0
  %or.cond = select i1 %brmerge.demorgan, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.then10, label %if.end5.do.cond_crit_edge

if.end5.do.cond_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @msleep(i32 noundef %wait_ms) #17
  br label %do.cond

do.cond:                                          ; preds = %if.then10, %if.end5.do.cond_crit_edge
  %or.cond31 = or i1 %cmp14, %cmp9
  %or.cond32 = select i1 %cmp6, i1 %or.cond31, i1 false
  br i1 %or.cond32, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %_issue_qos_nulldata.exit.do.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp15.not = icmp ne i32 %ret.0.i, 0
  %spec.store.select = zext i1 %cmp15.not to i32
  ret i32 %spec.store.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_issue_deauth(ptr noundef %padapter, ptr nocapture noundef readonly %da, i16 noundef zeroext %reason, i1 noundef zeroext %wait_ack) unnamed_addr #2 align 64 {
entry:
  %le_tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %le_tmp) #17
  %call1.i.i = tail call ptr @rtw_alloc_xmitframe_ext(ptr noundef %xmitpriv) #17
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %entry.exit_crit_edge, label %if.end4.i.i

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit

if.end4.i.i:                                      ; preds = %entry
  %call5.i.i = tail call ptr @rtw_alloc_xmitbuf_ext(ptr noundef %xmitpriv) #17
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %exit

if.end:                                           ; preds = %if.end4.i.i
  %frame_tag.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 3
  %0 = ptrtoint ptr %frame_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %frame_tag.i.i, align 4
  %pxmitbuf10.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call5.i.i, ptr %pxmitbuf10.i.i, align 4
  %pbuf.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %pbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pbuf.i.i, align 4
  %buf_addr.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %buf_addr.i.i, align 4
  %priv_data.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.i.i, ptr %priv_data.i.i, align 4
  %hdrlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 24, ptr %hdrlen.i, align 2
  %nr_frags.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 10
  %7 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %nr_frags.i, align 4
  %priority.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 16
  %8 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 7, ptr %priority.i, align 2
  %mac_id.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 18
  %9 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %mac_id.i, align 4
  %qsel.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 36
  %10 = ptrtoint ptr %qsel.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 18, ptr %qsel.i, align 2
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %pktlen.i, align 4
  %tx_rate.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %12 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_rate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp.i = icmp eq i8 %13, 2
  %..i = select i1 %cmp.i, i8 1, i8 2
  %call.i = tail call zeroext i8 @rtw_get_mgntframe_raid(ptr noundef %padapter, i8 noundef zeroext %..i) #17
  %raid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 27
  %14 = ptrtoint ptr %raid.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call.i, ptr %raid.i, align 1
  %15 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tx_rate.i, align 1
  %rate.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 39
  %17 = ptrtoint ptr %rate.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %rate.i, align 1
  %encrypt.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 11
  %18 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %encrypt.i, align 1
  %bswenc.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %bswenc.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %bswenc.i, align 2
  %qos_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 25
  %20 = ptrtoint ptr %qos_en.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %qos_en.i, align 1
  %ht_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 26
  %21 = ptrtoint ptr %ht_en.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %ht_en.i, align 4
  %bwmode.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %bwmode.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %bwmode.i, align 2
  %ch_offset.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 29
  %23 = ptrtoint ptr %ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %ch_offset.i, align 1
  %sgi.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 30
  %24 = ptrtoint ptr %sgi.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %sgi.i, align 4
  %mgnt_seq.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 3
  %25 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mgnt_seq.i, align 4
  %seqnum.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %seqnum.i, align 2
  %retry_ctrl.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 41
  %mbssid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 42
  %28 = ptrtoint ptr %mbssid.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %mbssid.i, align 4
  %29 = ptrtoint ptr %retry_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %retry_ctrl.i, align 1
  %30 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf_addr.i.i, align 4
  %32 = call ptr @memset(ptr %31, i32 0, i32 104)
  %33 = load ptr, ptr %buf_addr.i.i, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 40
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %add.ptr, align 2
  %addr1 = getelementptr i8, ptr %33, i32 44
  %35 = call ptr @memcpy(ptr %addr1, ptr %da, i32 6)
  %addr2 = getelementptr i8, ptr %33, i32 50
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %36 = call ptr @memcpy(ptr %addr2, ptr %mac_addr.i, i32 6)
  %addr3 = getelementptr i8, ptr %33, i32 56
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %call5 = tail call ptr @get_my_bssid(ptr noundef %network) #17
  %37 = call ptr @memcpy(ptr %addr3, ptr %call5, i32 6)
  %38 = ptrtoint ptr %add.ptr to i32
  %add = add i32 %38, 22
  %39 = inttoptr i32 %add to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %39, align 2
  %42 = and i16 %41, 3840
  %43 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %mgnt_seq.i, align 4
  %shl = shl i16 %44, 4
  %45 = tail call i16 @llvm.bswap.i16(i16 %shl)
  %or56 = or i16 %45, %42
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %or56, ptr %39, align 2
  %47 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mgnt_seq.i, align 4
  %inc = add i16 %48, 1
  store i16 %inc, ptr %mgnt_seq.i, align 4
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr, align 2
  %51 = and i16 %50, 1023
  %52 = or i16 %51, -16384
  store i16 %52, ptr %add.ptr, align 2
  %add.ptr22 = getelementptr i8, ptr %33, i32 64
  %53 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 24, ptr %pktlen.i, align 4
  %54 = tail call i16 @llvm.bswap.i16(i16 %reason)
  %55 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %le_tmp, align 2
  %call24 = call ptr @rtw_set_fixed_ie(ptr noundef %add.ptr22, i32 noundef 2, ptr noundef nonnull %le_tmp, ptr noundef %pktlen.i) #17
  %56 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pktlen.i, align 4
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 9
  %58 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %last_txcmdsz, align 4
  br i1 %wait_ack, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call28 = call i32 @dump_mgntframe_and_wait_ack(ptr noundef %padapter, ptr noundef nonnull %call1.i.i)
  br label %exit

if.else:                                          ; preds = %if.end
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %59 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.else.if.then.i_crit_edge

if.else.if.then.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.else
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %61 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bDriverStopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool1.not.i = icmp eq i32 %62, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.else.if.then.i_crit_edge
  %63 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pxmitbuf10.i.i, align 4
  %call.i57 = call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %64) #17
  %call3.i = call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  %call4.i = call i32 @rtw_hal_mgnt_xmit(ptr noundef %padapter, ptr noundef nonnull %call1.i.i) #17
  br label %exit

exit:                                             ; preds = %if.end.i, %if.then.i, %if.then27, %if.then7.i.i, %entry.exit_crit_edge
  %ret.0 = phi i32 [ %call28, %if.then27 ], [ 1, %if.then.i ], [ 1, %if.end.i ], [ 0, %if.then7.i.i ], [ 0, %entry.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %le_tmp) #17
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @issue_deauth_ex(ptr noundef %padapter, ptr nocapture noundef readonly %da, i16 noundef zeroext %reason, i32 noundef %try_cnt, i32 noundef %wait_ms) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_ms)
  %cmp = icmp sgt i32 %wait_ms, 0
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_ms)
  %cmp24 = icmp eq i32 %wait_ms, 0
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond.do.body_crit_edge ]
  %call = tail call fastcc i32 @_issue_deauth(ptr noundef %padapter, ptr noundef %da, i16 noundef zeroext %reason, i1 noundef zeroext %cmp)
  %inc = add nuw nsw i32 %i.0, 1
  %0 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

lor.lhs.false:                                    ; preds = %do.body
  %2 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %try_cnt)
  %cmp2 = icmp slt i32 %inc, %try_cnt
  %brmerge.demorgan = and i1 %cmp, %cmp2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  %or.cond = select i1 %brmerge.demorgan, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.end.while.body_crit_edge, label %if.end.do.cond_crit_edge

if.end.do.cond_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %__ms.049 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %wait_ms, %if.end.while.body_crit_edge ]
  %dec = add i32 %__ms.049, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #17
  %tobool19.not = icmp eq i32 %dec, 0
  br i1 %tobool19.not, label %while.body.do.cond_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.body.do.cond_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond

do.cond:                                          ; preds = %while.body.do.cond_crit_edge, %if.end.do.cond_crit_edge
  %or.cond46 = or i1 %cmp24, %cmp5
  %or.cond47 = select i1 %cmp2, i1 %or.cond46, i1 false
  br i1 %or.cond47, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %do.body.do.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp25.not = icmp ne i32 %call, 0
  %spec.store.select = zext i1 %cmp25.not to i32
  ret i32 %spec.store.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hal_btcoex_IsBTCoexCtrlAMPDUSize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_hal_get_def_var(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @send_delba(ptr noundef %padapter, i8 noundef zeroext %initiator, ptr noundef %addr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %0 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp.not = icmp ne i32 %and, 3
  %and2 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %or.cond = and i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %entry
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %addr) #17
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %2 = zext i8 %initiator to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %initiator, label %if.end7.cleanup_crit_edge [
    i8 0, label %if.end7.for.body_crit_edge
    i8 1, label %for.cond32.preheader
  ]

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond32.preheader:                             ; preds = %if.end7
  %agg_enable_bitmap = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 38, i32 10
  %candidate_tid_bitmap = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 38, i32 11
  br label %for.body36

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.for.body_crit_edge
  %indvars.iv109 = phi i32 [ %indvars.iv.next110, %for.inc.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %enable = getelementptr %struct.sta_info, ptr %call, i32 0, i32 36, i32 %indvars.iv109, i32 1
  %3 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool14.not = icmp eq i8 %4, 0
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %if.then15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %indvars.iv109.tr = trunc i32 %indvars.iv109 to i16
  %5 = shl i16 %indvars.iv109.tr, 1
  tail call void @issue_action_BA(ptr noundef %padapter, ptr noundef %addr, i8 noundef zeroext 2, i16 noundef zeroext %5)
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %enable, align 4
  %indicate_seq = getelementptr %struct.sta_info, ptr %call, i32 0, i32 36, i32 %indvars.iv109, i32 2
  %7 = ptrtoint ptr %indicate_seq to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %indicate_seq, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %for.body.for.inc_crit_edge
  %indvars.iv.next110 = add nuw nsw i32 %indvars.iv109, 1
  %exitcond113.not = icmp eq i32 %indvars.iv.next110, 16
  br i1 %exitcond113.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body36:                                       ; preds = %for.inc64.for.body36_crit_edge, %for.cond32.preheader
  %indvars.iv = phi i32 [ 0, %for.cond32.preheader ], [ %indvars.iv.next, %for.inc64.for.body36_crit_edge ]
  %8 = ptrtoint ptr %agg_enable_bitmap to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %agg_enable_bitmap, align 8
  %conv37 = zext i8 %9 to i32
  %shl39 = shl nuw nsw i32 1, %indvars.iv
  %and40 = and i32 %shl39, %conv37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %for.body36.for.inc64_crit_edge, label %if.then42

for.body36.for.inc64_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc64

if.then42:                                        ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #19
  %indvars.iv.tr = trunc i32 %indvars.iv to i16
  %10 = shl i16 %indvars.iv.tr, 1
  %11 = or i16 %10, 1
  tail call void @issue_action_BA(ptr noundef %padapter, ptr noundef %addr, i8 noundef zeroext 2, i16 noundef zeroext %11)
  %12 = ptrtoint ptr %agg_enable_bitmap to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %agg_enable_bitmap, align 8
  %14 = trunc i32 %shl39 to i8
  %15 = xor i8 %14, -1
  %conv55 = and i8 %13, %15
  store i8 %conv55, ptr %agg_enable_bitmap, align 8
  %16 = ptrtoint ptr %candidate_tid_bitmap to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %candidate_tid_bitmap, align 1
  %conv62 = and i8 %17, %15
  store i8 %conv62, ptr %candidate_tid_bitmap, align 1
  br label %for.inc64

for.inc64:                                        ; preds = %if.then42, %for.body36.for.inc64_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.inc64.cleanup_crit_edge, label %for.inc64.for.body36_crit_edge

for.inc64.for.body36_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body36

for.inc64.cleanup_crit_edge:                      ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc64.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @send_beacon(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  %bxmitok = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bxmitok) #17
  %0 = ptrtoint ptr %bxmitok to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bxmitok, align 1
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 22, ptr noundef null) #17
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 74, ptr noundef null) #17
  %bSurpriseRemoved15 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %bDriverStopped18 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  br label %do.body

do.body:                                          ; preds = %land.rhs17.do.body_crit_edge, %entry
  %issue.0 = phi i32 [ 0, %entry ], [ %inc, %land.rhs17.do.body_crit_edge ]
  %poll.0 = phi i32 [ 0, %entry ], [ %inc2, %land.rhs17.do.body_crit_edge ]
  call void @issue_beacon(ptr noundef %padapter, i32 noundef 100)
  %inc = add nuw nsw i32 %issue.0, 1
  br label %do.body1

do.body1:                                         ; preds = %land.rhs.do.body1_crit_edge, %do.body
  %poll.1 = phi i32 [ %poll.0, %do.body ], [ %inc2, %land.rhs.do.body1_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 3798, i32 noundef 0) #17
  %call.i = call i32 @__cond_resched() #17
  call void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext 22, ptr noundef nonnull %bxmitok) #17
  %inc2 = add i32 %poll.1, 1
  %rem = srem i32 %inc2, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %do.body1.do.cond7_crit_edge, label %land.lhs.true

do.body1.do.cond7_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond7

land.lhs.true:                                    ; preds = %do.body1
  %1 = ptrtoint ptr %bxmitok to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bxmitok, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp3 = icmp eq i8 %2, 0
  br i1 %cmp3, label %land.lhs.true5, label %land.lhs.true.do.cond7_crit_edge

land.lhs.true.do.cond7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond7

land.lhs.true5:                                   ; preds = %land.lhs.true
  %3 = ptrtoint ptr %bSurpriseRemoved15 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bSurpriseRemoved15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.rhs, label %land.lhs.true5.do.cond7_crit_edge

land.lhs.true5.do.cond7_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond7

land.rhs:                                         ; preds = %land.lhs.true5
  %5 = ptrtoint ptr %bDriverStopped18 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bDriverStopped18, align 4
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %land.rhs.do.body1_crit_edge, label %land.rhs.do.cond7_crit_edge

land.rhs.do.cond7_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond7

land.rhs.do.body1_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body1

do.cond7:                                         ; preds = %land.rhs.do.cond7_crit_edge, %land.lhs.true5.do.cond7_crit_edge, %land.lhs.true.do.cond7_crit_edge, %do.body1.do.cond7_crit_edge
  %7 = ptrtoint ptr %bxmitok to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bxmitok, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp9 = icmp eq i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %issue.0)
  %cmp12 = icmp ult i32 %issue.0, 99
  %or.cond = select i1 %cmp9, i1 %cmp12, i1 false
  %9 = ptrtoint ptr %bSurpriseRemoved15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bSurpriseRemoved15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool16.not = icmp eq i32 %10, 0
  br i1 %or.cond, label %land.lhs.true14, label %do.end22

land.lhs.true14:                                  ; preds = %do.cond7
  br i1 %tobool16.not, label %land.rhs17, label %land.lhs.true14.cleanup_crit_edge

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.rhs17:                                       ; preds = %land.lhs.true14
  %11 = ptrtoint ptr %bDriverStopped18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bDriverStopped18, align 4
  %tobool19.not = icmp eq i32 %12, 0
  br i1 %tobool19.not, label %land.rhs17.do.body_crit_edge, label %land.rhs17.lor.lhs.false_crit_edge

land.rhs17.lor.lhs.false_crit_edge:               ; preds = %land.rhs17
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

land.rhs17.do.body_crit_edge:                     ; preds = %land.rhs17
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.end22:                                         ; preds = %do.cond7
  br i1 %tobool16.not, label %do.end22.lor.lhs.false_crit_edge, label %do.end22.cleanup_crit_edge

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end22.lor.lhs.false_crit_edge:                 ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end22.lor.lhs.false_crit_edge, %land.rhs17.lor.lhs.false_crit_edge
  %cmp9.lcssa48 = phi i1 [ %cmp9, %do.end22.lor.lhs.false_crit_edge ], [ true, %land.rhs17.lor.lhs.false_crit_edge ]
  %13 = ptrtoint ptr %bDriverStopped18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bDriverStopped18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool26.not = icmp eq i32 %14, 0
  %not.cmp9 = xor i1 %cmp9.lcssa48, true
  %narrow = select i1 %tobool26.not, i1 %not.cmp9, i1 false
  %spec.select = zext i1 %narrow to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %do.end22.cleanup_crit_edge, %land.lhs.true14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end22.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ], [ 0, %land.lhs.true14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bxmitok) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_get_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @site_survey(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  %val8 = alloca i8, align 1
  %initialgain = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val8) #17
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %initialgain) #17
  %sitesurvey_res = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17
  %channel_idx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 2
  %0 = ptrtoint ptr %channel_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_idx, align 8
  %ch_num = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 5
  %2 = ptrtoint ptr %ch_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ch_num, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp slt i32 %1, %conv
  br i1 %cmp, label %if.end, label %entry.if.else55_crit_edge

entry.if.else55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else55

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 7, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 4
  %conv7 = trunc i16 %5 to i8
  %flags = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 7, i32 %1, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv7)
  %cmp9.not = icmp eq i8 %conv7, 0
  br i1 %cmp9.not, label %if.end.if.else55_crit_edge, label %if.then11

if.end.if.else55_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else55

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14 = icmp eq i32 %1, 0
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @set_channel_bwmode(ptr noundef %padapter, i8 noundef zeroext %conv7, i8 noundef zeroext 0, i16 noundef zeroext 0) #17
  br label %if.end17

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @SelectChannel(ptr noundef %padapter, i8 noundef zeroext %conv7) #17
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp18 = icmp eq i32 %8, 0
  br i1 %cmp18, label %for.cond.preheader, label %if.end17.if.end53_crit_edge

if.end17.if.end53_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53

for.cond.preheader:                               ; preds = %if.end17
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 48
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0140 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx24 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 %i.0140
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool25.not = icmp eq i32 %10, 0
  br i1 %tobool25.not, label %for.body.for.inc_crit_edge, label %if.then26

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool27.not = icmp ne i8 %12, 0
  %call.i117 = tail call fastcc i32 @_issue_probereq(ptr noundef %padapter, ptr noundef %arrayidx24, ptr noundef null, i8 noundef zeroext 0, i1 noundef zeroext %tobool27.not, i1 noundef zeroext false) #17
  %call.i118 = tail call fastcc i32 @_issue_probereq(ptr noundef %padapter, ptr noundef %arrayidx24, ptr noundef null, i8 noundef zeroext 0, i1 noundef zeroext true, i1 noundef zeroext false) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0140, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc
  %scan_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 3
  %13 = ptrtoint ptr %scan_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scan_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp42 = icmp eq i32 %14, 1
  br i1 %cmp42, label %if.then44, label %for.end.if.end53_crit_edge

for.end.if.end53_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53

if.then44:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool47.not = icmp ne i8 %16, 0
  %call.i123 = tail call fastcc i32 @_issue_probereq(ptr noundef %padapter, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, i1 noundef zeroext %tobool47.not, i1 noundef zeroext false) #17
  %call.i135 = tail call fastcc i32 @_issue_probereq(ptr noundef %padapter, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, i1 noundef zeroext true, i1 noundef zeroext false) #17
  br label %if.end53

if.end53:                                         ; preds = %if.then44, %for.end.if.end53_crit_edge, %if.end17.if.end53_crit_edge
  %chan_scan_time = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 22
  %17 = ptrtoint ptr %chan_scan_time to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %chan_scan_time, align 4
  %survey_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %20 = udiv i16 %18, 10
  %div.i = zext i16 %20 to i32
  %add.i = add i32 %19, %div.i
  %call.i136 = tail call i32 @mod_timer(ptr noundef %survey_timer, i32 noundef %add.i) #17
  br label %if.end69

if.else55:                                        ; preds = %if.end.if.else55_crit_edge, %entry.if.else55_crit_edge
  %21 = ptrtoint ptr %sitesurvey_res to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %sitesurvey_res, align 8
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %22 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cur_channel, align 8
  %cur_ch_offset = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 9
  %24 = ptrtoint ptr %cur_ch_offset to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cur_ch_offset, align 2
  %cur_bwmode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %26 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cur_bwmode, align 1
  %conv57 = zext i8 %27 to i16
  tail call void @set_channel_bwmode(ptr noundef %padapter, i8 noundef zeroext %23, i8 noundef zeroext %25, i16 noundef zeroext %conv57) #17
  %28 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mlmext_info, align 4
  %30 = trunc i32 %29 to i8
  %conv60 = and i8 %30, 3
  tail call void @Set_MSR(ptr noundef %padapter, i8 noundef zeroext %conv60) #17
  %31 = ptrtoint ptr %initialgain to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 255, ptr %initialgain, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 51, ptr noundef nonnull %initialgain) #17
  call void @Restore_DM_Func_Flag(ptr noundef %padapter) #17
  %call61 = call i32 @is_client_associated_to_ap(ptr noundef %padapter) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.else55.if.end65_crit_edge, label %if.then63

if.else55.if.end65_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65

if.then63:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #19
  %call64 = call i32 @issue_nulldata(ptr noundef %padapter, ptr noundef null, i32 noundef 0, i32 noundef 3, i32 noundef 500)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.else55.if.end65_crit_edge
  %32 = ptrtoint ptr %val8 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %val8, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 12, ptr noundef nonnull %val8) #17
  call void @report_surveydone_event(ptr noundef %padapter)
  %chan_scan_time66 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 22
  %33 = ptrtoint ptr %chan_scan_time66 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 100, ptr %chan_scan_time66, align 4
  %34 = ptrtoint ptr %sitesurvey_res to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %sitesurvey_res, align 8
  call fastcc void @issue_action_BSSCoexistPacket(ptr noundef %padapter)
  call fastcc void @issue_action_BSSCoexistPacket(ptr noundef %padapter)
  call fastcc void @issue_action_BSSCoexistPacket(ptr noundef %padapter)
  br label %if.end69

if.end69:                                         ; preds = %if.end65, %if.end53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %initialgain) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val8) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @SelectChannel(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @Set_MSR(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @Restore_DM_Func_Flag(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_client_associated_to_ap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @report_surveydone_event(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 12) #17
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call) #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 56, ptr %cmdcode, align 4
  %cmdsz5 = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %cmdsz5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 12, ptr %cmdsz5, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %parmbuf, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rspsz, align 4
  %7 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %call1, align 4
  %bf.clear = and i32 %bf.load, -16777216
  %bf.set8 = or i32 %bf.clear, 589828
  store i32 %bf.set8, ptr %call1, align 4
  %event_seq = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event_seq, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %event_seq, i32 1, i32 3, i32 1) #17
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %event_seq, ptr %event_seq, i32 1, ptr elementtype(i32) %event_seq) #17, !srcloc !155
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !156
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load10 = load i32, ptr %call1, align 4
  %bf.shl = shl i32 %asmresult.i.i.i.i, 24
  %bf.clear11 = and i32 %bf.load10, 16777215
  %bf.set12 = or i32 %bf.clear11, %bf.shl
  store i32 %bf.set12, ptr %call1, align 4
  %add.ptr = getelementptr i8, ptr %call1, i32 8
  %bss_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 1
  %10 = ptrtoint ptr %bss_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bss_cnt, align 4
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %add.ptr, align 4
  %call14 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @issue_action_BSSCoexistPacket(ptr noundef %padapter) unnamed_addr #2 align 64 {
entry:
  %category = alloca i8, align 1
  %action = alloca i8, align 1
  %InfoContent = alloca [16 x i8], align 1
  %ICS = alloca [8 x [15 x i8]], align 1
  %iedata = alloca i8, align 1
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %category) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %action) #17
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %scanned_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %InfoContent) #17
  %0 = call ptr @memset(ptr %InfoContent, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %ICS) #17
  %1 = call ptr @memset(ptr %ICS, i32 255, i32 120)
  %num_FortyMHzIntolerant = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 32
  %2 = ptrtoint ptr %num_FortyMHzIntolerant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_FortyMHzIntolerant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup130_crit_edge, label %lor.lhs.false

entry.cleanup130_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup130

lor.lhs.false:                                    ; preds = %entry
  %num_sta_no_ht = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 31
  %4 = ptrtoint ptr %num_sta_no_ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_sta_no_ht, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup130_crit_edge, label %if.end

lor.lhs.false.cleanup130_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup130

if.end:                                           ; preds = %lor.lhs.false
  %bwmode_updated = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 32
  %6 = ptrtoint ptr %bwmode_updated to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bwmode_updated, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp2 = icmp eq i8 %7, 1
  br i1 %cmp2, label %if.end.cleanup130_crit_edge, label %if.end5

if.end.cleanup130_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup130

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %category to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %category, align 1
  %9 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %action, align 1
  %call1.i.i = tail call ptr @rtw_alloc_xmitframe_ext(ptr noundef %xmitpriv) #17
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.end5.cleanup130_crit_edge, label %if.end4.i.i

if.end5.cleanup130_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup130

if.end4.i.i:                                      ; preds = %if.end5
  %call5.i.i = tail call ptr @rtw_alloc_xmitbuf_ext(ptr noundef %xmitpriv) #17
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end7

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef nonnull %call1.i.i) #17
  br label %cleanup130

if.end7:                                          ; preds = %if.end4.i.i
  %frame_tag.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %frame_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %frame_tag.i.i, align 4
  %pxmitbuf10.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %pxmitbuf10.i.i, align 4
  %pbuf.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %pbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pbuf.i.i, align 4
  %buf_addr.i.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %buf_addr.i.i, align 4
  %priv_data.i.i = getelementptr inbounds %struct.xmit_buf, ptr %call5.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1.i.i, ptr %priv_data.i.i, align 4
  %hdrlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 7
  %16 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 24, ptr %hdrlen.i, align 2
  %nr_frags.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 10
  %17 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %nr_frags.i, align 4
  %priority.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 16
  %18 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 7, ptr %priority.i, align 2
  %mac_id.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 18
  %19 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %mac_id.i, align 4
  %qsel.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 36
  %20 = ptrtoint ptr %qsel.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 18, ptr %qsel.i, align 2
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %pktlen.i, align 4
  %tx_rate.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 25
  %22 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tx_rate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp.i = icmp eq i8 %23, 2
  %..i = select i1 %cmp.i, i8 1, i8 2
  %call.i = tail call zeroext i8 @rtw_get_mgntframe_raid(ptr noundef %padapter, i8 noundef zeroext %..i) #17
  %raid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 27
  %24 = ptrtoint ptr %raid.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call.i, ptr %raid.i, align 1
  %25 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tx_rate.i, align 1
  %rate.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 39
  %27 = ptrtoint ptr %rate.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %rate.i, align 1
  %encrypt.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 11
  %28 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %encrypt.i, align 1
  %bswenc.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %bswenc.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %bswenc.i, align 2
  %qos_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 25
  %30 = ptrtoint ptr %qos_en.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %qos_en.i, align 1
  %ht_en.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 26
  %31 = ptrtoint ptr %ht_en.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %ht_en.i, align 4
  %bwmode.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 28
  %32 = ptrtoint ptr %bwmode.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %bwmode.i, align 2
  %ch_offset.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 29
  %33 = ptrtoint ptr %ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %ch_offset.i, align 1
  %sgi.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 30
  %34 = ptrtoint ptr %sgi.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %sgi.i, align 4
  %mgnt_seq.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 3
  %35 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %mgnt_seq.i, align 4
  %seqnum.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 5
  %37 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %seqnum.i, align 2
  %retry_ctrl.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 41
  %38 = ptrtoint ptr %retry_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %retry_ctrl.i, align 1
  %mbssid.i = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 42
  %39 = ptrtoint ptr %mbssid.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %mbssid.i, align 4
  %40 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf_addr.i.i, align 4
  %42 = call ptr @memset(ptr %41, i32 0, i32 104)
  %43 = load ptr, ptr %buf_addr.i.i, align 4
  %add.ptr = getelementptr i8, ptr %43, i32 40
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %add.ptr, align 2
  %addr1 = getelementptr i8, ptr %43, i32 44
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %call9 = tail call ptr @get_my_bssid(ptr noundef %network) #17
  %45 = call ptr @memcpy(ptr %addr1, ptr %call9, i32 6)
  %addr2 = getelementptr i8, ptr %43, i32 50
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %46 = call ptr @memcpy(ptr %addr2, ptr %mac_addr.i, i32 6)
  %addr3 = getelementptr i8, ptr %43, i32 56
  %call14 = tail call ptr @get_my_bssid(ptr noundef %network) #17
  %47 = call ptr @memcpy(ptr %addr3, ptr %call14, i32 6)
  %48 = ptrtoint ptr %add.ptr to i32
  %add = add i32 %48, 22
  %49 = inttoptr i32 %add to ptr
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %49, align 2
  %52 = and i16 %51, 3840
  %53 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %mgnt_seq.i, align 4
  %shl = shl i16 %54, 4
  %55 = tail call i16 @llvm.bswap.i16(i16 %shl)
  %or205 = or i16 %55, %52
  %56 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %or205, ptr %49, align 2
  %57 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %mgnt_seq.i, align 4
  %inc = add i16 %58, 1
  store i16 %inc, ptr %mgnt_seq.i, align 4
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr, align 2
  %61 = and i16 %60, 1023
  %62 = or i16 %61, -12288
  store i16 %62, ptr %add.ptr, align 2
  %add.ptr32 = getelementptr i8, ptr %43, i32 64
  %63 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 24, ptr %pktlen.i, align 4
  %call34 = call ptr @rtw_set_fixed_ie(ptr noundef %add.ptr32, i32 noundef 1, ptr noundef nonnull %category, ptr noundef %pktlen.i) #17
  %call36 = call ptr @rtw_set_fixed_ie(ptr noundef %call34, i32 noundef 1, ptr noundef nonnull %action, ptr noundef %pktlen.i) #17
  %64 = ptrtoint ptr %num_FortyMHzIntolerant to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_FortyMHzIntolerant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp38 = icmp sgt i32 %65, 0
  br i1 %cmp38, label %if.then40, label %if.end7.if.end46_crit_edge

if.end7.if.end46_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.then40:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %iedata) #17
  %66 = ptrtoint ptr %iedata to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 4, ptr %iedata, align 1
  %call45 = call ptr @rtw_set_ie(ptr noundef %call36, i32 noundef 72, i32 noundef 1, ptr noundef nonnull %iedata, ptr noundef %pktlen.i) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %iedata) #17
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %if.end7.if.end46_crit_edge
  %pframe.0 = phi ptr [ %call45, %if.then40 ], [ %call36, %if.end7.if.end46_crit_edge ]
  %67 = call ptr @memset(ptr %ICS, i32 0, i32 120)
  %68 = ptrtoint ptr %num_sta_no_ht to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_sta_no_ht, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp49 = icmp sgt i32 %69, 0
  br i1 %cmp49, label %if.then51, label %if.end46.if.end128_crit_edge

if.end46.if.end128_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end128

if.then51:                                        ; preds = %if.end46
  %lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock) #17
  %70 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %scanned_queue, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #17
  %72 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %len, align 4, !annotation !152
  %cmp55213 = icmp eq ptr %scanned_queue, %71
  br i1 %cmp55213, label %if.then51.while.end_crit_edge, label %if.then51.if.end58_crit_edge

if.then51.if.end58_crit_edge:                     ; preds = %if.then51
  br label %if.end58

if.then51.while.end_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.end58:                                         ; preds = %cleanup.if.end58_crit_edge, %if.then51.if.end58_crit_edge
  %plist.0214 = phi ptr [ %74, %cleanup.if.end58_crit_edge ], [ %71, %if.then51.if.end58_crit_edge ]
  %73 = ptrtoint ptr %plist.0214 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %plist.0214, align 4
  %add.ptr63 = getelementptr %struct.wlan_network, ptr %plist.0214, i32 0, i32 6, i32 12, i32 12
  %ie_length = getelementptr inbounds %struct.wlan_network, ptr %plist.0214, i32 0, i32 6, i32 11
  %75 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %ie_length, align 1
  %sub = add i32 %76, -12
  %call64 = call ptr @rtw_get_ie(ptr noundef %add.ptr63, i32 noundef 45, ptr noundef nonnull %len, i32 noundef %sub) #17
  %tobool65.not = icmp eq ptr %call64, null
  br i1 %tobool65.not, label %if.end58.if.then69_crit_edge, label %lor.lhs.false66

if.end58.if.then69_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then69

lor.lhs.false66:                                  ; preds = %if.end58
  %77 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp67 = icmp eq i32 %78, 0
  br i1 %cmp67, label %lor.lhs.false66.if.then69_crit_edge, label %lor.lhs.false66.cleanup_crit_edge

lor.lhs.false66.cleanup_crit_edge:                ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false66.if.then69_crit_edge:              ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then69

if.then69:                                        ; preds = %lor.lhs.false66.if.then69_crit_edge, %if.end58.if.then69_crit_edge
  %ds_config = getelementptr inbounds %struct.wlan_network, ptr %plist.0214, i32 0, i32 6, i32 7, i32 3
  %79 = ptrtoint ptr %ds_config to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %ds_config, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp70 = icmp eq i32 %80, 0
  br i1 %cmp70, label %if.then69.cleanup_crit_edge, label %if.end73

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end73:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx76 = getelementptr [15 x i8], ptr %ICS, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %arrayidx76, align 1
  %82 = ptrtoint ptr %ICS to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ICS, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp80 = icmp eq i8 %83, 0
  %spec.store.select = select i1 %cmp80, i8 1, i8 %83
  %84 = ptrtoint ptr %ICS to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %spec.store.select, ptr %ICS, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.then69.cleanup_crit_edge, %lor.lhs.false66.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #17
  %85 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %len, align 4, !annotation !152
  %cmp55 = icmp eq ptr %scanned_queue, %74
  br i1 %cmp55, label %cleanup.while.end_crit_edge, label %cleanup.if.end58_crit_edge

cleanup.if.end58_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then51.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #17
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #17
  %arrayidx116 = getelementptr inbounds [16 x i8], ptr %InfoContent, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc125.for.body_crit_edge, %while.end
  %i.0219 = phi i32 [ 0, %while.end ], [ %inc126, %for.inc125.for.body_crit_edge ]
  %pframe.1218 = phi ptr [ %pframe.0, %while.end ], [ %pframe.2, %for.inc125.for.body_crit_edge ]
  %arrayidx93 = getelementptr [8 x [15 x i8]], ptr %ICS, i32 0, i32 %i.0219
  %86 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp96 = icmp eq i8 %87, 1
  br i1 %cmp96, label %if.then98, label %for.body.for.inc125_crit_edge

for.body.for.inc125_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc125

if.then98:                                        ; preds = %for.body
  %conv99 = trunc i32 %i.0219 to i8
  %88 = ptrtoint ptr %InfoContent to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv99, ptr %InfoContent, align 1
  %arrayidx107 = getelementptr [8 x [15 x i8]], ptr %ICS, i32 0, i32 %i.0219, i32 1
  %89 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx107, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %90)
  %cmp109 = icmp eq i8 %90, 1
  br i1 %cmp109, label %if.then114, label %if.then98.for.inc_crit_edge

if.then98.for.inc_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then114:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #19
  %91 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %arrayidx116, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then114, %if.then98.for.inc_crit_edge
  %k.1 = phi i32 [ 2, %if.then114 ], [ 1, %if.then98.for.inc_crit_edge ]
  %arrayidx107.1 = getelementptr [8 x [15 x i8]], ptr %ICS, i32 0, i32 %i.0219, i32 2
  %92 = ptrtoint ptr %arrayidx107.1 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx107.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %93)
  %cmp109.1 = icmp eq i8 %93, 1
  br i1 %cmp109.1, label %if.then114.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1

if.then114.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx116.1 = getelementptr [16 x i8], ptr %InfoContent, i32 0, i32 %k.1
  %94 = ptrtoint ptr %arrayidx116.1 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 2, ptr %arrayidx116.1, align 1
  %inc117.1 = add nuw nsw i32 %k.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then114.1, %for.inc.for.inc.1_crit_edge
  %k.1.1 = phi i32 [ %inc117.1, %if.then114.1 ], [ %k.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx107.2 = getelementptr [8 x [15 x i8]], ptr %ICS, i32 0, i32 %i.0219, i32 3
  %95 = ptrtoint ptr %arrayidx107.2 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx107.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %96)
  %cmp109.2 = icmp eq i8 %96, 1
  br i1 %cmp109.2, label %if.then114.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.2

if.then114.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx116.2 = getelementptr [16 x i8], ptr %InfoContent, i32 0, i32 %k.1.1
  %97 = ptrtoint ptr %arrayidx116.2 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 3, ptr %arrayidx116.2, align 1
  %inc117.2 = add nuw nsw i32 %k.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then114.2, %for.inc.1.for.inc.2_crit_edge
  %k.1.2 = phi i32 [ %inc117.2, %if.then114.2 ], [ %k.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx107.3 = getelementptr [8 x [15 x i8]], ptr %ICS, i32 0, i32 %i.0219, i32 4
  %98 = ptrtoint ptr %arrayidx107.3 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx107.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %99)
  %cmp109.3 = icmp eq i8 %99, 1
  br i1 %cmp109.3, label %if.then114.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.3

if.then114.3:                                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx116.3 = getelementptr [16 x i8], ptr %InfoContent, i32 0, i32 %k.1.2
  %100 = ptrtoint ptr %arrayidx116.3 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 4, ptr %arrayidx116.3, align 1
  %inc117.3 = add nuw nsw i32 %k.1.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then114.3, %for.inc.2.for.inc.3_crit_edge
  %k.1.3 = phi i32 [ %inc117.3, %if.then114.3 ], [ %k.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx107.4 = getelementptr [8 x [15 x i8]], ptr %ICS, i32 0, i32 %i.0219, i32 5
  %101 = ptrtoint ptr %arrayidx107.4 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx107.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %102)
  %cmp109.4 = icmp eq i8 %102, 1
  br i1 %cmp109.4, label %if.then114.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.4

if.then114.4:                                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx116.4 = getelementptr [16 x i8], ptr %InfoContent, i32 0, i32 %k.1.3
  %103 = ptrtoint ptr %arrayidx116.4 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 5, ptr %arrayidx116.4, align 1
  %inc117.4 = add nuw nsw i32 %k.1.3, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then114.4, %for.inc.3.for.inc.4_crit_edge
  %k.1.4 = phi i32 [ %inc117.4, %if.then114.4 ], [ %k.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %arrayidx107.5 = getelementptr [8 x [15 x i8]], ptr %ICS, i32 0, i32 %i.0219, i32 6
  %104 = ptrtoint ptr %arrayidx107.5 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx107.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %105)
  %cmp109.5 = icmp eq i8 %105, 1
  br i1 %cmp109.5, label %if.then114.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.5

if.then114.5:                                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx116.5 = getelementptr [16 x i8], ptr %InfoContent, i32 0, i32 %k.1.4
  %106 = ptrtoint ptr %arrayidx116.5 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 6, ptr %arrayidx116.5, align 1
  %inc117.5 = add nuw nsw i32 %k.1.4, 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then114.5, %for.inc.4.for.inc.5_crit_edge
  %k.1.5 = phi i32 [ %inc117.5, %if.then114.5 ], [ %k.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %arrayidx107.6 = getelementptr [8 x [15 x i8]], ptr %ICS, i32 0, i32 %i.0219, i32 7
  %107 = ptrtoint ptr %arrayidx107.6 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx107.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %108)
  %cmp109.6 = icmp eq i8 %108, 1
  br i1 %cmp109.6, label %if.then114.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.6

if.then114.6:                                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx116.6 = getelementptr [16 x i8], ptr %InfoContent, i32 0, i32 %k.1.5
  %109 = ptrtoint ptr %arrayidx116.6 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 7, ptr %arrayidx116.6, align 1
  %inc117.6 = add nuw nsw i32 %k.1.5, 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then114.6, %for.inc.5.for.inc.6_crit_edge
  %k.1.6 = phi i32 [ %inc117.6, %if.then114.6 ], [ %k.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %arrayidx107.7 = getelementptr [8 x [15 x i8]], ptr %ICS, i32 0, i32 %i.0219, i32 8
  %110 = ptrtoint ptr %arrayidx107.7 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx107.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %111)
  %cmp109.7 = icmp eq i8 %111, 1
  br i1 %cmp109.7, label %if.then114.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.7

if.then114.7:                                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx116.7 = getelementptr [16 x i8], ptr %InfoContent, i32 0, i32 %k.1.6
  %112 = ptrtoint ptr %arrayidx116.7 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 8, ptr %arrayidx116.7, align 1
  %inc117.7 = add nuw nsw i32 %k.1.6, 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then114.7, %for.inc.6.for.inc.7_crit_edge
  %k.1.7 = phi i32 [ %inc117.7, %if.then114.7 ], [ %k.1.6, %for.inc.6.for.inc.7_crit_edge ]
  %arrayidx107.8 = getelementptr [8 x [15 x i8]], ptr %ICS, i32 0, i32 %i.0219, i32 9
  %113 = ptrtoint ptr %arrayidx107.8 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx107.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %114)
  %cmp109.8 = icmp eq i8 %114, 1
  br i1 %cmp109.8, label %if.then114.8, label %for.inc.7.for.inc.8_crit_edge

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.8

if.then114.8:                                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx116.8 = getelementptr [16 x i8], ptr %InfoContent, i32 0, i32 %k.1.7
  %115 = ptrtoint ptr %arrayidx116.8 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 9, ptr %arrayidx116.8, align 1
  %inc117.8 = add nuw nsw i32 %k.1.7, 1
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then114.8, %for.inc.7.for.inc.8_crit_edge
  %k.1.8 = phi i32 [ %inc117.8, %if.then114.8 ], [ %k.1.7, %for.inc.7.for.inc.8_crit_edge ]
  %arrayidx107.9 = getelementptr [8 x [15 x i8]], ptr %ICS, i32 0, i32 %i.0219, i32 10
  %116 = ptrtoint ptr %arrayidx107.9 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx107.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %117)
  %cmp109.9 = icmp eq i8 %117, 1
  br i1 %cmp109.9, label %if.then114.9, label %for.inc.8.for.inc.9_crit_edge

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.9

if.then114.9:                                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx116.9 = getelementptr [16 x i8], ptr %InfoContent, i32 0, i32 %k.1.8
  %118 = ptrtoint ptr %arrayidx116.9 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 10, ptr %arrayidx116.9, align 1
  %inc117.9 = add nuw nsw i32 %k.1.8, 1
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then114.9, %for.inc.8.for.inc.9_crit_edge
  %k.1.9 = phi i32 [ %inc117.9, %if.then114.9 ], [ %k.1.8, %for.inc.8.for.inc.9_crit_edge ]
  %arrayidx107.10 = getelementptr [8 x [15 x i8]], ptr %ICS, i32 0, i32 %i.0219, i32 11
  %119 = ptrtoint ptr %arrayidx107.10 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx107.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %120)
  %cmp109.10 = icmp eq i8 %120, 1
  br i1 %cmp109.10, label %if.then114.10, label %for.inc.9.for.inc.10_crit_edge

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.10

if.then114.10:                                    ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx116.10 = getelementptr [16 x i8], ptr %InfoContent, i32 0, i32 %k.1.9
  %121 = ptrtoint ptr %arrayidx116.10 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 11, ptr %arrayidx116.10, align 1
  %inc117.10 = add nuw nsw i32 %k.1.9, 1
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then114.10, %for.inc.9.for.inc.10_crit_edge
  %k.1.10 = phi i32 [ %inc117.10, %if.then114.10 ], [ %k.1.9, %for.inc.9.for.inc.10_crit_edge ]
  %arrayidx107.11 = getelementptr [8 x [15 x i8]], ptr %ICS, i32 0, i32 %i.0219, i32 12
  %122 = ptrtoint ptr %arrayidx107.11 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx107.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %123)
  %cmp109.11 = icmp eq i8 %123, 1
  br i1 %cmp109.11, label %if.then114.11, label %for.inc.10.for.inc.11_crit_edge

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.11

if.then114.11:                                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx116.11 = getelementptr [16 x i8], ptr %InfoContent, i32 0, i32 %k.1.10
  %124 = ptrtoint ptr %arrayidx116.11 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 12, ptr %arrayidx116.11, align 1
  %inc117.11 = add nuw nsw i32 %k.1.10, 1
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then114.11, %for.inc.10.for.inc.11_crit_edge
  %k.1.11 = phi i32 [ %inc117.11, %if.then114.11 ], [ %k.1.10, %for.inc.10.for.inc.11_crit_edge ]
  %arrayidx107.12 = getelementptr [8 x [15 x i8]], ptr %ICS, i32 0, i32 %i.0219, i32 13
  %125 = ptrtoint ptr %arrayidx107.12 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx107.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %126)
  %cmp109.12 = icmp eq i8 %126, 1
  br i1 %cmp109.12, label %if.then114.12, label %for.inc.11.for.inc.12_crit_edge

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.12

if.then114.12:                                    ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx116.12 = getelementptr [16 x i8], ptr %InfoContent, i32 0, i32 %k.1.11
  %127 = ptrtoint ptr %arrayidx116.12 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 13, ptr %arrayidx116.12, align 1
  %inc117.12 = add nuw nsw i32 %k.1.11, 1
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.then114.12, %for.inc.11.for.inc.12_crit_edge
  %k.1.12 = phi i32 [ %inc117.12, %if.then114.12 ], [ %k.1.11, %for.inc.11.for.inc.12_crit_edge ]
  %arrayidx107.13 = getelementptr [8 x [15 x i8]], ptr %ICS, i32 0, i32 %i.0219, i32 14
  %128 = ptrtoint ptr %arrayidx107.13 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx107.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %129)
  %cmp109.13 = icmp eq i8 %129, 1
  br i1 %cmp109.13, label %if.then114.13, label %for.inc.12.for.inc.13_crit_edge

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.13

if.then114.13:                                    ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx116.13 = getelementptr [16 x i8], ptr %InfoContent, i32 0, i32 %k.1.12
  %130 = ptrtoint ptr %arrayidx116.13 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 14, ptr %arrayidx116.13, align 1
  %inc117.13 = add nuw nsw i32 %k.1.12, 1
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.then114.13, %for.inc.12.for.inc.13_crit_edge
  %k.1.13 = phi i32 [ %inc117.13, %if.then114.13 ], [ %k.1.12, %for.inc.12.for.inc.13_crit_edge ]
  %call123 = call ptr @rtw_set_ie(ptr noundef %pframe.1218, i32 noundef 73, i32 noundef %k.1.13, ptr noundef nonnull %InfoContent, ptr noundef %pktlen.i) #17
  br label %for.inc125

for.inc125:                                       ; preds = %for.inc.13, %for.body.for.inc125_crit_edge
  %pframe.2 = phi ptr [ %call123, %for.inc.13 ], [ %pframe.1218, %for.body.for.inc125_crit_edge ]
  %inc126 = add nuw nsw i32 %i.0219, 1
  %exitcond.not = icmp eq i32 %inc126, 8
  br i1 %exitcond.not, label %for.inc125.if.end128_crit_edge, label %for.inc125.for.body_crit_edge

for.inc125.for.body_crit_edge:                    ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc125.if.end128_crit_edge:                   ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end128

if.end128:                                        ; preds = %for.inc125.if.end128_crit_edge, %if.end46.if.end128_crit_edge
  %131 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %pktlen.i, align 4
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %call1.i.i, i32 0, i32 1, i32 9
  %133 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %last_txcmdsz, align 4
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %134 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.not.i = icmp eq i32 %135, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end128.if.then.i_crit_edge

if.end128.if.then.i_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end128
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %136 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %bDriverStopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool1.not.i = icmp eq i32 %137, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end128.if.then.i_crit_edge
  %138 = ptrtoint ptr %pxmitbuf10.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pxmitbuf10.i.i, align 4
  %call.i206 = call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %139) #17
  %call3.i = call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef %call1.i.i) #17
  br label %cleanup130

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  %call4.i = call i32 @rtw_hal_mgnt_xmit(ptr noundef %padapter, ptr noundef %call1.i.i) #17
  br label %cleanup130

cleanup130:                                       ; preds = %if.end.i, %if.then.i, %if.then7.i.i, %if.end5.cleanup130_crit_edge, %if.end.cleanup130_crit_edge, %lor.lhs.false.cleanup130_crit_edge, %entry.cleanup130_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %ICS) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %InfoContent) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %action) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %category) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_get_oper_ch(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw_get_capability(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @start_create_ibss(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  %val8 = alloca i8, align 1
  %join_type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val8) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %join_type) #17
  %0 = ptrtoint ptr %join_type to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %join_type, align 1, !annotation !152
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %ds_config = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 7, i32 3
  %1 = ptrtoint ptr %ds_config to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %ds_config, align 1
  %conv = trunc i32 %2 to i8
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %3 = ptrtoint ptr %cur_channel to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %cur_channel, align 8
  %call = tail call zeroext i16 @get_beacon_interval(ptr noundef %network) #17
  %bcn_interval = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 12
  %4 = ptrtoint ptr %bcn_interval to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %call, ptr %bcn_interval, align 2
  tail call void @update_wireless_mode(ptr noundef %padapter) #17
  %call1 = tail call zeroext i16 @rtw_get_capability(ptr noundef %network) #17
  tail call void @update_capinfo(ptr noundef %padapter, i16 noundef zeroext %call1) #17
  %5 = and i16 %call1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %val8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -49, ptr %val8, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 20, ptr noundef nonnull %val8) #17
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 79, ptr noundef null) #17
  %7 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cur_channel, align 8
  call void @set_channel_bwmode(ptr noundef %padapter, i8 noundef zeroext %8, i8 noundef zeroext 0, i16 noundef zeroext 0) #17
  call void @beacon_timing_control(ptr noundef %padapter) #17
  %9 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %mlmext_info, align 4
  call void @Set_MSR(ptr noundef %padapter, i8 noundef zeroext 1) #17
  %call7 = call i32 @send_beacon(ptr noundef %padapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  call void @report_join_res(ptr noundef %padapter, i32 noundef -1)
  %10 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mlmext_info, align 4
  br label %if.end13

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %mac_address = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 36, i32 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 4, ptr noundef %mac_address) #17
  %11 = ptrtoint ptr %join_type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %join_type, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 13, ptr noundef nonnull %join_type) #17
  call void @report_join_res(ptr noundef %padapter, i32 noundef 1)
  %12 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mlmext_info, align 4
  %or = or i32 %13, 16384
  store i32 %or, ptr %mlmext_info, align 4
  call void @rtw_indicate_connect(ptr noundef %padapter) #17
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  call void @update_bmc_sta(ptr noundef %padapter) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %join_type) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val8) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @get_beacon_interval(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_wireless_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_capinfo(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @beacon_timing_control(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_indicate_connect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_bmc_sta(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @start_clnt_join(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  %val8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val8) #17
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  tail call void @update_wireless_mode(ptr noundef %padapter) #17
  %call = tail call zeroext i16 @rtw_get_capability(ptr noundef %network) #17
  tail call void @update_capinfo(ptr noundef %padapter, i16 noundef zeroext %call) #17
  %conv = zext i16 %call to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @Set_MSR(ptr noundef %padapter, i8 noundef zeroext 2) #17
  %auth_algo = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 5
  %0 = ptrtoint ptr %auth_algo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %auth_algo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %conv2 = select i1 %cmp, i8 -52, i8 -49
  %2 = ptrtoint ptr %val8 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv2, ptr %val8, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 20, ptr noundef nonnull %val8) #17
  %mac_address = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 1
  %call.i = call fastcc i32 @_issue_deauth(ptr noundef %padapter, ptr noundef %mac_address, i16 noundef zeroext 3, i1 noundef zeroext true) #17
  %bcn_interval = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 12
  %3 = ptrtoint ptr %bcn_interval to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %bcn_interval, align 2
  %conv4 = zext i16 %4 to i32
  %call5 = call i32 @decide_wait_for_beacon_timeout(i32 noundef %conv4) #17
  %link_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %mul.i = mul i32 %call5, 100
  %div.i = udiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %5
  %call.i37 = call i32 @mod_timer(ptr noundef %link_timer, i32 noundef %add.i) #17
  %assoc_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %mul.i38 = add i32 %mul.i, 240000
  %div.i39 = udiv i32 %mul.i38, 1000
  %add.i40 = add i32 %6, %div.i39
  %call.i41 = call i32 @mod_timer(ptr noundef %assoc_timer, i32 noundef %add.i40) #17
  %7 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 258, ptr %mlmext_info, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %and7 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else.cleanup_crit_edge, label %if.then9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @Set_MSR(ptr noundef %padapter, i8 noundef zeroext 1) #17
  %8 = ptrtoint ptr %val8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -49, ptr %val8, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 20, ptr noundef nonnull %val8) #17
  call void @beacon_timing_control(ptr noundef %padapter) #17
  %9 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %mlmext_info, align 4
  call void @report_join_res(ptr noundef %padapter, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.else.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val8) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @decide_wait_for_beacon_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @report_del_sta_event(ptr noundef %padapter, ptr noundef %MacAddr, i16 noundef zeroext %reason) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 20) #17
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call) #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 56, ptr %cmdcode, align 4
  %cmdsz5 = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %cmdsz5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 20, ptr %cmdsz5, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %parmbuf, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rspsz, align 4
  %7 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %call1, align 4
  %bf.clear = and i32 %bf.load, -16777216
  %bf.set8 = or i32 %bf.clear, 786444
  store i32 %bf.set8, ptr %call1, align 4
  %event_seq = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event_seq, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %event_seq, i32 1, i32 3, i32 1) #17
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %event_seq, ptr %event_seq, i32 1, ptr elementtype(i32) %event_seq) #17, !srcloc !155
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !156
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load10 = load i32, ptr %call1, align 4
  %bf.shl = shl i32 %asmresult.i.i.i.i, 24
  %bf.clear11 = and i32 %bf.load10, 16777215
  %bf.set12 = or i32 %bf.clear11, %bf.shl
  store i32 %bf.set12, ptr %call1, align 4
  %add.ptr = getelementptr i8, ptr %call1, i32 8
  %10 = call ptr @memcpy(ptr %add.ptr, ptr %MacAddr, i32 6)
  %rsvd = getelementptr i8, ptr %call1, i32 14
  %11 = ptrtoint ptr %rsvd to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %reason, ptr %rsvd, align 2
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call13 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %MacAddr) #17
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end4.if.end17_crit_edge, label %if.then15

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.then15:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %mac_id16 = getelementptr inbounds %struct.sta_info, ptr %call13, i32 0, i32 10
  %12 = ptrtoint ptr %mac_id16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mac_id16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end4.if.end17_crit_edge
  %mac_id.0 = phi i32 [ %13, %if.then15 ], [ -1, %if.end4.if.end17_crit_edge ]
  %mac_id18 = getelementptr i8, ptr %call1, i32 16
  %14 = ptrtoint ptr %mac_id18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mac_id.0, ptr %mac_id18, align 4
  %call19 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_enqueue_cmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_joinbss_event_prehandle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @report_wmm_edca_update(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 9) #17
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call) #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 56, ptr %cmdcode, align 4
  %cmdsz5 = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %cmdsz5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 9, ptr %cmdsz5, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %parmbuf, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rspsz, align 4
  %7 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %call1, align 4
  %bf.clear = and i32 %bf.load, -16777216
  %bf.set8 = or i32 %bf.clear, 1638401
  store i32 %bf.set8, ptr %call1, align 4
  %event_seq = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event_seq, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !154
  tail call void @llvm.prefetch.p0(ptr %event_seq, i32 1, i32 3, i32 1) #17
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %event_seq, ptr %event_seq, i32 1, ptr elementtype(i32) %event_seq) #17, !srcloc !155
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !156
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load10 = load i32, ptr %call1, align 4
  %bf.shl = shl i32 %asmresult.i.i.i.i, 24
  %bf.clear11 = and i32 %bf.load10, 16777215
  %bf.set12 = or i32 %bf.clear11, %bf.shl
  store i32 %bf.set12, ptr %call1, align 4
  %add.ptr = getelementptr i8, ptr %call1, i32 8
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %add.ptr, align 1
  %call13 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_sta_info(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @VCS_update(ptr noundef %padapter, ptr noundef %psta) #17
  %htpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33
  %0 = ptrtoint ptr %htpriv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %htpriv29 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %htpriv29 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %htpriv29, align 8
  %ampdu_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 1
  %3 = ptrtoint ptr %ampdu_enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ampdu_enable, align 1
  %ampdu_enable5 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 1
  %5 = ptrtoint ptr %ampdu_enable5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %ampdu_enable5, align 1
  %HT_caps = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37
  %AMPDU_para = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %AMPDU_para to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %AMPDU_para, align 2
  %8 = lshr i8 %7, 2
  %9 = and i8 %8, 7
  %rx_ampdu_min_spacing = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 6
  %10 = ptrtoint ptr %rx_ampdu_min_spacing to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %rx_ampdu_min_spacing, align 4
  %call = tail call i32 @support_short_GI(ptr noundef %padapter, ptr noundef %HT_caps, i8 noundef zeroext 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.then.if.end_crit_edge, label %if.then10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %sgi_20m = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 8
  %11 = ptrtoint ptr %sgi_20m to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %sgi_20m, align 2
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then.if.end_crit_edge
  %call13 = tail call i32 @support_short_GI(ptr noundef %padapter, ptr noundef %HT_caps, i8 noundef zeroext 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end.if.end17_crit_edge, label %if.then15

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %sgi_40m = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 9
  %12 = ptrtoint ptr %sgi_40m to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %sgi_40m, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end.if.end17_crit_edge
  %qos_option = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 11
  %13 = ptrtoint ptr %qos_option to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %qos_option, align 4
  %ldpc_cap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 12
  %14 = ptrtoint ptr %ldpc_cap to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ldpc_cap, align 2
  %ldpc_cap20 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 12
  %16 = ptrtoint ptr %ldpc_cap20 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %ldpc_cap20, align 2
  %stbc_cap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 13
  %17 = ptrtoint ptr %stbc_cap to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %stbc_cap, align 1
  %stbc_cap23 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 13
  %19 = ptrtoint ptr %stbc_cap23 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %stbc_cap23, align 1
  %beamform_cap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 14
  %20 = ptrtoint ptr %beamform_cap to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %beamform_cap, align 4
  %beamform_cap26 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 14
  %22 = ptrtoint ptr %beamform_cap26 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %beamform_cap26, align 4
  %ht_cap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 15
  %23 = call ptr @memcpy(ptr %ht_cap, ptr %HT_caps, i32 26)
  br label %if.end38

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %24 = ptrtoint ptr %htpriv29 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %htpriv29, align 8
  %ampdu_enable32 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 1
  %25 = ptrtoint ptr %ampdu_enable32 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %ampdu_enable32, align 1
  %sgi_20m34 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 8
  %26 = ptrtoint ptr %sgi_20m34 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %sgi_20m34, align 2
  %sgi_40m36 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 9
  %27 = ptrtoint ptr %sgi_40m36 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %sgi_40m36, align 1
  %qos_option37 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 11
  %28 = ptrtoint ptr %qos_option37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %qos_option37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.end17
  %cur_ch_offset = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 9
  %29 = ptrtoint ptr %cur_ch_offset to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cur_ch_offset, align 2
  %ch_offset = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 7
  %31 = ptrtoint ptr %ch_offset to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %ch_offset, align 1
  %agg_enable_bitmap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 10
  %32 = ptrtoint ptr %agg_enable_bitmap to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %agg_enable_bitmap, align 8
  %candidate_tid_bitmap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 11
  %33 = ptrtoint ptr %candidate_tid_bitmap to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %candidate_tid_bitmap, align 1
  %cur_bwmode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %34 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cur_bwmode, align 1
  %bw_mode = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 31
  %36 = ptrtoint ptr %bw_mode to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %bw_mode, align 1
  %qospriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 30
  %37 = ptrtoint ptr %qospriv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qospriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool43.not = icmp eq i32 %38, 0
  br i1 %tobool43.not, label %if.end38.if.end46_crit_edge, label %if.then44

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  %qos_option45 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 11
  %39 = ptrtoint ptr %qos_option45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %qos_option45, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end38.if.end46_crit_edge
  tail call void @update_ldpc_stbc_cap(ptr noundef %psta) #17
  tail call void @_raw_spin_lock_bh(ptr noundef %psta) #17
  %state = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 8
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %state, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %psta) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @VCS_update(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @support_short_GI(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_ldpc_stbc_cap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlmeext_joinbss_event_callback(ptr noundef %padapter, i32 noundef %join_res) local_unnamed_addr #2 align 64 {
entry:
  %join_type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmeextpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %join_type) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %join_res)
  %cmp = icmp slt i32 %join_res, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %join_type to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %join_type, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 13, ptr noundef nonnull %join_type) #17
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 4, ptr noundef nonnull @null_addr) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp1 = icmp eq i32 %and, 1
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @update_bmc_sta(ptr noundef %padapter) #17
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  tail call void @Switch_DM_Func(ptr noundef %padapter, i32 noundef 268435455, i8 noundef zeroext 1) #17
  tail call void @update_IOT_info(ptr noundef %padapter) #17
  %supported_rates = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 9
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 6, ptr noundef %supported_rates) #17
  %bcn_interval = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 12
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 16, ptr noundef %bcn_interval) #17
  %capability = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 13
  %3 = ptrtoint ptr %capability to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %capability, align 4
  tail call void @update_capinfo(ptr noundef %padapter, i16 noundef zeroext %4) #17
  tail call void @WMMOnAssocRsp(ptr noundef %padapter) #17
  tail call void @HTOnAssocRsp(ptr noundef %padapter) #17
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %5 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cur_channel, align 8
  %cur_ch_offset = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 9
  %7 = ptrtoint ptr %cur_ch_offset to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cur_ch_offset, align 2
  %cur_bwmode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %9 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cur_bwmode, align 1
  %conv = zext i8 %10 to i16
  tail call void @set_channel_bwmode(ptr noundef %padapter, i8 noundef zeroext %6, i8 noundef zeroext %8, i16 noundef zeroext %conv) #17
  %mac_address = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 1
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %mac_address) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end3.if.end9_crit_edge, label %if.then5

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 10
  %11 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mac_id, align 8
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %arrayidx, align 4
  %cur_wireless_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 10
  %14 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cur_wireless_mode, align 1
  %wireless_mode = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 30
  %16 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %wireless_mode, align 4
  tail call void @set_sta_rate(ptr noundef %padapter, ptr noundef nonnull %call) #17
  tail call void @rtw_sta_media_status_rpt(ptr noundef %padapter, ptr noundef nonnull %call, i32 noundef 1) #17
  %17 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mac_id, align 8
  %call8 = tail call i32 @rtw_hal_macid_wakeup(ptr noundef %padapter, i32 noundef %18) #17
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end3.if.end9_crit_edge
  %19 = ptrtoint ptr %join_type to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %join_type, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 13, ptr noundef nonnull %join_type) #17
  %20 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mlmext_info, align 4
  %and11 = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and11)
  %cmp12 = icmp eq i32 %and11, 2
  br i1 %cmp12, label %if.then14, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  call void @correct_TSF(ptr noundef %padapter, ptr noundef %mlmeextpriv) #17
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end9.if.end15_crit_edge
  %call16 = call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %padapter, i8 noundef zeroext 2, i8 noundef zeroext 0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %join_type) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @Switch_DM_Func(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_IOT_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @WMMOnAssocRsp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @HTOnAssocRsp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_sta_rate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sta_media_status_rpt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @correct_TSF(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlmeext_sta_add_event_callback(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #2 align 64 {
entry:
  %join_type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmeextpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %join_type) #17
  %0 = ptrtoint ptr %join_type to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %join_type, align 1, !annotation !152
  %1 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then:                                          ; preds = %entry
  %and2 = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.else, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.else:                                          ; preds = %if.then
  tail call void @correct_TSF(ptr noundef %padapter, ptr noundef %mlmeextpriv) #17
  %call = tail call i32 @send_beacon(ptr noundef %padapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 10
  %3 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac_id, align 8
  %status = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40, i32 %4, i32 1
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %status, align 4
  %6 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mlmext_info, align 4
  %xor = xor i32 %7, 1
  store i32 %xor, ptr %mlmext_info, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mlmext_info, align 4
  %or = or i32 %9, 16384
  store i32 %or, ptr %mlmext_info, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then.if.end8_crit_edge
  %10 = ptrtoint ptr %join_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %join_type, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 13, ptr noundef nonnull %join_type) #17
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry.if.end9_crit_edge
  %mac_id11 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 10
  %11 = ptrtoint ptr %mac_id11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mac_id11, align 8
  %arrayidx12 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40, i32 %12
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %psta, ptr %arrayidx12, align 4
  %14 = load i32, ptr %mac_id11, align 8
  %SupportedRates = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40, i32 %14, i32 4
  %call17 = call i32 @rtw_get_rateset_len(ptr noundef %SupportedRates) #17
  %bssratelen = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 22
  %15 = ptrtoint ptr %bssratelen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call17, ptr %bssratelen, align 8
  %bssrateset = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 21
  %16 = ptrtoint ptr %mac_id11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mac_id11, align 8
  %SupportedRates22 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40, i32 %17, i32 4
  %18 = call ptr @memcpy(ptr %bssrateset, ptr %SupportedRates22, i32 %call17)
  call void @update_sta_info(ptr noundef %padapter, ptr noundef %psta)
  call void @rtw_hal_update_sta_rate_mask(ptr noundef %padapter, ptr noundef %psta) #17
  %19 = ptrtoint ptr %bssratelen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bssratelen, align 8
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %21 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cur_channel, align 8
  %conv = zext i8 %22 to i32
  %call28 = call i32 @rtw_check_network_type(ptr noundef %bssrateset, i32 noundef %20, i32 noundef %conv) #17
  %conv29 = trunc i32 %call28 to i8
  %wireless_mode = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 30
  %23 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv29, ptr %wireless_mode, align 4
  %call30 = call zeroext i8 @networktype_to_raid_ex(ptr noundef %padapter, ptr noundef %psta) #17
  %raid = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 27
  %24 = ptrtoint ptr %raid to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call30, ptr %raid, align 2
  call void @Update_RA_Entry(ptr noundef %padapter, ptr noundef %psta) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %join_type) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_update_sta_rate_mask(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_check_network_type(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @networktype_to_raid_ex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @Update_RA_Entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlmeext_sta_del_event_callback(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @is_client_associated_to_ap(ptr noundef %padapter) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @is_IBSS_empty(ptr noundef %padapter) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @rtw_mlmeext_disconnect(ptr noundef %padapter)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_IBSS_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_mlmeext_disconnect(ptr noundef %padapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call = tail call ptr @get_my_bssid(ptr noundef %network) #17
  %call1 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %call) #17
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 10
  %0 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_id, align 8
  %call2 = tail call i32 @rtw_hal_macid_wakeup(ptr noundef %padapter, i32 noundef %1) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 11, ptr noundef null) #17
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 4, ptr noundef nonnull @null_addr) #17
  tail call void @Set_MSR(ptr noundef %padapter, i8 noundef zeroext 2) #17
  %2 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mlmext_info, align 4
  %cur_bwmode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %cur_bwmode, align 1
  %cur_ch_offset = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 9
  %4 = ptrtoint ptr %cur_ch_offset to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %cur_ch_offset, align 2
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %5 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cur_channel, align 8
  tail call void @set_channel_bwmode(ptr noundef %padapter, i8 noundef zeroext %6, i8 noundef zeroext 0, i16 noundef zeroext 0) #17
  tail call void @flush_all_cam_entry(ptr noundef %padapter) #17
  %link_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 20
  %call5 = tail call i32 @del_timer_sync(ptr noundef %link_timer) #17
  %TrafficTransitionCount = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 9
  %7 = ptrtoint ptr %TrafficTransitionCount to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %TrafficTransitionCount, align 2
  %LowPowerTransitionCount = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 10
  %8 = ptrtoint ptr %LowPowerTransitionCount to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %LowPowerTransitionCount, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_linked_info_dump(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  %i = alloca i32, align 4
  %UndecoratedSmoothedPWDB = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %UndecoratedSmoothedPWDB) #17
  %0 = ptrtoint ptr %UndecoratedSmoothedPWDB to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %UndecoratedSmoothedPWDB, align 4, !annotation !152
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %1 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dvobj, align 4
  %bLinkInfoDump = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 53
  %3 = ptrtoint ptr %bLinkInfoDump to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bLinkInfoDump, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then:                                          ; preds = %entry
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %5 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp = icmp eq i32 %and, 2
  br i1 %cmp, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %call = call zeroext i8 @rtw_hal_get_def_var(ptr noundef %padapter, i32 noundef 0, ptr noundef nonnull %UndecoratedSmoothedPWDB) #17
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %i, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %storemerge17 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dvobj_priv, ptr %2, i32 0, i32 4, i32 %storemerge17
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %storemerge17)
  %cmp5.not = icmp eq i32 %storemerge17, 1
  %or.cond = select i1 %tobool3.not, i1 true, i1 %cmp5.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %call7 = call zeroext i8 @rtw_hal_get_def_var(ptr noundef %padapter, i32 noundef 18, ptr noundef nonnull %i) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %i, align 4
  %cmp2 = icmp slt i32 %inc, 32
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  %call10 = call zeroext i8 @rtw_hal_set_def_var(ptr noundef %padapter, i32 noundef 31, ptr noundef null) #17
  br label %if.end11

if.end11:                                         ; preds = %for.end, %entry.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %UndecoratedSmoothedPWDB) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_hal_set_def_var(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @linked_status_chk(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @is_client_associated_to_ap(ptr noundef %padapter) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else83, label %if.then

if.then:                                          ; preds = %entry
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %mac_address = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 1
  %call1 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %mac_address) #17
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.cleanup149_crit_edge, label %if.then3

if.then.cleanup149_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup149

if.then3:                                         ; preds = %if.then
  %rx_data_pkts.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 7
  %0 = ptrtoint ptr %rx_data_pkts.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rx_data_pkts.i, align 8
  %last_rx_data_pkts.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 15
  %2 = ptrtoint ptr %last_rx_data_pkts.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %last_rx_data_pkts.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp.i = icmp eq i64 %1, %3
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then3.if.else.i_crit_edge

if.then3.if.else.i_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then3
  %rx_beacon_pkts.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 1
  %4 = ptrtoint ptr %rx_beacon_pkts.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %rx_beacon_pkts.i, align 8
  %last_rx_beacon_pkts.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 9
  %6 = ptrtoint ptr %last_rx_beacon_pkts.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %last_rx_beacon_pkts.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp4.i = icmp eq i64 %5, %7
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %rx_probersp_pkts.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 3
  %8 = ptrtoint ptr %rx_probersp_pkts.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rx_probersp_pkts.i, align 8
  %last_rx_probersp_pkts.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 11
  %10 = ptrtoint ptr %last_rx_probersp_pkts.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %last_rx_probersp_pkts.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp8.i = icmp eq i64 %9, %11
  br i1 %cmp8.i, label %land.lhs.true5.i.chk_ap_is_alive.exit_crit_edge, label %land.lhs.true5.i.if.else.i_crit_edge

land.lhs.true5.i.if.else.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true5.i.chk_ap_is_alive.exit_crit_edge:  ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %chk_ap_is_alive.exit

if.else.i:                                        ; preds = %land.lhs.true5.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then3.if.else.i_crit_edge
  br label %chk_ap_is_alive.exit

chk_ap_is_alive.exit:                             ; preds = %if.else.i, %land.lhs.true5.i.chk_ap_is_alive.exit_crit_edge
  %cmp = phi i1 [ true, %land.lhs.true5.i.chk_ap_is_alive.exit_crit_edge ], [ false, %if.else.i ]
  %sta_stats.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34
  %12 = ptrtoint ptr %sta_stats.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sta_stats.i, align 8
  %last_rx_mgnt_pkts.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 8
  %14 = ptrtoint ptr %last_rx_mgnt_pkts.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %last_rx_mgnt_pkts.i, align 8
  %rx_beacon_pkts12.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 1
  %15 = ptrtoint ptr %rx_beacon_pkts12.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rx_beacon_pkts12.i, align 8
  %last_rx_beacon_pkts14.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 9
  %17 = ptrtoint ptr %last_rx_beacon_pkts14.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %last_rx_beacon_pkts14.i, align 8
  %rx_probereq_pkts.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 2
  %18 = ptrtoint ptr %rx_probereq_pkts.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_probereq_pkts.i, align 8
  %last_rx_probereq_pkts.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 10
  %20 = ptrtoint ptr %last_rx_probereq_pkts.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %last_rx_probereq_pkts.i, align 8
  %rx_probersp_pkts18.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 3
  %21 = ptrtoint ptr %rx_probersp_pkts18.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %rx_probersp_pkts18.i, align 8
  %last_rx_probersp_pkts20.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 11
  %23 = ptrtoint ptr %last_rx_probersp_pkts20.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %last_rx_probersp_pkts20.i, align 8
  %rx_probersp_bm_pkts.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 4
  %24 = ptrtoint ptr %rx_probersp_bm_pkts.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rx_probersp_bm_pkts.i, align 8
  %last_rx_probersp_bm_pkts.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 12
  %26 = ptrtoint ptr %last_rx_probersp_bm_pkts.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %last_rx_probersp_bm_pkts.i, align 8
  %rx_probersp_uo_pkts.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 5
  %27 = ptrtoint ptr %rx_probersp_uo_pkts.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rx_probersp_uo_pkts.i, align 8
  %last_rx_probersp_uo_pkts.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 13
  %29 = ptrtoint ptr %last_rx_probersp_uo_pkts.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %last_rx_probersp_uo_pkts.i, align 8
  %rx_ctrl_pkts.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 6
  %30 = ptrtoint ptr %rx_ctrl_pkts.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rx_ctrl_pkts.i, align 8
  %last_rx_ctrl_pkts.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 34, i32 14
  %32 = ptrtoint ptr %last_rx_ctrl_pkts.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %last_rx_ctrl_pkts.i, align 8
  %33 = ptrtoint ptr %last_rx_data_pkts.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %1, ptr %last_rx_data_pkts.i, align 8
  %last_tx_pkts = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 24
  %34 = ptrtoint ptr %last_tx_pkts to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %last_tx_pkts, align 8
  %tx_pkts = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 22
  %36 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %tx_pkts, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %37)
  %cmp7 = icmp eq i64 %35, %37
  br i1 %cmp, label %if.then13, label %chk_ap_is_alive.exit.if.end35_crit_edge

chk_ap_is_alive.exit.if.end35_crit_edge:          ; preds = %chk_ap_is_alive.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then13:                                        ; preds = %chk_ap_is_alive.exit
  %retry = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 26
  %38 = ptrtoint ptr %retry to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %retry, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp14 = icmp eq i32 %39, 0
  br i1 %cmp14, label %do.body.i, label %if.then13.if.end35_crit_edge

if.then13.if.end35_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

do.body.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #19
  %ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3
  %call.i = tail call fastcc i32 @_issue_probereq(ptr noundef %padapter, ptr noundef %ssid, ptr noundef %mac_address, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext false) #17
  %call.i222 = tail call fastcc i32 @_issue_probereq(ptr noundef %padapter, ptr noundef %ssid, ptr noundef %mac_address, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext false) #17
  %call.i237 = tail call fastcc i32 @_issue_probereq(ptr noundef %padapter, ptr noundef %ssid, ptr noundef %mac_address, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext false) #17
  br label %if.end35

if.end35:                                         ; preds = %do.body.i, %if.then13.if.end35_crit_edge, %chk_ap_is_alive.exit.if.end35_crit_edge
  br i1 %cmp7, label %land.lhs.true, label %if.end35.if.end42_crit_edge

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end35
  %link_count = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 3
  %40 = ptrtoint ptr %link_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %link_count, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %link_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %41)
  %cmp38 = icmp eq i32 %41, 7
  br i1 %cmp38, label %if.then40, label %land.lhs.true.if.end42_crit_edge

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %network.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %call.i249 = tail call ptr @get_my_bssid(ptr noundef %network.i) #17
  %call1.i = tail call fastcc i32 @_issue_nulldata(ptr noundef %padapter, ptr noundef %call.i249, i32 noundef 0, i1 noundef zeroext false) #17
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %land.lhs.true.if.end42_crit_edge, %if.end35.if.end42_crit_edge
  %tx_chk.1 = phi i32 [ %call1.i, %if.then40 ], [ 0, %land.lhs.true.if.end42_crit_edge ], [ 1, %if.end35.if.end42_crit_edge ]
  %retry46 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 26
  br i1 %cmp, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end42
  %42 = ptrtoint ptr %retry46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %retry46, align 8
  %inc47 = add i32 %43, 1
  store i32 %inc47, ptr %retry46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc47)
  %cmp49 = icmp ugt i32 %inc47, 8
  br i1 %cmp49, label %do.body52, label %if.then45.if.end69_crit_edge

if.then45.if.end69_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

do.body52:                                        ; preds = %if.then45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @linked_status_chk.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@linked_status_chk, %if.then57)) #17
          to label %do.end62 [label %if.then57], !srcloc !153

if.then57:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #19
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %44 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @linked_status_chk.__UNIQUE_ID_ddebug352, ptr noundef %45, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef %45) #17
  br label %do.end62

do.end62:                                         ; preds = %if.then57, %do.body52
  %mlmext_info.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %network.i251 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %call.i252 = tail call ptr @get_my_bssid(ptr noundef %network.i251) #17
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address, ptr noundef dereferenceable(6) %call.i252, i32 6) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.end.i254, label %do.end62.cleanup149_crit_edge

do.end62.cleanup149_crit_edge:                    ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup149

if.end.i254:                                      ; preds = %do.end62
  %46 = ptrtoint ptr %mlmext_info.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mlmext_info.i, align 4
  %and.i = and i32 %47, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp.i253 = icmp eq i32 %and.i, 2
  br i1 %cmp.i253, label %if.then2.i, label %if.end.i254.cleanup149_crit_edge

if.end.i254.cleanup149_crit_edge:                 ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup149

if.then2.i:                                       ; preds = %if.end.i254
  %and4.i = and i32 %47, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i255, label %if.then6.i

if.then6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  %48 = ptrtoint ptr %mlmext_info.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %mlmext_info.i, align 4
  tail call void @report_del_sta_event(ptr noundef %padapter, ptr noundef %mac_address, i16 noundef zeroext -1) #17
  br label %cleanup149

if.else.i255:                                     ; preds = %if.then2.i
  %and9.i = and i32 %47, 9984
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else.i255.cleanup149_crit_edge, label %if.then11.i

if.else.i255.cleanup149_crit_edge:                ; preds = %if.else.i255
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup149

if.then11.i:                                      ; preds = %if.else.i255
  call void @__sanitizer_cov_trace_pc() #19
  %49 = ptrtoint ptr %mlmext_info.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %mlmext_info.i, align 4
  tail call void @report_join_res(ptr noundef %padapter, i32 noundef -2) #17
  br label %cleanup149

if.else:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  %50 = ptrtoint ptr %retry46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %retry46, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then45.if.end69_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_chk.1)
  %cmp70 = icmp eq i32 %tx_chk.1, 0
  br i1 %cmp70, label %if.then72, label %if.else74

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #19
  %link_count73 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 3
  %51 = ptrtoint ptr %link_count73 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %link_count73, align 4
  %rem = and i32 %52, 7
  store i32 %rem, ptr %link_count73, align 4
  br label %cleanup149

if.else74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #19
  %53 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %tx_pkts, align 8
  %55 = ptrtoint ptr %last_tx_pkts to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %last_tx_pkts, align 8
  %link_count77 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 3
  %56 = ptrtoint ptr %link_count77 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %link_count77, align 4
  br label %cleanup149

if.else83:                                        ; preds = %entry
  %call84 = tail call i32 @is_client_associated_to_ibss(ptr noundef %padapter) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.else83.cleanup149_crit_edge, label %if.else83.for.body_crit_edge

if.else83.for.body_crit_edge:                     ; preds = %if.else83
  br label %for.body

if.else83.cleanup149_crit_edge:                   ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup149

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else83.for.body_crit_edge
  %i.0257 = phi i32 [ %inc146, %for.inc.for.body_crit_edge ], [ 2, %if.else83.for.body_crit_edge ]
  %status = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40, i32 %i.0257, i32 1
  %57 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp89 = icmp eq i32 %58, 1
  br i1 %cmp89, label %if.then91, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then91:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40, i32 %i.0257
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx, align 4
  %cmp95 = icmp eq ptr %60, null
  br i1 %cmp95, label %if.then91.for.inc_crit_edge, label %if.end98

if.then91.for.inc_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end98:                                         ; preds = %if.then91
  %rx_pkt = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40, i32 %i.0257, i32 2
  %61 = ptrtoint ptr %rx_pkt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_pkt, align 4
  %conv101 = zext i32 %62 to i64
  %sta_stats = getelementptr inbounds %struct.sta_info, ptr %60, i32 0, i32 34
  %63 = ptrtoint ptr %sta_stats to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %sta_stats, align 8
  %rx_ctrl_pkts = getelementptr inbounds %struct.sta_info, ptr %60, i32 0, i32 34, i32 6
  %65 = ptrtoint ptr %rx_ctrl_pkts to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %rx_ctrl_pkts, align 8
  %add103 = add i64 %66, %64
  %rx_data_pkts = getelementptr inbounds %struct.sta_info, ptr %60, i32 0, i32 34, i32 7
  %67 = ptrtoint ptr %rx_data_pkts to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %rx_data_pkts, align 8
  %add105 = add i64 %add103, %68
  call void @__sanitizer_cov_trace_cmp8(i64 %add105, i64 %conv101)
  %cmp106 = icmp eq i64 %add105, %conv101
  %retry111 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40, i32 %i.0257, i32 3
  br i1 %cmp106, label %if.then108, label %if.else128

if.then108:                                       ; preds = %if.end98
  %69 = ptrtoint ptr %retry111 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %retry111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %70)
  %cmp112 = icmp ult i32 %70, 3
  br i1 %cmp112, label %if.then114, label %if.else119

if.then114:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #19
  %inc118 = add nuw nsw i32 %70, 1
  %71 = ptrtoint ptr %retry111 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %inc118, ptr %retry111, align 4
  br label %for.inc

if.else119:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #19
  %72 = ptrtoint ptr %retry111 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %retry111, align 4
  %73 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %status, align 4
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %60, i32 0, i32 12
  tail call void @report_del_sta_event(ptr noundef %padapter, ptr noundef %hwaddr, i16 noundef zeroext -1)
  br label %for.inc

if.else128:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #19
  %74 = ptrtoint ptr %retry111 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %retry111, align 4
  %75 = ptrtoint ptr %sta_stats to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %sta_stats, align 8
  %77 = ptrtoint ptr %rx_ctrl_pkts to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %rx_ctrl_pkts, align 8
  %add136 = add i64 %78, %76
  %79 = ptrtoint ptr %rx_data_pkts to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %rx_data_pkts, align 8
  %add139 = add i64 %add136, %80
  %conv140 = trunc i64 %add139 to i32
  %81 = ptrtoint ptr %rx_pkt to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv140, ptr %rx_pkt, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else128, %if.else119, %if.then114, %if.then91.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc146 = add nuw nsw i32 %i.0257, 1
  %exitcond.not = icmp eq i32 %inc146, 32
  br i1 %exitcond.not, label %for.inc.cleanup149_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup149_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup149

cleanup149:                                       ; preds = %for.inc.cleanup149_crit_edge, %if.else83.cleanup149_crit_edge, %if.else74, %if.then72, %if.then11.i, %if.else.i255.cleanup149_crit_edge, %if.then6.i, %if.end.i254.cleanup149_crit_edge, %do.end62.cleanup149_crit_edge, %if.then.cleanup149_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_client_associated_to_ibss(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @survey_timer_hdl(ptr noundef %t) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr i8, ptr %t, i32 268
  %sitesurvey_res = getelementptr i8, ptr %t, i32 -2916
  %0 = ptrtoint ptr %sitesurvey_res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sitesurvey_res, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.exit_survey_timer_hdl_crit_edge

entry.exit_survey_timer_hdl_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit_survey_timer_hdl

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp3 = icmp eq i32 %1, 3
  br i1 %cmp3, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %channel_idx = getelementptr i8, ptr %t, i32 -2908
  %2 = ptrtoint ptr %channel_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_idx, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %channel_idx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %scan_abort = getelementptr i8, ptr %t, i32 152
  %4 = ptrtoint ptr %scan_abort to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %scan_abort, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %ch_num = getelementptr i8, ptr %t, i32 -2899
  %6 = ptrtoint ptr %ch_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ch_num, align 1
  %conv = zext i8 %7 to i32
  %channel_idx9 = getelementptr i8, ptr %t, i32 -2908
  %8 = ptrtoint ptr %channel_idx9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %channel_idx9, align 8
  %9 = ptrtoint ptr %scan_abort to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %scan_abort, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end.if.end11_crit_edge
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #17
  %tobool12.not = icmp eq ptr %call, null
  br i1 %tobool12.not, label %if.end11.exit_survey_timer_hdl_crit_edge, label %if.end14

if.end11.exit_survey_timer_hdl_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit_survey_timer_hdl

if.end14:                                         ; preds = %if.end11
  %call15 = tail call ptr @_rtw_zmalloc(i32 noundef 740) #17
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then17, label %do.body

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call) #17
  br label %exit_survey_timer_hdl

do.body:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 18, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call15, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %14 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 740, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %15 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %16 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rspsz, align 4
  %call19 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call) #17
  br label %exit_survey_timer_hdl

exit_survey_timer_hdl:                            ; preds = %do.body, %if.then17, %if.end11.exit_survey_timer_hdl_crit_edge, %entry.exit_survey_timer_hdl_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @link_timer_hdl(ptr noundef %t) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -5116
  %mlmext_info = getelementptr i8, ptr %t, i32 -2212
  %0 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mlmext_info, align 4
  tail call void @report_join_res(ptr noundef %add.ptr, i32 noundef -3)
  br label %cleanup

if.else:                                          ; preds = %entry
  %and3 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else8, label %if.then5

if.then5:                                         ; preds = %if.else
  %reauth_count = getelementptr i8, ptr %t, i32 -2208
  %3 = ptrtoint ptr %reauth_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reauth_count, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %reauth_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp = icmp ugt i32 %inc, 4
  br i1 %cmp, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mlmext_info, align 4
  tail call void @report_join_res(ptr noundef %add.ptr, i32 noundef -1)
  br label %cleanup

if.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  %auth_seq = getelementptr i8, ptr %t, i32 -2196
  %6 = ptrtoint ptr %auth_seq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %auth_seq, align 4
  tail call void @issue_auth(ptr noundef %add.ptr, ptr noundef null, i16 noundef zeroext 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %7, 30
  %call.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i) #17
  br label %cleanup

if.else8:                                         ; preds = %if.else
  %and10 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else8.cleanup_crit_edge, label %if.then12

if.else8.cleanup_crit_edge:                       ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then12:                                        ; preds = %if.else8
  %reassoc_count = getelementptr i8, ptr %t, i32 -2204
  %8 = ptrtoint ptr %reassoc_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reassoc_count, align 4
  %inc13 = add i32 %9, 1
  store i32 %inc13, ptr %reassoc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc13)
  %cmp14 = icmp ugt i32 %inc13, 4
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mlmext_info, align 4
  tail call void @report_join_res(ptr noundef %add.ptr, i32 noundef -2)
  br label %cleanup

if.end17:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @issue_assocreq(ptr noundef %add.ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add.i42 = add i32 %11, 30
  %call.i43 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i42) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then15, %if.else8.cleanup_crit_edge, %if.end, %if.then6, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @addba_timer_hdl(ptr noundef %t) local_unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -920
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %htpriv = getelementptr i8, ptr %t, i32 1872
  %0 = ptrtoint ptr %htpriv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %ampdu_enable = getelementptr i8, ptr %t, i32 1873
  %2 = ptrtoint ptr %ampdu_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ampdu_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  %candidate_tid_bitmap = getelementptr i8, ptr %t, i32 1889
  %4 = ptrtoint ptr %candidate_tid_bitmap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %candidate_tid_bitmap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.then4.cleanup_crit_edge, label %if.then6

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %candidate_tid_bitmap to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %candidate_tid_bitmap, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.then4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sa_query_timer_hdl(ptr noundef %t) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr i8, ptr %t, i32 -5140
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #17
  %fw_state.i = getelementptr i8, ptr %t, i32 -5096
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr = getelementptr i8, ptr %t, i32 -5164
  %call1 = tail call zeroext i8 @rtw_disassoc_cmd(ptr noundef %add.ptr, i32 noundef 0, i1 noundef zeroext true) #17
  tail call void @rtw_indicate_disconnect(ptr noundef %add.ptr) #17
  tail call void @rtw_free_assoc_resources(ptr noundef %add.ptr, i32 noundef 1) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_disassoc_cmd(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_indicate_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_assoc_resources(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @NULL_hdl(ptr nocapture noundef readnone %padapter, ptr nocapture noundef readnone %pbuf) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @setopmode_hdl(ptr noundef %padapter, ptr nocapture noundef readonly %pbuf) local_unnamed_addr #2 align 64 {
entry:
  %type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type) #17
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %0 = ptrtoint ptr %pbuf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pbuf, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %1, label %if.else15 [
    i8 4, label %if.then
    i8 1, label %if.then6
    i8 0, label %if.then14
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %mlmext_info, align 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %type, align 1
  br label %if.end17

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %6, -4
  %or = or i32 %and, 2
  store i32 %or, ptr %mlmext_info, align 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %type, align 1
  br label %if.end17

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %type, align 1
  br label %if.end17

if.else15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %type, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then14, %if.then6, %if.then
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 2, ptr noundef nonnull %type) #17
  %10 = ptrtoint ptr %pbuf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp20 = icmp eq i8 %11, 4
  br i1 %cmp20, label %if.then22, label %if.end17.if.end23_crit_edge

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  call void @rtw_btcoex_MediaStatusNotify(ptr noundef %padapter, i8 noundef zeroext 1) #17
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end17.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type) #17
  ret i8 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_btcoex_MediaStatusNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @createbss_hdl(ptr noundef %padapter, ptr nocapture noundef readonly %pbuf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %0 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mlmext_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @start_bss_network(ptr noundef %padapter) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %infrastructure_mode = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 8
  %2 = ptrtoint ptr %infrastructure_mode to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %infrastructure_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then3:                                         ; preds = %if.end
  tail call void @rtw_joinbss_reset(ptr noundef %padapter) #17
  %cur_bwmode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %4 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %cur_bwmode, align 1
  %cur_ch_offset = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 9
  %5 = ptrtoint ptr %cur_ch_offset to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %cur_ch_offset, align 2
  %ERP_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 18
  %6 = ptrtoint ptr %ERP_enable to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ERP_enable, align 2
  %WMM_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 17
  %7 = ptrtoint ptr %WMM_enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %WMM_enable, align 1
  %HT_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 20
  %8 = ptrtoint ptr %HT_enable to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %HT_enable, align 4
  %HT_caps_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 21
  %9 = ptrtoint ptr %HT_caps_enable to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %HT_caps_enable, align 1
  %HT_info_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 22
  %10 = ptrtoint ptr %HT_info_enable to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %HT_info_enable, align 2
  %agg_enable_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 27
  %11 = ptrtoint ptr %agg_enable_bitmap to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %agg_enable_bitmap, align 1
  %candidate_tid_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 29
  %12 = ptrtoint ptr %candidate_tid_bitmap to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %candidate_tid_bitmap, align 1
  tail call void @Save_DM_Func_Flag(ptr noundef %padapter) #17
  tail call void @Switch_DM_Func(ptr noundef %padapter, i32 noundef 0, i8 noundef zeroext 0) #17
  %link_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 20
  %call = tail call i32 @del_timer_sync(ptr noundef %link_timer) #17
  tail call void @flush_all_cam_entry(ptr noundef %padapter) #17
  %13 = call ptr @memcpy(ptr %network, ptr %pbuf, i32 100)
  %ie_length = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 11
  %14 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %ie_length, align 1
  %ie_length4 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 11
  %16 = ptrtoint ptr %ie_length4 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %ie_length4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %15)
  %cmp6 = icmp ugt i32 %15, 768
  br i1 %cmp6, label %if.then3.cleanup_crit_edge, label %if.end8

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  %ies = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12
  %ies9 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 12
  %17 = call ptr @memcpy(ptr %ies, ptr %ies9, i32 %15)
  tail call void @start_create_ibss(ptr noundef %padapter)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i8 [ 0, %if.then ], [ 4, %if.then3.cleanup_crit_edge ], [ 0, %if.end8 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @start_bss_network(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_joinbss_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @Save_DM_Func_Flag(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_all_cam_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @join_cmd_hdl(ptr noundef %padapter, ptr nocapture noundef readonly %pbuf) local_unnamed_addr #2 align 64 {
entry:
  %join_type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %join_type) #17
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %0 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.then:                                          ; preds = %entry
  %and2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %mac_address = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 1
  %call.i = tail call fastcc i32 @_issue_deauth(ptr noundef %padapter, ptr noundef %mac_address, i16 noundef zeroext 3, i1 noundef zeroext true) #17
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %2 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mlmext_info, align 4
  tail call void @flush_all_cam_entry(ptr noundef %padapter) #17
  %link_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 20
  %call6 = tail call i32 @del_timer_sync(ptr noundef %link_timer) #17
  tail call void @Set_MSR(ptr noundef %padapter, i8 noundef zeroext 2) #17
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 11, ptr noundef null) #17
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  tail call void @rtw_joinbss_reset(ptr noundef %padapter) #17
  %cur_bwmode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %cur_bwmode, align 1
  %cur_ch_offset = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 9
  %4 = ptrtoint ptr %cur_ch_offset to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %cur_ch_offset, align 2
  %ERP_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 18
  %5 = ptrtoint ptr %ERP_enable to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ERP_enable, align 2
  %WMM_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 17
  %6 = ptrtoint ptr %WMM_enable to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %WMM_enable, align 1
  %HT_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 20
  %7 = ptrtoint ptr %HT_enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %HT_enable, align 4
  %HT_caps_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 21
  %8 = ptrtoint ptr %HT_caps_enable to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %HT_caps_enable, align 1
  %HT_info_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 22
  %9 = ptrtoint ptr %HT_info_enable to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %HT_info_enable, align 2
  %agg_enable_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 27
  %10 = ptrtoint ptr %agg_enable_bitmap to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %agg_enable_bitmap, align 1
  %candidate_tid_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 29
  %11 = ptrtoint ptr %candidate_tid_bitmap to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %candidate_tid_bitmap, align 1
  %bwmode_updated = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 32
  %12 = ptrtoint ptr %bwmode_updated to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %bwmode_updated, align 4
  %VHT_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 34
  %13 = ptrtoint ptr %VHT_enable to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %VHT_enable, align 2
  %14 = call ptr @memcpy(ptr %network, ptr %pbuf, i32 100)
  %ie_length = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 11
  %15 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %ie_length, align 1
  %ie_length8 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 11
  %17 = ptrtoint ptr %ie_length8 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %ie_length8, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %16)
  %cmp = icmp ugt i32 %16, 768
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %ies = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12
  %ies13 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 12
  %18 = call ptr @memcpy(ptr %ies, ptr %ies13, i32 %16)
  %ds_config = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 7, i32 3
  %19 = ptrtoint ptr %ds_config to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %ds_config, align 1
  %conv = trunc i32 %20 to i8
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %21 = ptrtoint ptr %cur_channel to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %cur_channel, align 8
  %call16 = tail call zeroext i16 @get_beacon_interval(ptr noundef %network) #17
  %bcn_interval = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 12
  %22 = ptrtoint ptr %bcn_interval to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %call16, ptr %bcn_interval, align 2
  %23 = ptrtoint ptr %ie_length8 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %ie_length8, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %24)
  %cmp18152 = icmp ugt i32 %24, 12
  br i1 %cmp18152, label %for.body.lr.ph, label %if.end11.if.end73_crit_edge

if.end11.if.end73_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end73

for.body.lr.ph:                                   ; preds = %if.end11
  %bw_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 38
  br label %for.body

for.body:                                         ; preds = %sw.epilog66.for.body_crit_edge, %for.body.lr.ph
  %cbw40_enable.0154 = phi i8 [ 0, %for.body.lr.ph ], [ %cbw40_enable.2, %sw.epilog66.for.body_crit_edge ]
  %i.0153 = phi i32 [ 12, %for.body.lr.ph ], [ %add68, %sw.epilog66.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %ies, i32 %i.0153
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr, align 1
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %26, label %for.body.sw.epilog66_crit_edge [
    i8 -35, label %sw.bb
    i8 45, label %sw.bb29
    i8 61, label %sw.bb31
  ]

for.body.sw.epilog66_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog66

sw.bb:                                            ; preds = %for.body
  %data = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %data, ptr noundef nonnull dereferenceable(4) @WMM_OUI, i32 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool25.not = icmp eq i32 %bcmp, 0
  br i1 %tobool25.not, label %if.then26, label %sw.bb.sw.epilog66_crit_edge

sw.bb.sw.epilog66_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog66

if.then26:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %call27 = tail call i32 @WMM_param_handler(ptr noundef %padapter, ptr noundef %add.ptr) #17
  br label %sw.epilog66

sw.bb29:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %HT_caps_enable to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %HT_caps_enable, align 1
  br label %sw.epilog66

sw.bb31:                                          ; preds = %for.body
  %29 = ptrtoint ptr %HT_info_enable to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %HT_info_enable, align 2
  %data33 = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr, i32 0, i32 2
  %30 = ptrtoint ptr %ds_config to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %ds_config, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %31)
  %cmp37 = icmp ult i32 %31, 15
  br i1 %cmp37, label %if.then39, label %sw.bb31.if.end46_crit_edge

sw.bb31.if.end46_crit_edge:                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.then39:                                        ; preds = %sw.bb31
  %32 = ptrtoint ptr %bw_mode to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bw_mode, align 1
  %34 = and i8 %33, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp42.not = icmp eq i8 %34, 0
  br i1 %cmp42.not, label %if.then39.if.end46_crit_edge, label %if.then39.land.lhs.true_crit_edge

if.then39.land.lhs.true_crit_edge:                ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

if.then39.if.end46_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.end46:                                         ; preds = %if.then39.if.end46_crit_edge, %sw.bb31.if.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cbw40_enable.0154)
  %tobool48.not = icmp eq i8 %cbw40_enable.0154, 0
  br i1 %tobool48.not, label %if.end46.sw.epilog66_crit_edge, label %if.end46.land.lhs.true_crit_edge

if.end46.land.lhs.true_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

if.end46.sw.epilog66_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog66

land.lhs.true:                                    ; preds = %if.end46.land.lhs.true_crit_edge, %if.then39.land.lhs.true_crit_edge
  %cbw40_enable.1151 = phi i8 [ %cbw40_enable.0154, %if.end46.land.lhs.true_crit_edge ], [ 1, %if.then39.land.lhs.true_crit_edge ]
  %infos = getelementptr inbounds %struct.HT_info_element, ptr %data33, i32 0, i32 1
  %35 = ptrtoint ptr %infos to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %infos, align 1
  %37 = and i8 %36, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool51.not = icmp eq i8 %37, 0
  br i1 %tobool51.not, label %land.lhs.true.sw.epilog66_crit_edge, label %if.then52

land.lhs.true.sw.epilog66_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog66

if.then52:                                        ; preds = %land.lhs.true
  %38 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %cur_bwmode, align 1
  %39 = ptrtoint ptr %infos to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %infos, align 1
  %41 = and i8 %40, 3
  %and57 = zext i8 %41 to i32
  %42 = zext i32 %and57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %and57, label %sw.default [
    i32 1, label %sw.bb58
    i32 3, label %sw.bb60
  ]

sw.bb58:                                          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  %43 = ptrtoint ptr %cur_ch_offset to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %cur_ch_offset, align 2
  br label %sw.epilog66

sw.bb60:                                          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  %44 = ptrtoint ptr %cur_ch_offset to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 2, ptr %cur_ch_offset, align 2
  br label %sw.epilog66

sw.default:                                       ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  %45 = ptrtoint ptr %cur_ch_offset to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %cur_ch_offset, align 2
  %46 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %cur_bwmode, align 1
  br label %sw.epilog66

sw.epilog66:                                      ; preds = %sw.default, %sw.bb60, %sw.bb58, %land.lhs.true.sw.epilog66_crit_edge, %if.end46.sw.epilog66_crit_edge, %sw.bb29, %if.then26, %sw.bb.sw.epilog66_crit_edge, %for.body.sw.epilog66_crit_edge
  %cbw40_enable.2 = phi i8 [ %cbw40_enable.0154, %for.body.sw.epilog66_crit_edge ], [ %cbw40_enable.0154, %sw.bb29 ], [ %cbw40_enable.0154, %sw.bb.sw.epilog66_crit_edge ], [ %cbw40_enable.0154, %if.then26 ], [ %cbw40_enable.1151, %sw.bb58 ], [ %cbw40_enable.1151, %sw.bb60 ], [ %cbw40_enable.1151, %sw.default ], [ %cbw40_enable.1151, %land.lhs.true.sw.epilog66_crit_edge ], [ 0, %if.end46.sw.epilog66_crit_edge ]
  %length = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr, i32 0, i32 1
  %47 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %length, align 1
  %conv67 = zext i8 %48 to i32
  %add = add i32 %i.0153, 2
  %add68 = add i32 %add, %conv67
  %49 = ptrtoint ptr %ie_length8 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %ie_length8, align 1
  %cmp18 = icmp ult i32 %add68, %50
  br i1 %cmp18, label %sw.epilog66.for.body_crit_edge, label %sw.epilog66.if.end73_crit_edge

sw.epilog66.if.end73_crit_edge:                   ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end73

sw.epilog66.for.body_crit_edge:                   ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end73:                                         ; preds = %sw.epilog66.if.end73_crit_edge, %if.end11.if.end73_crit_edge
  %51 = ptrtoint ptr %cur_ch_offset to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %cur_ch_offset, align 2
  %53 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %cur_bwmode, align 1
  %55 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %cur_channel, align 8
  %mac_address75 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 1
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 4, ptr noundef %mac_address75) #17
  %57 = ptrtoint ptr %join_type to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %join_type, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 13, ptr noundef nonnull %join_type) #17
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 79, ptr noundef null) #17
  %conv77 = zext i8 %54 to i16
  call void @set_channel_bwmode(ptr noundef %padapter, i8 noundef zeroext %56, i8 noundef zeroext %52, i16 noundef zeroext %conv77) #17
  %link_timer78 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 20
  %call79 = call i32 @del_timer_sync(ptr noundef %link_timer78) #17
  call void @start_clnt_join(ptr noundef %padapter)
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.end7.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.end73 ], [ 4, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %join_type) #17
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_chk_start_clnt_join(ptr nocapture noundef readonly %padapter, ptr noundef writeonly %ch, ptr noundef writeonly %bw, ptr noundef writeonly %offset) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  %tobool2.not = icmp eq ptr %bw, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  %tobool4.not = icmp eq ptr %offset, null
  %or.cond33 = or i1 %or.cond, %tobool4.not
  br i1 %or.cond33, label %if.end21, label %if.then23

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 5975, i32 noundef 9, ptr noundef null) #17
  br label %if.end24

if.then23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %cur_ch_offset1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 9
  %0 = ptrtoint ptr %cur_ch_offset1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_ch_offset1, align 2
  %cur_bwmode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cur_bwmode, align 1
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %4 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cur_channel, align 8
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %ch, align 1
  %7 = ptrtoint ptr %bw to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %3, ptr %bw, align 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %1, ptr %offset, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21
  %9 = xor i1 %or.cond33, true
  %cond = zext i1 %9 to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @disconnect_hdl(ptr noundef %padapter, ptr nocapture noundef readonly %pbuf) local_unnamed_addr #2 align 64 {
entry:
  %val8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val8) #17
  %0 = ptrtoint ptr %val8 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val8, align 1, !annotation !152
  %call = tail call i32 @is_client_associated_to_ap(ptr noundef %padapter) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %mac_address = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 1
  %1 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pbuf, align 4
  %div = udiv i32 %2, 100
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %call.i15 = tail call fastcc i32 @_issue_deauth(ptr noundef %padapter, ptr noundef %mac_address, i16 noundef zeroext 3, i1 noundef zeroext true) #17
  %3 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bDriverStopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i16 = icmp eq i32 %4, 0
  br i1 %tobool.not.i16, label %if.then.lor.lhs.false.i_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then.lor.lhs.false.i_crit_edge:                ; preds = %if.then
  br label %lor.lhs.false.i

do.body.i.loopexit:                               ; preds = %while.body.i
  %call.i = tail call fastcc i32 @_issue_deauth(ptr noundef %padapter, ptr noundef %mac_address, i16 noundef zeroext 3, i1 noundef zeroext true) #17
  %inc.i = add nuw nsw i32 %inc.i18, 1
  %5 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bDriverStopped.i, align 4
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %do.body.i.loopexit.lor.lhs.false.i_crit_edge, label %do.body.i.loopexit.if.end_crit_edge

do.body.i.loopexit.if.end_crit_edge:              ; preds = %do.body.i.loopexit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.body.i.loopexit.lor.lhs.false.i_crit_edge:     ; preds = %do.body.i.loopexit
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %do.body.i.loopexit.lor.lhs.false.i_crit_edge, %if.then.lor.lhs.false.i_crit_edge
  %inc.i18 = phi i32 [ %inc.i, %do.body.i.loopexit.lor.lhs.false.i_crit_edge ], [ 1, %if.then.lor.lhs.false.i_crit_edge ]
  %call.i17 = phi i32 [ %call.i, %do.body.i.loopexit.lor.lhs.false.i_crit_edge ], [ %call.i15, %if.then.lor.lhs.false.i_crit_edge ]
  %7 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i18, i32 %div)
  %cmp2.i = icmp ult i32 %inc.i18, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp5.i = icmp eq i32 %call.i17, 0
  %or.cond.i = select i1 %cmp2.i, i1 %cmp5.i, i1 false
  br i1 %or.cond.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %__ms.049.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 100, %if.end.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.049.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #17
  %tobool19.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool19.not.i, label %do.body.i.loopexit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %do.body.i.loopexit.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %11, 3
  %12 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %and, label %if.end.if.end6_crit_edge [
    i32 1, label %if.end.if.then5_crit_edge
    i32 3, label %if.end.if.then5_crit_edge19
  ]

if.end.if.then5_crit_edge19:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %if.end.if.then5_crit_edge19
  %13 = ptrtoint ptr %val8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %val8, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 8, ptr noundef nonnull %val8) #17
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  call fastcc void @rtw_mlmeext_disconnect(ptr noundef %padapter)
  %call7 = call i32 @rtw_free_uc_swdec_pending_queue(ptr noundef %padapter) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val8) #17
  ret i8 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_uc_swdec_pending_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @sitesurvey_cmd_hdl(ptr noundef %padapter, ptr nocapture noundef readonly %pbuf) local_unnamed_addr #2 align 64 {
entry:
  %val8 = alloca i8, align 1
  %initialgain = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val8) #17
  %0 = ptrtoint ptr %val8 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val8, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %initialgain) #17
  %1 = ptrtoint ptr %initialgain to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %initialgain, align 4, !annotation !152
  %sitesurvey_res = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17
  %2 = ptrtoint ptr %sitesurvey_res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sitesurvey_res, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end45_crit_edge

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %sitesurvey_res to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %sitesurvey_res, align 8
  %bss_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 1
  %5 = ptrtoint ptr %bss_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bss_cnt, align 4
  %channel_idx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 2
  %6 = ptrtoint ptr %channel_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %channel_idx, align 8
  %arrayidx = getelementptr %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 3, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then.for.inc_crit_edge, label %if.then6

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %ssid10 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 0, i32 1
  %ssid13 = getelementptr %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 3, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %ssid10, ptr %ssid13, i32 32)
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %if.then.for.inc_crit_edge
  %.sink = phi i32 [ %11, %if.then6 ], [ 0, %if.then.for.inc_crit_edge ]
  %12 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 0
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %12, align 4
  %arrayidx.1 = getelementptr %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.1 = icmp eq i32 %15, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then6.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1

if.then6.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  %ssid10.1 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 1, i32 1
  %ssid13.1 = getelementptr %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 3, i32 1, i32 1
  %16 = call ptr @memcpy(ptr %ssid10.1, ptr %ssid13.1, i32 32)
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then6.1, %for.inc.for.inc.1_crit_edge
  %.sink100 = phi i32 [ %18, %if.then6.1 ], [ 0, %for.inc.for.inc.1_crit_edge ]
  %19 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink100, ptr %19, align 4
  %arrayidx.2 = getelementptr %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.2 = icmp eq i32 %22, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then6.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.2

if.then6.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  %ssid10.2 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 2, i32 1
  %ssid13.2 = getelementptr %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 3, i32 2, i32 1
  %23 = call ptr @memcpy(ptr %ssid10.2, ptr %ssid13.2, i32 32)
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then6.2, %for.inc.1.for.inc.2_crit_edge
  %.sink101 = phi i32 [ %25, %if.then6.2 ], [ 0, %for.inc.1.for.inc.2_crit_edge ]
  %26 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink101, ptr %26, align 4
  %arrayidx.3 = getelementptr %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.3 = icmp eq i32 %29, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then6.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.3

if.then6.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  %ssid10.3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 3, i32 1
  %ssid13.3 = getelementptr %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 3, i32 3, i32 1
  %30 = call ptr @memcpy(ptr %ssid10.3, ptr %ssid13.3, i32 32)
  %31 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then6.3, %for.inc.2.for.inc.3_crit_edge
  %.sink102 = phi i32 [ %32, %if.then6.3 ], [ 0, %for.inc.2.for.inc.3_crit_edge ]
  %33 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 3
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink102, ptr %33, align 4
  %arrayidx.4 = getelementptr %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 3, i32 4
  %35 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.4 = icmp eq i32 %36, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then6.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.4

if.then6.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  %ssid10.4 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 4, i32 1
  %ssid13.4 = getelementptr %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 3, i32 4, i32 1
  %37 = call ptr @memcpy(ptr %ssid10.4, ptr %ssid13.4, i32 32)
  %38 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then6.4, %for.inc.3.for.inc.4_crit_edge
  %.sink103 = phi i32 [ %39, %if.then6.4 ], [ 0, %for.inc.3.for.inc.4_crit_edge ]
  %40 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink103, ptr %40, align 4
  %arrayidx.5 = getelementptr %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 3, i32 5
  %42 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.5 = icmp eq i32 %43, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then6.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.5

if.then6.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  %ssid10.5 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 5, i32 1
  %ssid13.5 = getelementptr %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 3, i32 5, i32 1
  %44 = call ptr @memcpy(ptr %ssid10.5, ptr %ssid13.5, i32 32)
  %45 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then6.5, %for.inc.4.for.inc.5_crit_edge
  %.sink104 = phi i32 [ %46, %if.then6.5 ], [ 0, %for.inc.4.for.inc.5_crit_edge ]
  %47 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 5
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink104, ptr %47, align 4
  %arrayidx.6 = getelementptr %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 3, i32 6
  %49 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.6 = icmp eq i32 %50, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then6.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.6

if.then6.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #19
  %ssid10.6 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 6, i32 1
  %ssid13.6 = getelementptr %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 3, i32 6, i32 1
  %51 = call ptr @memcpy(ptr %ssid10.6, ptr %ssid13.6, i32 32)
  %52 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then6.6, %for.inc.5.for.inc.6_crit_edge
  %.sink105 = phi i32 [ %53, %if.then6.6 ], [ 0, %for.inc.5.for.inc.6_crit_edge ]
  %54 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 6
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink105, ptr %54, align 4
  %arrayidx.7 = getelementptr %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 3, i32 7
  %56 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.7 = icmp eq i32 %57, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then6.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.7

if.then6.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #19
  %ssid10.7 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 7, i32 1
  %ssid13.7 = getelementptr %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 3, i32 7, i32 1
  %58 = call ptr @memcpy(ptr %ssid10.7, ptr %ssid13.7, i32 32)
  %59 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then6.7, %for.inc.6.for.inc.7_crit_edge
  %.sink106 = phi i32 [ %60, %if.then6.7 ], [ 0, %for.inc.6.for.inc.7_crit_edge ]
  %61 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 7
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.sink106, ptr %61, align 4
  %arrayidx.8 = getelementptr %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 3, i32 8
  %63 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.8 = icmp eq i32 %64, 0
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then6.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.8

if.then6.8:                                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #19
  %ssid10.8 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 8, i32 1
  %ssid13.8 = getelementptr %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 3, i32 8, i32 1
  %65 = call ptr @memcpy(ptr %ssid10.8, ptr %ssid13.8, i32 32)
  %66 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.8, align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then6.8, %for.inc.7.for.inc.8_crit_edge
  %.sink107 = phi i32 [ %67, %if.then6.8 ], [ 0, %for.inc.7.for.inc.8_crit_edge ]
  %68 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 6, i32 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.sink107, ptr %68, align 4
  %ch = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 7
  %ch28 = getelementptr inbounds %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 4
  %ch_num = getelementptr inbounds %struct.sitesurvey_parm, ptr %pbuf, i32 0, i32 2
  %70 = ptrtoint ptr %ch_num to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ch_num, align 1
  %conv = zext i8 %71 to i32
  %call = tail call fastcc i32 @rtw_scan_ch_decision(ptr noundef %padapter, ptr noundef %ch, ptr noundef %ch28, i32 noundef %conv)
  %conv30 = trunc i32 %call to i8
  %ch_num32 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 5
  %72 = ptrtoint ptr %ch_num32 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv30, ptr %ch_num32, align 1
  %73 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pbuf, align 4
  %scan_mode34 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 3
  %75 = ptrtoint ptr %scan_mode34 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %scan_mode34, align 4
  %call35 = tail call i32 @is_client_associated_to_ap(ptr noundef %padapter) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %for.inc.8.if.end45_crit_edge, label %if.then37

for.inc.8.if.end45_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

if.then37:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #19
  %76 = ptrtoint ptr %sitesurvey_res to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %sitesurvey_res, align 8
  %call40 = tail call i32 @issue_nulldata(ptr noundef %padapter, ptr noundef null, i32 noundef 1, i32 noundef 3, i32 noundef 500)
  %survey_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %77, 5
  %call.i = tail call i32 @mod_timer(ptr noundef %survey_timer, i32 noundef %add.i) #17
  br label %cleanup

if.end45:                                         ; preds = %for.inc.8.if.end45_crit_edge, %entry.if.end45_crit_edge
  %78 = ptrtoint ptr %sitesurvey_res to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sitesurvey_res, align 8
  %.off = add i32 %79, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then54, label %if.end45.if.end57_crit_edge

if.end45.if.end57_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57

if.then54:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @Save_DM_Func_Flag(ptr noundef %padapter) #17
  tail call void @Switch_DM_Func(ptr noundef %padapter, i32 noundef 0, i8 noundef zeroext 0) #17
  %80 = ptrtoint ptr %initialgain to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 30, ptr %initialgain, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 51, ptr noundef nonnull %initialgain) #17
  call void @Set_MSR(ptr noundef %padapter, i8 noundef zeroext 0) #17
  %81 = ptrtoint ptr %val8 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %val8, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 12, ptr noundef nonnull %val8) #17
  %82 = ptrtoint ptr %sitesurvey_res to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 3, ptr %sitesurvey_res, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end45.if.end57_crit_edge
  call void @site_survey(ptr noundef %padapter)
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %initialgain) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val8) #17
  ret i8 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw_scan_ch_decision(ptr nocapture noundef readonly %padapter, ptr nocapture noundef %out, ptr nocapture noundef readonly %in, i32 noundef %in_num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %out, i32 0, i32 408)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_num)
  %cmp13.not = icmp eq i32 %in_num, 0
  br i1 %cmp13.not, label %entry.for.cond42.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond42.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond42.preheader

for.body.lr.ph:                                   ; preds = %entry
  %channel_set = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12
  br label %for.body

for.cond:                                         ; preds = %if.end33
  %inc38 = add nuw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc38, %in_num
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc38, %for.cond.for.body_crit_edge ]
  %j.014 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rtw_ieee80211_channel, ptr %in, i32 %i.016
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.body
  %i.0.i = phi i32 [ 0, %for.body ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rt_channel_info, ptr %channel_set, i32 %i.0.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not.i = icmp eq i8 %4, 0
  %5 = zext i8 %4 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %5)
  %cmp5.i = icmp eq i16 %2, %5
  %or.cond.i = or i1 %cmp.not.i, %cmp5.i
  %inc.i = add i32 %i.0.i, 1
  br i1 %or.cond.i, label %rtw_ch_set_search_ch.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

rtw_ch_set_search_ch.exit:                        ; preds = %for.cond.i
  %conv.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %conv.i)
  %cmp10.not.i = icmp slt i32 %i.0.i, %conv.i
  %i.0..i = select i1 %cmp10.not.i, i32 %i.0.i, i32 -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %rtw_ch_set_search_ch.exit.if.end33_crit_edge, label %land.lhs.true

rtw_ch_set_search_ch.exit.if.end33_crit_edge:     ; preds = %rtw_ch_set_search_ch.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33

land.lhs.true:                                    ; preds = %rtw_ch_set_search_ch.exit
  %flags = getelementptr %struct.rtw_ieee80211_channel, ptr %in, i32 %i.016, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0..i)
  %cmp7 = icmp sgt i32 %i.0..i, -1
  %or.cond = select i1 %tobool5.not, i1 %cmp7, i1 false
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %j.014)
  %cmp9 = icmp ugt i32 %j.014, 50
  br i1 %cmp9, label %do.body12, label %if.end22

do.body12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_scan_ch_decision.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_scan_ch_decision, %if.then17)) #17
          to label %for.end [label %if.then17], !srcloc !153

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #19
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %8 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_scan_ch_decision.__UNIQUE_ID_ddebug353, ptr noundef %9, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, ptr noundef %9, i32 noundef 51) #17
  br label %if.end93

if.end22:                                         ; preds = %if.then
  %arrayidx23 = getelementptr %struct.rtw_ieee80211_channel, ptr %out, i32 %j.014
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %arrayidx23, align 4
  %ScanType = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12, i32 %i.0..i, i32 1
  %13 = ptrtoint ptr %ScanType to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ScanType, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp27 = icmp eq i32 %14, 0
  br i1 %cmp27, label %if.then29, label %if.end22.if.end32_crit_edge

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  %flags31 = getelementptr %struct.rtw_ieee80211_channel, ptr %out, i32 %j.014, i32 1
  %15 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags31, align 4
  %or = or i32 %16, 2
  store i32 %or, ptr %flags31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end22.if.end32_crit_edge
  %inc = add nuw nsw i32 %j.014, 1
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %land.lhs.true.if.end33_crit_edge, %rtw_ch_set_search_ch.exit.if.end33_crit_edge
  %j.1 = phi i32 [ %j.014, %land.lhs.true.if.end33_crit_edge ], [ %inc, %if.end32 ], [ %j.014, %rtw_ch_set_search_ch.exit.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %j.1)
  %cmp34 = icmp ugt i32 %j.1, 50
  br i1 %cmp34, label %if.end33.if.end93_crit_edge, label %for.cond

if.end33.if.end93_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93

for.end:                                          ; preds = %do.body12, %for.cond.for.end_crit_edge
  %j.012 = phi i32 [ %j.014, %do.body12 ], [ %j.1, %for.cond.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.012)
  %cmp39 = icmp eq i32 %j.012, 0
  br i1 %cmp39, label %for.end.for.cond42.preheader_crit_edge, label %for.end.if.end93_crit_edge

for.end.if.end93_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93

for.end.for.cond42.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %for.end.for.cond42.preheader_crit_edge, %entry.for.cond42.preheader_crit_edge
  %max_chan_nums = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 11
  %17 = ptrtoint ptr %max_chan_nums to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %max_chan_nums, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp4419.not = icmp eq i8 %18, 0
  br i1 %cmp4419.not, label %for.cond42.preheader.if.end93_crit_edge, label %for.cond42.preheader.for.body46_crit_edge

for.cond42.preheader.for.body46_crit_edge:        ; preds = %for.cond42.preheader
  br label %for.body46

for.cond42.preheader.if.end93_crit_edge:          ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93

for.body46:                                       ; preds = %if.end88.for.body46_crit_edge, %for.cond42.preheader.for.body46_crit_edge
  %i.122 = phi i32 [ %inc91, %if.end88.for.body46_crit_edge ], [ 0, %for.cond42.preheader.for.body46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %i.122)
  %exitcond29 = icmp eq i32 %i.122, 51
  br i1 %exitcond29, label %do.body51, label %if.end73

do.body51:                                        ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_scan_ch_decision.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_scan_ch_decision, %if.then63)) #17
          to label %if.end93 [label %if.then63], !srcloc !153

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #19
  %pnetdev64 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %19 = ptrtoint ptr %pnetdev64 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pnetdev64, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_scan_ch_decision.__UNIQUE_ID_ddebug354, ptr noundef %20, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, ptr noundef %20, i32 noundef 51) #17
  br label %if.end93

if.end73:                                         ; preds = %for.body46
  %arrayidx75 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12, i32 %i.122
  %21 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx75, align 8
  %conv76 = zext i8 %22 to i16
  %arrayidx77 = getelementptr %struct.rtw_ieee80211_channel, ptr %out, i32 %i.122
  %23 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv76, ptr %arrayidx77, align 4
  %ScanType81 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12, i32 %i.122, i32 1
  %24 = ptrtoint ptr %ScanType81 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ScanType81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp82 = icmp eq i32 %25, 0
  br i1 %cmp82, label %if.then84, label %if.end73.if.end88_crit_edge

if.end73.if.end88_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end88

if.then84:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  %flags86 = getelementptr %struct.rtw_ieee80211_channel, ptr %out, i32 %i.122, i32 1
  %26 = ptrtoint ptr %flags86 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags86, align 4
  %or87 = or i32 %27, 2
  store i32 %or87, ptr %flags86, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %if.end73.if.end88_crit_edge
  %inc91 = add nuw nsw i32 %i.122, 1
  %28 = ptrtoint ptr %max_chan_nums to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %max_chan_nums, align 4
  %conv43 = zext i8 %29 to i32
  %cmp44 = icmp ult i32 %inc91, %conv43
  br i1 %cmp44, label %if.end88.for.body46_crit_edge, label %if.end88.if.end93_crit_edge

if.end88.if.end93_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93

if.end88.for.body46_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body46

if.end93:                                         ; preds = %if.end88.if.end93_crit_edge, %if.then63, %do.body51, %for.cond42.preheader.if.end93_crit_edge, %for.end.if.end93_crit_edge, %if.end33.if.end93_crit_edge, %if.then17
  %j.4 = phi i32 [ 51, %if.then63 ], [ %j.012, %for.end.if.end93_crit_edge ], [ 51, %do.body51 ], [ %j.014, %if.then17 ], [ 0, %for.cond42.preheader.if.end93_crit_edge ], [ %inc91, %if.end88.if.end93_crit_edge ], [ %j.1, %if.end33.if.end93_crit_edge ]
  ret i32 %j.4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @setauth_hdl(ptr nocapture noundef writeonly %padapter, ptr nocapture noundef readonly %pbuf) local_unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pbuf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp = icmp ult i8 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i8 %1 to i32
  %auth_algo = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 5
  %2 = ptrtoint ptr %auth_algo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %auth_algo, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i8 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @setkey_hdl(ptr noundef %padapter, ptr noundef %pbuf) local_unnamed_addr #2 align 64 {
entry:
  %null_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %null_addr) #17
  %0 = call ptr @memset(ptr %null_addr, i32 0, i32 6)
  %set_tx = getelementptr inbounds %struct.setkey_parm, ptr %pbuf, i32 0, i32 3
  %1 = ptrtoint ptr %set_tx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %set_tx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %keyid = getelementptr inbounds %struct.setkey_parm, ptr %pbuf, i32 0, i32 1
  %3 = ptrtoint ptr %keyid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %keyid, align 1
  %conv = zext i8 %4 to i32
  %key_index = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 8
  %5 = ptrtoint ptr %key_index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %key_index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %keyid1 = getelementptr inbounds %struct.setkey_parm, ptr %pbuf, i32 0, i32 1
  %6 = ptrtoint ptr %keyid1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %keyid1, align 1
  %call = tail call signext i16 @rtw_camid_alloc(ptr noundef %padapter, ptr noundef null, i8 noundef zeroext %7) #17
  %conv2 = sext i16 %call to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %cmp = icmp slt i16 %call, 0
  br i1 %cmp, label %if.end.if.end41_crit_edge, label %if.else

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %call)
  %cmp6 = icmp ugt i16 %call, 3
  %mac_address.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %addr.0 = select i1 %cmp6, ptr %mac_address.i, ptr %null_addr
  %8 = ptrtoint ptr %pbuf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pbuf, align 1
  %conv12 = zext i8 %9 to i16
  %shl = shl nuw nsw i16 %conv12, 2
  %10 = ptrtoint ptr %keyid1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %keyid1, align 1
  %conv14 = zext i8 %11 to i16
  %or = or i16 %shl, %conv14
  %or15 = or i16 %or, -32704
  %conv17 = trunc i16 %call to i8
  %key = getelementptr inbounds %struct.setkey_parm, ptr %pbuf, i32 0, i32 4
  call void @write_cam(ptr noundef %padapter, i8 noundef zeroext %conv17, i16 noundef zeroext %or15, ptr noundef %addr.0, ptr noundef %key) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setkey_hdl.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setkey_hdl, %if.then24)) #17
          to label %if.end33 [label %if.then24], !srcloc !153

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %12 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pnetdev, align 8
  %14 = ptrtoint ptr %keyid1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %keyid1, align 1
  %conv27 = zext i8 %15 to i32
  %16 = ptrtoint ptr %pbuf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pbuf, align 1
  %call29 = call ptr @security_type_str(i8 noundef zeroext %17) #17
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @setkey_hdl.__UNIQUE_ID_ddebug355, ptr noundef %13, ptr noundef nonnull @.str.18, i32 noundef %conv2, ptr noundef %addr.0, i32 noundef %conv27, ptr noundef %call29) #17
  br label %if.end33

if.end33:                                         ; preds = %if.then24, %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %call)
  %cmp38 = icmp ult i16 %call, 4
  br i1 %cmp38, label %if.then40, label %if.end33.if.end41_crit_edge

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.then40:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 21, ptr noundef nonnull inttoptr (i32 1 to ptr)) #17
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end33.if.end41_crit_edge, %if.end.if.end41_crit_edge
  %SetHwRegHandler = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 30
  %18 = ptrtoint ptr %SetHwRegHandler to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %SetHwRegHandler, align 8
  call void %19(ptr noundef %padapter, i8 noundef zeroext 14, ptr noundef nonnull %null_addr) #17
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %null_addr) #17
  ret i8 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local signext i16 @rtw_camid_alloc(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_cam(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @security_type_str(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @set_stakey_hdl(ptr noundef %padapter, ptr noundef %pbuf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %algorithm = getelementptr inbounds %struct.set_stakey_parm, ptr %pbuf, i32 0, i32 1
  %0 = ptrtoint ptr %algorithm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %algorithm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.while.cond.preheader_crit_edge, label %if.end

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.preheader

if.end:                                           ; preds = %entry
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %pbuf) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body3, label %if.end14

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_stakey_hdl.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_stakey_hdl, %if.then8)) #17
          to label %exit [label %if.then8], !srcloc !153

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #19
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %2 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_stakey_hdl.__UNIQUE_ID_ddebug356, ptr noundef %3, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, ptr noundef %pbuf) #17
  br label %exit

if.end14:                                         ; preds = %if.end
  %4 = ptrtoint ptr %algorithm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %algorithm, align 1
  %conv16 = zext i8 %5 to i32
  %enc_algo = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 7
  %6 = ptrtoint ptr %enc_algo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv16, ptr %enc_algo, align 4
  %call17 = tail call signext i16 @rtw_camid_alloc(ptr noundef %padapter, ptr noundef nonnull %call, i8 noundef zeroext 0) #17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call17)
  %cmp19 = icmp slt i16 %call17, 0
  br i1 %cmp19, label %if.end14.exit_crit_edge, label %write_to_cam

if.end14.exit_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit

write_to_cam:                                     ; preds = %if.end14
  %7 = ptrtoint ptr %algorithm to i32
  call void @__asan_load1_noabort(i32 %7)
  %.pr = load i8, ptr %algorithm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %phi.cmp = icmp eq i8 %.pr, 0
  br i1 %phi.cmp, label %write_to_cam.while.cond.preheader_crit_edge, label %do.body60

write_to_cam.while.cond.preheader_crit_edge:      ; preds = %write_to_cam
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %write_to_cam.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  %call30134 = tail call signext i16 @rtw_camid_search(ptr noundef %padapter, ptr noundef %pbuf, i16 noundef signext -1) #17
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call30134)
  %cmp32136 = icmp sgt i16 %call30134, -1
  br i1 %cmp32136, label %do.body35.lr.ph, label %while.cond.preheader.exit_crit_edge

while.cond.preheader.exit_crit_edge:              ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit

do.body35.lr.ph:                                  ; preds = %while.cond.preheader
  %pnetdev48 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  br label %do.body35

do.body35:                                        ; preds = %do.end56.do.body35_crit_edge, %do.body35.lr.ph
  %call30137 = phi i16 [ %call30134, %do.body35.lr.ph ], [ %call30, %do.end56.do.body35_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_stakey_hdl.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_stakey_hdl, %if.then47)) #17
          to label %do.end56 [label %if.then47], !srcloc !153

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #19
  %conv31138140 = zext i16 %call30137 to i32
  %8 = ptrtoint ptr %pnetdev48 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pnetdev48, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_stakey_hdl.__UNIQUE_ID_ddebug357, ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef %pbuf, i32 noundef %conv31138140) #17
  br label %do.end56

do.end56:                                         ; preds = %if.then47, %do.body35
  %conv57 = trunc i16 %call30137 to i8
  tail call void @clear_cam_entry(ptr noundef %padapter, i8 noundef zeroext %conv57) #17
  tail call void @rtw_camid_free(ptr noundef %padapter, i8 noundef zeroext %conv57) #17
  %call30 = tail call signext i16 @rtw_camid_search(ptr noundef %padapter, ptr noundef %pbuf, i16 noundef signext -1) #17
  %cmp32 = icmp sgt i16 %call30, -1
  br i1 %cmp32, label %do.end56.do.body35_crit_edge, label %do.end56.exit_crit_edge

do.end56.exit_crit_edge:                          ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit

do.end56.do.body35_crit_edge:                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body35

do.body60:                                        ; preds = %write_to_cam
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_stakey_hdl.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_stakey_hdl, %if.then72)) #17
          to label %do.end84 [label %if.then72], !srcloc !153

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #19
  %pnetdev73 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %10 = ptrtoint ptr %pnetdev73 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pnetdev73, align 8
  %conv74133 = zext i16 %call17 to i32
  %keyid = getelementptr inbounds %struct.set_stakey_parm, ptr %pbuf, i32 0, i32 2
  %12 = ptrtoint ptr %keyid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %keyid, align 1
  %conv77 = zext i8 %13 to i32
  %14 = ptrtoint ptr %algorithm to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %algorithm, align 1
  %call79 = tail call ptr @security_type_str(i8 noundef zeroext %15) #17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_stakey_hdl.__UNIQUE_ID_ddebug358, ptr noundef %11, ptr noundef nonnull @.str.22, i32 noundef %conv74133, ptr noundef %pbuf, i32 noundef %conv77, ptr noundef %call79) #17
  br label %do.end84

do.end84:                                         ; preds = %if.then72, %do.body60
  %16 = ptrtoint ptr %algorithm to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %algorithm, align 1
  %conv86 = zext i8 %17 to i16
  %shl = shl nuw nsw i16 %conv86, 2
  %keyid87 = getelementptr inbounds %struct.set_stakey_parm, ptr %pbuf, i32 0, i32 2
  %18 = ptrtoint ptr %keyid87 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %keyid87, align 1
  %conv88 = zext i8 %19 to i16
  %or = or i16 %shl, %conv88
  %or89 = or i16 %or, -32768
  %conv91 = trunc i16 %call17 to i8
  %key = getelementptr inbounds %struct.set_stakey_parm, ptr %pbuf, i32 0, i32 3
  tail call void @write_cam(ptr noundef %padapter, i8 noundef zeroext %conv91, i16 noundef zeroext %or89, ptr noundef %pbuf, ptr noundef %key) #17
  br label %exit

exit:                                             ; preds = %do.end84, %do.end56.exit_crit_edge, %while.cond.preheader.exit_crit_edge, %if.end14.exit_crit_edge, %if.then8, %do.body3
  %ret.0 = phi i8 [ 0, %if.end14.exit_crit_edge ], [ 5, %if.then8 ], [ 1, %do.end84 ], [ 5, %do.body3 ], [ 1, %while.cond.preheader.exit_crit_edge ], [ 1, %do.end56.exit_crit_edge ]
  ret i8 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local signext i16 @rtw_camid_search(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_cam_entry(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_camid_free(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @add_ba_hdl(ptr noundef %padapter, ptr noundef %pbuf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %addr = getelementptr inbounds %struct.addBaReq_parm, ptr %pbuf, i32 0, i32 1
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %addr) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %0 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %HT_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 20
  %2 = ptrtoint ptr %HT_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %HT_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp ne i8 %3, 0
  %and4 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and4)
  %cmp = icmp eq i32 %and4, 3
  %or.cond = select i1 %tobool2.not, i1 true, i1 %cmp
  br i1 %or.cond, label %land.lhs.true.if.then6_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

land.lhs.true.if.then6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %and4.old = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and4.old)
  %cmp.old = icmp eq i32 %and4.old, 3
  br i1 %cmp.old, label %lor.lhs.false.if.then6_crit_edge, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %land.lhs.true.if.then6_crit_edge
  %4 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pbuf, align 4
  %conv9 = trunc i32 %5 to i16
  tail call void @issue_action_BA(ptr noundef %padapter, ptr noundef %addr, i8 noundef zeroext 0, i16 noundef zeroext %conv9)
  %addba_retry_timer = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %6, 200
  %call.i = tail call i32 @mod_timer(ptr noundef %addba_retry_timer, i32 noundef %add.i) #17
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  %7 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pbuf, align 4
  %shl = shl nuw i32 1, %8
  %candidate_tid_bitmap = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 38, i32 11
  %9 = ptrtoint ptr %candidate_tid_bitmap to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %candidate_tid_bitmap, align 1
  %11 = trunc i32 %shl to i8
  %12 = xor i8 %11, -1
  %conv13 = and i8 %10, %12
  store i8 %conv13, ptr %candidate_tid_bitmap, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %entry.cleanup_crit_edge
  ret i8 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @chk_bmc_sleepq_cmd(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %do.body

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 62, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %3 = call ptr @memset(ptr %parmbuf, i32 0, i32 16)
  %call1 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call) #17
  %conv = trunc i32 %call1 to i8
  br label %exit

exit:                                             ; preds = %do.body, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv, %do.body ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @set_tx_beacon_cmd(ptr noundef %padapter) local_unnamed_addr #2 align 64 {
entry:
  %ssid_len_ori.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 872) #17
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call) #17
  br label %exit

if.end4:                                          ; preds = %if.end
  %network5 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %0 = call ptr @memcpy(ptr %call1, ptr %network5, i32 872)
  %add.ptr = getelementptr %struct.wlan_bssid_ex, ptr %call1, i32 0, i32 12, i32 12
  %ie_length = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call1, i32 0, i32 11
  %1 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %ie_length, align 1
  %sub = add i32 %2, -12
  %hidden_ssid_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 33
  %3 = ptrtoint ptr %hidden_ssid_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hidden_ssid_mode, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ssid_len_ori.i) #17
  %5 = ptrtoint ptr %ssid_len_ori.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %ssid_len_ori.i, align 4, !annotation !152
  %call.i = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %ssid_len_ori.i, i32 noundef %sub) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end4.update_hidden_ssid.exit_crit_edge, label %land.lhs.true.i

if.end4.update_hidden_ssid.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_hidden_ssid.exit

land.lhs.true.i:                                  ; preds = %if.end4
  %6 = ptrtoint ptr %ssid_len_ori.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ssid_len_ori.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp sgt i32 %7, 0
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.update_hidden_ssid.exit_crit_edge

land.lhs.true.i.update_hidden_ssid.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_hidden_ssid.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %8 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %4, label %if.then.i.update_hidden_ssid.exit_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb4.i
  ]

if.then.i.update_hidden_ssid.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %update_hidden_ssid.exit

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %7
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.neg.i = add i32 %sub, %sub.ptr.rhs.cast.i
  %sub.i = sub i32 %sub.ptr.sub.neg.i, %sub.ptr.lhs.cast.i
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx.i, align 1
  %10 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr1.i, i32 %sub.i)
  %11 = ptrtoint ptr %ssid_len_ori.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ssid_len_ori.i, align 4
  %sub3.i = sub i32 0, %12
  br label %update_hidden_ssid.exit

sw.bb4.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx5.i = getelementptr i8, ptr %call.i, i32 2
  %13 = call ptr @memset(ptr %arrayidx5.i, i32 0, i32 %7)
  br label %update_hidden_ssid.exit

update_hidden_ssid.exit:                          ; preds = %sw.bb4.i, %sw.bb.i, %if.then.i.update_hidden_ssid.exit_crit_edge, %land.lhs.true.i.update_hidden_ssid.exit_crit_edge, %if.end4.update_hidden_ssid.exit_crit_edge
  %len_diff.0.i = phi i32 [ 0, %if.then.i.update_hidden_ssid.exit_crit_edge ], [ 0, %sw.bb4.i ], [ %sub3.i, %sw.bb.i ], [ 0, %land.lhs.true.i.update_hidden_ssid.exit_crit_edge ], [ 0, %if.end4.update_hidden_ssid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ssid_len_ori.i) #17
  %14 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %ie_length, align 1
  %add = add i32 %15, %len_diff.0.i
  store i32 %add, ptr %ie_length, align 1
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %18 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 55, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %19 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call1, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %20 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 872, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %21 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %22 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %rspsz, align 4
  %call11 = call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call) #17
  %conv = trunc i32 %call11 to i8
  br label %exit

exit:                                             ; preds = %update_hidden_ssid.exit, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv, %update_hidden_ssid.exit ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mlme_evt_hdl(ptr noundef %padapter, ptr noundef %pbuf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pbuf, null
  br i1 %tobool.not, label %entry._abort_event__crit_edge, label %if.end

entry._abort_event__crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %_abort_event_

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pbuf, align 4
  %shr = lshr i32 %1, 16
  %conv3 = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %conv3)
  %cmp = icmp ugt i32 %conv3, 25
  br i1 %cmp, label %if.end._abort_event__crit_edge, label %if.end6

if.end._abort_event__crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %_abort_event_

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr [26 x %struct.fwevent], ptr @wlanevents, i32 0, i32 %conv3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7.not = icmp eq i32 %3, 0
  %conv12 = and i32 %1, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv12)
  %cmp13.not = icmp eq i32 %3, %conv12
  %or.cond = select i1 %cmp7.not, i1 true, i1 %cmp13.not
  br i1 %or.cond, label %if.end16, label %if.end6._abort_event__crit_edge

if.end6._abort_event__crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %_abort_event_

if.end16:                                         ; preds = %if.end6
  %event_seq = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 7, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event_seq, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %event_seq, i32 1, i32 3, i32 1) #17
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %event_seq, ptr %event_seq, i32 1, ptr elementtype(i32) %event_seq) #17, !srcloc !157
  %add.ptr = getelementptr i32, ptr %pbuf, i32 2
  %tobool17.not = icmp eq ptr %add.ptr, null
  br i1 %tobool17.not, label %if.end16._abort_event__crit_edge, label %if.then18

if.end16._abort_event__crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %_abort_event_

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  %event_callback21 = getelementptr [26 x %struct.fwevent], ptr @wlanevents, i32 0, i32 %conv3, i32 1
  %5 = ptrtoint ptr %event_callback21 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %event_callback21, align 4
  tail call void %6(ptr noundef %padapter, ptr noundef nonnull %add.ptr) #17
  %evt_done_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 7, i32 6
  %7 = ptrtoint ptr %evt_done_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %evt_done_cnt, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %evt_done_cnt, align 4
  br label %_abort_event_

_abort_event_:                                    ; preds = %if.then18, %if.end16._abort_event__crit_edge, %if.end6._abort_event__crit_edge, %if.end._abort_event__crit_edge, %entry._abort_event__crit_edge
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @h2c_msg_hdl(ptr nocapture noundef readnone %padapter, ptr noundef readnone %pbuf) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pbuf, null
  %. = select i1 %tobool.not, i8 4, i8 0
  ret i8 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @chk_bmc_sleepq_hdl(ptr noundef %padapter, ptr nocapture readnone %pbuf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %call = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %tim_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  %0 = ptrtoint ptr %tim_bitmap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tim_bitmap, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool1.not = icmp eq i16 %2, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %sleepq_len = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %sleepq_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sleepq_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  tail call void @msleep(i32 noundef 10) #17
  tail call void @_raw_spin_lock_bh(ptr noundef %xmitpriv) #17
  %sleep_q = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 6
  %5 = ptrtoint ptr %sleep_q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sleep_q, align 4
  %cmp.i.not53 = icmp eq ptr %6, %sleep_q
  br i1 %cmp.i.not53, label %if.then3.for.end_crit_edge, label %if.then3.for.body_crit_edge

if.then3.for.body_crit_edge:                      ; preds = %if.then3
  br label %for.body

if.then3.for.end_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %if.then3.for.body_crit_edge
  %xmitframe_plist.054 = phi ptr [ %tmp.058, %if.end21.for.body_crit_edge ], [ %6, %if.then3.for.body_crit_edge ]
  %7 = ptrtoint ptr %xmitframe_plist.054 to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.058 = load ptr, ptr %xmitframe_plist.054, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %xmitframe_plist.054) #17
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %xmitframe_plist.054, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %xmitframe_plist.054 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xmitframe_plist.054, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %xmitframe_plist.054 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %xmitframe_plist.054, ptr %xmitframe_plist.054, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %xmitframe_plist.054, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %xmitframe_plist.054, ptr %prev.i3.i, align 4
  %16 = ptrtoint ptr %sleepq_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sleepq_len, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %sleepq_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp11.not = icmp ne i32 %dec, 0
  %spec.select = zext i1 %cmp11.not to i8
  %18 = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.054, i32 0, i32 1, i32 33
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select, ptr %18, align 1
  %triggered = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.054, i32 0, i32 1, i32 35
  %20 = ptrtoint ptr %triggered to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %triggered, align 1
  %call18 = tail call zeroext i1 @xmitframe_hiq_filter(ptr noundef %xmitframe_plist.054) #17
  br i1 %call18, label %if.then19, label %list_del_init.exit.if.end21_crit_edge

list_del_init.exit.if.end21_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.then19:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  %qsel = getelementptr inbounds %struct.xmit_frame, ptr %xmitframe_plist.054, i32 0, i32 1, i32 36
  %21 = ptrtoint ptr %qsel to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 17, ptr %qsel, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %list_del_init.exit.if.end21_crit_edge
  %call22 = tail call i32 @rtw_hal_xmitframe_enqueue(ptr noundef %padapter, ptr noundef %xmitframe_plist.054) #17
  %cmp.i.not = icmp eq ptr %tmp.058, %sleep_q
  br i1 %cmp.i.not, label %if.end21.for.end_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %if.end21.for.end_crit_edge, %if.then3.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv) #17
  %call25 = tail call zeroext i8 @rtw_chk_hi_queue_cmd(ptr noundef %padapter) #17
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i8 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_bcmc_stainfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xmitframe_hiq_filter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_xmitframe_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_chk_hi_queue_cmd(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @tx_beacon_hdl(ptr noundef %padapter, ptr nocapture noundef readnone %pbuf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @send_beacon(ptr noundef %padapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call zeroext i8 @chk_bmc_sleepq_hdl(ptr noundef %padapter, ptr undef)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i8 [ 0, %if.end ], [ 4, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_get_ch_setting_union(ptr nocapture noundef readonly %adapter, ptr noundef writeonly %ch, ptr noundef writeonly %bw, ptr noundef writeonly %offset) local_unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj1, align 4
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ch, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %bw, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %bw to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bw, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %offset, null
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %offset, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %padapters = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %padapters to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %padapters, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %6, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %8, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp ne i32 %and.i, 0
  %. = zext i1 %tobool.not.i.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @set_ch_hdl(ptr noundef %padapter, ptr noundef readonly %pbuf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pbuf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %pbuf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pbuf, align 1
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %2 = ptrtoint ptr %cur_channel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %cur_channel, align 8
  %ch_offset = getelementptr inbounds %struct.set_ch_parm, ptr %pbuf, i32 0, i32 2
  %3 = ptrtoint ptr %ch_offset to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ch_offset, align 1
  %cur_ch_offset = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 9
  %5 = ptrtoint ptr %cur_ch_offset to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %cur_ch_offset, align 2
  %bw = getelementptr inbounds %struct.set_ch_parm, ptr %pbuf, i32 0, i32 1
  %6 = ptrtoint ptr %bw to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bw, align 1
  %cur_bwmode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %8 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %cur_bwmode, align 1
  %9 = load i8, ptr %pbuf, align 1
  %10 = load i8, ptr %ch_offset, align 1
  %11 = load i8, ptr %bw, align 1
  %conv = zext i8 %11 to i16
  tail call void @set_channel_bwmode(ptr noundef %padapter, i8 noundef zeroext %9, i8 noundef zeroext %10, i16 noundef zeroext %conv) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.end ], [ 4, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @set_chplan_hdl(ptr noundef %padapter, ptr noundef readonly %pbuf) local_unnamed_addr #2 align 64 {
entry:
  %request = alloca %struct.regulatory_request, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pbuf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %pbuf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pbuf, align 1
  %channel_set = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 12
  %2 = call ptr @memset(ptr %channel_set, i32 0, i32 112)
  %conv.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 88, i8 %1)
  %cmp.i = icmp ult i8 %1, 88
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %1)
  %cmp3.not.i = icmp eq i8 %1, 127
  %or.cond.i = or i1 %cmp.i, %cmp3.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.end.init_channel_set.exit_crit_edge

if.end.init_channel_set.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_channel_set.exit

if.end.i:                                         ; preds = %if.end
  %wireless_mode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 7
  %3 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wireless_mode.i, align 2
  %5 = and i8 %4, 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i.init_channel_set.exit_crit_edge, label %if.then6.i

if.end.i.init_channel_set.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_channel_set.exit

if.then6.i:                                       ; preds = %if.end.i
  br i1 %cmp3.not.i, label %if.then6.i.if.end13.i_crit_edge, label %if.else.i

if.then6.i.if.end13.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i

if.else.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr [88 x %struct.rt_channel_plan_map], ptr @RTW_ChannelPlanMap, i32 0, i32 %conv.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %phi.cast.i = zext i8 %7 to i32
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then6.i.if.end13.i_crit_edge
  %Index2G.0.i = phi i32 [ %phi.cast.i, %if.else.i ], [ 3, %if.then6.i.if.end13.i_crit_edge ]
  %Len.i = getelementptr [7 x %struct.rt_channel_plan_2g], ptr @RTW_ChannelPlan2G, i32 0, i32 %Index2G.0.i, i32 1
  %8 = ptrtoint ptr %Len.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %Len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp20143.not.i = icmp eq i8 %9, 0
  br i1 %cmp20143.not.i, label %if.end13.i.init_channel_set.exit_crit_edge, label %for.body.lr.ph.i

if.end13.i.init_channel_set.exit_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_channel_set.exit

for.body.lr.ph.i:                                 ; preds = %if.end13.i
  %arrayidx18.i = getelementptr [7 x %struct.rt_channel_plan_2g], ptr @RTW_ChannelPlan2G, i32 0, i32 %Index2G.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Index2G.0.i)
  %cmp77.i = icmp eq i32 %Index2G.0.i, 0
  %wide.trip.count.i = zext i8 %9 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %if.end100.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %if.end100.i.for.body.i_crit_edge ]
  %arrayidx25.i = getelementptr [14 x i8], ptr %arrayidx18.i, i32 0, i32 %indvars.iv.i
  %10 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx25.i, align 1
  %arrayidx27.i = getelementptr %struct.rt_channel_info, ptr %channel_set, i32 %indvars.iv.i
  %12 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx27.i, align 4
  %13 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %1, label %lor.lhs.false75.i [
    i8 9, label %for.body.i.if.then34.i_crit_edge
    i8 65, label %for.body.i.if.then34.i_crit_edge22
    i8 10, label %for.body.i.if.then79.i_crit_edge
  ]

for.body.i.if.then79.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then79.i

for.body.i.if.then34.i_crit_edge22:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then34.i

for.body.i.if.then34.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then34.i

if.then34.i:                                      ; preds = %for.body.i.if.then34.i_crit_edge, %for.body.i.if.then34.i_crit_edge22
  %14 = add i8 %11, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %14)
  %15 = icmp ult i8 %14, 11
  br i1 %15, label %if.then48.i, label %if.else51.i

if.then48.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #19
  %ScanType.i = getelementptr %struct.rt_channel_info, ptr %channel_set, i32 %indvars.iv.i, i32 1
  %16 = ptrtoint ptr %ScanType.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %ScanType.i, align 4
  br label %if.end100.i

if.else51.i:                                      ; preds = %if.then34.i
  %17 = add i8 %11, -12
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %18 = icmp ult i8 %17, 3
  br i1 %18, label %if.then65.i, label %if.else51.i.if.end100.i_crit_edge

if.else51.i.if.end100.i_crit_edge:                ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end100.i

if.then65.i:                                      ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #19
  %ScanType68.i = getelementptr %struct.rt_channel_info, ptr %channel_set, i32 %indvars.iv.i, i32 1
  %19 = ptrtoint ptr %ScanType68.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ScanType68.i, align 4
  br label %if.end100.i

lor.lhs.false75.i:                                ; preds = %for.body.i
  br i1 %cmp77.i, label %lor.lhs.false75.i.if.then79.i_crit_edge, label %if.else95.i

lor.lhs.false75.i.if.then79.i_crit_edge:          ; preds = %lor.lhs.false75.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then79.i

if.then79.i:                                      ; preds = %lor.lhs.false75.i.if.then79.i_crit_edge, %for.body.i.if.then79.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %11)
  %cmp84.i = icmp ult i8 %11, 12
  %ScanType89.i = getelementptr %struct.rt_channel_info, ptr %channel_set, i32 %indvars.iv.i, i32 1
  br i1 %cmp84.i, label %if.then86.i, label %if.else90.i

if.then86.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #19
  %20 = ptrtoint ptr %ScanType89.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %ScanType89.i, align 4
  br label %if.end100.i

if.else90.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #19
  %21 = ptrtoint ptr %ScanType89.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ScanType89.i, align 4
  br label %if.end100.i

if.else95.i:                                      ; preds = %lor.lhs.false75.i
  call void @__sanitizer_cov_trace_pc() #19
  %ScanType98.i = getelementptr %struct.rt_channel_info, ptr %channel_set, i32 %indvars.iv.i, i32 1
  %22 = ptrtoint ptr %ScanType98.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %ScanType98.i, align 4
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.else95.i, %if.else90.i, %if.then86.i, %if.then65.i, %if.else51.i.if.end100.i_crit_edge, %if.then48.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %if.end100.i.init_channel_set.exit_crit_edge, label %if.end100.i.for.body.i_crit_edge

if.end100.i.for.body.i_crit_edge:                 ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

if.end100.i.init_channel_set.exit_crit_edge:      ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_channel_set.exit

init_channel_set.exit:                            ; preds = %if.end100.i.init_channel_set.exit_crit_edge, %if.end13.i.init_channel_set.exit_crit_edge, %if.end.i.init_channel_set.exit_crit_edge, %if.end.init_channel_set.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %if.end.init_channel_set.exit_crit_edge ], [ 0, %if.end.i.init_channel_set.exit_crit_edge ], [ 0, %if.end13.i.init_channel_set.exit_crit_edge ], [ %9, %if.end100.i.init_channel_set.exit_crit_edge ]
  %max_chan_nums = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 11
  %23 = ptrtoint ptr %max_chan_nums to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %retval.0.i, ptr %max_chan_nums, align 4
  %channel_list = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 13
  tail call fastcc void @init_channel_list(ptr noundef %padapter, ptr noundef %channel_set, i8 noundef zeroext %retval.0.i, ptr noundef %channel_list)
  %rtw_wdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 47
  %24 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rtw_wdev, align 4
  %tobool4.not = icmp eq ptr %25, null
  br i1 %tobool4.not, label %init_channel_set.exit.cleanup_crit_edge, label %land.lhs.true

init_channel_set.exit.cleanup_crit_edge:          ; preds = %init_channel_set.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true:                                    ; preds = %init_channel_set.exit
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool6.not = icmp eq ptr %27, null
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %if.then7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %request) #17
  %28 = call ptr @memset(ptr %request, i32 255, i32 44)
  %initiator = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 2
  %29 = ptrtoint ptr %initiator to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %initiator, align 4
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %25, align 4
  call void @rtw_reg_notifier(ptr noundef %31, ptr noundef nonnull %request) #17
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %request) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %land.lhs.true.cleanup_crit_edge, %init_channel_set.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 4, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %init_channel_set.exit.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_reg_notifier(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @set_csa_hdl(ptr nocapture noundef readnone %padapter, ptr nocapture noundef readnone %pbuf) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @tdls_hdl(ptr nocapture noundef readnone %padapter, ptr nocapture noundef readnone %pbuf) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @run_in_thread_hdl(ptr nocapture noundef readnone %padapter, ptr noundef readonly %pbuf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %pbuf, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pbuf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %context = getelementptr inbounds %struct.RunInThread_param, ptr %pbuf, i32 0, i32 1
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  tail call void %1(ptr noundef %3) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 4, %entry.cleanup_crit_edge ], [ 0, %if.then1 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @action_public_str(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_cfg80211_rx_action(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_xmitframe_ext(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_xmitbuf_ext(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_dummy_event_callback(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_survey_event_callback(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_surveydone_event_callback(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_joinbss_event_callback(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_stassoc_event_callback(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_stadel_event_callback(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_atimdone_event_callback(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fwdbg_event_callback(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_cpwm_event_callback(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_wmm_event_callback(ptr noundef, ptr noundef) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nobuiltin }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !42, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !137, !138, !140}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @RTW_WPA_OUI, !1, !"RTW_WPA_OUI", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 57, i32 15}
!2 = !{ptr @WMM_OUI, !3, !"WMM_OUI", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 58, i32 15}
!4 = !{ptr @WPS_OUI, !5, !"WPS_OUI", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 59, i32 15}
!6 = !{ptr @P2P_OUI, !7, !"P2P_OUI", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 60, i32 15}
!8 = !{ptr @WFD_OUI, !9, !"WFD_OUI", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 61, i32 15}
!10 = !{ptr @WMM_INFO_OUI, !11, !"WMM_INFO_OUI", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 63, i32 15}
!12 = !{ptr @WMM_PARA_OUI, !13, !"WMM_PARA_OUI", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 64, i32 15}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 634, i32 6}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @OnBeacon.__UNIQUE_ID_ddebug345, !15, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!20 = !{ptr @OnAuth.stat, !21, !"stat", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 688, i32 25}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 930, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @OnAuthClient.__UNIQUE_ID_ddebug346, !23, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 1489, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @OnDeAuth.__UNIQUE_ID_ddebug347, !27, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 1529, i32 3}
!32 = !{ptr @OnDeAuth.__UNIQUE_ID_ddebug348, !31, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 1563, i32 3}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @OnDisassoc.__UNIQUE_ID_ddebug349, !34, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 1585, i32 3}
!39 = !{ptr @OnDisassoc.__UNIQUE_ID_ddebug350, !38, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!40 = !{ptr @dump_mgntframe_and_wait_ack.seq_no, !41, !"seq_no", i1 false, i1 false}
!41 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 2066, i32 12}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 2390, i32 11}
!44 = !{ptr @__func__.issue_probersp, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 2391, i32 11}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 4223, i32 2}
!48 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @start_clnt_auth.__UNIQUE_ID_ddebug351, !47, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 5063, i32 6}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @linked_status_chk.__UNIQUE_ID_ddebug352, !51, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 5674, i32 3}
!56 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @setkey_hdl.__UNIQUE_ID_ddebug355, !55, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 5705, i32 3}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @set_stakey_hdl.__UNIQUE_ID_ddebug356, !59, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 5719, i32 4}
!64 = !{ptr @set_stakey_hdl.__UNIQUE_ID_ddebug357, !63, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 5726, i32 3}
!67 = !{ptr @set_stakey_hdl.__UNIQUE_ID_ddebug358, !66, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!68 = distinct !{null, !69, !"RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE", i1 false, i1 false}
!69 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 169, i32 35}
!70 = !{ptr @RTW_ChannelPlanMap, !71, !"RTW_ChannelPlanMap", i1 false, i1 false}
!71 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 81, i32 35}
!72 = !{ptr @RTW_ChannelPlan2G, !73, !"RTW_ChannelPlan2G", i1 false, i1 false}
!73 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 71, i32 34}
!74 = !{ptr @init_channel_list.op_class, !75, !"op_class", i1 false, i1 false}
!75 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 288, i32 41}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 15, i32 19}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 16, i32 19}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 17, i32 20}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 18, i32 20}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 19, i32 19}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 20, i32 19}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 25, i32 10}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 28, i32 16}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 30, i32 16}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 32, i32 17}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 33, i32 22}
!98 = !{ptr @mlme_sta_tbl, !99, !"mlme_sta_tbl", i1 false, i1 false}
!99 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 14, i32 28}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 1799, i32 30}
!102 = distinct !{null, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 37, i32 37}
!104 = distinct !{null, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 38, i32 26}
!106 = distinct !{null, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 39, i32 26}
!108 = distinct !{null, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 40, i32 27}
!110 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 41, i32 29}
!112 = distinct !{null, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 42, i32 40}
!114 = distinct !{null, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 43, i32 25}
!116 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 44, i32 25}
!118 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 45, i32 31}
!120 = distinct !{null, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 46, i32 38}
!122 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 47, i32 37}
!124 = distinct !{null, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 48, i32 26}
!126 = distinct !{null, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 49, i32 26}
!128 = distinct !{null, !129, !"OnAction_tbl", i1 false, i1 false}
!129 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 36, i32 30}
!130 = !{ptr @REALTEK_96B_IE, !131, !"REALTEK_96B_IE", i1 false, i1 false}
!131 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 66, i32 22}
!132 = !{ptr @null_addr, !133, !"null_addr", i1 false, i1 false}
!133 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 52, i32 11}
!134 = !{ptr @.str.49, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 5524, i32 5}
!136 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @rtw_scan_ch_decision.__UNIQUE_ID_ddebug353, !135, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!138 = !{ptr @rtw_scan_ch_decision.__UNIQUE_ID_ddebug354, !139, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!139 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 5546, i32 5}
!140 = !{ptr @wlanevents, !141, !"wlanevents", i1 false, i1 false}
!141 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme_ext.c", i32 5823, i32 23}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{i8 0, i8 2}
!152 = !{!"auto-init"}
!153 = !{i64 2148967189, i64 2148967194, i64 2148967207, i64 2148967251, i64 2148967285, i64 2148967306}
!154 = !{i64 2148587529}
!155 = !{i64 2148502814, i64 2148502846, i64 2148502875, i64 2148502909, i64 2148502940, i64 2148502963}
!156 = !{i64 2148587758}
!157 = !{i64 2148502094, i64 2148502120, i64 2148502149, i64 2148502183, i64 2148502214, i64 2148502237}
