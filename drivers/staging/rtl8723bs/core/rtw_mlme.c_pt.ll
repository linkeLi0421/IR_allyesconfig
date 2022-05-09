; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/core/rtw_mlme.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/core/rtw_mlme.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.spinlock, %struct.registry_priv, %struct.eeprom_priv, ptr, i32, ptr, i32, %struct.hal_ops, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, %struct.rtw_wdev_priv, i32, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, i8, i32, i32, [6 x i8], ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.timer_list, %struct.atomic_t, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect_t, %struct.timer_list, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i8, i32 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.ndis_802_11_wep = type { i32, i32, i32, [16 x i8] }
%struct.rt_pmkid_list = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.stassoc_event = type { [6 x i8], [2 x i8], i32 }
%struct.stadel_event = type { [6 x i8], [2 x i8], i32 }
%struct.reportpwrstate_parm = type { i8, i8, i16 }
%struct.cmd_obj = type { ptr, i16, i8, ptr, i32, ptr, i32, ptr, %struct.list_head }
%struct.setkey_parm = type { i8, i8, i8, i8, [16 x i8] }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8, ptr, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %union.Keytype, %union.Keytype, i8 }

@rtw_init_mlme_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pmlmepriv->lock\00", [47 x i8] zeroinitializer }, align 32
@rtw_init_mlme_priv.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&pmlmepriv->free_bss_pool.lock\00", [33 x i8] zeroinitializer }, align 32
@rtw_init_mlme_priv.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&pmlmepriv->scanned_queue.lock\00", [33 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rtw_joinbss_event_prehandle.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 1, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8723bs\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtw_joinbss_event_prehandle\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/rtl8723bs/core/rtw_mlme.c\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Can't find ptarget_wlan when joinbss_event callback\0A\00", [43 x i8] zeroinitializer }, align 32
@__const.rtw_build_wmm_ie_ht.WMM_IE = private unnamed_addr constant [7 x i8] c"\00P\F2\02\00\01\00", align 1
@switch.table.rtw_surveydone_event_callback = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 1, i32 3, i32 3, i32 1, i32 1, i32 1, i32 1, i32 3, i32 1, i32 3, i32 3], [52 x i8] zeroinitializer }, align 32
@switch.table.rtw_update_registrypriv_dev_network = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 1, i32 3, i32 3, i32 1, i32 1, i32 1, i32 1, i32 3, i32 1, i32 3, i32 3], [52 x i8] zeroinitializer }, align 32
@switch.table.rtw_stadel_event_callback = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 1, i32 3, i32 3, i32 1, i32 1, i32 1, i32 1, i32 3, i32 1, i32 3, i32 3], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 65533, i64 65535]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 5]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 221]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 29, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 31, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 33, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [45 x i8] c"../drivers/staging/rtl8723bs/core/rtw_mlme.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 1218, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant [43 x i8] c"switch.table.rtw_surveydone_event_callback\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [49 x i8] c"switch.table.rtw_update_registrypriv_dev_network\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [39 x i8] c"switch.table.rtw_stadel_event_callback\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @rtw_init_mlme_priv.__key, ptr @.str, ptr @rtw_init_mlme_priv.__key.1, ptr @.str.2, ptr @rtw_init_mlme_priv.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @switch.table.rtw_surveydone_event_callback, ptr @switch.table.rtw_update_registrypriv_dev_network, ptr @switch.table.rtw_stadel_event_callback], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_mlme_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_mlme_priv.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_mlme_priv.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_surveydone_event_callback to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_update_registrypriv_dev_network to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_stadel_event_callback to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_init_mlme_priv(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  %nic_hdl = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 11
  %0 = ptrtoint ptr %nic_hdl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %padapter, ptr %nic_hdl, align 4
  %pscanned = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 13
  %1 = ptrtoint ptr %pscanned to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %pscanned, align 4
  %fw_state = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %fw_state, align 4
  %infrastructure_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 8
  %3 = ptrtoint ptr %infrastructure_mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %infrastructure_mode, align 4
  %scan_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 38
  %4 = ptrtoint ptr %scan_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %scan_mode, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %mlmepriv, ptr noundef nonnull @.str, ptr noundef nonnull @rtw_init_mlme_priv.__key, i16 noundef signext 3) #21
  %free_bss_pool = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 14
  %5 = ptrtoint ptr %free_bss_pool to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %free_bss_pool, ptr %free_bss_pool, align 4
  %prev.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 14, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %free_bss_pool, ptr %prev.i, align 4
  %lock3 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 14, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock3, ptr noundef nonnull @.str.2, ptr noundef nonnull @rtw_init_mlme_priv.__key.1, i16 noundef signext 3) #21
  %scanned_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15
  %7 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %scanned_queue, ptr %scanned_queue, align 4
  %prev.i44 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i44 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %scanned_queue, ptr %prev.i44, align 4
  %lock10 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock10, ptr noundef nonnull @.str.4, ptr noundef nonnull @rtw_init_mlme_priv.__key.3, i16 noundef signext 3) #21
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #21
  %num_of_scanned.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 17
  %9 = ptrtoint ptr %num_of_scanned.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %num_of_scanned.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #21
  %assoc_ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 18
  %10 = call ptr @memset(ptr %assoc_ssid, i32 0, i32 36)
  %call15 = tail call noalias ptr @vzalloc(i32 noundef 117760) #24
  %tobool.not = icmp eq ptr %call15, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end:                                           ; preds = %entry
  %free_bss_buf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 16
  %11 = ptrtoint ptr %free_bss_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call15, ptr %free_bss_buf, align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end
  %pnetwork.048 = phi ptr [ %call15, %if.end ], [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ]
  %i.047 = phi i32 [ 0, %if.end ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %pnetwork.048 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %pnetwork.048, ptr %pnetwork.048, align 4
  %prev.i45 = getelementptr inbounds %struct.list_head, ptr %pnetwork.048, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i45 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pnetwork.048, ptr %prev.i45, align 4
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pnetwork.048, ptr noundef %15, ptr noundef %free_bss_pool) #21
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pnetwork.048, ptr %prev.i, align 4
  %17 = ptrtoint ptr %pnetwork.048 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %free_bss_pool, ptr %pnetwork.048, align 4
  %18 = ptrtoint ptr %prev.i45 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev.i45, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %pnetwork.048, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %incdec.ptr = getelementptr %struct.wlan_network, ptr %pnetwork.048, i32 1
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #23
  %set_scan_deny.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 29
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %set_scan_deny.i, i32 noundef 4) #21
  %20 = ptrtoint ptr %set_scan_deny.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %set_scan_deny.i, align 4
  %roam_flags = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 6
  %21 = ptrtoint ptr %roam_flags to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %roam_flags, align 4
  %roam_scanr_exp_ms = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 9
  %22 = ptrtoint ptr %roam_scanr_exp_ms to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5000, ptr %roam_scanr_exp_ms, align 4
  %roam_rssi_diff_th = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 7
  %23 = ptrtoint ptr %roam_rssi_diff_th to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 10, ptr %roam_rssi_diff_th, align 1
  %roam_scan_int_ms = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 8
  %24 = ptrtoint ptr %roam_scan_int_ms to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 10000, ptr %roam_scan_int_ms, align 4
  tail call void @rtw_init_mlme_timer(ptr noundef %padapter) #21
  br label %exit

exit:                                             ; preds = %for.end, %entry.exit_crit_edge
  %res.0 = phi i32 [ 1, %for.end ], [ 0, %entry.exit_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_clear_scan_deny(ptr noundef %adapter) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  %set_scan_deny = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %set_scan_deny, i32 noundef 4) #21
  %0 = ptrtoint ptr %set_scan_deny to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %set_scan_deny, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_init_mlme_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_mlme_priv_ie_data(ptr noundef %pmlmepriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %assoc_req = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 49
  %assoc_req_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 50
  tail call void @rtw_buf_free(ptr noundef %assoc_req, ptr noundef %assoc_req_len) #21
  %assoc_rsp = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 51
  %assoc_rsp_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 52
  tail call void @rtw_buf_free(ptr noundef %assoc_rsp, ptr noundef %assoc_rsp_len) #21
  %wps_beacon_ie = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 53
  %0 = ptrtoint ptr %wps_beacon_ie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wps_beacon_ie, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.rtw_free_mlme_ie_data.exit_crit_edge, label %if.then.i

entry.rtw_free_mlme_ie_data.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_free_mlme_ie_data.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %wps_beacon_ie_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 56
  tail call void @kfree(ptr noundef nonnull %1) #21
  %2 = ptrtoint ptr %wps_beacon_ie_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wps_beacon_ie_len, align 4
  %3 = ptrtoint ptr %wps_beacon_ie to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %wps_beacon_ie, align 4
  br label %rtw_free_mlme_ie_data.exit

rtw_free_mlme_ie_data.exit:                       ; preds = %if.then.i, %entry.rtw_free_mlme_ie_data.exit_crit_edge
  %wps_probe_req_ie = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 39
  %4 = ptrtoint ptr %wps_probe_req_ie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wps_probe_req_ie, align 4
  %tobool.not.i22 = icmp eq ptr %5, null
  br i1 %tobool.not.i22, label %rtw_free_mlme_ie_data.exit.rtw_free_mlme_ie_data.exit24_crit_edge, label %if.then.i23

rtw_free_mlme_ie_data.exit.rtw_free_mlme_ie_data.exit24_crit_edge: ; preds = %rtw_free_mlme_ie_data.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_free_mlme_ie_data.exit24

if.then.i23:                                      ; preds = %rtw_free_mlme_ie_data.exit
  call void @__sanitizer_cov_trace_pc() #23
  %wps_probe_req_ie_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 40
  tail call void @kfree(ptr noundef nonnull %5) #21
  %6 = ptrtoint ptr %wps_probe_req_ie_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wps_probe_req_ie_len, align 4
  %7 = ptrtoint ptr %wps_probe_req_ie to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %wps_probe_req_ie, align 4
  br label %rtw_free_mlme_ie_data.exit24

rtw_free_mlme_ie_data.exit24:                     ; preds = %if.then.i23, %rtw_free_mlme_ie_data.exit.rtw_free_mlme_ie_data.exit24_crit_edge
  %wps_probe_resp_ie = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 54
  %8 = ptrtoint ptr %wps_probe_resp_ie to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wps_probe_resp_ie, align 4
  %tobool.not.i25 = icmp eq ptr %9, null
  br i1 %tobool.not.i25, label %rtw_free_mlme_ie_data.exit24.rtw_free_mlme_ie_data.exit27_crit_edge, label %if.then.i26

rtw_free_mlme_ie_data.exit24.rtw_free_mlme_ie_data.exit27_crit_edge: ; preds = %rtw_free_mlme_ie_data.exit24
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_free_mlme_ie_data.exit27

if.then.i26:                                      ; preds = %rtw_free_mlme_ie_data.exit24
  call void @__sanitizer_cov_trace_pc() #23
  %wps_probe_resp_ie_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 57
  tail call void @kfree(ptr noundef nonnull %9) #21
  %10 = ptrtoint ptr %wps_probe_resp_ie_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wps_probe_resp_ie_len, align 4
  %11 = ptrtoint ptr %wps_probe_resp_ie to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %wps_probe_resp_ie, align 4
  br label %rtw_free_mlme_ie_data.exit27

rtw_free_mlme_ie_data.exit27:                     ; preds = %if.then.i26, %rtw_free_mlme_ie_data.exit24.rtw_free_mlme_ie_data.exit27_crit_edge
  %wps_assoc_resp_ie = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 55
  %12 = ptrtoint ptr %wps_assoc_resp_ie to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wps_assoc_resp_ie, align 4
  %tobool.not.i28 = icmp eq ptr %13, null
  br i1 %tobool.not.i28, label %rtw_free_mlme_ie_data.exit27.rtw_free_mlme_ie_data.exit30_crit_edge, label %if.then.i29

rtw_free_mlme_ie_data.exit27.rtw_free_mlme_ie_data.exit30_crit_edge: ; preds = %rtw_free_mlme_ie_data.exit27
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_free_mlme_ie_data.exit30

if.then.i29:                                      ; preds = %rtw_free_mlme_ie_data.exit27
  call void @__sanitizer_cov_trace_pc() #23
  %wps_assoc_resp_ie_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 58
  tail call void @kfree(ptr noundef nonnull %13) #21
  %14 = ptrtoint ptr %wps_assoc_resp_ie_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %wps_assoc_resp_ie_len, align 4
  %15 = ptrtoint ptr %wps_assoc_resp_ie to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %wps_assoc_resp_ie, align 4
  br label %rtw_free_mlme_ie_data.exit30

rtw_free_mlme_ie_data.exit30:                     ; preds = %if.then.i29, %rtw_free_mlme_ie_data.exit27.rtw_free_mlme_ie_data.exit30_crit_edge
  %p2p_beacon_ie = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 59
  %16 = ptrtoint ptr %p2p_beacon_ie to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p2p_beacon_ie, align 4
  %tobool.not.i31 = icmp eq ptr %17, null
  br i1 %tobool.not.i31, label %rtw_free_mlme_ie_data.exit30.rtw_free_mlme_ie_data.exit33_crit_edge, label %if.then.i32

rtw_free_mlme_ie_data.exit30.rtw_free_mlme_ie_data.exit33_crit_edge: ; preds = %rtw_free_mlme_ie_data.exit30
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_free_mlme_ie_data.exit33

if.then.i32:                                      ; preds = %rtw_free_mlme_ie_data.exit30
  call void @__sanitizer_cov_trace_pc() #23
  %p2p_beacon_ie_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 64
  tail call void @kfree(ptr noundef nonnull %17) #21
  %18 = ptrtoint ptr %p2p_beacon_ie_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %p2p_beacon_ie_len, align 4
  %19 = ptrtoint ptr %p2p_beacon_ie to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %p2p_beacon_ie, align 4
  br label %rtw_free_mlme_ie_data.exit33

rtw_free_mlme_ie_data.exit33:                     ; preds = %if.then.i32, %rtw_free_mlme_ie_data.exit30.rtw_free_mlme_ie_data.exit33_crit_edge
  %p2p_probe_req_ie = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 60
  %20 = ptrtoint ptr %p2p_probe_req_ie to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p2p_probe_req_ie, align 4
  %tobool.not.i34 = icmp eq ptr %21, null
  br i1 %tobool.not.i34, label %rtw_free_mlme_ie_data.exit33.rtw_free_mlme_ie_data.exit36_crit_edge, label %if.then.i35

rtw_free_mlme_ie_data.exit33.rtw_free_mlme_ie_data.exit36_crit_edge: ; preds = %rtw_free_mlme_ie_data.exit33
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_free_mlme_ie_data.exit36

if.then.i35:                                      ; preds = %rtw_free_mlme_ie_data.exit33
  call void @__sanitizer_cov_trace_pc() #23
  %p2p_probe_req_ie_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 65
  tail call void @kfree(ptr noundef nonnull %21) #21
  %22 = ptrtoint ptr %p2p_probe_req_ie_len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %p2p_probe_req_ie_len, align 4
  %23 = ptrtoint ptr %p2p_probe_req_ie to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %p2p_probe_req_ie, align 4
  br label %rtw_free_mlme_ie_data.exit36

rtw_free_mlme_ie_data.exit36:                     ; preds = %if.then.i35, %rtw_free_mlme_ie_data.exit33.rtw_free_mlme_ie_data.exit36_crit_edge
  %p2p_probe_resp_ie = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 61
  %24 = ptrtoint ptr %p2p_probe_resp_ie to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p2p_probe_resp_ie, align 4
  %tobool.not.i37 = icmp eq ptr %25, null
  br i1 %tobool.not.i37, label %rtw_free_mlme_ie_data.exit36.rtw_free_mlme_ie_data.exit39_crit_edge, label %if.then.i38

rtw_free_mlme_ie_data.exit36.rtw_free_mlme_ie_data.exit39_crit_edge: ; preds = %rtw_free_mlme_ie_data.exit36
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_free_mlme_ie_data.exit39

if.then.i38:                                      ; preds = %rtw_free_mlme_ie_data.exit36
  call void @__sanitizer_cov_trace_pc() #23
  %p2p_probe_resp_ie_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 66
  tail call void @kfree(ptr noundef nonnull %25) #21
  %26 = ptrtoint ptr %p2p_probe_resp_ie_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %p2p_probe_resp_ie_len, align 4
  %27 = ptrtoint ptr %p2p_probe_resp_ie to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %p2p_probe_resp_ie, align 4
  br label %rtw_free_mlme_ie_data.exit39

rtw_free_mlme_ie_data.exit39:                     ; preds = %if.then.i38, %rtw_free_mlme_ie_data.exit36.rtw_free_mlme_ie_data.exit39_crit_edge
  %p2p_go_probe_resp_ie = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 62
  %28 = ptrtoint ptr %p2p_go_probe_resp_ie to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %p2p_go_probe_resp_ie, align 4
  %tobool.not.i40 = icmp eq ptr %29, null
  br i1 %tobool.not.i40, label %rtw_free_mlme_ie_data.exit39.rtw_free_mlme_ie_data.exit42_crit_edge, label %if.then.i41

rtw_free_mlme_ie_data.exit39.rtw_free_mlme_ie_data.exit42_crit_edge: ; preds = %rtw_free_mlme_ie_data.exit39
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_free_mlme_ie_data.exit42

if.then.i41:                                      ; preds = %rtw_free_mlme_ie_data.exit39
  call void @__sanitizer_cov_trace_pc() #23
  %p2p_go_probe_resp_ie_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 67
  tail call void @kfree(ptr noundef nonnull %29) #21
  %30 = ptrtoint ptr %p2p_go_probe_resp_ie_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %p2p_go_probe_resp_ie_len, align 4
  %31 = ptrtoint ptr %p2p_go_probe_resp_ie to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %p2p_go_probe_resp_ie, align 4
  br label %rtw_free_mlme_ie_data.exit42

rtw_free_mlme_ie_data.exit42:                     ; preds = %if.then.i41, %rtw_free_mlme_ie_data.exit39.rtw_free_mlme_ie_data.exit42_crit_edge
  %p2p_assoc_req_ie = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 63
  %32 = ptrtoint ptr %p2p_assoc_req_ie to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p2p_assoc_req_ie, align 4
  %tobool.not.i43 = icmp eq ptr %33, null
  br i1 %tobool.not.i43, label %rtw_free_mlme_ie_data.exit42.rtw_free_mlme_ie_data.exit45_crit_edge, label %if.then.i44

rtw_free_mlme_ie_data.exit42.rtw_free_mlme_ie_data.exit45_crit_edge: ; preds = %rtw_free_mlme_ie_data.exit42
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_free_mlme_ie_data.exit45

if.then.i44:                                      ; preds = %rtw_free_mlme_ie_data.exit42
  call void @__sanitizer_cov_trace_pc() #23
  %p2p_assoc_req_ie_len = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 68
  tail call void @kfree(ptr noundef nonnull %33) #21
  %34 = ptrtoint ptr %p2p_assoc_req_ie_len to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %p2p_assoc_req_ie_len, align 4
  %35 = ptrtoint ptr %p2p_assoc_req_ie to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %p2p_assoc_req_ie, align 4
  br label %rtw_free_mlme_ie_data.exit45

rtw_free_mlme_ie_data.exit45:                     ; preds = %if.then.i44, %rtw_free_mlme_ie_data.exit42.rtw_free_mlme_ie_data.exit45_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_buf_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_free_mlme_priv(ptr noundef %pmlmepriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pmlmepriv, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @rtw_free_mlme_priv_ie_data(ptr noundef nonnull %pmlmepriv)
  %free_bss_buf = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 16
  %0 = ptrtoint ptr %free_bss_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_bss_buf, align 4
  tail call void @vfree(ptr noundef %1) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_alloc_network(ptr noundef %pmlmepriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %free_bss_pool = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 14
  %lock = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 14, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #21
  %0 = ptrtoint ptr %free_bss_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_bss_pool, align 4
  %cmp.i.not = icmp eq ptr %1, %free_bss_pool
  br i1 %cmp.i.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #21
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
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
  %num_of_scanned = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 17
  %16 = ptrtoint ptr %num_of_scanned to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_of_scanned, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %num_of_scanned, align 4
  br label %exit

exit:                                             ; preds = %list_del_init.exit, %entry.exit_crit_edge
  %pnetwork.0 = phi ptr [ %1, %list_del_init.exit ], [ null, %entry.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #21
  ret ptr %pnetwork.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_free_network(ptr noundef %pmlmepriv, ptr noundef %pnetwork, i8 noundef zeroext %isfreeall) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %free_bss_pool = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 14
  %tobool.not = icmp eq ptr %pnetwork, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
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
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %isfreeall)
  %tobool8.not = icmp eq i8 %isfreeall, 0
  br i1 %tobool8.not, label %if.then9, label %if.end3.if.end14_crit_edge

if.end3.if.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end14

if.then9:                                         ; preds = %if.end3
  %fw_state.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 1
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  %4 = and i32 %3, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  %lifetime.0 = select i1 %5, i32 20000, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %last_scanned = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 3
  %7 = ptrtoint ptr %last_scanned to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_scanned, align 4
  %sub = sub i32 %6, %8
  %call10 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %lifetime.0)
  %cmp11 = icmp ult i32 %call10, %lifetime.0
  br i1 %cmp11, label %if.then9.cleanup_crit_edge, label %if.then9.if.end14_crit_edge

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end14

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %if.end3.if.end14_crit_edge
  %lock = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 14, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #21
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pnetwork) #21
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_del_init.exit_crit_edge

if.end14.list_del_init.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #23
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

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end14.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %pnetwork to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %pnetwork, ptr %pnetwork, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pnetwork, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pnetwork, ptr %prev.i3.i, align 4
  %prev.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 14, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i32 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %pnetwork, ptr noundef %18, ptr noundef %free_bss_pool) #21
  br i1 %call.i.i32, label %if.end.i.i33, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_add_tail.exit

if.end.i.i33:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #23
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
  %num_of_scanned = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 17
  %23 = ptrtoint ptr %num_of_scanned to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_of_scanned, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %num_of_scanned, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #21
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_free_network_nolock(ptr noundef %pmlmepriv, ptr noundef %pnetwork) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %free_bss_pool = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 14
  %tobool.not = icmp eq ptr %pnetwork, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
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
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pnetwork) #21
  br i1 %call.i.i, label %if.end.i.i, label %if.end3.list_del_init.exit_crit_edge

if.end3.list_del_init.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #23
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
  %prev.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 14, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i9 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %pnetwork, ptr noundef %11, ptr noundef %free_bss_pool) #21
  br i1 %call.i.i9, label %if.end.i.i10, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_add_tail.exit

if.end.i.i10:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #23
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
  %num_of_scanned = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 17
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
define dso_local ptr @_rtw_find_network(ptr noundef readonly %scanned_queue, ptr nocapture noundef readonly %addr) local_unnamed_addr #5 align 64 {
entry:
  %zero_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr) #21
  %0 = call ptr @memset(ptr %zero_addr, i32 0, i32 6)
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr, ptr noundef dereferenceable(6) %addr, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.exit_crit_edge, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %plist.0.in = phi ptr [ %plist.0, %for.body.for.cond_crit_edge ], [ %scanned_queue, %entry.for.cond_crit_edge ]
  %1 = ptrtoint ptr %plist.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %plist.0 = load ptr, ptr %plist.0.in, align 4
  %cmp.i = icmp eq ptr %plist.0, %scanned_queue
  br i1 %cmp.i, label %for.cond.exit_crit_edge, label %for.body

for.cond.exit_crit_edge:                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

for.body:                                         ; preds = %for.cond
  %mac_address = getelementptr inbounds %struct.wlan_network, ptr %plist.0, i32 0, i32 6, i32 1
  %bcmp19 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr, ptr noundef dereferenceable(6) %mac_address, i32 6) #25
  %tobool6.not = icmp eq i32 %bcmp19, 0
  br i1 %tobool6.not, label %for.body.exit_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond

for.body.exit_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

exit:                                             ; preds = %for.body.exit_crit_edge, %for.cond.exit_crit_edge, %entry.exit_crit_edge
  %pnetwork.2 = phi ptr [ null, %entry.exit_crit_edge ], [ null, %for.cond.exit_crit_edge ], [ %plist.0, %for.body.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr) #21
  ret ptr %pnetwork.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_network_queue(ptr noundef %padapter, i8 noundef zeroext %isfreeall) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  %scanned_queue1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15
  %lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 15, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #21
  %0 = ptrtoint ptr %scanned_queue1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scanned_queue1, align 4
  %cmp.i.not14 = icmp eq ptr %1, %scanned_queue1
  br i1 %cmp.i.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %plist.015 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %plist.015 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %plist.015, align 4
  tail call void @_rtw_free_network(ptr noundef %mlmepriv, ptr noundef %plist.015, i8 noundef zeroext %isfreeall)
  %cmp.i.not = icmp eq ptr %tmp.0, %scanned_queue1
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_if_up(ptr nocapture noundef readonly %padapter) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %0 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %2 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
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
  call void @__sanitizer_cov_trace_pc() #23
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
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1 = getelementptr i8, ptr %ie, i32 10
  ret ptr %add.ptr1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @rtw_get_capability(ptr nocapture noundef readonly %bss) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
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
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ie, i32 8
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_mlme_priv(ptr noundef %pmlmepriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %pmlmepriv, null
  br i1 %tobool.not.i, label %entry._rtw_free_mlme_priv.exit_crit_edge, label %if.then.i

entry._rtw_free_mlme_priv.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %_rtw_free_mlme_priv.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @rtw_free_mlme_priv_ie_data(ptr noundef nonnull %pmlmepriv) #21
  %free_bss_buf.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 16
  %0 = ptrtoint ptr %free_bss_buf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_bss_buf.i, align 4
  tail call void @vfree(ptr noundef %1) #21
  br label %_rtw_free_mlme_priv.exit

_rtw_free_mlme_priv.exit:                         ; preds = %if.then.i, %entry._rtw_free_mlme_priv.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_network_nolock(ptr noundef %padapter, ptr noundef %pnetwork) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %free_bss_pool.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 14
  %tobool.not.i = icmp eq ptr %pnetwork, null
  br i1 %tobool.not.i, label %entry._rtw_free_network_nolock.exit_crit_edge, label %if.end.i

entry._rtw_free_network_nolock.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %_rtw_free_network_nolock.exit

if.end.i:                                         ; preds = %entry
  %fixed.i = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 2
  %0 = ptrtoint ptr %fixed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fixed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not.i = icmp eq i32 %1, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i._rtw_free_network_nolock.exit_crit_edge

if.end.i._rtw_free_network_nolock.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %_rtw_free_network_nolock.exit

if.end3.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pnetwork) #21
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_del_init.exit.i_crit_edge

if.end3.i.list_del_init.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pnetwork, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %pnetwork to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pnetwork, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_del_init.exit.i_crit_edge
  %8 = ptrtoint ptr %pnetwork to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %pnetwork, ptr %pnetwork, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %pnetwork, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pnetwork, ptr %prev.i3.i.i, align 4
  %prev.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 14, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i9.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %pnetwork, ptr noundef %11, ptr noundef %free_bss_pool.i) #21
  br i1 %call.i.i9.i, label %if.end.i.i10.i, label %list_del_init.exit.i.list_add_tail.exit.i_crit_edge

list_del_init.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_add_tail.exit.i

if.end.i.i10.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pnetwork, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %pnetwork to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %free_bss_pool.i, ptr %pnetwork, align 4
  %14 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev.i3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %pnetwork, ptr %11, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i10.i, %list_del_init.exit.i.list_add_tail.exit.i_crit_edge
  %num_of_scanned.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 17
  %16 = ptrtoint ptr %num_of_scanned.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_of_scanned.i, align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %num_of_scanned.i, align 4
  br label %_rtw_free_network_nolock.exit

_rtw_free_network_nolock.exit:                    ; preds = %list_add_tail.exit.i, %if.end.i._rtw_free_network_nolock.exit_crit_edge, %entry._rtw_free_network_nolock.exit_crit_edge
  tail call void @rtw_cfg80211_unlink_bss(ptr noundef %padapter, ptr noundef %pnetwork) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_cfg80211_unlink_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_find_network(ptr noundef readonly %scanned_queue, ptr nocapture noundef readonly %addr) local_unnamed_addr #5 align 64 {
entry:
  %zero_addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i) #21
  %0 = call ptr @memset(ptr %zero_addr.i, i32 0, i32 6)
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i, ptr noundef dereferenceable(6) %addr, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %entry._rtw_find_network.exit_crit_edge, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

entry._rtw_find_network.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %_rtw_find_network.exit

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %plist.0.in.i = phi ptr [ %plist.0.i, %for.body.i.for.cond.i_crit_edge ], [ %scanned_queue, %entry.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %plist.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %plist.0.i = load ptr, ptr %plist.0.in.i, align 4
  %cmp.i.i = icmp eq ptr %plist.0.i, %scanned_queue
  br i1 %cmp.i.i, label %for.cond.i._rtw_find_network.exit_crit_edge, label %for.body.i

for.cond.i._rtw_find_network.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %_rtw_find_network.exit

for.body.i:                                       ; preds = %for.cond.i
  %mac_address.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i, i32 0, i32 6, i32 1
  %bcmp19.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr, ptr noundef dereferenceable(6) %mac_address.i, i32 6) #26
  %tobool6.not.i = icmp eq i32 %bcmp19.i, 0
  br i1 %tobool6.not.i, label %for.body.i._rtw_find_network.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i

for.body.i._rtw_find_network.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %_rtw_find_network.exit

_rtw_find_network.exit:                           ; preds = %for.body.i._rtw_find_network.exit_crit_edge, %for.cond.i._rtw_find_network.exit_crit_edge, %entry._rtw_find_network.exit_crit_edge
  %pnetwork.2.i = phi ptr [ null, %entry._rtw_find_network.exit_crit_edge ], [ %plist.0.i, %for.body.i._rtw_find_network.exit_crit_edge ], [ null, %for.cond.i._rtw_find_network.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i) #21
  ret ptr %pnetwork.2.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_is_same_ibss(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %pnetwork) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %privacy6 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 4
  %2 = ptrtoint ptr %privacy6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %privacy6, align 4
  br i1 %cmp.not, label %land.lhs.true4, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.if.else9_crit_edge

land.lhs.true.if.else9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else9

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end10

land.lhs.true4:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp7 = icmp eq i32 %3, 1
  br i1 %cmp7, label %land.lhs.true4.if.end10_crit_edge, label %land.lhs.true4.if.else9_crit_edge

land.lhs.true4.if.else9_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else9

land.lhs.true4.if.end10_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end10

if.else9:                                         ; preds = %land.lhs.true4.if.else9_crit_edge, %land.lhs.true.if.else9_crit_edge
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %land.lhs.true4.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge
  %ret.0 = phi i32 [ 1, %if.else9 ], [ 0, %land.lhs.true.if.end10_crit_edge ], [ 0, %land.lhs.true4.if.end10_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @is_same_ess(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  %ssid = getelementptr inbounds %struct.wlan_bssid_ex, ptr %a, i32 0, i32 3
  %0 = ptrtoint ptr %ssid to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %ssid, align 1
  %ssid1 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %b, i32 0, i32 3
  %2 = ptrtoint ptr %ssid1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %ssid1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %ssid4 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %a, i32 0, i32 3, i32 1
  %ssid6 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %b, i32 0, i32 3, i32 1
  %bcmp = tail call i32 @bcmp(ptr %ssid4, ptr %ssid6, i32 %1) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  %phi.cast = zext i1 %tobool.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @is_same_network(ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dst, i8 zeroext %feature) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1.i = getelementptr %struct.wlan_bssid_ex, ptr %src, i32 0, i32 12, i32 10
  %0 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %tmps.0.copyload = load i16, ptr %add.ptr1.i, align 1
  %add.ptr1.i49 = getelementptr %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 12, i32 10
  %1 = ptrtoint ptr %add.ptr1.i49 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %tmpd.0.copyload = load i16, ptr %add.ptr1.i49, align 1
  %ssid = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 3
  %2 = ptrtoint ptr %ssid to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %ssid, align 1
  %ssid5 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 3
  %4 = ptrtoint ptr %ssid5 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %ssid5, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp7 = icmp eq i32 %3, %5
  br i1 %cmp7, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %mac_address = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 1
  %mac_address9 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address, ptr noundef dereferenceable(6) %mac_address9, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %land.lhs.true12, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

land.lhs.true12:                                  ; preds = %land.lhs.true
  %ssid14 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 3, i32 1
  %ssid17 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 3, i32 1
  %bcmp48 = tail call i32 @bcmp(ptr %ssid14, ptr %ssid17, i32 %3) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp48)
  %tobool22.not = icmp eq i32 %bcmp48, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %land.lhs.true12.cleanup_crit_edge

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

land.lhs.true23:                                  ; preds = %land.lhs.true12
  %6 = xor i16 %tmpd.0.copyload, %tmps.0.copyload
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = and i16 %7, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp26 = icmp eq i16 %8, 0
  br i1 %cmp26, label %land.rhs, label %land.lhs.true23.cleanup_crit_edge

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

land.rhs:                                         ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #23
  %9 = and i16 %7, 1
  %10 = xor i16 %9, 1
  %cmp32 = zext i16 %10 to i32
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %land.lhs.true23.cleanup_crit_edge, %land.lhs.true12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %11 = phi i32 [ 0, %land.lhs.true23.cleanup_crit_edge ], [ 0, %land.lhs.true12.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %cmp32, %land.rhs ]
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @_rtw_find_same_network(ptr noundef readonly %scanned_queue, ptr nocapture noundef readonly %network) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1.i.i = getelementptr %struct.wlan_network, ptr %network, i32 0, i32 6, i32 12, i32 10
  %ssid.i = getelementptr inbounds %struct.wlan_network, ptr %network, i32 0, i32 6, i32 3
  %mac_address.i = getelementptr inbounds %struct.wlan_network, ptr %network, i32 0, i32 6, i32 1
  %ssid14.i = getelementptr inbounds %struct.wlan_network, ptr %network, i32 0, i32 6, i32 3, i32 1
  br label %for.cond

for.cond:                                         ; preds = %is_same_network.exit.for.cond_crit_edge, %entry
  %plist.0.in = phi ptr [ %scanned_queue, %entry ], [ %plist.0, %is_same_network.exit.for.cond_crit_edge ]
  %0 = ptrtoint ptr %plist.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %plist.0 = load ptr, ptr %plist.0.in, align 4
  %cmp.i = icmp eq ptr %plist.0, %scanned_queue
  br i1 %cmp.i, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body:                                         ; preds = %for.cond
  %1 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %tmps.0.copyload.i = load i16, ptr %add.ptr1.i.i, align 1
  %add.ptr1.i49.i = getelementptr %struct.wlan_network, ptr %plist.0, i32 0, i32 6, i32 12, i32 10
  %2 = ptrtoint ptr %add.ptr1.i49.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %tmpd.0.copyload.i = load i16, ptr %add.ptr1.i49.i, align 1
  %3 = ptrtoint ptr %ssid.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %ssid.i, align 1
  %ssid5.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %ssid5.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %ssid5.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp7.i = icmp eq i32 %4, %6
  br i1 %cmp7.i, label %land.lhs.true.i, label %for.body.is_same_network.exit_crit_edge

for.body.is_same_network.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %is_same_network.exit

land.lhs.true.i:                                  ; preds = %for.body
  %mac_address9.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0, i32 0, i32 6, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address.i, ptr noundef dereferenceable(6) %mac_address9.i, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true12.i, label %land.lhs.true.i.is_same_network.exit_crit_edge

land.lhs.true.i.is_same_network.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %is_same_network.exit

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %ssid17.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0, i32 0, i32 6, i32 3, i32 1
  %bcmp48.i = tail call i32 @bcmp(ptr %ssid14.i, ptr %ssid17.i, i32 %4) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp48.i)
  %tobool22.not.i = icmp eq i32 %bcmp48.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true23.i, label %land.lhs.true12.i.is_same_network.exit_crit_edge

land.lhs.true12.i.is_same_network.exit_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %is_same_network.exit

land.lhs.true23.i:                                ; preds = %land.lhs.true12.i
  %7 = xor i16 %tmpd.0.copyload.i, %tmps.0.copyload.i
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #21
  %9 = and i16 %8, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp26.i = icmp eq i16 %9, 0
  br i1 %cmp26.i, label %land.rhs.i, label %land.lhs.true23.i.is_same_network.exit_crit_edge

land.lhs.true23.i.is_same_network.exit_crit_edge: ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %is_same_network.exit

land.rhs.i:                                       ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #23
  %10 = and i16 %8, 1
  %11 = xor i16 %10, 1
  %cmp32.i = zext i16 %11 to i32
  br label %is_same_network.exit

is_same_network.exit:                             ; preds = %land.rhs.i, %land.lhs.true23.i.is_same_network.exit_crit_edge, %land.lhs.true12.i.is_same_network.exit_crit_edge, %land.lhs.true.i.is_same_network.exit_crit_edge, %for.body.is_same_network.exit_crit_edge
  %12 = phi i32 [ 0, %land.lhs.true23.i.is_same_network.exit_crit_edge ], [ 0, %land.lhs.true12.i.is_same_network.exit_crit_edge ], [ 0, %land.lhs.true.i.is_same_network.exit_crit_edge ], [ 0, %for.body.is_same_network.exit_crit_edge ], [ %cmp32.i, %land.rhs.i ]
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %is_same_network.exit.for.cond_crit_edge, label %is_same_network.exit.for.end_crit_edge

is_same_network.exit.for.end_crit_edge:           ; preds = %is_same_network.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

is_same_network.exit.for.cond_crit_edge:          ; preds = %is_same_network.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond

for.end:                                          ; preds = %is_same_network.exit.for.end_crit_edge, %for.cond.for.end_crit_edge
  %spec.select = phi ptr [ %plist.0, %is_same_network.exit.for.end_crit_edge ], [ null, %for.cond.for.end_crit_edge ]
  ret ptr %spec.select
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_oldest_wlan_network(ptr noundef readonly %scanned_queue) local_unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %plist.015 = load ptr, ptr %scanned_queue, align 4
  %cmp.i.not16 = icmp eq ptr %plist.015, %scanned_queue
  br i1 %cmp.i.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %plist.018 = phi ptr [ %plist.0, %for.inc.for.body_crit_edge ], [ %plist.015, %entry.for.body_crit_edge ]
  %oldest.017 = phi ptr [ %oldest.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %plist.018, i32 0, i32 2
  %1 = ptrtoint ptr %fixed to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fixed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.then:                                          ; preds = %for.body
  %tobool3.not = icmp eq ptr %oldest.017, null
  br i1 %tobool3.not, label %if.then.if.then5_crit_edge, label %lor.lhs.false

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.then
  %last_scanned = getelementptr inbounds %struct.wlan_network, ptr %plist.018, i32 0, i32 3
  %3 = ptrtoint ptr %last_scanned to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_scanned, align 4
  %last_scanned4 = getelementptr inbounds %struct.wlan_network, ptr %oldest.017, i32 0, i32 3
  %5 = ptrtoint ptr %last_scanned4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_scanned4, align 4
  %sub = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %lor.lhs.false.if.then5_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.then.if.then5_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %oldest.1 = phi ptr [ %oldest.017, %for.body.for.inc_crit_edge ], [ %plist.018, %if.then5 ], [ %oldest.017, %lor.lhs.false.for.inc_crit_edge ]
  %7 = ptrtoint ptr %plist.018 to i32
  call void @__asan_load4_noabort(i32 %7)
  %plist.0 = load ptr, ptr %plist.018, align 4
  %cmp.i.not = icmp eq ptr %plist.0, %scanned_queue
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %oldest.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %oldest.1, %for.inc.for.end_crit_edge ]
  ret ptr %oldest.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @update_network(ptr nocapture noundef %dst, ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %padapter, i1 noundef zeroext %update_ie) local_unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %rssi = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 5
  %0 = ptrtoint ptr %rssi to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %rssi, align 1
  %phy_info = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 10
  %signal_quality = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %signal_quality to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %signal_quality, align 1
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.else9_crit_edge, label %land.lhs.true

entry.if.else9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else9

land.lhs.true:                                    ; preds = %entry
  %add.ptr1.i.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 12, i32 10
  %6 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %tmps.0.copyload.i = load i16, ptr %add.ptr1.i.i, align 1
  %add.ptr1.i49.i = getelementptr %struct.wlan_bssid_ex, ptr %src, i32 0, i32 12, i32 10
  %7 = ptrtoint ptr %add.ptr1.i49.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %tmpd.0.copyload.i = load i16, ptr %add.ptr1.i49.i, align 1
  %ssid.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 3
  %8 = ptrtoint ptr %ssid.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %ssid.i, align 1
  %ssid5.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 3
  %10 = ptrtoint ptr %ssid5.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %ssid5.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp7.i = icmp eq i32 %9, %11
  br i1 %cmp7.i, label %land.lhs.true.i, label %land.lhs.true.if.else9_crit_edge

land.lhs.true.if.else9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else9

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %mac_address.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %mac_address9.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address.i, ptr noundef dereferenceable(6) %mac_address9.i, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i88 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i88, label %land.lhs.true12.i, label %land.lhs.true.i.if.else9_crit_edge

land.lhs.true.i.if.else9_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else9

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %ssid14.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 3, i32 1
  %ssid17.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 3, i32 1
  %bcmp48.i = tail call i32 @bcmp(ptr %ssid14.i, ptr %ssid17.i, i32 %9) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp48.i)
  %tobool22.not.i = icmp eq i32 %bcmp48.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true23.i, label %land.lhs.true12.i.if.else9_crit_edge

land.lhs.true12.i.if.else9_crit_edge:             ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else9

land.lhs.true23.i:                                ; preds = %land.lhs.true12.i
  %12 = xor i16 %tmpd.0.copyload.i, %tmps.0.copyload.i
  %13 = and i16 %12, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %if.then, label %land.lhs.true23.i.if.else9_crit_edge

land.lhs.true23.i.if.else9_crit_edge:             ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else9

if.then:                                          ; preds = %land.lhs.true23.i
  %signal_strength = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 27
  %15 = ptrtoint ptr %signal_strength to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %signal_strength, align 2
  %signal_qual = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 28
  %17 = ptrtoint ptr %signal_qual to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %signal_qual, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 101, i8 %3)
  %cmp.not = icmp eq i8 %3, 101
  br i1 %cmp.not, label %if.then.if.end46_crit_edge, label %if.then6

if.then.if.end46_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end46

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  %rssi7 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 5
  %19 = ptrtoint ptr %rssi7 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %rssi7, align 1
  %mul = shl i32 %1, 2
  %add = add i32 %20, %mul
  %div = sdiv i32 %add, 5
  br label %if.end46

if.else9:                                         ; preds = %land.lhs.true23.i.if.else9_crit_edge, %land.lhs.true12.i.if.else9_crit_edge, %land.lhs.true.i.if.else9_crit_edge, %land.lhs.true.if.else9_crit_edge, %entry.if.else9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 101, i8 %3)
  %cmp11.not = icmp eq i8 %3, 101
  br i1 %cmp11.not, label %if.else39, label %if.then13

if.then13:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #23
  %21 = ptrtoint ptr %phy_info to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %phy_info, align 1
  %conv16 = zext i8 %22 to i16
  %phy_info17 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 10
  %23 = ptrtoint ptr %phy_info17 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %phy_info17, align 1
  %conv19 = zext i8 %24 to i16
  %mul20 = shl nuw nsw i16 %conv19, 2
  %add21 = add nuw nsw i16 %mul20, %conv16
  %div22 = udiv i16 %add21, 5
  %conv23 = trunc i16 %div22 to i8
  %conv26 = zext i8 %3 to i16
  %signal_quality28 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %signal_quality28 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %signal_quality28, align 1
  %conv29 = zext i8 %26 to i16
  %mul30 = shl nuw nsw i16 %conv29, 2
  %add31 = add nuw nsw i16 %mul30, %conv26
  %div32 = udiv i16 %add31, 5
  %conv33 = trunc i16 %div32 to i8
  %rssi34 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 5
  %27 = ptrtoint ptr %rssi34 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %rssi34, align 1
  %mul36 = shl i32 %1, 2
  %add37 = add i32 %28, %mul36
  %div38 = sdiv i32 %add37, 5
  br label %if.end46

if.else39:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #23
  %phy_info40 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 10
  %29 = ptrtoint ptr %phy_info40 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %phy_info40, align 1
  %signal_quality43 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %signal_quality43 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %signal_quality43, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.else39, %if.then13, %if.then6, %if.then.if.end46_crit_edge
  %ss_final.0 = phi i8 [ %16, %if.then6 ], [ %conv23, %if.then13 ], [ %30, %if.else39 ], [ %16, %if.then.if.end46_crit_edge ]
  %sq_final.0 = phi i8 [ %18, %if.then6 ], [ %conv33, %if.then13 ], [ %32, %if.else39 ], [ %18, %if.then.if.end46_crit_edge ]
  %rssi_final.0 = phi i32 [ %div, %if.then6 ], [ %div38, %if.then13 ], [ %1, %if.else39 ], [ %1, %if.then.if.end46_crit_edge ]
  br i1 %update_ie, label %if.then48, label %if.end46.if.end56_crit_edge

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end56

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #23
  %reserved = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 2
  %33 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %reserved, align 1
  %reserved49 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 2
  %35 = ptrtoint ptr %reserved49 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %reserved49, align 1
  %arrayidx52 = getelementptr %struct.wlan_bssid_ex, ptr %src, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx52, align 1
  %arrayidx54 = getelementptr %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx54, align 1
  %ie_length.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %src, i32 0, i32 11
  %39 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %ie_length.i, align 1
  %add.i = add i32 %40, 104
  %41 = call ptr @memcpy(ptr %dst, ptr %src, i32 %add.i)
  br label %if.end56

if.end56:                                         ; preds = %if.then48, %if.end46.if.end56_crit_edge
  %phy_info57 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 10
  %42 = ptrtoint ptr %phy_info57 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %ss_final.0, ptr %phy_info57, align 1
  %signal_quality60 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %dst, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %signal_quality60 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %sq_final.0, ptr %signal_quality60, align 1
  %44 = ptrtoint ptr %rssi to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %rssi_final.0, ptr %rssi, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_update_scanned_network(ptr noundef %adapter, ptr nocapture noundef %target) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %scanned_queue = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15
  %lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #21
  %0 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %plist.0146 = load ptr, ptr %scanned_queue, align 4
  %cmp.i.not147 = icmp eq ptr %plist.0146, %scanned_queue
  br i1 %cmp.i.not147, label %if.then15.thread, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr1.i49.i = getelementptr %struct.wlan_bssid_ex, ptr %target, i32 0, i32 12, i32 10
  %1 = ptrtoint ptr %add.ptr1.i49.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %tmpd.0.copyload.i = load i16, ptr %add.ptr1.i49.i, align 1
  %ssid5.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %target, i32 0, i32 3
  %2 = ptrtoint ptr %ssid5.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %ssid5.i, align 1
  %mac_address9.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %target, i32 0, i32 1
  %ssid17.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %target, i32 0, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %plist.0149 = phi ptr [ %plist.0146, %for.body.lr.ph ], [ %plist.0, %for.inc.for.body_crit_edge ]
  %oldest.0148 = phi ptr [ null, %for.body.lr.ph ], [ %oldest.1, %for.inc.for.body_crit_edge ]
  %add.ptr1.i.i = getelementptr %struct.wlan_network, ptr %plist.0149, i32 0, i32 6, i32 12, i32 10
  %4 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %tmps.0.copyload.i = load i16, ptr %add.ptr1.i.i, align 1
  %ssid.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0149, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %ssid.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %ssid.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp7.i = icmp eq i32 %6, %3
  br i1 %cmp7.i, label %land.lhs.true.i, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

land.lhs.true.i:                                  ; preds = %for.body
  %mac_address.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0149, i32 0, i32 6, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address.i, ptr noundef dereferenceable(6) %mac_address9.i, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true12.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %ssid14.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0149, i32 0, i32 6, i32 3, i32 1
  %bcmp48.i = tail call i32 @bcmp(ptr %ssid14.i, ptr %ssid17.i, i32 %3) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp48.i)
  %tobool22.not.i = icmp eq i32 %bcmp48.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true23.i, label %land.lhs.true12.i.if.end_crit_edge

land.lhs.true12.i.if.end_crit_edge:               ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

land.lhs.true23.i:                                ; preds = %land.lhs.true12.i
  %7 = xor i16 %tmpd.0.copyload.i, %tmps.0.copyload.i
  %8 = and i16 %7, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %if.else54, label %land.lhs.true23.i.if.end_crit_edge

land.lhs.true23.i.if.end_crit_edge:               ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.end:                                           ; preds = %land.lhs.true23.i.if.end_crit_edge, %land.lhs.true12.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %for.body.if.end_crit_edge
  %tobool9.not = icmp eq ptr %oldest.0148, null
  br i1 %tobool9.not, label %if.end.if.then11_crit_edge, label %lor.lhs.false

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end
  %last_scanned = getelementptr inbounds %struct.wlan_network, ptr %plist.0149, i32 0, i32 3
  %10 = ptrtoint ptr %last_scanned to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_scanned, align 4
  %last_scanned10 = getelementptr inbounds %struct.wlan_network, ptr %oldest.0148, i32 0, i32 3
  %12 = ptrtoint ptr %last_scanned10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_scanned10, align 4
  %sub = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %lor.lhs.false.if.then11_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end.if.then11_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %lor.lhs.false.for.inc_crit_edge
  %oldest.1 = phi ptr [ %plist.0149, %if.then11 ], [ %oldest.0148, %lor.lhs.false.for.inc_crit_edge ]
  %14 = ptrtoint ptr %plist.0149 to i32
  call void @__asan_load4_noabort(i32 %14)
  %plist.0 = load ptr, ptr %plist.0149, align 4
  %cmp.i.not = icmp eq ptr %plist.0, %scanned_queue
  br i1 %cmp.i.not, label %if.then15, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

if.then15:                                        ; preds = %for.inc
  %free_bss_pool = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 14
  %15 = ptrtoint ptr %free_bss_pool to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %free_bss_pool, align 4
  %cmp.i135.not = icmp eq ptr %16, %free_bss_pool
  br i1 %cmp.i135.not, label %if.then19, label %if.then15.if.else_crit_edge

if.then15.if.else_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

if.then15.thread:                                 ; preds = %entry
  %free_bss_pool152 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 14
  %17 = ptrtoint ptr %free_bss_pool152 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %free_bss_pool152, align 4
  %cmp.i135.not153 = icmp eq ptr %18, %free_bss_pool152
  br i1 %cmp.i135.not153, label %if.then15.thread.exit_crit_edge, label %if.then15.thread.if.else_crit_edge

if.then15.thread.if.else_crit_edge:               ; preds = %if.then15.thread
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

if.then15.thread.exit_crit_edge:                  ; preds = %if.then15.thread
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.then19:                                        ; preds = %if.then15
  %tobool20.not = icmp eq ptr %oldest.1, null
  br i1 %tobool20.not, label %if.then19.exit_crit_edge, label %if.end22

if.then19.exit_crit_edge:                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end22:                                         ; preds = %if.then19
  %network23 = getelementptr inbounds %struct.wlan_network, ptr %oldest.1, i32 0, i32 6
  %ie_length.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %target, i32 0, i32 11
  %19 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %ie_length.i, align 1
  %add.i = add i32 %20, 104
  %21 = call ptr @memcpy(ptr %network23, ptr %target, i32 %add.i)
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %oldest.1, i32 0, i32 2
  %22 = ptrtoint ptr %fixed to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %fixed, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %last_scanned25 = getelementptr inbounds %struct.wlan_network, ptr %oldest.1, i32 0, i32 3
  %24 = ptrtoint ptr %last_scanned25 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %last_scanned25, align 4
  %network_type = getelementptr inbounds %struct.wlan_network, ptr %oldest.1, i32 0, i32 1
  %25 = ptrtoint ptr %network_type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %network_type, align 4
  %aid = getelementptr inbounds %struct.wlan_network, ptr %oldest.1, i32 0, i32 4
  %26 = ptrtoint ptr %aid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %aid, align 4
  %join_res = getelementptr inbounds %struct.wlan_network, ptr %oldest.1, i32 0, i32 5
  %27 = ptrtoint ptr %join_res to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %join_res, align 4
  %signal_quality = getelementptr inbounds %struct.wlan_network, ptr %oldest.1, i32 0, i32 6, i32 10, i32 1
  %28 = ptrtoint ptr %signal_quality to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %signal_quality, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 101, i8 %29)
  %cmp27 = icmp eq i8 %29, 101
  br i1 %cmp27, label %if.then29, label %if.end22.exit_crit_edge

if.end22.exit_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #23
  %30 = ptrtoint ptr %signal_quality to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %signal_quality, align 1
  br label %exit

if.else:                                          ; preds = %if.then15.thread.if.else_crit_edge, %if.then15.if.else_crit_edge
  %free_bss_pool155 = phi ptr [ %free_bss_pool152, %if.then15.thread.if.else_crit_edge ], [ %free_bss_pool, %if.then15.if.else_crit_edge ]
  %lock.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 14, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #21
  %31 = ptrtoint ptr %free_bss_pool155 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %free_bss_pool155, align 4
  %cmp.i.not.i = icmp eq ptr %32, %free_bss_pool155
  br i1 %cmp.i.not.i, label %rtw_alloc_network.exit.thread, label %if.end.i

rtw_alloc_network.exit.thread:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #21
  br label %exit

if.end.i:                                         ; preds = %if.else
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %32) #21
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.rtw_alloc_network.exit_crit_edge

if.end.i.rtw_alloc_network.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_alloc_network.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %rtw_alloc_network.exit

rtw_alloc_network.exit:                           ; preds = %if.end.i.i.i, %if.end.i.rtw_alloc_network.exit_crit_edge
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %32, ptr %32, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %32, ptr %prev.i3.i.i, align 4
  %network_type.i = getelementptr inbounds %struct.wlan_network, ptr %32, i32 0, i32 1
  %41 = ptrtoint ptr %network_type.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %network_type.i, align 4
  %fixed.i = getelementptr inbounds %struct.wlan_network, ptr %32, i32 0, i32 2
  %42 = ptrtoint ptr %fixed.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %fixed.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %last_scanned.i = getelementptr inbounds %struct.wlan_network, ptr %32, i32 0, i32 3
  %44 = ptrtoint ptr %last_scanned.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %last_scanned.i, align 4
  %aid.i = getelementptr inbounds %struct.wlan_network, ptr %32, i32 0, i32 4
  %45 = ptrtoint ptr %aid.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %aid.i, align 4
  %join_res.i = getelementptr inbounds %struct.wlan_network, ptr %32, i32 0, i32 5
  %46 = ptrtoint ptr %join_res.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %join_res.i, align 4
  %num_of_scanned.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 17
  %47 = ptrtoint ptr %num_of_scanned.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_of_scanned.i, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %num_of_scanned.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #21
  %tobool35.not = icmp eq ptr %32, null
  br i1 %tobool35.not, label %rtw_alloc_network.exit.exit_crit_edge, label %if.end37

rtw_alloc_network.exit.exit_crit_edge:            ; preds = %rtw_alloc_network.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end37:                                         ; preds = %rtw_alloc_network.exit
  %ie_length.i137 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %target, i32 0, i32 11
  %49 = ptrtoint ptr %ie_length.i137 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %ie_length.i137, align 1
  %add.i138 = add i32 %50, 104
  %51 = ptrtoint ptr %target to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %add.i138, ptr %target, align 1
  %network39 = getelementptr inbounds %struct.wlan_network, ptr %32, i32 0, i32 6
  %52 = call ptr @memcpy(ptr %network39, ptr %target, i32 %add.i138)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %54 = ptrtoint ptr %last_scanned.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %last_scanned.i, align 4
  %signal_quality43 = getelementptr inbounds %struct.wlan_network, ptr %32, i32 0, i32 6, i32 10, i32 1
  %55 = ptrtoint ptr %signal_quality43 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %signal_quality43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 101, i8 %56)
  %cmp45 = icmp eq i8 %56, 101
  br i1 %cmp45, label %if.then47, label %if.end37.if.end51_crit_edge

if.end37.if.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end51

if.then47:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #23
  %57 = ptrtoint ptr %signal_quality43 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %signal_quality43, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.end37.if.end51_crit_edge
  %prev.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %32, ptr noundef %59, ptr noundef %scanned_queue) #21
  br i1 %call.i.i, label %if.end.i.i, label %if.end51.exit_crit_edge

if.end51.exit_crit_edge:                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end.i.i:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #23
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %32, ptr %prev.i, align 4
  %61 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %scanned_queue, ptr %32, align 4
  %62 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev.i3.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %32, ptr %59, align 4
  br label %exit

if.else54:                                        ; preds = %land.lhs.true23.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %last_scanned55 = getelementptr inbounds %struct.wlan_network, ptr %plist.0149, i32 0, i32 3
  %65 = ptrtoint ptr %last_scanned55 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %last_scanned55, align 4
  %network56 = getelementptr inbounds %struct.wlan_network, ptr %plist.0149, i32 0, i32 6
  %reserved65 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %target, i32 0, i32 2
  %66 = ptrtoint ptr %reserved65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %reserved65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %67)
  %cmp68.not = icmp eq i8 %67, 2
  br i1 %cmp68.not, label %if.else54.if.else81_crit_edge, label %land.lhs.true70

if.else54.if.else81_crit_edge:                    ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else81

land.lhs.true70:                                  ; preds = %if.else54
  %reserved75 = getelementptr inbounds %struct.wlan_network, ptr %plist.0149, i32 0, i32 6, i32 2
  %68 = ptrtoint ptr %reserved75 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %reserved75, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %69)
  %cmp78.not = icmp ult i8 %67, %69
  br i1 %cmp78.not, label %land.lhs.true70.if.else81_crit_edge, label %land.lhs.true70.if.end82_crit_edge

land.lhs.true70.if.end82_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end82

land.lhs.true70.if.else81_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else81

if.else81:                                        ; preds = %land.lhs.true70.if.else81_crit_edge, %if.else54.if.else81_crit_edge
  br label %if.end82

if.end82:                                         ; preds = %if.else81, %land.lhs.true70.if.end82_crit_edge
  %update_ie.0.off0 = phi i1 [ false, %if.else81 ], [ true, %land.lhs.true70.if.end82_crit_edge ]
  tail call void @update_network(ptr noundef %network56, ptr noundef %target, ptr noundef %adapter, i1 noundef zeroext %update_ie.0.off0)
  br label %exit

exit:                                             ; preds = %if.end82, %if.end.i.i, %if.end51.exit_crit_edge, %rtw_alloc_network.exit.exit_crit_edge, %rtw_alloc_network.exit.thread, %if.then29, %if.end22.exit_crit_edge, %if.then19.exit_crit_edge, %if.then15.thread.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_add_network(ptr noundef %adapter, ptr nocapture noundef %pnetwork) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %network.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %entry.update_current_network.exit_crit_edge, label %land.lhs.true.i

entry.update_current_network.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %update_current_network.exit

land.lhs.true.i:                                  ; preds = %entry
  %add.ptr1.i.i.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 12, i32 10
  %2 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %tmps.0.copyload.i.i = load i16, ptr %add.ptr1.i.i.i, align 1
  %add.ptr1.i49.i.i = getelementptr %struct.wlan_bssid_ex, ptr %pnetwork, i32 0, i32 12, i32 10
  %3 = ptrtoint ptr %add.ptr1.i49.i.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %tmpd.0.copyload.i.i = load i16, ptr %add.ptr1.i49.i.i, align 1
  %ssid.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 3
  %4 = ptrtoint ptr %ssid.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %ssid.i.i, align 1
  %ssid5.i.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pnetwork, i32 0, i32 3
  %6 = ptrtoint ptr %ssid5.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ssid5.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp7.i.i = icmp eq i32 %5, %7
  br i1 %cmp7.i.i, label %land.lhs.true.i.i, label %land.lhs.true.i.update_current_network.exit_crit_edge

land.lhs.true.i.update_current_network.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %update_current_network.exit

land.lhs.true.i.i:                                ; preds = %land.lhs.true.i
  %mac_address.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %mac_address9.i.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pnetwork, i32 0, i32 1
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address.i.i, ptr noundef dereferenceable(6) %mac_address9.i.i, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i28.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i28.i, label %land.lhs.true12.i.i, label %land.lhs.true.i.i.update_current_network.exit_crit_edge

land.lhs.true.i.i.update_current_network.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %update_current_network.exit

land.lhs.true12.i.i:                              ; preds = %land.lhs.true.i.i
  %ssid14.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 3, i32 1
  %ssid17.i.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pnetwork, i32 0, i32 3, i32 1
  %bcmp48.i.i = tail call i32 @bcmp(ptr %ssid14.i.i, ptr %ssid17.i.i, i32 %5) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp48.i.i)
  %tobool22.not.i.i = icmp eq i32 %bcmp48.i.i, 0
  br i1 %tobool22.not.i.i, label %land.lhs.true23.i.i, label %land.lhs.true12.i.i.update_current_network.exit_crit_edge

land.lhs.true12.i.i.update_current_network.exit_crit_edge: ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %update_current_network.exit

land.lhs.true23.i.i:                              ; preds = %land.lhs.true12.i.i
  %8 = xor i16 %tmpd.0.copyload.i.i, %tmps.0.copyload.i.i
  %9 = and i16 %8, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %if.then.i, label %land.lhs.true23.i.i.update_current_network.exit_crit_edge

land.lhs.true23.i.i.update_current_network.exit_crit_edge: ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %update_current_network.exit

if.then.i:                                        ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @update_network(ptr noundef %network.i, ptr noundef %pnetwork, ptr noundef %adapter, i1 noundef zeroext true) #21
  %add.ptr.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 12, i32 12
  %ie_length.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 11
  %11 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ie_length.i, align 4
  tail call void @rtw_update_protection(ptr noundef %adapter, ptr noundef %add.ptr.i, i32 noundef %12) #21
  br label %update_current_network.exit

update_current_network.exit:                      ; preds = %if.then.i, %land.lhs.true23.i.i.update_current_network.exit_crit_edge, %land.lhs.true12.i.i.update_current_network.exit_crit_edge, %land.lhs.true.i.i.update_current_network.exit_crit_edge, %land.lhs.true.i.update_current_network.exit_crit_edge, %entry.update_current_network.exit_crit_edge
  tail call void @rtw_update_scanned_network(ptr noundef %adapter, ptr noundef %pnetwork)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_is_desired_network(ptr nocapture noundef readonly %adapter, ptr noundef %pnetwork) local_unnamed_addr #0 align 64 {
entry:
  %wps_ielen = alloca i32, align 4
  %ie_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wps_ielen) #21
  %0 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wps_ielen, align 4, !annotation !26
  %ndisencryptstatus = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 36
  %1 = ptrtoint ptr %ndisencryptstatus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ndisencryptstatus, align 4
  %privacy1 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 4
  %3 = ptrtoint ptr %privacy1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %privacy1, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_state.i, align 4
  %7 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr = getelementptr %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 12, i32 12
  %ie_length = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 11
  %8 = ptrtoint ptr %ie_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ie_length, align 4
  %sub = add i32 %9, -12
  %call4 = call ptr @rtw_get_wps_ie(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef null, ptr noundef nonnull %wps_ielen) #21
  %tobool5.not = icmp ne ptr %call4, null
  %. = zext i1 %tobool5.not to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 48
  %10 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp = icmp eq i8 %11, 1
  br i1 %cmp, label %if.then8, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end34

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ie_len) #21
  %12 = ptrtoint ptr %ie_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp9 = icmp ne i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp11.not = icmp eq i32 %4, 0
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp11.not
  %bselected.0 = zext i1 %or.cond to i32
  %ndisauthtype = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 35
  %13 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ndisauthtype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cmp15 = icmp eq i32 %14, 7
  br i1 %cmp15, label %if.then17, label %if.then8.if.end33_crit_edge

if.then8.if.end33_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end33

if.then17:                                        ; preds = %if.then8
  %add.ptr21 = getelementptr %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 12, i32 12
  %ie_length23 = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 11
  %15 = ptrtoint ptr %ie_length23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ie_length23, align 4
  %sub24 = add i32 %16, -12
  %call25 = call ptr @rtw_get_ie(ptr noundef %add.ptr21, i32 noundef 48, ptr noundef nonnull %ie_len, i32 noundef %sub24) #21
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.then17.if.else31_crit_edge, label %land.lhs.true27

if.then17.if.else31_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else31

land.lhs.true27:                                  ; preds = %if.then17
  %17 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp28.not = icmp eq i32 %18, 0
  br i1 %cmp28.not, label %land.lhs.true27.if.else31_crit_edge, label %land.lhs.true27.if.end33_crit_edge

land.lhs.true27.if.end33_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end33

land.lhs.true27.if.else31_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else31

if.else31:                                        ; preds = %land.lhs.true27.if.else31_crit_edge, %if.then17.if.else31_crit_edge
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %land.lhs.true27.if.end33_crit_edge, %if.then8.if.end33_crit_edge
  %bselected.1 = phi i32 [ 0, %if.else31 ], [ %bselected.0, %if.then8.if.end33_crit_edge ], [ 1, %land.lhs.true27.if.end33_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ie_len) #21
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end.if.end34_crit_edge
  %bselected.2 = phi i32 [ %bselected.1, %if.end33 ], [ 1, %if.end.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp35.not = icmp ne i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp38 = icmp eq i32 %4, 0
  %or.cond71 = select i1 %cmp35.not, i1 %cmp38, i1 false
  %bselected.3 = select i1 %or.cond71, i32 0, i32 %bselected.2
  %19 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_state.i, align 4
  %and.i73 = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73)
  %tobool.not.i74.not = icmp eq i32 %and.i73, 0
  br i1 %tobool.not.i74.not, label %if.end34.cleanup_crit_edge, label %if.then45

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then45:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #23
  %infrastructure_mode = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 8
  %21 = ptrtoint ptr %infrastructure_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %infrastructure_mode, align 4
  %infrastructure_mode48 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 8
  %23 = ptrtoint ptr %infrastructure_mode48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %infrastructure_mode48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp49.not = icmp eq i32 %22, %24
  %spec.select = select i1 %cmp49.not, i32 %bselected.3, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end34.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ %bselected.3, %if.end34.cleanup_crit_edge ], [ %spec.select, %if.then45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wps_ielen) #21
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_wps_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_ie(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_atimdone_event_callback(ptr nocapture noundef %adapter, ptr nocapture noundef %pbuf) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_survey_event_callback(ptr noundef %adapter, ptr nocapture noundef %pbuf) local_unnamed_addr #0 align 64 {
entry:
  %zero_addr.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4
  %ie_length.i = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 11
  %0 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %ie_length.i, align 1
  %2 = add i32 %1, -769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -873, i32 %2)
  %cmp = icmp ult i32 %2, -873
  br i1 %cmp, label %entry.cleanup42_crit_edge, label %if.end

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup42

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #21
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end.if.end30_crit_edge, label %if.then3

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end30

if.then3:                                         ; preds = %if.end
  %mac_address = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %mac_address4 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address, ptr noundef dereferenceable(6) %mac_address4, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then6, label %if.then3.if.end30_crit_edge

if.then3.if.end30_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end30

if.then6:                                         ; preds = %if.then3
  %ies = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 12
  %ies10 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 12
  %5 = ptrtoint ptr %ies10 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %ies10, align 1
  %7 = ptrtoint ptr %ies to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %ies, align 4
  %scanned_queue = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15
  %lock12 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock12) #21
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i.i) #21
  %8 = call ptr @memset(ptr %zero_addr.i.i, i32 0, i32 6)
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i.i, ptr noundef dereferenceable(6) %mac_address4, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %if.then6.rtw_find_network.exit.thread_crit_edge, label %if.then6.for.cond.i.i_crit_edge

if.then6.for.cond.i.i_crit_edge:                  ; preds = %if.then6
  br label %for.cond.i.i

if.then6.rtw_find_network.exit.thread_crit_edge:  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_find_network.exit.thread

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then6.for.cond.i.i_crit_edge
  %plist.0.in.i.i = phi ptr [ %plist.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %scanned_queue, %if.then6.for.cond.i.i_crit_edge ]
  %9 = ptrtoint ptr %plist.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %plist.0.i.i = load ptr, ptr %plist.0.in.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %plist.0.i.i, %scanned_queue
  br i1 %cmp.i.i.i, label %for.cond.i.i.rtw_find_network.exit.thread_crit_edge, label %for.body.i.i

for.cond.i.i.rtw_find_network.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_find_network.exit.thread

for.body.i.i:                                     ; preds = %for.cond.i.i
  %mac_address.i.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i, i32 0, i32 6, i32 1
  %bcmp19.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address4, ptr noundef dereferenceable(6) %mac_address.i.i, i32 6) #26
  %tobool6.not.i.i = icmp eq i32 %bcmp19.i.i, 0
  br i1 %tobool6.not.i.i, label %rtw_find_network.exit, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i.i

rtw_find_network.exit.thread:                     ; preds = %for.cond.i.i.rtw_find_network.exit.thread_crit_edge, %if.then6.rtw_find_network.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i) #21
  br label %cleanup.thread

rtw_find_network.exit:                            ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i) #21
  %tobool17.not = icmp eq ptr %plist.0.i.i, null
  br i1 %tobool17.not, label %rtw_find_network.exit.cleanup.thread_crit_edge, label %cleanup

rtw_find_network.exit.cleanup.thread_crit_edge:   ; preds = %rtw_find_network.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %rtw_find_network.exit.cleanup.thread_crit_edge, %rtw_find_network.exit.thread
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock12) #21
  br label %if.end30

cleanup:                                          ; preds = %rtw_find_network.exit
  call void @__sanitizer_cov_trace_pc() #23
  %ies20 = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i, i32 0, i32 6, i32 12
  %10 = ptrtoint ptr %ies10 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %ies10, align 1
  %12 = ptrtoint ptr %ies20 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %ies20, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock12) #21
  br label %exit

if.end30:                                         ; preds = %cleanup.thread, %if.then3.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %13 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_state.i, align 4
  %15 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp32 = icmp eq i32 %15, 0
  br i1 %cmp32, label %if.then33, label %if.end30.exit_crit_edge

if.end30.exit_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.then33:                                        ; preds = %if.end30
  %ssid34 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %ssid34 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ssid34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp35 = icmp eq i8 %17, 0
  br i1 %cmp35, label %if.then37, label %if.then33.if.end39_crit_edge

if.then33.if.end39_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end39

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #23
  %ssid = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pbuf, i32 0, i32 3
  %18 = ptrtoint ptr %ssid to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %ssid, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then33.if.end39_crit_edge
  tail call void @rtw_add_network(ptr noundef %adapter, ptr noundef %pbuf)
  br label %exit

exit:                                             ; preds = %if.end39, %if.end30.exit_crit_edge, %cleanup
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #21
  br label %cleanup42

cleanup42:                                        ; preds = %exit, %entry.cleanup42_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_surveydone_event_callback(ptr noundef %adapter, ptr nocapture noundef readnone %pbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #21
  %wps_probe_req_ie = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 39
  %0 = ptrtoint ptr %wps_probe_req_ie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wps_probe_req_ie, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %wps_probe_req_ie_len = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 40
  %2 = ptrtoint ptr %wps_probe_req_ie_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wps_probe_req_ie_len, align 4
  tail call void @kfree(ptr noundef nonnull %1) #21
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
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %scan_to_timer = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 26
  %call5 = tail call i32 @del_timer_sync(ptr noundef %scan_to_timer) #21
  %7 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_state.i, align 4
  %and.i138 = and i32 %8, -2049
  store i32 %and.i138, ptr %fw_state.i, align 4
  %bScanInProcess.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %bScanInProcess.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %bScanInProcess.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %signal_stat_timer = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 31
  %signal_stat_sampling_interval = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 32
  %10 = ptrtoint ptr %signal_stat_sampling_interval to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %signal_stat_sampling_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %mul.i = mul i32 %11, 100
  %div.i = udiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %12
  %call.i = tail call i32 @mod_timer(ptr noundef %signal_stat_timer, i32 noundef %add.i) #21
  %to_join = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %to_join to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %to_join, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  br i1 %tobool8.not, label %if.else65, label %if.then9

if.then9:                                         ; preds = %if.end6
  %15 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fw_state.i, align 4
  %and.i140 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140)
  %tobool.not.i141.not = icmp eq i32 %and.i140, 0
  br i1 %tobool.not.i141.not, label %if.else30, label %if.then11

if.then11:                                        ; preds = %if.then9
  %and.i144 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144)
  %cmp13 = icmp eq i32 %and.i144, 0
  br i1 %cmp13, label %if.then14, label %if.then11.unlock_crit_edge

if.then11.unlock_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #23
  br label %unlock

if.then14:                                        ; preds = %if.then11
  %or.i = or i32 %16, 128
  %17 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i, ptr %fw_state.i, align 4
  %call15 = tail call i32 @rtw_select_and_join_from_scanned_queue(ptr noundef %mlmepriv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 1
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #23
  %assoc_timer = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add.i148 = add i32 %18, 650
  %call.i149 = tail call i32 @mod_timer(ptr noundef %assoc_timer, i32 noundef %add.i148) #21
  br label %unlock

if.else:                                          ; preds = %if.then14
  %mac_address = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 1
  %19 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_state.i, align 4
  %and.i151 = and i32 %20, -2049
  store i32 %and.i151, ptr %fw_state.i, align 4
  %bScanInProcess.i152 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %bScanInProcess.i152 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %bScanInProcess.i152, align 4
  %ssid = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 3
  %assoc_ssid = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 18
  %22 = call ptr @memcpy(ptr %ssid, ptr %assoc_ssid, i32 36)
  %dot11PrivacyAlgrthm.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 1
  %23 = ptrtoint ptr %dot11PrivacyAlgrthm.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dot11PrivacyAlgrthm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i = icmp ne i32 %24, 0
  %cond.i = zext i1 %cmp.not.i to i32
  %privacy.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 4
  %25 = ptrtoint ptr %privacy.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %cond.i, ptr %privacy.i, align 1
  %rssi.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 5
  %26 = ptrtoint ptr %rssi.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 0, ptr %rssi.i, align 1
  %wireless_mode.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 7
  %27 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %wireless_mode.i, align 2
  %switch.tableidx = add i8 %28, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %switch.tableidx)
  %29 = icmp ult i8 %switch.tableidx, 11
  br i1 %29, label %switch.hole_check, label %if.else.sw.epilog.i_crit_edge

if.else.sw.epilog.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.i

switch.hole_check:                                ; preds = %if.else
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 1671, %switch.maskindex
  %30 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %switch.lobit.not = icmp eq i16 %30, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #23
  %31 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.rtw_surveydone_event_callback, i32 0, i32 %31
  %32 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load = load i32, ptr %switch.gep, align 4
  %network_type_in_use3.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 6
  %33 = ptrtoint ptr %network_type_in_use3.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %switch.load, ptr %network_type_in_use3.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %switch.hole_check.sw.epilog.i_crit_edge, %if.else.sw.epilog.i_crit_edge
  %channel.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 6
  %34 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %channel.i, align 1
  %conv4.i = zext i8 %35 to i32
  %ds_config.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 7, i32 3
  %36 = ptrtoint ptr %ds_config.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %conv4.i, ptr %ds_config.i, align 1
  %infrastructure_mode.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 8
  %37 = ptrtoint ptr %infrastructure_mode.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %infrastructure_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp5.i = icmp eq i32 %38, 0
  br i1 %cmp5.i, label %if.then.i, label %sw.epilog.i.rtw_update_registrypriv_dev_network.exit_crit_edge

sw.epilog.i.rtw_update_registrypriv_dev_network.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_update_registrypriv_dev_network.exit

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  %atim_window.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 7, i32 2
  %39 = ptrtoint ptr %atim_window.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 0, ptr %atim_window.i, align 1
  br label %rtw_update_registrypriv_dev_network.exit

rtw_update_registrypriv_dev_network.exit:         ; preds = %if.then.i, %sw.epilog.i.rtw_update_registrypriv_dev_network.exit_crit_edge
  %dev_network.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36
  %registrypriv.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14
  %infrastructure_mode10.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 8
  %40 = ptrtoint ptr %infrastructure_mode10.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %38, ptr %infrastructure_mode10.i, align 1
  %call.i153 = tail call i32 @rtw_generate_ie(ptr noundef %registrypriv.i) #21
  %ie_length.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 11
  %41 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %call.i153, ptr %ie_length.i, align 1
  %add.i.i = add i32 %call.i153, 104
  %42 = ptrtoint ptr %dev_network.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %add.i.i, ptr %dev_network.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %44 = ptrtoint ptr %mac_address to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 2, ptr %mac_address, align 1
  %arrayidx1.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 1, i32 1
  %45 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 17, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 1, i32 2
  %46 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -121, ptr %arrayidx2.i, align 1
  %conv.i = trunc i32 %43 to i8
  %arrayidx3.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 1, i32 3
  %47 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv.i, ptr %arrayidx3.i, align 1
  %shr.i = lshr i32 %43, 8
  %conv5.i = trunc i32 %shr.i to i8
  %arrayidx6.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 1, i32 4
  %48 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  %shr7.i = lshr i32 %43, 16
  %conv9.i = trunc i32 %shr7.i to i8
  %arrayidx10.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 1, i32 5
  %49 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv9.i, ptr %arrayidx10.i, align 1
  %50 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 64, ptr %fw_state.i, align 4
  %51 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %to_join, align 1
  %call21 = tail call zeroext i8 @rtw_createbss_cmd(ptr noundef %adapter) #21
  br label %unlock

if.else30:                                        ; preds = %if.then9
  %or.i155 = or i32 %16, 128
  %52 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or.i155, ptr %fw_state.i, align 4
  %53 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %to_join, align 1
  %call32 = tail call i32 @rtw_select_and_join_from_scanned_queue(ptr noundef %mlmepriv)
  %54 = zext i32 %call32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call32, label %if.else41 [
    i32 1, label %if.then35
    i32 2, label %if.then40
  ]

if.then35:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #23
  %assoc_timer36 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %add.i156 = add i32 %55, 650
  %call.i157 = tail call i32 @mod_timer(ptr noundef %assoc_timer36, i32 noundef %add.i156) #21
  br label %unlock

if.then40:                                        ; preds = %if.else30
  %56 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fw_state.i, align 4
  %and.i159 = and i32 %57, -129
  store i32 %and.i159, ptr %fw_state.i, align 4
  %58 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %to_join, align 1
  %and.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i160 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i160, label %if.then.i161, label %if.then40.rtw_indicate_connect.exit_crit_edge

if.then40.rtw_indicate_connect.exit_crit_edge:    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_indicate_connect.exit

if.then.i161:                                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #23
  %or.i.i = or i32 %and.i159, 1
  %59 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or.i.i, ptr %fw_state.i, align 4
  tail call void @rtw_os_indicate_connect(ptr noundef %adapter) #21
  br label %rtw_indicate_connect.exit

rtw_indicate_connect.exit:                        ; preds = %if.then.i161, %if.then40.rtw_indicate_connect.exit_crit_edge
  %60 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %to_join, align 1
  %to_roam3.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %61 = ptrtoint ptr %to_roam3.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %to_roam3.i.i, align 2
  %set_scan_deny.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 29
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %set_scan_deny.i.i, i32 noundef 4) #21
  %62 = ptrtoint ptr %set_scan_deny.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 1, ptr %set_scan_deny.i.i, align 4
  %set_scan_deny_timer.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %63, 300
  %call.i.i.i = tail call i32 @mod_timer(ptr noundef %set_scan_deny_timer.i.i, i32 noundef %add.i.i.i) #21
  br label %unlock

if.else41:                                        ; preds = %if.else30
  %to_roam.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %64 = ptrtoint ptr %to_roam.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %to_roam.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp44.not = icmp eq i8 %65, 0
  br i1 %cmp44.not, label %rtw_indicate_disconnect.exit181, label %if.then46

if.then46:                                        ; preds = %if.else41
  %dec.i = add i8 %65, -1
  %66 = ptrtoint ptr %to_roam.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %dec.i, ptr %to_roam.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %cmp49 = icmp eq i8 %dec.i, 0
  br i1 %cmp49, label %if.then46.if.then56_crit_edge, label %lor.lhs.false

if.then46.if.then56_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then56

lor.lhs.false:                                    ; preds = %if.then46
  %assoc_ssid51 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 18
  %call52 = tail call zeroext i8 @rtw_sitesurvey_cmd(ptr noundef %adapter, ptr noundef %assoc_ssid51, i32 noundef 1, ptr noundef null, i32 noundef 0) #21
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call52)
  %cmp54.not = icmp eq i8 %call52, 1
  br i1 %cmp54.not, label %if.else57, label %lor.lhs.false.if.then56_crit_edge

lor.lhs.false.if.then56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then56

if.then56:                                        ; preds = %lor.lhs.false.if.then56_crit_edge, %if.then46.if.then56_crit_edge
  %67 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %to_join, align 1
  %68 = ptrtoint ptr %to_roam.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %to_roam.i, align 2
  tail call void @rtw_free_assoc_resources(ptr noundef %adapter, i32 noundef 1)
  %69 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fw_state.i, align 4
  %and.i.i166 = and i32 %70, -385
  store i32 %and.i.i166, ptr %fw_state.i, align 4
  %71 = ptrtoint ptr %to_roam.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %to_roam.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp.not.i167 = icmp eq i8 %72, 0
  br i1 %cmp.not.i167, label %if.then8.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #23
  %and.i21.i = and i32 %70, -386
  %73 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and.i21.i, ptr %fw_state.i, align 4
  br label %rtw_indicate_disconnect.exit

if.then8.i:                                       ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @rtw_os_indicate_disconnect(ptr noundef %adapter) #21
  tail call void @rtw_set_ips_deny(ptr noundef %adapter, i32 noundef 3000) #21
  %74 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fw_state.i, align 4
  %and.i26.i = and i32 %75, -2
  store i32 %and.i26.i, ptr %fw_state.i, align 4
  %set_scan_deny.i.i168 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 29
  %call.i.i.i.i169 = tail call zeroext i1 @__kasan_check_write(ptr noundef %set_scan_deny.i.i168, i32 noundef 4) #21
  %76 = ptrtoint ptr %set_scan_deny.i.i168 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 0, ptr %set_scan_deny.i.i168, align 4
  br label %rtw_indicate_disconnect.exit

rtw_indicate_disconnect.exit:                     ; preds = %if.then8.i, %if.end.thread.i
  %call10.i = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %adapter, i8 noundef zeroext 3, i8 noundef zeroext 1) #21
  br label %if.end61

if.else57:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  %77 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %to_join, align 1
  br label %if.end61

rtw_indicate_disconnect.exit181:                  ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #23
  %78 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fw_state.i, align 4
  %and.i.i171 = and i32 %79, -385
  store i32 %and.i.i171, ptr %fw_state.i, align 4
  tail call void @rtw_os_indicate_disconnect(ptr noundef %adapter) #21
  tail call void @rtw_set_ips_deny(ptr noundef %adapter, i32 noundef 3000) #21
  %80 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fw_state.i, align 4
  %and.i26.i176 = and i32 %81, -2
  store i32 %and.i26.i176, ptr %fw_state.i, align 4
  %set_scan_deny.i.i177 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 29
  %call.i.i.i.i178 = tail call zeroext i1 @__kasan_check_write(ptr noundef %set_scan_deny.i.i177, i32 noundef 4) #21
  %82 = ptrtoint ptr %set_scan_deny.i.i177 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 0, ptr %set_scan_deny.i.i177, align 4
  %call10.i180 = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %adapter, i8 noundef zeroext 3, i8 noundef zeroext 1) #21
  br label %if.end61

if.end61:                                         ; preds = %rtw_indicate_disconnect.exit181, %if.else57, %rtw_indicate_disconnect.exit
  %83 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fw_state.i, align 4
  %and.i183 = and i32 %84, -129
  store i32 %and.i183, ptr %fw_state.i, align 4
  br label %unlock

if.else65:                                        ; preds = %if.end6
  %roam_flags = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 6
  %85 = ptrtoint ptr %roam_flags to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %roam_flags, align 8
  %87 = and i8 %86, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool68.not = icmp eq i8 %87, 0
  br i1 %tobool68.not, label %if.else65.unlock_crit_edge, label %if.then69

if.else65.unlock_crit_edge:                       ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #23
  br label %unlock

if.then69:                                        ; preds = %if.else65
  %88 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %fw_state.i, align 4
  %90 = and i32 %89, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %90)
  %.not = icmp eq i32 %90, 9
  br i1 %.not, label %if.then74, label %if.then69.unlock_crit_edge

if.then69.unlock_crit_edge:                       ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #23
  br label %unlock

if.then74:                                        ; preds = %if.then69
  %call75 = tail call i32 @rtw_select_roaming_candidate(ptr noundef %mlmepriv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call75)
  %cmp76 = icmp eq i32 %call75, 1
  br i1 %cmp76, label %if.then78, label %if.then74.unlock_crit_edge

if.then74.unlock_crit_edge:                       ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #23
  br label %unlock

if.then78:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #23
  %mac_address79 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %call81 = tail call i32 @receive_disconnect(ptr noundef %adapter, ptr noundef %mac_address79, i16 noundef zeroext -3) #21
  br label %unlock

unlock:                                           ; preds = %if.then78, %if.then74.unlock_crit_edge, %if.then69.unlock_crit_edge, %if.else65.unlock_crit_edge, %if.end61, %rtw_indicate_connect.exit, %if.then35, %rtw_update_registrypriv_dev_network.exit, %if.then17, %if.then11.unlock_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #21
  tail call void @rtw_os_xmit_schedule(ptr noundef %adapter) #21
  tail call void @rtw_cfg80211_surveydone_event_callback(ptr noundef %adapter) #21
  tail call void @rtw_os_indicate_scan_done(ptr noundef %adapter, i1 noundef zeroext false) #21
  %dvobj.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %91 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dvobj.i, align 4
  %bInSuspend.i = getelementptr inbounds %struct.dvobj_priv, ptr %92, i32 0, i32 22, i32 41
  %93 = ptrtoint ptr %bInSuspend.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bInSuspend.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool1.not.i = icmp eq i8 %94, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %unlock.rtw_indicate_scan_done.exit_crit_edge

unlock.rtw_indicate_scan_done.exit_crit_edge:     ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_indicate_scan_done.exit

land.lhs.true.i:                                  ; preds = %unlock
  %95 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %fw_state.i, align 4
  %and.i.i193 = and i32 %96, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i193)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i193, 0
  br i1 %tobool.not.i.not.i, label %if.then.i194, label %land.lhs.true.i.rtw_indicate_scan_done.exit_crit_edge

land.lhs.true.i.rtw_indicate_scan_done.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_indicate_scan_done.exit

if.then.i194:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @rtw_set_ips_deny(ptr noundef %adapter, i32 noundef 0) #21
  %dynamic_chk_timer.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %97 = load volatile i32, ptr @jiffies, align 128
  %call.i.i = tail call i32 @mod_timer(ptr noundef %dynamic_chk_timer.i, i32 noundef %97) #21
  br label %rtw_indicate_scan_done.exit

rtw_indicate_scan_done.exit:                      ; preds = %if.then.i194, %land.lhs.true.i.rtw_indicate_scan_done.exit_crit_edge, %unlock.rtw_indicate_scan_done.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_select_and_join_from_scanned_queue(ptr noundef %pmlmepriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_hdl = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 11
  %0 = ptrtoint ptr %nic_hdl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_hdl, align 4
  %lock = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 15, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #21
  %roam_network = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 5
  %2 = ptrtoint ptr %roam_network to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %roam_network, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %4 = ptrtoint ptr %roam_network to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %roam_network, align 4
  br label %candidate_exist

if.end:                                           ; preds = %entry
  %scanned_queue = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 15
  %pscanned = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 13
  %5 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %storemerge46 = load ptr, ptr %scanned_queue, align 4
  %6 = ptrtoint ptr %pscanned to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %storemerge46, ptr %pscanned, align 4
  %cmp.i.not47 = icmp eq ptr %storemerge46, %scanned_queue
  br i1 %cmp.i.not47, label %if.end.exit_crit_edge, label %for.body.lr.ph

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %pmlmepriv, i32 -24
  %assoc_by_bssid.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 24
  %assoc_bssid.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 19
  %ssid.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 18, i32 1
  %assoc_ssid.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 18
  %to_roam.i.i = getelementptr i8, ptr %pmlmepriv, i32 50
  %roam_scanr_exp_ms.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 9
  %ssid1.i.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 20, i32 6, i32 3
  %ssid6.i.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 20, i32 6, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %rtw_check_join_candidate.exit.for.body_crit_edge, %for.body.lr.ph
  %storemerge52 = phi ptr [ %storemerge46, %for.body.lr.ph ], [ %storemerge, %rtw_check_join_candidate.exit.for.body_crit_edge ]
  %candidate.048 = phi ptr [ null, %for.body.lr.ph ], [ %candidate.1, %rtw_check_join_candidate.exit.for.body_crit_edge ]
  %7 = ptrtoint ptr %assoc_by_bssid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %assoc_by_bssid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %for.body.if.end4.i_crit_edge, label %if.then.i

for.body.if.end4.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end4.i

if.then.i:                                        ; preds = %for.body
  %mac_address.i = getelementptr inbounds %struct.wlan_network, ptr %storemerge52, i32 0, i32 6, i32 1
  %bcmp1.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address.i, ptr noundef dereferenceable(6) %assoc_bssid.i, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1.i)
  %tobool2.not.i = icmp eq i32 %bcmp1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then.i.rtw_check_join_candidate.exit_crit_edge

if.then.i.rtw_check_join_candidate.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_check_join_candidate.exit

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %for.body.if.end4.i_crit_edge
  %9 = ptrtoint ptr %ssid.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ssid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not.i = icmp eq i8 %10, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end28.i_crit_edge, label %land.lhs.true.i

if.end4.i.if.end28.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end28.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %11 = ptrtoint ptr %assoc_ssid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %assoc_ssid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not.i = icmp eq i32 %12, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.if.end28.i_crit_edge, label %if.then8.i

land.lhs.true.i.if.end28.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end28.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  %ssid10.i = getelementptr inbounds %struct.wlan_network, ptr %storemerge52, i32 0, i32 6, i32 3
  %13 = ptrtoint ptr %ssid10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ssid10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp.not.i = icmp eq i32 %14, %12
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then8.i.rtw_check_join_candidate.exit_crit_edge

if.then8.i.rtw_check_join_candidate.exit_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_check_join_candidate.exit

lor.lhs.false.i:                                  ; preds = %if.then8.i
  %ssid17.i = getelementptr inbounds %struct.wlan_network, ptr %storemerge52, i32 0, i32 6, i32 3, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr %ssid17.i, ptr %ssid.i, i32 %12) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool25.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool25.not.i, label %lor.lhs.false.i.if.end28.i_crit_edge, label %lor.lhs.false.i.rtw_check_join_candidate.exit_crit_edge

lor.lhs.false.i.rtw_check_join_candidate.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_check_join_candidate.exit

lor.lhs.false.i.if.end28.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end28.i

if.end28.i:                                       ; preds = %lor.lhs.false.i.if.end28.i_crit_edge, %land.lhs.true.i.if.end28.i_crit_edge, %if.end4.i.if.end28.i_crit_edge
  %call29.i = tail call i32 @rtw_is_desired_network(ptr noundef %add.ptr.i, ptr noundef %storemerge52) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp eq i32 %call29.i, 0
  br i1 %cmp30.i, label %if.end28.i.rtw_check_join_candidate.exit_crit_edge, label %if.end33.i

if.end28.i.rtw_check_join_candidate.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_check_join_candidate.exit

if.end33.i:                                       ; preds = %if.end28.i
  %15 = ptrtoint ptr %to_roam.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %to_roam.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp36.not.i = icmp eq i8 %16, 0
  br i1 %cmp36.not.i, label %if.end33.i.if.end50.i_crit_edge, label %if.then38.i

if.end33.i.if.end50.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end50.i

if.then38.i:                                      ; preds = %if.end33.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %last_scanned.i = getelementptr inbounds %struct.wlan_network, ptr %storemerge52, i32 0, i32 3
  %18 = ptrtoint ptr %last_scanned.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_scanned.i, align 4
  %sub.i = sub i32 %17, %19
  %call39.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i) #21
  %20 = ptrtoint ptr %roam_scanr_exp_ms.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %roam_scanr_exp_ms.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call39.i, i32 %21)
  %cmp40.not.i = icmp ult i32 %call39.i, %21
  br i1 %cmp40.not.i, label %lor.lhs.false42.i, label %if.then38.i.rtw_check_join_candidate.exit_crit_edge

if.then38.i.rtw_check_join_candidate.exit_crit_edge: ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_check_join_candidate.exit

lor.lhs.false42.i:                                ; preds = %if.then38.i
  %ssid.i.i = getelementptr inbounds %struct.wlan_network, ptr %storemerge52, i32 0, i32 6, i32 3
  %22 = ptrtoint ptr %ssid.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %ssid.i.i, align 1
  %24 = ptrtoint ptr %ssid1.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %ssid1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.i.i = icmp eq i32 %23, %25
  br i1 %cmp.i.i, label %is_same_ess.exit.i, label %lor.lhs.false42.i.rtw_check_join_candidate.exit_crit_edge

lor.lhs.false42.i.rtw_check_join_candidate.exit_crit_edge: ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_check_join_candidate.exit

is_same_ess.exit.i:                               ; preds = %lor.lhs.false42.i
  %ssid4.i.i = getelementptr inbounds %struct.wlan_network, ptr %storemerge52, i32 0, i32 6, i32 3, i32 1
  %bcmp.i.i = tail call i32 @bcmp(ptr %ssid4.i.i, ptr %ssid6.i.i, i32 %23) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.not.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.not.i, label %is_same_ess.exit.i.if.end50.i_crit_edge, label %is_same_ess.exit.i.rtw_check_join_candidate.exit_crit_edge

is_same_ess.exit.i.rtw_check_join_candidate.exit_crit_edge: ; preds = %is_same_ess.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_check_join_candidate.exit

is_same_ess.exit.i.if.end50.i_crit_edge:          ; preds = %is_same_ess.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end50.i

if.end50.i:                                       ; preds = %is_same_ess.exit.i.if.end50.i_crit_edge, %if.end33.i.if.end50.i_crit_edge
  %tobool51.not.i = icmp eq ptr %candidate.048, null
  br i1 %tobool51.not.i, label %if.end50.i.if.then58.i_crit_edge, label %lor.lhs.false52.i

if.end50.i.if.then58.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then58.i

lor.lhs.false52.i:                                ; preds = %if.end50.i
  %rssi.i = getelementptr inbounds %struct.wlan_network, ptr %candidate.048, i32 0, i32 6, i32 5
  %26 = ptrtoint ptr %rssi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rssi.i, align 4
  %rssi55.i = getelementptr inbounds %struct.wlan_network, ptr %storemerge52, i32 0, i32 6, i32 5
  %28 = ptrtoint ptr %rssi55.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rssi55.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp56.i = icmp slt i32 %27, %29
  br i1 %cmp56.i, label %lor.lhs.false52.i.if.then58.i_crit_edge, label %lor.lhs.false52.i.rtw_check_join_candidate.exit_crit_edge

lor.lhs.false52.i.rtw_check_join_candidate.exit_crit_edge: ; preds = %lor.lhs.false52.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_check_join_candidate.exit

lor.lhs.false52.i.if.then58.i_crit_edge:          ; preds = %lor.lhs.false52.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then58.i

if.then58.i:                                      ; preds = %lor.lhs.false52.i.if.then58.i_crit_edge, %if.end50.i.if.then58.i_crit_edge
  br label %rtw_check_join_candidate.exit

rtw_check_join_candidate.exit:                    ; preds = %if.then58.i, %lor.lhs.false52.i.rtw_check_join_candidate.exit_crit_edge, %is_same_ess.exit.i.rtw_check_join_candidate.exit_crit_edge, %lor.lhs.false42.i.rtw_check_join_candidate.exit_crit_edge, %if.then38.i.rtw_check_join_candidate.exit_crit_edge, %if.end28.i.rtw_check_join_candidate.exit_crit_edge, %lor.lhs.false.i.rtw_check_join_candidate.exit_crit_edge, %if.then8.i.rtw_check_join_candidate.exit_crit_edge, %if.then.i.rtw_check_join_candidate.exit_crit_edge
  %candidate.1 = phi ptr [ %candidate.048, %if.end28.i.rtw_check_join_candidate.exit_crit_edge ], [ %storemerge52, %if.then58.i ], [ %candidate.048, %lor.lhs.false52.i.rtw_check_join_candidate.exit_crit_edge ], [ %candidate.048, %is_same_ess.exit.i.rtw_check_join_candidate.exit_crit_edge ], [ %candidate.048, %lor.lhs.false42.i.rtw_check_join_candidate.exit_crit_edge ], [ %candidate.048, %if.then38.i.rtw_check_join_candidate.exit_crit_edge ], [ %candidate.048, %lor.lhs.false.i.rtw_check_join_candidate.exit_crit_edge ], [ %candidate.048, %if.then8.i.rtw_check_join_candidate.exit_crit_edge ], [ %candidate.048, %if.then.i.rtw_check_join_candidate.exit_crit_edge ]
  %30 = ptrtoint ptr %pscanned to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pscanned, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %storemerge = load ptr, ptr %31, align 4
  store ptr %storemerge, ptr %pscanned, align 4
  %cmp.i.not = icmp eq ptr %storemerge, %scanned_queue
  br i1 %cmp.i.not, label %for.end, label %rtw_check_join_candidate.exit.for.body_crit_edge

rtw_check_join_candidate.exit.for.body_crit_edge: ; preds = %rtw_check_join_candidate.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.end:                                          ; preds = %rtw_check_join_candidate.exit
  %tobool12.not = icmp eq ptr %candidate.1, null
  br i1 %tobool12.not, label %for.end.exit_crit_edge, label %for.end.candidate_exist_crit_edge

for.end.candidate_exist_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %candidate_exist

for.end.exit_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

candidate_exist:                                  ; preds = %for.end.candidate_exist_crit_edge, %if.then
  %candidate.2 = phi ptr [ %candidate.1, %for.end.candidate_exist_crit_edge ], [ %3, %if.then ]
  %fw_state.i = getelementptr inbounds %struct.mlme_priv, ptr %pmlmepriv, i32 0, i32 1
  %33 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i39.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i39.not, label %candidate_exist.if.end17_crit_edge, label %if.then15

candidate_exist.if.end17_crit_edge:               ; preds = %candidate_exist
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end17

if.then15:                                        ; preds = %candidate_exist
  %call16 = tail call zeroext i8 @rtw_disassoc_cmd(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #21
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %36, -385
  store i32 %and.i.i, ptr %fw_state.i.i, align 4
  %to_roam.i.i40 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 4
  %37 = ptrtoint ptr %to_roam.i.i40 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %to_roam.i.i40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp.not.i41 = icmp eq i8 %38, 0
  br i1 %cmp.not.i41, label %if.then8.i42, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #23
  %and.i21.i = and i32 %36, -386
  %39 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and.i21.i, ptr %fw_state.i.i, align 4
  br label %rtw_indicate_disconnect.exit

if.then8.i42:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @rtw_os_indicate_disconnect(ptr noundef %1) #21
  tail call void @rtw_set_ips_deny(ptr noundef %1, i32 noundef 3000) #21
  %40 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fw_state.i.i, align 4
  %and.i26.i = and i32 %41, -2
  store i32 %and.i26.i, ptr %fw_state.i.i, align 4
  %set_scan_deny.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 29
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %set_scan_deny.i.i, i32 noundef 4) #21
  %42 = ptrtoint ptr %set_scan_deny.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 0, ptr %set_scan_deny.i.i, align 4
  br label %rtw_indicate_disconnect.exit

rtw_indicate_disconnect.exit:                     ; preds = %if.then8.i42, %if.end.thread.i
  %call10.i = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 1) #21
  tail call void @rtw_free_assoc_resources(ptr noundef %1, i32 noundef 0)
  br label %if.end17

if.end17:                                         ; preds = %rtw_indicate_disconnect.exit, %candidate_exist.if.end17_crit_edge
  %43 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fw_state.i, align 4
  %or.i = or i32 %44, 128
  store i32 %or.i, ptr %fw_state.i, align 4
  %call18 = tail call zeroext i8 @rtw_joinbss_cmd(ptr noundef %1, ptr noundef nonnull %candidate.2) #21
  %conv = zext i8 %call18 to i32
  br label %exit

exit:                                             ; preds = %if.end17, %for.end.exit_crit_edge, %if.end.exit_crit_edge
  %ret.0 = phi i32 [ %conv, %if.end17 ], [ 0, %for.end.exit_crit_edge ], [ 0, %if.end.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #21
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_update_registrypriv_dev_network(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp ne i32 %1, 0
  %cond = zext i1 %cmp.not to i32
  %privacy = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 4
  %2 = ptrtoint ptr %privacy to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %cond, ptr %privacy, align 1
  %rssi = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 5
  %3 = ptrtoint ptr %rssi to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 0, ptr %rssi, align 1
  %wireless_mode = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 7
  %4 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wireless_mode, align 2
  %switch.tableidx = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %switch.tableidx)
  %6 = icmp ult i8 %switch.tableidx, 11
  br i1 %6, label %switch.hole_check, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 1671, %switch.maskindex
  %7 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %switch.lobit.not = icmp eq i16 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #23
  %8 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.rtw_update_registrypriv_dev_network, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %network_type_in_use3 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 6
  %10 = ptrtoint ptr %network_type_in_use3 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %switch.load, ptr %network_type_in_use3, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %channel = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 6
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %channel, align 1
  %conv4 = zext i8 %12 to i32
  %ds_config = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 7, i32 3
  %13 = ptrtoint ptr %ds_config to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %conv4, ptr %ds_config, align 1
  %infrastructure_mode = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 8
  %14 = ptrtoint ptr %infrastructure_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %infrastructure_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp5 = icmp eq i32 %15, 0
  br i1 %cmp5, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  %atim_window = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 7, i32 2
  %16 = ptrtoint ptr %atim_window to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %atim_window, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %dev_network = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36
  %registrypriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14
  %infrastructure_mode10 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 8
  %17 = ptrtoint ptr %infrastructure_mode10 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %15, ptr %infrastructure_mode10, align 1
  %call = tail call i32 @rtw_generate_ie(ptr noundef %registrypriv) #21
  %ie_length = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 11
  %18 = ptrtoint ptr %ie_length to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %call, ptr %ie_length, align 1
  %add.i = add i32 %call, 104
  %19 = ptrtoint ptr %dev_network to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %add.i, ptr %dev_network, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_createbss_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_indicate_connect(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
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
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %or.i = or i32 %2, 1
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %fw_state.i, align 4
  tail call void @rtw_os_indicate_connect(ptr noundef %padapter) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %to_join, align 1
  %to_roam3.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 4
  %5 = ptrtoint ptr %to_roam3.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %to_roam3.i, align 2
  %set_scan_deny.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 29
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %set_scan_deny.i, i32 noundef 4) #21
  %6 = ptrtoint ptr %set_scan_deny.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %set_scan_deny.i, align 4
  %set_scan_deny_timer.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %7, 300
  %call.i.i = tail call i32 @mod_timer(ptr noundef %set_scan_deny_timer.i, i32 noundef %add.i.i) #21
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtw_to_roam(ptr nocapture noundef readonly %adapter) local_unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  %to_roam = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %to_roam to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %to_roam, align 2
  ret i8 %1
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtw_dec_to_roam(ptr nocapture noundef %adapter) local_unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  %to_roam = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %to_roam to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %to_roam, align 2
  %dec = add i8 %1, -1
  store i8 %dec, ptr %to_roam, align 2
  ret i8 %dec
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_sitesurvey_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rtw_set_to_roam(ptr nocapture noundef writeonly %adapter, i8 noundef zeroext %to_roam) local_unnamed_addr #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %to_roam)
  %cmp = icmp eq i8 %to_roam, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %to_join = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %to_join to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %to_join, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %to_roam3 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %1 = ptrtoint ptr %to_roam3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %to_roam, ptr %to_roam3, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_assoc_resources(ptr noundef %adapter, i32 noundef %lock_scanned_queue) local_unnamed_addr #0 align 64 {
entry:
  %zero_addr.i.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %3, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %stapriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %mac_address = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %call1 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %mac_address) #21
  %call2 = tail call i32 @rtw_free_stainfo(ptr noundef %adapter, ptr noundef %call1) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i, align 4
  %and.i26 = and i32 %5, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %tobool.not.i27.not = icmp eq i32 %and.i26, 0
  br i1 %tobool.not.i27.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @rtw_free_all_stainfo(ptr noundef %adapter) #21
  %call7 = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %adapter) #21
  %call8 = tail call i32 @rtw_free_stainfo(ptr noundef %adapter, ptr noundef %call7) #21
  %call9 = tail call i32 @rtw_init_bcmc_stainfo(ptr noundef %adapter) #21
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %scanned_queue.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15
  %mac_address.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i.i.i) #21
  %6 = call ptr @memset(ptr %zero_addr.i.i.i, i32 0, i32 6)
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i.i.i, ptr noundef dereferenceable(6) %mac_address.i, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end10.rtw_find_network.exit.thread.i_crit_edge, label %if.end10.for.cond.i.i.i_crit_edge

if.end10.for.cond.i.i.i_crit_edge:                ; preds = %if.end10
  br label %for.cond.i.i.i

if.end10.rtw_find_network.exit.thread.i_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_find_network.exit.thread.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end10.for.cond.i.i.i_crit_edge
  %plist.0.in.i.i.i = phi ptr [ %plist.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ %scanned_queue.i, %if.end10.for.cond.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %plist.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %plist.0.i.i.i = load ptr, ptr %plist.0.in.i.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %plist.0.i.i.i, %scanned_queue.i
  br i1 %cmp.i.i.i.i, label %for.cond.i.i.i.rtw_find_network.exit.thread.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.rtw_find_network.exit.thread.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_find_network.exit.thread.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %mac_address.i.i.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i.i, i32 0, i32 6, i32 1
  %bcmp19.i.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address.i, ptr noundef dereferenceable(6) %mac_address.i.i.i, i32 6) #26
  %tobool6.not.i.i.i = icmp eq i32 %bcmp19.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %rtw_find_network.exit.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i.i.i

rtw_find_network.exit.thread.i:                   ; preds = %for.cond.i.i.i.rtw_find_network.exit.thread.i_crit_edge, %if.end10.rtw_find_network.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i.i) #21
  br label %if.end.i

rtw_find_network.exit.i:                          ; preds = %for.body.i.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i.i) #21
  %tobool.not.i29 = icmp eq ptr %plist.0.i.i.i, null
  br i1 %tobool.not.i29, label %rtw_find_network.exit.i.if.end.i_crit_edge, label %if.then.i

rtw_find_network.exit.i.if.end.i_crit_edge:       ; preds = %rtw_find_network.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

if.then.i:                                        ; preds = %rtw_find_network.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  %fixed.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %fixed.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %fixed.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %rtw_find_network.exit.i.if.end.i_crit_edge, %rtw_find_network.exit.thread.i
  %tobool.not16.i = phi i1 [ true, %rtw_find_network.exit.thread.i ], [ false, %if.then.i ], [ true, %rtw_find_network.exit.i.if.end.i_crit_edge ]
  %pnetwork.2.i.i14.i = phi ptr [ null, %rtw_find_network.exit.thread.i ], [ %plist.0.i.i.i, %if.then.i ], [ null, %rtw_find_network.exit.i.if.end.i_crit_edge ]
  %9 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_state.i, align 4
  %11 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i = icmp eq i32 %11, 0
  br i1 %tobool2.not.i, label %if.end.i.find_network.exit_crit_edge, label %land.lhs.true.i

if.end.i.find_network.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %find_network.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %asoc_sta_count.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11, i32 5
  %12 = ptrtoint ptr %asoc_sta_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %asoc_sta_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp eq i32 %13, 1
  br i1 %cmp.i, label %if.then3.i, label %land.lhs.true.i.find_network.exit_crit_edge

land.lhs.true.i.find_network.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %find_network.exit

if.then3.i:                                       ; preds = %land.lhs.true.i
  %free_bss_pool.i.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 14
  br i1 %tobool.not16.i, label %if.then3.i.rtw_free_network_nolock.exit.i_crit_edge, label %if.end.i.i.i

if.then3.i.rtw_free_network_nolock.exit.i_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_free_network_nolock.exit.i

if.end.i.i.i:                                     ; preds = %if.then3.i
  %fixed.i.i.i = getelementptr inbounds %struct.wlan_network, ptr %pnetwork.2.i.i14.i, i32 0, i32 2
  %14 = ptrtoint ptr %fixed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fixed.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool1.not.i.i.i, label %if.end3.i.i.i, label %if.end.i.i.i.rtw_free_network_nolock.exit.i_crit_edge

if.end.i.i.i.rtw_free_network_nolock.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_free_network_nolock.exit.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pnetwork.2.i.i14.i) #21
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end3.i.i.i.list_del_init.exit.i.i.i_crit_edge

if.end3.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %pnetwork.2.i.i14.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %pnetwork.2.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pnetwork.2.i.i14.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %if.end3.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %22 = ptrtoint ptr %pnetwork.2.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %pnetwork.2.i.i14.i, ptr %pnetwork.2.i.i14.i, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %pnetwork.2.i.i14.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pnetwork.2.i.i14.i, ptr %prev.i3.i.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 14, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i9.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %pnetwork.2.i.i14.i, ptr noundef %25, ptr noundef %free_bss_pool.i.i.i) #21
  br i1 %call.i.i9.i.i.i, label %if.end.i.i10.i.i.i, label %list_del_init.exit.i.i.i.list_add_tail.exit.i.i.i_crit_edge

list_del_init.exit.i.i.i.list_add_tail.exit.i.i.i_crit_edge: ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_add_tail.exit.i.i.i

if.end.i.i10.i.i.i:                               ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %26 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %pnetwork.2.i.i14.i, ptr %prev.i.i.i.i, align 4
  %27 = ptrtoint ptr %pnetwork.2.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %free_bss_pool.i.i.i, ptr %pnetwork.2.i.i14.i, align 4
  %28 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev.i3.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %pnetwork.2.i.i14.i, ptr %25, align 4
  br label %list_add_tail.exit.i.i.i

list_add_tail.exit.i.i.i:                         ; preds = %if.end.i.i10.i.i.i, %list_del_init.exit.i.i.i.list_add_tail.exit.i.i.i_crit_edge
  %num_of_scanned.i.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 17
  %30 = ptrtoint ptr %num_of_scanned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_of_scanned.i.i.i, align 4
  %dec.i.i.i = add i32 %31, -1
  store i32 %dec.i.i.i, ptr %num_of_scanned.i.i.i, align 4
  br label %rtw_free_network_nolock.exit.i

rtw_free_network_nolock.exit.i:                   ; preds = %list_add_tail.exit.i.i.i, %if.end.i.i.i.rtw_free_network_nolock.exit.i_crit_edge, %if.then3.i.rtw_free_network_nolock.exit.i_crit_edge
  tail call void @rtw_cfg80211_unlink_bss(ptr noundef %adapter, ptr noundef %pnetwork.2.i.i14.i) #21
  br label %find_network.exit

find_network.exit:                                ; preds = %rtw_free_network_nolock.exit.i, %land.lhs.true.i.find_network.exit_crit_edge, %if.end.i.find_network.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock_scanned_queue)
  %tobool11.not = icmp eq i32 %lock_scanned_queue, 0
  br i1 %tobool11.not, label %find_network.exit.if.end13_crit_edge, label %if.then12

find_network.exit.if.end13_crit_edge:             ; preds = %find_network.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end13

if.then12:                                        ; preds = %find_network.exit
  call void @__sanitizer_cov_trace_pc() #23
  %key_mask = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 5
  %32 = ptrtoint ptr %key_mask to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %key_mask, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %find_network.exit.if.end13_crit_edge
  %dbg_rx_ampdu_drop_count.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2, i32 31
  %33 = call ptr @memset(ptr %dbg_rx_ampdu_drop_count.i, i32 0, i32 40)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_indicate_disconnect(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %1, -385
  store i32 %and.i, ptr %fw_state.i, align 4
  %to_roam.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %to_roam.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %to_roam.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.then8, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %and.i21 = and i32 %1, -386
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.i21, ptr %fw_state.i, align 4
  br label %if.end9

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @rtw_os_indicate_disconnect(ptr noundef %padapter) #21
  tail call void @rtw_set_ips_deny(ptr noundef %padapter, i32 noundef 3000) #21
  %5 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_state.i, align 4
  %and.i26 = and i32 %6, -2
  store i32 %and.i26, ptr %fw_state.i, align 4
  %set_scan_deny.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 29
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %set_scan_deny.i, i32 noundef 4) #21
  %7 = ptrtoint ptr %set_scan_deny.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %set_scan_deny.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.thread
  %call10 = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %padapter, i8 noundef zeroext 3, i8 noundef zeroext 1) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_select_roaming_candidate(ptr noundef %mlme) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_network_scanned = getelementptr inbounds %struct.mlme_priv, ptr %mlme, i32 0, i32 21
  %0 = ptrtoint ptr %cur_network_scanned to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_network_scanned, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1749, i32 noundef 9, ptr noundef null) #21
  br label %cleanup

if.end17:                                         ; preds = %entry
  %scanned_queue = getelementptr inbounds %struct.mlme_priv, ptr %mlme, i32 0, i32 15
  %lock = getelementptr inbounds %struct.mlme_priv, ptr %mlme, i32 0, i32 15, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #21
  %pscanned = getelementptr inbounds %struct.mlme_priv, ptr %mlme, i32 0, i32 13
  %2 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %storemerge64 = load ptr, ptr %scanned_queue, align 4
  %3 = ptrtoint ptr %pscanned to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %storemerge64, ptr %pscanned, align 4
  %cmp.i.not65 = icmp eq ptr %storemerge64, %scanned_queue
  br i1 %cmp.i.not65, label %if.end17.exit_crit_edge, label %for.body.lr.ph

if.end17.exit_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

for.body.lr.ph:                                   ; preds = %if.end17
  %ssid1.i.i = getelementptr inbounds %struct.mlme_priv, ptr %mlme, i32 0, i32 20, i32 6, i32 3
  %ssid6.i.i = getelementptr inbounds %struct.mlme_priv, ptr %mlme, i32 0, i32 20, i32 6, i32 3, i32 1
  %add.ptr.i = getelementptr i8, ptr %mlme, i32 -24
  %roam_tgt_addr.i = getelementptr inbounds %struct.mlme_priv, ptr %mlme, i32 0, i32 10
  %arrayidx2.i.i = getelementptr %struct.mlme_priv, ptr %mlme, i32 0, i32 10, i32 1
  %arrayidx7.i.i = getelementptr %struct.mlme_priv, ptr %mlme, i32 0, i32 10, i32 2
  %arrayidx12.i.i = getelementptr %struct.mlme_priv, ptr %mlme, i32 0, i32 10, i32 3
  %arrayidx17.i.i = getelementptr %struct.mlme_priv, ptr %mlme, i32 0, i32 10, i32 4
  %arrayidx21.i.i = getelementptr %struct.mlme_priv, ptr %mlme, i32 0, i32 10, i32 5
  %roam_scanr_exp_ms.i = getelementptr inbounds %struct.mlme_priv, ptr %mlme, i32 0, i32 9
  %roam_rssi_diff_th.i = getelementptr inbounds %struct.mlme_priv, ptr %mlme, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %rtw_check_roaming_candidate.exit.for.body_crit_edge, %for.body.lr.ph
  %storemerge67 = phi ptr [ %storemerge64, %for.body.lr.ph ], [ %storemerge, %rtw_check_roaming_candidate.exit.for.body_crit_edge ]
  %candidate.066 = phi ptr [ null, %for.body.lr.ph ], [ %candidate.1, %rtw_check_roaming_candidate.exit.for.body_crit_edge ]
  %ssid.i.i = getelementptr inbounds %struct.wlan_network, ptr %storemerge67, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %ssid.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %ssid.i.i, align 1
  %6 = ptrtoint ptr %ssid1.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ssid1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i.i = icmp eq i32 %5, %7
  br i1 %cmp.i.i, label %is_same_ess.exit.i, label %for.body.rtw_check_roaming_candidate.exit_crit_edge

for.body.rtw_check_roaming_candidate.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_check_roaming_candidate.exit

is_same_ess.exit.i:                               ; preds = %for.body
  %ssid4.i.i = getelementptr inbounds %struct.wlan_network, ptr %storemerge67, i32 0, i32 6, i32 3, i32 1
  %bcmp.i.i = tail call i32 @bcmp(ptr %ssid4.i.i, ptr %ssid6.i.i, i32 %5) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.not.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.end.i, label %is_same_ess.exit.i.rtw_check_roaming_candidate.exit_crit_edge

is_same_ess.exit.i.rtw_check_roaming_candidate.exit_crit_edge: ; preds = %is_same_ess.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_check_roaming_candidate.exit

if.end.i:                                         ; preds = %is_same_ess.exit.i
  %call2.i = tail call i32 @rtw_is_desired_network(ptr noundef %add.ptr.i, ptr noundef %storemerge67) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.rtw_check_roaming_candidate.exit_crit_edge, label %if.end5.i

if.end.i.rtw_check_roaming_candidate.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_check_roaming_candidate.exit

if.end5.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %roam_tgt_addr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %roam_tgt_addr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i1.i = icmp eq i8 %9, 0
  br i1 %cmp.i1.i, label %land.lhs.true.i.i, label %if.end5.i.if.then7.i_crit_edge

if.end5.i.if.then7.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then7.i

land.lhs.true.i.i:                                ; preds = %if.end5.i
  %10 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp4.i.i = icmp eq i8 %11, 0
  br i1 %cmp4.i.i, label %land.lhs.true6.i.i, label %land.lhs.true.i.i.if.then7.i_crit_edge

land.lhs.true.i.i.if.then7.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then7.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %12 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp9.i.i = icmp eq i8 %13, 0
  br i1 %cmp9.i.i, label %land.lhs.true11.i.i, label %land.lhs.true6.i.i.if.then7.i_crit_edge

land.lhs.true6.i.i.if.then7.i_crit_edge:          ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then7.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true6.i.i
  %14 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp14.i.i = icmp eq i8 %15, 0
  br i1 %cmp14.i.i, label %land.lhs.true16.i.i, label %land.lhs.true11.i.i.if.then7.i_crit_edge

land.lhs.true11.i.i.if.then7.i_crit_edge:         ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then7.i

land.lhs.true16.i.i:                              ; preds = %land.lhs.true11.i.i
  %16 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx17.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp19.i.i = icmp eq i8 %17, 0
  br i1 %cmp19.i.i, label %is_zero_mac_addr.exit.i, label %land.lhs.true16.i.i.if.then7.i_crit_edge

land.lhs.true16.i.i.if.then7.i_crit_edge:         ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then7.i

is_zero_mac_addr.exit.i:                          ; preds = %land.lhs.true16.i.i
  %18 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx21.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp23.i.not.i = icmp eq i8 %19, 0
  br i1 %cmp23.i.not.i, label %if.end15.i, label %is_zero_mac_addr.exit.i.if.then7.i_crit_edge

is_zero_mac_addr.exit.i.if.then7.i_crit_edge:     ; preds = %is_zero_mac_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then7.i

if.then7.i:                                       ; preds = %is_zero_mac_addr.exit.i.if.then7.i_crit_edge, %land.lhs.true16.i.i.if.then7.i_crit_edge, %land.lhs.true11.i.i.if.then7.i_crit_edge, %land.lhs.true6.i.i.if.then7.i_crit_edge, %land.lhs.true.i.i.if.then7.i_crit_edge, %if.end5.i.if.then7.i_crit_edge
  %mac_address.i = getelementptr inbounds %struct.wlan_network, ptr %storemerge67, i32 0, i32 6, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %roam_tgt_addr.i, ptr noundef dereferenceable(6) %mac_address.i, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool13.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool13.not.i, label %if.then7.i.update.i_crit_edge, label %if.then7.i.rtw_check_roaming_candidate.exit_crit_edge

if.then7.i.rtw_check_roaming_candidate.exit_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_check_roaming_candidate.exit

if.then7.i.update.i_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %update.i

if.end15.i:                                       ; preds = %is_zero_mac_addr.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %last_scanned.i = getelementptr inbounds %struct.wlan_network, ptr %storemerge67, i32 0, i32 3
  %21 = ptrtoint ptr %last_scanned.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %last_scanned.i, align 4
  %sub.i = sub i32 %20, %22
  %call16.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i) #21
  %23 = ptrtoint ptr %roam_scanr_exp_ms.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %roam_scanr_exp_ms.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i, i32 %24)
  %cmp17.not.i = icmp ult i32 %call16.i, %24
  br i1 %cmp17.not.i, label %if.end19.i, label %if.end15.i.rtw_check_roaming_candidate.exit_crit_edge

if.end15.i.rtw_check_roaming_candidate.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_check_roaming_candidate.exit

if.end19.i:                                       ; preds = %if.end15.i
  %rssi.i = getelementptr inbounds %struct.wlan_network, ptr %storemerge67, i32 0, i32 6, i32 5
  %25 = ptrtoint ptr %rssi.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rssi.i, align 4
  %27 = ptrtoint ptr %cur_network_scanned to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cur_network_scanned, align 4
  %rssi22.i = getelementptr inbounds %struct.wlan_network, ptr %28, i32 0, i32 6, i32 5
  %29 = ptrtoint ptr %rssi22.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rssi22.i, align 4
  %sub23.i = sub i32 %26, %30
  %31 = ptrtoint ptr %roam_rssi_diff_th.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %roam_rssi_diff_th.i, align 1
  %conv.i61 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23.i, i32 %conv.i61)
  %cmp24.i = icmp slt i32 %sub23.i, %conv.i61
  br i1 %cmp24.i, label %if.end19.i.rtw_check_roaming_candidate.exit_crit_edge, label %if.end27.i

if.end19.i.rtw_check_roaming_candidate.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_check_roaming_candidate.exit

if.end27.i:                                       ; preds = %if.end19.i
  %tobool28.not.i = icmp eq ptr %candidate.066, null
  br i1 %tobool28.not.i, label %if.end27.i.update.i_crit_edge, label %land.lhs.true.i

if.end27.i.update.i_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %update.i

land.lhs.true.i:                                  ; preds = %if.end27.i
  %rssi30.i = getelementptr inbounds %struct.wlan_network, ptr %candidate.066, i32 0, i32 6, i32 5
  %33 = ptrtoint ptr %rssi30.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rssi30.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %26)
  %cmp33.not.i = icmp slt i32 %34, %26
  br i1 %cmp33.not.i, label %land.lhs.true.i.update.i_crit_edge, label %land.lhs.true.i.rtw_check_roaming_candidate.exit_crit_edge

land.lhs.true.i.rtw_check_roaming_candidate.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_check_roaming_candidate.exit

land.lhs.true.i.update.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %update.i

update.i:                                         ; preds = %land.lhs.true.i.update.i_crit_edge, %if.end27.i.update.i_crit_edge, %if.then7.i.update.i_crit_edge
  br label %rtw_check_roaming_candidate.exit

rtw_check_roaming_candidate.exit:                 ; preds = %update.i, %land.lhs.true.i.rtw_check_roaming_candidate.exit_crit_edge, %if.end19.i.rtw_check_roaming_candidate.exit_crit_edge, %if.end15.i.rtw_check_roaming_candidate.exit_crit_edge, %if.then7.i.rtw_check_roaming_candidate.exit_crit_edge, %if.end.i.rtw_check_roaming_candidate.exit_crit_edge, %is_same_ess.exit.i.rtw_check_roaming_candidate.exit_crit_edge, %for.body.rtw_check_roaming_candidate.exit_crit_edge
  %candidate.1 = phi ptr [ %candidate.066, %if.end.i.rtw_check_roaming_candidate.exit_crit_edge ], [ %candidate.066, %if.end19.i.rtw_check_roaming_candidate.exit_crit_edge ], [ %storemerge67, %update.i ], [ %candidate.066, %land.lhs.true.i.rtw_check_roaming_candidate.exit_crit_edge ], [ %candidate.066, %if.end15.i.rtw_check_roaming_candidate.exit_crit_edge ], [ %candidate.066, %if.then7.i.rtw_check_roaming_candidate.exit_crit_edge ], [ %candidate.066, %is_same_ess.exit.i.rtw_check_roaming_candidate.exit_crit_edge ], [ %candidate.066, %for.body.rtw_check_roaming_candidate.exit_crit_edge ]
  %35 = ptrtoint ptr %pscanned to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pscanned, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %storemerge = load ptr, ptr %36, align 4
  store ptr %storemerge, ptr %pscanned, align 4
  %cmp.i.not = icmp eq ptr %storemerge, %scanned_queue
  br i1 %cmp.i.not, label %for.end, label %rtw_check_roaming_candidate.exit.for.body_crit_edge

rtw_check_roaming_candidate.exit.for.body_crit_edge: ; preds = %rtw_check_roaming_candidate.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.end:                                          ; preds = %rtw_check_roaming_candidate.exit
  %tobool30.not = icmp eq ptr %candidate.1, null
  br i1 %tobool30.not, label %for.end.exit_crit_edge, label %if.else

for.end.exit_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.else:                                          ; preds = %for.end
  %roam_network = getelementptr inbounds %struct.mlme_priv, ptr %mlme, i32 0, i32 5
  %38 = ptrtoint ptr %roam_network to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %candidate.1, ptr %roam_network, align 4
  %mac_address = getelementptr inbounds %struct.wlan_network, ptr %candidate.1, i32 0, i32 6, i32 1
  %roam_tgt_addr = getelementptr inbounds %struct.mlme_priv, ptr %mlme, i32 0, i32 10
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address, ptr noundef dereferenceable(6) %roam_tgt_addr, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool34.not = icmp eq i32 %bcmp, 0
  br i1 %tobool34.not, label %if.then35, label %if.else.exit_crit_edge

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  %39 = call ptr @memset(ptr %roam_tgt_addr, i32 0, i32 6)
  br label %exit

exit:                                             ; preds = %if.then35, %if.else.exit_crit_edge, %for.end.exit_crit_edge, %if.end17.exit_crit_edge
  %ret.0 = phi i32 [ 0, %for.end.exit_crit_edge ], [ 1, %if.else.exit_crit_edge ], [ 1, %if.then35 ], [ 0, %if.end17.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #21
  br label %cleanup

cleanup:                                          ; preds = %exit, %do.end
  %retval.0 = phi i32 [ %ret.0, %exit ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @receive_disconnect(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_xmit_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_cfg80211_surveydone_event_callback(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_indicate_scan_done(ptr noundef %padapter, i1 noundef zeroext %aborted) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @rtw_os_indicate_scan_done(ptr noundef %padapter, i1 noundef zeroext %aborted) #21
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %bInSuspend = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 41
  %2 = ptrtoint ptr %bInSuspend to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInSuspend, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %5, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @rtw_set_ips_deny(ptr noundef %padapter, i32 noundef 0) #21
  %dynamic_chk_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @mod_timer(ptr noundef %dynamic_chk_timer, i32 noundef %6) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_dummy_event_callback(ptr nocapture noundef %adapter, ptr nocapture noundef %pbuf) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_fwdbg_event_callback(ptr nocapture noundef %adapter, ptr nocapture noundef %pbuf) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_all_stainfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_bcmc_stainfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_init_bcmc_stainfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_indicate_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_set_scan_deny(ptr noundef %adapter, i32 noundef %ms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %set_scan_deny = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %set_scan_deny, i32 noundef 4) #21
  %0 = ptrtoint ptr %set_scan_deny to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %set_scan_deny, align 4
  %set_scan_deny_timer = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %mul.i = mul i32 %ms, 100
  %div.i = udiv i32 %mul.i, 1000
  %add.i = add i32 %1, %div.i
  %call.i = tail call i32 @mod_timer(ptr noundef %set_scan_deny_timer, i32 noundef %add.i) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_indicate_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_set_ips_deny(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_indicate_scan_done(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_scan_abort(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %scan_abort = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5, i32 24
  %1 = ptrtoint ptr %scan_abort to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %scan_abort, align 4
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 21
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 22
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  %4 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not19 = icmp eq i32 %4, 0
  br i1 %tobool.not19, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %call1 = tail call i32 @jiffies_to_msecs(i32 noundef %0) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 201, i32 %call1)
  %cmp = icmp ult i32 %call1, 201
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %5 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

lor.lhs.false:                                    ; preds = %while.body
  %7 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.while.end_crit_edge

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  tail call void @msleep(i32 noundef 20) #21
  %9 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_state.i, align 4
  %11 = and i32 %10, 2048
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %land.rhs

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %lor.lhs.false.while.end_crit_edge, %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %12 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_state.i, align 4
  %14 = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %while.end.if.end7_crit_edge, label %if.then6

while.end.if.end7_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end7

if.then6:                                         ; preds = %while.end
  tail call void @rtw_os_indicate_scan_done(ptr noundef %adapter, i1 noundef zeroext true) #21
  %dvobj.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %15 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dvobj.i, align 4
  %bInSuspend.i = getelementptr inbounds %struct.dvobj_priv, ptr %16, i32 0, i32 22, i32 41
  %17 = ptrtoint ptr %bInSuspend.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bInSuspend.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i = icmp eq i8 %18, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %if.then6.if.end7_crit_edge

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end7

land.lhs.true.i:                                  ; preds = %if.then6
  %19 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_state.i, align 4
  %and.i.i = and i32 %20, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.then.i, label %land.lhs.true.i.if.end7_crit_edge

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end7

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @rtw_set_ips_deny(ptr noundef %adapter, i32 noundef 0) #21
  %dynamic_chk_timer.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %call.i.i = tail call i32 @mod_timer(ptr noundef %dynamic_chk_timer.i, i32 noundef %21) #21
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %land.lhs.true.i.if.end7_crit_edge, %if.then6.if.end7_crit_edge, %while.end.if.end7_crit_edge
  %22 = ptrtoint ptr %scan_abort to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %scan_abort, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_joinbss_event_prehandle(ptr noundef %adapter, ptr noundef %pbuf) local_unnamed_addr #0 align 64 {
entry:
  %zero_addr.i.i201 = alloca [6 x i8], align 1
  %zero_addr.i.i188 = alloca [6 x i8], align 1
  %zero_addr.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4
  %network = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6
  %mac_address = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 1
  %mac_address3 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address, ptr noundef dereferenceable(6) %mac_address3, i32 6) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  %ie_length.i = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 11
  %0 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %ie_length.i, align 1
  %add.i = add i32 %1, 104
  %2 = ptrtoint ptr %network to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add.i, ptr %network, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 872, i32 %add.i)
  %cmp = icmp ugt i32 %add.i, 872
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #21
  %TrafficTransitionCount = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 34, i32 9
  %3 = ptrtoint ptr %TrafficTransitionCount to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %TrafficTransitionCount, align 2
  %LowPowerTransitionCount = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 34, i32 10
  %4 = ptrtoint ptr %LowPowerTransitionCount to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %LowPowerTransitionCount, align 4
  %join_res = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 5
  %5 = ptrtoint ptr %join_res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %join_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp11 = icmp sgt i32 %6, 0
  br i1 %cmp11, label %if.then12, label %if.else108

if.then12:                                        ; preds = %if.end
  %scanned_queue = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15
  %lock13 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock13) #21
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_state.i, align 4
  %9 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool15.not = icmp eq i32 %9, 0
  br i1 %tobool15.not, label %if.else104, label %if.then16

if.then16:                                        ; preds = %if.then12
  %and.i185 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i185)
  %tobool18.not = icmp eq i32 %and.i185, 0
  br i1 %tobool18.not, label %if.else57, label %if.then19

if.then19:                                        ; preds = %if.then16
  br i1 %tobool.not, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then19
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i.i) #21
  %10 = call ptr @memset(ptr %zero_addr.i.i, i32 0, i32 6)
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i.i, ptr noundef dereferenceable(6) %mac_address3, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %if.then21.rtw_find_network.exit_crit_edge, label %if.then21.for.cond.i.i_crit_edge

if.then21.for.cond.i.i_crit_edge:                 ; preds = %if.then21
  br label %for.cond.i.i

if.then21.rtw_find_network.exit_crit_edge:        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_find_network.exit

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then21.for.cond.i.i_crit_edge
  %plist.0.in.i.i = phi ptr [ %plist.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %scanned_queue, %if.then21.for.cond.i.i_crit_edge ]
  %11 = ptrtoint ptr %plist.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %plist.0.i.i = load ptr, ptr %plist.0.in.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %plist.0.i.i, %scanned_queue
  br i1 %cmp.i.i.i, label %for.cond.i.i.rtw_find_network.exit_crit_edge, label %for.body.i.i

for.cond.i.i.rtw_find_network.exit_crit_edge:     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_find_network.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %mac_address.i.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i, i32 0, i32 6, i32 1
  %bcmp19.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address3, ptr noundef dereferenceable(6) %mac_address.i.i, i32 6) #26
  %tobool6.not.i.i = icmp eq i32 %bcmp19.i.i, 0
  br i1 %tobool6.not.i.i, label %for.body.i.i.rtw_find_network.exit_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i.i

for.body.i.i.rtw_find_network.exit_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_find_network.exit

rtw_find_network.exit:                            ; preds = %for.body.i.i.rtw_find_network.exit_crit_edge, %for.cond.i.i.rtw_find_network.exit_crit_edge, %if.then21.rtw_find_network.exit_crit_edge
  %pnetwork.2.i.i = phi ptr [ null, %if.then21.rtw_find_network.exit_crit_edge ], [ null, %for.cond.i.i.rtw_find_network.exit_crit_edge ], [ %plist.0.i.i, %for.body.i.i.rtw_find_network.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i) #21
  br label %if.end68

if.else:                                          ; preds = %if.then19
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i.i188) #21
  %12 = call ptr @memset(ptr %zero_addr.i.i188, i32 0, i32 6)
  %bcmp.i.i189 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i.i188, ptr noundef dereferenceable(6) %mac_address3, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i189)
  %tobool.not.i.i190 = icmp eq i32 %bcmp.i.i189, 0
  br i1 %tobool.not.i.i190, label %if.else.rtw_find_network.exit200.thread_crit_edge, label %if.else.for.cond.i.i194_crit_edge

if.else.for.cond.i.i194_crit_edge:                ; preds = %if.else
  br label %for.cond.i.i194

if.else.rtw_find_network.exit200.thread_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_find_network.exit200.thread

for.cond.i.i194:                                  ; preds = %for.body.i.i198.for.cond.i.i194_crit_edge, %if.else.for.cond.i.i194_crit_edge
  %plist.0.in.i.i191 = phi ptr [ %plist.0.i.i192, %for.body.i.i198.for.cond.i.i194_crit_edge ], [ %scanned_queue, %if.else.for.cond.i.i194_crit_edge ]
  %13 = ptrtoint ptr %plist.0.in.i.i191 to i32
  call void @__asan_load4_noabort(i32 %13)
  %plist.0.i.i192 = load ptr, ptr %plist.0.in.i.i191, align 4
  %cmp.i.i.i193 = icmp eq ptr %plist.0.i.i192, %scanned_queue
  br i1 %cmp.i.i.i193, label %for.cond.i.i194.rtw_find_network.exit200.thread_crit_edge, label %for.body.i.i198

for.cond.i.i194.rtw_find_network.exit200.thread_crit_edge: ; preds = %for.cond.i.i194
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_find_network.exit200.thread

for.body.i.i198:                                  ; preds = %for.cond.i.i194
  %mac_address.i.i195 = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i192, i32 0, i32 6, i32 1
  %bcmp19.i.i196 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address3, ptr noundef dereferenceable(6) %mac_address.i.i195, i32 6) #26
  %tobool6.not.i.i197 = icmp eq i32 %bcmp19.i.i196, 0
  br i1 %tobool6.not.i.i197, label %rtw_find_network.exit200, label %for.body.i.i198.for.cond.i.i194_crit_edge

for.body.i.i198.for.cond.i.i194_crit_edge:        ; preds = %for.body.i.i198
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i.i194

rtw_find_network.exit200.thread:                  ; preds = %for.cond.i.i194.rtw_find_network.exit200.thread_crit_edge, %if.else.rtw_find_network.exit200.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i188) #21
  br label %if.end34

rtw_find_network.exit200:                         ; preds = %for.body.i.i198
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i188) #21
  %tobool32.not = icmp eq ptr %plist.0.i.i192, null
  br i1 %tobool32.not, label %rtw_find_network.exit200.if.end34_crit_edge, label %if.then33

rtw_find_network.exit200.if.end34_crit_edge:      ; preds = %rtw_find_network.exit200
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end34

if.then33:                                        ; preds = %rtw_find_network.exit200
  call void @__sanitizer_cov_trace_pc() #23
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i192, i32 0, i32 2
  %14 = ptrtoint ptr %fixed to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %fixed, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %rtw_find_network.exit200.if.end34_crit_edge, %rtw_find_network.exit200.thread
  %call38 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %mac_address3) #21
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end34.if.end42_crit_edge, label %if.then40

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end42

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #23
  %call41 = tail call i32 @rtw_free_stainfo(ptr noundef %adapter, ptr noundef nonnull %call38) #21
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end34.if.end42_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i.i201) #21
  %15 = call ptr @memset(ptr %zero_addr.i.i201, i32 0, i32 6)
  %bcmp.i.i202 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i.i201, ptr noundef dereferenceable(6) %mac_address, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i202)
  %tobool.not.i.i203 = icmp eq i32 %bcmp.i.i202, 0
  br i1 %tobool.not.i.i203, label %if.end42.rtw_find_network.exit213_crit_edge, label %if.end42.for.cond.i.i207_crit_edge

if.end42.for.cond.i.i207_crit_edge:               ; preds = %if.end42
  br label %for.cond.i.i207

if.end42.rtw_find_network.exit213_crit_edge:      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_find_network.exit213

for.cond.i.i207:                                  ; preds = %for.body.i.i211.for.cond.i.i207_crit_edge, %if.end42.for.cond.i.i207_crit_edge
  %plist.0.in.i.i204 = phi ptr [ %plist.0.i.i205, %for.body.i.i211.for.cond.i.i207_crit_edge ], [ %scanned_queue, %if.end42.for.cond.i.i207_crit_edge ]
  %16 = ptrtoint ptr %plist.0.in.i.i204 to i32
  call void @__asan_load4_noabort(i32 %16)
  %plist.0.i.i205 = load ptr, ptr %plist.0.in.i.i204, align 4
  %cmp.i.i.i206 = icmp eq ptr %plist.0.i.i205, %scanned_queue
  br i1 %cmp.i.i.i206, label %for.cond.i.i207.rtw_find_network.exit213_crit_edge, label %for.body.i.i211

for.cond.i.i207.rtw_find_network.exit213_crit_edge: ; preds = %for.cond.i.i207
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_find_network.exit213

for.body.i.i211:                                  ; preds = %for.cond.i.i207
  %mac_address.i.i208 = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i205, i32 0, i32 6, i32 1
  %bcmp19.i.i209 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address, ptr noundef dereferenceable(6) %mac_address.i.i208, i32 6) #26
  %tobool6.not.i.i210 = icmp eq i32 %bcmp19.i.i209, 0
  br i1 %tobool6.not.i.i210, label %for.body.i.i211.rtw_find_network.exit213_crit_edge, label %for.body.i.i211.for.cond.i.i207_crit_edge

for.body.i.i211.for.cond.i.i207_crit_edge:        ; preds = %for.body.i.i211
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i.i207

for.body.i.i211.rtw_find_network.exit213_crit_edge: ; preds = %for.body.i.i211
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_find_network.exit213

rtw_find_network.exit213:                         ; preds = %for.body.i.i211.rtw_find_network.exit213_crit_edge, %for.cond.i.i207.rtw_find_network.exit213_crit_edge, %if.end42.rtw_find_network.exit213_crit_edge
  %pnetwork.2.i.i212 = phi ptr [ null, %if.end42.rtw_find_network.exit213_crit_edge ], [ null, %for.cond.i.i207.rtw_find_network.exit213_crit_edge ], [ %plist.0.i.i205, %for.body.i.i211.rtw_find_network.exit213_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i201) #21
  %17 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fw_state.i, align 4
  %and.i215 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i215)
  %tobool.not.i216.not = icmp eq i32 %and.i215, 0
  br i1 %tobool.not.i216.not, label %rtw_find_network.exit213.if.end68_crit_edge, label %if.then50

rtw_find_network.exit213.if.end68_crit_edge:      ; preds = %rtw_find_network.exit213
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end68

if.then50:                                        ; preds = %rtw_find_network.exit213
  %tobool51.not = icmp eq ptr %pnetwork.2.i.i212, null
  br i1 %tobool51.not, label %if.then50.do.body72_crit_edge, label %if.then50.if.then70.sink.split_crit_edge

if.then50.if.then70.sink.split_crit_edge:         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then70.sink.split

if.then50.do.body72_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body72

if.else57:                                        ; preds = %if.then16
  %add.ptr1.i.i.i = getelementptr %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 12, i32 10
  %ssid.i.i = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 3
  %ssid14.i.i = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 3, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %is_same_network.exit.i.for.cond.i_crit_edge, %if.else57
  %plist.0.in.i = phi ptr [ %scanned_queue, %if.else57 ], [ %plist.0.i, %is_same_network.exit.i.for.cond.i_crit_edge ]
  %19 = ptrtoint ptr %plist.0.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %plist.0.i = load ptr, ptr %plist.0.in.i, align 4
  %cmp.i.i = icmp eq ptr %plist.0.i, %scanned_queue
  br i1 %cmp.i.i, label %for.cond.i.do.body72_crit_edge, label %for.body.i

for.cond.i.do.body72_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body72

for.body.i:                                       ; preds = %for.cond.i
  %20 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %tmps.0.copyload.i.i = load i16, ptr %add.ptr1.i.i.i, align 1
  %add.ptr1.i49.i.i = getelementptr %struct.wlan_network, ptr %plist.0.i, i32 0, i32 6, i32 12, i32 10
  %21 = ptrtoint ptr %add.ptr1.i49.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %tmpd.0.copyload.i.i = load i16, ptr %add.ptr1.i49.i.i, align 1
  %22 = ptrtoint ptr %ssid.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %ssid.i.i, align 1
  %ssid5.i.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i, i32 0, i32 6, i32 3
  %24 = ptrtoint ptr %ssid5.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %ssid5.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp7.i.i = icmp eq i32 %23, %25
  br i1 %cmp7.i.i, label %land.lhs.true.i.i, label %for.body.i.is_same_network.exit.i_crit_edge

for.body.i.is_same_network.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %is_same_network.exit.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %mac_address9.i.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i, i32 0, i32 6, i32 1
  %bcmp.i.i219 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address, ptr noundef dereferenceable(6) %mac_address9.i.i, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i219)
  %tobool.not.i.i220 = icmp eq i32 %bcmp.i.i219, 0
  br i1 %tobool.not.i.i220, label %land.lhs.true12.i.i, label %land.lhs.true.i.i.is_same_network.exit.i_crit_edge

land.lhs.true.i.i.is_same_network.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %is_same_network.exit.i

land.lhs.true12.i.i:                              ; preds = %land.lhs.true.i.i
  %ssid17.i.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i, i32 0, i32 6, i32 3, i32 1
  %bcmp48.i.i = tail call i32 @bcmp(ptr %ssid14.i.i, ptr %ssid17.i.i, i32 %23) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp48.i.i)
  %tobool22.not.i.i = icmp eq i32 %bcmp48.i.i, 0
  br i1 %tobool22.not.i.i, label %land.lhs.true23.i.i, label %land.lhs.true12.i.i.is_same_network.exit.i_crit_edge

land.lhs.true12.i.i.is_same_network.exit.i_crit_edge: ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %is_same_network.exit.i

land.lhs.true23.i.i:                              ; preds = %land.lhs.true12.i.i
  %26 = xor i16 %tmpd.0.copyload.i.i, %tmps.0.copyload.i.i
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #21
  %28 = and i16 %27, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp26.i.i = icmp eq i16 %28, 0
  br i1 %cmp26.i.i, label %land.rhs.i.i, label %land.lhs.true23.i.i.is_same_network.exit.i_crit_edge

land.lhs.true23.i.i.is_same_network.exit.i_crit_edge: ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %is_same_network.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %29 = and i16 %27, 1
  %30 = xor i16 %29, 1
  %cmp32.i.i = zext i16 %30 to i32
  br label %is_same_network.exit.i

is_same_network.exit.i:                           ; preds = %land.rhs.i.i, %land.lhs.true23.i.i.is_same_network.exit.i_crit_edge, %land.lhs.true12.i.i.is_same_network.exit.i_crit_edge, %land.lhs.true.i.i.is_same_network.exit.i_crit_edge, %for.body.i.is_same_network.exit.i_crit_edge
  %31 = phi i32 [ 0, %land.lhs.true23.i.i.is_same_network.exit.i_crit_edge ], [ 0, %land.lhs.true12.i.i.is_same_network.exit.i_crit_edge ], [ 0, %land.lhs.true.i.i.is_same_network.exit.i_crit_edge ], [ 0, %for.body.i.is_same_network.exit.i_crit_edge ], [ %cmp32.i.i, %land.rhs.i.i ]
  %tobool5.not.i = icmp eq i32 %31, 0
  br i1 %tobool5.not.i, label %is_same_network.exit.i.for.cond.i_crit_edge, label %_rtw_find_same_network.exit

is_same_network.exit.i.for.cond.i_crit_edge:      ; preds = %is_same_network.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i

_rtw_find_same_network.exit:                      ; preds = %is_same_network.exit.i
  %and.i222 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i222)
  %tobool.not.i223.not = icmp eq i32 %and.i222, 0
  br i1 %tobool.not.i223.not, label %_rtw_find_same_network.exit.if.end68_crit_edge, label %if.then62

_rtw_find_same_network.exit.if.end68_crit_edge:   ; preds = %_rtw_find_same_network.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end68

if.then62:                                        ; preds = %_rtw_find_same_network.exit
  %tobool63.not = icmp eq ptr %plist.0.i, null
  br i1 %tobool63.not, label %if.then62.do.body72_crit_edge, label %if.then62.if.then70.sink.split_crit_edge

if.then62.if.then70.sink.split_crit_edge:         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then70.sink.split

if.then62.do.body72_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body72

if.end68:                                         ; preds = %_rtw_find_same_network.exit.if.end68_crit_edge, %rtw_find_network.exit213.if.end68_crit_edge, %rtw_find_network.exit
  %ptarget_wlan.0 = phi ptr [ %pnetwork.2.i.i, %rtw_find_network.exit ], [ %pnetwork.2.i.i212, %rtw_find_network.exit213.if.end68_crit_edge ], [ %plist.0.i, %_rtw_find_same_network.exit.if.end68_crit_edge ]
  %tobool69.not = icmp eq ptr %ptarget_wlan.0, null
  br i1 %tobool69.not, label %if.end68.do.body72_crit_edge, label %if.end68.if.then70_crit_edge

if.end68.if.then70_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then70

if.end68.do.body72_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body72

if.then70.sink.split:                             ; preds = %if.then62.if.then70.sink.split_crit_edge, %if.then50.if.then70.sink.split_crit_edge
  %plist.0.i.lcssa279.sink = phi ptr [ %pnetwork.2.i.i212, %if.then50.if.then70.sink.split_crit_edge ], [ %plist.0.i, %if.then62.if.then70.sink.split_crit_edge ]
  %fixed65 = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.lcssa279.sink, i32 0, i32 2
  %32 = ptrtoint ptr %fixed65 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %fixed65, align 4
  br label %if.then70

if.then70:                                        ; preds = %if.then70.sink.split, %if.end68.if.then70_crit_edge
  %ptarget_wlan.0271 = phi ptr [ %ptarget_wlan.0, %if.end68.if.then70_crit_edge ], [ %plist.0.i.lcssa279.sink, %if.then70.sink.split ]
  %network.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6
  %33 = ptrtoint ptr %network to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %network, align 4
  %35 = call ptr @memcpy(ptr %network.i, ptr %network, i32 %34)
  %ie_length.i225 = getelementptr inbounds %struct.wlan_network, ptr %ptarget_wlan.0271, i32 0, i32 6, i32 11
  %36 = ptrtoint ptr %ie_length.i225 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ie_length.i225, align 4
  %ie_length6.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 11
  %38 = ptrtoint ptr %ie_length6.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ie_length6.i, align 4
  %ies.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 12
  %ies9.i = getelementptr inbounds %struct.wlan_network, ptr %ptarget_wlan.0271, i32 0, i32 6, i32 12
  %39 = call ptr @memcpy(ptr %ies.i, ptr %ies9.i, i32 768)
  %40 = ptrtoint ptr %join_res to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %join_res, align 4
  %aid.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 4
  %42 = ptrtoint ptr %aid.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %aid.i, align 4
  %signal_stat_timer.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 31
  %signal_stat_sampling_interval.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 32
  %43 = ptrtoint ptr %signal_stat_sampling_interval.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %signal_stat_sampling_interval.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %mul.i.i = mul i32 %44, 100
  %div.i.i = udiv i32 %mul.i.i, 1000
  %add.i.i = add i32 %div.i.i, %45
  %call.i.i = tail call i32 @mod_timer(ptr noundef %signal_stat_timer.i, i32 noundef %add.i.i) #21
  %phy_info.i = getelementptr inbounds %struct.wlan_network, ptr %ptarget_wlan.0271, i32 0, i32 6, i32 10
  %46 = ptrtoint ptr %phy_info.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %phy_info.i, align 4
  %signal_strength14.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 27
  %48 = ptrtoint ptr %signal_strength14.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %signal_strength14.i, align 2
  %signal_quality.i = getelementptr inbounds %struct.wlan_network, ptr %ptarget_wlan.0271, i32 0, i32 6, i32 10, i32 1
  %49 = ptrtoint ptr %signal_quality.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %signal_quality.i, align 1
  %signal_qual.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 28
  %51 = ptrtoint ptr %signal_qual.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %signal_qual.i, align 1
  %52 = load i8, ptr %phy_info.i, align 4
  %conv.i = zext i8 %52 to i16
  %add.i73.i = add nuw nsw i16 %conv.i, 1
  %shr.i.i = lshr i16 %add.i73.i, 1
  %53 = trunc i16 %shr.i.i to i8
  %conv21.i = add i8 %53, -95
  %rssi.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 29
  %54 = ptrtoint ptr %rssi.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv21.i, ptr %rssi.i, align 8
  %55 = ptrtoint ptr %signal_stat_sampling_interval.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %signal_stat_sampling_interval.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %mul.i74.i = mul i32 %56, 100
  %div.i75.i = udiv i32 %mul.i74.i, 1000
  %add.i76.i = add i32 %div.i75.i, %57
  %call.i77.i = tail call i32 @mod_timer(ptr noundef %signal_stat_timer.i, i32 noundef %add.i76.i) #21
  %infrastructure_mode.i = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 8
  %58 = ptrtoint ptr %infrastructure_mode.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %infrastructure_mode.i, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %59, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 0, label %if.then70.rtw_joinbss_update_network.exit_crit_edge
  ]

if.then70.rtw_joinbss_update_network.exit_crit_edge: ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_joinbss_update_network.exit

sw.bb.i:                                          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #23
  %61 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fw_state.i, align 4
  %and.i227 = and i32 %62, 256
  %63 = or i32 %and.i227, 8
  br label %rtw_joinbss_update_network.exit

sw.default.i:                                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_joinbss_update_network.exit

rtw_joinbss_update_network.exit:                  ; preds = %sw.default.i, %sw.bb.i, %if.then70.rtw_joinbss_update_network.exit_crit_edge
  %.sink = phi i32 [ 0, %sw.default.i ], [ %63, %sw.bb.i ], [ 32, %if.then70.rtw_joinbss_update_network.exit_crit_edge ]
  %64 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink, ptr %fw_state.i, align 4
  %add.ptr.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 12, i32 12
  %65 = ptrtoint ptr %ie_length6.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ie_length6.i, align 4
  tail call void @rtw_update_protection(ptr noundef %adapter, ptr noundef %add.ptr.i, i32 noundef %66) #21
  %67 = ptrtoint ptr %ie_length6.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ie_length6.i, align 4
  %ds_config.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 7, i32 3
  %69 = ptrtoint ptr %ds_config.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ds_config.i, align 4
  %conv43.i = trunc i32 %70 to i8
  tail call void @rtw_update_ht_cap(ptr noundef %adapter, ptr noundef %ies.i, i32 noundef %68, i8 noundef zeroext %conv43.i) #21
  %71 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fw_state.i, align 4
  %and.i230 = and i32 %72, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i230)
  %tobool.not.i231.not = icmp eq i32 %and.i230, 0
  br i1 %tobool.not.i231.not, label %rtw_joinbss_update_network.exit.if.end96_crit_edge, label %if.then89

rtw_joinbss_update_network.exit.if.end96_crit_edge: ; preds = %rtw_joinbss_update_network.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end96

do.body72:                                        ; preds = %if.end68.do.body72_crit_edge, %if.then62.do.body72_crit_edge, %for.cond.i.do.body72_crit_edge, %if.then50.do.body72_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_joinbss_event_prehandle.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_joinbss_event_prehandle, %if.then80)) #21
          to label %do.end83 [label %if.then80], !srcloc !27

if.then80:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #23
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %73 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_joinbss_event_prehandle.__UNIQUE_ID_ddebug345, ptr noundef %74, ptr noundef nonnull @.str.8) #21
  br label %do.end83

do.end83:                                         ; preds = %if.then80, %do.body72
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock13) #21
  br label %ignore_joinbss_callback

if.then89:                                        ; preds = %rtw_joinbss_update_network.exit
  %call.i = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %mac_address) #21
  %tobool.not.i233 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i233, label %if.end.i, label %if.then89.if.then6.i_crit_edge

if.then89.if.then6.i_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then6.i

if.end.i:                                         ; preds = %if.then89
  %call4.i = tail call ptr @rtw_alloc_stainfo(ptr noundef %stapriv, ptr noundef %mac_address) #21
  %tobool5.not.i234 = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i234, label %if.then92, label %if.end.i.if.then6.i_crit_edge

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i.if.then6.i_crit_edge, %if.then89.if.then6.i_crit_edge
  %psta.0106.i = phi ptr [ %call4.i, %if.end.i.if.then6.i_crit_edge ], [ %call.i, %if.then89.if.then6.i_crit_edge ]
  %75 = ptrtoint ptr %join_res to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %join_res, align 4
  %aid.i236 = getelementptr inbounds %struct.sta_info, ptr %psta.0106.i, i32 0, i32 9
  %77 = ptrtoint ptr %aid.i236 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %aid.i236, align 4
  tail call void @update_sta_info(ptr noundef %adapter, ptr noundef nonnull %psta.0106.i) #21
  %supported_rates.i = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 6, i32 9
  %call9.i = tail call i32 @rtw_get_rateset_len(ptr noundef %supported_rates.i) #21
  %bssratelen.i = getelementptr inbounds %struct.sta_info, ptr %psta.0106.i, i32 0, i32 22
  %78 = ptrtoint ptr %bssratelen.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call9.i, ptr %bssratelen.i, align 8
  %bssrateset.i = getelementptr inbounds %struct.sta_info, ptr %psta.0106.i, i32 0, i32 21
  %79 = call ptr @memcpy(ptr %bssrateset.i, ptr %supported_rates.i, i32 %call9.i)
  tail call void @rtw_hal_update_sta_rate_mask(ptr noundef %adapter, ptr noundef nonnull %psta.0106.i) #21
  %cur_wireless_mode.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5, i32 10
  %80 = ptrtoint ptr %cur_wireless_mode.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %cur_wireless_mode.i, align 1
  %wireless_mode.i = getelementptr inbounds %struct.sta_info, ptr %psta.0106.i, i32 0, i32 30
  %82 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %wireless_mode.i, align 4
  %call15.i = tail call zeroext i8 @networktype_to_raid_ex(ptr noundef %adapter, ptr noundef nonnull %psta.0106.i) #21
  %raid.i = getelementptr inbounds %struct.sta_info, ptr %psta.0106.i, i32 0, i32 27
  %83 = ptrtoint ptr %raid.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %call15.i, ptr %raid.i, align 2
  tail call void @rtw_hal_set_odm_var(ptr noundef %adapter, i32 noundef 0, ptr noundef nonnull %psta.0106.i, i1 noundef zeroext true) #21
  %securitypriv.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12
  %84 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %securitypriv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp.i = icmp eq i32 %85, 2
  br i1 %cmp.i, label %if.then16.i, label %if.then6.i.if.end23.i_crit_edge

if.then6.i.if.end23.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end23.i

if.then16.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #23
  %binstallGrpkey.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 27
  %86 = ptrtoint ptr %binstallGrpkey.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %binstallGrpkey.i, align 4
  %busetkipkey.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 29
  %87 = ptrtoint ptr %busetkipkey.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %busetkipkey.i, align 2
  %bgrpkey_handshake.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 31
  %88 = ptrtoint ptr %bgrpkey_handshake.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %bgrpkey_handshake.i, align 8
  %ieee8021x_blocked.i = getelementptr inbounds %struct.sta_info, ptr %psta.0106.i, i32 0, i32 13
  %89 = ptrtoint ptr %ieee8021x_blocked.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %ieee8021x_blocked.i, align 8
  %dot11PrivacyAlgrthm.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 1
  %90 = ptrtoint ptr %dot11PrivacyAlgrthm.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dot11PrivacyAlgrthm.i, align 4
  %dot118021XPrivacy.i = getelementptr inbounds %struct.sta_info, ptr %psta.0106.i, i32 0, i32 14
  %92 = ptrtoint ptr %dot118021XPrivacy.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %dot118021XPrivacy.i, align 4
  %dot11tkiptxmickey.i = getelementptr inbounds %struct.sta_info, ptr %psta.0106.i, i32 0, i32 15
  %dot11txpn.i = getelementptr inbounds %struct.sta_info, ptr %psta.0106.i, i32 0, i32 18
  %93 = call ptr @memset(ptr %dot11tkiptxmickey.i, i32 0, i32 48)
  %94 = ptrtoint ptr %dot11txpn.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 1, ptr %dot11txpn.i, align 8
  %dot11wtxpn.i = getelementptr inbounds %struct.sta_info, ptr %psta.0106.i, i32 0, i32 19
  %95 = call ptr @memset(ptr %dot11wtxpn.i, i32 0, i32 16)
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then16.i, %if.then6.i.if.end23.i_crit_edge
  %wps_ie_len.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 24
  %96 = ptrtoint ptr %wps_ie_len.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %wps_ie_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp25.not.i = icmp eq i32 %97, 0
  br i1 %cmp25.not.i, label %if.end23.i.if.end30.i_crit_edge, label %if.then26.i

if.end23.i.if.end30.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end30.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #23
  %ieee8021x_blocked27.i = getelementptr inbounds %struct.sta_info, ptr %psta.0106.i, i32 0, i32 13
  %98 = ptrtoint ptr %ieee8021x_blocked27.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %ieee8021x_blocked27.i, align 8
  %99 = ptrtoint ptr %wps_ie_len.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %wps_ie_len.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end30.i_crit_edge
  %enable.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 0, i32 1
  %100 = ptrtoint ptr %enable.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %enable.i, align 4
  %indicate_seq.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 0, i32 2
  %101 = ptrtoint ptr %indicate_seq.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 -1, ptr %indicate_seq.i, align 2
  %wend_b.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 0, i32 3
  %102 = ptrtoint ptr %wend_b.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 -1, ptr %wend_b.i, align 4
  %wsize_b.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 0, i32 4
  %103 = ptrtoint ptr %wsize_b.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 64, ptr %wsize_b.i, align 2
  %enable.1.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 1, i32 1
  %104 = ptrtoint ptr %enable.1.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %enable.1.i, align 4
  %indicate_seq.1.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 1, i32 2
  %105 = ptrtoint ptr %indicate_seq.1.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 -1, ptr %indicate_seq.1.i, align 2
  %wend_b.1.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 1, i32 3
  %106 = ptrtoint ptr %wend_b.1.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 -1, ptr %wend_b.1.i, align 4
  %wsize_b.1.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 1, i32 4
  %107 = ptrtoint ptr %wsize_b.1.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 64, ptr %wsize_b.1.i, align 2
  %enable.2.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 2, i32 1
  %108 = ptrtoint ptr %enable.2.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %enable.2.i, align 4
  %indicate_seq.2.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 2, i32 2
  %109 = ptrtoint ptr %indicate_seq.2.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 -1, ptr %indicate_seq.2.i, align 2
  %wend_b.2.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 2, i32 3
  %110 = ptrtoint ptr %wend_b.2.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 -1, ptr %wend_b.2.i, align 4
  %wsize_b.2.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 2, i32 4
  %111 = ptrtoint ptr %wsize_b.2.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 64, ptr %wsize_b.2.i, align 2
  %enable.3.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 3, i32 1
  %112 = ptrtoint ptr %enable.3.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %enable.3.i, align 4
  %indicate_seq.3.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 3, i32 2
  %113 = ptrtoint ptr %indicate_seq.3.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 -1, ptr %indicate_seq.3.i, align 2
  %wend_b.3.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 3, i32 3
  %114 = ptrtoint ptr %wend_b.3.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 -1, ptr %wend_b.3.i, align 4
  %wsize_b.3.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 3, i32 4
  %115 = ptrtoint ptr %wsize_b.3.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 64, ptr %wsize_b.3.i, align 2
  %enable.4.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 4, i32 1
  %116 = ptrtoint ptr %enable.4.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %enable.4.i, align 4
  %indicate_seq.4.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 4, i32 2
  %117 = ptrtoint ptr %indicate_seq.4.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 -1, ptr %indicate_seq.4.i, align 2
  %wend_b.4.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 4, i32 3
  %118 = ptrtoint ptr %wend_b.4.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 -1, ptr %wend_b.4.i, align 4
  %wsize_b.4.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 4, i32 4
  %119 = ptrtoint ptr %wsize_b.4.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 64, ptr %wsize_b.4.i, align 2
  %enable.5.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 5, i32 1
  %120 = ptrtoint ptr %enable.5.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %enable.5.i, align 4
  %indicate_seq.5.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 5, i32 2
  %121 = ptrtoint ptr %indicate_seq.5.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 -1, ptr %indicate_seq.5.i, align 2
  %wend_b.5.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 5, i32 3
  %122 = ptrtoint ptr %wend_b.5.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 -1, ptr %wend_b.5.i, align 4
  %wsize_b.5.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 5, i32 4
  %123 = ptrtoint ptr %wsize_b.5.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 64, ptr %wsize_b.5.i, align 2
  %enable.6.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 6, i32 1
  %124 = ptrtoint ptr %enable.6.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %enable.6.i, align 4
  %indicate_seq.6.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 6, i32 2
  %125 = ptrtoint ptr %indicate_seq.6.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 -1, ptr %indicate_seq.6.i, align 2
  %wend_b.6.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 6, i32 3
  %126 = ptrtoint ptr %wend_b.6.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 -1, ptr %wend_b.6.i, align 4
  %wsize_b.6.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 6, i32 4
  %127 = ptrtoint ptr %wsize_b.6.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 64, ptr %wsize_b.6.i, align 2
  %enable.7.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 7, i32 1
  %128 = ptrtoint ptr %enable.7.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %enable.7.i, align 4
  %indicate_seq.7.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 7, i32 2
  %129 = ptrtoint ptr %indicate_seq.7.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 -1, ptr %indicate_seq.7.i, align 2
  %wend_b.7.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 7, i32 3
  %130 = ptrtoint ptr %wend_b.7.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 -1, ptr %wend_b.7.i, align 4
  %wsize_b.7.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 7, i32 4
  %131 = ptrtoint ptr %wsize_b.7.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 64, ptr %wsize_b.7.i, align 2
  %enable.8.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 8, i32 1
  %132 = ptrtoint ptr %enable.8.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %enable.8.i, align 4
  %indicate_seq.8.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 8, i32 2
  %133 = ptrtoint ptr %indicate_seq.8.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 -1, ptr %indicate_seq.8.i, align 2
  %wend_b.8.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 8, i32 3
  %134 = ptrtoint ptr %wend_b.8.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 -1, ptr %wend_b.8.i, align 4
  %wsize_b.8.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 8, i32 4
  %135 = ptrtoint ptr %wsize_b.8.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 64, ptr %wsize_b.8.i, align 2
  %enable.9.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 9, i32 1
  %136 = ptrtoint ptr %enable.9.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %enable.9.i, align 4
  %indicate_seq.9.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 9, i32 2
  %137 = ptrtoint ptr %indicate_seq.9.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 -1, ptr %indicate_seq.9.i, align 2
  %wend_b.9.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 9, i32 3
  %138 = ptrtoint ptr %wend_b.9.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 -1, ptr %wend_b.9.i, align 4
  %wsize_b.9.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 9, i32 4
  %139 = ptrtoint ptr %wsize_b.9.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 64, ptr %wsize_b.9.i, align 2
  %enable.10.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 10, i32 1
  %140 = ptrtoint ptr %enable.10.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %enable.10.i, align 4
  %indicate_seq.10.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 10, i32 2
  %141 = ptrtoint ptr %indicate_seq.10.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 -1, ptr %indicate_seq.10.i, align 2
  %wend_b.10.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 10, i32 3
  %142 = ptrtoint ptr %wend_b.10.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 -1, ptr %wend_b.10.i, align 4
  %wsize_b.10.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 10, i32 4
  %143 = ptrtoint ptr %wsize_b.10.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 64, ptr %wsize_b.10.i, align 2
  %enable.11.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 11, i32 1
  %144 = ptrtoint ptr %enable.11.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %enable.11.i, align 4
  %indicate_seq.11.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 11, i32 2
  %145 = ptrtoint ptr %indicate_seq.11.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 -1, ptr %indicate_seq.11.i, align 2
  %wend_b.11.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 11, i32 3
  %146 = ptrtoint ptr %wend_b.11.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 -1, ptr %wend_b.11.i, align 4
  %wsize_b.11.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 11, i32 4
  %147 = ptrtoint ptr %wsize_b.11.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 64, ptr %wsize_b.11.i, align 2
  %enable.12.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 12, i32 1
  %148 = ptrtoint ptr %enable.12.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %enable.12.i, align 4
  %indicate_seq.12.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 12, i32 2
  %149 = ptrtoint ptr %indicate_seq.12.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 -1, ptr %indicate_seq.12.i, align 2
  %wend_b.12.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 12, i32 3
  %150 = ptrtoint ptr %wend_b.12.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 -1, ptr %wend_b.12.i, align 4
  %wsize_b.12.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 12, i32 4
  %151 = ptrtoint ptr %wsize_b.12.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 64, ptr %wsize_b.12.i, align 2
  %enable.13.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 13, i32 1
  %152 = ptrtoint ptr %enable.13.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %enable.13.i, align 4
  %indicate_seq.13.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 13, i32 2
  %153 = ptrtoint ptr %indicate_seq.13.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 -1, ptr %indicate_seq.13.i, align 2
  %wend_b.13.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 13, i32 3
  %154 = ptrtoint ptr %wend_b.13.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 -1, ptr %wend_b.13.i, align 4
  %wsize_b.13.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 13, i32 4
  %155 = ptrtoint ptr %wsize_b.13.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 64, ptr %wsize_b.13.i, align 2
  %enable.14.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 14, i32 1
  %156 = ptrtoint ptr %enable.14.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %enable.14.i, align 4
  %indicate_seq.14.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 14, i32 2
  %157 = ptrtoint ptr %indicate_seq.14.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 -1, ptr %indicate_seq.14.i, align 2
  %wend_b.14.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 14, i32 3
  %158 = ptrtoint ptr %wend_b.14.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 -1, ptr %wend_b.14.i, align 4
  %wsize_b.14.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 14, i32 4
  %159 = ptrtoint ptr %wsize_b.14.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 64, ptr %wsize_b.14.i, align 2
  %enable.15.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 15, i32 1
  %160 = ptrtoint ptr %enable.15.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %enable.15.i, align 4
  %indicate_seq.15.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 15, i32 2
  %161 = ptrtoint ptr %indicate_seq.15.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 -1, ptr %indicate_seq.15.i, align 2
  %wend_b.15.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 15, i32 3
  %162 = ptrtoint ptr %wend_b.15.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 -1, ptr %wend_b.15.i, align 4
  %wsize_b.15.i = getelementptr %struct.sta_info, ptr %psta.0106.i, i32 0, i32 36, i32 15, i32 4
  %163 = ptrtoint ptr %wsize_b.15.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 64, ptr %wsize_b.15.i, align 2
  %call32.i = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %adapter) #21
  %tobool33.not.i = icmp eq ptr %call32.i, null
  br i1 %tobool33.not.i, label %if.end30.i.if.end96_crit_edge, label %for.body37.preheader.i

if.end30.i.if.end96_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end96

for.body37.preheader.i:                           ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #23
  %enable40.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 0, i32 1
  %164 = ptrtoint ptr %enable40.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %enable40.i, align 4
  %indicate_seq41.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 0, i32 2
  %165 = ptrtoint ptr %indicate_seq41.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 -1, ptr %indicate_seq41.i, align 2
  %wend_b42.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 0, i32 3
  %166 = ptrtoint ptr %wend_b42.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 -1, ptr %wend_b42.i, align 4
  %wsize_b43.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 0, i32 4
  %167 = ptrtoint ptr %wsize_b43.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 64, ptr %wsize_b43.i, align 2
  %enable40.1.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 1, i32 1
  %168 = ptrtoint ptr %enable40.1.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %enable40.1.i, align 4
  %indicate_seq41.1.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 1, i32 2
  %169 = ptrtoint ptr %indicate_seq41.1.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 -1, ptr %indicate_seq41.1.i, align 2
  %wend_b42.1.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 1, i32 3
  %170 = ptrtoint ptr %wend_b42.1.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 -1, ptr %wend_b42.1.i, align 4
  %wsize_b43.1.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 1, i32 4
  %171 = ptrtoint ptr %wsize_b43.1.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 64, ptr %wsize_b43.1.i, align 2
  %enable40.2.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 2, i32 1
  %172 = ptrtoint ptr %enable40.2.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %enable40.2.i, align 4
  %indicate_seq41.2.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 2, i32 2
  %173 = ptrtoint ptr %indicate_seq41.2.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 -1, ptr %indicate_seq41.2.i, align 2
  %wend_b42.2.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 2, i32 3
  %174 = ptrtoint ptr %wend_b42.2.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 -1, ptr %wend_b42.2.i, align 4
  %wsize_b43.2.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 2, i32 4
  %175 = ptrtoint ptr %wsize_b43.2.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 64, ptr %wsize_b43.2.i, align 2
  %enable40.3.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 3, i32 1
  %176 = ptrtoint ptr %enable40.3.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %enable40.3.i, align 4
  %indicate_seq41.3.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 3, i32 2
  %177 = ptrtoint ptr %indicate_seq41.3.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 -1, ptr %indicate_seq41.3.i, align 2
  %wend_b42.3.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 3, i32 3
  %178 = ptrtoint ptr %wend_b42.3.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 -1, ptr %wend_b42.3.i, align 4
  %wsize_b43.3.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 3, i32 4
  %179 = ptrtoint ptr %wsize_b43.3.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 64, ptr %wsize_b43.3.i, align 2
  %enable40.4.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 4, i32 1
  %180 = ptrtoint ptr %enable40.4.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %enable40.4.i, align 4
  %indicate_seq41.4.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 4, i32 2
  %181 = ptrtoint ptr %indicate_seq41.4.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 -1, ptr %indicate_seq41.4.i, align 2
  %wend_b42.4.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 4, i32 3
  %182 = ptrtoint ptr %wend_b42.4.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 -1, ptr %wend_b42.4.i, align 4
  %wsize_b43.4.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 4, i32 4
  %183 = ptrtoint ptr %wsize_b43.4.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 64, ptr %wsize_b43.4.i, align 2
  %enable40.5.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 5, i32 1
  %184 = ptrtoint ptr %enable40.5.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %enable40.5.i, align 4
  %indicate_seq41.5.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 5, i32 2
  %185 = ptrtoint ptr %indicate_seq41.5.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 -1, ptr %indicate_seq41.5.i, align 2
  %wend_b42.5.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 5, i32 3
  %186 = ptrtoint ptr %wend_b42.5.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 -1, ptr %wend_b42.5.i, align 4
  %wsize_b43.5.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 5, i32 4
  %187 = ptrtoint ptr %wsize_b43.5.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 64, ptr %wsize_b43.5.i, align 2
  %enable40.6.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 6, i32 1
  %188 = ptrtoint ptr %enable40.6.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %enable40.6.i, align 4
  %indicate_seq41.6.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 6, i32 2
  %189 = ptrtoint ptr %indicate_seq41.6.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 -1, ptr %indicate_seq41.6.i, align 2
  %wend_b42.6.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 6, i32 3
  %190 = ptrtoint ptr %wend_b42.6.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 -1, ptr %wend_b42.6.i, align 4
  %wsize_b43.6.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 6, i32 4
  %191 = ptrtoint ptr %wsize_b43.6.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 64, ptr %wsize_b43.6.i, align 2
  %enable40.7.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 7, i32 1
  %192 = ptrtoint ptr %enable40.7.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %enable40.7.i, align 4
  %indicate_seq41.7.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 7, i32 2
  %193 = ptrtoint ptr %indicate_seq41.7.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 -1, ptr %indicate_seq41.7.i, align 2
  %wend_b42.7.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 7, i32 3
  %194 = ptrtoint ptr %wend_b42.7.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 -1, ptr %wend_b42.7.i, align 4
  %wsize_b43.7.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 7, i32 4
  %195 = ptrtoint ptr %wsize_b43.7.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 64, ptr %wsize_b43.7.i, align 2
  %enable40.8.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 8, i32 1
  %196 = ptrtoint ptr %enable40.8.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 0, ptr %enable40.8.i, align 4
  %indicate_seq41.8.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 8, i32 2
  %197 = ptrtoint ptr %indicate_seq41.8.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 -1, ptr %indicate_seq41.8.i, align 2
  %wend_b42.8.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 8, i32 3
  %198 = ptrtoint ptr %wend_b42.8.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 -1, ptr %wend_b42.8.i, align 4
  %wsize_b43.8.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 8, i32 4
  %199 = ptrtoint ptr %wsize_b43.8.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 64, ptr %wsize_b43.8.i, align 2
  %enable40.9.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 9, i32 1
  %200 = ptrtoint ptr %enable40.9.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %enable40.9.i, align 4
  %indicate_seq41.9.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 9, i32 2
  %201 = ptrtoint ptr %indicate_seq41.9.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 -1, ptr %indicate_seq41.9.i, align 2
  %wend_b42.9.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 9, i32 3
  %202 = ptrtoint ptr %wend_b42.9.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 -1, ptr %wend_b42.9.i, align 4
  %wsize_b43.9.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 9, i32 4
  %203 = ptrtoint ptr %wsize_b43.9.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 64, ptr %wsize_b43.9.i, align 2
  %enable40.10.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 10, i32 1
  %204 = ptrtoint ptr %enable40.10.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 0, ptr %enable40.10.i, align 4
  %indicate_seq41.10.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 10, i32 2
  %205 = ptrtoint ptr %indicate_seq41.10.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 -1, ptr %indicate_seq41.10.i, align 2
  %wend_b42.10.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 10, i32 3
  %206 = ptrtoint ptr %wend_b42.10.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 -1, ptr %wend_b42.10.i, align 4
  %wsize_b43.10.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 10, i32 4
  %207 = ptrtoint ptr %wsize_b43.10.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 64, ptr %wsize_b43.10.i, align 2
  %enable40.11.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 11, i32 1
  %208 = ptrtoint ptr %enable40.11.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %enable40.11.i, align 4
  %indicate_seq41.11.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 11, i32 2
  %209 = ptrtoint ptr %indicate_seq41.11.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 -1, ptr %indicate_seq41.11.i, align 2
  %wend_b42.11.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 11, i32 3
  %210 = ptrtoint ptr %wend_b42.11.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 -1, ptr %wend_b42.11.i, align 4
  %wsize_b43.11.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 11, i32 4
  %211 = ptrtoint ptr %wsize_b43.11.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 64, ptr %wsize_b43.11.i, align 2
  %enable40.12.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 12, i32 1
  %212 = ptrtoint ptr %enable40.12.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 0, ptr %enable40.12.i, align 4
  %indicate_seq41.12.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 12, i32 2
  %213 = ptrtoint ptr %indicate_seq41.12.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 -1, ptr %indicate_seq41.12.i, align 2
  %wend_b42.12.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 12, i32 3
  %214 = ptrtoint ptr %wend_b42.12.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 -1, ptr %wend_b42.12.i, align 4
  %wsize_b43.12.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 12, i32 4
  %215 = ptrtoint ptr %wsize_b43.12.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 64, ptr %wsize_b43.12.i, align 2
  %enable40.13.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 13, i32 1
  %216 = ptrtoint ptr %enable40.13.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %enable40.13.i, align 4
  %indicate_seq41.13.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 13, i32 2
  %217 = ptrtoint ptr %indicate_seq41.13.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 -1, ptr %indicate_seq41.13.i, align 2
  %wend_b42.13.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 13, i32 3
  %218 = ptrtoint ptr %wend_b42.13.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 -1, ptr %wend_b42.13.i, align 4
  %wsize_b43.13.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 13, i32 4
  %219 = ptrtoint ptr %wsize_b43.13.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 64, ptr %wsize_b43.13.i, align 2
  %enable40.14.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 14, i32 1
  %220 = ptrtoint ptr %enable40.14.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %enable40.14.i, align 4
  %indicate_seq41.14.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 14, i32 2
  %221 = ptrtoint ptr %indicate_seq41.14.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 -1, ptr %indicate_seq41.14.i, align 2
  %wend_b42.14.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 14, i32 3
  %222 = ptrtoint ptr %wend_b42.14.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 -1, ptr %wend_b42.14.i, align 4
  %wsize_b43.14.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 14, i32 4
  %223 = ptrtoint ptr %wsize_b43.14.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 64, ptr %wsize_b43.14.i, align 2
  %enable40.15.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 15, i32 1
  %224 = ptrtoint ptr %enable40.15.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 0, ptr %enable40.15.i, align 4
  %indicate_seq41.15.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 15, i32 2
  %225 = ptrtoint ptr %indicate_seq41.15.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 -1, ptr %indicate_seq41.15.i, align 2
  %wend_b42.15.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 15, i32 3
  %226 = ptrtoint ptr %wend_b42.15.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 -1, ptr %wend_b42.15.i, align 4
  %wsize_b43.15.i = getelementptr %struct.sta_info, ptr %call32.i, i32 0, i32 36, i32 15, i32 4
  %227 = ptrtoint ptr %wsize_b43.15.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 64, ptr %wsize_b43.15.i, align 2
  br label %if.end96

if.then92:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock13) #21
  br label %ignore_joinbss_callback

if.end96:                                         ; preds = %for.body37.preheader.i, %if.end30.i.if.end96_crit_edge, %rtw_joinbss_update_network.exit.if.end96_crit_edge
  %228 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %fw_state.i, align 4
  %and.i238 = and i32 %229, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i238)
  %tobool.not.i239.not = icmp eq i32 %and.i238, 0
  br i1 %tobool.not.i239.not, label %if.end96.if.end100_crit_edge, label %if.then99

if.end96.if.end100_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end100

if.then99:                                        ; preds = %if.end96
  %cur_network_scanned = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 21
  %230 = ptrtoint ptr %cur_network_scanned to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %ptarget_wlan.0271, ptr %cur_network_scanned, align 4
  %to_join.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 3
  %231 = ptrtoint ptr %to_join.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 0, ptr %to_join.i, align 1
  %232 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %fw_state.i, align 4
  %and.i.i = and i32 %233, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i241 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i241, label %if.then.i242, label %if.then99.rtw_indicate_connect.exit_crit_edge

if.then99.rtw_indicate_connect.exit_crit_edge:    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_indicate_connect.exit

if.then.i242:                                     ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #23
  %or.i.i = or i32 %233, 1
  %234 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %or.i.i, ptr %fw_state.i, align 4
  tail call void @rtw_os_indicate_connect(ptr noundef %adapter) #21
  br label %rtw_indicate_connect.exit

rtw_indicate_connect.exit:                        ; preds = %if.then.i242, %if.then99.rtw_indicate_connect.exit_crit_edge
  %235 = ptrtoint ptr %to_join.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 0, ptr %to_join.i, align 1
  %to_roam3.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %236 = ptrtoint ptr %to_roam3.i.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 0, ptr %to_roam3.i.i, align 2
  %set_scan_deny.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 29
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %set_scan_deny.i.i, i32 noundef 4) #21
  %237 = ptrtoint ptr %set_scan_deny.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store volatile i32 1, ptr %set_scan_deny.i.i, align 4
  %set_scan_deny_timer.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %238 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %238, 300
  %call.i.i.i = tail call i32 @mod_timer(ptr noundef %set_scan_deny_timer.i.i, i32 noundef %add.i.i.i) #21
  br label %if.end100

if.end100:                                        ; preds = %rtw_indicate_connect.exit, %if.end96.if.end100_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock13) #21
  %assoc_timer = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 23
  %call103 = tail call i32 @del_timer_sync(ptr noundef %assoc_timer) #21
  br label %ignore_joinbss_callback

if.else104:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock13) #21
  br label %ignore_joinbss_callback

if.else108:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %6)
  %cmp110 = icmp eq i32 %6, -4
  br i1 %cmp110, label %if.then111, label %if.else117

if.then111:                                       ; preds = %if.else108
  tail call void @rtw_reset_securitypriv(ptr noundef %adapter) #21
  %assoc_timer112 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %239 = load volatile i32, ptr @jiffies, align 128
  %call.i244 = tail call i32 @mod_timer(ptr noundef %assoc_timer112, i32 noundef %239) #21
  %fw_state.i245 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %240 = ptrtoint ptr %fw_state.i245 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %fw_state.i245, align 4
  %and.i246 = and i32 %241, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i246)
  %tobool.not.i247.not = icmp eq i32 %and.i246, 0
  br i1 %tobool.not.i247.not, label %if.then111.ignore_joinbss_callback_crit_edge, label %if.then115

if.then111.ignore_joinbss_callback_crit_edge:     ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #23
  br label %ignore_joinbss_callback

if.then115:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #23
  %and.i250 = and i32 %241, -129
  %242 = ptrtoint ptr %fw_state.i245 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %and.i250, ptr %fw_state.i245, align 4
  br label %ignore_joinbss_callback

if.else117:                                       ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #23
  %assoc_timer118 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %243 = load volatile i32, ptr @jiffies, align 128
  %call.i252 = tail call i32 @mod_timer(ptr noundef %assoc_timer118, i32 noundef %243) #21
  %fw_state.i253 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %244 = ptrtoint ptr %fw_state.i253 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %fw_state.i253, align 4
  %and.i254 = and i32 %245, -129
  store i32 %and.i254, ptr %fw_state.i253, align 4
  br label %ignore_joinbss_callback

ignore_joinbss_callback:                          ; preds = %if.else117, %if.then115, %if.then111.ignore_joinbss_callback_crit_edge, %if.else104, %if.end100, %if.then92, %do.end83
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #21
  br label %cleanup

cleanup:                                          ; preds = %ignore_joinbss_callback, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_get_encrypt_decrypt_from_registrypriv(ptr nocapture %adapter) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_reset_securitypriv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_joinbss_event_callback(ptr noundef %adapter, ptr nocapture noundef readonly %pbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %join_res = getelementptr inbounds %struct.wlan_network, ptr %pbuf, i32 0, i32 5
  %0 = ptrtoint ptr %join_res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %join_res, align 4
  tail call void @mlmeext_joinbss_event_callback(ptr noundef %adapter, i32 noundef %1) #21
  tail call void @rtw_os_xmit_schedule(ptr noundef %adapter) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlmeext_joinbss_event_callback(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_sta_media_status_rpt(ptr noundef %adapter, ptr noundef readonly %psta, i32 noundef %mstatus) local_unnamed_addr #0 align 64 {
entry:
  %media_status_rpt = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %media_status_rpt) #21
  %tobool.not = icmp eq ptr %psta, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 10
  %0 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_id, align 8
  %shl = shl i32 %1, 8
  %or = or i32 %shl, %mstatus
  %conv = trunc i32 %or to i16
  %2 = ptrtoint ptr %media_status_rpt to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %media_status_rpt, align 2
  call void @rtw_hal_set_hwreg(ptr noundef %adapter, i8 noundef zeroext 72, ptr noundef nonnull %media_status_rpt) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %media_status_rpt) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_stassoc_event_callback(ptr noundef %adapter, ptr noundef %pbuf) local_unnamed_addr #0 align 64 {
entry:
  %zero_addr.i.i = alloca [6 x i8], align 1
  %media_status_rpt.i140 = alloca i16, align 2
  %media_status_rpt.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4
  %call = tail call zeroext i8 @rtw_access_ctrl(ptr noundef %adapter, ptr noundef %pbuf) #21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %cmp = icmp eq i8 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %stapriv36 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %call39 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv36, ptr noundef %pbuf) #21
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool.not, label %if.end35, label %if.then4

if.then4:                                         ; preds = %if.end
  br i1 %tobool40.not, label %if.then4.cleanup_crit_edge, label %rtw_sta_media_status_rpt.exit

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

rtw_sta_media_status_rpt.exit:                    ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %media_status_rpt.i) #21
  %mac_id.i = getelementptr inbounds %struct.sta_info, ptr %call39, i32 0, i32 10
  %3 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac_id.i, align 8
  %.tr = trunc i32 %4 to i16
  %5 = shl i16 %.tr, 8
  %conv.i = or i16 %5, 1
  %6 = ptrtoint ptr %media_status_rpt.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %media_status_rpt.i, align 2
  call void @rtw_hal_set_hwreg(ptr noundef %adapter, i8 noundef zeroext 72, ptr noundef nonnull %media_status_rpt.i) #21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %media_status_rpt.i) #21
  call void @ap_sta_info_defer_update(ptr noundef %adapter, ptr noundef nonnull %call39) #21
  call void @_raw_spin_lock_bh(ptr noundef nonnull %call39) #21
  %passoc_req10 = getelementptr inbounds %struct.sta_info, ptr %call39, i32 0, i32 72
  %7 = ptrtoint ptr %passoc_req10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %passoc_req10, align 8
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %rtw_sta_media_status_rpt.exit.if.end26_crit_edge, label %land.lhs.true

rtw_sta_media_status_rpt.exit.if.end26_crit_edge: ; preds = %rtw_sta_media_status_rpt.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end26

land.lhs.true:                                    ; preds = %rtw_sta_media_status_rpt.exit
  %assoc_req_len12 = getelementptr inbounds %struct.sta_info, ptr %call39, i32 0, i32 73
  %9 = ptrtoint ptr %assoc_req_len12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %assoc_req_len12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13.not = icmp eq i32 %10, 0
  br i1 %cmp13.not, label %land.lhs.true.if.end26_crit_edge, label %if.then15

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end26

if.then15:                                        ; preds = %land.lhs.true
  %call17 = call ptr @_rtw_zmalloc(i32 noundef %10) #21
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then15.if.end26_crit_edge, label %if.then19

if.then15.if.end26_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end26

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #23
  %11 = ptrtoint ptr %assoc_req_len12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %assoc_req_len12, align 4
  %13 = ptrtoint ptr %passoc_req10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %passoc_req10, align 8
  %15 = call ptr @memcpy(ptr %call17, ptr %14, i32 %12)
  %16 = load ptr, ptr %passoc_req10, align 8
  call void @kfree(ptr noundef %16) #21
  %17 = ptrtoint ptr %passoc_req10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %passoc_req10, align 8
  %18 = ptrtoint ptr %assoc_req_len12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %assoc_req_len12, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then19, %if.then15.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %rtw_sta_media_status_rpt.exit.if.end26_crit_edge
  %passoc_req.0 = phi ptr [ %call17, %if.then19 ], [ null, %if.then15.if.end26_crit_edge ], [ null, %land.lhs.true.if.end26_crit_edge ], [ null, %rtw_sta_media_status_rpt.exit.if.end26_crit_edge ]
  %assoc_req_len.0 = phi i32 [ %12, %if.then19 ], [ 0, %if.then15.if.end26_crit_edge ], [ 0, %land.lhs.true.if.end26_crit_edge ], [ 0, %rtw_sta_media_status_rpt.exit.if.end26_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef nonnull %call39) #21
  %tobool28.not = icmp eq ptr %passoc_req.0, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %assoc_req_len.0)
  %cmp30.not = icmp eq i32 %assoc_req_len.0, 0
  %or.cond = select i1 %tobool28.not, i1 true, i1 %cmp30.not
  br i1 %or.cond, label %if.end26.cleanup_crit_edge, label %if.then32

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #23
  call void @rtw_cfg80211_indicate_sta_assoc(ptr noundef %adapter, ptr noundef nonnull %passoc_req.0, i32 noundef %assoc_req_len.0) #21
  call void @kfree(ptr noundef nonnull %passoc_req.0) #21
  br label %cleanup

if.end35:                                         ; preds = %if.end
  br i1 %tobool40.not, label %if.end42, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  %call46 = tail call ptr @rtw_alloc_stainfo(ptr noundef %stapriv36, ptr noundef %pbuf) #21
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.end42.cleanup_crit_edge, label %rtw_sta_media_status_rpt.exit147

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

rtw_sta_media_status_rpt.exit147:                 ; preds = %if.end42
  %qos_option = getelementptr inbounds %struct.sta_info, ptr %call46, i32 0, i32 11
  %19 = ptrtoint ptr %qos_option to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %qos_option, align 4
  %cam_id = getelementptr inbounds %struct.stassoc_event, ptr %pbuf, i32 0, i32 2
  %20 = ptrtoint ptr %cam_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cam_id, align 4
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %call46, i32 0, i32 10
  %22 = ptrtoint ptr %mac_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %mac_id, align 8
  tail call void @rtw_hal_set_odm_var(ptr noundef %adapter, i32 noundef 0, ptr noundef nonnull %call46, i1 noundef zeroext true) #21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %media_status_rpt.i140) #21
  %23 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mac_id, align 8
  %.tr161 = trunc i32 %24 to i16
  %25 = shl i16 %.tr161, 8
  %conv.i145 = or i16 %25, 1
  %26 = ptrtoint ptr %media_status_rpt.i140 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i145, ptr %media_status_rpt.i140, align 2
  call void @rtw_hal_set_hwreg(ptr noundef %adapter, i8 noundef zeroext 72, ptr noundef nonnull %media_status_rpt.i140) #21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %media_status_rpt.i140) #21
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12
  %27 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %securitypriv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp50 = icmp eq i32 %28, 2
  br i1 %cmp50, label %if.then52, label %rtw_sta_media_status_rpt.exit147.if.end54_crit_edge

rtw_sta_media_status_rpt.exit147.if.end54_crit_edge: ; preds = %rtw_sta_media_status_rpt.exit147
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end54

if.then52:                                        ; preds = %rtw_sta_media_status_rpt.exit147
  call void @__sanitizer_cov_trace_pc() #23
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 1
  %29 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  %dot118021XPrivacy = getelementptr inbounds %struct.sta_info, ptr %call46, i32 0, i32 14
  %31 = ptrtoint ptr %dot118021XPrivacy to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dot118021XPrivacy, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %rtw_sta_media_status_rpt.exit147.if.end54_crit_edge
  %ieee8021x_blocked = getelementptr inbounds %struct.sta_info, ptr %call46, i32 0, i32 13
  %32 = ptrtoint ptr %ieee8021x_blocked to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %ieee8021x_blocked, align 8
  call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #21
  %33 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw_state.i, align 4
  %35 = and i32 %34, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %if.end54.if.end77_crit_edge, label %if.then62

if.end54.if.end77_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end77

if.then62:                                        ; preds = %if.end54
  %asoc_sta_count = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11, i32 5
  %37 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %asoc_sta_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp64 = icmp eq i32 %38, 2
  br i1 %cmp64, label %if.then66, label %if.then62.if.end77_crit_edge

if.then62.if.end77_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end77

if.then66:                                        ; preds = %if.then62
  %scanned_queue = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15
  %lock67 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock67) #21
  %mac_address = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i.i) #21
  %39 = call ptr @memset(ptr %zero_addr.i.i, i32 0, i32 6)
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i.i, ptr noundef dereferenceable(6) %mac_address, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %if.then66.rtw_find_network.exit.thread_crit_edge, label %if.then66.for.cond.i.i_crit_edge

if.then66.for.cond.i.i_crit_edge:                 ; preds = %if.then66
  br label %for.cond.i.i

if.then66.rtw_find_network.exit.thread_crit_edge: ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_find_network.exit.thread

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then66.for.cond.i.i_crit_edge
  %plist.0.in.i.i = phi ptr [ %plist.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %scanned_queue, %if.then66.for.cond.i.i_crit_edge ]
  %40 = ptrtoint ptr %plist.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %plist.0.i.i = load ptr, ptr %plist.0.in.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %plist.0.i.i, %scanned_queue
  br i1 %cmp.i.i.i, label %for.cond.i.i.rtw_find_network.exit.thread_crit_edge, label %for.body.i.i

for.cond.i.i.rtw_find_network.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_find_network.exit.thread

for.body.i.i:                                     ; preds = %for.cond.i.i
  %mac_address.i.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i, i32 0, i32 6, i32 1
  %bcmp19.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address, ptr noundef dereferenceable(6) %mac_address.i.i, i32 6) #26
  %tobool6.not.i.i = icmp eq i32 %bcmp19.i.i, 0
  br i1 %tobool6.not.i.i, label %rtw_find_network.exit, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i.i

rtw_find_network.exit.thread:                     ; preds = %for.cond.i.i.rtw_find_network.exit.thread_crit_edge, %if.then66.rtw_find_network.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i) #21
  %cur_network_scanned159 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 21
  %41 = ptrtoint ptr %cur_network_scanned159 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %cur_network_scanned159, align 4
  br label %if.end73

rtw_find_network.exit:                            ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i) #21
  %cur_network_scanned = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 21
  %42 = ptrtoint ptr %cur_network_scanned to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %plist.0.i.i, ptr %cur_network_scanned, align 4
  %tobool71.not = icmp eq ptr %plist.0.i.i, null
  br i1 %tobool71.not, label %rtw_find_network.exit.if.end73_crit_edge, label %if.then72

rtw_find_network.exit.if.end73_crit_edge:         ; preds = %rtw_find_network.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end73

if.then72:                                        ; preds = %rtw_find_network.exit
  call void @__sanitizer_cov_trace_pc() #23
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %fixed to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %fixed, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %rtw_find_network.exit.if.end73_crit_edge, %rtw_find_network.exit.thread
  call void @_raw_spin_unlock_bh(ptr noundef %lock67) #21
  %to_join.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 3
  %44 = ptrtoint ptr %to_join.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %to_join.i, align 1
  %45 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fw_state.i, align 4
  %and.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i156 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i156, label %if.then.i, label %if.end73.rtw_indicate_connect.exit_crit_edge

if.end73.rtw_indicate_connect.exit_crit_edge:     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_indicate_connect.exit

if.then.i:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #23
  %or.i.i = or i32 %46, 1
  %47 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i.i, ptr %fw_state.i, align 4
  call void @rtw_os_indicate_connect(ptr noundef %adapter) #21
  br label %rtw_indicate_connect.exit

rtw_indicate_connect.exit:                        ; preds = %if.then.i, %if.end73.rtw_indicate_connect.exit_crit_edge
  %48 = ptrtoint ptr %to_join.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %to_join.i, align 1
  %to_roam3.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %49 = ptrtoint ptr %to_roam3.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %to_roam3.i.i, align 2
  %set_scan_deny.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 29
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %set_scan_deny.i.i, i32 noundef 4) #21
  %50 = ptrtoint ptr %set_scan_deny.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 1, ptr %set_scan_deny.i.i, align 4
  %set_scan_deny_timer.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %51, 300
  %call.i.i.i = call i32 @mod_timer(ptr noundef %set_scan_deny_timer.i.i, i32 noundef %add.i.i.i) #21
  br label %if.end77

if.end77:                                         ; preds = %rtw_indicate_connect.exit, %if.then62.if.end77_crit_edge, %if.end54.if.end77_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #21
  call void @mlmeext_sta_add_event_callback(ptr noundef %adapter, ptr noundef nonnull %call46) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.end42.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.then32, %if.end26.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_access_ctrl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ap_sta_info_defer_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_zmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_cfg80211_indicate_sta_assoc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_odm_var(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlmeext_sta_add_event_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_stadel_event_callback(ptr noundef %adapter, ptr noundef %pbuf) local_unnamed_addr #0 align 64 {
entry:
  %zero_addr.i.i199 = alloca [6 x i8], align 1
  %zero_addr.i.i = alloca [6 x i8], align 1
  %media_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5, i32 18
  %stapriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %pbuf) #21
  %tobool.not = icmp eq ptr %call, null
  %mac_id1 = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 10
  %mac_id2 = getelementptr inbounds %struct.stadel_event, ptr %pbuf, i32 0, i32 2
  %mac_id.0.in = select i1 %tobool.not, ptr %mac_id2, ptr %mac_id1
  %0 = ptrtoint ptr %mac_id.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %mac_id.0 = load i32, ptr %mac_id.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mac_id.0)
  %cmp = icmp sgt i32 %mac_id.0, -1
  br i1 %cmp, label %if.then3, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %media_status) #21
  %mac_id.0.tr = trunc i32 %mac_id.0 to i16
  %conv = shl i16 %mac_id.0.tr, 8
  %1 = ptrtoint ptr %media_status to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %media_status, align 2
  call void @rtw_hal_set_hwreg(ptr noundef %adapter, i8 noundef zeroext 72, ptr noundef nonnull %media_status) #21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %media_status) #21
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry.if.end4_crit_edge
  %2 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp5 = icmp eq i32 %and, 3
  br i1 %cmp5, label %if.end4.cleanup114_crit_edge, label %if.end8

if.end4.cleanup114_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup114

if.end8:                                          ; preds = %if.end4
  call void @mlmeext_sta_del_event_callback(ptr noundef %adapter) #21
  call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #21
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool10.not = icmp eq i32 %6, 0
  br i1 %tobool10.not, label %if.end8.if.end69_crit_edge, label %if.then11

if.end8.if.end69_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end69

if.then11:                                        ; preds = %if.end8
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 48
  %7 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp14 = icmp eq i8 %8, 1
  br i1 %cmp14, label %if.then11.if.else57_crit_edge, label %if.else17

if.then11.if.else57_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else57

if.else17:                                        ; preds = %if.then11
  %rsvd = getelementptr inbounds %struct.stadel_event, ptr %pbuf, i32 0, i32 1
  %9 = ptrtoint ptr %rsvd to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %rsvd, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %10, label %if.else17.if.else57_crit_edge [
    i16 -1, label %land.lhs.true
    i16 -3, label %land.lhs.true30
  ]

if.else17.if.else57_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else57

land.lhs.true:                                    ; preds = %if.else17
  %roam_flags = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %roam_flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %roam_flags, align 8
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool24.not = icmp eq i8 %14, 0
  br i1 %tobool24.not, label %land.lhs.true.if.else57_crit_edge, label %land.lhs.true.if.then41_crit_edge

land.lhs.true.if.then41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then41

land.lhs.true.if.else57_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else57

land.lhs.true30:                                  ; preds = %if.else17
  %roam_flags32 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 6
  %15 = ptrtoint ptr %roam_flags32 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %roam_flags32, align 8
  %17 = and i8 %16, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool35.not.not = icmp eq i8 %17, 0
  br i1 %tobool35.not.not, label %land.lhs.true30.if.else57_crit_edge, label %land.lhs.true30.if.then41_crit_edge

land.lhs.true30.if.then41_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then41

land.lhs.true30.if.else57_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else57

if.then41:                                        ; preds = %land.lhs.true30.if.then41_crit_edge, %land.lhs.true.if.then41_crit_edge
  %to_roam.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %18 = ptrtoint ptr %to_roam.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %to_roam.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp44.not = icmp eq i8 %19, 0
  br i1 %cmp44.not, label %if.then53, label %if.then46

if.then46:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #23
  %dec.i = add i8 %19, -1
  %20 = ptrtoint ptr %to_roam.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %dec.i, ptr %to_roam.i, align 2
  br label %if.end58

if.then53:                                        ; preds = %if.then41
  %max_roaming_times = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 58
  %21 = ptrtoint ptr %max_roaming_times to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %max_roaming_times, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.i = icmp eq i8 %22, 0
  br i1 %cmp.i, label %if.then.i, label %if.then53.rtw_set_to_roam.exit_crit_edge

if.then53.rtw_set_to_roam.exit_crit_edge:         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_set_to_roam.exit

if.then.i:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #23
  %to_join.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %to_join.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %to_join.i, align 1
  br label %rtw_set_to_roam.exit

rtw_set_to_roam.exit:                             ; preds = %if.then.i, %if.then53.rtw_set_to_roam.exit_crit_edge
  %24 = ptrtoint ptr %to_roam.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %22, ptr %to_roam.i, align 2
  br label %if.end58

if.else57:                                        ; preds = %land.lhs.true30.if.else57_crit_edge, %land.lhs.true.if.else57_crit_edge, %if.else17.if.else57_crit_edge, %if.then11.if.else57_crit_edge
  %to_join.i186 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %to_join.i186 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %to_join.i186, align 1
  %to_roam3.i188 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %to_roam3.i188 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %to_roam3.i188, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.else57, %rtw_set_to_roam.exit, %if.then46
  %call59 = call i32 @rtw_free_uc_swdec_pending_queue(ptr noundef %adapter) #21
  call void @rtw_free_assoc_resources(ptr noundef %adapter, i32 noundef 1)
  %27 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fw_state.i, align 4
  %and.i.i = and i32 %28, -385
  store i32 %and.i.i, ptr %fw_state.i, align 4
  %to_roam.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 4
  %29 = ptrtoint ptr %to_roam.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %to_roam.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp.not.i = icmp eq i8 %30, 0
  br i1 %cmp.not.i, label %if.then8.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #23
  %and.i21.i = and i32 %28, -386
  %31 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and.i21.i, ptr %fw_state.i, align 4
  br label %rtw_indicate_disconnect.exit

if.then8.i:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #23
  call void @rtw_os_indicate_disconnect(ptr noundef %adapter) #21
  call void @rtw_set_ips_deny(ptr noundef %adapter, i32 noundef 3000) #21
  %32 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fw_state.i, align 4
  %and.i26.i = and i32 %33, -2
  store i32 %and.i26.i, ptr %fw_state.i, align 4
  %set_scan_deny.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 29
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %set_scan_deny.i.i, i32 noundef 4) #21
  %34 = ptrtoint ptr %set_scan_deny.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 0, ptr %set_scan_deny.i.i, align 4
  br label %rtw_indicate_disconnect.exit

rtw_indicate_disconnect.exit:                     ; preds = %if.then8.i, %if.end.thread.i
  %call10.i = call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %adapter, i8 noundef zeroext 3, i8 noundef zeroext 1) #21
  %scanned_queue = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15
  %lock60 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock60) #21
  %mac_address = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i.i) #21
  %35 = call ptr @memset(ptr %zero_addr.i.i, i32 0, i32 6)
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i.i, ptr noundef dereferenceable(6) %mac_address, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %rtw_indicate_disconnect.exit.rtw_find_network.exit.thread_crit_edge, label %rtw_indicate_disconnect.exit.for.cond.i.i_crit_edge

rtw_indicate_disconnect.exit.for.cond.i.i_crit_edge: ; preds = %rtw_indicate_disconnect.exit
  br label %for.cond.i.i

rtw_indicate_disconnect.exit.rtw_find_network.exit.thread_crit_edge: ; preds = %rtw_indicate_disconnect.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_find_network.exit.thread

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %rtw_indicate_disconnect.exit.for.cond.i.i_crit_edge
  %plist.0.in.i.i = phi ptr [ %plist.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %scanned_queue, %rtw_indicate_disconnect.exit.for.cond.i.i_crit_edge ]
  %36 = ptrtoint ptr %plist.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %plist.0.i.i = load ptr, ptr %plist.0.in.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %plist.0.i.i, %scanned_queue
  br i1 %cmp.i.i.i, label %for.cond.i.i.rtw_find_network.exit.thread_crit_edge, label %for.body.i.i

for.cond.i.i.rtw_find_network.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_find_network.exit.thread

for.body.i.i:                                     ; preds = %for.cond.i.i
  %mac_address.i.i = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i, i32 0, i32 6, i32 1
  %bcmp19.i.i = call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address, ptr noundef dereferenceable(6) %mac_address.i.i, i32 6) #26
  %tobool6.not.i.i = icmp eq i32 %bcmp19.i.i, 0
  br i1 %tobool6.not.i.i, label %rtw_find_network.exit, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i.i

rtw_find_network.exit.thread:                     ; preds = %for.cond.i.i.rtw_find_network.exit.thread_crit_edge, %rtw_indicate_disconnect.exit.rtw_find_network.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i) #21
  br label %if.end66

rtw_find_network.exit:                            ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i) #21
  %tobool64.not = icmp eq ptr %plist.0.i.i, null
  br i1 %tobool64.not, label %rtw_find_network.exit.if.end66_crit_edge, label %if.end3.i.i

rtw_find_network.exit.if.end66_crit_edge:         ; preds = %rtw_find_network.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end66

if.end3.i.i:                                      ; preds = %rtw_find_network.exit
  %fixed = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %fixed to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %fixed, align 4
  %free_bss_pool.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 14
  %call.i.i.i.i190 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %plist.0.i.i) #21
  br i1 %call.i.i.i.i190, label %if.end.i.i.i.i, label %if.end3.i.i.list_del_init.exit.i.i_crit_edge

if.end3.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %plist.0.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i.i, align 4
  %40 = ptrtoint ptr %plist.0.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %plist.0.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end3.i.i.list_del_init.exit.i.i_crit_edge
  %44 = ptrtoint ptr %plist.0.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %plist.0.i.i, ptr %plist.0.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %plist.0.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %plist.0.i.i, ptr %prev.i3.i.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 14, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i9.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %plist.0.i.i, ptr noundef %47, ptr noundef %free_bss_pool.i.i) #21
  br i1 %call.i.i9.i.i, label %if.end.i.i10.i.i, label %list_del_init.exit.i.i.rtw_free_network_nolock.exit_crit_edge

list_del_init.exit.i.i.rtw_free_network_nolock.exit_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_free_network_nolock.exit

if.end.i.i10.i.i:                                 ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %48 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %plist.0.i.i, ptr %prev.i.i.i, align 4
  %49 = ptrtoint ptr %plist.0.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %free_bss_pool.i.i, ptr %plist.0.i.i, align 4
  %50 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev.i3.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %plist.0.i.i, ptr %47, align 4
  br label %rtw_free_network_nolock.exit

rtw_free_network_nolock.exit:                     ; preds = %if.end.i.i10.i.i, %list_del_init.exit.i.i.rtw_free_network_nolock.exit_crit_edge
  %num_of_scanned.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 17
  %52 = ptrtoint ptr %num_of_scanned.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_of_scanned.i.i, align 4
  %dec.i.i = add i32 %53, -1
  store i32 %dec.i.i, ptr %num_of_scanned.i.i, align 4
  call void @rtw_cfg80211_unlink_bss(ptr noundef %adapter, ptr noundef nonnull %plist.0.i.i) #21
  br label %if.end66

if.end66:                                         ; preds = %rtw_free_network_nolock.exit, %rtw_find_network.exit.if.end66_crit_edge, %rtw_find_network.exit.thread
  call void @_raw_spin_unlock_bh(ptr noundef %lock60) #21
  call void @_rtw_roaming(ptr noundef %adapter, ptr undef)
  br label %if.end69

if.end69:                                         ; preds = %if.end66, %if.end8.if.end69_crit_edge
  %54 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fw_state.i, align 4
  %56 = and i32 %55, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %if.end69.unlock_crit_edge, label %if.then74

if.end69.unlock_crit_edge:                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #23
  br label %unlock

if.then74:                                        ; preds = %if.end69
  %call75 = call i32 @rtw_free_stainfo(ptr noundef %adapter, ptr noundef %call) #21
  %asoc_sta_count = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11, i32 5
  %58 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %asoc_sta_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp77 = icmp eq i32 %59, 1
  br i1 %cmp77, label %if.then79, label %if.then74.unlock_crit_edge

if.then74.unlock_crit_edge:                       ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #23
  br label %unlock

if.then79:                                        ; preds = %if.then74
  %scanned_queue80 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15
  %lock81 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 15, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock81) #21
  %network83 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6
  %mac_address84 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero_addr.i.i199) #21
  %60 = call ptr @memset(ptr %zero_addr.i.i199, i32 0, i32 6)
  %bcmp.i.i200 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %zero_addr.i.i199, ptr noundef dereferenceable(6) %mac_address84, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i200)
  %tobool.not.i.i201 = icmp eq i32 %bcmp.i.i200, 0
  br i1 %tobool.not.i.i201, label %if.then79.rtw_find_network.exit211.thread_crit_edge, label %if.then79.for.cond.i.i205_crit_edge

if.then79.for.cond.i.i205_crit_edge:              ; preds = %if.then79
  br label %for.cond.i.i205

if.then79.rtw_find_network.exit211.thread_crit_edge: ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_find_network.exit211.thread

for.cond.i.i205:                                  ; preds = %for.body.i.i209.for.cond.i.i205_crit_edge, %if.then79.for.cond.i.i205_crit_edge
  %plist.0.in.i.i202 = phi ptr [ %plist.0.i.i203, %for.body.i.i209.for.cond.i.i205_crit_edge ], [ %scanned_queue80, %if.then79.for.cond.i.i205_crit_edge ]
  %61 = ptrtoint ptr %plist.0.in.i.i202 to i32
  call void @__asan_load4_noabort(i32 %61)
  %plist.0.i.i203 = load ptr, ptr %plist.0.in.i.i202, align 4
  %cmp.i.i.i204 = icmp eq ptr %plist.0.i.i203, %scanned_queue80
  br i1 %cmp.i.i.i204, label %for.cond.i.i205.rtw_find_network.exit211.thread_crit_edge, label %for.body.i.i209

for.cond.i.i205.rtw_find_network.exit211.thread_crit_edge: ; preds = %for.cond.i.i205
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_find_network.exit211.thread

for.body.i.i209:                                  ; preds = %for.cond.i.i205
  %mac_address.i.i206 = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i203, i32 0, i32 6, i32 1
  %bcmp19.i.i207 = call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address84, ptr noundef dereferenceable(6) %mac_address.i.i206, i32 6) #26
  %tobool6.not.i.i208 = icmp eq i32 %bcmp19.i.i207, 0
  br i1 %tobool6.not.i.i208, label %rtw_find_network.exit211, label %for.body.i.i209.for.cond.i.i205_crit_edge

for.body.i.i209.for.cond.i.i205_crit_edge:        ; preds = %for.body.i.i209
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i.i205

rtw_find_network.exit211.thread:                  ; preds = %for.cond.i.i205.rtw_find_network.exit211.thread_crit_edge, %if.then79.rtw_find_network.exit211.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i199) #21
  br label %if.end90

rtw_find_network.exit211:                         ; preds = %for.body.i.i209
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero_addr.i.i199) #21
  %tobool87.not = icmp eq ptr %plist.0.i.i203, null
  br i1 %tobool87.not, label %rtw_find_network.exit211.if.end90_crit_edge, label %if.end3.i.i218

rtw_find_network.exit211.if.end90_crit_edge:      ; preds = %rtw_find_network.exit211
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end90

if.end3.i.i218:                                   ; preds = %rtw_find_network.exit211
  %fixed89 = getelementptr inbounds %struct.wlan_network, ptr %plist.0.i.i203, i32 0, i32 2
  %62 = ptrtoint ptr %fixed89 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %fixed89, align 4
  %free_bss_pool.i.i212 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 14
  %call.i.i.i.i217 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %plist.0.i.i203) #21
  br i1 %call.i.i.i.i217, label %if.end.i.i.i.i221, label %if.end3.i.i218.list_del_init.exit.i.i225_crit_edge

if.end3.i.i218.list_del_init.exit.i.i225_crit_edge: ; preds = %if.end3.i.i218
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del_init.exit.i.i225

if.end.i.i.i.i221:                                ; preds = %if.end3.i.i218
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i.i.i219 = getelementptr inbounds %struct.list_head, ptr %plist.0.i.i203, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i.i.i219 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i.i.i219, align 4
  %65 = ptrtoint ptr %plist.0.i.i203 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %plist.0.i.i203, align 4
  %prev1.i.i.i.i.i220 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i.i.i220 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev1.i.i.i.i.i220, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %64, align 4
  br label %list_del_init.exit.i.i225

list_del_init.exit.i.i225:                        ; preds = %if.end.i.i.i.i221, %if.end3.i.i218.list_del_init.exit.i.i225_crit_edge
  %69 = ptrtoint ptr %plist.0.i.i203 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %plist.0.i.i203, ptr %plist.0.i.i203, align 4
  %prev.i3.i.i.i222 = getelementptr inbounds %struct.list_head, ptr %plist.0.i.i203, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i3.i.i.i222 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %plist.0.i.i203, ptr %prev.i3.i.i.i222, align 4
  %prev.i.i.i223 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 14, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i223 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i.i223, align 4
  %call.i.i9.i.i224 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %plist.0.i.i203, ptr noundef %72, ptr noundef %free_bss_pool.i.i212) #21
  br i1 %call.i.i9.i.i224, label %if.end.i.i10.i.i226, label %list_del_init.exit.i.i225.rtw_free_network_nolock.exit230_crit_edge

list_del_init.exit.i.i225.rtw_free_network_nolock.exit230_crit_edge: ; preds = %list_del_init.exit.i.i225
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_free_network_nolock.exit230

if.end.i.i10.i.i226:                              ; preds = %list_del_init.exit.i.i225
  call void @__sanitizer_cov_trace_pc() #23
  %73 = ptrtoint ptr %prev.i.i.i223 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %plist.0.i.i203, ptr %prev.i.i.i223, align 4
  %74 = ptrtoint ptr %plist.0.i.i203 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %free_bss_pool.i.i212, ptr %plist.0.i.i203, align 4
  %75 = ptrtoint ptr %prev.i3.i.i.i222 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev.i3.i.i.i222, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %plist.0.i.i203, ptr %72, align 4
  br label %rtw_free_network_nolock.exit230

rtw_free_network_nolock.exit230:                  ; preds = %if.end.i.i10.i.i226, %list_del_init.exit.i.i225.rtw_free_network_nolock.exit230_crit_edge
  %num_of_scanned.i.i227 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 17
  %77 = ptrtoint ptr %num_of_scanned.i.i227 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_of_scanned.i.i227, align 4
  %dec.i.i228 = add i32 %78, -1
  store i32 %dec.i.i228, ptr %num_of_scanned.i.i227, align 4
  call void @rtw_cfg80211_unlink_bss(ptr noundef %adapter, ptr noundef nonnull %plist.0.i.i203) #21
  br label %if.end90

if.end90:                                         ; preds = %rtw_free_network_nolock.exit230, %rtw_find_network.exit211.if.end90_crit_edge, %rtw_find_network.exit211.thread
  call void @_raw_spin_unlock_bh(ptr noundef %lock81) #21
  %dev_network = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36
  %mac_address96 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 1
  %ie_length.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 11
  %79 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %ie_length.i, align 1
  %add.i = add i32 %80, 104
  %81 = call ptr @memcpy(ptr %dev_network, ptr %network83, i32 %add.i)
  %ssid = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 3
  %assoc_ssid = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 18
  %82 = call ptr @memcpy(ptr %ssid, ptr %assoc_ssid, i32 36)
  %dot11PrivacyAlgrthm.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 1
  %83 = ptrtoint ptr %dot11PrivacyAlgrthm.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dot11PrivacyAlgrthm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.not.i231 = icmp ne i32 %84, 0
  %cond.i = zext i1 %cmp.not.i231 to i32
  %privacy.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 4
  %85 = ptrtoint ptr %privacy.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %cond.i, ptr %privacy.i, align 1
  %rssi.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 5
  %86 = ptrtoint ptr %rssi.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 0, ptr %rssi.i, align 1
  %wireless_mode.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 7
  %87 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %wireless_mode.i, align 2
  %switch.tableidx = add i8 %88, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %switch.tableidx)
  %89 = icmp ult i8 %switch.tableidx, 11
  br i1 %89, label %switch.hole_check, label %if.end90.sw.epilog.i_crit_edge

if.end90.sw.epilog.i_crit_edge:                   ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.i

switch.hole_check:                                ; preds = %if.end90
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 1671, %switch.maskindex
  %90 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %switch.lobit.not = icmp eq i16 %90, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #23
  %91 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.rtw_stadel_event_callback, i32 0, i32 %91
  %92 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %92)
  %switch.load = load i32, ptr %switch.gep, align 4
  %network_type_in_use3.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 6
  %93 = ptrtoint ptr %network_type_in_use3.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %switch.load, ptr %network_type_in_use3.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %switch.hole_check.sw.epilog.i_crit_edge, %if.end90.sw.epilog.i_crit_edge
  %channel.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 6
  %94 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %channel.i, align 1
  %conv4.i = zext i8 %95 to i32
  %ds_config.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 7, i32 3
  %96 = ptrtoint ptr %ds_config.i to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %conv4.i, ptr %ds_config.i, align 1
  %infrastructure_mode.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 8
  %97 = ptrtoint ptr %infrastructure_mode.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %infrastructure_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp5.i = icmp eq i32 %98, 0
  br i1 %cmp5.i, label %if.then.i232, label %sw.epilog.i.rtw_update_registrypriv_dev_network.exit_crit_edge

sw.epilog.i.rtw_update_registrypriv_dev_network.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_update_registrypriv_dev_network.exit

if.then.i232:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  %atim_window.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 7, i32 2
  %99 = ptrtoint ptr %atim_window.i to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 0, ptr %atim_window.i, align 1
  br label %rtw_update_registrypriv_dev_network.exit

rtw_update_registrypriv_dev_network.exit:         ; preds = %if.then.i232, %sw.epilog.i.rtw_update_registrypriv_dev_network.exit_crit_edge
  %registrypriv.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14
  %infrastructure_mode10.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 8
  %100 = ptrtoint ptr %infrastructure_mode10.i to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 %98, ptr %infrastructure_mode10.i, align 1
  %call.i = call i32 @rtw_generate_ie(ptr noundef %registrypriv.i) #21
  %ie_length.i233 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 11
  %101 = ptrtoint ptr %ie_length.i233 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %call.i, ptr %ie_length.i233, align 1
  %add.i.i = add i32 %call.i, 104
  %102 = ptrtoint ptr %dev_network to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 %add.i.i, ptr %dev_network, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %103 = load volatile i32, ptr @jiffies, align 128
  %104 = ptrtoint ptr %mac_address96 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 2, ptr %mac_address96, align 1
  %arrayidx1.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 1, i32 1
  %105 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 17, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 1, i32 2
  %106 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -121, ptr %arrayidx2.i, align 1
  %conv.i = trunc i32 %103 to i8
  %arrayidx3.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 1, i32 3
  %107 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv.i, ptr %arrayidx3.i, align 1
  %shr.i = lshr i32 %103, 8
  %conv5.i = trunc i32 %shr.i to i8
  %arrayidx6.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 1, i32 4
  %108 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  %shr7.i = lshr i32 %103, 16
  %conv9.i = trunc i32 %shr7.i to i8
  %arrayidx10.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 1, i32 5
  %109 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv9.i, ptr %arrayidx10.i, align 1
  %110 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %fw_state.i, align 4
  %112 = and i32 %111, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool102.not = icmp eq i32 %112, 0
  br i1 %tobool102.not, label %rtw_update_registrypriv_dev_network.exit.if.end104_crit_edge, label %if.then103

rtw_update_registrypriv_dev_network.exit.if.end104_crit_edge: ; preds = %rtw_update_registrypriv_dev_network.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end104

if.then103:                                       ; preds = %rtw_update_registrypriv_dev_network.exit
  call void @__sanitizer_cov_trace_pc() #23
  %or.i = and i32 %111, -97
  %and.i240 = or i32 %or.i, 64
  %113 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %and.i240, ptr %fw_state.i, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %rtw_update_registrypriv_dev_network.exit.if.end104_crit_edge
  %call105 = call zeroext i8 @rtw_createbss_cmd(ptr noundef %adapter) #21
  br label %unlock

unlock:                                           ; preds = %if.end104, %if.then74.unlock_crit_edge, %if.end69.unlock_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #21
  br label %cleanup114

cleanup114:                                       ; preds = %unlock, %if.end4.cleanup114_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlmeext_sta_del_event_callback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_uc_swdec_pending_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_roaming(ptr noundef %padapter, ptr nocapture readnone %tgt_network) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %to_roam.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %to_roam.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %to_roam.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  %assoc_ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 18
  %ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 3
  %2 = call ptr @memcpy(ptr %assoc_ssid, ptr %ssid, i32 36)
  %assoc_by_bssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 24
  %3 = ptrtoint ptr %assoc_by_bssid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %assoc_by_bssid, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.else.while.cond_crit_edge, %if.then
  %call3 = tail call zeroext i8 @rtw_do_join(ptr noundef %padapter) #21
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call3)
  %cmp5 = icmp eq i8 %call3, 1
  br i1 %cmp5, label %while.cond.if.end_crit_edge, label %if.else

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.else:                                          ; preds = %while.cond
  %4 = ptrtoint ptr %to_roam.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %to_roam.i, align 2
  %dec.i = add i8 %5, -1
  store i8 %dec.i, ptr %to_roam.i, align 2
  %cmp11.not = icmp eq i8 %dec.i, 0
  br i1 %cmp11.not, label %rtw_indicate_disconnect.exit, label %if.else.while.cond_crit_edge

if.else.while.cond_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.cond

rtw_indicate_disconnect.exit:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %7, -385
  store i32 %and.i.i, ptr %fw_state.i.i, align 4
  tail call void @rtw_os_indicate_disconnect(ptr noundef %padapter) #21
  tail call void @rtw_set_ips_deny(ptr noundef %padapter, i32 noundef 3000) #21
  %8 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_state.i.i, align 4
  %and.i26.i = and i32 %9, -2
  store i32 %and.i26.i, ptr %fw_state.i.i, align 4
  %set_scan_deny.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 29
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %set_scan_deny.i.i, i32 noundef 4) #21
  %10 = ptrtoint ptr %set_scan_deny.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %set_scan_deny.i.i, align 4
  %call10.i = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %padapter, i8 noundef zeroext 3, i8 noundef zeroext 1) #21
  br label %if.end

if.end:                                           ; preds = %rtw_indicate_disconnect.exit, %while.cond.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_cpwm_event_callback(ptr noundef %padapter, ptr noundef %pbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %cpwm_tog = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 4
  %2 = ptrtoint ptr %cpwm_tog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %cpwm_tog, align 1
  %add = xor i8 %3, -128
  %state = getelementptr inbounds %struct.reportpwrstate_parm, ptr %pbuf, i32 0, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state, align 1
  %or7 = or i8 %5, %add
  store i8 %or7, ptr %state, align 1
  tail call void @cpwm_int_hdl(ptr noundef %padapter, ptr noundef %pbuf) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpwm_int_hdl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_wmm_event_callback(ptr noundef %padapter, ptr nocapture noundef readnone %pbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @WMMOnAssocRsp(ptr noundef %padapter) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @WMMOnAssocRsp(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_join_timeout_handler(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1196
  %mlmepriv = getelementptr i8, ptr %t, i32 -1172
  %bDriverStopped = getelementptr i8, ptr %t, i32 16384
  %0 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup19_crit_edge

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup19

lor.lhs.false:                                    ; preds = %entry
  %bSurpriseRemoved = getelementptr i8, ptr %t, i32 16388
  %2 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup19_crit_edge

lor.lhs.false.cleanup19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup19

if.end:                                           ; preds = %lor.lhs.false
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #21
  %to_roam.i = getelementptr i8, ptr %t, i32 -1122
  %4 = ptrtoint ptr %to_roam.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %to_roam.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %rtw_indicate_disconnect.exit46, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.then9.while.cond_crit_edge, %if.end.while.cond_crit_edge
  %6 = ptrtoint ptr %to_roam.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %to_roam.i, align 2
  %dec.i = add i8 %7, -1
  store i8 %dec.i, ptr %to_roam.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %cmp7.not = icmp eq i8 %dec.i, 0
  br i1 %cmp7.not, label %rtw_indicate_disconnect.exit, label %if.then9

if.then9:                                         ; preds = %while.cond
  %call10 = tail call zeroext i8 @rtw_do_join(ptr noundef %add.ptr) #21
  %cmp12.not = icmp eq i8 %call10, 1
  br i1 %cmp12.not, label %if.then9.if.end17_crit_edge, label %if.then9.while.cond_crit_edge

if.then9.while.cond_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.cond

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end17

rtw_indicate_disconnect.exit:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #23
  %fw_state.i.i = getelementptr i8, ptr %t, i32 -1128
  %8 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %9, -385
  store i32 %and.i.i, ptr %fw_state.i.i, align 4
  tail call void @rtw_os_indicate_disconnect(ptr noundef %add.ptr) #21
  tail call void @rtw_set_ips_deny(ptr noundef %add.ptr, i32 noundef 3000) #21
  %10 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_state.i.i, align 4
  %and.i26.i = and i32 %11, -2
  store i32 %and.i26.i, ptr %fw_state.i.i, align 4
  %set_scan_deny.i.i = getelementptr i8, ptr %t, i32 156
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %set_scan_deny.i.i, i32 noundef 4) #21
  %12 = ptrtoint ptr %set_scan_deny.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %set_scan_deny.i.i, align 4
  %call10.i = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %add.ptr, i8 noundef zeroext 3, i8 noundef zeroext 1) #21
  br label %if.end17

rtw_indicate_disconnect.exit46:                   ; preds = %if.end
  %fw_state.i.i35 = getelementptr i8, ptr %t, i32 -1128
  %13 = ptrtoint ptr %fw_state.i.i35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_state.i.i35, align 4
  %and.i.i36 = and i32 %14, -385
  store i32 %and.i.i36, ptr %fw_state.i.i35, align 4
  tail call void @rtw_os_indicate_disconnect(ptr noundef %add.ptr) #21
  tail call void @rtw_set_ips_deny(ptr noundef %add.ptr, i32 noundef 3000) #21
  %15 = ptrtoint ptr %fw_state.i.i35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fw_state.i.i35, align 4
  %and.i26.i41 = and i32 %16, -2
  store i32 %and.i26.i41, ptr %fw_state.i.i35, align 4
  %set_scan_deny.i.i42 = getelementptr i8, ptr %t, i32 156
  %call.i.i.i.i43 = tail call zeroext i1 @__kasan_check_write(ptr noundef %set_scan_deny.i.i42, i32 noundef 4) #21
  %17 = ptrtoint ptr %set_scan_deny.i.i42 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %set_scan_deny.i.i42, align 4
  %call10.i45 = tail call zeroext i8 @rtw_lps_ctrl_wk_cmd(ptr noundef %add.ptr, i8 noundef zeroext 3, i8 noundef zeroext 1) #21
  %free_bss_pool.i = getelementptr i8, ptr %t, i32 -1084
  %scanned_queue.i = getelementptr i8, ptr %t, i32 -1032
  %lock.i = getelementptr i8, ptr %t, i32 -1024
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #21
  %lock1.i = getelementptr i8, ptr %t, i32 -1076
  tail call void @_raw_spin_lock_bh(ptr noundef %lock1.i) #21
  %18 = ptrtoint ptr %scanned_queue.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %scanned_queue.i, align 4
  %cmp.not18.i = icmp eq ptr %19, %scanned_queue.i
  br i1 %cmp.not18.i, label %rtw_indicate_disconnect.exit46.free_scanqueue.exit_crit_edge, label %while.body.lr.ph.i

rtw_indicate_disconnect.exit46.free_scanqueue.exit_crit_edge: ; preds = %rtw_indicate_disconnect.exit46
  call void @__sanitizer_cov_trace_pc() #23
  br label %free_scanqueue.exit

while.body.lr.ph.i:                               ; preds = %rtw_indicate_disconnect.exit46
  %prev.i.i = getelementptr i8, ptr %t, i32 -1080
  %num_of_scanned.i = getelementptr i8, ptr %t, i32 -976
  br label %while.body.i

while.body.i:                                     ; preds = %list_add_tail.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %plist.019.i = phi ptr [ %19, %while.body.lr.ph.i ], [ %21, %list_add_tail.exit.i.while.body.i_crit_edge ]
  %20 = ptrtoint ptr %plist.019.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %plist.019.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plist.019.i) #21
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %plist.019.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %plist.019.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %plist.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %28 = ptrtoint ptr %plist.019.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %plist.019.i, ptr %plist.019.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %plist.019.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %plist.019.i, ptr %prev.i3.i.i, align 4
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %call.i.i16.i = tail call zeroext i1 @__list_add_valid(ptr noundef %plist.019.i, ptr noundef %31, ptr noundef %free_bss_pool.i) #21
  br i1 %call.i.i16.i, label %if.end.i.i17.i, label %list_del_init.exit.i.list_add_tail.exit.i_crit_edge

list_del_init.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_add_tail.exit.i

if.end.i.i17.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %plist.019.i, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %plist.019.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %free_bss_pool.i, ptr %plist.019.i, align 4
  %34 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev.i3.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %plist.019.i, ptr %31, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i17.i, %list_del_init.exit.i.list_add_tail.exit.i_crit_edge
  %36 = ptrtoint ptr %num_of_scanned.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_of_scanned.i, align 4
  %dec.i47 = add i32 %37, -1
  store i32 %dec.i47, ptr %num_of_scanned.i, align 4
  %cmp.not.i48 = icmp eq ptr %21, %scanned_queue.i
  br i1 %cmp.not.i48, label %list_add_tail.exit.i.free_scanqueue.exit_crit_edge, label %list_add_tail.exit.i.while.body.i_crit_edge

list_add_tail.exit.i.while.body.i_crit_edge:      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body.i

list_add_tail.exit.i.free_scanqueue.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %free_scanqueue.exit

free_scanqueue.exit:                              ; preds = %list_add_tail.exit.i.free_scanqueue.exit_crit_edge, %rtw_indicate_disconnect.exit46.free_scanqueue.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock1.i) #21
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #21
  tail call void @rtw_cfg80211_indicate_disconnect(ptr noundef %add.ptr) #21
  br label %if.end17

if.end17:                                         ; preds = %free_scanqueue.exit, %rtw_indicate_disconnect.exit, %if.then9.if.end17_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #21
  br label %cleanup19

cleanup19:                                        ; preds = %if.end17, %lor.lhs.false.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_do_join(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_cfg80211_indicate_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_scan_timeout_handler(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1252
  %mlmepriv = getelementptr i8, ptr %t, i32 -1228
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #21
  %fw_state.i = getelementptr i8, ptr %t, i32 -1184
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %1, -2049
  store i32 %and.i, ptr %fw_state.i, align 4
  %bScanInProcess.i = getelementptr i8, ptr %t, i32 -1180
  %2 = ptrtoint ptr %bScanInProcess.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bScanInProcess.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #21
  tail call void @rtw_os_indicate_scan_done(ptr noundef %add.ptr, i1 noundef zeroext true) #21
  %dvobj.i = getelementptr i8, ptr %t, i32 -1232
  %3 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dvobj.i, align 4
  %bInSuspend.i = getelementptr inbounds %struct.dvobj_priv, ptr %4, i32 0, i32 22, i32 41
  %5 = ptrtoint ptr %bInSuspend.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bInSuspend.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %entry.rtw_indicate_scan_done.exit_crit_edge

entry.rtw_indicate_scan_done.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_indicate_scan_done.exit

land.lhs.true.i:                                  ; preds = %entry
  %7 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_state.i, align 4
  %and.i.i = and i32 %8, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.then.i, label %land.lhs.true.i.rtw_indicate_scan_done.exit_crit_edge

land.lhs.true.i.rtw_indicate_scan_done.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_indicate_scan_done.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @rtw_set_ips_deny(ptr noundef %add.ptr, i32 noundef 0) #21
  %dynamic_chk_timer.i = getelementptr i8, ptr %t, i32 188
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %call.i.i = tail call i32 @mod_timer(ptr noundef %dynamic_chk_timer.i, i32 noundef %9) #21
  br label %rtw_indicate_scan_done.exit

rtw_indicate_scan_done.exit:                      ; preds = %if.then.i, %land.lhs.true.i.rtw_indicate_scan_done.exit_crit_edge, %entry.rtw_indicate_scan_done.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_mlme_reset_auto_scan_int(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %VHT_enable = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5, i32 18, i32 34
  %0 = ptrtoint ptr %VHT_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %VHT_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end21.sink.split_crit_edge

entry.if.end21.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21.sink.split

if.else:                                          ; preds = %entry
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 48
  %2 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.else.if.else5_crit_edge, label %land.lhs.true

if.else.if.else5_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else5

land.lhs.true:                                    ; preds = %if.else
  %call = tail call i32 @is_client_associated_to_ap(ptr noundef %adapter) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %land.lhs.true.if.end21.sink.split_crit_edge, label %land.lhs.true.if.else5_crit_edge

land.lhs.true.if.else5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else5

land.lhs.true.if.end21.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21.sink.split

if.else5:                                         ; preds = %land.lhs.true.if.else5_crit_edge, %if.else.if.else5_crit_edge
  %roam_flags = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %roam_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %roam_flags, align 8
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %if.else5.if.end21.sink.split_crit_edge, label %if.then9

if.else5.if.end21.sink.split_crit_edge:           ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21.sink.split

if.then9:                                         ; preds = %if.else5
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_state.i, align 4
  %9 = and i32 %8, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %9)
  %.not = icmp eq i32 %9, 9
  br i1 %.not, label %if.then15, label %if.then9.if.end21_crit_edge

if.then9.if.end21_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21

if.then15:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #23
  %roam_scan_int_ms = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %roam_scan_int_ms to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %roam_scan_int_ms, align 4
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.then15, %if.else5.if.end21.sink.split_crit_edge, %land.lhs.true.if.end21.sink.split_crit_edge, %entry.if.end21.sink.split_crit_edge
  %.sink = phi i32 [ %11, %if.then15 ], [ 0, %entry.if.end21.sink.split_crit_edge ], [ 60000, %land.lhs.true.if.end21.sink.split_crit_edge ], [ 0, %if.else5.if.end21.sink.split_crit_edge ]
  %auto_scan_int_ms4 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 22
  %12 = ptrtoint ptr %auto_scan_int_ms4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %auto_scan_int_ms4, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.then9.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_client_associated_to_ap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_dynamic_check_timer_handler(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %adapter, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end:                                           ; preds = %entry
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 27
  %0 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_init_completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end3:                                          ; preds = %if.end
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 21
  %2 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end3.return_crit_edge

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

lor.lhs.false:                                    ; preds = %if.end3
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 22
  %4 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.end7, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end7:                                          ; preds = %lor.lhs.false
  %net_closed = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 49
  %6 = ptrtoint ptr %net_closed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %net_closed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end10:                                         ; preds = %if.end7
  %dvobj = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %8 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvobj, align 4
  %fw_current_in_ps_mode = getelementptr inbounds %struct.dvobj_priv, ptr %9, i32 0, i32 22, i32 36
  %10 = ptrtoint ptr %fw_current_in_ps_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fw_current_in_ps_mode, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  br i1 %tobool11.not, label %if.end10.if.else17_crit_edge, label %land.lhs.true

if.end10.if.else17_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else17

land.lhs.true:                                    ; preds = %if.end10
  %call = tail call zeroext i1 @hal_btcoex_IsBtControlLps(ptr noundef nonnull %adapter) #21
  br i1 %call, label %land.lhs.true.if.else17_crit_edge, label %if.then12

land.lhs.true.if.else17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else17

if.then12:                                        ; preds = %land.lhs.true
  tail call void @linked_status_chk(ptr noundef nonnull %adapter) #21
  %call13 = tail call zeroext i8 @traffic_status_watchdog(ptr noundef nonnull %adapter, i8 noundef zeroext 1) #21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call13)
  %tobool14.not = icmp eq i8 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end19_crit_edge, label %if.then15

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end19

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @rtw_hal_dm_watchdog_in_lps(ptr noundef nonnull %adapter) #21
  br label %if.end19

if.else17:                                        ; preds = %land.lhs.true.if.else17_crit_edge, %if.end10.if.else17_crit_edge
  %call18 = tail call zeroext i8 @rtw_dynamic_chk_wk_cmd(ptr noundef nonnull %adapter) #21
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then15, %if.then12.if.end19_crit_edge
  %VHT_enable.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5, i32 18, i32 34
  %12 = ptrtoint ptr %VHT_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %VHT_enable.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end19.if.end21.sink.split.i.i_crit_edge

if.end19.if.end21.sink.split.i.i_crit_edge:       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end19
  %wifi_spec.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 48
  %14 = ptrtoint ptr %wifi_spec.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wifi_spec.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool1.not.i.i, label %if.else.i.i.if.else5.i.i_crit_edge, label %land.lhs.true.i.i

if.else.i.i.if.else5.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else5.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  %call.i.i = tail call i32 @is_client_associated_to_ap(ptr noundef nonnull %adapter) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i.if.end21.sink.split.i.i_crit_edge, label %land.lhs.true.i.i.if.else5.i.i_crit_edge

land.lhs.true.i.i.if.else5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else5.i.i

land.lhs.true.i.i.if.end21.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21.sink.split.i.i

if.else5.i.i:                                     ; preds = %land.lhs.true.i.i.if.else5.i.i_crit_edge, %if.else.i.i.if.else5.i.i_crit_edge
  %roam_flags.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 6
  %16 = ptrtoint ptr %roam_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %roam_flags.i.i, align 8
  %18 = and i8 %17, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool8.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool8.not.i.i, label %if.else5.i.i.if.end21.sink.split.i.i_crit_edge, label %if.then9.i.i

if.else5.i.i.if.end21.sink.split.i.i_crit_edge:   ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21.sink.split.i.i

if.then9.i.i:                                     ; preds = %if.else5.i.i
  %fw_state.i.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %fw_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_state.i.i.i, align 4
  %21 = and i32 %20, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %21)
  %.not.i.i = icmp eq i32 %21, 9
  br i1 %.not.i.i, label %if.then15.i.i, label %if.then9.i.i.rtw_mlme_reset_auto_scan_int.exit.i_crit_edge

if.then9.i.i.rtw_mlme_reset_auto_scan_int.exit.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rtw_mlme_reset_auto_scan_int.exit.i

if.then15.i.i:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %roam_scan_int_ms.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 8
  %22 = ptrtoint ptr %roam_scan_int_ms.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %roam_scan_int_ms.i.i, align 4
  br label %if.end21.sink.split.i.i

if.end21.sink.split.i.i:                          ; preds = %if.then15.i.i, %if.else5.i.i.if.end21.sink.split.i.i_crit_edge, %land.lhs.true.i.i.if.end21.sink.split.i.i_crit_edge, %if.end19.if.end21.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ %23, %if.then15.i.i ], [ 0, %if.end19.if.end21.sink.split.i.i_crit_edge ], [ 60000, %land.lhs.true.i.i.if.end21.sink.split.i.i_crit_edge ], [ 0, %if.else5.i.i.if.end21.sink.split.i.i_crit_edge ]
  %auto_scan_int_ms4.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 22
  %24 = ptrtoint ptr %auto_scan_int_ms4.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink.i.i, ptr %auto_scan_int_ms4.i.i, align 4
  br label %rtw_mlme_reset_auto_scan_int.exit.i

rtw_mlme_reset_auto_scan_int.exit.i:              ; preds = %if.end21.sink.split.i.i, %if.then9.i.i.rtw_mlme_reset_auto_scan_int.exit.i_crit_edge
  %auto_scan_int_ms.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 22
  %25 = ptrtoint ptr %auto_scan_int_ms.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %auto_scan_int_ms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i = icmp eq i32 %26, 0
  br i1 %cmp.not.i, label %rtw_mlme_reset_auto_scan_int.exit.i.return_crit_edge, label %land.lhs.true.i

rtw_mlme_reset_auto_scan_int.exit.i.return_crit_edge: ; preds = %rtw_mlme_reset_auto_scan_int.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

land.lhs.true.i:                                  ; preds = %rtw_mlme_reset_auto_scan_int.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %scan_start_time.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 27
  %28 = ptrtoint ptr %scan_start_time.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %scan_start_time.i, align 4
  %sub.i = sub i32 %27, %29
  %call.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i) #21
  %30 = ptrtoint ptr %auto_scan_int_ms.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %auto_scan_int_ms.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %31)
  %cmp2.i = icmp ugt i32 %call.i, %31
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.then.i:                                        ; preds = %land.lhs.true.i
  %wifi_spec.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 48
  %32 = ptrtoint ptr %wifi_spec.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %wifi_spec.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.then.i.if.end10.i_crit_edge

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end10.i

if.then3.i:                                       ; preds = %if.then.i
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %35, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i20.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i20.not.i, label %if.end.i, label %if.then3.i.return_crit_edge

if.then3.i.return_crit_edge:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end.i:                                         ; preds = %if.then3.i
  %bBusyTraffic.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 34, i32 3
  %36 = ptrtoint ptr %bBusyTraffic.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bBusyTraffic.i, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool7.not.i = icmp eq i8 %37, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i.if.end10.i_crit_edge, %if.then.i.if.end10.i_crit_edge
  %call11.i = tail call zeroext i8 @rtw_set_802_11_bssid_list_scan(ptr noundef nonnull %adapter, ptr noundef null, i32 noundef 0) #21
  br label %return

return:                                           ; preds = %if.end10.i, %if.end.i.return_crit_edge, %if.then3.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %rtw_mlme_reset_auto_scan_int.exit.i.return_crit_edge, %if.end7.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hal_btcoex_IsBtControlLps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @linked_status_chk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @traffic_status_watchdog(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_dm_watchdog_in_lps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_dynamic_chk_wk_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtw_is_scan_deny(ptr noundef %adapter) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  %set_scan_deny = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %set_scan_deny, i32 noundef 4) #21
  %0 = ptrtoint ptr %set_scan_deny to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %set_scan_deny, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp ne i32 %1, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_disassoc_cmd(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_joinbss_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_set_auth(ptr noundef %adapter, ptr nocapture noundef readonly %psecuritypriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #21
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 4) #21
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @kfree(ptr noundef nonnull %call) #21
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %0 = ptrtoint ptr %psecuritypriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %psecuritypriv, align 8
  %conv = trunc i32 %1 to i8
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %call1, align 1
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 19, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %7 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rspsz, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i, align 4
  %call5 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call) #21
  br label %exit

exit:                                             ; preds = %if.end4, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i32 [ %call5, %if.end4 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_enqueue_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_set_key(ptr noundef %adapter, ptr nocapture noundef readonly %psecuritypriv, i32 noundef %keyid, i8 noundef zeroext %set_tx, i1 noundef zeroext %enqueue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 20) #21
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %psecuritypriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %psecuritypriv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.security_priv, ptr %psecuritypriv, i32 0, i32 1
  %dot118021XGrpPrivacy = getelementptr inbounds %struct.security_priv, ptr %psecuritypriv, i32 0, i32 6
  %storemerge.in.in = select i1 %cmp, ptr %dot118021XGrpPrivacy, ptr %dot11PrivacyAlgrthm
  %2 = ptrtoint ptr %storemerge.in.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %storemerge.in = load i32, ptr %storemerge.in.in, align 4
  %storemerge = trunc i32 %storemerge.in to i8
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %storemerge, ptr %call, align 1
  %conv5 = trunc i32 %keyid to i8
  %keyid6 = getelementptr inbounds %struct.setkey_parm, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %keyid6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv5, ptr %keyid6, align 1
  %set_tx7 = getelementptr inbounds %struct.setkey_parm, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %set_tx7 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %set_tx, ptr %set_tx7, align 1
  %6 = zext i8 %storemerge to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %storemerge, label %if.end.if.end21_crit_edge [
    i8 1, label %if.end.if.then16_crit_edge
    i8 5, label %if.end.if.then16_crit_edge95
  ]

if.end.if.then16_crit_edge95:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then16

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then16

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21

if.then16:                                        ; preds = %if.end.if.then16_crit_edge, %if.end.if.then16_crit_edge95
  %conv18 = and i32 %keyid, 255
  %shl = shl nuw i32 1, %conv18
  %key_mask = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 5
  %7 = ptrtoint ptr %key_mask to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %key_mask, align 4
  %9 = trunc i32 %shl to i8
  %conv20 = or i8 %8, %9
  store i8 %conv20, ptr %key_mask, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end.if.end21_crit_edge
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %call, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %11, label %sw.default [
    i8 1, label %sw.bb
    i8 5, label %sw.bb27
    i8 2, label %sw.bb34
    i8 4, label %sw.bb38
  ]

sw.bb:                                            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #23
  %key = getelementptr inbounds %struct.setkey_parm, ptr %call, i32 0, i32 4
  %arrayidx24 = getelementptr %struct.security_priv, ptr %psecuritypriv, i32 0, i32 3, i32 %keyid
  %13 = call ptr @memcpy(ptr %key, ptr %arrayidx24, i32 5)
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #23
  %key28 = getelementptr inbounds %struct.setkey_parm, ptr %call, i32 0, i32 4
  %arrayidx31 = getelementptr %struct.security_priv, ptr %psecuritypriv, i32 0, i32 3, i32 %keyid
  %14 = call ptr @memcpy(ptr %key28, ptr %arrayidx31, i32 13)
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #23
  %key35 = getelementptr inbounds %struct.setkey_parm, ptr %call, i32 0, i32 4
  %arrayidx36 = getelementptr %struct.security_priv, ptr %psecuritypriv, i32 0, i32 8, i32 %keyid
  %15 = call ptr @memcpy(ptr %key35, ptr %arrayidx36, i32 16)
  %grpkey = getelementptr inbounds %struct.setkey_parm, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %grpkey to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %grpkey, align 1
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #23
  %key39 = getelementptr inbounds %struct.setkey_parm, ptr %call, i32 0, i32 4
  %arrayidx41 = getelementptr %struct.security_priv, ptr %psecuritypriv, i32 0, i32 8, i32 %keyid
  %17 = call ptr @memcpy(ptr %key39, ptr %arrayidx41, i32 16)
  %grpkey43 = getelementptr inbounds %struct.setkey_parm, ptr %call, i32 0, i32 2
  %18 = ptrtoint ptr %grpkey43 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %grpkey43, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @kfree(ptr noundef nonnull %call) #21
  br label %exit

sw.epilog:                                        ; preds = %sw.bb38, %sw.bb34, %sw.bb27, %sw.bb
  br i1 %enqueue, label %if.then45, label %if.else51

if.then45:                                        ; preds = %sw.epilog
  %call46 = tail call ptr @_rtw_zmalloc(i32 noundef 36) #21
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @kfree(ptr noundef nonnull %call) #21
  br label %exit

if.end49:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #23
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call46, i32 0, i32 1
  %19 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 20, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call46, i32 0, i32 3
  %20 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call46, i32 0, i32 4
  %21 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 20, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call46, i32 0, i32 5
  %22 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call46, i32 0, i32 6
  %23 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rspsz, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call46, i32 0, i32 8
  %24 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call46, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list, ptr %prev.i, align 4
  %call50 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call46) #21
  br label %exit

if.else51:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  %call52 = tail call zeroext i8 @setkey_hdl(ptr noundef %adapter, ptr noundef nonnull %call) #21
  tail call void @kfree(ptr noundef nonnull %call) #21
  br label %exit

exit:                                             ; preds = %if.else51, %if.end49, %if.then48, %sw.default, %entry.exit_crit_edge
  %res.0 = phi i32 [ 0, %sw.default ], [ %call50, %if.end49 ], [ 0, %if.then48 ], [ 1, %if.else51 ], [ 0, %entry.exit_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @setkey_hdl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_restruct_wmm_ie(ptr nocapture noundef readnone %adapter, ptr nocapture noundef readonly %in_ie, ptr nocapture noundef writeonly %out_ie, i32 noundef %in_len, i32 noundef %initial_out_len) local_unnamed_addr #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %in_len)
  %cmp75 = icmp ugt i32 %in_len, 12
  br i1 %cmp75, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
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
  call void @__sanitizer_cov_trace_pc() #23
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
  call void @__sanitizer_cov_trace_pc() #23
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
  call void @__sanitizer_cov_trace_pc() #23
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
  call void @__sanitizer_cov_trace_pc() #23
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
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

for.cond.preheader:                               ; preds = %land.lhs.true19
  %add29 = add i32 %i.076, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %i.076)
  %cmp3078 = icmp ult i32 %i.076, -9
  br i1 %cmp3078, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #23
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
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
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
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %for.end, %entry.while.end_crit_edge
  %ielength.2 = phi i32 [ %ielength.1.lcssa, %for.end ], [ 0, %entry.while.end_crit_edge ], [ %initial_out_len, %if.end.while.end_crit_edge ]
  ret i32 %ielength.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_restruct_sec_ie(ptr noundef %adapter, ptr nocapture noundef readonly %in_ie, ptr nocapture noundef %out_ie, i32 noundef %in_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %ndisauthtype = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 35
  %0 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ndisauthtype, align 8
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
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr = getelementptr i8, ptr %out_ie, i32 12
  %wps_ie = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 23
  %wps_ie_len = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 24
  %7 = ptrtoint ptr %wps_ie_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wps_ie_len, align 8
  %9 = call ptr @memcpy(ptr %add.ptr, ptr %wps_ie, i32 %8)
  %10 = load i32, ptr %wps_ie_len, align 8
  %add = add i32 %10, 12
  br label %if.end29

if.else:                                          ; preds = %entry
  %11 = zext i8 %spec.select78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %spec.select78, label %if.else.if.end29_crit_edge [
    i8 -35, label %if.else.if.then15_crit_edge
    i8 48, label %if.else.if.then15_crit_edge91
  ]

if.else.if.then15_crit_edge91:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then15

if.else.if.then15_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then15

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end29

if.then15:                                        ; preds = %if.else.if.then15_crit_edge, %if.else.if.then15_crit_edge91
  %arrayidx = getelementptr i8, ptr %out_ie, i32 12
  %supplicant_ie = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 43
  %arrayidx18 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 12, i32 43, i32 1
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %13 to i32
  %add20 = add nuw nsw i32 %conv19, 2
  %14 = call ptr @memcpy(ptr %arrayidx, ptr %supplicant_ie, i32 %add20)
  %15 = load i8, ptr %arrayidx18, align 1
  %conv23 = zext i8 %15 to i32
  %add25 = add nuw nsw i32 %conv23, 14
  tail call void @rtw_report_sec_ie(ptr noundef %adapter, i8 noundef zeroext %spec.select78, ptr noundef %supplicant_ie) #21
  br label %if.end29

if.end29:                                         ; preds = %if.then15, %if.else.if.end29_crit_edge, %if.then7
  %ielength.0 = phi i32 [ %add, %if.then7 ], [ %add25, %if.then15 ], [ 12, %if.else.if.end29_crit_edge ]
  %assoc_bssid = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 19
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i.do.body.i_crit_edge, %if.end29
  %i.0.i = phi i32 [ 0, %if.end29 ], [ %inc.i, %if.else.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 12, i32 48, i32 %i.0.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i79 = icmp eq i8 %17, 0
  br i1 %tobool.not.i79, label %do.body.i.if.else.i_crit_edge, label %land.lhs.true.i

do.body.i.if.else.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %Bssid.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 12, i32 48, i32 %i.0.i, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.i, ptr noundef dereferenceable(6) %assoc_bssid, i32 6) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool3.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.body.i.if.else.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.else.i.cleanup_crit_edge, label %if.else.i.do.body.i_crit_edge

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0.i)
  %cmp5.i = icmp ne i32 %i.0.i, 16
  %or.cond84 = select i1 %cmp5.i, i1 %switch77, i1 false
  br i1 %or.cond84, label %if.then39, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #23
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
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then.i:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #23
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
  %PMKID.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 12, i32 48, i32 %i.0.i, i32 2
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
declare dso_local void @rtw_report_sec_ie(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_init_registrypriv_dev_network(ptr nocapture noundef %adapter) local_unnamed_addr #19 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 15, i32 4
  %mac_address = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 1
  %0 = call ptr @memcpy(ptr %mac_address, ptr %mac_addr.i, i32 6)
  %ssid = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 3
  %ssid1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 4
  %1 = call ptr @memcpy(ptr %ssid, ptr %ssid1, i32 36)
  %configuration = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 7
  %2 = ptrtoint ptr %configuration to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 16, ptr %configuration, align 1
  %beacon_period = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 36, i32 7, i32 1
  %3 = ptrtoint ptr %beacon_period to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 100, ptr %beacon_period, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_generate_ie(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_joinbss_reset(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %threshold = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %threshold) #21
  %htpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33
  %num_FortyMHzIntolerant = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 32
  %0 = ptrtoint ptr %num_FortyMHzIntolerant to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %num_FortyMHzIntolerant, align 4
  %num_sta_no_ht = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 31
  %1 = ptrtoint ptr %num_sta_no_ht to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %num_sta_no_ht, align 4
  %ampdu_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 1
  %2 = ptrtoint ptr %ampdu_enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ampdu_enable, align 1
  %3 = ptrtoint ptr %htpriv to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 48
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
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 39, ptr noundef nonnull %threshold) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %threshold) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_ht_use_default_setting(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %bHwLDPCSupport = alloca i8, align 1
  %bHwSTBCSupport = alloca i8, align 1
  %bHwSupportBeamformer = alloca i8, align 1
  %bHwSupportBeamformee = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bHwLDPCSupport) #21
  %0 = ptrtoint ptr %bHwLDPCSupport to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bHwLDPCSupport, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bHwSTBCSupport) #21
  %1 = ptrtoint ptr %bHwSTBCSupport to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bHwSTBCSupport, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bHwSupportBeamformer) #21
  %2 = ptrtoint ptr %bHwSupportBeamformer to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bHwSupportBeamformer, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bHwSupportBeamformee) #21
  %3 = ptrtoint ptr %bHwSupportBeamformee to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bHwSupportBeamformee, align 1
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 48
  %4 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp ne i8 %5, 0
  %spec.select = zext i1 %tobool.not to i8
  %6 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.select, ptr %6, align 1
  %short_gi = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 42
  %8 = ptrtoint ptr %short_gi to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %short_gi, align 1
  %10 = lshr i8 %9, 1
  %.lobit = and i8 %10, 1
  %sgi_40m = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 9
  %11 = ptrtoint ptr %sgi_40m to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.lobit, ptr %sgi_40m, align 1
  %12 = and i8 %9, 1
  %sgi_20m = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 8
  %13 = ptrtoint ptr %sgi_20m to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %sgi_20m, align 2
  %call = call zeroext i8 @rtw_hal_get_def_var(ptr noundef %padapter, i32 noundef 12, ptr noundef nonnull %bHwLDPCSupport) #21
  %ldpc_cap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 12
  %14 = ptrtoint ptr %ldpc_cap to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %ldpc_cap, align 2
  %15 = ptrtoint ptr %bHwLDPCSupport to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bHwLDPCSupport, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool11.not = icmp eq i8 %16, 0
  br i1 %tobool11.not, label %entry.if.end23_crit_edge, label %if.then12

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end23

if.then12:                                        ; preds = %entry
  %ldpc_cap13 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 43
  %17 = ptrtoint ptr %ldpc_cap13 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ldpc_cap13, align 4
  %19 = and i8 %18, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp16.not = icmp eq i8 %19, 0
  br i1 %cmp16.not, label %if.then12.if.end23_crit_edge, label %if.then18

if.then12.if.end23_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end23

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #23
  %20 = ptrtoint ptr %ldpc_cap to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %ldpc_cap, align 2
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.then12.if.end23_crit_edge, %entry.if.end23_crit_edge
  %call24 = call zeroext i8 @rtw_hal_get_def_var(ptr noundef %padapter, i32 noundef 11, ptr noundef nonnull %bHwLDPCSupport) #21
  %21 = ptrtoint ptr %bHwLDPCSupport to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bHwLDPCSupport, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool25.not = icmp eq i8 %22, 0
  br i1 %tobool25.not, label %if.end23.if.end38_crit_edge, label %if.then26

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end38

if.then26:                                        ; preds = %if.end23
  %ldpc_cap27 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 43
  %23 = ptrtoint ptr %ldpc_cap27 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ldpc_cap27, align 4
  %25 = and i8 %24, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp30.not = icmp eq i8 %25, 0
  br i1 %cmp30.not, label %if.then26.if.end38_crit_edge, label %if.then32

if.then26.if.end38_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end38

if.then32:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #23
  %26 = ptrtoint ptr %ldpc_cap to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ldpc_cap, align 2
  %28 = or i8 %27, 2
  store i8 %28, ptr %ldpc_cap, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.then26.if.end38_crit_edge, %if.end23.if.end38_crit_edge
  %call39 = call zeroext i8 @rtw_hal_get_def_var(ptr noundef %padapter, i32 noundef 13, ptr noundef nonnull %bHwSTBCSupport) #21
  %stbc_cap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 13
  %29 = ptrtoint ptr %stbc_cap to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %stbc_cap, align 1
  %30 = ptrtoint ptr %bHwSTBCSupport to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bHwSTBCSupport, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool40.not = icmp eq i8 %31, 0
  br i1 %tobool40.not, label %if.end38.if.end53_crit_edge, label %if.then41

if.end38.if.end53_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end53

if.then41:                                        ; preds = %if.end38
  %stbc_cap42 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 44
  %32 = ptrtoint ptr %stbc_cap42 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %stbc_cap42, align 1
  %34 = and i8 %33, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp45.not = icmp eq i8 %34, 0
  br i1 %cmp45.not, label %if.then41.if.end53_crit_edge, label %if.then47

if.then41.if.end53_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end53

if.then47:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #23
  %35 = ptrtoint ptr %stbc_cap to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %stbc_cap, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.then47, %if.then41.if.end53_crit_edge, %if.end38.if.end53_crit_edge
  %call54 = call zeroext i8 @rtw_hal_get_def_var(ptr noundef %padapter, i32 noundef 14, ptr noundef nonnull %bHwSTBCSupport) #21
  %36 = ptrtoint ptr %bHwSTBCSupport to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bHwSTBCSupport, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool55.not = icmp eq i8 %37, 0
  br i1 %tobool55.not, label %if.end53.if.end68_crit_edge, label %if.then56

if.end53.if.end68_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end68

if.then56:                                        ; preds = %if.end53
  %stbc_cap57 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 44
  %38 = ptrtoint ptr %stbc_cap57 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %stbc_cap57, align 1
  %40 = and i8 %39, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp60.not = icmp eq i8 %40, 0
  br i1 %cmp60.not, label %if.then56.if.end68_crit_edge, label %if.then62

if.then56.if.end68_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end68

if.then62:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #23
  %41 = ptrtoint ptr %stbc_cap to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %stbc_cap, align 1
  %43 = or i8 %42, 1
  store i8 %43, ptr %stbc_cap, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %if.then56.if.end68_crit_edge, %if.end53.if.end68_crit_edge
  %call69 = call zeroext i8 @rtw_hal_get_def_var(ptr noundef %padapter, i32 noundef 15, ptr noundef nonnull %bHwSupportBeamformer) #21
  %call70 = call zeroext i8 @rtw_hal_get_def_var(ptr noundef %padapter, i32 noundef 16, ptr noundef nonnull %bHwSupportBeamformee) #21
  %beamform_cap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 14
  %44 = ptrtoint ptr %beamform_cap to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %beamform_cap, align 4
  %beamform_cap71 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 45
  %45 = ptrtoint ptr %beamform_cap71 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %beamform_cap71, align 2
  %47 = and i8 %46, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp74.not = icmp eq i8 %47, 0
  br i1 %cmp74.not, label %if.end68.if.end83_crit_edge, label %land.lhs.true

if.end68.if.end83_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end83

land.lhs.true:                                    ; preds = %if.end68
  %48 = ptrtoint ptr %bHwSupportBeamformer to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bHwSupportBeamformer, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool76.not = icmp eq i8 %49, 0
  br i1 %tobool76.not, label %land.lhs.true.if.end83_crit_edge, label %if.then78

land.lhs.true.if.end83_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end83

if.then78:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  %50 = ptrtoint ptr %beamform_cap to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %beamform_cap, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %land.lhs.true.if.end83_crit_edge, %if.end68.if.end83_crit_edge
  %51 = and i8 %46, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp87.not = icmp eq i8 %51, 0
  br i1 %cmp87.not, label %if.end83.if.end97_crit_edge, label %land.lhs.true89

if.end83.if.end97_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end97

land.lhs.true89:                                  ; preds = %if.end83
  %52 = ptrtoint ptr %bHwSupportBeamformee to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bHwSupportBeamformee, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool90.not = icmp eq i8 %53, 0
  br i1 %tobool90.not, label %land.lhs.true89.if.end97_crit_edge, label %if.then92

land.lhs.true89.if.end97_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end97

if.then92:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #23
  %54 = ptrtoint ptr %beamform_cap to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %beamform_cap, align 4
  %56 = or i8 %55, 2
  store i8 %56, ptr %beamform_cap, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then92, %land.lhs.true89.if.end97_crit_edge, %if.end83.if.end97_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bHwSupportBeamformee) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bHwSupportBeamformer) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bHwSTBCSupport) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bHwLDPCSupport) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_hal_get_def_var(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_build_wmm_ie_ht(ptr nocapture noundef %padapter, ptr noundef %out_ie, ptr noundef %pout_len) local_unnamed_addr #0 align 64 {
entry:
  %WMM_IE = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %WMM_IE) #21
  %0 = call ptr @memcpy(ptr %WMM_IE, ptr @__const.rtw_build_wmm_ie_ht.WMM_IE, i32 7)
  %qospriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 30
  %1 = ptrtoint ptr %qospriv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %qospriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %3 = ptrtoint ptr %pout_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pout_len, align 4
  %add.ptr = getelementptr i8, ptr %out_ie, i32 %4
  %call = call ptr @rtw_set_ie(ptr noundef %add.ptr, i32 noundef 221, i32 noundef 7, ptr noundef nonnull %WMM_IE, ptr noundef %pout_len) #21
  %5 = ptrtoint ptr %qospriv to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %qospriv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %WMM_IE) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_set_ie(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_restructure_ht_ie(ptr noundef %padapter, ptr noundef %in_ie, ptr noundef %out_ie, i32 noundef %in_len, ptr noundef %pout_len, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  %ielen = alloca i32, align 4
  %max_rx_ampdu_factor = alloca i32, align 4
  %ht_capie = alloca %struct.ieee80211_ht_cap, align 2
  %rx_packet_offset = alloca i32, align 4
  %max_recvbuf_sz = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ielen) #21
  %0 = ptrtoint ptr %ielen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ielen, align 4, !annotation !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_rx_ampdu_factor) #21
  %1 = ptrtoint ptr %max_rx_ampdu_factor to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %max_rx_ampdu_factor, align 4, !annotation !26
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %ht_capie) #21
  %2 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %ht_capie, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %ht_capie, i32 0, i32 2
  %htpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33
  %4 = ptrtoint ptr %htpriv to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %htpriv, align 4
  %5 = ptrtoint ptr %pout_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pout_len, align 4
  %7 = getelementptr inbounds i8, ptr %ht_capie, i32 2
  %8 = call ptr @memset(ptr %7, i32 0, i32 24)
  %sgi_20m = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 8
  %9 = ptrtoint ptr %sgi_20m to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sgi_20m, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %spec.store.select = select i1 %tobool.not, i16 16, i16 8208
  %11 = ptrtoint ptr %ht_capie to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %spec.store.select, ptr %ht_capie, align 2
  %tobool3.not = icmp eq ptr %in_ie, null
  br i1 %tobool3.not, label %if.then4, label %if.else13

if.then4:                                         ; preds = %entry
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_state.i, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %if.then4.if.end29_crit_edge, label %if.then6

if.then4.if.end29_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end29

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #23
  %cur_bwmode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %15 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cur_bwmode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %17 = icmp ne i8 %16, 0
  br label %if.end29

if.else13:                                        ; preds = %entry
  %call14 = call ptr @rtw_get_ie(ptr noundef nonnull %in_ie, i32 noundef 61, ptr noundef nonnull %ielen, i32 noundef %in_len) #21
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.else13.if.end29_crit_edge, label %land.lhs.true

if.else13.if.end29_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end29

land.lhs.true:                                    ; preds = %if.else13
  %18 = ptrtoint ptr %ielen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %19)
  %cmp16 = icmp eq i32 %19, 22
  br i1 %cmp16, label %if.then18, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end29

if.then18:                                        ; preds = %land.lhs.true
  %infos = getelementptr i8, ptr %call14, i32 3
  %20 = ptrtoint ptr %infos to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %infos, align 1
  %conv19 = zext i8 %21 to i32
  %and = and i32 %conv19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.then18.if.end29_crit_edge, label %if.then21

if.then18.if.end29_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end29

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #23
  %and25 = and i32 %conv19, 3
  %22 = add nsw i32 %and25, -1
  %switch.and = and i32 %22, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %if.then18.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %if.else13.if.end29_crit_edge, %if.then6, %if.then4.if.end29_crit_edge
  %operation_bw.1.shrunk = phi i1 [ false, %land.lhs.true.if.end29_crit_edge ], [ false, %if.else13.if.end29_crit_edge ], [ %17, %if.then6 ], [ true, %if.then4.if.end29_crit_edge ], [ %switch.selectcmp, %if.then21 ], [ false, %if.then18.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %channel)
  %cmp31 = icmp ugt i8 %channel, 14
  %bw_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 38
  %23 = ptrtoint ptr %bw_mode to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bw_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %24)
  %cmp36.not = icmp ugt i8 %24, 15
  %25 = and i8 %24, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp44.not = icmp ne i8 %25, 0
  %cmp50 = select i1 %cmp31, i1 %cmp36.not, i1 %cmp44.not
  %or.cond = select i1 %cmp50, i1 %operation_bw.1.shrunk, i1 false
  br i1 %or.cond, label %if.then56, label %if.end29.if.end68_crit_edge

if.end29.if.end68_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end68

if.then56:                                        ; preds = %if.end29
  %26 = ptrtoint ptr %ht_capie to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ht_capie, align 2
  %28 = or i16 %27, 512
  store i16 %28, ptr %ht_capie, align 2
  %sgi_40m = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 9
  %29 = ptrtoint ptr %sgi_40m to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sgi_40m, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool61.not = icmp eq i8 %30, 0
  br i1 %tobool61.not, label %if.then56.if.end68_crit_edge, label %if.then62

if.then56.if.end68_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end68

if.then62:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #23
  %31 = or i16 %27, 16896
  %32 = ptrtoint ptr %ht_capie to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %ht_capie, align 2
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %if.then56.if.end68_crit_edge, %if.end29.if.end68_crit_edge
  %stbc_cap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 13
  %33 = ptrtoint ptr %stbc_cap to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %stbc_cap, align 1
  %35 = and i8 %34, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp71.not = icmp eq i8 %35, 0
  br i1 %cmp71.not, label %if.end68.if.end78_crit_edge, label %if.then73

if.end68.if.end78_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end78

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #23
  %36 = ptrtoint ptr %ht_capie to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ht_capie, align 2
  %38 = or i16 %37, -32768
  store i16 %38, ptr %ht_capie, align 2
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %if.end68.if.end78_crit_edge
  %39 = ptrtoint ptr %ht_capie to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %ht_capie, align 2
  %41 = or i16 %40, 3072
  store i16 %41, ptr %ht_capie, align 2
  %42 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp86.not = icmp eq i8 %42, 0
  br i1 %cmp86.not, label %if.end101, label %if.then88

if.then88:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %channel)
  %cmp90 = icmp ult i8 %channel, 15
  br i1 %cmp90, label %land.lhs.true92, label %if.then88.lor.lhs.false_crit_edge

if.then88.lor.lhs.false_crit_edge:                ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #23
  br label %lor.lhs.false

land.lhs.true92:                                  ; preds = %if.then88
  %rx_stbc = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 40
  %43 = ptrtoint ptr %rx_stbc to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rx_stbc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp94 = icmp eq i8 %44, 1
  br i1 %cmp94, label %land.lhs.true92.if.then103.critedge_crit_edge, label %land.lhs.true92.lor.lhs.false_crit_edge

land.lhs.true92.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #23
  br label %lor.lhs.false

land.lhs.true92.if.then103.critedge_crit_edge:    ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then103.critedge

lor.lhs.false:                                    ; preds = %land.lhs.true92.lor.lhs.false_crit_edge, %if.then88.lor.lhs.false_crit_edge
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 48
  %45 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp97 = icmp eq i8 %46, 1
  br i1 %cmp97, label %lor.lhs.false.if.then103.critedge_crit_edge, label %if.end108.critedge

lor.lhs.false.if.then103.critedge_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then103.critedge

if.end101:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #23
  %default_supported_mcs_set = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16
  %47 = call ptr @memcpy(ptr %3, ptr %default_supported_mcs_set, i32 16)
  br label %if.end108

if.then103.critedge:                              ; preds = %lor.lhs.false.if.then103.critedge_crit_edge, %land.lhs.true92.if.then103.critedge_crit_edge
  %default_supported_mcs_set.c190 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16
  %48 = call ptr @memcpy(ptr %3, ptr %default_supported_mcs_set.c190, i32 16)
  %49 = or i16 %40, 3073
  %50 = ptrtoint ptr %ht_capie to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %ht_capie, align 2
  br label %if.end108

if.end108.critedge:                               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  %default_supported_mcs_set.c = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16
  %51 = call ptr @memcpy(ptr %3, ptr %default_supported_mcs_set.c, i32 16)
  br label %if.end108

if.end108:                                        ; preds = %if.end108.critedge, %if.then103.critedge, %if.end101
  call void @set_mcs_rate_by_mask(ptr noundef %3, i32 noundef 255) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_packet_offset) #21
  %52 = ptrtoint ptr %rx_packet_offset to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %rx_packet_offset, align 4, !annotation !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_recvbuf_sz) #21
  %53 = ptrtoint ptr %max_recvbuf_sz to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %max_recvbuf_sz, align 4, !annotation !26
  %call111 = call zeroext i8 @rtw_hal_get_def_var(ptr noundef %padapter, i32 noundef 5, ptr noundef nonnull %rx_packet_offset) #21
  %call112 = call zeroext i8 @rtw_hal_get_def_var(ptr noundef %padapter, i32 noundef 4, ptr noundef nonnull %max_recvbuf_sz) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_recvbuf_sz) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_packet_offset) #21
  %driver_rx_ampdu_factor = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 62
  %54 = ptrtoint ptr %driver_rx_ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %driver_rx_ampdu_factor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %55)
  %cmp114.not = icmp eq i8 %55, -1
  br i1 %cmp114.not, label %if.else119, label %if.then116

if.then116:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #23
  %conv113 = zext i8 %55 to i32
  %56 = ptrtoint ptr %max_rx_ampdu_factor to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv113, ptr %max_rx_ampdu_factor, align 4
  br label %if.end121

if.else119:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #23
  %call120 = call zeroext i8 @rtw_hal_get_def_var(ptr noundef %padapter, i32 noundef 17, ptr noundef nonnull %max_rx_ampdu_factor) #21
  br label %if.end121

if.end121:                                        ; preds = %if.else119, %if.then116
  %57 = ptrtoint ptr %max_rx_ampdu_factor to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_rx_ampdu_factor, align 4
  %59 = trunc i32 %58 to i8
  %conv123 = and i8 %59, 3
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  %60 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %61)
  %cmp124 = icmp eq i32 %61, 4
  %62 = or i8 %conv123, 28
  %storemerge = select i1 %cmp124, i8 %62, i8 %conv123
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %storemerge, ptr %2, align 2
  %add.ptr137 = getelementptr i8, ptr %out_ie, i32 %6
  %call138 = call ptr @rtw_set_ie(ptr noundef %add.ptr137, i32 noundef 45, i32 noundef 26, ptr noundef nonnull %ht_capie, ptr noundef %pout_len) #21
  %64 = ptrtoint ptr %htpriv to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %htpriv, align 4
  br i1 %tobool3.not, label %if.end121.if.end152_crit_edge, label %if.then141

if.end121.if.end152_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end152

if.then141:                                       ; preds = %if.end121
  %call142 = call ptr @rtw_get_ie(ptr noundef nonnull %in_ie, i32 noundef 61, ptr noundef nonnull %ielen, i32 noundef %in_len) #21
  %tobool143.not = icmp eq ptr %call142, null
  br i1 %tobool143.not, label %if.then141.if.end152_crit_edge, label %land.lhs.true144

if.then141.if.end152_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end152

land.lhs.true144:                                 ; preds = %if.then141
  %65 = ptrtoint ptr %ielen to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %66)
  %cmp145 = icmp eq i32 %66, 22
  br i1 %cmp145, label %if.then147, label %land.lhs.true144.if.end152_crit_edge

land.lhs.true144.if.end152_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end152

if.then147:                                       ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #23
  %67 = ptrtoint ptr %pout_len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pout_len, align 4
  %add.ptr148 = getelementptr i8, ptr %out_ie, i32 %68
  %add.ptr149 = getelementptr i8, ptr %call142, i32 2
  %call150 = call ptr @rtw_set_ie(ptr noundef %add.ptr148, i32 noundef 61, i32 noundef 22, ptr noundef %add.ptr149, ptr noundef %pout_len) #21
  br label %if.end152

if.end152:                                        ; preds = %if.then147, %land.lhs.true144.if.end152_crit_edge, %if.then141.if.end152_crit_edge, %if.end121.if.end152_crit_edge
  %69 = ptrtoint ptr %htpriv to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %htpriv, align 4
  %conv154 = zext i8 %70 to i32
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %ht_capie) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_rx_ampdu_factor) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ielen) #21
  ret i32 %conv154
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_mcs_rate_by_mask(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_update_ht_cap(ptr noundef %padapter, ptr noundef %pie, i32 noundef %ie_len, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #21
  %htpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33
  %0 = ptrtoint ptr %htpriv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %HT_info_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 22
  %2 = ptrtoint ptr %HT_info_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %HT_info_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %HT_caps_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 21
  %4 = ptrtoint ptr %HT_caps_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %HT_caps_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %ampdu_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 1
  %6 = ptrtoint ptr %ampdu_enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ampdu_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end4
  %ampdu_enable6 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 39
  %8 = ptrtoint ptr %ampdu_enable6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ampdu_enable6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp eq i8 %9, 1
  br i1 %cmp, label %if.then8, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  %10 = ptrtoint ptr %ampdu_enable to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %ampdu_enable, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %len, align 4
  %add.ptr = getelementptr i8, ptr %pie, i32 12
  %sub = add i32 %ie_len, -12
  %call = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 45, ptr noundef nonnull %len, i32 noundef %sub) #21
  %tobool11.not = icmp eq ptr %call, null
  br i1 %tobool11.not, label %if.end10.if.end22_crit_edge, label %land.lhs.true12

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end22

land.lhs.true12:                                  ; preds = %if.end10
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp13 = icmp sgt i32 %13, 0
  br i1 %cmp13, label %if.then15, label %land.lhs.true12.if.end22_crit_edge

land.lhs.true12.if.end22_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end22

if.then15:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #23
  %ampdu_params_info = getelementptr i8, ptr %call, i32 4
  %14 = ptrtoint ptr %ampdu_params_info to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ampdu_params_info, align 1
  %16 = and i8 %15, 3
  %shl = shl nuw nsw i8 8, %16
  %conv21 = zext i8 %shl to i32
  %rx_ampdu_maxlen = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 5
  %17 = ptrtoint ptr %rx_ampdu_maxlen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv21, ptr %rx_ampdu_maxlen, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %land.lhs.true12.if.end22_crit_edge, %if.end10.if.end22_crit_edge
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %len, align 4
  %call25 = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 61, ptr noundef nonnull %len, i32 noundef %sub) #21
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %channel)
  %cmp33 = icmp ugt i8 %channel, 14
  %bw_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 38
  %19 = ptrtoint ptr %bw_mode to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bw_mode, align 1
  br i1 %cmp33, label %if.then35, label %if.end49

if.then35:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %20)
  %cmp38.not = icmp ult i8 %20, 16
  br i1 %cmp38.not, label %if.then35.if.end82_crit_edge, label %if.then35.land.lhs.true52_crit_edge

if.then35.land.lhs.true52_crit_edge:              ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #23
  br label %land.lhs.true52

if.then35.if.end82_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end82

if.end49:                                         ; preds = %if.end22
  %21 = and i8 %20, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp45.not = icmp eq i8 %21, 0
  br i1 %cmp45.not, label %if.end49.if.end82_crit_edge, label %if.end49.land.lhs.true52_crit_edge

if.end49.land.lhs.true52_crit_edge:               ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #23
  br label %land.lhs.true52

if.end49.if.end82_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end82

land.lhs.true52:                                  ; preds = %if.end49.land.lhs.true52_crit_edge, %if.then35.land.lhs.true52_crit_edge
  %HT_caps = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37
  %22 = ptrtoint ptr %HT_caps to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %HT_caps, align 4
  %24 = and i16 %23, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool55.not = icmp eq i16 %24, 0
  br i1 %tobool55.not, label %land.lhs.true52.if.end82_crit_edge, label %land.lhs.true56

land.lhs.true52.if.end82_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end82

land.lhs.true56:                                  ; preds = %land.lhs.true52
  %infos = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 38, i32 1
  %25 = ptrtoint ptr %infos to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %infos, align 1
  %27 = and i8 %26, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool59.not = icmp eq i8 %27, 0
  br i1 %tobool59.not, label %land.lhs.true56.if.end82_crit_edge, label %for.body.preheader

land.lhs.true56.if.end82_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end82

for.body.preheader:                               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx63 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 0
  %28 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx63, align 1
  %arrayidx67 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 0
  %30 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx67, align 1
  %and69133 = and i8 %31, %29
  store i8 %and69133, ptr %arrayidx67, align 1
  %arrayidx63.1 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 1
  %32 = ptrtoint ptr %arrayidx63.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx63.1, align 1
  %arrayidx67.1 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %arrayidx67.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx67.1, align 1
  %and69133.1 = and i8 %35, %33
  store i8 %and69133.1, ptr %arrayidx67.1, align 1
  %arrayidx63.2 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 2
  %36 = ptrtoint ptr %arrayidx63.2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx63.2, align 1
  %arrayidx67.2 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %arrayidx67.2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx67.2, align 1
  %and69133.2 = and i8 %39, %37
  store i8 %and69133.2, ptr %arrayidx67.2, align 1
  %arrayidx63.3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 3
  %40 = ptrtoint ptr %arrayidx63.3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx63.3, align 1
  %arrayidx67.3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %arrayidx67.3 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx67.3, align 1
  %and69133.3 = and i8 %43, %41
  store i8 %and69133.3, ptr %arrayidx67.3, align 1
  %arrayidx63.4 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 4
  %44 = ptrtoint ptr %arrayidx63.4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx63.4, align 1
  %arrayidx67.4 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 4
  %46 = ptrtoint ptr %arrayidx67.4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx67.4, align 1
  %and69133.4 = and i8 %47, %45
  store i8 %and69133.4, ptr %arrayidx67.4, align 1
  %arrayidx63.5 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 5
  %48 = ptrtoint ptr %arrayidx63.5 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx63.5, align 1
  %arrayidx67.5 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 5
  %50 = ptrtoint ptr %arrayidx67.5 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx67.5, align 1
  %and69133.5 = and i8 %51, %49
  store i8 %and69133.5, ptr %arrayidx67.5, align 1
  %arrayidx63.6 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 6
  %52 = ptrtoint ptr %arrayidx63.6 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx63.6, align 1
  %arrayidx67.6 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 6
  %54 = ptrtoint ptr %arrayidx67.6 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx67.6, align 1
  %and69133.6 = and i8 %55, %53
  store i8 %and69133.6, ptr %arrayidx67.6, align 1
  %arrayidx63.7 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 7
  %56 = ptrtoint ptr %arrayidx63.7 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx63.7, align 1
  %arrayidx67.7 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 7
  %58 = ptrtoint ptr %arrayidx67.7 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx67.7, align 1
  %and69133.7 = and i8 %59, %57
  store i8 %and69133.7, ptr %arrayidx67.7, align 1
  %arrayidx63.8 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 8
  %60 = ptrtoint ptr %arrayidx63.8 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx63.8, align 1
  %arrayidx67.8 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 8
  %62 = ptrtoint ptr %arrayidx67.8 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx67.8, align 1
  %and69133.8 = and i8 %63, %61
  store i8 %and69133.8, ptr %arrayidx67.8, align 1
  %arrayidx63.9 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 9
  %64 = ptrtoint ptr %arrayidx63.9 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx63.9, align 1
  %arrayidx67.9 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 9
  %66 = ptrtoint ptr %arrayidx67.9 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx67.9, align 1
  %and69133.9 = and i8 %67, %65
  store i8 %and69133.9, ptr %arrayidx67.9, align 1
  %arrayidx63.10 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 10
  %68 = ptrtoint ptr %arrayidx63.10 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx63.10, align 1
  %arrayidx67.10 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 10
  %70 = ptrtoint ptr %arrayidx67.10 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx67.10, align 1
  %and69133.10 = and i8 %71, %69
  store i8 %and69133.10, ptr %arrayidx67.10, align 1
  %arrayidx63.11 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 11
  %72 = ptrtoint ptr %arrayidx63.11 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx63.11, align 1
  %arrayidx67.11 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 11
  %74 = ptrtoint ptr %arrayidx67.11 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx67.11, align 1
  %and69133.11 = and i8 %75, %73
  store i8 %and69133.11, ptr %arrayidx67.11, align 1
  %arrayidx63.12 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 12
  %76 = ptrtoint ptr %arrayidx63.12 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx63.12, align 1
  %arrayidx67.12 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 12
  %78 = ptrtoint ptr %arrayidx67.12 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx67.12, align 1
  %and69133.12 = and i8 %79, %77
  store i8 %and69133.12, ptr %arrayidx67.12, align 1
  %arrayidx63.13 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 13
  %80 = ptrtoint ptr %arrayidx63.13 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx63.13, align 1
  %arrayidx67.13 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 13
  %82 = ptrtoint ptr %arrayidx67.13 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx67.13, align 1
  %and69133.13 = and i8 %83, %81
  store i8 %and69133.13, ptr %arrayidx67.13, align 1
  %arrayidx63.14 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 14
  %84 = ptrtoint ptr %arrayidx63.14 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx63.14, align 1
  %arrayidx67.14 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 14
  %86 = ptrtoint ptr %arrayidx67.14 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx67.14, align 1
  %and69133.14 = and i8 %87, %85
  store i8 %and69133.14, ptr %arrayidx67.14, align 1
  %arrayidx63.15 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16, i32 15
  %88 = ptrtoint ptr %arrayidx63.15 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx63.15, align 1
  %arrayidx67.15 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 2, i32 15
  %90 = ptrtoint ptr %arrayidx67.15 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx67.15, align 1
  %and69133.15 = and i8 %91, %89
  store i8 %and69133.15, ptr %arrayidx67.15, align 1
  call void @set_mcs_rate_by_mask(ptr noundef %arrayidx67, i32 noundef 255) #21
  %92 = ptrtoint ptr %infos to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %infos, align 1
  %94 = and i8 %93, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %94)
  %switch.selectcmp = icmp eq i8 %94, 3
  %switch.select = select i1 %switch.selectcmp, i8 2, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %94)
  %switch.selectcmp136 = icmp eq i8 %94, 1
  %switch.select137 = select i1 %switch.selectcmp136, i8 1, i8 %switch.select
  %cur_ch_offset = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 9
  %95 = ptrtoint ptr %cur_ch_offset to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %switch.select137, ptr %cur_ch_offset, align 2
  br label %if.end82

if.end82:                                         ; preds = %for.body.preheader, %land.lhs.true56.if.end82_crit_edge, %land.lhs.true52.if.end82_crit_edge, %if.end49.if.end82_crit_edge, %if.then35.if.end82_crit_edge
  %HT_caps83 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37
  %96 = ptrtoint ptr %HT_caps83 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %HT_caps83, align 4
  %98 = lshr i16 %97, 10
  %99 = trunc i16 %98 to i8
  %conv88 = and i8 %99, 3
  %SM_PS = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 26
  %100 = ptrtoint ptr %SM_PS to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv88, ptr %SM_PS, align 2
  %arrayidx91 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 38, i32 1, i32 1
  %101 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx91, align 1
  %103 = and i8 %102, 3
  %HT_protection = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 23
  %104 = ptrtoint ptr %HT_protection to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %HT_protection, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_issue_addbareq_cmd(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %0 = ptrtoint ptr %ra to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ra, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %LinkDetectInfo = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34
  %3 = ptrtoint ptr %LinkDetectInfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %LinkDetectInfo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %4)
  %cmp = icmp ult i32 %4, 100
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %priority1 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 16
  %5 = ptrtoint ptr %priority1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %priority1, align 2
  %conv = zext i8 %6 to i32
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call4 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ra) #21
  %psta5 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 45
  %7 = ptrtoint ptr %psta5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %psta5, align 4
  %cmp6.not = icmp ne ptr %8, %call4
  %tobool10.not = icmp eq ptr %call4, null
  %or.cond = or i1 %tobool10.not, %cmp6.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct.sta_info, ptr %call4, i32 0, i32 8
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 8
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %htpriv = getelementptr inbounds %struct.sta_info, ptr %call4, i32 0, i32 38
  %11 = ptrtoint ptr %htpriv to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool17.not = icmp eq i8 %12, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %land.lhs.true

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end15
  %ampdu_enable = getelementptr inbounds %struct.sta_info, ptr %call4, i32 0, i32 38, i32 1
  %13 = ptrtoint ptr %ampdu_enable to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ampdu_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool19.not = icmp eq i8 %14, 0
  br i1 %tobool19.not, label %land.lhs.true.cleanup_crit_edge, label %if.then20

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then20:                                        ; preds = %land.lhs.true
  %agg_enable_bitmap = getelementptr inbounds %struct.sta_info, ptr %call4, i32 0, i32 38, i32 10
  %15 = ptrtoint ptr %agg_enable_bitmap to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %agg_enable_bitmap, align 4
  %candidate_tid_bitmap = getelementptr inbounds %struct.sta_info, ptr %call4, i32 0, i32 38, i32 11
  %17 = ptrtoint ptr %candidate_tid_bitmap to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %candidate_tid_bitmap, align 1
  %shr6970 = or i8 %18, %16
  %shr69 = zext i8 %shr6970 to i32
  %19 = shl nuw i32 1, %conv
  %20 = and i32 %19, %shr69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp30 = icmp eq i32 %20, 0
  br i1 %cmp30, label %if.then32, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then32:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #23
  %21 = trunc i32 %19 to i8
  %conv39 = or i8 %18, %21
  %22 = ptrtoint ptr %candidate_tid_bitmap to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv39, ptr %candidate_tid_bitmap, align 1
  %call43 = tail call zeroext i8 @rtw_addbareq_cmd(ptr noundef %padapter, i8 noundef zeroext %6, ptr noundef %ra) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.then20.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_addbareq_cmd(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_append_exented_cap(ptr nocapture noundef readonly %padapter, ptr noundef %out_ie, ptr noundef %pout_len) local_unnamed_addr #0 align 64 {
entry:
  %cap_content = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cap_content) #21
  %0 = ptrtoint ptr %cap_content to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %cap_content, align 8
  %bss_coexist = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 3
  %1 = ptrtoint ptr %bss_coexist to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bss_coexist, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %3 = ptrtoint ptr %cap_content to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cap_content, align 8
  %5 = or i8 %4, 1
  store i8 %5, ptr %cap_content, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %pout_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pout_len, align 4
  %add.ptr = getelementptr i8, ptr %out_ie, i32 %7
  %call = call ptr @rtw_set_ie(ptr noundef %add.ptr, i32 noundef 127, i32 noundef 8, ptr noundef nonnull %cap_content, ptr noundef %pout_len) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cap_content) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_roaming(ptr noundef %padapter, ptr nocapture noundef readnone %tgt_network) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #21
  tail call void @_rtw_roaming(ptr noundef %padapter, ptr undef)
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_linked_check(ptr nocapture noundef readonly %padapter) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 4
  %2 = and i32 %1, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %asoc_sta_count = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 5
  %4 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asoc_sta_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp4 = icmp sgt i32 %5, 2
  br i1 %cmp4, label %if.then.return_crit_edge, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end11

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.else:                                          ; preds = %entry
  %and.i20 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.not.i21.not = icmp eq i32 %and.i20, 0
  br i1 %tobool.not.i21.not, label %if.else.if.end11_crit_edge, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end11

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.then.if.end11_crit_edge
  br label %return

return:                                           ; preds = %if.end11, %if.else.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 1, %if.then.return_crit_edge ], [ 1, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_update_protection(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_sta_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_rateset_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_update_sta_rate_mask(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @networktype_to_raid_ex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_set_802_11_bssid_list_scan(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #21

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #22 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #22 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { nounwind }
attributes #22 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #23 = { nomerge }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nobuiltin }
attributes #26 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !14, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @rtw_init_mlme_priv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme.c", i32 29, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @rtw_init_mlme_priv.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme.c", i32 31, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtw_init_mlme_priv.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme.c", i32 33, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"retry", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme.c", i32 1160, i32 27}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/rtl8723bs/core/rtw_mlme.c", i32 1218, i32 5}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rtw_joinbss_event_prehandle.__UNIQUE_ID_ddebug345, !12, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"auto-init"}
!27 = !{i64 2148922905, i64 2148922910, i64 2148922923, i64 2148922967, i64 2148923001, i64 2148923022}
!28 = !{i8 0, i8 2}
