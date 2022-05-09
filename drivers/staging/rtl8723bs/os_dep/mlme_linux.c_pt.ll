; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/os_dep/mlme_linux.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/os_dep/mlme_linux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rt_pmkid_list = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
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
%struct.atomic_t = type { i32 }
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
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }

@rtw_init_mlme_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&pmlmepriv->assoc_timer)\00", [38 x i8] zeroinitializer }, align 32
@rtw_init_mlme_timer.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&pmlmepriv->scan_to_timer)\00", [36 x i8] zeroinitializer }, align 32
@rtw_init_mlme_timer.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(&pmlmepriv->dynamic_chk_timer)\00", [32 x i8] zeroinitializer }, align 32
@rtw_init_mlme_timer.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(&pmlmepriv->set_scan_deny_timer)\00", [62 x i8] zeroinitializer }, align 32
@backupPMKIDList = internal global { [16 x %struct.rt_pmkid_list], [256 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ASSOCINFO(ReqIEs =\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c")\00", [30 x i8] zeroinitializer }, align 32
@init_addba_retry_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&psta->addba_retry_timer)\00", [37 x i8] zeroinitializer }, align 32
@init_mlme_ext_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&pmlmeext->survey_timer)\00", [38 x i8] zeroinitializer }, align 32
@init_mlme_ext_timer.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&pmlmeext->link_timer)\00", [40 x i8] zeroinitializer }, align 32
@init_mlme_ext_timer.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&pmlmeext->sa_query_timer)\00", [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 32, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 33, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 34, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 36, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"backupPMKIDList\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 62, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 148, i32 49 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 154, i32 50 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 156, i32 49 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 170, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 177, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 178, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [49 x i8] c"../drivers/staging/rtl8723bs/os_dep/mlme_linux.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 179, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @rtw_init_mlme_timer.__key, ptr @.str, ptr @rtw_init_mlme_timer.__key.1, ptr @.str.2, ptr @rtw_init_mlme_timer.__key.3, ptr @.str.4, ptr @rtw_init_mlme_timer.__key.5, ptr @.str.6, ptr @backupPMKIDList, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @init_addba_retry_timer.__key, ptr @.str.10, ptr @init_mlme_ext_timer.__key, ptr @.str.11, ptr @init_mlme_ext_timer.__key.12, ptr @.str.13, ptr @init_mlme_ext_timer.__key.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_mlme_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_mlme_timer.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_mlme_timer.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_mlme_timer.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backupPMKIDList to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_addba_retry_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_mlme_ext_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_mlme_ext_timer.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_mlme_ext_timer.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_init_mlme_timer(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %assoc_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 23
  tail call void @init_timer_key(ptr noundef %assoc_timer, ptr noundef nonnull @_rtw_join_timeout_handler, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @rtw_init_mlme_timer.__key) #2
  %scan_to_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26
  tail call void @init_timer_key(ptr noundef %scan_to_timer, ptr noundef nonnull @rtw_scan_timeout_handler, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @rtw_init_mlme_timer.__key.1) #2
  %dynamic_chk_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 35
  tail call void @init_timer_key(ptr noundef %dynamic_chk_timer, ptr noundef nonnull @_dynamic_check_timer_handler, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @rtw_init_mlme_timer.__key.3) #2
  %set_scan_deny_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 28
  tail call void @init_timer_key(ptr noundef %set_scan_deny_timer, ptr noundef nonnull @_rtw_set_scan_deny_timer_hdl, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @rtw_init_mlme_timer.__key.5) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtw_join_timeout_handler(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_scan_timeout_handler(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_dynamic_check_timer_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1440
  tail call void @rtw_dynamic_check_timer_handler(ptr noundef %add.ptr) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %0, 200
  %call.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtw_set_scan_deny_timer_hdl(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1304
  tail call void @rtw_clear_scan_deny(ptr noundef %add.ptr) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_os_indicate_connect(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 4
  %2 = and i32 %1, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @rtw_cfg80211_ibss_indicate_connect(ptr noundef %adapter) #2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @rtw_cfg80211_indicate_connect(ptr noundef %adapter) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %4 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pnetdev, align 8
  tail call void @netif_carrier_on(ptr noundef %5) #2
  %arrayidx = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.not = icmp eq i32 %7, 0
  br i1 %cmp3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %call7 = tail call ptr @find_vpid(i32 noundef %7) #2
  %call8 = tail call i32 @kill_pid(ptr noundef %call7, i32 noundef 14, i32 noundef 1) #2
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_cfg80211_ibss_indicate_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_cfg80211_indicate_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_os_indicate_scan_done(ptr noundef %padapter, i1 noundef zeroext %aborted) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw_cfg80211_indicate_scan_done(ptr noundef %padapter, i1 noundef zeroext %aborted) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_cfg80211_indicate_scan_done(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_reset_securitypriv(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %security_key_mutex = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %security_key_mutex) #2
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %securitypriv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %PMKIDList = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 48
  %2 = call ptr @memcpy(ptr @backupPMKIDList, ptr %PMKIDList, i32 1024)
  %PMKIDIndex = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 49
  %3 = ptrtoint ptr %PMKIDIndex to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %PMKIDIndex, align 8
  %btkip_countermeasure = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 45
  %5 = ptrtoint ptr %btkip_countermeasure to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %btkip_countermeasure, align 8
  %btkip_countermeasure_time = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 47
  %7 = ptrtoint ptr %btkip_countermeasure_time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %btkip_countermeasure_time, align 4
  %mgnt_80211w_IPN_rx = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5, i32 6
  %9 = ptrtoint ptr %mgnt_80211w_IPN_rx to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %mgnt_80211w_IPN_rx, align 8
  %10 = call ptr @memset(ptr %securitypriv, i32 0, i32 6936)
  %11 = call ptr @memcpy(ptr %PMKIDList, ptr @backupPMKIDList, i32 1024)
  store i8 %4, ptr %PMKIDIndex, align 8
  store i8 %6, ptr %btkip_countermeasure, align 8
  store i32 %8, ptr %btkip_countermeasure_time, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %12 = ptrtoint ptr %securitypriv to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %securitypriv, align 8
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %dot11PrivacyAlgrthm, align 4
  %dot11PrivacyKeyIndex = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 2
  %14 = ptrtoint ptr %dot11PrivacyKeyIndex to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dot11PrivacyKeyIndex, align 8
  %dot118021XGrpPrivacy = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 6
  %15 = ptrtoint ptr %dot118021XGrpPrivacy to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %dot118021XGrpPrivacy, align 8
  %dot118021XGrpKeyid = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 7
  %16 = ptrtoint ptr %dot118021XGrpKeyid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %dot118021XGrpKeyid, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 35
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %17, align 8
  %19 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 36
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %19, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %security_key_mutex) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_os_indicate_disconnect(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %0 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnetdev, align 8
  tail call void @netif_carrier_off(ptr noundef %1) #2
  tail call void @rtw_cfg80211_indicate_disconnect(ptr noundef %adapter) #2
  %call = tail call zeroext i8 @rtw_reset_securitypriv_cmd(ptr noundef %adapter) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_cfg80211_indicate_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_reset_securitypriv_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_report_sec_ie(ptr nocapture noundef readnone %adapter, i8 noundef zeroext %authmode, ptr nocapture noundef readonly %sec_ie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %authmode)
  %cmp = icmp eq i8 %authmode, -35
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 256) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call, i32 noundef 256, ptr noundef nonnull @.str.7) #2
  %add.ptr = getelementptr i8, ptr %call, i32 %call3
  %arrayidx = getelementptr i8, ptr %sec_ie, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %1)
  %cmp5 = icmp ult i8 %1, -2
  %conv4 = zext i8 %1 to i32
  %add = add nuw nsw i32 %conv4, 2
  %cond = select i1 %cmp5, i32 %add, i32 256
  %sub.ptr.sub12.neg = add i32 %sub.ptr.lhs.cast, 256
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %conv769 = phi i32 [ 0, %if.end ], [ %conv7, %for.body.for.body_crit_edge ]
  %i.068 = phi i8 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %p.067 = phi ptr [ %add.ptr, %if.end ], [ %add.ptr17, %for.body.for.body_crit_edge ]
  %sub.ptr.lhs.cast10 = ptrtoint ptr %p.067 to i32
  %sub13 = sub i32 %sub.ptr.sub12.neg, %sub.ptr.lhs.cast10
  %arrayidx14 = getelementptr i8, ptr %sec_ie, i32 %conv769
  %2 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %3 to i32
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.067, i32 noundef %sub13, ptr noundef nonnull @.str.8, i32 noundef %conv15) #2
  %add.ptr17 = getelementptr i8, ptr %p.067, i32 %call16
  %inc = add i8 %i.068, 1
  %conv7 = zext i8 %inc to i32
  %cmp8 = icmp ugt i32 %cond, %conv7
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %sub.ptr.lhs.cast18 = ptrtoint ptr %add.ptr17 to i32
  %sub21 = sub i32 %sub.ptr.sub12.neg, %sub.ptr.lhs.cast18
  %call22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub21, ptr noundef nonnull @.str.9) #2
  tail call void @kfree(ptr noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_zmalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_addba_retry_timer(ptr nocapture noundef readnone %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %addba_retry_timer = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 35
  tail call void @init_timer_key(ptr noundef %addba_retry_timer, ptr noundef nonnull @addba_timer_hdl, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_addba_retry_timer.__key) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @addba_timer_hdl(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_mlme_ext_timer(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %survey_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 19
  tail call void @init_timer_key(ptr noundef %survey_timer, ptr noundef nonnull @survey_timer_hdl, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_mlme_ext_timer.__key) #2
  %link_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 20
  tail call void @init_timer_key(ptr noundef %link_timer, ptr noundef nonnull @link_timer_hdl, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_mlme_ext_timer.__key.12) #2
  %sa_query_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 21
  tail call void @init_timer_key(ptr noundef %sa_query_timer, ptr noundef nonnull @sa_query_timer_hdl, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_mlme_ext_timer.__key.14) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @survey_timer_hdl(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @link_timer_hdl(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sa_query_timer_hdl(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_dynamic_check_timer_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_clear_scan_deny(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !16, !18, !20, !21, !23, !24, !26, !27, !29, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @rtw_init_mlme_timer.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/os_dep/mlme_linux.c", i32 32, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @rtw_init_mlme_timer.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/rtl8723bs/os_dep/mlme_linux.c", i32 33, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtw_init_mlme_timer.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/os_dep/mlme_linux.c", i32 34, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rtw_init_mlme_timer.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8723bs/os_dep/mlme_linux.c", i32 36, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8723bs/os_dep/mlme_linux.c", i32 148, i32 49}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8723bs/os_dep/mlme_linux.c", i32 154, i32 50}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8723bs/os_dep/mlme_linux.c", i32 156, i32 49}
!18 = !{ptr @init_addba_retry_timer.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8723bs/os_dep/mlme_linux.c", i32 170, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @init_mlme_ext_timer.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8723bs/os_dep/mlme_linux.c", i32 177, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @init_mlme_ext_timer.__key.12, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8723bs/os_dep/mlme_linux.c", i32 178, i32 2}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @init_mlme_ext_timer.__key.14, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8723bs/os_dep/mlme_linux.c", i32 179, i32 2}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @backupPMKIDList, !31, !"backupPMKIDList", i1 false, i1 false}
!31 = !{!"../drivers/staging/rtl8723bs/os_dep/mlme_linux.c", i32 62, i32 31}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
