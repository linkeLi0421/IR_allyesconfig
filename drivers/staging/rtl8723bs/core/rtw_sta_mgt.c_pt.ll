; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/core/rtw_sta_mgt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.ht_priv = type { i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, i8, i8, i32, i32, i32, [32 x ptr], i16, i16, i16, %struct.wlan_acl_pool }
%struct.wlan_acl_pool = type { i32, i32, [16 x %struct.rtw_wlan_acl_node], %struct.__queue }
%struct.rtw_wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.spinlock, %struct.registry_priv, %struct.eeprom_priv, ptr, i32, ptr, i32, %struct.hal_ops, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, %struct.rtw_wdev_priv, i32, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, i8, i32, i32, [6 x i8], ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.timer_list, %struct.atomic_t, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect_t, %struct.timer_list, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i8, i32 }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.wlan_bcn_info }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.ndis_802_11_conf, i32, [16 x i8], %struct.wlan_phy_info, i32, [768 x i8] }
%struct.ndis_802_11_conf = type { i32, i32, i32, i32 }
%struct.wlan_phy_info = type { i8, i8, i8, i8 }
%struct.wlan_bcn_info = type { i8, i32, i32, i32, i16, i8 }
%struct.atomic_t = type { i32 }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.101, i32 }
%union.anon.101 = type { ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.signal_stat = type { i8, i8, i32, i32 }
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
%struct.hw_xmit = type { ptr, i32 }

@_rtw_init_stainfo.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&psta->lock\00", [20 x i8] zeroinitializer }, align 32
@_rtw_init_stainfo.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&psta->sleep_q.lock\00", [44 x i8] zeroinitializer }, align 32
@_rtw_init_sta_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&pstapriv->free_sta_queue.lock\00", [33 x i8] zeroinitializer }, align 32
@_rtw_init_sta_priv.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&pstapriv->sta_hash_lock\00", [39 x i8] zeroinitializer }, align 32
@_rtw_init_sta_priv.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&pstapriv->sleep_q.lock\00", [40 x i8] zeroinitializer }, align 32
@_rtw_init_sta_priv.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&pstapriv->wakeup_q.lock\00", [39 x i8] zeroinitializer }, align 32
@_rtw_init_sta_priv.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&pstapriv->asoc_list_lock\00", [38 x i8] zeroinitializer }, align 32
@_rtw_init_sta_priv.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&pstapriv->auth_list_lock\00", [38 x i8] zeroinitializer }, align 32
@rtw_alloc_stainfo.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"&preorder_ctrl->pending_recvframe_queue.lock\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 15, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 23, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 67, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 69, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 74, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 76, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 95, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 96, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [48 x i8] c"../drivers/staging/rtl8723bs/core/rtw_sta_mgt.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 250, i32 4 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @_rtw_init_stainfo.__key, ptr @.str, ptr @_rtw_init_stainfo.__key.1, ptr @.str.2, ptr @_rtw_init_sta_priv.__key, ptr @.str.3, ptr @_rtw_init_sta_priv.__key.4, ptr @.str.5, ptr @_rtw_init_sta_priv.__key.6, ptr @.str.7, ptr @_rtw_init_sta_priv.__key.8, ptr @.str.9, ptr @_rtw_init_sta_priv.__key.10, ptr @.str.11, ptr @_rtw_init_sta_priv.__key.12, ptr @.str.13, ptr @rtw_alloc_stainfo.__key, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_stainfo.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_stainfo.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_sta_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_sta_priv.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_sta_priv.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_sta_priv.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_sta_priv.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_init_sta_priv.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_alloc_stainfo.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_init_stainfo(ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %psta, i32 0, i32 3152)
  tail call void @__raw_spin_lock_init(ptr noundef %psta, ptr noundef nonnull @.str, ptr noundef nonnull @_rtw_init_stainfo.__key, i16 noundef signext 3) #6
  %list = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 4
  %hash_list = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 2
  %3 = ptrtoint ptr %hash_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %hash_list, ptr %hash_list, align 4
  %prev.i28 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i28 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hash_list, ptr %prev.i28, align 4
  %sleep_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 6
  %5 = ptrtoint ptr %sleep_q to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %sleep_q, ptr %sleep_q, align 4
  %prev.i29 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 6, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i29 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sleep_q, ptr %prev.i29, align 4
  %lock3 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 6, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock3, ptr noundef nonnull @.str.2, ptr noundef nonnull @_rtw_init_stainfo.__key.1, i16 noundef signext 3) #6
  %sleepq_len = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 7
  %7 = ptrtoint ptr %sleepq_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sleepq_len, align 4
  %sta_xmitpriv = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4
  tail call void @_rtw_init_sta_xmit_priv(ptr noundef %sta_xmitpriv) #6
  %sta_recvpriv = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 5
  tail call void @_rtw_init_sta_recv_priv(ptr noundef %sta_recvpriv) #6
  %asoc_list = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 39
  %8 = ptrtoint ptr %asoc_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %asoc_list, ptr %asoc_list, align 4
  %prev.i30 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 39, i32 1
  %9 = ptrtoint ptr %prev.i30 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %asoc_list, ptr %prev.i30, align 4
  %auth_list = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 40
  %10 = ptrtoint ptr %auth_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %auth_list, ptr %auth_list, align 4
  %prev.i31 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 40, i32 1
  %11 = ptrtoint ptr %prev.i31 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %auth_list, ptr %prev.i31, align 4
  %expire_to = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 41
  %12 = ptrtoint ptr %expire_to to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %expire_to, align 8
  %flags = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 46
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %flags, align 8
  %capability = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 45
  %14 = ptrtoint ptr %capability to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %capability, align 4
  %bpairwise_key_installed = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 53
  %15 = ptrtoint ptr %bpairwise_key_installed to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %bpairwise_key_installed, align 4
  %nonerp_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 55
  %under_exist_checking = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 70
  %16 = ptrtoint ptr %under_exist_checking to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %under_exist_checking, align 4
  %keep_alive_trycnt = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 71
  %17 = ptrtoint ptr %keep_alive_trycnt to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %keep_alive_trycnt, align 1
  %18 = call ptr @memset(ptr %nonerp_set, i32 0, i32 6)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtw_init_sta_xmit_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtw_init_sta_recv_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_init_sta_priv(ptr noundef %pstapriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @vzalloc(i32 noundef 100868) #9
  %0 = ptrtoint ptr %pstapriv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %pstapriv, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @_rtw_init_sta_priv.__key, i16 noundef signext 3) #6
  %sta_hash_lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %sta_hash_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @_rtw_init_sta_priv.__key.4, i16 noundef signext 3) #6
  %asoc_sta_count = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 5
  %5 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %asoc_sta_count, align 4
  %sleep_q = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 6
  %6 = ptrtoint ptr %sleep_q to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %sleep_q, ptr %sleep_q, align 4
  %prev.i68 = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i68 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sleep_q, ptr %prev.i68, align 4
  %lock14 = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 6, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock14, ptr noundef nonnull @.str.7, ptr noundef nonnull @_rtw_init_sta_priv.__key.6, i16 noundef signext 3) #6
  %wakeup_q = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 7
  %8 = ptrtoint ptr %wakeup_q to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %wakeup_q, ptr %wakeup_q, align 4
  %prev.i69 = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 7, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i69 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %wakeup_q, ptr %prev.i69, align 4
  %lock21 = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 7, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock21, ptr noundef nonnull @.str.9, ptr noundef nonnull @_rtw_init_sta_priv.__key.8, i16 noundef signext 3) #6
  %10 = ptrtoint ptr %pstainfo_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pstainfo_buf, align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end
  %i.076 = phi i32 [ 0, %if.end ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %psta.074 = phi ptr [ %11, %if.end ], [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ]
  %12 = call ptr @memset(ptr %psta.074, i32 0, i32 3152)
  tail call void @__raw_spin_lock_init(ptr noundef %psta.074, ptr noundef nonnull @.str, ptr noundef nonnull @_rtw_init_stainfo.__key, i16 noundef signext 3) #6
  %list.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 1
  %13 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list.i, ptr %prev.i.i, align 4
  %hash_list.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 2
  %15 = ptrtoint ptr %hash_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %hash_list.i, ptr %hash_list.i, align 4
  %prev.i28.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i28.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %hash_list.i, ptr %prev.i28.i, align 4
  %sleep_q.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 6
  %17 = ptrtoint ptr %sleep_q.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %sleep_q.i, ptr %sleep_q.i, align 4
  %prev.i29.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 6, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i29.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sleep_q.i, ptr %prev.i29.i, align 4
  %lock3.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 6, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock3.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @_rtw_init_stainfo.__key.1, i16 noundef signext 3) #6
  %sleepq_len.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 7
  %19 = ptrtoint ptr %sleepq_len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %sleepq_len.i, align 4
  %sta_xmitpriv.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 4
  tail call void @_rtw_init_sta_xmit_priv(ptr noundef %sta_xmitpriv.i) #6
  %sta_recvpriv.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 5
  tail call void @_rtw_init_sta_recv_priv(ptr noundef %sta_recvpriv.i) #6
  %asoc_list.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 39
  %20 = ptrtoint ptr %asoc_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %asoc_list.i, ptr %asoc_list.i, align 4
  %prev.i30.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 39, i32 1
  %21 = ptrtoint ptr %prev.i30.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %asoc_list.i, ptr %prev.i30.i, align 4
  %auth_list.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 40
  %22 = ptrtoint ptr %auth_list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %auth_list.i, ptr %auth_list.i, align 4
  %prev.i31.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 40, i32 1
  %23 = ptrtoint ptr %prev.i31.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %auth_list.i, ptr %prev.i31.i, align 4
  %expire_to.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 41
  %24 = ptrtoint ptr %expire_to.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %expire_to.i, align 8
  %flags.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 46
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %flags.i, align 8
  %capability.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 45
  %26 = ptrtoint ptr %capability.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %capability.i, align 4
  %bpairwise_key_installed.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 53
  %27 = ptrtoint ptr %bpairwise_key_installed.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %bpairwise_key_installed.i, align 4
  %nonerp_set.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 55
  %under_exist_checking.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 70
  %28 = ptrtoint ptr %under_exist_checking.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %under_exist_checking.i, align 4
  %keep_alive_trycnt.i = getelementptr inbounds %struct.sta_info, ptr %psta.074, i32 0, i32 71
  %29 = ptrtoint ptr %keep_alive_trycnt.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %keep_alive_trycnt.i, align 1
  %30 = call ptr @memset(ptr %nonerp_set.i, i32 0, i32 6)
  %arrayidx = getelementptr %struct.sta_priv, ptr %pstapriv, i32 0, i32 4, i32 %i.076
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i70 = getelementptr %struct.sta_priv, ptr %pstapriv, i32 0, i32 4, i32 %i.076, i32 1
  %32 = ptrtoint ptr %prev.i70 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx, ptr %prev.i70, align 4
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %34, ptr noundef %free_sta_queue) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
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
  %incdec.ptr = getelementptr %struct.sta_info, ptr %psta.074, i32 1
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sta_dz_bitmap = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 19
  %39 = ptrtoint ptr %sta_dz_bitmap to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %sta_dz_bitmap, align 4
  %tim_bitmap = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 20
  %40 = ptrtoint ptr %tim_bitmap to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %tim_bitmap, align 2
  %asoc_list = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 9
  %41 = ptrtoint ptr %asoc_list to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %asoc_list, ptr %asoc_list, align 4
  %prev.i72 = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 9, i32 1
  %42 = ptrtoint ptr %prev.i72 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %asoc_list, ptr %prev.i72, align 4
  %auth_list = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 10
  %43 = ptrtoint ptr %auth_list to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %auth_list, ptr %auth_list, align 4
  %prev.i73 = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 10, i32 1
  %44 = ptrtoint ptr %prev.i73 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %auth_list, ptr %prev.i73, align 4
  %asoc_list_lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %asoc_list_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @_rtw_init_sta_priv.__key.10, i16 noundef signext 3) #6
  %auth_list_lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %auth_list_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @_rtw_init_sta_priv.__key.12, i16 noundef signext 3) #6
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
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_stainfo_offset(ptr nocapture noundef readonly %stapriv, ptr noundef %sta) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %pstainfo_buf = getelementptr inbounds %struct.sta_priv, ptr %stapriv, i32 0, i32 1
  %0 = ptrtoint ptr %pstainfo_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pstainfo_buf, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %sta to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %div = udiv i32 %sub.ptr.sub, 3152
  ret i32 %div
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @rtw_get_stainfo_by_offset(ptr nocapture noundef readonly %stapriv, i32 noundef %offset) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %pstainfo_buf = getelementptr inbounds %struct.sta_priv, ptr %stapriv, i32 0, i32 1
  %0 = ptrtoint ptr %pstainfo_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pstainfo_buf, align 4
  %mul = mul i32 %offset, 3152
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kfree_all_stainfo(ptr noundef %pstapriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sta_hash_lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock) #6
  %free_sta_queue = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %plist.0.in = phi ptr [ %free_sta_queue, %entry ], [ %plist.0, %while.cond.while.cond_crit_edge ]
  %0 = ptrtoint ptr %plist.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %plist.0 = load ptr, ptr %plist.0.in, align 4
  %cmp.not = icmp eq ptr %free_sta_queue, %plist.0
  br i1 %cmp.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kfree_sta_priv_lock(ptr noundef %pstapriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sta_hash_lock.i = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock.i) #6
  %free_sta_queue.i = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %plist.0.in.i = phi ptr [ %free_sta_queue.i, %entry ], [ %plist.0.i, %while.cond.i.while.cond.i_crit_edge ]
  %0 = ptrtoint ptr %plist.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %plist.0.i = load ptr, ptr %plist.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %free_sta_queue.i, %plist.0.i
  br i1 %cmp.not.i, label %kfree_all_stainfo.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

kfree_all_stainfo.exit:                           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_free_sta_priv(ptr noundef %pstapriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pstapriv, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %sta_hash_lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock) #6
  br label %for.body

for.body:                                         ; preds = %for.inc12.for.body_crit_edge, %if.then
  %index.032 = phi i32 [ 0, %if.then ], [ %inc13, %for.inc12.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sta_priv, ptr %pstapriv, i32 0, i32 4, i32 %index.032
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %plist.029 = load ptr, ptr %arrayidx, align 4
  %cmp.i.not30 = icmp eq ptr %plist.029, %arrayidx
  br i1 %cmp.i.not30, label %for.body.for.inc12_crit_edge, label %for.body.for.cond4.preheader_crit_edge

for.body.for.cond4.preheader_crit_edge:           ; preds = %for.body
  br label %for.cond4.preheader

for.body.for.inc12_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc12

for.cond4.preheader:                              ; preds = %for.cond4.preheader.for.cond4.preheader_crit_edge, %for.body.for.cond4.preheader_crit_edge
  %plist.031 = phi ptr [ %plist.0, %for.cond4.preheader.for.cond4.preheader_crit_edge ], [ %plist.029, %for.body.for.cond4.preheader_crit_edge ]
  %reordering_ctrl_timer = getelementptr i8, ptr %plist.031, i32 980
  %call8 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer) #6
  %reordering_ctrl_timer.1 = getelementptr i8, ptr %plist.031, i32 1092
  %call8.1 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.1) #6
  %reordering_ctrl_timer.2 = getelementptr i8, ptr %plist.031, i32 1204
  %call8.2 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.2) #6
  %reordering_ctrl_timer.3 = getelementptr i8, ptr %plist.031, i32 1316
  %call8.3 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.3) #6
  %reordering_ctrl_timer.4 = getelementptr i8, ptr %plist.031, i32 1428
  %call8.4 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.4) #6
  %reordering_ctrl_timer.5 = getelementptr i8, ptr %plist.031, i32 1540
  %call8.5 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.5) #6
  %reordering_ctrl_timer.6 = getelementptr i8, ptr %plist.031, i32 1652
  %call8.6 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.6) #6
  %reordering_ctrl_timer.7 = getelementptr i8, ptr %plist.031, i32 1764
  %call8.7 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.7) #6
  %reordering_ctrl_timer.8 = getelementptr i8, ptr %plist.031, i32 1876
  %call8.8 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.8) #6
  %reordering_ctrl_timer.9 = getelementptr i8, ptr %plist.031, i32 1988
  %call8.9 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.9) #6
  %reordering_ctrl_timer.10 = getelementptr i8, ptr %plist.031, i32 2100
  %call8.10 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.10) #6
  %reordering_ctrl_timer.11 = getelementptr i8, ptr %plist.031, i32 2212
  %call8.11 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.11) #6
  %reordering_ctrl_timer.12 = getelementptr i8, ptr %plist.031, i32 2324
  %call8.12 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.12) #6
  %reordering_ctrl_timer.13 = getelementptr i8, ptr %plist.031, i32 2436
  %call8.13 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.13) #6
  %reordering_ctrl_timer.14 = getelementptr i8, ptr %plist.031, i32 2548
  %call8.14 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.14) #6
  %reordering_ctrl_timer.15 = getelementptr i8, ptr %plist.031, i32 2660
  %call8.15 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer.15) #6
  %1 = ptrtoint ptr %plist.031 to i32
  call void @__asan_load4_noabort(i32 %1)
  %plist.0 = load ptr, ptr %plist.031, align 4
  %cmp.i.not = icmp eq ptr %plist.0, %arrayidx
  br i1 %cmp.i.not, label %for.cond4.preheader.for.inc12_crit_edge, label %for.cond4.preheader.for.cond4.preheader_crit_edge

for.cond4.preheader.for.cond4.preheader_crit_edge: ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond4.preheader

for.cond4.preheader.for.inc12_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc12

for.inc12:                                        ; preds = %for.cond4.preheader.for.inc12_crit_edge, %for.body.for.inc12_crit_edge
  %inc13 = add nuw nsw i32 %index.032, 1
  %exitcond.not = icmp eq i32 %inc13, 32
  br i1 %exitcond.not, label %for.end14, label %for.inc12.for.body_crit_edge

for.inc12.for.body_crit_edge:                     ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end14:                                        ; preds = %for.inc12
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock) #6
  %free_sta_queue.i.i = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 2
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %for.end14
  %plist.0.in.i.i = phi ptr [ %free_sta_queue.i.i, %for.end14 ], [ %plist.0.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %2 = ptrtoint ptr %plist.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %plist.0.i.i = load ptr, ptr %plist.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %free_sta_queue.i.i, %plist.0.i.i
  br i1 %cmp.not.i.i, label %kfree_sta_priv_lock.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

kfree_sta_priv_lock.exit:                         ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #6
  %3 = ptrtoint ptr %pstapriv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pstapriv, align 4
  tail call void @vfree(ptr noundef %4) #6
  br label %if.end

if.end:                                           ; preds = %kfree_sta_priv_lock.exit, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_alloc_stainfo(ptr noundef %pstapriv, ptr nocapture noundef readonly %hwaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %free_sta_queue = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 2
  %sta_hash_lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock) #6
  %0 = ptrtoint ptr %free_sta_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_sta_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %free_sta_queue
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -44
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
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
  %9 = call ptr @memset(ptr %add.ptr, i32 0, i32 3152)
  tail call void @__raw_spin_lock_init(ptr noundef %add.ptr, ptr noundef nonnull @.str, ptr noundef nonnull @_rtw_init_stainfo.__key, i16 noundef signext 3) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %1, ptr %1, align 4
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %prev.i3.i, align 4
  %hash_list.i = getelementptr i8, ptr %1, i32 8
  %12 = ptrtoint ptr %hash_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %hash_list.i, ptr %hash_list.i, align 4
  %prev.i28.i = getelementptr i8, ptr %1, i32 12
  %13 = ptrtoint ptr %prev.i28.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %hash_list.i, ptr %prev.i28.i, align 4
  %sleep_q.i = getelementptr i8, ptr %1, i32 508
  %14 = ptrtoint ptr %sleep_q.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %sleep_q.i, ptr %sleep_q.i, align 4
  %prev.i29.i = getelementptr i8, ptr %1, i32 512
  %15 = ptrtoint ptr %prev.i29.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sleep_q.i, ptr %prev.i29.i, align 4
  %lock3.i = getelementptr i8, ptr %1, i32 516
  tail call void @__raw_spin_lock_init(ptr noundef %lock3.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @_rtw_init_stainfo.__key.1, i16 noundef signext 3) #6
  %sleepq_len.i = getelementptr i8, ptr %1, i32 560
  %16 = ptrtoint ptr %sleepq_len.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sleepq_len.i, align 4
  %sta_xmitpriv.i = getelementptr i8, ptr %1, i32 20
  tail call void @_rtw_init_sta_xmit_priv(ptr noundef %sta_xmitpriv.i) #6
  %sta_recvpriv.i = getelementptr i8, ptr %1, i32 376
  tail call void @_rtw_init_sta_recv_priv(ptr noundef %sta_recvpriv.i) #6
  %asoc_list.i = getelementptr i8, ptr %1, i32 2796
  %17 = ptrtoint ptr %asoc_list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %asoc_list.i, ptr %asoc_list.i, align 4
  %prev.i30.i = getelementptr i8, ptr %1, i32 2800
  %18 = ptrtoint ptr %prev.i30.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %asoc_list.i, ptr %prev.i30.i, align 4
  %auth_list.i = getelementptr i8, ptr %1, i32 2804
  %19 = ptrtoint ptr %auth_list.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %auth_list.i, ptr %auth_list.i, align 4
  %prev.i31.i = getelementptr i8, ptr %1, i32 2808
  %20 = ptrtoint ptr %prev.i31.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %auth_list.i, ptr %prev.i31.i, align 4
  %expire_to.i = getelementptr i8, ptr %1, i32 2812
  %21 = ptrtoint ptr %expire_to.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %expire_to.i, align 8
  %flags.i = getelementptr i8, ptr %1, i32 2956
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %flags.i, align 8
  %capability.i = getelementptr i8, ptr %1, i32 2952
  %23 = ptrtoint ptr %capability.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %capability.i, align 4
  %bpairwise_key_installed.i = getelementptr i8, ptr %1, i32 2984
  %24 = ptrtoint ptr %bpairwise_key_installed.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %bpairwise_key_installed.i, align 4
  %nonerp_set.i = getelementptr i8, ptr %1, i32 3017
  %under_exist_checking.i = getelementptr i8, ptr %1, i32 3040
  %25 = ptrtoint ptr %under_exist_checking.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %under_exist_checking.i, align 4
  %keep_alive_trycnt.i = getelementptr i8, ptr %1, i32 3041
  %26 = ptrtoint ptr %keep_alive_trycnt.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %keep_alive_trycnt.i, align 1
  %27 = call ptr @memset(ptr %nonerp_set.i, i32 0, i32 6)
  %padapter = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 8
  %28 = ptrtoint ptr %padapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %padapter, align 4
  %padapter4 = getelementptr i8, ptr %1, i32 16
  %30 = ptrtoint ptr %padapter4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %padapter4, align 4
  %hwaddr5 = getelementptr i8, ptr %1, i32 580
  %31 = call ptr @memcpy(ptr %hwaddr5, ptr %hwaddr, i32 6)
  %32 = ptrtoint ptr %hwaddr to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hwaddr, align 1
  %conv.i73 = zext i8 %33 to i32
  %arrayidx1.i = getelementptr i8, ptr %hwaddr, i32 1
  %34 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %35 to i32
  %36 = shl nuw nsw i32 %conv.i73, 4
  %37 = shl nuw nsw i32 %conv2.i, 2
  %shl3.i = xor i32 %37, %36
  %arrayidx4.i = getelementptr i8, ptr %hwaddr, i32 2
  %38 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %39 to i32
  %xor6.i = xor i32 %shl3.i, %conv5.i
  %arrayidx8.i = getelementptr i8, ptr %hwaddr, i32 3
  %40 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %41 to i32
  %arrayidx12.i = getelementptr i8, ptr %hwaddr, i32 4
  %42 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %43 to i32
  %44 = shl nuw nsw i32 %xor6.i, 6
  %45 = shl nuw nsw i32 %conv9.i, 4
  %46 = shl nuw nsw i32 %conv13.i, 2
  %47 = xor i32 %46, %45
  %shl15.i = xor i32 %47, %44
  %arrayidx16.i = getelementptr i8, ptr %hwaddr, i32 5
  %48 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %49 to i32
  %xor18.i = xor i32 %47, %conv17.i
  %shr.i = lshr i32 %shl15.i, 8
  %xor19.i = xor i32 %xor18.i, %shr.i
  %and.i = and i32 %xor19.i, 31
  %arrayidx = getelementptr %struct.sta_priv, ptr %pstapriv, i32 0, i32 4, i32 %and.i
  %prev.i = getelementptr %struct.sta_priv, ptr %pstapriv, i32 0, i32 4, i32 %and.i, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i, align 4
  %call.i.i74 = tail call zeroext i1 @__list_add_valid(ptr noundef %hash_list.i, ptr noundef %51, ptr noundef %arrayidx) #6
  br i1 %call.i.i74, label %if.end.i.i75, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i75:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %hash_list.i, ptr %prev.i, align 4
  %53 = ptrtoint ptr %hash_list.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx, ptr %hash_list.i, align 4
  %54 = ptrtoint ptr %prev.i28.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev.i28.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %hash_list.i, ptr %51, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i75, %list_del_init.exit.list_add_tail.exit_crit_edge
  %asoc_sta_count = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 5
  %56 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %asoc_sta_count, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %asoc_sta_count, align 4
  %rxcache = getelementptr i8, ptr %1, i32 476
  %58 = call ptr @memset(ptr %rxcache, i32 255, i32 32)
  %59 = ptrtoint ptr %padapter to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %padapter, align 4
  tail call void @init_addba_retry_timer(ptr noundef %60, ptr noundef %add.ptr) #6
  %recvreorder_ctrl = getelementptr i8, ptr %1, i32 924
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %list_add_tail.exit
  %i.178 = phi i32 [ 0, %list_add_tail.exit ], [ %inc23, %for.body15.for.body15_crit_edge ]
  %arrayidx16 = getelementptr [16 x %struct.recv_reorder_ctrl], ptr %recvreorder_ctrl, i32 0, i32 %i.178
  %61 = ptrtoint ptr %padapter to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %padapter, align 4
  %63 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %arrayidx16, align 4
  %enable = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %arrayidx16, i32 0, i32 1
  %64 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %enable, align 4
  %indicate_seq = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %arrayidx16, i32 0, i32 2
  %65 = ptrtoint ptr %indicate_seq to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -1, ptr %indicate_seq, align 2
  %wend_b = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %arrayidx16, i32 0, i32 3
  %66 = ptrtoint ptr %wend_b to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 -1, ptr %wend_b, align 4
  %wsize_b = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %arrayidx16, i32 0, i32 4
  %67 = ptrtoint ptr %wsize_b to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 64, ptr %wsize_b, align 2
  %pending_recvframe_queue = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %arrayidx16, i32 0, i32 5
  %68 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %pending_recvframe_queue, ptr %pending_recvframe_queue, align 4
  %prev.i76 = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %arrayidx16, i32 0, i32 5, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i76 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %pending_recvframe_queue, ptr %prev.i76, align 4
  %lock = getelementptr inbounds %struct.recv_reorder_ctrl, ptr %arrayidx16, i32 0, i32 5, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @rtw_alloc_stainfo.__key, i16 noundef signext 3) #6
  tail call void @rtw_init_recv_timer(ptr noundef %arrayidx16) #6
  %inc23 = add nuw nsw i32 %i.178, 1
  %exitcond.not = icmp eq i32 %inc23, 16
  br i1 %exitcond.not, label %for.end24, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body15

for.end24:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  %rssi_stat = getelementptr i8, ptr %1, i32 3052
  %70 = ptrtoint ptr %rssi_stat to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %rssi_stat, align 8
  %UndecoratedSmoothedCCK = getelementptr i8, ptr %1, i32 3056
  %71 = ptrtoint ptr %UndecoratedSmoothedCCK to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %UndecoratedSmoothedCCK, align 4
  %RxMgmtFrameSeqNum = getelementptr i8, ptr %1, i32 3100
  %72 = ptrtoint ptr %RxMgmtFrameSeqNum to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 -1, ptr %RxMgmtFrameSeqNum, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #6
  %73 = ptrtoint ptr %padapter to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %padapter, align 4
  tail call void @rtw_alloc_macid(ptr noundef %74, ptr noundef %add.ptr) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end24, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %add.ptr, %for.end24 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_addba_retry_timer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_init_recv_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_alloc_macid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_free_stainfo(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %psta, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end:                                           ; preds = %entry
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull %psta) #6
  %state = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 8
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, -2
  store i32 %and, ptr %state, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull %psta) #6
  %free_sta_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %xmitpriv) #6
  %sleep_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 6
  tail call void @rtw_free_xmitframe_queue(ptr noundef %xmitpriv, ptr noundef %sleep_q) #6
  %sleepq_len = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 7
  %2 = ptrtoint ptr %sleepq_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sleepq_len, align 4
  %vo_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 6
  %sta_pending = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 6, i32 1
  tail call void @rtw_free_xmitframe_queue(ptr noundef %xmitpriv, ptr noundef %sta_pending) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vo_q) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 6, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %vo_q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vo_q, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %vo_q to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %vo_q, ptr %vo_q, align 4
  %prev.i3.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 6, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vo_q, ptr %prev.i3.i, align 4
  %hwxmits = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 25
  %11 = ptrtoint ptr %hwxmits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwxmits, align 8
  %qcnt = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 6, i32 2
  %13 = ptrtoint ptr %qcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qcnt, align 4
  %accnt = getelementptr inbounds %struct.hw_xmit, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %accnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %accnt, align 4
  %sub = sub i32 %16, %14
  store i32 %sub, ptr %accnt, align 4
  store i32 0, ptr %qcnt, align 4
  %vi_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 5
  %sta_pending7 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 5, i32 1
  tail call void @rtw_free_xmitframe_queue(ptr noundef %xmitpriv, ptr noundef %sta_pending7) #6
  %call.i.i170 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vi_q) #6
  br i1 %call.i.i170, label %if.end.i.i173, label %list_del_init.exit.list_del_init.exit175_crit_edge

list_del_init.exit.list_del_init.exit175_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit175

if.end.i.i173:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i171 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 5, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i171 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i171, align 4
  %19 = ptrtoint ptr %vi_q to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vi_q, align 4
  %prev1.i.i.i172 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i172 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i172, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit175

list_del_init.exit175:                            ; preds = %if.end.i.i173, %list_del_init.exit.list_del_init.exit175_crit_edge
  %23 = ptrtoint ptr %vi_q to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %vi_q, ptr %vi_q, align 4
  %prev.i3.i174 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 5, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i3.i174 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %vi_q, ptr %prev.i3.i174, align 4
  %25 = ptrtoint ptr %hwxmits to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hwxmits, align 8
  %qcnt12 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 5, i32 2
  %27 = ptrtoint ptr %qcnt12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qcnt12, align 4
  %accnt13 = getelementptr %struct.hw_xmit, ptr %26, i32 1, i32 1
  %29 = ptrtoint ptr %accnt13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %accnt13, align 4
  %sub14 = sub i32 %30, %28
  store i32 %sub14, ptr %accnt13, align 4
  store i32 0, ptr %qcnt12, align 4
  %be_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 3
  %sta_pending17 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 3, i32 1
  tail call void @rtw_free_xmitframe_queue(ptr noundef %xmitpriv, ptr noundef %sta_pending17) #6
  %call.i.i176 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %be_q) #6
  br i1 %call.i.i176, label %if.end.i.i179, label %list_del_init.exit175.list_del_init.exit181_crit_edge

list_del_init.exit175.list_del_init.exit181_crit_edge: ; preds = %list_del_init.exit175
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit181

if.end.i.i179:                                    ; preds = %list_del_init.exit175
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i177 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 3, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i177 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i177, align 4
  %33 = ptrtoint ptr %be_q to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %be_q, align 4
  %prev1.i.i.i178 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i178 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i178, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del_init.exit181

list_del_init.exit181:                            ; preds = %if.end.i.i179, %list_del_init.exit175.list_del_init.exit181_crit_edge
  %37 = ptrtoint ptr %be_q to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %be_q, ptr %be_q, align 4
  %prev.i3.i180 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 3, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i3.i180 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %be_q, ptr %prev.i3.i180, align 4
  %39 = ptrtoint ptr %hwxmits to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hwxmits, align 8
  %qcnt23 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 3, i32 2
  %41 = ptrtoint ptr %qcnt23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qcnt23, align 4
  %accnt24 = getelementptr %struct.hw_xmit, ptr %40, i32 2, i32 1
  %43 = ptrtoint ptr %accnt24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %accnt24, align 4
  %sub25 = sub i32 %44, %42
  store i32 %sub25, ptr %accnt24, align 4
  store i32 0, ptr %qcnt23, align 4
  %bk_q = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 4
  %sta_pending28 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 4, i32 1
  tail call void @rtw_free_xmitframe_queue(ptr noundef %xmitpriv, ptr noundef %sta_pending28) #6
  %call.i.i182 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bk_q) #6
  br i1 %call.i.i182, label %if.end.i.i185, label %list_del_init.exit181.list_del_init.exit187_crit_edge

list_del_init.exit181.list_del_init.exit187_crit_edge: ; preds = %list_del_init.exit181
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit187

if.end.i.i185:                                    ; preds = %list_del_init.exit181
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i183 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 4, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i183 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i183, align 4
  %47 = ptrtoint ptr %bk_q to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bk_q, align 4
  %prev1.i.i.i184 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i184 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i184, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del_init.exit187

list_del_init.exit187:                            ; preds = %if.end.i.i185, %list_del_init.exit181.list_del_init.exit187_crit_edge
  %51 = ptrtoint ptr %bk_q to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %bk_q, ptr %bk_q, align 4
  %prev.i3.i186 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 4, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i3.i186 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %bk_q, ptr %prev.i3.i186, align 4
  %53 = ptrtoint ptr %hwxmits to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hwxmits, align 8
  %qcnt34 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 4, i32 4, i32 2
  %55 = ptrtoint ptr %qcnt34 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %qcnt34, align 4
  %accnt35 = getelementptr %struct.hw_xmit, ptr %54, i32 3, i32 1
  %57 = ptrtoint ptr %accnt35 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %accnt35, align 4
  %sub36 = sub i32 %58, %56
  store i32 %sub36, ptr %accnt35, align 4
  store i32 0, ptr %qcnt34, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv) #6
  %sta_hash_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock) #6
  %hash_list = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 2
  %call.i.i188 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hash_list) #6
  br i1 %call.i.i188, label %if.end.i.i191, label %list_del_init.exit187.list_del_init.exit193_crit_edge

list_del_init.exit187.list_del_init.exit193_crit_edge: ; preds = %list_del_init.exit187
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit193

if.end.i.i191:                                    ; preds = %list_del_init.exit187
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i189 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 2, i32 1
  %59 = ptrtoint ptr %prev.i.i189 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i189, align 4
  %61 = ptrtoint ptr %hash_list to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hash_list, align 4
  %prev1.i.i.i190 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i190 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i190, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del_init.exit193

list_del_init.exit193:                            ; preds = %if.end.i.i191, %list_del_init.exit187.list_del_init.exit193_crit_edge
  %65 = ptrtoint ptr %hash_list to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %hash_list, ptr %hash_list, align 4
  %prev.i3.i192 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 2, i32 1
  %66 = ptrtoint ptr %prev.i3.i192 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %hash_list, ptr %prev.i3.i192, align 4
  %asoc_sta_count = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 5
  %67 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %asoc_sta_count, align 4
  %dec = add i32 %68, -1
  store i32 %dec, ptr %asoc_sta_count, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #6
  %addba_retry_timer = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 35
  %call = tail call i32 @del_timer_sync(ptr noundef %addba_retry_timer) #6
  %free_recv_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 1
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %list_del_init.exit193
  %i.0213 = phi i32 [ 0, %list_del_init.exit193 ], [ %inc, %while.end.for.body_crit_edge ]
  %reordering_ctrl_timer = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 36, i32 %i.0213, i32 6
  %call41 = tail call i32 @del_timer_sync(ptr noundef %reordering_ctrl_timer) #6
  %pending_recvframe_queue = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 36, i32 %i.0213, i32 5
  %lock42 = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 36, i32 %i.0213, i32 5, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock42) #6
  %69 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pending_recvframe_queue, align 4
  %71 = load volatile ptr, ptr %pending_recvframe_queue, align 4
  %cmp.i.not210 = icmp eq ptr %71, %pending_recvframe_queue
  br i1 %cmp.i.not210, label %for.body.while.end_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit199.while.body_crit_edge, %for.body.while.body_crit_edge
  %plist.0211 = phi ptr [ %73, %list_del_init.exit199.while.body_crit_edge ], [ %70, %for.body.while.body_crit_edge ]
  %72 = ptrtoint ptr %plist.0211 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %plist.0211, align 4
  %call.i.i194 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plist.0211) #6
  br i1 %call.i.i194, label %if.end.i.i197, label %while.body.list_del_init.exit199_crit_edge

while.body.list_del_init.exit199_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit199

if.end.i.i197:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i195 = getelementptr inbounds %struct.list_head, ptr %plist.0211, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i195 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i195, align 4
  %76 = ptrtoint ptr %plist.0211 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %plist.0211, align 4
  %prev1.i.i.i196 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i.i196 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev1.i.i.i196, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %77, ptr %75, align 4
  br label %list_del_init.exit199

list_del_init.exit199:                            ; preds = %if.end.i.i197, %while.body.list_del_init.exit199_crit_edge
  %80 = ptrtoint ptr %plist.0211 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %plist.0211, ptr %plist.0211, align 4
  %prev.i3.i198 = getelementptr inbounds %struct.list_head, ptr %plist.0211, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i3.i198 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %plist.0211, ptr %prev.i3.i198, align 4
  %call48 = tail call i32 @rtw_free_recvframe(ptr noundef %plist.0211, ptr noundef %free_recv_queue) #6
  %82 = ptrtoint ptr %pending_recvframe_queue to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %pending_recvframe_queue, align 4
  %cmp.i.not = icmp eq ptr %83, %pending_recvframe_queue
  br i1 %cmp.i.not, label %list_del_init.exit199.while.end_crit_edge, label %list_del_init.exit199.while.body_crit_edge

list_del_init.exit199.while.body_crit_edge:       ; preds = %list_del_init.exit199
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

list_del_init.exit199.while.end_crit_edge:        ; preds = %list_del_init.exit199
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit199.while.end_crit_edge, %for.body.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock42) #6
  %inc = add nuw nsw i32 %i.0213, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %while.end
  %84 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %state, align 8
  %and51 = and i32 %85, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.then53, label %for.end.if.end54_crit_edge

for.end.if.end54_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then53:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtw_hal_set_odm_var(ptr noundef %padapter, i32 noundef 0, ptr noundef %psta, i1 noundef zeroext false) #6
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %for.end.if.end54_crit_edge
  %padapter55 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 8
  %86 = ptrtoint ptr %padapter55 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %padapter55, align 4
  tail call void @rtw_release_macid(ptr noundef %87, ptr noundef %psta) #6
  %auth_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %auth_list_lock) #6
  %auth_list = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 40
  %88 = ptrtoint ptr %auth_list to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %auth_list, align 4
  %cmp.i200.not = icmp eq ptr %89, %auth_list
  br i1 %cmp.i200.not, label %if.end54.if.end61_crit_edge, label %if.then58

if.end54.if.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then58:                                        ; preds = %if.end54
  %call.i.i202 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %auth_list) #6
  br i1 %call.i.i202, label %if.end.i.i205, label %if.then58.list_del_init.exit207_crit_edge

if.then58.list_del_init.exit207_crit_edge:        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit207

if.end.i.i205:                                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i203 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 40, i32 1
  %90 = ptrtoint ptr %prev.i.i203 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i.i203, align 4
  %92 = ptrtoint ptr %auth_list to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %auth_list, align 4
  %prev1.i.i.i204 = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %prev1.i.i.i204 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %prev1.i.i.i204, align 4
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %93, ptr %91, align 4
  br label %list_del_init.exit207

list_del_init.exit207:                            ; preds = %if.end.i.i205, %if.then58.list_del_init.exit207_crit_edge
  %96 = ptrtoint ptr %auth_list to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %auth_list, ptr %auth_list, align 4
  %prev.i3.i206 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 40, i32 1
  %97 = ptrtoint ptr %prev.i3.i206 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %auth_list, ptr %prev.i3.i206, align 4
  %auth_list_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 14
  %98 = ptrtoint ptr %auth_list_cnt to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %auth_list_cnt, align 1
  %dec60 = add i8 %99, -1
  store i8 %dec60, ptr %auth_list_cnt, align 1
  br label %if.end61

if.end61:                                         ; preds = %list_del_init.exit207, %if.end54.if.end61_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %auth_list_lock) #6
  %expire_to = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 41
  %100 = ptrtoint ptr %expire_to to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %expire_to, align 8
  %sleepq_ac_len = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 69
  %101 = ptrtoint ptr %sleepq_ac_len to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %sleepq_ac_len, align 8
  %qos_info = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 62
  %aid = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 9
  %102 = call ptr @memset(ptr %qos_info, i32 0, i32 7)
  %103 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %aid, align 4
  %shl = shl nuw i32 1, %104
  %sta_dz_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 19
  %105 = ptrtoint ptr %sta_dz_bitmap to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %sta_dz_bitmap, align 4
  %107 = trunc i32 %shl to i16
  %108 = xor i16 %107, -1
  %conv64 = and i16 %106, %108
  store i16 %conv64, ptr %sta_dz_bitmap, align 4
  %109 = load i32, ptr %aid, align 4
  %shl66 = shl nuw i32 1, %109
  %tim_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  %110 = ptrtoint ptr %tim_bitmap to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %tim_bitmap, align 2
  %112 = trunc i32 %shl66 to i16
  %113 = xor i16 %112, -1
  %conv70 = and i16 %111, %113
  store i16 %conv70, ptr %tim_bitmap, align 2
  %114 = load i32, ptr %aid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp72.not = icmp eq i32 %114, 0
  br i1 %cmp72.not, label %if.end61.if.end85_crit_edge, label %land.lhs.true

if.end61.if.end85_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

land.lhs.true:                                    ; preds = %if.end61
  %sub75 = add i32 %114, -1
  %arrayidx76 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 18, i32 %sub75
  %115 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx76, align 4
  %cmp77 = icmp eq ptr %116, %psta
  br i1 %cmp77, label %if.then79, label %land.lhs.true.if.end85_crit_edge

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then79:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %arrayidx76, align 4
  %118 = ptrtoint ptr %aid to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %aid, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then79, %land.lhs.true.if.end85_crit_edge, %if.end61.if.end85_crit_edge
  %under_exist_checking = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 70
  %119 = ptrtoint ptr %under_exist_checking to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %under_exist_checking, align 4
  %list86 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 2, i32 0, i32 1
  %120 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i, align 4
  %call.i.i208 = tail call zeroext i1 @__list_add_valid(ptr noundef %list86, ptr noundef %121, ptr noundef %free_sta_queue) #6
  br i1 %call.i.i208, label %if.end.i.i209, label %if.end85.exit_crit_edge

if.end85.exit_crit_edge:                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end.i.i209:                                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %list86, ptr %prev.i, align 4
  %123 = ptrtoint ptr %list86 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %free_sta_queue, ptr %list86, align 4
  %prev3.i.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 1, i32 1
  %124 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev3.i.i, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %list86, ptr %121, align 4
  br label %exit

exit:                                             ; preds = %if.end.i.i209, %if.end85.exit_crit_edge, %entry.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_xmitframe_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_recvframe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_odm_var(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_release_macid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_free_all_stainfo(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %bc_addr.i = alloca [6 x i8], align 1
  %stainfo_free_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bc_addr.i) #6
  %0 = call ptr @memset(ptr %bc_addr.i, i32 255, i32 6)
  %call.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i, ptr noundef nonnull %bc_addr.i) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bc_addr.i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stainfo_free_list) #6
  %1 = getelementptr inbounds %struct.list_head, ptr %stainfo_free_list, i32 0, i32 1
  %2 = ptrtoint ptr %stainfo_free_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %stainfo_free_list, ptr %stainfo_free_list, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %stainfo_free_list, ptr %1, align 4
  %asoc_sta_count = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 5
  %4 = ptrtoint ptr %asoc_sta_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asoc_sta_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sta_hash_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock) #6
  br label %for.body

for.body:                                         ; preds = %for.inc12.for.body_crit_edge, %if.end
  %index.061 = phi i32 [ 0, %if.end ], [ %inc, %for.inc12.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 4, i32 %index.061
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp.i.not57 = icmp eq ptr %7, %arrayidx
  br i1 %cmp.i.not57, label %for.body.for.inc12_crit_edge, label %for.body.for.body6_crit_edge

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body.for.inc12_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc12

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %plist.058 = phi ptr [ %tmp.060, %for.inc.for.body6_crit_edge ], [ %7, %for.body.for.body6_crit_edge ]
  %8 = ptrtoint ptr %plist.058 to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.060 = load ptr, ptr %plist.058, align 4
  %add.ptr = getelementptr i8, ptr %plist.058, i32 -52
  %cmp8.not = icmp eq ptr %call.i, %add.ptr
  br i1 %cmp8.not, label %for.body6.for.inc_crit_edge, label %if.then9

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then9:                                         ; preds = %for.body6
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %plist.058) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then9.__list_del_entry.exit.i_crit_edge

if.then9.__list_del_entry.exit.i_crit_edge:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %plist.058, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %plist.058 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %plist.058, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then9.__list_del_entry.exit.i_crit_edge
  %15 = ptrtoint ptr %stainfo_free_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stainfo_free_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %plist.058, ptr noundef nonnull %stainfo_free_list, ptr noundef %16) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %plist.058, ptr %prev1.i.i2.i, align 4
  %18 = ptrtoint ptr %plist.058 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %plist.058, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %plist.058, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %stainfo_free_list, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %stainfo_free_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %plist.058, ptr %stainfo_free_list, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %for.body6.for.inc_crit_edge
  %cmp.i.not = icmp eq ptr %tmp.060, %arrayidx
  br i1 %cmp.i.not, label %for.inc.for.inc12_crit_edge, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6

for.inc.for.inc12_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc12

for.inc12:                                        ; preds = %for.inc.for.inc12_crit_edge, %for.body.for.inc12_crit_edge
  %inc = add nuw nsw i32 %index.061, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end13, label %for.inc12.for.body_crit_edge

for.inc12.for.body_crit_edge:                     ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end13:                                        ; preds = %for.inc12
  call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #6
  %21 = ptrtoint ptr %stainfo_free_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stainfo_free_list, align 4
  %cmp.i54.not62 = icmp eq ptr %22, %stainfo_free_list
  br i1 %cmp.i54.not62, label %for.end13.cleanup_crit_edge, label %for.end13.for.body21_crit_edge

for.end13.for.body21_crit_edge:                   ; preds = %for.end13
  br label %for.body21

for.end13.cleanup_crit_edge:                      ; preds = %for.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.end13.for.body21_crit_edge
  %plist.163 = phi ptr [ %tmp.1, %for.body21.for.body21_crit_edge ], [ %22, %for.end13.for.body21_crit_edge ]
  %23 = ptrtoint ptr %plist.163 to i32
  call void @__asan_load4_noabort(i32 %23)
  %tmp.1 = load ptr, ptr %plist.163, align 4
  %add.ptr24 = getelementptr i8, ptr %plist.163, i32 -52
  %call25 = call i32 @rtw_free_stainfo(ptr noundef %padapter, ptr noundef %add.ptr24)
  %cmp.i54.not = icmp eq ptr %tmp.1, %stainfo_free_list
  br i1 %cmp.i54.not, label %for.body21.cleanup_crit_edge, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body21

for.body21.cleanup_crit_edge:                     ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body21.cleanup_crit_edge, %for.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stainfo_free_list) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %bc_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bc_addr) #6
  %0 = call ptr @memset(ptr %bc_addr, i32 255, i32 6)
  %call = call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef nonnull %bc_addr)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bc_addr) #6
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_get_stainfo(ptr noundef %pstapriv, ptr noundef readonly %hwaddr) local_unnamed_addr #0 align 64 {
entry:
  %bc_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bc_addr) #6
  %0 = call ptr @memset(ptr %bc_addr, i32 255, i32 6)
  %tobool.not = icmp eq ptr %hwaddr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  %hwaddr.bc_addr.sroa.sel32.v.sroa.sel.v = select i1 %tobool1.not, ptr %hwaddr, ptr %bc_addr
  %hwaddr.bc_addr.sroa.sel32.v.sroa.sel = getelementptr i8, ptr %hwaddr.bc_addr.sroa.sel32.v.sroa.sel.v, i32 2
  %10 = ptrtoint ptr %hwaddr.bc_addr.sroa.sel32.v.sroa.sel to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hwaddr.bc_addr.sroa.sel32.v.sroa.sel, align 1
  %conv5.i = zext i8 %11 to i32
  %xor6.i = xor i32 %shl3.i, %conv5.i
  %hwaddr.bc_addr.sroa.sel35.v.sroa.sel.v = select i1 %tobool1.not, ptr %hwaddr, ptr %bc_addr
  %hwaddr.bc_addr.sroa.sel35.v.sroa.sel = getelementptr i8, ptr %hwaddr.bc_addr.sroa.sel35.v.sroa.sel.v, i32 3
  %12 = ptrtoint ptr %hwaddr.bc_addr.sroa.sel35.v.sroa.sel to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hwaddr.bc_addr.sroa.sel35.v.sroa.sel, align 1
  %conv9.i = zext i8 %13 to i32
  %hwaddr.bc_addr.sroa.sel38.v.sroa.sel.v = select i1 %tobool1.not, ptr %hwaddr, ptr %bc_addr
  %hwaddr.bc_addr.sroa.sel38.v.sroa.sel = getelementptr i8, ptr %hwaddr.bc_addr.sroa.sel38.v.sroa.sel.v, i32 4
  %14 = ptrtoint ptr %hwaddr.bc_addr.sroa.sel38.v.sroa.sel to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hwaddr.bc_addr.sroa.sel38.v.sroa.sel, align 1
  %conv13.i = zext i8 %15 to i32
  %16 = shl nuw nsw i32 %xor6.i, 6
  %17 = shl nuw nsw i32 %conv9.i, 4
  %18 = shl nuw nsw i32 %conv13.i, 2
  %19 = xor i32 %18, %17
  %shl15.i = xor i32 %19, %16
  %hwaddr.bc_addr.sroa.sel41.v.sroa.sel.v = select i1 %tobool1.not, ptr %hwaddr, ptr %bc_addr
  %hwaddr.bc_addr.sroa.sel41.v.sroa.sel = getelementptr i8, ptr %hwaddr.bc_addr.sroa.sel41.v.sroa.sel.v, i32 5
  %20 = ptrtoint ptr %hwaddr.bc_addr.sroa.sel41.v.sroa.sel to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hwaddr.bc_addr.sroa.sel41.v.sroa.sel, align 1
  %conv17.i = zext i8 %21 to i32
  %xor18.i = xor i32 %19, %conv17.i
  %shr.i = lshr i32 %shl15.i, 8
  %xor19.i = xor i32 %xor18.i, %shr.i
  %and.i = and i32 %xor19.i, 31
  %sta_hash_lock = getelementptr inbounds %struct.sta_priv, ptr %pstapriv, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_hash_lock) #6
  %arrayidx = getelementptr %struct.sta_priv, ptr %pstapriv, i32 0, i32 4, i32 %and.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %plist.0.in = phi ptr [ %arrayidx, %if.end ], [ %plist.0, %for.body.for.cond_crit_edge ]
  %22 = ptrtoint ptr %plist.0.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %plist.0 = load ptr, ptr %plist.0.in, align 4
  %cmp.i.not = icmp eq ptr %plist.0, %arrayidx
  br i1 %cmp.i.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %hwaddr7 = getelementptr i8, ptr %plist.0, i32 572
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %hwaddr7, ptr noundef nonnull dereferenceable(6) %hwaddr.bc_addr, i32 6) #10
  %tobool10.not = icmp eq i32 %bcmp, 0
  br i1 %tobool10.not, label %for.end.split.loop.exit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end.split.loop.exit:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.le = getelementptr i8, ptr %plist.0, i32 -52
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %for.cond.for.end_crit_edge
  %psta.1 = phi ptr [ %add.ptr.le, %for.end.split.loop.exit ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_hash_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %psta.1, %for.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bc_addr) #6
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_init_bcmc_stainfo(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %bcast_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bcast_addr) #6
  %0 = call ptr @memset(ptr %bcast_addr, i32 255, i32 6)
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call = call ptr @rtw_alloc_stainfo(ptr noundef %stapriv, ptr noundef nonnull %bcast_addr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 10
  %1 = ptrtoint ptr %mac_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %mac_id, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bcast_addr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_access_ctrl(ptr noundef %padapter, ptr nocapture noundef readonly %mac_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_list = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22
  %acl_node_q = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3
  %lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #6
  %0 = ptrtoint ptr %acl_node_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %plist.034 = load ptr, ptr %acl_node_q, align 4
  %cmp.i35.not = icmp eq ptr %plist.034, %acl_node_q
  br i1 %cmp.i35.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %plist.036 = phi ptr [ %plist.0, %for.inc.for.body_crit_edge ], [ %plist.034, %entry.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.rtw_wlan_acl_node, ptr %plist.036, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr, ptr noundef dereferenceable(6) %mac_addr, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool3.not = icmp eq i32 %bcmp, 0
  br i1 %tobool3.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  %valid = getelementptr inbounds %struct.rtw_wlan_acl_node, ptr %plist.036, i32 0, i32 2
  %1 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %valid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp = icmp eq i8 %2, 1
  br i1 %cmp, label %if.then.for.end_crit_edge, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %3 = ptrtoint ptr %plist.036 to i32
  call void @__asan_load4_noabort(i32 %3)
  %plist.0 = load ptr, ptr %plist.036, align 4
  %cmp.i.not = icmp eq ptr %plist.0, %acl_node_q
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge, %entry.for.end_crit_edge
  %cmp.i.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ true, %if.then.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  %4 = ptrtoint ptr %acl_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %acl_list, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.else20 [
    i32 1, label %if.then11
    i32 2, label %for.end.if.end22_crit_edge
  ]

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %lnot13 = xor i1 %cmp.i.lcssa, true
  br label %if.end22

if.else20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then11, %for.end.if.end22_crit_edge
  %res.0.shrunk = phi i1 [ %lnot13, %if.then11 ], [ true, %if.else20 ], [ %cmp.i.lcssa, %for.end.if.end22_crit_edge ]
  %conv24 = zext i1 %res.0.shrunk to i8
  ret i8 %conv24
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @_rtw_init_stainfo.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/core/rtw_sta_mgt.c", i32 15, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @_rtw_init_stainfo.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/rtl8723bs/core/rtw_sta_mgt.c", i32 23, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @_rtw_init_sta_priv.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/core/rtw_sta_mgt.c", i32 67, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @_rtw_init_sta_priv.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8723bs/core/rtw_sta_mgt.c", i32 69, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @_rtw_init_sta_priv.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8723bs/core/rtw_sta_mgt.c", i32 74, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @_rtw_init_sta_priv.__key.8, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8723bs/core/rtw_sta_mgt.c", i32 76, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @_rtw_init_sta_priv.__key.10, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8723bs/core/rtw_sta_mgt.c", i32 95, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @_rtw_init_sta_priv.__key.12, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8723bs/core/rtw_sta_mgt.c", i32 96, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rtw_alloc_stainfo.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8723bs/core/rtw_sta_mgt.c", i32 250, i32 4}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
