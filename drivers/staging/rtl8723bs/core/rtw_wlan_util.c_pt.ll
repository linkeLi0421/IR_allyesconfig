; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/core/rtw_wlan_util.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/core/rtw_wlan_util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.rt_channel_info = type { i8, i32 }
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
%struct.dvobj_priv = type { ptr, i32, %struct.debug_priv, %struct.spinlock, [32 x i32], %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i32, ptr, %struct.cam_ctl_t, [32 x %struct.cam_entry_cache], [2 x i32], [4 x i32], [8 x i8], i8, %struct.atomic_t, %struct.atomic_t, %struct.pwrctrl_priv, %struct.rtw_traffic_statistics, %struct.sdio_data }
%struct.debug_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cam_ctl_t = type { %struct.spinlock, i64 }
%struct.cam_entry_cache = type { i16, [6 x i8], [16 x i8] }
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.work_struct, i8, %struct.work_struct, %struct.timer_list, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.timer_list, ptr, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i32] }
%struct.rtw_traffic_statistics = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32 }
%struct.sdio_data = type { i8, i8, i8, i32, ptr, ptr }
%struct.ndis_80211_var_ie = type { i8, i8, [0 x i8] }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rtw_camid_alloc.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8723bs\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw_camid_alloc\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/staging/rtl8723bs/core/rtw_wlan_util.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(%s) group key with invalid key id:%u\0A\00", [55 x i8] zeroinitializer }, align 32
@rtw_camid_alloc.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s(%s) group key id:%u the same key id as pairwise key\0A\00", [40 x i8] zeroinitializer }, align 32
@rtw_camid_alloc.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(%s) pairwise key with %pM id:%u no room\0A\00", [52 x i8] zeroinitializer }, align 32
@rtw_camid_alloc.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(%s) group key id:%u no room\0A\00", [32 x i8] zeroinitializer }, align 32
@WMM_PARA_OUI = external dso_local global [0 x i8], align 1
@RTW_WPA_OUI = external dso_local global [0 x i8], align 1
@WPA_TKIP_CIPHER = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\02", [28 x i8] zeroinitializer }, align 32
@RSN_TKIP_CIPHER = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\0F\AC\02", [28 x i8] zeroinitializer }, align 32
@ARTHEROS_OUI1 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\03\7F", [29 x i8] zeroinitializer }, align 32
@ARTHEROS_OUI2 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\13t", [29 x i8] zeroinitializer }, align 32
@BROADCOM_OUI1 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\10\18", [29 x i8] zeroinitializer }, align 32
@BROADCOM_OUI2 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\0A\F7", [29 x i8] zeroinitializer }, align 32
@BROADCOM_OUI3 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\05\B5", [29 x i8] zeroinitializer }, align 32
@MARVELL_OUI = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00PC", [29 x i8] zeroinitializer }, align 32
@RALINK_OUI = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\0CC", [29 x i8] zeroinitializer }, align 32
@CISCO_OUI = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00@\96", [29 x i8] zeroinitializer }, align 32
@REALTEK_OUI = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\E0L", [29 x i8] zeroinitializer }, align 32
@AIRGOCAP_OUI = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\0A\F5", [29 x i8] zeroinitializer }, align 32
@rtw_basic_rate_ofdm = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\8C\98\B0", [29 x i8] zeroinitializer }, align 32
@__const.rtw_release_macid.bc_addr = private unnamed_addr constant [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@switch.table.ratetbl_val_2wifirate = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\02\04\0B\16\0C\12\18$0H`l", [20 x i8] zeroinitializer }, align 32
@switch.table.is_basicrate = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\02\04\0B\16\0C\12\18$0H`l", [20 x i8] zeroinitializer }, align 32
@switch.table.ratetbl2rateset = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\02\04\0B\16\0C\12\18$0H`l", [20 x i8] zeroinitializer }, align 32
@switch.table.ratetbl2rateset.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\02\04\0B\16\0C\12\18$0H`l", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 3, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 254, i64 255]
@__sancov_gen_cov_switch_values.9 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.10 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.11 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.12 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.13 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.14 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.15 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.16 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.17 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.18 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.19 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.20 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.21 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.22 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.23 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.24 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 8, i64 42, i64 61, i64 221]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 221]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 4, i64 8]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 617, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 644, i32 5 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 656, i32 5 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 661, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"WPA_TKIP_CIPHER\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 25, i32 22 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"RSN_TKIP_CIPHER\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 24, i32 22 }
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"ARTHEROS_OUI1\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 12, i32 22 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"ARTHEROS_OUI2\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 13, i32 22 }
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"BROADCOM_OUI1\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 15, i32 22 }
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"BROADCOM_OUI2\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 16, i32 22 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"BROADCOM_OUI3\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 17, i32 22 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"MARVELL_OUI\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 20, i32 22 }
@___asan_gen_.81 = private unnamed_addr constant [11 x i8] c"RALINK_OUI\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 21, i32 22 }
@___asan_gen_.84 = private unnamed_addr constant [10 x i8] c"CISCO_OUI\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 19, i32 22 }
@___asan_gen_.87 = private unnamed_addr constant [12 x i8] c"REALTEK_OUI\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 22, i32 22 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"AIRGOCAP_OUI\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 23, i32 22 }
@___asan_gen_.93 = private unnamed_addr constant [20 x i8] c"rtw_basic_rate_ofdm\00", align 1
@___asan_gen_.94 = private constant [50 x i8] c"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 41, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant [35 x i8] c"switch.table.ratetbl_val_2wifirate\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [26 x i8] c"switch.table.is_basicrate\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [29 x i8] c"switch.table.ratetbl2rateset\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [31 x i8] c"switch.table.ratetbl2rateset.7\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @WPA_TKIP_CIPHER, ptr @RSN_TKIP_CIPHER, ptr @ARTHEROS_OUI1, ptr @ARTHEROS_OUI2, ptr @BROADCOM_OUI1, ptr @BROADCOM_OUI2, ptr @BROADCOM_OUI3, ptr @MARVELL_OUI, ptr @RALINK_OUI, ptr @CISCO_OUI, ptr @REALTEK_OUI, ptr @AIRGOCAP_OUI, ptr @rtw_basic_rate_ofdm, ptr @switch.table.ratetbl_val_2wifirate, ptr @switch.table.is_basicrate, ptr @switch.table.ratetbl2rateset, ptr @switch.table.ratetbl2rateset.7], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_TKIP_CIPHER to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_TKIP_CIPHER to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ARTHEROS_OUI1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ARTHEROS_OUI2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BROADCOM_OUI1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BROADCOM_OUI2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BROADCOM_OUI3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MARVELL_OUI to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RALINK_OUI to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CISCO_OUI to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REALTEK_OUI to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AIRGOCAP_OUI to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_basic_rate_ofdm to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ratetbl_val_2wifirate to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.is_basicrate to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ratetbl2rateset to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ratetbl2rateset.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @networktype_to_raid_ex(ptr nocapture noundef readnone %adapter, ptr nocapture noundef readonly %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %wireless_mode = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 30
  %0 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wireless_mode, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %sw.default [
    i8 1, label %entry.sw.epilog_crit_edge
    i8 2, label %sw.bb1
    i8 3, label %sw.bb2
    i8 8, label %entry.sw.bb3_crit_edge
    i8 10, label %entry.sw.bb3_crit_edge8
    i8 9, label %entry.sw.bb4_crit_edge
    i8 11, label %entry.sw.bb4_crit_edge9
  ]

entry.sw.bb4_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb4

entry.sw.bb3_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb3

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge9
  %bw_mode = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 31
  %3 = ptrtoint ptr %bw_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bw_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  %. = select i1 %cmp, i8 3, i8 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %raid.0 = phi i8 [ 0, %sw.default ], [ 5, %sw.bb3 ], [ 6, %sw.bb2 ], [ 7, %sw.bb1 ], [ 8, %entry.sw.epilog_crit_edge ], [ %., %sw.bb4 ]
  ret i8 %raid.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @ratetbl_val_2wifirate(i8 noundef zeroext %rate) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %rate, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %0)
  %1 = icmp ult i8 %0, 12
  br i1 %1, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %and = zext i8 %0 to i32
  %switch.gep = getelementptr inbounds [12 x i8], ptr @switch.table.ratetbl_val_2wifirate, i32 0, i32 %and
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %2)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i8 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @is_basicrate(ptr nocapture noundef readonly %padapter, i8 noundef zeroext %rate) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 14, i32 %i.018
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %1)
  %switch = icmp ugt i8 %1, -3
  br i1 %switch, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then:                                          ; preds = %for.body
  %2 = and i8 %1, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %2)
  %3 = icmp ult i8 %2, 12
  br i1 %3, label %switch.lookup, label %if.then.ratetbl_val_2wifirate.exit_crit_edge

if.then.ratetbl_val_2wifirate.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %ratetbl_val_2wifirate.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %and.i = zext i8 %2 to i32
  %switch.gep = getelementptr inbounds [12 x i8], ptr @switch.table.is_basicrate, i32 0, i32 %and.i
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %4)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %ratetbl_val_2wifirate.exit

ratetbl_val_2wifirate.exit:                       ; preds = %switch.lookup, %if.then.ratetbl_val_2wifirate.exit_crit_edge
  %retval.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %if.then.ratetbl_val_2wifirate.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i, i8 %rate)
  %cmp8 = icmp eq i8 %retval.0.i, %rate
  br i1 %cmp8, label %ratetbl_val_2wifirate.exit.cleanup_crit_edge, label %ratetbl_val_2wifirate.exit.for.inc_crit_edge

ratetbl_val_2wifirate.exit.for.inc_crit_edge:     ; preds = %ratetbl_val_2wifirate.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

ratetbl_val_2wifirate.exit.cleanup_crit_edge:     ; preds = %ratetbl_val_2wifirate.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.inc:                                          ; preds = %ratetbl_val_2wifirate.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %ratetbl_val_2wifirate.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %ratetbl_val_2wifirate.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ratetbl2rateset(ptr nocapture noundef readonly %padapter, ptr nocapture noundef writeonly %rateset) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %len.026 = phi i32 [ 0, %entry ], [ %len.1, %for.inc.for.body_crit_edge ]
  %i.025 = phi i32 [ 0, %entry ], [ %inc8, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 15, i32 %i.025
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %1, label %sw.default [
    i8 -1, label %for.body.cleanup_crit_edge
    i8 -2, label %for.body.for.inc_crit_edge
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

sw.default:                                       ; preds = %for.body
  %3 = and i8 %1, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %3)
  %4 = icmp ult i8 %3, 12
  br i1 %4, label %switch.lookup, label %sw.default.ratetbl_val_2wifirate.exit_crit_edge

sw.default.ratetbl_val_2wifirate.exit_crit_edge:  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #24
  br label %ratetbl_val_2wifirate.exit

switch.lookup:                                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #24
  %and.i = zext i8 %3 to i32
  %switch.gep = getelementptr inbounds [12 x i8], ptr @switch.table.ratetbl2rateset, i32 0, i32 %and.i
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %5)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %ratetbl_val_2wifirate.exit

ratetbl_val_2wifirate.exit:                       ; preds = %switch.lookup, %sw.default.ratetbl_val_2wifirate.exit_crit_edge
  %retval.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %sw.default.ratetbl_val_2wifirate.exit_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %ratetbl_val_2wifirate.exit
  %i.018.i = phi i32 [ 0, %ratetbl_val_2wifirate.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 14, i32 %i.018.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %7)
  %switch.i = icmp ugt i8 %7, -3
  br i1 %switch.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %8 = and i8 %7, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %8)
  %9 = icmp ult i8 %8, 12
  br i1 %9, label %switch.lookup27, label %if.then.i.ratetbl_val_2wifirate.exit.i_crit_edge

if.then.i.ratetbl_val_2wifirate.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ratetbl_val_2wifirate.exit.i

switch.lookup27:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  %and.i.i = zext i8 %8 to i32
  %switch.gep28 = getelementptr inbounds [12 x i8], ptr @switch.table.ratetbl2rateset.7, i32 0, i32 %and.i.i
  %10 = ptrtoint ptr %switch.gep28 to i32
  call void @__asan_load1_noabort(i32 %10)
  %switch.load29 = load i8, ptr %switch.gep28, align 1
  br label %ratetbl_val_2wifirate.exit.i

ratetbl_val_2wifirate.exit.i:                     ; preds = %switch.lookup27, %if.then.i.ratetbl_val_2wifirate.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %switch.load29, %switch.lookup27 ], [ 0, %if.then.i.ratetbl_val_2wifirate.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i.i, i8 %retval.0.i)
  %cmp8.i = icmp eq i8 %retval.0.i.i, %retval.0.i
  br i1 %cmp8.i, label %11, label %ratetbl_val_2wifirate.exit.i.for.inc.i_crit_edge

ratetbl_val_2wifirate.exit.i.for.inc.i_crit_edge: ; preds = %ratetbl_val_2wifirate.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.i

for.inc.i:                                        ; preds = %ratetbl_val_2wifirate.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %for.inc.i.is_basicrate.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

for.inc.i.is_basicrate.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %is_basicrate.exit

11:                                               ; preds = %ratetbl_val_2wifirate.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  %12 = or i8 %retval.0.i, -128
  br label %is_basicrate.exit

is_basicrate.exit:                                ; preds = %11, %for.inc.i.is_basicrate.exit_crit_edge
  %13 = phi i8 [ %12, %11 ], [ %retval.0.i, %for.inc.i.is_basicrate.exit_crit_edge ]
  %arrayidx7 = getelementptr i8, ptr %rateset, i32 %len.026
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx7, align 1
  %inc = add i32 %len.026, 1
  br label %for.inc

for.inc:                                          ; preds = %is_basicrate.exit, %for.body.for.inc_crit_edge
  %len.1 = phi i32 [ %inc, %is_basicrate.exit ], [ %len.026, %for.body.for.inc_crit_edge ]
  %inc8 = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc8, 13
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %len.0.lcssa = phi i32 [ %len.1, %for.inc.cleanup_crit_edge ], [ %len.026, %for.body.cleanup_crit_edge ]
  ret i32 %len.0.lcssa
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @get_rate_set(ptr nocapture noundef readonly %padapter, ptr nocapture noundef writeonly %pbssrate, ptr nocapture noundef writeonly %bssrate_len) local_unnamed_addr #5 align 64 {
entry:
  %supportedrates = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %supportedrates) #22
  %0 = call ptr @memset(ptr %supportedrates, i32 0, i32 13)
  %call = call i32 @ratetbl2rateset(ptr noundef %padapter, ptr noundef nonnull %supportedrates)
  %1 = ptrtoint ptr %bssrate_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %bssrate_len, align 4
  %2 = call ptr @memcpy(ptr %pbssrate, ptr %supportedrates, i32 %call)
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %supportedrates) #22
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @set_mcs_rate_by_mask(ptr nocapture noundef %mcs_set, i32 noundef %mask) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %mask, 8
  %shr3 = lshr i32 %mask, 16
  %shr6 = lshr i32 %mask, 24
  %0 = ptrtoint ptr %mcs_set to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mcs_set, align 1
  %2 = trunc i32 %mask to i8
  %conv12 = and i8 %1, %2
  store i8 %conv12, ptr %mcs_set, align 1
  %arrayidx14 = getelementptr i8, ptr %mcs_set, i32 1
  %3 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx14, align 1
  %5 = trunc i32 %shr to i8
  %conv17 = and i8 %4, %5
  store i8 %conv17, ptr %arrayidx14, align 1
  %arrayidx19 = getelementptr i8, ptr %mcs_set, i32 2
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx19, align 1
  %8 = trunc i32 %shr3 to i8
  %conv22 = and i8 %7, %8
  store i8 %conv22, ptr %arrayidx19, align 1
  %arrayidx24 = getelementptr i8, ptr %mcs_set, i32 3
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx24, align 1
  %11 = trunc i32 %shr6 to i8
  %conv27 = and i8 %10, %11
  store i8 %conv27, ptr %arrayidx24, align 1
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @UpdateBrateTbl(ptr nocapture noundef readnone %Adapter, ptr nocapture noundef %mBratesOS) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mBratesOS to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mBratesOS, align 1
  %2 = and i8 %1, 127
  %conv4 = zext i8 %2 to i32
  %3 = zext i32 %conv4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %conv4, label %entry.for.inc_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge14
    i32 11, label %entry.sw.bb_crit_edge15
    i32 22, label %entry.sw.bb_crit_edge16
    i32 12, label %entry.sw.bb_crit_edge17
    i32 24, label %entry.sw.bb_crit_edge18
    i32 48, label %entry.sw.bb_crit_edge19
  ]

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb

entry.sw.bb_crit_edge18:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge14, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16, %entry.sw.bb_crit_edge17, %entry.sw.bb_crit_edge18, %entry.sw.bb_crit_edge19
  %4 = or i8 %1, -128
  %5 = ptrtoint ptr %mBratesOS to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %mBratesOS, align 1
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr i8, ptr %mBratesOS, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.1, align 1
  %8 = and i8 %7, 127
  %conv4.1 = zext i8 %8 to i32
  %9 = zext i32 %conv4.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %conv4.1, label %for.inc.for.inc.1_crit_edge [
    i32 2, label %for.inc.sw.bb.1_crit_edge
    i32 4, label %for.inc.sw.bb.1_crit_edge20
    i32 11, label %for.inc.sw.bb.1_crit_edge21
    i32 22, label %for.inc.sw.bb.1_crit_edge22
    i32 12, label %for.inc.sw.bb.1_crit_edge23
    i32 24, label %for.inc.sw.bb.1_crit_edge24
    i32 48, label %for.inc.sw.bb.1_crit_edge25
  ]

for.inc.sw.bb.1_crit_edge25:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge24:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge23:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge22:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge21:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge20:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.1

sw.bb.1:                                          ; preds = %for.inc.sw.bb.1_crit_edge, %for.inc.sw.bb.1_crit_edge20, %for.inc.sw.bb.1_crit_edge21, %for.inc.sw.bb.1_crit_edge22, %for.inc.sw.bb.1_crit_edge23, %for.inc.sw.bb.1_crit_edge24, %for.inc.sw.bb.1_crit_edge25
  %10 = or i8 %7, -128
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %sw.bb.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr i8, ptr %mBratesOS, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2, align 1
  %14 = and i8 %13, 127
  %conv4.2 = zext i8 %14 to i32
  %15 = zext i32 %conv4.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %conv4.2, label %for.inc.1.for.inc.2_crit_edge [
    i32 2, label %for.inc.1.sw.bb.2_crit_edge
    i32 4, label %for.inc.1.sw.bb.2_crit_edge26
    i32 11, label %for.inc.1.sw.bb.2_crit_edge27
    i32 22, label %for.inc.1.sw.bb.2_crit_edge28
    i32 12, label %for.inc.1.sw.bb.2_crit_edge29
    i32 24, label %for.inc.1.sw.bb.2_crit_edge30
    i32 48, label %for.inc.1.sw.bb.2_crit_edge31
  ]

for.inc.1.sw.bb.2_crit_edge31:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge30:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge29:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge28:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge27:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge26:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.2

sw.bb.2:                                          ; preds = %for.inc.1.sw.bb.2_crit_edge, %for.inc.1.sw.bb.2_crit_edge26, %for.inc.1.sw.bb.2_crit_edge27, %for.inc.1.sw.bb.2_crit_edge28, %for.inc.1.sw.bb.2_crit_edge29, %for.inc.1.sw.bb.2_crit_edge30, %for.inc.1.sw.bb.2_crit_edge31
  %16 = or i8 %13, -128
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %sw.bb.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr i8, ptr %mBratesOS, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.3, align 1
  %20 = and i8 %19, 127
  %conv4.3 = zext i8 %20 to i32
  %21 = zext i32 %conv4.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %conv4.3, label %for.inc.2.for.inc.3_crit_edge [
    i32 2, label %for.inc.2.sw.bb.3_crit_edge
    i32 4, label %for.inc.2.sw.bb.3_crit_edge32
    i32 11, label %for.inc.2.sw.bb.3_crit_edge33
    i32 22, label %for.inc.2.sw.bb.3_crit_edge34
    i32 12, label %for.inc.2.sw.bb.3_crit_edge35
    i32 24, label %for.inc.2.sw.bb.3_crit_edge36
    i32 48, label %for.inc.2.sw.bb.3_crit_edge37
  ]

for.inc.2.sw.bb.3_crit_edge37:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge36:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge35:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge34:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge33:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge32:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.3

sw.bb.3:                                          ; preds = %for.inc.2.sw.bb.3_crit_edge, %for.inc.2.sw.bb.3_crit_edge32, %for.inc.2.sw.bb.3_crit_edge33, %for.inc.2.sw.bb.3_crit_edge34, %for.inc.2.sw.bb.3_crit_edge35, %for.inc.2.sw.bb.3_crit_edge36, %for.inc.2.sw.bb.3_crit_edge37
  %22 = or i8 %19, -128
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %sw.bb.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr i8, ptr %mBratesOS, i32 4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.4, align 1
  %26 = and i8 %25, 127
  %conv4.4 = zext i8 %26 to i32
  %27 = zext i32 %conv4.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %conv4.4, label %for.inc.3.for.inc.4_crit_edge [
    i32 2, label %for.inc.3.sw.bb.4_crit_edge
    i32 4, label %for.inc.3.sw.bb.4_crit_edge38
    i32 11, label %for.inc.3.sw.bb.4_crit_edge39
    i32 22, label %for.inc.3.sw.bb.4_crit_edge40
    i32 12, label %for.inc.3.sw.bb.4_crit_edge41
    i32 24, label %for.inc.3.sw.bb.4_crit_edge42
    i32 48, label %for.inc.3.sw.bb.4_crit_edge43
  ]

for.inc.3.sw.bb.4_crit_edge43:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.4

for.inc.3.sw.bb.4_crit_edge42:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.4

for.inc.3.sw.bb.4_crit_edge41:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.4

for.inc.3.sw.bb.4_crit_edge40:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.4

for.inc.3.sw.bb.4_crit_edge39:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.4

for.inc.3.sw.bb.4_crit_edge38:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.4

for.inc.3.sw.bb.4_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.4

sw.bb.4:                                          ; preds = %for.inc.3.sw.bb.4_crit_edge, %for.inc.3.sw.bb.4_crit_edge38, %for.inc.3.sw.bb.4_crit_edge39, %for.inc.3.sw.bb.4_crit_edge40, %for.inc.3.sw.bb.4_crit_edge41, %for.inc.3.sw.bb.4_crit_edge42, %for.inc.3.sw.bb.4_crit_edge43
  %28 = or i8 %25, -128
  %29 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx.4, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %sw.bb.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr i8, ptr %mBratesOS, i32 5
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.5, align 1
  %32 = and i8 %31, 127
  %conv4.5 = zext i8 %32 to i32
  %33 = zext i32 %conv4.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %conv4.5, label %for.inc.4.for.inc.5_crit_edge [
    i32 2, label %for.inc.4.sw.bb.5_crit_edge
    i32 4, label %for.inc.4.sw.bb.5_crit_edge44
    i32 11, label %for.inc.4.sw.bb.5_crit_edge45
    i32 22, label %for.inc.4.sw.bb.5_crit_edge46
    i32 12, label %for.inc.4.sw.bb.5_crit_edge47
    i32 24, label %for.inc.4.sw.bb.5_crit_edge48
    i32 48, label %for.inc.4.sw.bb.5_crit_edge49
  ]

for.inc.4.sw.bb.5_crit_edge49:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.5

for.inc.4.sw.bb.5_crit_edge48:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.5

for.inc.4.sw.bb.5_crit_edge47:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.5

for.inc.4.sw.bb.5_crit_edge46:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.5

for.inc.4.sw.bb.5_crit_edge45:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.5

for.inc.4.sw.bb.5_crit_edge44:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.5

for.inc.4.sw.bb.5_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.5

sw.bb.5:                                          ; preds = %for.inc.4.sw.bb.5_crit_edge, %for.inc.4.sw.bb.5_crit_edge44, %for.inc.4.sw.bb.5_crit_edge45, %for.inc.4.sw.bb.5_crit_edge46, %for.inc.4.sw.bb.5_crit_edge47, %for.inc.4.sw.bb.5_crit_edge48, %for.inc.4.sw.bb.5_crit_edge49
  %34 = or i8 %31, -128
  %35 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx.5, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %sw.bb.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr i8, ptr %mBratesOS, i32 6
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.6, align 1
  %38 = and i8 %37, 127
  %conv4.6 = zext i8 %38 to i32
  %39 = zext i32 %conv4.6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %conv4.6, label %for.inc.5.for.inc.6_crit_edge [
    i32 2, label %for.inc.5.sw.bb.6_crit_edge
    i32 4, label %for.inc.5.sw.bb.6_crit_edge50
    i32 11, label %for.inc.5.sw.bb.6_crit_edge51
    i32 22, label %for.inc.5.sw.bb.6_crit_edge52
    i32 12, label %for.inc.5.sw.bb.6_crit_edge53
    i32 24, label %for.inc.5.sw.bb.6_crit_edge54
    i32 48, label %for.inc.5.sw.bb.6_crit_edge55
  ]

for.inc.5.sw.bb.6_crit_edge55:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.6

for.inc.5.sw.bb.6_crit_edge54:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.6

for.inc.5.sw.bb.6_crit_edge53:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.6

for.inc.5.sw.bb.6_crit_edge52:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.6

for.inc.5.sw.bb.6_crit_edge51:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.6

for.inc.5.sw.bb.6_crit_edge50:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.6

for.inc.5.sw.bb.6_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.6

sw.bb.6:                                          ; preds = %for.inc.5.sw.bb.6_crit_edge, %for.inc.5.sw.bb.6_crit_edge50, %for.inc.5.sw.bb.6_crit_edge51, %for.inc.5.sw.bb.6_crit_edge52, %for.inc.5.sw.bb.6_crit_edge53, %for.inc.5.sw.bb.6_crit_edge54, %for.inc.5.sw.bb.6_crit_edge55
  %40 = or i8 %37, -128
  %41 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx.6, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %sw.bb.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr i8, ptr %mBratesOS, i32 7
  %42 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.7, align 1
  %44 = and i8 %43, 127
  %conv4.7 = zext i8 %44 to i32
  %45 = zext i32 %conv4.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %conv4.7, label %for.inc.6.for.inc.7_crit_edge [
    i32 2, label %for.inc.6.sw.bb.7_crit_edge
    i32 4, label %for.inc.6.sw.bb.7_crit_edge56
    i32 11, label %for.inc.6.sw.bb.7_crit_edge57
    i32 22, label %for.inc.6.sw.bb.7_crit_edge58
    i32 12, label %for.inc.6.sw.bb.7_crit_edge59
    i32 24, label %for.inc.6.sw.bb.7_crit_edge60
    i32 48, label %for.inc.6.sw.bb.7_crit_edge61
  ]

for.inc.6.sw.bb.7_crit_edge61:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.7

for.inc.6.sw.bb.7_crit_edge60:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.7

for.inc.6.sw.bb.7_crit_edge59:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.7

for.inc.6.sw.bb.7_crit_edge58:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.7

for.inc.6.sw.bb.7_crit_edge57:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.7

for.inc.6.sw.bb.7_crit_edge56:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.7

for.inc.6.sw.bb.7_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.7

sw.bb.7:                                          ; preds = %for.inc.6.sw.bb.7_crit_edge, %for.inc.6.sw.bb.7_crit_edge56, %for.inc.6.sw.bb.7_crit_edge57, %for.inc.6.sw.bb.7_crit_edge58, %for.inc.6.sw.bb.7_crit_edge59, %for.inc.6.sw.bb.7_crit_edge60, %for.inc.6.sw.bb.7_crit_edge61
  %46 = or i8 %43, -128
  %47 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx.7, align 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %sw.bb.7, %for.inc.6.for.inc.7_crit_edge
  %arrayidx.8 = getelementptr i8, ptr %mBratesOS, i32 8
  %48 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.8, align 1
  %50 = and i8 %49, 127
  %conv4.8 = zext i8 %50 to i32
  %51 = zext i32 %conv4.8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %conv4.8, label %for.inc.7.for.inc.8_crit_edge [
    i32 2, label %for.inc.7.sw.bb.8_crit_edge
    i32 4, label %for.inc.7.sw.bb.8_crit_edge62
    i32 11, label %for.inc.7.sw.bb.8_crit_edge63
    i32 22, label %for.inc.7.sw.bb.8_crit_edge64
    i32 12, label %for.inc.7.sw.bb.8_crit_edge65
    i32 24, label %for.inc.7.sw.bb.8_crit_edge66
    i32 48, label %for.inc.7.sw.bb.8_crit_edge67
  ]

for.inc.7.sw.bb.8_crit_edge67:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.8

for.inc.7.sw.bb.8_crit_edge66:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.8

for.inc.7.sw.bb.8_crit_edge65:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.8

for.inc.7.sw.bb.8_crit_edge64:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.8

for.inc.7.sw.bb.8_crit_edge63:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.8

for.inc.7.sw.bb.8_crit_edge62:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.8

for.inc.7.sw.bb.8_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.8

sw.bb.8:                                          ; preds = %for.inc.7.sw.bb.8_crit_edge, %for.inc.7.sw.bb.8_crit_edge62, %for.inc.7.sw.bb.8_crit_edge63, %for.inc.7.sw.bb.8_crit_edge64, %for.inc.7.sw.bb.8_crit_edge65, %for.inc.7.sw.bb.8_crit_edge66, %for.inc.7.sw.bb.8_crit_edge67
  %52 = or i8 %49, -128
  %53 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx.8, align 1
  br label %for.inc.8

for.inc.8:                                        ; preds = %sw.bb.8, %for.inc.7.for.inc.8_crit_edge
  %arrayidx.9 = getelementptr i8, ptr %mBratesOS, i32 9
  %54 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.9, align 1
  %56 = and i8 %55, 127
  %conv4.9 = zext i8 %56 to i32
  %57 = zext i32 %conv4.9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %conv4.9, label %for.inc.8.for.inc.9_crit_edge [
    i32 2, label %for.inc.8.sw.bb.9_crit_edge
    i32 4, label %for.inc.8.sw.bb.9_crit_edge68
    i32 11, label %for.inc.8.sw.bb.9_crit_edge69
    i32 22, label %for.inc.8.sw.bb.9_crit_edge70
    i32 12, label %for.inc.8.sw.bb.9_crit_edge71
    i32 24, label %for.inc.8.sw.bb.9_crit_edge72
    i32 48, label %for.inc.8.sw.bb.9_crit_edge73
  ]

for.inc.8.sw.bb.9_crit_edge73:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.9

for.inc.8.sw.bb.9_crit_edge72:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.9

for.inc.8.sw.bb.9_crit_edge71:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.9

for.inc.8.sw.bb.9_crit_edge70:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.9

for.inc.8.sw.bb.9_crit_edge69:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.9

for.inc.8.sw.bb.9_crit_edge68:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.9

for.inc.8.sw.bb.9_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.9

sw.bb.9:                                          ; preds = %for.inc.8.sw.bb.9_crit_edge, %for.inc.8.sw.bb.9_crit_edge68, %for.inc.8.sw.bb.9_crit_edge69, %for.inc.8.sw.bb.9_crit_edge70, %for.inc.8.sw.bb.9_crit_edge71, %for.inc.8.sw.bb.9_crit_edge72, %for.inc.8.sw.bb.9_crit_edge73
  %58 = or i8 %55, -128
  %59 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx.9, align 1
  br label %for.inc.9

for.inc.9:                                        ; preds = %sw.bb.9, %for.inc.8.for.inc.9_crit_edge
  %arrayidx.10 = getelementptr i8, ptr %mBratesOS, i32 10
  %60 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.10, align 1
  %62 = and i8 %61, 127
  %conv4.10 = zext i8 %62 to i32
  %63 = zext i32 %conv4.10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %conv4.10, label %for.inc.9.for.inc.10_crit_edge [
    i32 2, label %for.inc.9.sw.bb.10_crit_edge
    i32 4, label %for.inc.9.sw.bb.10_crit_edge74
    i32 11, label %for.inc.9.sw.bb.10_crit_edge75
    i32 22, label %for.inc.9.sw.bb.10_crit_edge76
    i32 12, label %for.inc.9.sw.bb.10_crit_edge77
    i32 24, label %for.inc.9.sw.bb.10_crit_edge78
    i32 48, label %for.inc.9.sw.bb.10_crit_edge79
  ]

for.inc.9.sw.bb.10_crit_edge79:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.10

for.inc.9.sw.bb.10_crit_edge78:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.10

for.inc.9.sw.bb.10_crit_edge77:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.10

for.inc.9.sw.bb.10_crit_edge76:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.10

for.inc.9.sw.bb.10_crit_edge75:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.10

for.inc.9.sw.bb.10_crit_edge74:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.10

for.inc.9.sw.bb.10_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.10

sw.bb.10:                                         ; preds = %for.inc.9.sw.bb.10_crit_edge, %for.inc.9.sw.bb.10_crit_edge74, %for.inc.9.sw.bb.10_crit_edge75, %for.inc.9.sw.bb.10_crit_edge76, %for.inc.9.sw.bb.10_crit_edge77, %for.inc.9.sw.bb.10_crit_edge78, %for.inc.9.sw.bb.10_crit_edge79
  %64 = or i8 %61, -128
  %65 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx.10, align 1
  br label %for.inc.10

for.inc.10:                                       ; preds = %sw.bb.10, %for.inc.9.for.inc.10_crit_edge
  %arrayidx.11 = getelementptr i8, ptr %mBratesOS, i32 11
  %66 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.11, align 1
  %68 = and i8 %67, 127
  %conv4.11 = zext i8 %68 to i32
  %69 = zext i32 %conv4.11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %conv4.11, label %for.inc.10.for.inc.11_crit_edge [
    i32 2, label %for.inc.10.sw.bb.11_crit_edge
    i32 4, label %for.inc.10.sw.bb.11_crit_edge80
    i32 11, label %for.inc.10.sw.bb.11_crit_edge81
    i32 22, label %for.inc.10.sw.bb.11_crit_edge82
    i32 12, label %for.inc.10.sw.bb.11_crit_edge83
    i32 24, label %for.inc.10.sw.bb.11_crit_edge84
    i32 48, label %for.inc.10.sw.bb.11_crit_edge85
  ]

for.inc.10.sw.bb.11_crit_edge85:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.11

for.inc.10.sw.bb.11_crit_edge84:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.11

for.inc.10.sw.bb.11_crit_edge83:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.11

for.inc.10.sw.bb.11_crit_edge82:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.11

for.inc.10.sw.bb.11_crit_edge81:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.11

for.inc.10.sw.bb.11_crit_edge80:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.11

for.inc.10.sw.bb.11_crit_edge:                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.11

sw.bb.11:                                         ; preds = %for.inc.10.sw.bb.11_crit_edge, %for.inc.10.sw.bb.11_crit_edge80, %for.inc.10.sw.bb.11_crit_edge81, %for.inc.10.sw.bb.11_crit_edge82, %for.inc.10.sw.bb.11_crit_edge83, %for.inc.10.sw.bb.11_crit_edge84, %for.inc.10.sw.bb.11_crit_edge85
  %70 = or i8 %67, -128
  %71 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx.11, align 1
  br label %for.inc.11

for.inc.11:                                       ; preds = %sw.bb.11, %for.inc.10.for.inc.11_crit_edge
  %arrayidx.12 = getelementptr i8, ptr %mBratesOS, i32 12
  %72 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.12, align 1
  %74 = and i8 %73, 127
  %conv4.12 = zext i8 %74 to i32
  %75 = zext i32 %conv4.12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %conv4.12, label %for.inc.11.for.inc.12_crit_edge [
    i32 2, label %for.inc.11.sw.bb.12_crit_edge
    i32 4, label %for.inc.11.sw.bb.12_crit_edge86
    i32 11, label %for.inc.11.sw.bb.12_crit_edge87
    i32 22, label %for.inc.11.sw.bb.12_crit_edge88
    i32 12, label %for.inc.11.sw.bb.12_crit_edge89
    i32 24, label %for.inc.11.sw.bb.12_crit_edge90
    i32 48, label %for.inc.11.sw.bb.12_crit_edge91
  ]

for.inc.11.sw.bb.12_crit_edge91:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.12

for.inc.11.sw.bb.12_crit_edge90:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.12

for.inc.11.sw.bb.12_crit_edge89:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.12

for.inc.11.sw.bb.12_crit_edge88:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.12

for.inc.11.sw.bb.12_crit_edge87:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.12

for.inc.11.sw.bb.12_crit_edge86:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.12

for.inc.11.sw.bb.12_crit_edge:                    ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.12

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.12

sw.bb.12:                                         ; preds = %for.inc.11.sw.bb.12_crit_edge, %for.inc.11.sw.bb.12_crit_edge86, %for.inc.11.sw.bb.12_crit_edge87, %for.inc.11.sw.bb.12_crit_edge88, %for.inc.11.sw.bb.12_crit_edge89, %for.inc.11.sw.bb.12_crit_edge90, %for.inc.11.sw.bb.12_crit_edge91
  %76 = or i8 %73, -128
  %77 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx.12, align 1
  br label %for.inc.12

for.inc.12:                                       ; preds = %sw.bb.12, %for.inc.11.for.inc.12_crit_edge
  %arrayidx.13 = getelementptr i8, ptr %mBratesOS, i32 13
  %78 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.13, align 1
  %80 = and i8 %79, 127
  %conv4.13 = zext i8 %80 to i32
  %81 = zext i32 %conv4.13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %conv4.13, label %for.inc.12.for.inc.13_crit_edge [
    i32 2, label %for.inc.12.sw.bb.13_crit_edge
    i32 4, label %for.inc.12.sw.bb.13_crit_edge92
    i32 11, label %for.inc.12.sw.bb.13_crit_edge93
    i32 22, label %for.inc.12.sw.bb.13_crit_edge94
    i32 12, label %for.inc.12.sw.bb.13_crit_edge95
    i32 24, label %for.inc.12.sw.bb.13_crit_edge96
    i32 48, label %for.inc.12.sw.bb.13_crit_edge97
  ]

for.inc.12.sw.bb.13_crit_edge97:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.13

for.inc.12.sw.bb.13_crit_edge96:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.13

for.inc.12.sw.bb.13_crit_edge95:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.13

for.inc.12.sw.bb.13_crit_edge94:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.13

for.inc.12.sw.bb.13_crit_edge93:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.13

for.inc.12.sw.bb.13_crit_edge92:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.13

for.inc.12.sw.bb.13_crit_edge:                    ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.13

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.13

sw.bb.13:                                         ; preds = %for.inc.12.sw.bb.13_crit_edge, %for.inc.12.sw.bb.13_crit_edge92, %for.inc.12.sw.bb.13_crit_edge93, %for.inc.12.sw.bb.13_crit_edge94, %for.inc.12.sw.bb.13_crit_edge95, %for.inc.12.sw.bb.13_crit_edge96, %for.inc.12.sw.bb.13_crit_edge97
  %82 = or i8 %79, -128
  %83 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx.13, align 1
  br label %for.inc.13

for.inc.13:                                       ; preds = %sw.bb.13, %for.inc.12.for.inc.13_crit_edge
  %arrayidx.14 = getelementptr i8, ptr %mBratesOS, i32 14
  %84 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.14, align 1
  %86 = and i8 %85, 127
  %conv4.14 = zext i8 %86 to i32
  %87 = zext i32 %conv4.14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %conv4.14, label %for.inc.13.for.inc.14_crit_edge [
    i32 2, label %for.inc.13.sw.bb.14_crit_edge
    i32 4, label %for.inc.13.sw.bb.14_crit_edge98
    i32 11, label %for.inc.13.sw.bb.14_crit_edge99
    i32 22, label %for.inc.13.sw.bb.14_crit_edge100
    i32 12, label %for.inc.13.sw.bb.14_crit_edge101
    i32 24, label %for.inc.13.sw.bb.14_crit_edge102
    i32 48, label %for.inc.13.sw.bb.14_crit_edge103
  ]

for.inc.13.sw.bb.14_crit_edge103:                 ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.14

for.inc.13.sw.bb.14_crit_edge102:                 ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.14

for.inc.13.sw.bb.14_crit_edge101:                 ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.14

for.inc.13.sw.bb.14_crit_edge100:                 ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.14

for.inc.13.sw.bb.14_crit_edge99:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.14

for.inc.13.sw.bb.14_crit_edge98:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.14

for.inc.13.sw.bb.14_crit_edge:                    ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.14

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.14

sw.bb.14:                                         ; preds = %for.inc.13.sw.bb.14_crit_edge, %for.inc.13.sw.bb.14_crit_edge98, %for.inc.13.sw.bb.14_crit_edge99, %for.inc.13.sw.bb.14_crit_edge100, %for.inc.13.sw.bb.14_crit_edge101, %for.inc.13.sw.bb.14_crit_edge102, %for.inc.13.sw.bb.14_crit_edge103
  %88 = or i8 %85, -128
  %89 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %arrayidx.14, align 1
  br label %for.inc.14

for.inc.14:                                       ; preds = %sw.bb.14, %for.inc.13.for.inc.14_crit_edge
  %arrayidx.15 = getelementptr i8, ptr %mBratesOS, i32 15
  %90 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.15, align 1
  %92 = and i8 %91, 127
  %conv4.15 = zext i8 %92 to i32
  %93 = zext i32 %conv4.15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %conv4.15, label %for.inc.14.for.inc.15_crit_edge [
    i32 2, label %for.inc.14.sw.bb.15_crit_edge
    i32 4, label %for.inc.14.sw.bb.15_crit_edge104
    i32 11, label %for.inc.14.sw.bb.15_crit_edge105
    i32 22, label %for.inc.14.sw.bb.15_crit_edge106
    i32 12, label %for.inc.14.sw.bb.15_crit_edge107
    i32 24, label %for.inc.14.sw.bb.15_crit_edge108
    i32 48, label %for.inc.14.sw.bb.15_crit_edge109
  ]

for.inc.14.sw.bb.15_crit_edge109:                 ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.15

for.inc.14.sw.bb.15_crit_edge108:                 ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.15

for.inc.14.sw.bb.15_crit_edge107:                 ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.15

for.inc.14.sw.bb.15_crit_edge106:                 ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.15

for.inc.14.sw.bb.15_crit_edge105:                 ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.15

for.inc.14.sw.bb.15_crit_edge104:                 ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.15

for.inc.14.sw.bb.15_crit_edge:                    ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb.15

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.15

sw.bb.15:                                         ; preds = %for.inc.14.sw.bb.15_crit_edge, %for.inc.14.sw.bb.15_crit_edge104, %for.inc.14.sw.bb.15_crit_edge105, %for.inc.14.sw.bb.15_crit_edge106, %for.inc.14.sw.bb.15_crit_edge107, %for.inc.14.sw.bb.15_crit_edge108, %for.inc.14.sw.bb.15_crit_edge109
  %94 = or i8 %91, -128
  %95 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx.15, align 1
  br label %for.inc.15

for.inc.15:                                       ; preds = %sw.bb.15, %for.inc.14.for.inc.15_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @UpdateBrateTblForSoftAP(ptr nocapture noundef %bssrateset, i32 noundef %bssratelen) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bssratelen)
  %cmp13.not = icmp eq i32 %bssratelen, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %conv15 = phi i32 [ %conv, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.014 = phi i8 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %bssrateset, i32 %conv15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, 127
  %conv4 = zext i8 %2 to i32
  %3 = zext i32 %conv4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %conv4, label %for.body.for.inc_crit_edge [
    i32 2, label %for.body.sw.bb_crit_edge
    i32 4, label %for.body.sw.bb_crit_edge16
    i32 11, label %for.body.sw.bb_crit_edge17
    i32 22, label %for.body.sw.bb_crit_edge18
  ]

for.body.sw.bb_crit_edge18:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb

for.body.sw.bb_crit_edge17:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb

for.body.sw.bb_crit_edge16:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge16, %for.body.sw.bb_crit_edge17, %for.body.sw.bb_crit_edge18
  %4 = or i8 %1, -128
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %for.body.for.inc_crit_edge
  %inc = add i8 %i.014, 1
  %conv = zext i8 %inc to i32
  %cmp = icmp ult i32 %conv, %bssratelen
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Save_DM_Func_Flag(ptr noundef %padapter) local_unnamed_addr #7 align 64 {
entry:
  %bSaveFlag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bSaveFlag) #22
  %0 = ptrtoint ptr %bSaveFlag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %bSaveFlag, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 25, ptr noundef nonnull %bSaveFlag) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bSaveFlag) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Restore_DM_Func_Flag(ptr noundef %padapter) local_unnamed_addr #7 align 64 {
entry:
  %bSaveFlag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bSaveFlag) #22
  %0 = ptrtoint ptr %bSaveFlag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bSaveFlag, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 25, ptr noundef nonnull %bSaveFlag) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bSaveFlag) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Switch_DM_Func(ptr noundef %padapter, i32 noundef %mode, i8 noundef zeroext %enable) local_unnamed_addr #7 align 64 {
entry:
  %mode.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mode, ptr %mode.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %enable)
  %cmp = icmp eq i8 %enable, 1
  %. = select i1 %cmp, i8 26, i8 27
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext %., ptr noundef nonnull %mode.addr) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Set_MSR(ptr noundef %padapter, i8 noundef zeroext %type) local_unnamed_addr #7 align 64 {
entry:
  %type.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %type.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %type, ptr %type.addr, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 0, ptr noundef nonnull %type.addr) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtw_get_oper_ch(ptr nocapture noundef readonly %adapter) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %dvobj = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %oper_channel = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %oper_channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %oper_channel, align 4
  ret i8 %3
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_set_oper_ch(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %ch) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj1, align 4
  %oper_channel = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %oper_channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %oper_channel, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %ch)
  %cmp.not = icmp eq i8 %3, %ch
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %on_oper_ch_time = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %on_oper_ch_time to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %on_oper_ch_time, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %oper_channel to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %ch, ptr %oper_channel, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtw_get_oper_bw(ptr nocapture noundef readonly %adapter) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %dvobj = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %oper_bwmode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %oper_bwmode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %oper_bwmode, align 1
  ret i8 %3
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_set_oper_bw(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %bw) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %dvobj = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %oper_bwmode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %oper_bwmode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bw, ptr %oper_bwmode, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtw_get_oper_choffset(ptr nocapture noundef readonly %adapter) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %dvobj = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %oper_ch_offset = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %oper_ch_offset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %oper_ch_offset, align 2
  ret i8 %3
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_set_oper_choffset(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %offset) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %dvobj = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %oper_ch_offset = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %oper_ch_offset to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %offset, ptr %oper_ch_offset, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtw_get_center_ch(i8 noundef zeroext %channel, i8 noundef zeroext %chnl_bw, i8 noundef zeroext %chnl_offset) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %chnl_bw)
  %cmp = icmp eq i8 %chnl_bw, 1
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %chnl_offset)
  %cmp3 = icmp eq i8 %chnl_offset, 1
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %add = add i8 %channel, 2
  br label %if.end10

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %sub = add i8 %channel, -2
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5, %entry.if.end10_crit_edge
  %center_ch.0 = phi i8 [ %add, %if.then5 ], [ %sub, %if.else ], [ %channel, %entry.if.end10_crit_edge ]
  ret i8 %center_ch.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_get_on_cur_ch_time(ptr nocapture noundef readonly %adapter) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5, i32 7
  %0 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_channel, align 8
  %dvobj = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %2 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj, align 4
  %oper_channel = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %oper_channel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %oper_channel, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %5)
  %cmp = icmp eq i8 %1, %5
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %on_oper_ch_time = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %on_oper_ch_time to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %on_oper_ch_time, align 8
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %7, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @SelectChannel(ptr noundef %padapter, i8 noundef zeroext %channel) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %setch_mutex = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 7
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %setch_mutex, i32 noundef 0) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj, align 4
  %oper_channel.i = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %oper_channel.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %oper_channel.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %channel)
  %cmp.not.i = icmp eq i8 %5, %channel
  br i1 %cmp.not.i, label %if.end.rtw_set_oper_ch.exit_crit_edge, label %if.then.i

if.end.rtw_set_oper_ch.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %rtw_set_oper_ch.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %on_oper_ch_time.i = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %on_oper_ch_time.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %on_oper_ch_time.i, align 8
  br label %rtw_set_oper_ch.exit

rtw_set_oper_ch.exit:                             ; preds = %if.then.i, %if.end.rtw_set_oper_ch.exit_crit_edge
  %8 = ptrtoint ptr %oper_channel.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %channel, ptr %oper_channel.i, align 4
  tail call void @rtw_hal_set_chan(ptr noundef %padapter, i8 noundef zeroext %channel) #22
  %9 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dvobj, align 4
  %setch_mutex2 = getelementptr inbounds %struct.dvobj_priv, ptr %10, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %setch_mutex2) #22
  br label %return

return:                                           ; preds = %rtw_set_oper_ch.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_chan(ptr noundef, i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_channel_bwmode(ptr noundef %padapter, i8 noundef zeroext %channel, i8 noundef zeroext %channel_offset, i16 noundef zeroext %bwmode) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i16 %bwmode to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv)
  %cmp.i = icmp eq i8 %conv, 1
  br i1 %cmp.i, label %if.then.i, label %entry.rtw_get_center_ch.exit_crit_edge

entry.rtw_get_center_ch.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %rtw_get_center_ch.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %channel_offset)
  %cmp3.i = icmp eq i8 %channel_offset, 1
  br i1 %cmp3.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  %add.i = add i8 %channel, 2
  br label %rtw_get_center_ch.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  %sub.i = add i8 %channel, -2
  br label %rtw_get_center_ch.exit

rtw_get_center_ch.exit:                           ; preds = %if.else.i, %if.then5.i, %entry.rtw_get_center_ch.exit_crit_edge
  %center_ch.0.i = phi i8 [ %add.i, %if.then5.i ], [ %sub.i, %if.else.i ], [ %channel, %entry.rtw_get_center_ch.exit_crit_edge ]
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %setch_mutex = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %setch_mutex, i32 noundef 0) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %rtw_get_center_ch.exit.cleanup_crit_edge

rtw_get_center_ch.exit.cleanup_crit_edge:         ; preds = %rtw_get_center_ch.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %rtw_get_center_ch.exit
  %2 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj, align 4
  %oper_channel.i = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %oper_channel.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %oper_channel.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %channel)
  %cmp.not.i = icmp eq i8 %5, %channel
  br i1 %cmp.not.i, label %if.end.rtw_set_oper_ch.exit_crit_edge, label %if.then.i17

if.end.rtw_set_oper_ch.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %rtw_set_oper_ch.exit

if.then.i17:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %on_oper_ch_time.i = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %on_oper_ch_time.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %on_oper_ch_time.i, align 8
  br label %rtw_set_oper_ch.exit

rtw_set_oper_ch.exit:                             ; preds = %if.then.i17, %if.end.rtw_set_oper_ch.exit_crit_edge
  %8 = ptrtoint ptr %oper_channel.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %channel, ptr %oper_channel.i, align 4
  %9 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dvobj, align 4
  %oper_bwmode.i = getelementptr inbounds %struct.dvobj_priv, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %oper_bwmode.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %oper_bwmode.i, align 1
  %12 = load ptr, ptr %dvobj, align 4
  %oper_ch_offset.i = getelementptr inbounds %struct.dvobj_priv, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %oper_ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %channel_offset, ptr %oper_ch_offset.i, align 2
  %conv3 = zext i16 %bwmode to i32
  tail call void @rtw_hal_set_chnl_bw(ptr noundef %padapter, i8 noundef zeroext %center_ch.0.i, i32 noundef %conv3, i8 noundef zeroext %channel_offset, i8 noundef zeroext 0) #22
  %14 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dvobj, align 4
  %setch_mutex5 = getelementptr inbounds %struct.dvobj_priv, ptr %15, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %setch_mutex5) #22
  br label %cleanup

cleanup:                                          ; preds = %rtw_set_oper_ch.exit, %rtw_get_center_ch.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_chnl_bw(ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @get_my_bssid(ptr noundef readnone %pnetwork) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %mac_address = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pnetwork, i32 0, i32 1
  ret ptr %mac_address
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @get_beacon_interval(ptr noundef %bss) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %ies = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bss, i32 0, i32 12
  %call = tail call ptr @rtw_get_beacon_interval_from_ie(ptr noundef %ies) #22
  %0 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %val.0.copyload = load i16, ptr %call, align 1
  %1 = tail call i16 @llvm.bswap.i16(i16 %val.0.copyload)
  ret i16 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_beacon_interval_from_ie(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @is_client_associated_to_ap(ptr noundef readonly %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %padapter, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %0 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mlmext_info, align 4
  %2 = and i32 %1, 16387
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %2)
  %3 = icmp eq i32 %2, 16386
  %spec.select = zext i1 %3 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @is_client_associated_to_ibss(ptr nocapture noundef readonly %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %0 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mlmext_info, align 4
  %2 = and i32 %1, 16387
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %2)
  %3 = icmp eq i32 %2, 16385
  %retval.0 = zext i1 %3 to i32
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @is_IBSS_empty(ptr nocapture noundef readonly %padapter) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 2, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %status = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40, i32 %i.06, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.cleanup_crit_edge ], [ 1, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @decide_wait_for_beacon_timeout(i32 noundef %bcn_interval) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %bcn_interval, 2
  %0 = tail call i32 @llvm.umin.i32(i32 %shl, i32 20000)
  %1 = tail call i32 @llvm.umax.i32(i32 %0, i32 6000)
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @invalidate_cam_all(ptr noundef %padapter) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj1, align 4
  %cam_ctl2 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 14
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 29, ptr noundef null) #22
  tail call void @_raw_spin_lock_bh(ptr noundef %cam_ctl2) #22
  %bitmap = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 14, i32 1
  %2 = call ptr @memset(ptr %bitmap, i32 0, i32 776)
  tail call void @_raw_spin_unlock_bh(ptr noundef %cam_ctl2) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @read_cam(ptr noundef %padapter, i8 noundef zeroext %entry1, ptr nocapture noundef writeonly %get_key) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %entry1 to i32
  %shl = shl nuw nsw i32 %conv, 3
  %or.i = or i32 %shl, -2147483648
  %call.i = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1648, i32 noundef %or.i) #22
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %count.0.i = phi i32 [ 0, %entry ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %call1.i = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1648) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %inc.i = add nuw nsw i32 %count.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %count.0.i)
  %cmp2.i = icmp ult i32 %count.0.i, 100
  %or.cond.i = select i1 %cmp.i, i1 %cmp2.i, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %for.inc

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.i

for.inc:                                          ; preds = %do.body.i
  %call3.i = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1656) #22
  %or.i.1 = or i32 %shl, -2147483647
  %call.i.1 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1648, i32 noundef %or.i.1) #22
  br label %do.body.i.1

do.body.i.1:                                      ; preds = %do.body.i.1.do.body.i.1_crit_edge, %for.inc
  %count.0.i.1 = phi i32 [ 0, %for.inc ], [ %inc.i.1, %do.body.i.1.do.body.i.1_crit_edge ]
  %call1.i.1 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1648) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %cmp.i.1 = icmp slt i32 %call1.i.1, 0
  %inc.i.1 = add nuw nsw i32 %count.0.i.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %count.0.i.1)
  %cmp2.i.1 = icmp ult i32 %count.0.i.1, 100
  %or.cond.i.1 = select i1 %cmp.i.1, i1 %cmp2.i.1, i1 false
  br i1 %or.cond.i.1, label %do.body.i.1.do.body.i.1_crit_edge, label %for.inc.1

do.body.i.1.do.body.i.1_crit_edge:                ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.i.1

for.inc.1:                                        ; preds = %do.body.i.1
  %call3.i.1 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1656) #22
  %or.i.2 = or i32 %shl, -2147483646
  %call.i.2 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1648, i32 noundef %or.i.2) #22
  br label %do.body.i.2

do.body.i.2:                                      ; preds = %do.body.i.2.do.body.i.2_crit_edge, %for.inc.1
  %count.0.i.2 = phi i32 [ 0, %for.inc.1 ], [ %inc.i.2, %do.body.i.2.do.body.i.2_crit_edge ]
  %call1.i.2 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1648) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %cmp.i.2 = icmp slt i32 %call1.i.2, 0
  %inc.i.2 = add nuw nsw i32 %count.0.i.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %count.0.i.2)
  %cmp2.i.2 = icmp ult i32 %count.0.i.2, 100
  %or.cond.i.2 = select i1 %cmp.i.2, i1 %cmp2.i.2, i1 false
  br i1 %or.cond.i.2, label %do.body.i.2.do.body.i.2_crit_edge, label %for.inc.2

do.body.i.2.do.body.i.2_crit_edge:                ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.i.2

for.inc.2:                                        ; preds = %do.body.i.2
  %call3.i.2 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1656) #22
  %0 = ptrtoint ptr %get_key to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %call3.i.2, ptr %get_key, align 1
  %or.i.3 = or i32 %shl, -2147483645
  %call.i.3 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1648, i32 noundef %or.i.3) #22
  br label %do.body.i.3

do.body.i.3:                                      ; preds = %do.body.i.3.do.body.i.3_crit_edge, %for.inc.2
  %count.0.i.3 = phi i32 [ 0, %for.inc.2 ], [ %inc.i.3, %do.body.i.3.do.body.i.3_crit_edge ]
  %call1.i.3 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1648) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3)
  %cmp.i.3 = icmp slt i32 %call1.i.3, 0
  %inc.i.3 = add nuw nsw i32 %count.0.i.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %count.0.i.3)
  %cmp2.i.3 = icmp ult i32 %count.0.i.3, 100
  %or.cond.i.3 = select i1 %cmp.i.3, i1 %cmp2.i.3, i1 false
  br i1 %or.cond.i.3, label %do.body.i.3.do.body.i.3_crit_edge, label %for.inc.3

do.body.i.3.do.body.i.3_crit_edge:                ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.i.3

for.inc.3:                                        ; preds = %do.body.i.3
  %call3.i.3 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1656) #22
  %add.ptr.3 = getelementptr i8, ptr %get_key, i32 4
  %1 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %call3.i.3, ptr %add.ptr.3, align 1
  %or.i.4 = or i32 %shl, -2147483644
  %call.i.4 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1648, i32 noundef %or.i.4) #22
  br label %do.body.i.4

do.body.i.4:                                      ; preds = %do.body.i.4.do.body.i.4_crit_edge, %for.inc.3
  %count.0.i.4 = phi i32 [ 0, %for.inc.3 ], [ %inc.i.4, %do.body.i.4.do.body.i.4_crit_edge ]
  %call1.i.4 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1648) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.4)
  %cmp.i.4 = icmp slt i32 %call1.i.4, 0
  %inc.i.4 = add nuw nsw i32 %count.0.i.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %count.0.i.4)
  %cmp2.i.4 = icmp ult i32 %count.0.i.4, 100
  %or.cond.i.4 = select i1 %cmp.i.4, i1 %cmp2.i.4, i1 false
  br i1 %or.cond.i.4, label %do.body.i.4.do.body.i.4_crit_edge, label %for.inc.4

do.body.i.4.do.body.i.4_crit_edge:                ; preds = %do.body.i.4
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.i.4

for.inc.4:                                        ; preds = %do.body.i.4
  %call3.i.4 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1656) #22
  %add.ptr.4 = getelementptr i8, ptr %get_key, i32 8
  %2 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %call3.i.4, ptr %add.ptr.4, align 1
  %or.i.5 = or i32 %shl, -2147483643
  %call.i.5 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1648, i32 noundef %or.i.5) #22
  br label %do.body.i.5

do.body.i.5:                                      ; preds = %do.body.i.5.do.body.i.5_crit_edge, %for.inc.4
  %count.0.i.5 = phi i32 [ 0, %for.inc.4 ], [ %inc.i.5, %do.body.i.5.do.body.i.5_crit_edge ]
  %call1.i.5 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1648) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.5)
  %cmp.i.5 = icmp slt i32 %call1.i.5, 0
  %inc.i.5 = add nuw nsw i32 %count.0.i.5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %count.0.i.5)
  %cmp2.i.5 = icmp ult i32 %count.0.i.5, 100
  %or.cond.i.5 = select i1 %cmp.i.5, i1 %cmp2.i.5, i1 false
  br i1 %or.cond.i.5, label %do.body.i.5.do.body.i.5_crit_edge, label %for.inc.5

do.body.i.5.do.body.i.5_crit_edge:                ; preds = %do.body.i.5
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.i.5

for.inc.5:                                        ; preds = %do.body.i.5
  call void @__sanitizer_cov_trace_pc() #24
  %call3.i.5 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1656) #22
  %add.ptr.5 = getelementptr i8, ptr %get_key, i32 12
  %3 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %call3.i.5, ptr %add.ptr.5, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_write_cam(ptr noundef %padapter, i8 noundef zeroext %entry1, i16 noundef zeroext %ctrl, ptr nocapture noundef readonly %mac, ptr nocapture noundef readonly %key) local_unnamed_addr #7 align 64 {
entry:
  %cam_val = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cam_val) #22
  %0 = getelementptr inbounds [2 x i32], ptr %cam_val, i32 0, i32 1
  %conv = zext i8 %entry1 to i32
  %shl = shl nuw nsw i32 %conv, 3
  %arrayidx11 = getelementptr i8, ptr %mac, i32 2
  %arrayidx13 = getelementptr i8, ptr %mac, i32 3
  %arrayidx17 = getelementptr i8, ptr %mac, i32 4
  %arrayidx21 = getelementptr i8, ptr %mac, i32 5
  %conv3 = zext i16 %ctrl to i32
  %arrayidx6 = getelementptr i8, ptr %mac, i32 1
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %entry
  %j.060 = phi i32 [ 5, %entry ], [ %dec, %sw.epilog.for.body_crit_edge ]
  %1 = zext i32 %j.060 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %j.060, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac, align 1
  %conv4 = zext i8 %3 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or = or i32 %shl5, %conv3
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %5 to i32
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %7 to i32
  %shl15 = shl nuw nsw i32 %conv14, 8
  %or16 = or i32 %shl15, %conv12
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %9 to i32
  %shl19 = shl nuw nsw i32 %conv18, 16
  %or20 = or i32 %or16, %shl19
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %sub = shl i32 %j.060, 2
  %shl25 = add nsw i32 %sub, -8
  %arrayidx26 = getelementptr i8, ptr %key, i32 %shl25
  %10 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %11 to i32
  %add = add nsw i32 %sub, -7
  %arrayidx28 = getelementptr i8, ptr %key, i32 %add
  %12 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %13 to i32
  %shl30 = shl nuw nsw i32 %conv29, 8
  %or31 = or i32 %shl30, %conv27
  %add32 = add nsw i32 %sub, -6
  %arrayidx33 = getelementptr i8, ptr %key, i32 %add32
  %14 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %15 to i32
  %shl35 = shl nuw nsw i32 %conv34, 16
  %or36 = or i32 %or31, %shl35
  %add37 = add nsw i32 %sub, -5
  %arrayidx38 = getelementptr i8, ptr %key, i32 %add37
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb
  %arrayidx38.sink = phi ptr [ %arrayidx38, %sw.default ], [ %arrayidx21, %sw.bb10 ], [ %arrayidx6, %sw.bb ]
  %or36.sink = phi i32 [ %or36, %sw.default ], [ %or20, %sw.bb10 ], [ %or, %sw.bb ]
  %16 = ptrtoint ptr %arrayidx38.sink to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx38.sink, align 1
  %conv39 = zext i8 %17 to i32
  %shl40 = shl nuw i32 %conv39, 24
  %or41 = or i32 %or36.sink, %shl40
  %18 = ptrtoint ptr %cam_val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or41, ptr %cam_val, align 4
  %add43 = add nuw nsw i32 %j.060, %shl
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add43, ptr %0, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 30, ptr noundef nonnull %cam_val) #22
  %dec = add nsw i32 %j.060, -1
  %cmp.not = icmp eq i32 %j.060, 0
  br i1 %cmp.not, label %for.end, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cam_val) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_clear_cam_entry(ptr noundef %padapter, i8 noundef zeroext %entry1) local_unnamed_addr #7 align 64 {
sw.epilog.i.5:
  %cam_val.i = alloca [2 x i32], align 4
  %null_key.sroa.6 = alloca i8, align 1
  %null_key.sroa.10 = alloca i8, align 1
  %null_key.sroa.14 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %null_key.sroa.6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %null_key.sroa.10)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %null_key.sroa.14)
  store i8 0, ptr %null_key.sroa.6, align 1
  store i8 0, ptr %null_key.sroa.10, align 1
  store i8 0, ptr %null_key.sroa.14, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cam_val.i) #22
  %0 = getelementptr inbounds [2 x i32], ptr %cam_val.i, i32 0, i32 1
  %conv.i = zext i8 %entry1 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 3
  %1 = ptrtoint ptr %cam_val.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cam_val.i, align 4
  %add43.i = or i32 %shl.i, 5
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add43.i, ptr %0, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 30, ptr noundef nonnull %cam_val.i) #22
  %arrayidx38.sink.i.1.sroa.speculate.load.sw.default.i.1 = load i8, ptr %null_key.sroa.14, align 1
  %phi.cast13 = zext i8 %arrayidx38.sink.i.1.sroa.speculate.load.sw.default.i.1 to i32
  %phi.bo14 = shl nuw i32 %phi.cast13, 24
  %3 = ptrtoint ptr %cam_val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %phi.bo14, ptr %cam_val.i, align 4
  %add43.i.1 = or i32 %shl.i, 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add43.i.1, ptr %0, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 30, ptr noundef nonnull %cam_val.i) #22
  %arrayidx38.sink.i.2.sroa.speculate.load.sw.default.i.2 = load i8, ptr %null_key.sroa.10, align 1
  %phi.cast15 = zext i8 %arrayidx38.sink.i.2.sroa.speculate.load.sw.default.i.2 to i32
  %phi.bo16 = shl nuw i32 %phi.cast15, 24
  %5 = ptrtoint ptr %cam_val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %phi.bo16, ptr %cam_val.i, align 4
  %add43.i.2 = or i32 %shl.i, 3
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add43.i.2, ptr %0, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 30, ptr noundef nonnull %cam_val.i) #22
  %arrayidx38.sink.i.3.sroa.speculate.load.sw.default.i.3 = load i8, ptr %null_key.sroa.6, align 1
  %phi.cast17 = zext i8 %arrayidx38.sink.i.3.sroa.speculate.load.sw.default.i.3 to i32
  %phi.bo18 = shl nuw i32 %phi.cast17, 24
  %7 = ptrtoint ptr %cam_val.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %phi.bo18, ptr %cam_val.i, align 4
  %add43.i.3 = or i32 %shl.i, 2
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add43.i.3, ptr %0, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 30, ptr noundef nonnull %cam_val.i) #22
  %9 = ptrtoint ptr %cam_val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cam_val.i, align 4
  %add43.i.4 = or i32 %shl.i, 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add43.i.4, ptr %0, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 30, ptr noundef nonnull %cam_val.i) #22
  %11 = ptrtoint ptr %cam_val.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cam_val.i, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shl.i, ptr %0, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 30, ptr noundef nonnull %cam_val.i) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cam_val.i) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %null_key.sroa.6)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %null_key.sroa.10)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %null_key.sroa.14)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @write_cam(ptr noundef %adapter, i8 noundef zeroext %id, i16 noundef zeroext %ctrl, ptr nocapture noundef readonly %mac, ptr nocapture noundef readonly %key) local_unnamed_addr #14 align 64 {
entry:
  %cam_val.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cam_val.i) #22
  %0 = getelementptr inbounds [2 x i32], ptr %cam_val.i, i32 0, i32 1
  %conv.i = zext i8 %id to i32
  %shl.i = shl nuw nsw i32 %conv.i, 3
  %arrayidx11.i = getelementptr i8, ptr %mac, i32 2
  %arrayidx13.i = getelementptr i8, ptr %mac, i32 3
  %arrayidx17.i = getelementptr i8, ptr %mac, i32 4
  %arrayidx21.i = getelementptr i8, ptr %mac, i32 5
  %conv3.i = zext i16 %ctrl to i32
  %arrayidx6.i = getelementptr i8, ptr %mac, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %entry
  %j.060.i = phi i32 [ 5, %entry ], [ %dec.i, %sw.epilog.i.for.body.i_crit_edge ]
  %1 = zext i32 %j.060.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %j.060.i, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac, align 1
  %conv4.i = zext i8 %3 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 16
  %or.i = or i32 %shl5.i, %conv3.i
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %4 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %5 to i32
  %6 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %7 to i32
  %shl15.i = shl nuw nsw i32 %conv14.i, 8
  %or16.i = or i32 %shl15.i, %conv12.i
  %8 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %9 to i32
  %shl19.i = shl nuw nsw i32 %conv18.i, 16
  %or20.i = or i32 %or16.i, %shl19.i
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %sub.i = shl i32 %j.060.i, 2
  %shl25.i = add nsw i32 %sub.i, -8
  %arrayidx26.i = getelementptr i8, ptr %key, i32 %shl25.i
  %10 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %11 to i32
  %add.i = add nsw i32 %sub.i, -7
  %arrayidx28.i = getelementptr i8, ptr %key, i32 %add.i
  %12 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx28.i, align 1
  %conv29.i = zext i8 %13 to i32
  %shl30.i = shl nuw nsw i32 %conv29.i, 8
  %or31.i = or i32 %shl30.i, %conv27.i
  %add32.i = add nsw i32 %sub.i, -6
  %arrayidx33.i = getelementptr i8, ptr %key, i32 %add32.i
  %14 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %15 to i32
  %shl35.i = shl nuw nsw i32 %conv34.i, 16
  %or36.i = or i32 %or31.i, %shl35.i
  %add37.i = add nsw i32 %sub.i, -5
  %arrayidx38.i = getelementptr i8, ptr %key, i32 %add37.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb10.i, %sw.bb.i
  %arrayidx38.sink.i = phi ptr [ %arrayidx38.i, %sw.default.i ], [ %arrayidx21.i, %sw.bb10.i ], [ %arrayidx6.i, %sw.bb.i ]
  %or36.sink.i = phi i32 [ %or36.i, %sw.default.i ], [ %or20.i, %sw.bb10.i ], [ %or.i, %sw.bb.i ]
  %16 = ptrtoint ptr %arrayidx38.sink.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx38.sink.i, align 1
  %conv39.i = zext i8 %17 to i32
  %shl40.i = shl nuw i32 %conv39.i, 24
  %or41.i = or i32 %shl40.i, %or36.sink.i
  %18 = ptrtoint ptr %cam_val.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or41.i, ptr %cam_val.i, align 4
  %add43.i = add nuw nsw i32 %j.060.i, %shl.i
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add43.i, ptr %0, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %adapter, i8 noundef zeroext 30, ptr noundef nonnull %cam_val.i) #22
  %dec.i = add nsw i32 %j.060.i, -1
  %cmp.not.i = icmp eq i32 %j.060.i, 0
  br i1 %cmp.not.i, label %_write_cam.exit, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

_write_cam.exit:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cam_val.i) #22
  %dvobj1.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %20 = ptrtoint ptr %dvobj1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dvobj1.i, align 4
  %cam_ctl2.i = getelementptr inbounds %struct.dvobj_priv, ptr %21, i32 0, i32 14
  call void @_raw_spin_lock_bh(ptr noundef %cam_ctl2.i) #22
  %arrayidx.i = getelementptr %struct.dvobj_priv, ptr %21, i32 0, i32 15, i32 %conv.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %ctrl, ptr %arrayidx.i, align 8
  %mac7.i = getelementptr %struct.dvobj_priv, ptr %21, i32 0, i32 15, i32 %conv.i, i32 1
  %23 = call ptr @memcpy(ptr %mac7.i, ptr %mac, i32 6)
  %key11.i = getelementptr %struct.dvobj_priv, ptr %21, i32 0, i32 15, i32 %conv.i, i32 2
  %24 = call ptr @memcpy(ptr %key11.i, ptr %key, i32 16)
  call void @_raw_spin_unlock_bh(ptr noundef %cam_ctl2.i) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @write_cam_cache(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %id, i16 noundef zeroext %ctrl, ptr nocapture noundef readonly %mac, ptr nocapture noundef readonly %key) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj1, align 4
  %cam_ctl2 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %cam_ctl2) #22
  %idxprom = zext i8 %id to i32
  %arrayidx = getelementptr %struct.dvobj_priv, ptr %1, i32 0, i32 15, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %ctrl, ptr %arrayidx, align 8
  %mac7 = getelementptr %struct.dvobj_priv, ptr %1, i32 0, i32 15, i32 %idxprom, i32 1
  %3 = call ptr @memcpy(ptr %mac7, ptr %mac, i32 6)
  %key11 = getelementptr %struct.dvobj_priv, ptr %1, i32 0, i32 15, i32 %idxprom, i32 2
  %4 = call ptr @memcpy(ptr %key11, ptr %key, i32 16)
  tail call void @_raw_spin_unlock_bh(ptr noundef %cam_ctl2) #22
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_cam_entry(ptr noundef %adapter, i8 noundef zeroext %id) local_unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @_clear_cam_entry(ptr noundef %adapter, i8 noundef zeroext %id)
  %dvobj1.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj1.i, align 4
  %cam_ctl2.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %cam_ctl2.i) #22
  %idxprom.i = zext i8 %id to i32
  %arrayidx.i = getelementptr %struct.dvobj_priv, ptr %1, i32 0, i32 15, i32 %idxprom.i
  %2 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 24)
  tail call void @_raw_spin_unlock_bh(ptr noundef %cam_ctl2.i) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_cam_cache(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %id) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj1, align 4
  %cam_ctl2 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %cam_ctl2) #22
  %idxprom = zext i8 %id to i32
  %arrayidx = getelementptr %struct.dvobj_priv, ptr %1, i32 0, i32 15, i32 %idxprom
  %2 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  tail call void @_raw_spin_unlock_bh(ptr noundef %cam_ctl2) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local signext i16 @rtw_camid_search(ptr nocapture noundef readonly %adapter, ptr noundef readonly %addr, i16 noundef signext %kid) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj1, align 4
  %cam_ctl2 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %cam_ctl2) #22
  %2 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj1, align 4
  %tobool.not.i = icmp eq ptr %addr, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %kid)
  %cmp3.i = icmp sgt i16 %kid, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.023.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %mac.i = getelementptr %struct.dvobj_priv, ptr %3, i32 0, i32 15, i32 %i.023.i, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac.i, ptr noundef nonnull dereferenceable(6) %addr, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool2.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  br i1 %cmp3.i, label %land.lhs.true5.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end13.i

land.lhs.true5.i:                                 ; preds = %if.end.i
  %arrayidx8.i = getelementptr %struct.dvobj_priv, ptr %3, i32 0, i32 15, i32 %i.023.i
  %4 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx8.i, align 8
  %6 = and i16 %5, 3
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %kid)
  %cmp10.not.i = icmp eq i16 %6, %kid
  br i1 %cmp10.not.i, label %land.lhs.true5.i.if.end13.i_crit_edge, label %land.lhs.true5.i.for.inc.i_crit_edge

land.lhs.true5.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.i

land.lhs.true5.i.if.end13.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end13.i

if.end13.i:                                       ; preds = %land.lhs.true5.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %conv14.i = trunc i32 %i.023.i to i16
  br label %_rtw_camid_search.exit

for.inc.i:                                        ; preds = %land.lhs.true5.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i._rtw_camid_search.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

for.inc.i._rtw_camid_search.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %_rtw_camid_search.exit

_rtw_camid_search.exit:                           ; preds = %for.inc.i._rtw_camid_search.exit_crit_edge, %if.end13.i
  %cam_id.0.i = phi i16 [ %conv14.i, %if.end13.i ], [ -1, %for.inc.i._rtw_camid_search.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %cam_ctl2) #22
  ret i16 %cam_id.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local signext i16 @rtw_camid_alloc(ptr noundef readonly %adapter, ptr noundef %sta, i8 noundef zeroext %kid) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj1, align 4
  %cam_ctl2 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %cam_ctl2) #22
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5, i32 18
  %2 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %3, 3
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %and, label %if.else [
    i32 3, label %entry.land.lhs.true_crit_edge
    i32 1, label %entry.land.lhs.true_crit_edge304
  ]

entry.land.lhs.true_crit_edge304:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge304
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %if.then, label %if.else.thread

if.else.thread:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  %hwaddr264 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 12
  br label %if.end55

if.then:                                          ; preds = %land.lhs.true
  %conv = zext i8 %kid to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %kid)
  %cmp6 = icmp ugt i8 %kid, 3
  br i1 %cmp6, label %do.body9, label %bitmap_handle.thread293

do.body9:                                         ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_camid_alloc.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_camid_alloc, %if.then13)) #22
          to label %bitmap_handle.thread [label %if.then13], !srcloc !52

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #24
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %5 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_camid_alloc.__UNIQUE_ID_ddebug345, ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %6, i32 noundef %conv) #22
  br label %bitmap_handle.thread

bitmap_handle.thread:                             ; preds = %if.then13, %do.body9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 620, i32 noundef 9, ptr noundef null) #22
  br label %cleanup204

bitmap_handle.thread293:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %conv44 = zext i8 %kid to i16
  br label %if.then197

if.else:                                          ; preds = %entry
  %tobool45.not = icmp eq ptr %sta, null
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 12
  br i1 %tobool45.not, label %if.then48, label %if.else.if.end55_crit_edge

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end55

if.then48:                                        ; preds = %if.else
  %and50 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.then48.cleanup204_crit_edge, label %if.end53

if.then48.cleanup204_crit_edge:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup204

if.end53:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #24
  %mac_address.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 1
  br label %if.end55

if.end55:                                         ; preds = %if.end53, %if.else.if.end55_crit_edge, %if.else.thread
  %hwaddr267 = phi ptr [ %hwaddr, %if.else.if.end55_crit_edge ], [ %hwaddr, %if.end53 ], [ %hwaddr264, %if.else.thread ]
  %tobool45.not266 = phi i1 [ false, %if.else.if.end55_crit_edge ], [ true, %if.end53 ], [ false, %if.else.thread ]
  %addr.0 = phi ptr [ %hwaddr, %if.else.if.end55_crit_edge ], [ %mac_address.i, %if.end53 ], [ %hwaddr264, %if.else.thread ]
  %conv56 = zext i8 %kid to i16
  %7 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dvobj1, align 4
  %tobool.not.i = icmp eq ptr %addr.0, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end55
  %i.023.i = phi i32 [ 0, %if.end55 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %mac.i = getelementptr %struct.dvobj_priv, ptr %8, i32 0, i32 15, i32 %i.023.i, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac.i, ptr noundef nonnull dereferenceable(6) %addr.0, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool2.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %arrayidx8.i = getelementptr %struct.dvobj_priv, ptr %8, i32 0, i32 15, i32 %i.023.i
  %9 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx8.i, align 8
  %11 = and i16 %10, 3
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %conv56)
  %cmp10.not.i = icmp eq i16 %11, %conv56
  br i1 %cmp10.not.i, label %_rtw_camid_search.exit, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.for.cond.preheader_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

for.inc.i.for.cond.preheader_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond.preheader

_rtw_camid_search.exit:                           ; preds = %if.end.i
  %conv14.i = trunc i32 %i.023.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv14.i)
  %cmp59 = icmp sgt i16 %conv14.i, -1
  br i1 %cmp59, label %if.then61, label %_rtw_camid_search.exit.for.cond.preheader_crit_edge

_rtw_camid_search.exit.for.cond.preheader_crit_edge: ; preds = %_rtw_camid_search.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %_rtw_camid_search.exit.for.cond.preheader_crit_edge, %for.inc.i.for.cond.preheader_crit_edge
  %bitmap = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 14, i32 1
  %12 = ptrtoint ptr %bitmap to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bitmap, align 8
  br label %for.body

if.then61:                                        ; preds = %_rtw_camid_search.exit
  br i1 %tobool45.not266, label %lor.lhs.false63, label %if.then61.bitmap_handle_crit_edge

if.then61.bitmap_handle_crit_edge:                ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #24
  br label %bitmap_handle

lor.lhs.false63:                                  ; preds = %if.then61
  %conv64.mask = and i32 %i.023.i, 255
  %14 = and i16 %conv14.i, 224
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.i.not = icmp eq i16 %14, 0
  br i1 %cmp.i.not, label %if.end.i261, label %lor.lhs.false63.do.body71_crit_edge

lor.lhs.false63.do.body71_crit_edge:              ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body71

if.end.i261:                                      ; preds = %lor.lhs.false63
  %bitmap.i = getelementptr inbounds %struct.dvobj_priv, ptr %8, i32 0, i32 14, i32 1
  %15 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %bitmap.i, align 8
  %shl.i = shl nuw i32 1, %conv64.mask
  %conv5.i = zext i32 %shl.i to i64
  %and.i = and i64 %16, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i260 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i260, label %if.end.i261.do.body71_crit_edge, label %_rtw_camid_is_gk.exit

if.end.i261.do.body71_crit_edge:                  ; preds = %if.end.i261
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body71

_rtw_camid_is_gk.exit:                            ; preds = %if.end.i261
  %arrayidx.i = getelementptr %struct.dvobj_priv, ptr %8, i32 0, i32 15, i32 %conv64.mask
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i, align 8
  %19 = and i16 %18, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool10.i.not = icmp eq i16 %19, 0
  br i1 %tobool10.i.not, label %_rtw_camid_is_gk.exit.do.body71_crit_edge, label %_rtw_camid_is_gk.exit.bitmap_handle_crit_edge

_rtw_camid_is_gk.exit.bitmap_handle_crit_edge:    ; preds = %_rtw_camid_is_gk.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %bitmap_handle

_rtw_camid_is_gk.exit.do.body71_crit_edge:        ; preds = %_rtw_camid_is_gk.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body71

do.body71:                                        ; preds = %_rtw_camid_is_gk.exit.do.body71_crit_edge, %if.end.i261.do.body71_crit_edge, %lor.lhs.false63.do.body71_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_camid_alloc.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_camid_alloc, %if.then83)) #22
          to label %bitmap_handle [label %if.then83], !srcloc !52

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #24
  %pnetdev84 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %20 = ptrtoint ptr %pnetdev84 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pnetdev84, align 8
  %conv88 = zext i8 %kid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_camid_alloc.__UNIQUE_ID_ddebug346, ptr noundef %21, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %21, i32 noundef %conv88) #22
  br label %cleanup204

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0288 = phi i32 [ 4, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0288
  %conv98 = zext i32 %shl to i64
  %and99 = and i64 %13, %conv98
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and99)
  %tobool100.not = icmp eq i64 %and99, 0
  br i1 %tobool100.not, label %if.end186, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0288, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %if.then105, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

if.then105:                                       ; preds = %for.inc
  br i1 %tobool45.not266, label %do.body136, label %do.body109

do.body109:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_camid_alloc.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_camid_alloc, %if.then121)) #22
          to label %do.end172 [label %if.then121], !srcloc !52

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #24
  %pnetdev122 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %22 = ptrtoint ptr %pnetdev122 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pnetdev122, align 8
  %conv128 = zext i8 %kid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_camid_alloc.__UNIQUE_ID_ddebug347, ptr noundef %23, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, ptr noundef %23, ptr noundef %hwaddr267, i32 noundef %conv128) #22
  br label %do.end172

do.body136:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_camid_alloc.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_camid_alloc, %if.then148)) #22
          to label %do.end172 [label %if.then148], !srcloc !52

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #24
  %pnetdev149 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %24 = ptrtoint ptr %pnetdev149 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pnetdev149, align 8
  %conv153 = zext i8 %kid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_camid_alloc.__UNIQUE_ID_ddebug348, ptr noundef %25, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, ptr noundef %25, i32 noundef %conv153) #22
  br label %do.end172

do.end172:                                        ; preds = %if.then148, %do.body136, %if.then121, %do.body109
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 664, i32 noundef 9, ptr noundef null) #22
  br label %cleanup204

if.end186:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %conv187 = trunc i32 %i.0288 to i16
  br label %bitmap_handle

bitmap_handle:                                    ; preds = %if.end186, %do.body71, %_rtw_camid_is_gk.exit.bitmap_handle_crit_edge, %if.then61.bitmap_handle_crit_edge
  %cam_id.2 = phi i16 [ -1, %do.body71 ], [ %conv14.i, %if.then61.bitmap_handle_crit_edge ], [ %conv14.i, %_rtw_camid_is_gk.exit.bitmap_handle_crit_edge ], [ %conv187, %if.end186 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %cam_id.2)
  %26 = icmp ult i16 %cam_id.2, 32
  br i1 %26, label %bitmap_handle.if.then197_crit_edge, label %bitmap_handle.cleanup204_crit_edge

bitmap_handle.cleanup204_crit_edge:               ; preds = %bitmap_handle
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup204

bitmap_handle.if.then197_crit_edge:               ; preds = %bitmap_handle
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then197

if.then197:                                       ; preds = %bitmap_handle.if.then197_crit_edge, %bitmap_handle.thread293
  %cam_id.2295 = phi i16 [ %conv44, %bitmap_handle.thread293 ], [ %cam_id.2, %bitmap_handle.if.then197_crit_edge ]
  %conv190249 = zext i16 %cam_id.2295 to i32
  %shl199 = shl nuw i32 1, %conv190249
  %conv200 = zext i32 %shl199 to i64
  %bitmap201 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 14, i32 1
  %27 = ptrtoint ptr %bitmap201 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bitmap201, align 8
  %or = or i64 %28, %conv200
  store i64 %or, ptr %bitmap201, align 8
  br label %cleanup204

cleanup204:                                       ; preds = %if.then197, %bitmap_handle.cleanup204_crit_edge, %do.end172, %if.then83, %if.then48.cleanup204_crit_edge, %bitmap_handle.thread
  %cam_id.2279 = phi i16 [ -1, %bitmap_handle.thread ], [ %cam_id.2295, %if.then197 ], [ %cam_id.2, %bitmap_handle.cleanup204_crit_edge ], [ -1, %if.then83 ], [ -1, %if.then48.cleanup204_crit_edge ], [ -1, %do.end172 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %cam_ctl2) #22
  ret i16 %cam_id.2279
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_camid_free(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %cam_id) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj1, align 4
  %cam_ctl2 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %cam_ctl2) #22
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %cam_id)
  %cmp = icmp ult i8 %cam_id, 32
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %conv = zext i8 %cam_id to i32
  %shl = shl nuw i32 1, %conv
  %neg = xor i32 %shl, -1
  %conv5 = zext i32 %neg to i64
  %bitmap = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 14, i32 1
  %2 = ptrtoint ptr %bitmap to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bitmap, align 8
  %and = and i64 %3, %conv5
  store i64 %and, ptr %bitmap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %cam_ctl2) #22
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @allocate_fw_sta_entry(ptr nocapture noundef %padapter) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %mac_id.016 = phi i32 [ 2, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %status = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40, i32 %mac_id.016, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %status, align 4
  %retry = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40, i32 %mac_id.016, i32 3
  %3 = ptrtoint ptr %retry to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %retry, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %mac_id.016, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then
  %mac_id.015 = phi i32 [ %mac_id.016, %if.then ], [ 32, %for.inc.for.end_crit_edge ]
  ret i32 %mac_id.015
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_all_cam_entry(ptr noundef %padapter) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj1.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj1.i, align 4
  %cam_ctl2.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 14
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 29, ptr noundef null) #22
  tail call void @_raw_spin_lock_bh(ptr noundef %cam_ctl2.i) #22
  %bitmap.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 14, i32 1
  %2 = call ptr @memset(ptr %bitmap.i, i32 0, i32 776)
  tail call void @_raw_spin_unlock_bh(ptr noundef %cam_ctl2.i) #22
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 21, ptr noundef null) #22
  %FW_sta_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40
  %3 = call ptr @memset(ptr %FW_sta_info, i32 0, i32 1024)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @WMM_param_handler(ptr nocapture noundef %padapter, ptr nocapture noundef readonly %pIE) local_unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %qospriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 30
  %0 = ptrtoint ptr %qospriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qospriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %WMM_param = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 36
  %add.ptr = getelementptr %struct.ndis_80211_var_ie, ptr %pIE, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(18) %WMM_param, ptr noundef dereferenceable(18) %add.ptr, i32 18) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %2 = call ptr @memcpy(ptr %WMM_param, ptr %add.ptr, i32 18)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.else ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 1, %if.else ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %WMM_enable7 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 17
  %3 = ptrtoint ptr %WMM_enable7 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink, ptr %WMM_enable7, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @WMMOnAssocRsp(ptr noundef %padapter) local_unnamed_addr #7 align 64 {
entry:
  %acm_mask = alloca i8, align 1
  %acParm = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %acm_mask) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acParm) #22
  %0 = ptrtoint ptr %acm_mask to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %acm_mask, align 1
  %cur_wireless_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 10
  %1 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cur_wireless_mode, align 1
  %3 = and i8 %2, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %. = select i1 %tobool.not, i32 10, i32 16
  %WMM_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 17
  %4 = ptrtoint ptr %WMM_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %WMM_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.then3, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %slotTime64 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 15
  br label %for.body

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %acm_mask4 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 36
  %6 = ptrtoint ptr %acm_mask4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %acm_mask4, align 8
  %slotTime = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 15
  %7 = ptrtoint ptr %slotTime to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %slotTime, align 1
  %conv6 = zext i8 %8 to i32
  %mul = shl nuw nsw i32 %conv6, 1
  %add = add nuw nsw i32 %mul, %.
  %conv9 = zext i8 %2 to i32
  %and10 = and i32 %conv9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %and16 = and i32 %conv9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %conv22 = and i32 %add, 254
  %.202.op = select i1 %tobool17.not, i32 41984, i32 42240
  %or = select i1 %tobool11.not, i32 %.202.op, i32 41984
  %or26 = or i32 %or, %conv22
  %9 = ptrtoint ptr %acParm to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or26, ptr %acParm, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 34, ptr noundef nonnull %acParm) #22
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 35, ptr noundef nonnull %acParm) #22
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 33, ptr noundef nonnull %acParm) #22
  %or39 = or i32 %conv22, 3092992
  %10 = ptrtoint ptr %acParm to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or39, ptr %acParm, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 32, ptr noundef nonnull %acParm) #22
  br label %if.end151

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0222 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %edca.sroa.0.0221 = phi i32 [ 0, %for.cond.preheader ], [ %edca.sroa.0.1, %for.inc.for.body_crit_edge ]
  %edca.sroa.11.0220 = phi i32 [ 0, %for.cond.preheader ], [ %edca.sroa.11.1, %for.inc.for.body_crit_edge ]
  %edca.sroa.20.0219 = phi i32 [ 0, %for.cond.preheader ], [ %edca.sroa.20.1, %for.inc.for.body_crit_edge ]
  %edca.sroa.29.0218 = phi i32 [ 0, %for.cond.preheader ], [ %edca.sroa.29.1, %for.inc.for.body_crit_edge ]
  %arrayidx46 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 36, i32 2, i32 %i.0222
  %11 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx46, align 2
  %13 = lshr i8 %12, 5
  %and48 = and i8 %13, 3
  %14 = lshr i8 %12, 4
  %and56 = and i8 %14, 1
  %15 = and i8 %12, 15
  %and63 = zext i8 %15 to i32
  %16 = ptrtoint ptr %slotTime64 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %slotTime64, align 1
  %conv65 = zext i8 %17 to i32
  %mul66 = mul nuw nsw i32 %and63, %conv65
  %add68 = add nuw nsw i32 %mul66, %.
  %CW = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 36, i32 2, i32 %i.0222, i32 1
  %18 = ptrtoint ptr %CW to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %CW, align 1
  %and74 = and i8 %19, 15
  %20 = lshr i8 %19, 4
  %TXOP_limit = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 36, i32 2, i32 %i.0222, i32 2
  %21 = ptrtoint ptr %TXOP_limit to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %TXOP_limit, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %conv87 = and i32 %add68, 255
  %conv88 = zext i8 %and74 to i32
  %shl89 = shl nuw nsw i32 %conv88, 8
  %or90 = or i32 %conv87, %shl89
  %conv91 = zext i8 %20 to i32
  %shl92 = shl nuw nsw i32 %conv91, 12
  %or93 = or i32 %or90, %shl92
  %conv94 = zext i16 %23 to i32
  %shl95 = shl nuw i32 %conv94, 16
  %or96 = or i32 %or93, %shl95
  %24 = ptrtoint ptr %acParm to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or96, ptr %acParm, align 4
  %conv97 = zext i8 %and48 to i32
  %25 = zext i32 %conv97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %conv97, label %for.body.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb104
    i32 2, label %sw.bb106
    i32 3, label %sw.bb114
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 34, ptr noundef nonnull %acParm) #22
  %26 = shl nuw nsw i8 %and56, 1
  %27 = ptrtoint ptr %acm_mask to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %acm_mask, align 1
  %or101201 = or i8 %28, %26
  store i8 %or101201, ptr %acm_mask, align 1
  %29 = ptrtoint ptr %acParm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %acParm, align 4
  br label %for.inc

sw.bb104:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 35, ptr noundef nonnull %acParm) #22
  %31 = ptrtoint ptr %acParm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %acParm, align 4
  br label %for.inc

sw.bb106:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 33, ptr noundef nonnull %acParm) #22
  %33 = shl nuw nsw i8 %and56, 2
  %34 = ptrtoint ptr %acm_mask to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %acm_mask, align 1
  %or111200 = or i8 %35, %33
  store i8 %or111200, ptr %acm_mask, align 1
  %36 = ptrtoint ptr %acParm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %acParm, align 4
  br label %for.inc

sw.bb114:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 32, ptr noundef nonnull %acParm) #22
  %38 = shl nuw nsw i8 %and56, 3
  %39 = ptrtoint ptr %acm_mask to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %acm_mask, align 1
  %or119199 = or i8 %40, %38
  store i8 %or119199, ptr %acm_mask, align 1
  %41 = ptrtoint ptr %acParm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %acParm, align 4
  br label %for.inc

for.body.unreachabledefault:                      ; preds = %for.body
  unreachable

for.inc:                                          ; preds = %sw.bb114, %sw.bb106, %sw.bb104, %sw.bb
  %edca.sroa.29.1 = phi i32 [ %edca.sroa.29.0218, %sw.bb114 ], [ %edca.sroa.29.0218, %sw.bb106 ], [ %32, %sw.bb104 ], [ %edca.sroa.29.0218, %sw.bb ]
  %edca.sroa.20.1 = phi i32 [ %edca.sroa.20.0219, %sw.bb114 ], [ %edca.sroa.20.0219, %sw.bb106 ], [ %edca.sroa.20.0219, %sw.bb104 ], [ %30, %sw.bb ]
  %edca.sroa.11.1 = phi i32 [ %edca.sroa.11.0220, %sw.bb114 ], [ %37, %sw.bb106 ], [ %edca.sroa.11.0220, %sw.bb104 ], [ %edca.sroa.11.0220, %sw.bb ]
  %edca.sroa.0.1 = phi i32 [ %42, %sw.bb114 ], [ %edca.sroa.0.0221, %sw.bb106 ], [ %edca.sroa.0.0221, %sw.bb104 ], [ %edca.sroa.0.0221, %sw.bb ]
  %inc = add nuw nsw i32 %i.0222, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.inc
  %acm_method = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 28
  %43 = ptrtoint ptr %acm_method to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %acm_method, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp124 = icmp eq i8 %44, 1
  br i1 %cmp124, label %if.then126, label %if.else127

if.then126:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 36, ptr noundef nonnull %acm_mask) #22
  br label %if.end130

if.else127:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  %45 = ptrtoint ptr %acm_mask to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %acm_mask, align 1
  %acm_mask129 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 36
  %47 = ptrtoint ptr %acm_mask129 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %acm_mask129, align 8
  br label %if.end130

if.end130:                                        ; preds = %if.else127, %if.then126
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 48
  %48 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp136 = icmp eq i8 %49, 1
  br i1 %cmp136, label %if.then138, label %if.end130.if.end140_crit_edge

if.end130.if.end140_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end140

if.then138:                                       ; preds = %if.end130
  %and.i = and i32 %edca.sroa.11.1, 65535
  %and5.i = and i32 %edca.sroa.0.1, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and5.i)
  %cmp6.i = icmp ult i32 %and.i, %and5.i
  br i1 %cmp6.i, label %if.then138.do.body.i_crit_edge, label %if.else.i

if.then138.do.body.i_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.i

for.body3.lr.ph.1.i:                              ; preds = %do.body.298.i, %if.else.296.i.for.body3.lr.ph.1.i_crit_edge
  %inx.sroa.28.0 = phi i32 [ %inx.sroa.0.2, %do.body.298.i ], [ 3, %if.else.296.i.for.body3.lr.ph.1.i_crit_edge ]
  %inx.sroa.0.0 = phi i32 [ 3, %do.body.298.i ], [ %inx.sroa.0.2, %if.else.296.i.for.body3.lr.ph.1.i_crit_edge ]
  %edca.sroa.29.2 = phi i32 [ %edca.sroa.0.3, %do.body.298.i ], [ %edca.sroa.29.1, %if.else.296.i.for.body3.lr.ph.1.i_crit_edge ]
  %and.1.i = and i32 %edca.sroa.20.3, 65535
  %and5.1.i = and i32 %edca.sroa.11.3, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1.i, i32 %and5.1.i)
  %cmp6.1.i = icmp ult i32 %and.1.i, %and5.1.i
  br i1 %cmp6.1.i, label %for.body3.lr.ph.1.i.do.body.1.i_crit_edge, label %if.else.1.i

for.body3.lr.ph.1.i.do.body.1.i_crit_edge:        ; preds = %for.body3.lr.ph.1.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.1.i

if.else.1.i:                                      ; preds = %for.body3.lr.ph.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1.i, i32 %and5.1.i)
  %cmp11.1.i = icmp eq i32 %and.1.i, %and5.1.i
  %shr.1.i = lshr i32 %edca.sroa.20.3, 16
  %shr15.1.i = lshr i32 %edca.sroa.11.3, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %shr15.1.i)
  %cmp16.1.i = icmp ugt i32 %shr.1.i, %shr15.1.i
  %or.cond.1.i = and i1 %cmp11.1.i, %cmp16.1.i
  br i1 %or.cond.1.i, label %if.else.1.i.do.body.1.i_crit_edge, label %if.else.1.i.for.inc.1.i_crit_edge

if.else.1.i.for.inc.1.i_crit_edge:                ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.1.i

if.else.1.i.do.body.1.i_crit_edge:                ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.1.i

do.body.1.i:                                      ; preds = %if.else.1.i.do.body.1.i_crit_edge, %for.body3.lr.ph.1.i.do.body.1.i_crit_edge
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.body.1.i, %if.else.1.i.for.inc.1.i_crit_edge
  %and5.1.1.i.pre-phi = phi i32 [ %and.1.i, %do.body.1.i ], [ %and5.1.i, %if.else.1.i.for.inc.1.i_crit_edge ]
  %inx.sroa.19.0 = phi i32 [ %inx.sroa.10.2, %do.body.1.i ], [ %inx.sroa.19.1, %if.else.1.i.for.inc.1.i_crit_edge ]
  %inx.sroa.10.0 = phi i32 [ %inx.sroa.19.1, %do.body.1.i ], [ %inx.sroa.10.2, %if.else.1.i.for.inc.1.i_crit_edge ]
  %edca.sroa.20.2 = phi i32 [ %edca.sroa.11.3, %do.body.1.i ], [ %edca.sroa.20.3, %if.else.1.i.for.inc.1.i_crit_edge ]
  %edca.sroa.11.2 = phi i32 [ %edca.sroa.20.3, %do.body.1.i ], [ %edca.sroa.11.3, %if.else.1.i.for.inc.1.i_crit_edge ]
  %and.1.1.i = and i32 %edca.sroa.29.2, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1.1.i, i32 %and5.1.1.i.pre-phi)
  %cmp6.1.1.i = icmp ult i32 %and.1.1.i, %and5.1.1.i.pre-phi
  br i1 %cmp6.1.1.i, label %for.inc.1.i.do.body.1.1.i_crit_edge, label %if.else.1.1.i

for.inc.1.i.do.body.1.1.i_crit_edge:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.1.1.i

if.else.1.1.i:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1.1.i, i32 %and5.1.1.i.pre-phi)
  %cmp11.1.1.i = icmp eq i32 %and.1.1.i, %and5.1.1.i.pre-phi
  %shr.1.1.i = lshr i32 %edca.sroa.29.2, 16
  %shr15.1.1.i = lshr i32 %edca.sroa.11.2, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.1.i, i32 %shr15.1.1.i)
  %cmp16.1.1.i = icmp ugt i32 %shr.1.1.i, %shr15.1.1.i
  %or.cond.1.1.i = and i1 %cmp11.1.1.i, %cmp16.1.1.i
  br i1 %or.cond.1.1.i, label %if.else.1.1.i.do.body.1.1.i_crit_edge, label %if.else.1.1.i.for.body3.lr.ph.2.i_crit_edge

if.else.1.1.i.for.body3.lr.ph.2.i_crit_edge:      ; preds = %if.else.1.1.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body3.lr.ph.2.i

if.else.1.1.i.do.body.1.1.i_crit_edge:            ; preds = %if.else.1.1.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.1.1.i

do.body.1.1.i:                                    ; preds = %if.else.1.1.i.do.body.1.1.i_crit_edge, %for.inc.1.i.do.body.1.1.i_crit_edge
  br label %for.body3.lr.ph.2.i

for.body3.lr.ph.2.i:                              ; preds = %do.body.1.1.i, %if.else.1.1.i.for.body3.lr.ph.2.i_crit_edge
  %and.2.i.pre-phi = phi i32 [ %and5.1.1.i.pre-phi, %do.body.1.1.i ], [ %and.1.1.i, %if.else.1.1.i.for.body3.lr.ph.2.i_crit_edge ]
  %inx.sroa.28.1 = phi i32 [ %inx.sroa.10.0, %do.body.1.1.i ], [ %inx.sroa.28.0, %if.else.1.1.i.for.body3.lr.ph.2.i_crit_edge ]
  %inx.sroa.10.1 = phi i32 [ %inx.sroa.28.0, %do.body.1.1.i ], [ %inx.sroa.10.0, %if.else.1.1.i.for.body3.lr.ph.2.i_crit_edge ]
  %edca.sroa.29.3 = phi i32 [ %edca.sroa.11.2, %do.body.1.1.i ], [ %edca.sroa.29.2, %if.else.1.1.i.for.body3.lr.ph.2.i_crit_edge ]
  %and5.2.i = and i32 %edca.sroa.20.2, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and.2.i.pre-phi, i32 %and5.2.i)
  %cmp6.2.i = icmp ult i32 %and.2.i.pre-phi, %and5.2.i
  br i1 %cmp6.2.i, label %for.body3.lr.ph.2.i.do.body.2.i_crit_edge, label %if.else.2.i

for.body3.lr.ph.2.i.do.body.2.i_crit_edge:        ; preds = %for.body3.lr.ph.2.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.2.i

if.else.2.i:                                      ; preds = %for.body3.lr.ph.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.2.i.pre-phi, i32 %and5.2.i)
  %cmp11.2.i = icmp eq i32 %and.2.i.pre-phi, %and5.2.i
  %shr.2.i = lshr i32 %edca.sroa.29.3, 16
  %shr15.2.i = lshr i32 %edca.sroa.20.2, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %shr15.2.i)
  %cmp16.2.i = icmp ugt i32 %shr.2.i, %shr15.2.i
  %or.cond.2.i = and i1 %cmp11.2.i, %cmp16.2.i
  br i1 %or.cond.2.i, label %if.else.2.i.do.body.2.i_crit_edge, label %if.else.2.i.if.end140_crit_edge

if.else.2.i.if.end140_crit_edge:                  ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end140

if.else.2.i.do.body.2.i_crit_edge:                ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.2.i

do.body.2.i:                                      ; preds = %if.else.2.i.do.body.2.i_crit_edge, %for.body3.lr.ph.2.i.do.body.2.i_crit_edge
  br label %if.end140

if.else.i:                                        ; preds = %if.then138
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and5.i)
  %cmp11.i = icmp eq i32 %and.i, %and5.i
  %shr.i = lshr i32 %edca.sroa.11.1, 16
  %shr15.i = lshr i32 %edca.sroa.0.1, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %shr15.i)
  %cmp16.i = icmp ugt i32 %shr.i, %shr15.i
  %or.cond.i = and i1 %cmp11.i, %cmp16.i
  br i1 %or.cond.i, label %if.else.i.do.body.i_crit_edge, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.i

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i.do.body.i_crit_edge, %if.then138.do.body.i_crit_edge
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body.i, %if.else.i.for.inc.i_crit_edge
  %and5.173.i.pre-phi = phi i32 [ %and.i, %do.body.i ], [ %and5.i, %if.else.i.for.inc.i_crit_edge ]
  %inx.sroa.10.2 = phi i32 [ 0, %do.body.i ], [ 1, %if.else.i.for.inc.i_crit_edge ]
  %inx.sroa.0.1 = phi i32 [ 1, %do.body.i ], [ 0, %if.else.i.for.inc.i_crit_edge ]
  %edca.sroa.11.3 = phi i32 [ %edca.sroa.0.1, %do.body.i ], [ %edca.sroa.11.1, %if.else.i.for.inc.i_crit_edge ]
  %edca.sroa.0.2 = phi i32 [ %edca.sroa.11.1, %do.body.i ], [ %edca.sroa.0.1, %if.else.i.for.inc.i_crit_edge ]
  %and.172.i = and i32 %edca.sroa.20.1, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and.172.i, i32 %and5.173.i.pre-phi)
  %cmp6.174.i = icmp ult i32 %and.172.i, %and5.173.i.pre-phi
  br i1 %cmp6.174.i, label %for.inc.i.do.body.183.i_crit_edge, label %if.else.181.i

for.inc.i.do.body.183.i_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.183.i

if.else.181.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.172.i, i32 %and5.173.i.pre-phi)
  %cmp11.176.i = icmp eq i32 %and.172.i, %and5.173.i.pre-phi
  %shr.177.i = lshr i32 %edca.sroa.20.1, 16
  %shr15.178.i = lshr i32 %edca.sroa.0.2, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.177.i, i32 %shr15.178.i)
  %cmp16.179.i = icmp ugt i32 %shr.177.i, %shr15.178.i
  %or.cond.180.i = and i1 %cmp11.176.i, %cmp16.179.i
  br i1 %or.cond.180.i, label %if.else.181.i.do.body.183.i_crit_edge, label %if.else.181.i.for.inc.184.i_crit_edge

if.else.181.i.for.inc.184.i_crit_edge:            ; preds = %if.else.181.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.184.i

if.else.181.i.do.body.183.i_crit_edge:            ; preds = %if.else.181.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.183.i

do.body.183.i:                                    ; preds = %if.else.181.i.do.body.183.i_crit_edge, %for.inc.i.do.body.183.i_crit_edge
  br label %for.inc.184.i

for.inc.184.i:                                    ; preds = %do.body.183.i, %if.else.181.i.for.inc.184.i_crit_edge
  %and5.288.i.pre-phi = phi i32 [ %and.172.i, %do.body.183.i ], [ %and5.173.i.pre-phi, %if.else.181.i.for.inc.184.i_crit_edge ]
  %inx.sroa.19.1 = phi i32 [ %inx.sroa.0.1, %do.body.183.i ], [ 2, %if.else.181.i.for.inc.184.i_crit_edge ]
  %inx.sroa.0.2 = phi i32 [ 2, %do.body.183.i ], [ %inx.sroa.0.1, %if.else.181.i.for.inc.184.i_crit_edge ]
  %edca.sroa.20.3 = phi i32 [ %edca.sroa.0.2, %do.body.183.i ], [ %edca.sroa.20.1, %if.else.181.i.for.inc.184.i_crit_edge ]
  %edca.sroa.0.3 = phi i32 [ %edca.sroa.20.1, %do.body.183.i ], [ %edca.sroa.0.2, %if.else.181.i.for.inc.184.i_crit_edge ]
  %and.287.i = and i32 %edca.sroa.29.1, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and.287.i, i32 %and5.288.i.pre-phi)
  %cmp6.289.i = icmp ult i32 %and.287.i, %and5.288.i.pre-phi
  br i1 %cmp6.289.i, label %for.inc.184.i.do.body.298.i_crit_edge, label %if.else.296.i

for.inc.184.i.do.body.298.i_crit_edge:            ; preds = %for.inc.184.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.298.i

if.else.296.i:                                    ; preds = %for.inc.184.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.287.i, i32 %and5.288.i.pre-phi)
  %cmp11.291.i = icmp eq i32 %and.287.i, %and5.288.i.pre-phi
  %shr.292.i = lshr i32 %edca.sroa.29.1, 16
  %shr15.293.i = lshr i32 %edca.sroa.0.3, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.292.i, i32 %shr15.293.i)
  %cmp16.294.i = icmp ugt i32 %shr.292.i, %shr15.293.i
  %or.cond.295.i = and i1 %cmp11.291.i, %cmp16.294.i
  br i1 %or.cond.295.i, label %if.else.296.i.do.body.298.i_crit_edge, label %if.else.296.i.for.body3.lr.ph.1.i_crit_edge

if.else.296.i.for.body3.lr.ph.1.i_crit_edge:      ; preds = %if.else.296.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body3.lr.ph.1.i

if.else.296.i.do.body.298.i_crit_edge:            ; preds = %if.else.296.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.298.i

do.body.298.i:                                    ; preds = %if.else.296.i.do.body.298.i_crit_edge, %for.inc.184.i.do.body.298.i_crit_edge
  br label %for.body3.lr.ph.1.i

if.end140:                                        ; preds = %do.body.2.i, %if.else.2.i.if.end140_crit_edge, %if.end130.if.end140_crit_edge
  %inx.sroa.28.2 = phi i32 [ %inx.sroa.19.0, %do.body.2.i ], [ %inx.sroa.28.1, %if.else.2.i.if.end140_crit_edge ], [ 3, %if.end130.if.end140_crit_edge ]
  %inx.sroa.19.2 = phi i32 [ %inx.sroa.28.1, %do.body.2.i ], [ %inx.sroa.19.0, %if.else.2.i.if.end140_crit_edge ], [ 2, %if.end130.if.end140_crit_edge ]
  %inx.sroa.10.3 = phi i32 [ %inx.sroa.10.1, %do.body.2.i ], [ %inx.sroa.10.1, %if.else.2.i.if.end140_crit_edge ], [ 1, %if.end130.if.end140_crit_edge ]
  %inx.sroa.0.3 = phi i32 [ %inx.sroa.0.0, %do.body.2.i ], [ %inx.sroa.0.0, %if.else.2.i.if.end140_crit_edge ], [ 0, %if.end130.if.end140_crit_edge ]
  %conv146 = trunc i32 %inx.sroa.0.3 to i8
  %arrayidx147 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 9, i32 27, i32 0
  %50 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv146, ptr %arrayidx147, align 1
  %conv146.1 = trunc i32 %inx.sroa.10.3 to i8
  %arrayidx147.1 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 9, i32 27, i32 1
  %51 = ptrtoint ptr %arrayidx147.1 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv146.1, ptr %arrayidx147.1, align 1
  %conv146.2 = trunc i32 %inx.sroa.19.2 to i8
  %arrayidx147.2 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 9, i32 27, i32 2
  %52 = ptrtoint ptr %arrayidx147.2 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv146.2, ptr %arrayidx147.2, align 1
  %conv146.3 = trunc i32 %inx.sroa.28.2 to i8
  %arrayidx147.3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 9, i32 27, i32 3
  %53 = ptrtoint ptr %arrayidx147.3 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv146.3, ptr %arrayidx147.3, align 1
  br label %if.end151

if.end151:                                        ; preds = %if.end140, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acParm) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %acm_mask) #22
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HT_caps_handler(ptr nocapture noundef %padapter, ptr noundef readonly %pIE) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pIE, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %htpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33
  %0 = ptrtoint ptr %htpriv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %HT_caps_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 21
  %2 = ptrtoint ptr %HT_caps_enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %HT_caps_enable, align 1
  %length = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %pIE, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp5198.not = icmp eq i8 %4, 0
  br i1 %cmp5198.not, label %if.end3.for.cond70.preheader_crit_edge, label %for.inc.peel

if.end3.for.cond70.preheader_crit_edge:           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond70.preheader

for.inc.peel:                                     ; preds = %if.end3
  %HT_caps = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37
  %AMPDU_para = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 1
  %arrayidx19 = getelementptr %struct.ndis_80211_var_ie, ptr %pIE, i32 2
  %arrayidx.peel = getelementptr %struct.ndis_80211_var_ie, ptr %pIE, i32 0, i32 2, i32 0
  %5 = ptrtoint ptr %arrayidx.peel to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.peel, align 1
  %7 = ptrtoint ptr %HT_caps to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %HT_caps, align 1
  %and194.peel = and i8 %8, %6
  store i8 %and194.peel, ptr %HT_caps, align 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp5.peel = icmp ugt i8 %10, 1
  br i1 %cmp5.peel, label %for.inc.peel211, label %for.inc.peel.for.cond70.preheader_crit_edge

for.inc.peel.for.cond70.preheader_crit_edge:      ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond70.preheader

for.inc.peel211:                                  ; preds = %for.inc.peel
  %arrayidx.peel206 = getelementptr %struct.ndis_80211_var_ie, ptr %pIE, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx.peel206 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.peel206, align 1
  %arrayidx11.peel207 = getelementptr [26 x i8], ptr %HT_caps, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx11.peel207 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx11.peel207, align 1
  %and194.peel208 = and i8 %14, %12
  store i8 %and194.peel208, ptr %arrayidx11.peel207, align 1
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp5.peel214 = icmp ugt i8 %16, 2
  br i1 %cmp5.peel214, label %for.inc.peel224, label %for.inc.peel211.for.cond70.preheader_crit_edge

for.inc.peel211.for.cond70.preheader_crit_edge:   ; preds = %for.inc.peel211
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond70.preheader

for.inc.peel224:                                  ; preds = %for.inc.peel211
  %17 = ptrtoint ptr %AMPDU_para to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %AMPDU_para, align 2
  %19 = and i8 %18, 3
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx19, align 1
  %22 = and i8 %21, 3
  %23 = tail call i8 @llvm.umin.i8(i8 %19, i8 %22)
  %24 = and i8 %18, 28
  %25 = and i8 %21, 28
  %26 = tail call i8 @llvm.umax.i8(i8 %24, i8 %25)
  %or193.peel223 = or i8 %23, %26
  %27 = ptrtoint ptr %AMPDU_para to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %or193.peel223, ptr %AMPDU_para, align 2
  %28 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp5.peel227 = icmp ugt i8 %29, 3
  br i1 %cmp5.peel227, label %for.inc.peel224.for.inc_crit_edge, label %for.inc.peel224.for.cond70.preheader_crit_edge

for.inc.peel224.for.cond70.preheader_crit_edge:   ; preds = %for.inc.peel224
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond70.preheader

for.inc.peel224.for.inc_crit_edge:                ; preds = %for.inc.peel224
  br label %for.inc

for.cond70.preheader:                             ; preds = %for.inc.for.cond70.preheader_crit_edge, %for.inc.peel224.for.cond70.preheader_crit_edge, %for.inc.peel211.for.cond70.preheader_crit_edge, %for.inc.peel.for.cond70.preheader_crit_edge, %if.end3.for.cond70.preheader_crit_edge
  %arrayidx74 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 0
  %30 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx74, align 1
  %arrayidx78 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 0
  %32 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx78, align 1
  %and80192 = and i8 %33, %31
  store i8 %and80192, ptr %arrayidx78, align 1
  %arrayidx78.1 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 1
  %arrayidx78.2 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 2
  %arrayidx78.3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 3
  %arrayidx74.4 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 4
  %34 = ptrtoint ptr %arrayidx74.4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx74.4, align 1
  %arrayidx78.4 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %arrayidx78.4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx78.4, align 1
  %and80192.4 = and i8 %37, %35
  store i8 %and80192.4, ptr %arrayidx78.4, align 1
  %arrayidx74.5 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 5
  %38 = ptrtoint ptr %arrayidx74.5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx74.5, align 1
  %arrayidx78.5 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 5
  %40 = ptrtoint ptr %arrayidx78.5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx78.5, align 1
  %and80192.5 = and i8 %41, %39
  store i8 %and80192.5, ptr %arrayidx78.5, align 1
  %arrayidx74.6 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 6
  %42 = ptrtoint ptr %arrayidx74.6 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx74.6, align 1
  %arrayidx78.6 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 6
  %44 = ptrtoint ptr %arrayidx78.6 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx78.6, align 1
  %and80192.6 = and i8 %45, %43
  store i8 %and80192.6, ptr %arrayidx78.6, align 1
  %arrayidx74.7 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 7
  %46 = ptrtoint ptr %arrayidx74.7 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx74.7, align 1
  %arrayidx78.7 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 7
  %48 = ptrtoint ptr %arrayidx78.7 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx78.7, align 1
  %and80192.7 = and i8 %49, %47
  store i8 %and80192.7, ptr %arrayidx78.7, align 1
  %arrayidx74.8 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 8
  %50 = ptrtoint ptr %arrayidx74.8 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx74.8, align 1
  %arrayidx78.8 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 8
  %52 = ptrtoint ptr %arrayidx78.8 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx78.8, align 1
  %and80192.8 = and i8 %53, %51
  store i8 %and80192.8, ptr %arrayidx78.8, align 1
  %arrayidx74.9 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 9
  %54 = ptrtoint ptr %arrayidx74.9 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx74.9, align 1
  %arrayidx78.9 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 9
  %56 = ptrtoint ptr %arrayidx78.9 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx78.9, align 1
  %and80192.9 = and i8 %57, %55
  store i8 %and80192.9, ptr %arrayidx78.9, align 1
  %arrayidx74.10 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 10
  %58 = ptrtoint ptr %arrayidx74.10 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx74.10, align 1
  %arrayidx78.10 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 10
  %60 = ptrtoint ptr %arrayidx78.10 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx78.10, align 1
  %and80192.10 = and i8 %61, %59
  store i8 %and80192.10, ptr %arrayidx78.10, align 1
  %arrayidx74.11 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 11
  %62 = ptrtoint ptr %arrayidx74.11 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx74.11, align 1
  %arrayidx78.11 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 11
  %64 = ptrtoint ptr %arrayidx78.11 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx78.11, align 1
  %and80192.11 = and i8 %65, %63
  store i8 %and80192.11, ptr %arrayidx78.11, align 1
  %arrayidx74.12 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 12
  %66 = ptrtoint ptr %arrayidx74.12 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx74.12, align 1
  %arrayidx78.12 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 12
  %68 = ptrtoint ptr %arrayidx78.12 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx78.12, align 1
  %and80192.12 = and i8 %69, %67
  store i8 %and80192.12, ptr %arrayidx78.12, align 1
  %arrayidx74.13 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 13
  %70 = ptrtoint ptr %arrayidx74.13 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx74.13, align 1
  %arrayidx78.13 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 13
  %72 = ptrtoint ptr %arrayidx78.13 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx78.13, align 1
  %and80192.13 = and i8 %73, %71
  store i8 %and80192.13, ptr %arrayidx78.13, align 1
  %arrayidx74.14 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 14
  %74 = ptrtoint ptr %arrayidx74.14 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx74.14, align 1
  %arrayidx78.14 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 14
  %76 = ptrtoint ptr %arrayidx78.14 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx78.14, align 1
  %and80192.14 = and i8 %77, %75
  store i8 %and80192.14, ptr %arrayidx78.14, align 1
  %arrayidx74.15 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 15
  %78 = ptrtoint ptr %arrayidx74.15 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx74.15, align 1
  %arrayidx78.15 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 15
  %80 = ptrtoint ptr %arrayidx78.15 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx78.15, align 1
  %and80192.15 = and i8 %81, %79
  store i8 %and80192.15, ptr %arrayidx78.15, align 1
  %82 = ptrtoint ptr %arrayidx78.1 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %arrayidx78.1, align 1
  %83 = ptrtoint ptr %arrayidx78.2 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %arrayidx78.2, align 1
  %84 = ptrtoint ptr %arrayidx78.3 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %arrayidx78.3, align 1
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %85 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fw_state.i, align 4
  %87 = and i32 %86, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool88.not = icmp eq i32 %87, 0
  br i1 %tobool88.not, label %if.else105, label %if.then89

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %for.inc.peel224.for.inc_crit_edge
  %i.0199 = phi i32 [ %inc, %for.inc.for.inc_crit_edge ], [ 3, %for.inc.peel224.for.inc_crit_edge ]
  %arrayidx = getelementptr %struct.ndis_80211_var_ie, ptr %pIE, i32 0, i32 2, i32 %i.0199
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx, align 1
  %arrayidx11 = getelementptr [26 x i8], ptr %HT_caps, i32 0, i32 %i.0199
  %90 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx11, align 1
  %and194 = and i8 %91, %89
  store i8 %and194, ptr %arrayidx11, align 1
  %inc = add nuw nsw i32 %i.0199, 1
  %92 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %length, align 1
  %conv4 = zext i8 %93 to i32
  %cmp5 = icmp ult i32 %inc, %conv4
  br i1 %cmp5, label %for.inc.for.inc_crit_edge, label %for.inc.for.cond70.preheader_crit_edge, !llvm.loop !53

for.inc.for.cond70.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond70.preheader

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then89:                                        ; preds = %for.cond70.preheader
  %stbc_cap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 13
  %94 = ptrtoint ptr %stbc_cap to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %stbc_cap, align 1
  %96 = and i8 %95, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp92.not = icmp eq i8 %96, 0
  br i1 %cmp92.not, label %if.then89.if.end103_crit_edge, label %land.lhs.true

if.then89.if.end103_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end103

land.lhs.true:                                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #24
  %data94 = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %pIE, i32 0, i32 2
  %97 = ptrtoint ptr %data94 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %data94, align 1
  %99 = lshr i8 %98, 6
  %100 = and i8 %99, 2
  br label %if.end103

if.end103:                                        ; preds = %land.lhs.true, %if.then89.if.end103_crit_edge
  %cur_stbc_cap.0 = phi i8 [ 0, %if.then89.if.end103_crit_edge ], [ %100, %land.lhs.true ]
  %101 = ptrtoint ptr %stbc_cap to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %cur_stbc_cap.0, ptr %stbc_cap, align 1
  br label %cleanup

if.else105:                                       ; preds = %for.cond70.preheader
  %ldpc_cap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 12
  %102 = ptrtoint ptr %ldpc_cap to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %ldpc_cap, align 2
  %104 = and i8 %103, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp108.not = icmp eq i8 %104, 0
  br i1 %cmp108.not, label %if.else105.if.end121_crit_edge, label %land.lhs.true110

if.else105.if.end121_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end121

land.lhs.true110:                                 ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #24
  %data111 = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %pIE, i32 0, i32 2
  %105 = ptrtoint ptr %data111 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %data111, align 1
  %107 = and i8 %106, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool116.not = icmp eq i8 %107, 0
  %spec.select195 = select i1 %tobool116.not, i8 0, i8 10
  br label %if.end121

if.end121:                                        ; preds = %land.lhs.true110, %if.else105.if.end121_crit_edge
  %cur_ldpc_cap.0 = phi i8 [ 0, %if.else105.if.end121_crit_edge ], [ %spec.select195, %land.lhs.true110 ]
  %108 = ptrtoint ptr %ldpc_cap to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %cur_ldpc_cap.0, ptr %ldpc_cap, align 2
  %stbc_cap123 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 13
  %109 = ptrtoint ptr %stbc_cap123 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %stbc_cap123, align 1
  %111 = and i8 %110, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %cmp126.not = icmp eq i8 %111, 0
  br i1 %cmp126.not, label %if.end121.if.end139_crit_edge, label %land.lhs.true128

if.end121.if.end139_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end139

land.lhs.true128:                                 ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #24
  %add.ptr = getelementptr %struct.ndis_80211_var_ie, ptr %pIE, i32 1, i32 1
  %112 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %add.ptr, align 1
  %114 = and i8 %113, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool134.not = icmp eq i8 %114, 0
  %spec.select196 = select i1 %tobool134.not, i8 0, i8 10
  br label %if.end139

if.end139:                                        ; preds = %land.lhs.true128, %if.end121.if.end139_crit_edge
  %cur_stbc_cap.1 = phi i8 [ 0, %if.end121.if.end139_crit_edge ], [ %spec.select196, %land.lhs.true128 ]
  %115 = ptrtoint ptr %stbc_cap123 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %cur_stbc_cap.1, ptr %stbc_cap123, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %if.end103, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @HT_info_handler(ptr nocapture noundef %padapter, ptr noundef readonly %pIE) local_unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pIE, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %htpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33
  %0 = ptrtoint ptr %htpriv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %pIE, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %3)
  %cmp5 = icmp ugt i8 %3, 22
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #24
  %HT_info_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 22
  %4 = ptrtoint ptr %HT_info_enable to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %HT_info_enable, align 2
  %HT_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 38
  %data = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %pIE, i32 0, i32 2
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %length, align 1
  %conv10 = zext i8 %6 to i32
  %7 = call ptr @memcpy(ptr %HT_info, ptr %data, i32 %conv10)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HTOnAssocRsp(ptr noundef %padapter) local_unnamed_addr #7 align 64 {
entry:
  %max_AMPDU_len = alloca i8, align 1
  %min_MPDU_spacing = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %max_AMPDU_len) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %min_MPDU_spacing) #22
  %HT_info_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 22
  %0 = ptrtoint ptr %HT_info_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %HT_info_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %HT_caps_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 21
  %2 = ptrtoint ptr %HT_caps_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %HT_caps_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  %HT_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 20
  %4 = ptrtoint ptr %HT_enable to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %HT_enable, align 4
  %AMPDU_para = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %AMPDU_para to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %AMPDU_para, align 2
  %7 = and i8 %6, 3
  %8 = ptrtoint ptr %max_AMPDU_len to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %max_AMPDU_len, align 1
  %9 = lshr i8 %6, 2
  %10 = and i8 %9, 7
  %11 = ptrtoint ptr %min_MPDU_spacing to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %min_MPDU_spacing, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 37, ptr noundef nonnull %min_MPDU_spacing) #22
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 38, ptr noundef nonnull %max_AMPDU_len) #22
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %HT_enable3 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 20
  %12 = ptrtoint ptr %HT_enable3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %HT_enable3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %min_MPDU_spacing) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %max_AMPDU_len) #22
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ERP_IE_handler(ptr nocapture noundef writeonly %padapter, ptr nocapture noundef readonly %pIE) local_unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %pIE, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %ERP_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 18
  %2 = ptrtoint ptr %ERP_enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %ERP_enable, align 2
  %ERP_IE = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 19
  %data = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %pIE, i32 0, i32 2
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %length, align 1
  %conv3 = zext i8 %4 to i32
  %5 = call ptr @memcpy(ptr %ERP_IE, ptr %data, i32 %conv3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @VCS_update(ptr nocapture noundef readonly %padapter, ptr nocapture noundef writeonly %psta) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %vrtl_carrier_sense = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 11
  %0 = ptrtoint ptr %vrtl_carrier_sense to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vrtl_carrier_sense, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %1, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %rtsen = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 26
  %3 = ptrtoint ptr %rtsen to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %rtsen, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %vcs_type = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 12
  %4 = ptrtoint ptr %vcs_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vcs_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %rtsen4 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 26
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #24
  %6 = ptrtoint ptr %rtsen4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %rtsen4, align 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #24
  %7 = ptrtoint ptr %rtsen4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %rtsen4, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %ERP_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 18
  %8 = ptrtoint ptr %ERP_enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ERP_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %sw.default.if.else24_crit_edge, label %land.lhs.true

sw.default.if.else24_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else24

land.lhs.true:                                    ; preds = %sw.default
  %ERP_IE = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 19
  %10 = ptrtoint ptr %ERP_IE to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ERP_IE, align 1
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not = icmp eq i8 %12, 0
  br i1 %tobool11.not, label %land.lhs.true.if.else24_crit_edge, label %if.then12

land.lhs.true.if.else24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else24

if.then12:                                        ; preds = %land.lhs.true
  %vcs_type13 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 12
  %13 = ptrtoint ptr %vcs_type13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vcs_type13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp15 = icmp eq i8 %14, 1
  %rtsen18 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 26
  br i1 %cmp15, label %if.then17, label %if.else20

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #24
  %15 = ptrtoint ptr %rtsen18 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %rtsen18, align 1
  br label %sw.epilog

if.else20:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #24
  %16 = ptrtoint ptr %rtsen18 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %rtsen18, align 1
  br label %sw.epilog

if.else24:                                        ; preds = %land.lhs.true.if.else24_crit_edge, %sw.default.if.else24_crit_edge
  %rtsen25 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 26
  %17 = ptrtoint ptr %rtsen25 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %rtsen25, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else24, %if.else20, %if.then17, %if.else, %if.then, %sw.bb
  %.sink = phi i8 [ 0, %if.else24 ], [ 1, %if.else20 ], [ 0, %if.then17 ], [ 0, %if.then ], [ 1, %if.else ], [ 0, %sw.bb ]
  %cts2self26 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 25
  %18 = ptrtoint ptr %cts2self26 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink, ptr %cts2self26, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @update_ldpc_stbc_cap(ptr nocapture noundef %psta) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %htpriv = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38
  %0 = ptrtoint ptr %htpriv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %htpriv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %ldpc_cap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 12
  %2 = ptrtoint ptr %ldpc_cap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ldpc_cap, align 2
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not = icmp eq i8 %4, 0
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %ldpc = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 32
  %5 = ptrtoint ptr %ldpc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %ldpc, align 2
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %stbc_cap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 13
  %6 = ptrtoint ptr %stbc_cap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stbc_cap, align 1
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp7.not = icmp eq i8 %8, 0
  br i1 %cmp7.not, label %if.end.if.end13_crit_edge, label %if.end.if.end13.sink.split_crit_edge

if.end.if.end13.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end13.sink.split

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %ldpc11 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 32
  %9 = ptrtoint ptr %ldpc11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ldpc11, align 2
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.else, %if.end.if.end13.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.else ], [ 1, %if.end.if.end13.sink.split_crit_edge ]
  %stbc = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 33
  %10 = ptrtoint ptr %stbc to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink, ptr %stbc, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.end.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_check_bcn_info(ptr noundef %Adapter, ptr noundef %pframe, i32 noundef %packet_len) local_unnamed_addr #7 align 64 {
entry:
  %len = alloca i32, align 4
  %wpa_len = alloca i16, align 2
  %rsn_len = alloca i16, align 2
  %group_cipher = alloca i32, align 4
  %pairwise_cipher = alloca i32, align 4
  %is_8021x = alloca i32, align 4
  %wpa_ielen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #22
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wpa_len) #22
  %0 = ptrtoint ptr %wpa_len to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %wpa_len, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rsn_len) #22
  %1 = ptrtoint ptr %rsn_len to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %rsn_len, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group_cipher) #22
  %2 = ptrtoint ptr %group_cipher to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %group_cipher, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pairwise_cipher) #22
  %3 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pairwise_cipher, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_8021x) #22
  %4 = ptrtoint ptr %is_8021x to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %is_8021x, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wpa_ielen) #22
  %5 = ptrtoint ptr %wpa_ielen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wpa_ielen, align 4
  %6 = ptrtoint ptr %pframe to i32
  %add = add i32 %6, 16
  %7 = inttoptr i32 %add to ptr
  %tobool.not.i = icmp eq ptr %Adapter, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %is_client_associated_to_ap.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

is_client_associated_to_ap.exit:                  ; preds = %entry
  %mlmext_info.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 18
  %8 = ptrtoint ptr %mlmext_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mlmext_info.i, align 4
  %10 = and i32 %9, 16387
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %10)
  %.not = icmp eq i32 %10, 16386
  br i1 %.not, label %if.end, label %is_client_associated_to_ap.exit.cleanup_crit_edge

is_client_associated_to_ap.exit.cleanup_crit_edge: ; preds = %is_client_associated_to_ap.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %is_client_associated_to_ap.exit
  %sub = add i32 %packet_len, -24
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %sub)
  %cmp3 = icmp ugt i32 %sub, 768
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mac_address = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address, ptr noundef dereferenceable(6) %7, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %call9 = tail call ptr @_rtw_zmalloc(i32 noundef 872) #22
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %timeBcnInfoChkStart = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 72
  %12 = ptrtoint ptr %timeBcnInfoChkStart to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timeBcnInfoChkStart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp13.not = icmp eq i32 %13, 0
  br i1 %cmp13.not, label %if.end12.if.end26_crit_edge, label %land.lhs.true

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub15 = sub i32 %14, %13
  %call16 = tail call i32 @jiffies_to_msecs(i32 noundef %sub15) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call16)
  %cmp17 = icmp ugt i32 %call16, 1000
  br i1 %cmp17, label %if.then18, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end26

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  %15 = ptrtoint ptr %timeBcnInfoChkStart to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %timeBcnInfoChkStart, align 4
  %NumOfBcnInfoChkFail = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 71
  %16 = ptrtoint ptr %NumOfBcnInfoChkFail to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %NumOfBcnInfoChkFail, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then18, %land.lhs.true.if.end26_crit_edge, %if.end12.if.end26_crit_edge
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %add27 = add i32 %18, 104
  %19 = ptrtoint ptr %call9 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %add27, ptr %call9, align 1
  %20 = load i32, ptr %len, align 4
  %ie_length = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call9, i32 0, i32 11
  %21 = ptrtoint ptr %ie_length to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %ie_length, align 1
  %ies = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call9, i32 0, i32 12
  %add.ptr = getelementptr i8, ptr %pframe, i32 24
  %22 = call ptr @memcpy(ptr %ies, ptr %add.ptr, i32 %20)
  %add.ptr32 = getelementptr %struct.wlan_bssid_ex, ptr %call9, i32 0, i32 12, i32 12
  %sub34 = add i32 %20, -12
  %call35 = call ptr @rtw_get_ie(ptr noundef %add.ptr32, i32 noundef 45, ptr noundef nonnull %len, i32 noundef %sub34) #22
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end26.if.end42_crit_edge, label %land.lhs.true37

if.end26.if.end42_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end42

land.lhs.true37:                                  ; preds = %if.end26
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp38.not = icmp eq i32 %24, 0
  br i1 %cmp38.not, label %land.lhs.true37.if.end42_crit_edge, label %if.then40

land.lhs.true37.if.end42_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end42

if.then40:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #24
  %add.ptr41 = getelementptr i8, ptr %call35, i32 2
  %25 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %add.ptr41, align 1
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %land.lhs.true37.if.end42_crit_edge, %if.end26.if.end42_crit_edge
  %ht_cap_info.0 = phi i16 [ %27, %if.then40 ], [ 0, %land.lhs.true37.if.end42_crit_edge ], [ 0, %if.end26.if.end42_crit_edge ]
  %28 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %ie_length, align 1
  %sub47 = add i32 %29, -12
  %call48 = call ptr @rtw_get_ie(ptr noundef %add.ptr32, i32 noundef 61, ptr noundef nonnull %len, i32 noundef %sub47) #22
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end42.if.end57_crit_edge, label %land.lhs.true50

if.end42.if.end57_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end57

land.lhs.true50:                                  ; preds = %if.end42
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp51.not = icmp eq i32 %31, 0
  br i1 %cmp51.not, label %land.lhs.true50.if.end57_crit_edge, label %if.then53

land.lhs.true50.if.end57_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end57

if.then53:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #24
  %add.ptr54 = getelementptr i8, ptr %call48, i32 2
  %infos = getelementptr i8, ptr %call48, i32 3
  %32 = ptrtoint ptr %infos to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %infos, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %land.lhs.true50.if.end57_crit_edge, %if.end42.if.end57_crit_edge
  %pht_info.0 = phi ptr [ %add.ptr54, %if.then53 ], [ null, %land.lhs.true50.if.end57_crit_edge ], [ null, %if.end42.if.end57_crit_edge ]
  %ht_info_infos_0.0 = phi i8 [ %33, %if.then53 ], [ 0, %land.lhs.true50.if.end57_crit_edge ], [ 0, %if.end42.if.end57_crit_edge ]
  %bcn_info = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 20, i32 7
  %ht_cap_info59 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 20, i32 7, i32 4
  %34 = ptrtoint ptr %ht_cap_info59 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ht_cap_info59, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %ht_cap_info.0, i16 %35)
  %cmp61.not = icmp eq i16 %ht_cap_info.0, %35
  br i1 %cmp61.not, label %lor.lhs.false, label %if.end57.if.then71_crit_edge

if.end57.if.then71_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then71

lor.lhs.false:                                    ; preds = %if.end57
  %ht_info_infos_066 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 20, i32 7, i32 5
  %36 = ptrtoint ptr %ht_info_infos_066 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ht_info_infos_066, align 2
  %38 = xor i8 %37, %ht_info_infos_0.0
  %39 = and i8 %38, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp69.not = icmp eq i8 %39, 0
  br i1 %cmp69.not, label %lor.lhs.false.if.end76_crit_edge, label %lor.lhs.false.if.then71_crit_edge

lor.lhs.false.if.then71_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then71

lor.lhs.false.if.end76_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end76

if.then71:                                        ; preds = %lor.lhs.false.if.then71_crit_edge, %if.end57.if.then71_crit_edge
  %40 = ptrtoint ptr %ht_cap_info59 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %ht_cap_info.0, ptr %ht_cap_info59, align 4
  %ht_info_infos_075 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 20, i32 7, i32 5
  %41 = ptrtoint ptr %ht_info_infos_075 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %ht_info_infos_0.0, ptr %ht_info_infos_075, align 2
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %lor.lhs.false.if.end76_crit_edge
  %42 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %ie_length, align 1
  %sub81 = add i32 %43, -12
  %call82 = call ptr @rtw_get_ie(ptr noundef %add.ptr32, i32 noundef 3, ptr noundef nonnull %len, i32 noundef %sub81) #22
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %if.else87, label %if.then84

if.then84:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #24
  %add.ptr85 = getelementptr i8, ptr %call82, i32 2
  br label %if.end100

if.else87:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #24
  %44 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %ie_length, align 1
  %sub92 = add i32 %45, -12
  %call93 = call ptr @rtw_get_ie(ptr noundef %add.ptr32, i32 noundef 61, ptr noundef nonnull %len, i32 noundef %sub92) #22
  %tobool94.not = icmp eq ptr %pht_info.0, null
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 7
  %spec.select384 = select i1 %tobool94.not, ptr %cur_channel, ptr %pht_info.0
  br label %if.end100

if.end100:                                        ; preds = %if.else87, %if.then84
  %bcn_channel.0.in.in = phi ptr [ %add.ptr85, %if.then84 ], [ %spec.select384, %if.else87 ]
  %46 = ptrtoint ptr %bcn_channel.0.in.in to i32
  call void @__asan_load1_noabort(i32 %46)
  %bcn_channel.0.in = load i8, ptr %bcn_channel.0.in.in, align 1
  %cur_channel102 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 7
  %47 = ptrtoint ptr %cur_channel102 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cur_channel102, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %bcn_channel.0.in, i8 %48)
  %cmp104.not = icmp eq i8 %bcn_channel.0.in, %48
  br i1 %cmp104.not, label %if.end107, label %if.end100._mismatch_crit_edge

if.end100._mismatch_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #24
  br label %_mismatch

if.end107:                                        ; preds = %if.end100
  %49 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %ie_length, align 1
  %sub112 = add i32 %50, -12
  %call113 = call ptr @rtw_get_ie(ptr noundef %add.ptr32, i32 noundef 0, ptr noundef nonnull %len, i32 noundef %sub112) #22
  %tobool114.not = icmp eq ptr %call113, null
  br i1 %tobool114.not, label %if.end107.if.end122_crit_edge, label %if.then115

if.end107.if.end122_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end122

if.then115:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #24
  %add.ptr116 = getelementptr i8, ptr %call113, i32 1
  %51 = ptrtoint ptr %add.ptr116 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr116, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %52)
  %cmp118 = icmp ugt i8 %52, 32
  %narrow = select i1 %cmp118, i8 0, i8 %52
  %spec.store.select = zext i8 %narrow to i32
  br label %if.end122

if.end122:                                        ; preds = %if.then115, %if.end107.if.end122_crit_edge
  %ssid_len.0 = phi i32 [ %spec.store.select, %if.then115 ], [ 0, %if.end107.if.end122_crit_edge ]
  %ssid = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call9, i32 0, i32 3
  %ssid123 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call9, i32 0, i32 3, i32 1
  %add.ptr125 = getelementptr i8, ptr %call113, i32 2
  %53 = call ptr @memcpy(ptr %ssid123, ptr %add.ptr125, i32 %ssid_len.0)
  %54 = ptrtoint ptr %ssid to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %ssid_len.0, ptr %ssid, align 1
  %ssid132 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 20, i32 6, i32 3, i32 1
  %bcmp383 = call i32 @bcmp(ptr noundef dereferenceable(32) %ssid123, ptr noundef dereferenceable(32) %ssid132, i32 32) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp383)
  %tobool135.not = icmp eq i32 %bcmp383, 0
  br i1 %tobool135.not, label %lor.lhs.false136, label %if.end122.if.then144_crit_edge

if.end122.if.then144_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then144

lor.lhs.false136:                                 ; preds = %if.end122
  %ssid131 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 20, i32 6, i32 3
  %55 = ptrtoint ptr %ssid131 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ssid131, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ssid_len.0, i32 %56)
  %cmp142.not = icmp eq i32 %ssid_len.0, %56
  br i1 %cmp142.not, label %lor.lhs.false136.if.end158_crit_edge, label %lor.lhs.false136.if.then144_crit_edge

lor.lhs.false136.if.then144_crit_edge:            ; preds = %lor.lhs.false136
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then144

lor.lhs.false136.if.end158_crit_edge:             ; preds = %lor.lhs.false136
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end158

if.then144:                                       ; preds = %lor.lhs.false136.if.then144_crit_edge, %if.end122.if.then144_crit_edge
  %57 = ptrtoint ptr %ssid123 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ssid123, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp149.not = icmp eq i8 %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ssid_len.0)
  %cmp154.not = icmp eq i32 %ssid_len.0, 0
  %or.cond = select i1 %cmp149.not, i1 true, i1 %cmp154.not
  br i1 %or.cond, label %if.then144.if.end158_crit_edge, label %if.then144._mismatch_crit_edge

if.then144._mismatch_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #24
  br label %_mismatch

if.then144.if.end158_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end158

if.end158:                                        ; preds = %if.then144.if.end158_crit_edge, %lor.lhs.false136.if.end158_crit_edge
  %call159 = call zeroext i16 @rtw_get_capability(ptr noundef nonnull %call9) #22
  %59 = lshr i16 %call159, 4
  %.lobit = and i16 %59, 1
  %60 = zext i16 %.lobit to i32
  %61 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call9, i32 0, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %60, ptr %61, align 1
  %privacy168 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 20, i32 6, i32 4
  %63 = ptrtoint ptr %privacy168 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %privacy168, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %60)
  %cmp170.not = icmp eq i32 %64, %60
  br i1 %cmp170.not, label %if.end173, label %if.end158._mismatch_crit_edge

if.end158._mismatch_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #24
  br label %_mismatch

if.end173:                                        ; preds = %if.end158
  %65 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %ie_length, align 1
  call void @rtw_get_sec_ie(ptr noundef %ies, i32 noundef %66, ptr noundef null, ptr noundef nonnull %rsn_len, ptr noundef null, ptr noundef nonnull %wpa_len) #22
  %67 = ptrtoint ptr %rsn_len to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %rsn_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %cmp178.not = icmp eq i16 %68, 0
  br i1 %cmp178.not, label %if.else181, label %if.end173.if.end192_crit_edge

if.end173.if.end192_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end192

if.else181:                                       ; preds = %if.end173
  %69 = ptrtoint ptr %wpa_len to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %wpa_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %cmp183.not = icmp eq i16 %70, 0
  br i1 %cmp183.not, label %if.else186, label %if.else181.if.end192_crit_edge

if.else181.if.end192_crit_edge:                   ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end192

if.else186:                                       ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #24
  %71 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %61, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool188.not = icmp ne i32 %72, 0
  %spec.select = zext i1 %tobool188.not to i32
  br label %if.end192

if.end192:                                        ; preds = %if.else186, %if.else181.if.end192_crit_edge, %if.end173.if.end192_crit_edge
  %cmp202 = phi i1 [ false, %if.end173.if.end192_crit_edge ], [ true, %if.else181.if.end192_crit_edge ], [ false, %if.else186 ]
  %encryp_protocol.0 = phi i32 [ 3, %if.end173.if.end192_crit_edge ], [ 2, %if.else181.if.end192_crit_edge ], [ %spec.select, %if.else186 ]
  %73 = ptrtoint ptr %bcn_info to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bcn_info, align 4
  %conv195 = zext i8 %74 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %encryp_protocol.0, i32 %conv195)
  %cmp197.not = icmp eq i32 %encryp_protocol.0, %conv195
  br i1 %cmp197.not, label %if.end200, label %if.end192._mismatch_crit_edge

if.end192._mismatch_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #24
  br label %_mismatch

if.end200:                                        ; preds = %if.end192
  %cmp178.not.not = xor i1 %cmp178.not, true
  %brmerge = select i1 %cmp202, i1 true, i1 %cmp178.not.not
  br i1 %brmerge, label %if.then208, label %if.end200.if.end253_crit_edge

if.end200.if.end253_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end253

if.then208:                                       ; preds = %if.end200
  %75 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %ie_length, align 1
  %sub212 = add i32 %76, -12
  %call213 = call ptr @rtw_get_wpa_ie(ptr noundef %add.ptr32, ptr noundef nonnull %wpa_ielen, i32 noundef %sub212) #22
  %tobool214.not = icmp eq ptr %call213, null
  br i1 %tobool214.not, label %if.then208.if.else221_crit_edge, label %land.lhs.true215

if.then208.if.else221_crit_edge:                  ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else221

land.lhs.true215:                                 ; preds = %if.then208
  %77 = ptrtoint ptr %wpa_ielen to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %wpa_ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp216.not = icmp eq i32 %78, 0
  br i1 %cmp216.not, label %land.lhs.true215.if.else221_crit_edge, label %if.then218

land.lhs.true215.if.else221_crit_edge:            ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else221

if.then218:                                       ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #24
  %add219 = add i32 %78, 2
  %call220 = call i32 @rtw_parse_wpa_ie(ptr noundef nonnull %call213, i32 noundef %add219, ptr noundef nonnull %group_cipher, ptr noundef nonnull %pairwise_cipher, ptr noundef nonnull %is_8021x) #22
  br label %if.end235

if.else221:                                       ; preds = %land.lhs.true215.if.else221_crit_edge, %if.then208.if.else221_crit_edge
  %79 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %ie_length, align 1
  %sub225 = add i32 %80, -12
  %call226 = call ptr @rtw_get_wpa2_ie(ptr noundef %add.ptr32, ptr noundef nonnull %wpa_ielen, i32 noundef %sub225) #22
  %tobool227.not = icmp eq ptr %call226, null
  br i1 %tobool227.not, label %if.else221.if.end235_crit_edge, label %land.lhs.true228

if.else221.if.end235_crit_edge:                   ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end235

land.lhs.true228:                                 ; preds = %if.else221
  %81 = ptrtoint ptr %wpa_ielen to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %wpa_ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp229.not = icmp eq i32 %82, 0
  br i1 %cmp229.not, label %land.lhs.true228.if.end235_crit_edge, label %if.then231

land.lhs.true228.if.end235_crit_edge:             ; preds = %land.lhs.true228
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end235

if.then231:                                       ; preds = %land.lhs.true228
  call void @__sanitizer_cov_trace_pc() #24
  %add232 = add i32 %82, 2
  %call233 = call i32 @rtw_parse_wpa2_ie(ptr noundef nonnull %call226, i32 noundef %add232, ptr noundef nonnull %group_cipher, ptr noundef nonnull %pairwise_cipher, ptr noundef nonnull %is_8021x) #22
  br label %if.end235

if.end235:                                        ; preds = %if.then231, %land.lhs.true228.if.end235_crit_edge, %if.else221.if.end235_crit_edge, %if.then218
  %83 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pairwise_cipher, align 4
  %pairwise_cipher237 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 20, i32 7, i32 2
  %85 = ptrtoint ptr %pairwise_cipher237 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pairwise_cipher237, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp238.not = icmp eq i32 %84, %86
  br i1 %cmp238.not, label %lor.lhs.false240, label %if.end235._mismatch_crit_edge

if.end235._mismatch_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #24
  br label %_mismatch

lor.lhs.false240:                                 ; preds = %if.end235
  %87 = ptrtoint ptr %group_cipher to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %group_cipher, align 4
  %group_cipher242 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 20, i32 7, i32 1
  %89 = ptrtoint ptr %group_cipher242 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %group_cipher242, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp243.not = icmp eq i32 %88, %90
  br i1 %cmp243.not, label %if.end246, label %lor.lhs.false240._mismatch_crit_edge

lor.lhs.false240._mismatch_crit_edge:             ; preds = %lor.lhs.false240
  call void @__sanitizer_cov_trace_pc() #24
  br label %_mismatch

if.end246:                                        ; preds = %lor.lhs.false240
  %91 = ptrtoint ptr %is_8021x to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %is_8021x, align 4
  %is_8021x248 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 20, i32 7, i32 3
  %93 = ptrtoint ptr %is_8021x248 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %is_8021x248, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %94)
  %cmp249.not = icmp eq i32 %92, %94
  br i1 %cmp249.not, label %if.end246.if.end253_crit_edge, label %if.end246._mismatch_crit_edge

if.end246._mismatch_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #24
  br label %_mismatch

if.end246.if.end253_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end253

if.end253:                                        ; preds = %if.end246.if.end253_crit_edge, %if.end200.if.end253_crit_edge
  call void @kfree(ptr noundef nonnull %call9) #22
  br label %cleanup

_mismatch:                                        ; preds = %if.end246._mismatch_crit_edge, %lor.lhs.false240._mismatch_crit_edge, %if.end235._mismatch_crit_edge, %if.end192._mismatch_crit_edge, %if.end158._mismatch_crit_edge, %if.then144._mismatch_crit_edge, %if.end100._mismatch_crit_edge
  call void @kfree(ptr noundef nonnull %call9) #22
  %NumOfBcnInfoChkFail254 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 71
  %95 = ptrtoint ptr %NumOfBcnInfoChkFail254 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %NumOfBcnInfoChkFail254, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp256 = icmp eq i8 %96, 0
  br i1 %cmp256, label %if.then258, label %if.end260thread-pre-split

if.then258:                                       ; preds = %_mismatch
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %97 = load volatile i32, ptr @jiffies, align 128
  %98 = ptrtoint ptr %timeBcnInfoChkStart to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %timeBcnInfoChkStart, align 4
  br label %if.end260

if.end260thread-pre-split:                        ; preds = %_mismatch
  call void @__sanitizer_cov_trace_pc() #24
  %99 = ptrtoint ptr %timeBcnInfoChkStart to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pr = load i32, ptr %timeBcnInfoChkStart, align 4
  br label %if.end260

if.end260:                                        ; preds = %if.end260thread-pre-split, %if.then258
  %100 = phi i32 [ %.pr, %if.end260thread-pre-split ], [ %97, %if.then258 ]
  %inc = add i8 %96, 1
  %101 = ptrtoint ptr %NumOfBcnInfoChkFail254 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %inc, ptr %NumOfBcnInfoChkFail254, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp263.not = icmp eq i32 %100, 0
  br i1 %cmp263.not, label %if.end260.cleanup_crit_edge, label %land.lhs.true265

if.end260.cleanup_crit_edge:                      ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

land.lhs.true265:                                 ; preds = %if.end260
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %102 = load volatile i32, ptr @jiffies, align 128
  %sub267 = sub i32 %102, %100
  %call268 = call i32 @jiffies_to_msecs(i32 noundef %sub267) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %call268)
  %cmp269 = icmp ult i32 %call268, 1001
  br i1 %cmp269, label %land.lhs.true271, label %land.lhs.true265.cleanup_crit_edge

land.lhs.true265.cleanup_crit_edge:               ; preds = %land.lhs.true265
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

land.lhs.true271:                                 ; preds = %land.lhs.true265
  %103 = ptrtoint ptr %NumOfBcnInfoChkFail254 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %NumOfBcnInfoChkFail254, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %104)
  %cmp274 = icmp ugt i8 %104, 2
  br i1 %cmp274, label %if.then276, label %land.lhs.true271.cleanup_crit_edge

land.lhs.true271.cleanup_crit_edge:               ; preds = %land.lhs.true271
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then276:                                       ; preds = %land.lhs.true271
  call void @__sanitizer_cov_trace_pc() #24
  %105 = ptrtoint ptr %timeBcnInfoChkStart to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %timeBcnInfoChkStart, align 4
  %106 = ptrtoint ptr %NumOfBcnInfoChkFail254 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %NumOfBcnInfoChkFail254, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then276, %land.lhs.true271.cleanup_crit_edge, %land.lhs.true265.cleanup_crit_edge, %if.end260.cleanup_crit_edge, %if.end253, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %is_client_associated_to_ap.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then276 ], [ 1, %if.end253 ], [ 1, %is_client_associated_to_ap.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ 1, %if.end8.cleanup_crit_edge ], [ 1, %land.lhs.true271.cleanup_crit_edge ], [ 1, %land.lhs.true265.cleanup_crit_edge ], [ 1, %if.end260.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wpa_ielen) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_8021x) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pairwise_cipher) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group_cipher) #22
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rsn_len) #22
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wpa_len) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #22
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_zmalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_ie(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw_get_capability(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_get_sec_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_wpa_ie(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_parse_wpa_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_wpa2_ie(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_parse_wpa2_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_beacon_info(ptr noundef %padapter, ptr noundef readonly %pframe, i32 noundef %pkt_len, ptr nocapture noundef writeonly %psta) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %pkt_len, -36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp47.not = icmp eq i32 %sub, 0
  br i1 %cmp47.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr = getelementptr i8, ptr %pframe, i32 36
  %ERP_enable.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 18
  %ERP_IE.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 19
  %vrtl_carrier_sense.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 11
  %vcs_type.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 12
  %rtsen4.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 26
  %cts2self26.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 25
  %htpriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33
  %cur_channel.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %bw_mode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 38
  %cur_bwmode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %cur_ch_offset.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 9
  %bwmode_updated.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 32
  %HT_info_enable.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 22
  %HT_info.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 38
  %stapriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %mac_address.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 1
  %qospriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 30
  %WMM_param.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 36
  %WMM_enable7.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 17
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %add13, %sw.epilog.for.body_crit_edge ]
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %i.048
  %0 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr1, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %1, label %for.body.sw.epilog_crit_edge [
    i8 -35, label %sw.bb
    i8 61, label %sw.bb9
    i8 42, label %sw.bb10
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %data = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr1, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %data, ptr noundef nonnull dereferenceable(6) @WMM_PARA_OUI, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %length = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr1, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %4)
  %cmp3 = icmp eq i8 %4, 24
  br i1 %cmp3, label %if.then, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

if.then:                                          ; preds = %land.lhs.true
  %5 = ptrtoint ptr %qospriv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qospriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %WMM_param_handler.exit.thread42, label %if.end.i

WMM_param_handler.exit.thread42:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %7 = ptrtoint ptr %WMM_enable7.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %WMM_enable7.i, align 1
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then
  %add.ptr.i = getelementptr %struct.ndis_80211_var_ie, ptr %add.ptr1, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(18) %WMM_param.i, ptr noundef dereferenceable(18) %add.ptr.i, i32 18) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.then7

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

if.then7:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  %8 = call ptr @memcpy(ptr %WMM_param.i, ptr %add.ptr.i, i32 18)
  %9 = ptrtoint ptr %WMM_enable7.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %WMM_enable7.i, align 1
  tail call void @report_wmm_edca_update(ptr noundef %padapter) #22
  br label %sw.epilog

sw.bb9:                                           ; preds = %for.body
  %tobool.not.i26 = icmp eq ptr %add.ptr1, null
  br i1 %tobool.not.i26, label %sw.bb9.sw.epilog_crit_edge, label %if.end.i28

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

if.end.i28:                                       ; preds = %sw.bb9
  %10 = ptrtoint ptr %htpriv.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %htpriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.i27 = icmp eq i8 %11, 0
  br i1 %cmp.i27, label %if.end.i28.sw.epilog_crit_edge, label %if.end3.i

if.end.i28.sw.epilog_crit_edge:                   ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

if.end3.i:                                        ; preds = %if.end.i28
  %length.i = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr1, i32 0, i32 1
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %13)
  %cmp5.i = icmp ugt i8 %13, 22
  br i1 %cmp5.i, label %if.end3.i.sw.epilog_crit_edge, label %if.end8.i

if.end3.i.sw.epilog_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

if.end8.i:                                        ; preds = %if.end3.i
  %14 = ptrtoint ptr %cur_channel.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cur_channel.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %15)
  %cmp10.i = icmp ugt i8 %15, 14
  %16 = ptrtoint ptr %bw_mode.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bw_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %17)
  %cmp14.not.i = icmp ult i8 %17, 16
  %18 = and i8 %17, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp21.not.i = icmp eq i8 %18, 0
  %tobool30.not.i = select i1 %cmp10.i, i1 %cmp14.not.i, i1 %cmp21.not.i
  %infos.i = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr1, i32 1, i32 1
  %19 = ptrtoint ptr %infos.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %infos.i, align 1
  %conv26.i = zext i8 %20 to i32
  %and27.i = and i32 %conv26.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %brmerge.i = select i1 %tobool28.not.i, i1 true, i1 %tobool30.not.i
  br i1 %brmerge.i, label %if.end8.i.if.end38.i_crit_edge, label %if.then31.i

if.end8.i.if.end38.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end38.i

if.then31.i:                                      ; preds = %if.end8.i
  %and35.i = and i32 %conv26.i, 3
  %21 = zext i32 %and35.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %and35.i, label %sw.default.i [
    i32 1, label %if.then31.i.if.end38.i_crit_edge
    i32 3, label %sw.bb36.i
  ]

if.then31.i.if.end38.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end38.i

sw.bb36.i:                                        ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end38.i

sw.default.i:                                     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end38.i

if.end38.i:                                       ; preds = %sw.default.i, %sw.bb36.i, %if.then31.i.if.end38.i_crit_edge, %if.end8.i.if.end38.i_crit_edge
  %new_ch_offset.0.i = phi i8 [ 0, %sw.default.i ], [ 2, %sw.bb36.i ], [ 1, %if.then31.i.if.end38.i_crit_edge ], [ 0, %if.end8.i.if.end38.i_crit_edge ]
  %new_bwmode.0.i = phi i8 [ 0, %sw.default.i ], [ 1, %sw.bb36.i ], [ 1, %if.then31.i.if.end38.i_crit_edge ], [ 0, %if.end8.i.if.end38.i_crit_edge ]
  %22 = ptrtoint ptr %cur_bwmode.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cur_bwmode.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %new_bwmode.0.i, i8 %23)
  %cmp41.not.i = icmp eq i8 %new_bwmode.0.i, %23
  br i1 %cmp41.not.i, label %lor.lhs.false.i, label %if.end38.i.if.end3.i.i_crit_edge

if.end38.i.if.end3.i.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end3.i.i

lor.lhs.false.i:                                  ; preds = %if.end38.i
  %24 = ptrtoint ptr %cur_ch_offset.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cur_ch_offset.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %new_ch_offset.0.i, i8 %25)
  %cmp45.not.i = icmp eq i8 %new_ch_offset.0.i, %25
  br i1 %cmp45.not.i, label %if.end52.i.thread50, label %lor.lhs.false.i.if.end3.i.i_crit_edge

lor.lhs.false.i.if.end3.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %lor.lhs.false.i.if.end3.i.i_crit_edge, %if.end38.i.if.end3.i.i_crit_edge
  %26 = ptrtoint ptr %bwmode_updated.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %bwmode_updated.i, align 4
  %27 = ptrtoint ptr %cur_bwmode.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %new_bwmode.0.i, ptr %cur_bwmode.i, align 1
  %28 = ptrtoint ptr %cur_ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %new_ch_offset.0.i, ptr %cur_ch_offset.i, align 2
  %29 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %30)
  %cmp5.i.i = icmp ugt i8 %30, 22
  br i1 %cmp5.i.i, label %if.end3.i.i.if.then57.i_crit_edge, label %if.end52.i

if.end3.i.i.if.then57.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then57.i

if.end52.i.thread50:                              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  %31 = ptrtoint ptr %bwmode_updated.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %bwmode_updated.i, align 4
  br label %sw.epilog

if.end52.i:                                       ; preds = %if.end3.i.i
  %32 = ptrtoint ptr %HT_info_enable.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %HT_info_enable.i.i, align 2
  %data.i.i = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr1, i32 0, i32 2
  %33 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %length.i, align 1
  %conv10.i.i = zext i8 %34 to i32
  %35 = call ptr @memcpy(ptr %HT_info.i.i, ptr %data.i.i, i32 %conv10.i.i)
  %36 = ptrtoint ptr %bwmode_updated.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %.pr = load i8, ptr %bwmode_updated.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr)
  %cmp55.i = icmp eq i8 %.pr, 1
  br i1 %cmp55.i, label %if.end52.i.if.then57.i_crit_edge, label %if.end52.i.sw.epilog_crit_edge

if.end52.i.sw.epilog_crit_edge:                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

if.end52.i.if.then57.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then57.i

if.then57.i:                                      ; preds = %if.end52.i.if.then57.i_crit_edge, %if.end3.i.i.if.then57.i_crit_edge
  %call.i = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv.i, ptr noundef %mac_address.i) #22
  %tobool59.not.i = icmp eq ptr %call.i, null
  br i1 %tobool59.not.i, label %if.then57.i.sw.epilog_crit_edge, label %if.then60.i

if.then57.i.sw.epilog_crit_edge:                  ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

if.then60.i:                                      ; preds = %if.then57.i
  %htpriv61.i = getelementptr inbounds %struct.sta_info, ptr %call.i, i32 0, i32 38
  %37 = ptrtoint ptr %htpriv61.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %htpriv61.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool63.not.i = icmp eq i8 %38, 0
  br i1 %tobool63.not.i, label %if.else68.i, label %if.then64.i

if.then64.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #24
  %39 = ptrtoint ptr %cur_bwmode.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cur_bwmode.i, align 1
  %bw_mode66.i = getelementptr inbounds %struct.sta_info, ptr %call.i, i32 0, i32 31
  %41 = ptrtoint ptr %bw_mode66.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %bw_mode66.i, align 1
  %42 = ptrtoint ptr %cur_ch_offset.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cur_ch_offset.i, align 2
  br label %if.end71.i

if.else68.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #24
  %bw_mode69.i = getelementptr inbounds %struct.sta_info, ptr %call.i, i32 0, i32 31
  %44 = ptrtoint ptr %bw_mode69.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %bw_mode69.i, align 1
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.else68.i, %if.then64.i
  %.sink.i29 = phi i8 [ 0, %if.else68.i ], [ %43, %if.then64.i ]
  %45 = getelementptr inbounds %struct.sta_info, ptr %call.i, i32 0, i32 38, i32 7
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %.sink.i29, ptr %45, align 1
  %call72.i = tail call zeroext i8 @rtw_dm_ra_mask_wk_cmd(ptr noundef %padapter, ptr noundef nonnull %call.i) #22
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.body
  %length.i30 = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr1, i32 0, i32 1
  %47 = ptrtoint ptr %length.i30 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %length.i30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp.i31 = icmp ugt i8 %48, 1
  br i1 %cmp.i31, label %sw.bb10.ERP_IE_handler.exit_crit_edge, label %if.end.i32

sw.bb10.ERP_IE_handler.exit_crit_edge:            ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #24
  br label %ERP_IE_handler.exit

if.end.i32:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #24
  %49 = ptrtoint ptr %ERP_enable.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %ERP_enable.i, align 2
  %data.i = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr1, i32 0, i32 2
  %50 = ptrtoint ptr %length.i30 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %length.i30, align 1
  %conv3.i = zext i8 %51 to i32
  %52 = call ptr @memcpy(ptr %ERP_IE.i, ptr %data.i, i32 %conv3.i)
  br label %ERP_IE_handler.exit

ERP_IE_handler.exit:                              ; preds = %if.end.i32, %sw.bb10.ERP_IE_handler.exit_crit_edge
  %53 = ptrtoint ptr %vrtl_carrier_sense.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %vrtl_carrier_sense.i, align 2
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %54, label %sw.default.i37 [
    i8 0, label %ERP_IE_handler.exit.VCS_update.exit_crit_edge
    i8 1, label %sw.bb1.i
  ]

ERP_IE_handler.exit.VCS_update.exit_crit_edge:    ; preds = %ERP_IE_handler.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %VCS_update.exit

sw.bb1.i:                                         ; preds = %ERP_IE_handler.exit
  call void @__sanitizer_cov_trace_pc() #24
  %56 = ptrtoint ptr %vcs_type.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %vcs_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp.i33 = icmp eq i8 %57, 1
  %not.cmp.i33 = xor i1 %cmp.i33, true
  br label %VCS_update.exit

sw.default.i37:                                   ; preds = %ERP_IE_handler.exit
  %58 = ptrtoint ptr %ERP_enable.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ERP_enable.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i36 = icmp eq i8 %59, 0
  br i1 %tobool.not.i36, label %sw.default.i37.VCS_update.exit_crit_edge, label %land.lhs.true.i

sw.default.i37.VCS_update.exit_crit_edge:         ; preds = %sw.default.i37
  call void @__sanitizer_cov_trace_pc() #24
  br label %VCS_update.exit

land.lhs.true.i:                                  ; preds = %sw.default.i37
  %60 = ptrtoint ptr %ERP_IE.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ERP_IE.i, align 1
  %62 = and i8 %61, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool11.not.i = icmp eq i8 %62, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.VCS_update.exit_crit_edge, label %if.then12.i

land.lhs.true.i.VCS_update.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %VCS_update.exit

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  %63 = ptrtoint ptr %vcs_type.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %vcs_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %64)
  %cmp15.i = icmp eq i8 %64, 1
  %not.cmp15.i = xor i1 %cmp15.i, true
  br label %VCS_update.exit

VCS_update.exit:                                  ; preds = %if.then12.i, %land.lhs.true.i.VCS_update.exit_crit_edge, %sw.default.i37.VCS_update.exit_crit_edge, %sw.bb1.i, %ERP_IE_handler.exit.VCS_update.exit_crit_edge
  %.sink.shrunk = phi i1 [ false, %ERP_IE_handler.exit.VCS_update.exit_crit_edge ], [ %cmp.i33, %sw.bb1.i ], [ %cmp15.i, %if.then12.i ], [ false, %land.lhs.true.i.VCS_update.exit_crit_edge ], [ false, %sw.default.i37.VCS_update.exit_crit_edge ]
  %.sink.i39.shrunk = phi i1 [ false, %ERP_IE_handler.exit.VCS_update.exit_crit_edge ], [ %not.cmp.i33, %sw.bb1.i ], [ %not.cmp15.i, %if.then12.i ], [ false, %land.lhs.true.i.VCS_update.exit_crit_edge ], [ false, %sw.default.i37.VCS_update.exit_crit_edge ]
  %.sink.i39 = zext i1 %.sink.i39.shrunk to i8
  %.sink = zext i1 %.sink.shrunk to i8
  %65 = ptrtoint ptr %rtsen4.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %.sink, ptr %rtsen4.i, align 1
  %66 = ptrtoint ptr %cts2self26.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %.sink.i39, ptr %cts2self26.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %VCS_update.exit, %if.end71.i, %if.then57.i.sw.epilog_crit_edge, %if.end52.i.sw.epilog_crit_edge, %if.end52.i.thread50, %if.end3.i.sw.epilog_crit_edge, %if.end.i28.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %if.then7, %if.end.i.sw.epilog_crit_edge, %WMM_param_handler.exit.thread42, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %length11 = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr1, i32 0, i32 1
  %67 = ptrtoint ptr %length11 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %length11, align 1
  %conv12 = zext i8 %68 to i32
  %add = add i32 %i.048, 2
  %add13 = add i32 %add, %conv12
  %cmp = icmp ult i32 %add13, %sub
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @report_wmm_edca_update(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @is_ap_in_tkip(ptr noundef %padapter) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %call = tail call zeroext i16 @rtw_get_capability(ptr noundef %network) #22
  %0 = and i16 %call, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %ies = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12
  %ie_length = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 11
  %1 = ptrtoint ptr %ie_length to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ie_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %cmp38 = icmp ugt i32 %2, 12
  br i1 %cmp38, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.039 = phi i32 [ %add23, %sw.epilog.for.body_crit_edge ], [ 12, %for.cond.preheader.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %ies, i32 %i.039
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %add.ptr, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %4, label %for.body.sw.epilog_crit_edge [
    i8 -35, label %sw.bb
    i8 48, label %sw.bb14
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %data = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr, i32 0, i32 2
  %bcmp36 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %data, ptr noundef nonnull dereferenceable(4) @RTW_WPA_OUI, i32 4) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp36)
  %tobool7.not = icmp eq i32 %bcmp36, 0
  br i1 %tobool7.not, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %add.ptr10 = getelementptr i8, ptr %data, i32 12
  %bcmp37 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr10, ptr noundef nonnull dereferenceable(4) @WPA_TKIP_CIPHER, i32 4) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp37)
  %tobool12.not = icmp eq i32 %bcmp37, 0
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

sw.bb14:                                          ; preds = %for.body
  %data15 = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr, i32 0, i32 2
  %add.ptr17 = getelementptr i8, ptr %data15, i32 8
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr17, ptr noundef nonnull dereferenceable(4) @RSN_TKIP_CIPHER, i32 4) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool19.not = icmp eq i32 %bcmp, 0
  br i1 %tobool19.not, label %sw.bb14.cleanup_crit_edge, label %sw.bb14.sw.epilog_crit_edge

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb14.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %length = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %length, align 1
  %conv22 = zext i8 %7 to i32
  %add = add i32 %i.039, 2
  %add23 = add i32 %add, %conv22
  %cmp = icmp ult i32 %add23, %2
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %sw.bb14.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @support_short_GI(ptr nocapture noundef readonly %padapter, ptr nocapture noundef readonly %pHT_caps, i8 noundef zeroext %bwmode) local_unnamed_addr #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %HT_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 20
  %0 = ptrtoint ptr %HT_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %HT_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %2 = and i8 %bwmode, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  %3 = ptrtoint ptr %pHT_caps to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %pHT_caps, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv3 = zext i16 %5 to i32
  %shl = select i1 %tobool1.not, i32 32, i32 64
  %and5 = and i32 %shl, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp ne i32 %and5, 0
  %. = zext i1 %tobool6.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @get_highest_rate_idx(i32 noundef %mask) local_unnamed_addr #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 31, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.05
  %and = and i32 %shl, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %conv = trunc i32 %i.05 to i8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.05, -1
  %cmp.not = icmp eq i32 %i.05, 0
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then
  %rate_idx.0 = phi i8 [ %conv, %if.then ], [ 0, %for.inc.for.end_crit_edge ]
  ret i8 %rate_idx.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Update_RA_Entry(ptr nocapture readnone %padapter, ptr noundef %psta) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw_hal_update_ra_mask(ptr noundef %psta, i8 noundef zeroext 0) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_update_ra_mask(ptr noundef, i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_sta_rate(ptr nocapture noundef readnone %padapter, ptr noundef %psta) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw_hal_update_ra_mask(ptr noundef %psta, i8 noundef zeroext 0) #22
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @check_assoc_AP(ptr nocapture noundef readonly %pframe, i32 noundef %len) local_unnamed_addr #19 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %len)
  %cmp79 = icmp ugt i32 %len, 12
  br i1 %cmp79, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %entry.for.body_crit_edge
  %i.080 = phi i32 [ %add54, %sw.epilog.for.body_crit_edge ], [ 12, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %pframe, i32 %i.080
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %1)
  %cond = icmp eq i8 %1, -35
  br i1 %cond, label %sw.bb, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %data = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @ARTHEROS_OUI1, i32 3) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %bcmp70 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @ARTHEROS_OUI2, i32 3) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp70)
  %tobool4.not = icmp eq i32 %bcmp70, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.else

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %bcmp71 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @BROADCOM_OUI1, i32 3) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp71)
  %tobool8.not = icmp eq i32 %bcmp71, 0
  br i1 %tobool8.not, label %if.else.cleanup_crit_edge, label %lor.lhs.false9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false9:                                   ; preds = %if.else
  %bcmp72 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @BROADCOM_OUI2, i32 3) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp72)
  %tobool13.not = icmp eq i32 %bcmp72, 0
  br i1 %tobool13.not, label %lor.lhs.false9.cleanup_crit_edge, label %lor.lhs.false14

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false9
  %bcmp73 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @BROADCOM_OUI3, i32 3) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp73)
  %tobool18.not = icmp eq i32 %bcmp73, 0
  br i1 %tobool18.not, label %lor.lhs.false14.cleanup_crit_edge, label %if.else20

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.else20:                                        ; preds = %lor.lhs.false14
  %bcmp74 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @MARVELL_OUI, i32 3) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74)
  %tobool24.not = icmp eq i32 %bcmp74, 0
  br i1 %tobool24.not, label %if.else20.cleanup_crit_edge, label %if.else26

if.else20.cleanup_crit_edge:                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.else26:                                        ; preds = %if.else20
  %bcmp75 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @RALINK_OUI, i32 3) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp75)
  %tobool30.not = icmp eq i32 %bcmp75, 0
  br i1 %tobool30.not, label %if.else26.cleanup_crit_edge, label %if.else32

if.else26.cleanup_crit_edge:                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.else32:                                        ; preds = %if.else26
  %bcmp76 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @CISCO_OUI, i32 3) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp76)
  %tobool36.not = icmp eq i32 %bcmp76, 0
  br i1 %tobool36.not, label %if.else32.cleanup_crit_edge, label %if.else38

if.else32.cleanup_crit_edge:                      ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.else38:                                        ; preds = %if.else32
  %bcmp77 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @REALTEK_OUI, i32 3) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp77)
  %tobool42.not = icmp eq i32 %bcmp77, 0
  br i1 %tobool42.not, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.else38
  %length.i = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr, i32 0, i32 1
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp.i = icmp ugt i8 %3, 4
  br i1 %cmp.i, label %if.then.i, label %if.then43.get_realtek_assoc_AP_vender.exit_crit_edge

if.then43.get_realtek_assoc_AP_vender.exit_crit_edge: ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #24
  br label %get_realtek_assoc_AP_vender.exit

if.then.i:                                        ; preds = %if.then43
  %arrayidx.i = getelementptr %struct.ndis_80211_var_ie, ptr %add.ptr, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp3.i = icmp eq i8 %5, 1
  %arrayidx7.i = getelementptr %struct.ndis_80211_var_ie, ptr %add.ptr, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7.i, align 1
  br i1 %cmp3.i, label %if.end10.thread.i, label %if.end10.i

if.end10.thread.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  %8 = and i8 %7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1, i32 2
  %9 = and i8 %7, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool15.not51.i = icmp eq i8 %9, 0
  %spec.select4652.i = select i1 %tobool15.not51.i, i32 %spec.select.i, i32 9
  br label %get_realtek_assoc_AP_vender.exit

if.end10.i:                                       ; preds = %if.then.i
  %10 = and i8 %7, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool15.not.i = icmp eq i8 %10, 0
  %spec.select46.i = select i1 %tobool15.not.i, i32 1, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp21.i = icmp eq i8 %5, 2
  br i1 %cmp21.i, label %if.then23.i, label %if.end10.i.get_realtek_assoc_AP_vender.exit_crit_edge

if.end10.i.get_realtek_assoc_AP_vender.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %get_realtek_assoc_AP_vender.exit

if.then23.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx25.i = getelementptr %struct.ndis_80211_var_ie, ptr %add.ptr, i32 4
  %11 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx25.i, align 1
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool28.not.i = icmp eq i8 %13, 0
  %spec.select47.i = select i1 %tobool28.not.i, i32 %spec.select46.i, i32 16
  %14 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool35.not.i = icmp eq i8 %14, 0
  %spec.select48.i = select i1 %tobool35.not.i, i32 %spec.select47.i, i32 17
  br label %get_realtek_assoc_AP_vender.exit

get_realtek_assoc_AP_vender.exit:                 ; preds = %if.then23.i, %if.end10.i.get_realtek_assoc_AP_vender.exit_crit_edge, %if.end10.thread.i, %if.then43.get_realtek_assoc_AP_vender.exit_crit_edge
  %Vender.3.i = phi i32 [ %spec.select46.i, %if.end10.i.get_realtek_assoc_AP_vender.exit_crit_edge ], [ 1, %if.then43.get_realtek_assoc_AP_vender.exit_crit_edge ], [ %spec.select48.i, %if.then23.i ], [ %spec.select4652.i, %if.end10.thread.i ]
  %conv45 = trunc i32 %Vender.3.i to i8
  br label %cleanup

if.else46:                                        ; preds = %if.else38
  %bcmp78 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @AIRGOCAP_OUI, i32 3) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp78)
  %tobool50.not = icmp eq i32 %bcmp78, 0
  br i1 %tobool50.not, label %if.else46.cleanup_crit_edge, label %if.else46.sw.epilog_crit_edge

if.else46.sw.epilog_crit_edge:                    ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

if.else46.cleanup_crit_edge:                      ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

sw.epilog:                                        ; preds = %if.else46.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %length = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %add.ptr, i32 0, i32 1
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %length, align 1
  %conv53 = zext i8 %16 to i32
  %add = add i32 %i.080, 2
  %add54 = add i32 %add, %conv53
  %cmp = icmp ult i32 %add54, %len
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %if.else46.cleanup_crit_edge, %get_realtek_assoc_AP_vender.exit, %if.else32.cleanup_crit_edge, %if.else26.cleanup_crit_edge, %if.else20.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv45, %get_realtek_assoc_AP_vender.exit ], [ 0, %entry.cleanup_crit_edge ], [ 5, %lor.lhs.false.cleanup_crit_edge ], [ 5, %sw.bb.cleanup_crit_edge ], [ 3, %lor.lhs.false14.cleanup_crit_edge ], [ 3, %lor.lhs.false9.cleanup_crit_edge ], [ 3, %if.else.cleanup_crit_edge ], [ 8, %if.else20.cleanup_crit_edge ], [ 4, %if.else26.cleanup_crit_edge ], [ 6, %if.else32.cleanup_crit_edge ], [ 11, %if.else46.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_IOT_info(ptr noundef %padapter) local_unnamed_addr #7 align 64 {
entry:
  %mode.addr.i15 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %assoc_AP_vendor = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 14
  %0 = ptrtoint ptr %assoc_AP_vendor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %assoc_AP_vendor, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %1, label %sw.default [
    i8 8, label %sw.bb
    i8 4, label %sw.bb1
    i8 1, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %turboMode_cts2self = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 24
  %3 = ptrtoint ptr %turboMode_cts2self to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %turboMode_cts2self, align 4
  %turboMode_rtsen = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 25
  %4 = ptrtoint ptr %turboMode_rtsen to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %turboMode_rtsen, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %turboMode_cts2self2 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 24
  %5 = ptrtoint ptr %turboMode_cts2self2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %turboMode_cts2self2, align 4
  %turboMode_rtsen3 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 25
  %6 = ptrtoint ptr %turboMode_rtsen3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %turboMode_rtsen3, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  %7 = ptrtoint ptr %mode.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -5, ptr %mode.addr.i, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 27, ptr noundef nonnull %mode.addr.i) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i15)
  %8 = ptrtoint ptr %mode.addr.i15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -5, ptr %mode.addr.i15, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 27, ptr noundef nonnull %mode.addr.i15) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i15)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %turboMode_cts2self5 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 24
  %9 = ptrtoint ptr %turboMode_cts2self5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %turboMode_cts2self5, align 4
  %turboMode_rtsen6 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 25
  %10 = ptrtoint ptr %turboMode_rtsen6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %turboMode_rtsen6, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_capinfo(ptr noundef %Adapter, i16 noundef zeroext %updateCap) local_unnamed_addr #7 align 64 {
entry:
  %ShortPreamble = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ShortPreamble) #22
  %0 = ptrtoint ptr %ShortPreamble to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ShortPreamble, align 1, !annotation !55
  %conv = zext i16 %updateCap to i32
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %preamble_mode5 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 18, i32 16
  %1 = ptrtoint ptr %preamble_mode5 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %preamble_mode5, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp.not = icmp eq i8 %2, 3
  br i1 %cmp.not, label %if.then.if.end12_crit_edge, label %if.then.if.end12.sink.split_crit_edge

if.then.if.end12.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end12.sink.split

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp7.not = icmp eq i8 %2, 1
  br i1 %cmp7.not, label %if.else.if.end12_crit_edge, label %if.else.if.end12.sink.split_crit_edge

if.else.if.end12.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end12.sink.split

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end12

if.end12.sink.split:                              ; preds = %if.else.if.end12.sink.split_crit_edge, %if.then.if.end12.sink.split_crit_edge
  %storemerge = phi i8 [ 1, %if.then.if.end12.sink.split_crit_edge ], [ 0, %if.else.if.end12.sink.split_crit_edge ]
  %.sink = phi i8 [ 3, %if.then.if.end12.sink.split_crit_edge ], [ 1, %if.else.if.end12.sink.split_crit_edge ]
  %3 = ptrtoint ptr %ShortPreamble to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %storemerge, ptr %ShortPreamble, align 1
  %4 = ptrtoint ptr %preamble_mode5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink, ptr %preamble_mode5, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %Adapter, i8 noundef zeroext 19, ptr noundef nonnull %ShortPreamble) #22
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.else.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %and14 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else17, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #24
  %slotTime = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 18, i32 15
  %5 = ptrtoint ptr %slotTime to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 20, ptr %slotTime, align 1
  br label %if.end41

if.else17:                                        ; preds = %if.end12
  %cur_wireless_mode = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 10
  %6 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cur_wireless_mode, align 1
  %conv18 = zext i8 %7 to i32
  %and19 = and i32 %conv18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else23, label %if.then21

if.then21:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #24
  %slotTime22 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 18, i32 15
  %8 = ptrtoint ptr %slotTime22 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 9, ptr %slotTime22, align 1
  br label %if.end41

if.else23:                                        ; preds = %if.else17
  %and26 = and i32 %conv18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else37, label %if.then28

if.then28:                                        ; preds = %if.else23
  %and30 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %slotTime35 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 18, i32 15
  br i1 %tobool31.not, label %if.else34, label %if.then32

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #24
  %9 = ptrtoint ptr %slotTime35 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 9, ptr %slotTime35, align 1
  br label %if.end41

if.else34:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #24
  %10 = ptrtoint ptr %slotTime35 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 20, ptr %slotTime35, align 1
  br label %if.end41

if.else37:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #24
  %slotTime38 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 18, i32 15
  %11 = ptrtoint ptr %slotTime38 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 20, ptr %slotTime38, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.else37, %if.else34, %if.then32, %if.then21, %if.then16
  %slotTime42 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 18, i32 15
  call void @rtw_hal_set_hwreg(ptr noundef %Adapter, i8 noundef zeroext 17, ptr noundef %slotTime42) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ShortPreamble) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_wireless_mode(ptr noundef %padapter) local_unnamed_addr #7 align 64 {
entry:
  %SIFS_Timer = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %SIFS_Timer) #22
  %supported_rates = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 9
  %HT_info_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 22
  %0 = ptrtoint ptr %HT_info_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %HT_info_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %HT_caps_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 21
  %2 = ptrtoint ptr %HT_caps_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %HT_caps_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  %HT_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 20
  %4 = ptrtoint ptr %HT_enable to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %HT_enable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %HT_enable3 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 20
  %5 = ptrtoint ptr %HT_enable3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %HT_enable3, align 4
  %call = tail call zeroext i1 @rtw_is_cckratesonly_included(ptr noundef %supported_rates) #22
  br i1 %call, label %if.end.if.end14_crit_edge, label %if.else

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %call8 = tail call zeroext i1 @rtw_is_cckrates_included(ptr noundef %supported_rates) #22
  %. = select i1 %call8, i8 3, i8 2
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end.if.end14_crit_edge
  %.sink = phi i8 [ 1, %if.end.if.end14_crit_edge ], [ %., %if.else ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  %spec.select = select i1 %tobool4.not, i8 0, i8 8
  %or10 = or i8 %spec.select, %.sink
  %wireless_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 7
  %7 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wireless_mode, align 2
  %conv16 = and i8 %8, %or10
  %cur_wireless_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 10
  %9 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv16, ptr %cur_wireless_mode, align 1
  %10 = ptrtoint ptr %SIFS_Timer to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 168429576, ptr %SIFS_Timer, align 4
  %SetHwRegHandler = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 30
  %11 = ptrtoint ptr %SetHwRegHandler to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %SetHwRegHandler, align 8
  call void %12(ptr noundef %padapter, i8 noundef zeroext 18, ptr noundef nonnull %SIFS_Timer) #22
  %13 = ptrtoint ptr %SetHwRegHandler to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %SetHwRegHandler, align 8
  call void %14(ptr noundef %padapter, i8 noundef zeroext 76, ptr noundef %cur_wireless_mode) #22
  %15 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cur_wireless_mode, align 1
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool23.not = icmp eq i8 %17, 0
  %.46 = select i1 %tobool23.not, i8 12, i8 2
  call void @update_mgnt_tx_rate(ptr noundef %padapter, i8 noundef zeroext %.46) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %SIFS_Timer) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_is_cckratesonly_included(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_is_cckrates_included(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_mgnt_tx_rate(ptr noundef, i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @update_sta_basic_rate(ptr nocapture noundef writeonly %psta, i8 noundef zeroext %wireless_mode) local_unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %wireless_mode, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %bssrateset1 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 21
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %1 = ptrtoint ptr %bssrateset1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -2105242730, ptr %bssrateset1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %2 = call ptr @memcpy(ptr %bssrateset1, ptr @rtw_basic_rate_ofdm, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 3, %if.else ], [ 4, %if.then ]
  %3 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 22
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %3, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @update_sta_support_rate(ptr nocapture noundef writeonly %padapter, ptr noundef %pvar_ie, i32 noundef %var_ie_len, i32 noundef %cam_idx) local_unnamed_addr #7 align 64 {
entry:
  %ie_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ie_len) #22
  %0 = ptrtoint ptr %ie_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ie_len, align 4, !annotation !55
  %call = call ptr @rtw_get_ie(ptr noundef %pvar_ie, i32 noundef 1, ptr noundef nonnull %ie_len, i32 noundef %var_ie_len) #22
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2)
  %cmp = icmp ugt i32 %2, 16
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %SupportedRates = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40, i32 %cam_idx, i32 4
  %data = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %call, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %SupportedRates, ptr %data, i32 %2)
  %call4 = call ptr @rtw_get_ie(ptr noundef %pvar_ie, i32 noundef 50, ptr noundef nonnull %ie_len, i32 noundef %var_ie_len) #22
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end2.cleanup_crit_edge, label %land.lhs.true

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end2
  %4 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ie_len, align 4
  %sub = sub nuw nsw i32 16, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub)
  %cmp6.not = icmp ugt i32 %5, %sub
  br i1 %cmp6.not, label %land.lhs.true.cleanup_crit_edge, label %if.then7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  %add.ptr = getelementptr i8, ptr %SupportedRates, i32 %2
  %data12 = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %call4, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %add.ptr, ptr %data12, i32 %5)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %land.lhs.true.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then7 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ie_len) #22
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @process_addba_req(ptr noundef %padapter, ptr nocapture noundef readonly %paddba_req, ptr noundef %addr) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %addr) #22
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %BA_para_set = getelementptr inbounds %struct.ADDBA_request, ptr %paddba_req, i32 0, i32 1
  %0 = ptrtoint ptr %BA_para_set to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %BA_para_set, align 1
  %2 = lshr i16 %1, 10
  %3 = and i16 %2, 15
  %idxprom = zext i16 %3 to i32
  %indicate_seq = getelementptr %struct.sta_info, ptr %call, i32 0, i32 36, i32 %idxprom, i32 2
  %4 = ptrtoint ptr %indicate_seq to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %indicate_seq, align 2
  %accept_addba_req = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 31
  %5 = ptrtoint ptr %accept_addba_req to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %accept_addba_req, align 1, !range !56
  %enable = getelementptr %struct.sta_info, ptr %call, i32 0, i32 36, i32 %idxprom, i32 1
  %7 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %enable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @update_TSF(ptr nocapture noundef writeonly %pmlmeext, ptr nocapture noundef readonly %pframe, i32 noundef %len) local_unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pframe, i32 24
  %add.ptr1 = getelementptr i8, ptr %pframe, i32 28
  %0 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr1, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %conv = zext i32 %2 to i64
  %TSFValue = getelementptr inbounds %struct.mlme_ext_priv, ptr %pmlmeext, i32 0, i32 27
  %shl = shl nuw i64 %conv, 32
  %3 = ptrtoint ptr %TSFValue to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %shl, ptr %TSFValue, align 8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %conv4 = zext i32 %6 to i64
  %or = or i64 %shl, %conv4
  %7 = ptrtoint ptr %TSFValue to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %or, ptr %TSFValue, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @correct_TSF(ptr noundef %padapter, ptr nocapture noundef readnone %pmlmeext) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 9, ptr noundef null) #22
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adaptive_early_32k(ptr nocapture noundef %pmlmeext, ptr nocapture noundef readonly %pframe, i32 noundef %len) local_unnamed_addr #20 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %bcn_cnt = getelementptr inbounds %struct.mlme_ext_priv, ptr %pmlmeext, i32 0, i32 31
  %0 = ptrtoint ptr %bcn_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bcn_cnt, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %bcn_cnt, align 4
  %add.ptr = getelementptr i8, ptr %pframe, i32 24
  %add.ptr1 = getelementptr i8, ptr %pframe, i32 28
  %2 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr1, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = zext i32 %3 to i64
  %7 = zext i32 %5 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or i64 %8, %6
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  %bcn_interval = getelementptr inbounds %struct.mlme_ext_priv, ptr %pmlmeext, i32 0, i32 18, i32 12
  %11 = ptrtoint ptr %bcn_interval to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bcn_interval, align 2
  %conv3 = zext i16 %12 to i32
  %mul = shl nuw nsw i32 %conv3, 10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %10)
  %cmp172 = icmp ult i64 %10, 4294967296
  br i1 %cmp172, label %if.then176, label %if.else182, !prof !57

if.then176:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %conv177 = trunc i64 %10 to i32
  %rem178 = urem i32 %conv177, %mul
  br label %if.end186

if.else182:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %10) #27, !srcloc !58
  %asmresult.i367 = extractvalue { i64, i64 } %13, 0
  %shr.i = lshr i64 %asmresult.i367, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end186

if.end186:                                        ; preds = %if.else182, %if.then176
  %__rem.0 = phi i32 [ %rem178, %if.then176 ], [ %conv.i, %if.else182 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7999, i32 %__rem.0)
  %cmp189 = icmp ugt i32 %__rem.0, 7999
  %div188.lhs.trunc = trunc i32 %__rem.0 to i16
  %div188389 = udiv i16 %div188.lhs.trunc, 1000
  %div188.zext = zext i16 %div188389 to i32
  %div188.zext.sink = select i1 %cmp189, i32 8, i32 %div188.zext
  %arrayidx195 = getelementptr %struct.mlme_ext_priv, ptr %pmlmeext, i32 0, i32 29, i32 %div188.zext.sink
  %14 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx195, align 4
  %inc196 = add i32 %15, 1
  store i32 %inc196, ptr %arrayidx195, align 4
  %16 = ptrtoint ptr %bcn_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bcn_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %17)
  %cmp199 = icmp ugt i32 %17, 100
  br i1 %cmp199, label %land.lhs.true201, label %if.end186.if.end252_crit_edge

if.end186.if.end252_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end252

land.lhs.true201:                                 ; preds = %if.end186
  %adaptive_tsf_done = getelementptr inbounds %struct.mlme_ext_priv, ptr %pmlmeext, i32 0, i32 28
  %18 = ptrtoint ptr %adaptive_tsf_done to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %adaptive_tsf_done, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp203 = icmp eq i8 %19, 1
  br i1 %cmp203, label %land.lhs.true201.for.body_crit_edge, label %land.lhs.true201.if.end252_crit_edge

land.lhs.true201.if.end252_crit_edge:             ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end252

land.lhs.true201.for.body_crit_edge:              ; preds = %land.lhs.true201
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %land.lhs.true201.for.body_crit_edge
  %DrvBcnTimeOut.0395 = phi i8 [ %DrvBcnTimeOut.1, %for.body.for.body_crit_edge ], [ -1, %land.lhs.true201.for.body_crit_edge ]
  %DrvBcnEarly.0394 = phi i8 [ %DrvBcnEarly.1, %for.body.for.body_crit_edge ], [ -1, %land.lhs.true201.for.body_crit_edge ]
  %ratio_80_delay.0393 = phi i32 [ %add222, %for.body.for.body_crit_edge ], [ 0, %land.lhs.true201.for.body_crit_edge ]
  %ratio_20_delay.0392 = phi i32 [ %add217, %for.body.for.body_crit_edge ], [ 0, %land.lhs.true201.for.body_crit_edge ]
  %i.0391 = phi i32 [ %inc248, %for.body.for.body_crit_edge ], [ 0, %land.lhs.true201.for.body_crit_edge ]
  %arrayidx209 = getelementptr %struct.mlme_ext_priv, ptr %pmlmeext, i32 0, i32 29, i32 %i.0391
  %20 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx209, align 4
  %mul210 = mul i32 %21, 100
  %22 = ptrtoint ptr %bcn_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bcn_cnt, align 4
  %div212 = udiv i32 %mul210, %23
  %arrayidx213 = getelementptr %struct.mlme_ext_priv, ptr %pmlmeext, i32 0, i32 30, i32 %i.0391
  %conv216 = and i32 %ratio_20_delay.0392, 255
  %add217 = add i32 %div212, %conv216
  %conv221 = and i32 %ratio_80_delay.0393, 255
  %add222 = add i32 %div212, %conv221
  %conv224 = and i32 %add217, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %conv224)
  %cmp225 = icmp ugt i32 %conv224, 20
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %DrvBcnEarly.0394)
  %cmp229 = icmp eq i8 %DrvBcnEarly.0394, -1
  %or.cond = select i1 %cmp225, i1 %cmp229, i1 false
  %conv232 = trunc i32 %i.0391 to i8
  %DrvBcnEarly.1 = select i1 %or.cond, i8 %conv232, i8 %DrvBcnEarly.0394
  %conv234 = and i32 %add222, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %conv234)
  %cmp235 = icmp ugt i32 %conv234, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %DrvBcnTimeOut.0395)
  %cmp239 = icmp eq i8 %DrvBcnTimeOut.0395, -1
  %or.cond365 = select i1 %cmp235, i1 %cmp239, i1 false
  %DrvBcnTimeOut.1 = select i1 %or.cond365, i8 %conv232, i8 %DrvBcnTimeOut.0395
  %24 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx209, align 4
  %25 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx213, align 4
  %inc248 = add nuw nsw i32 %i.0391, 1
  %exitcond.not = icmp eq i32 %inc248, 9
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %DrvBcnEarly249 = getelementptr inbounds %struct.mlme_ext_priv, ptr %pmlmeext, i32 0, i32 32
  %26 = ptrtoint ptr %DrvBcnEarly249 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %DrvBcnEarly.1, ptr %DrvBcnEarly249, align 8
  %DrvBcnTimeOut250 = getelementptr inbounds %struct.mlme_ext_priv, ptr %pmlmeext, i32 0, i32 33
  %27 = ptrtoint ptr %DrvBcnTimeOut250 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %DrvBcnTimeOut.1, ptr %DrvBcnTimeOut250, align 1
  %28 = ptrtoint ptr %bcn_cnt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %bcn_cnt, align 4
  br label %if.end252

if.end252:                                        ; preds = %for.end, %land.lhs.true201.if.end252_crit_edge, %if.end186.if.end252_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_alloc_macid(ptr nocapture noundef readonly %padapter, ptr nocapture noundef %psta) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 12
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %hwaddr, ptr noundef nonnull dereferenceable(6) @__const.rtw_release_macid.bc_addr, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %bcmp35 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %hwaddr, ptr noundef dereferenceable(6) %mac_addr.i, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp35)
  %tobool6.not = icmp eq i32 %bcmp35, 0
  br i1 %tobool6.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end8

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8
  %i.038 = phi i32 [ 0, %if.end8 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dvobj_priv, ptr %1, i32 0, i32 4, i32 %i.038
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9 = icmp eq i32 %3, 0
  br i1 %cmp9, label %if.else, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup.sink.split.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.inc.cleanup.sink.split.sink.split_crit_edge:  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup.sink.split.sink.split

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %arrayidx, align 4
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.else, %for.inc.cleanup.sink.split.sink.split_crit_edge
  %.sink.ph = phi i32 [ %i.038, %if.else ], [ 32, %for.inc.cleanup.sink.split.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #22
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 32, %if.end.cleanup.sink.split_crit_edge ], [ %.sink.ph, %cleanup.sink.split.sink.split ]
  %mac_id17 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 10
  %5 = ptrtoint ptr %mac_id17 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %mac_id17, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_release_macid(ptr nocapture noundef readonly %padapter, ptr nocapture noundef %psta) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 12
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %hwaddr, ptr noundef nonnull dereferenceable(6) @__const.rtw_release_macid.bc_addr, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %bcmp33 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %hwaddr, ptr noundef dereferenceable(6) %mac_addr.i, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp33)
  %tobool6.not = icmp eq i32 %bcmp33, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #22
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 10
  %2 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %3)
  %cmp = icmp ugt i32 %3, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp10.not = icmp eq i32 %3, 1
  %or.cond = or i1 %cmp, %cmp10.not
  br i1 %or.cond, label %if.end8.if.end20_crit_edge, label %if.then11

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end20

if.then11:                                        ; preds = %if.end8
  %arrayidx = getelementptr %struct.dvobj_priv, ptr %1, i32 0, i32 4, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp13 = icmp eq i32 %5, 1
  br i1 %cmp13, label %if.then14, label %if.then11.if.end20_crit_edge

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end20

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #24
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %mac_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32, ptr %mac_id, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.then11.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_search_max_mac_id(ptr nocapture noundef readonly %padapter) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %lock = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 31, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dvobj_priv, ptr %1, i32 0, i32 4, i32 %i.08
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.08, -1
  %cmp.not = icmp eq i32 %i.08, 0
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.08, %for.body.for.end_crit_edge ], [ -1, %for.inc.for.end_crit_edge ]
  %conv = trunc i32 %i.0.lcssa to i8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #22
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dvobj_get_port0_adapter(ptr nocapture noundef readonly %dvobj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %padapters = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 13
  %0 = ptrtoint ptr %padapters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %padapters, align 4
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #8 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #8 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_read32(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_dm_ra_mask_wk_cmd(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #22

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #23 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #23 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { argmemonly nofree nounwind readonly willreturn }
attributes #22 = { nounwind }
attributes #23 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #24 = { nomerge }
attributes #25 = { nobuiltin nounwind }
attributes #26 = { nobuiltin }
attributes #27 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c", i32 617, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rtw_camid_alloc.__UNIQUE_ID_ddebug345, !1, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c", i32 644, i32 5}
!8 = !{ptr @rtw_camid_alloc.__UNIQUE_ID_ddebug346, !7, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c", i32 656, i32 5}
!11 = !{ptr @rtw_camid_alloc.__UNIQUE_ID_ddebug347, !10, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c", i32 661, i32 5}
!14 = !{ptr @rtw_camid_alloc.__UNIQUE_ID_ddebug348, !13, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!15 = !{ptr @WPA_TKIP_CIPHER, !16, !"WPA_TKIP_CIPHER", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c", i32 25, i32 22}
!17 = !{ptr @RSN_TKIP_CIPHER, !18, !"RSN_TKIP_CIPHER", i1 false, i1 false}
!18 = !{!"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c", i32 24, i32 22}
!19 = !{ptr @ARTHEROS_OUI1, !20, !"ARTHEROS_OUI1", i1 false, i1 false}
!20 = !{!"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c", i32 12, i32 22}
!21 = !{ptr @ARTHEROS_OUI2, !22, !"ARTHEROS_OUI2", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c", i32 13, i32 22}
!23 = !{ptr @BROADCOM_OUI1, !24, !"BROADCOM_OUI1", i1 false, i1 false}
!24 = !{!"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c", i32 15, i32 22}
!25 = !{ptr @BROADCOM_OUI2, !26, !"BROADCOM_OUI2", i1 false, i1 false}
!26 = !{!"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c", i32 16, i32 22}
!27 = !{ptr @BROADCOM_OUI3, !28, !"BROADCOM_OUI3", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c", i32 17, i32 22}
!29 = !{ptr @MARVELL_OUI, !30, !"MARVELL_OUI", i1 false, i1 false}
!30 = !{!"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c", i32 20, i32 22}
!31 = !{ptr @RALINK_OUI, !32, !"RALINK_OUI", i1 false, i1 false}
!32 = !{!"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c", i32 21, i32 22}
!33 = !{ptr @CISCO_OUI, !34, !"CISCO_OUI", i1 false, i1 false}
!34 = !{!"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c", i32 19, i32 22}
!35 = !{ptr @REALTEK_OUI, !36, !"REALTEK_OUI", i1 false, i1 false}
!36 = !{!"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c", i32 22, i32 22}
!37 = !{ptr @AIRGOCAP_OUI, !38, !"AIRGOCAP_OUI", i1 false, i1 false}
!38 = !{!"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c", i32 23, i32 22}
!39 = distinct !{null, !40, !"rtw_basic_rate_cck", i1 false, i1 false}
!40 = !{!"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c", i32 34, i32 11}
!41 = !{ptr @rtw_basic_rate_ofdm, !42, !"rtw_basic_rate_ofdm", i1 false, i1 false}
!42 = !{!"../drivers/staging/rtl8723bs/core/rtw_wlan_util.c", i32 41, i32 11}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148842766, i64 2148842771, i64 2148842784, i64 2148842828, i64 2148842862, i64 2148842883}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.peeled.count", i32 3}
!55 = !{!"auto-init"}
!56 = !{i8 0, i8 2}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 2148867953, i64 2148868233, i64 2148868567, i64 2148868901}
