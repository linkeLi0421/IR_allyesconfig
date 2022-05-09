; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/core/rtw_ap.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/core/rtw_ap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.ndis_80211_var_ie = type { i8, i8, [0 x i8] }
%struct.cmd_obj = type { ptr, i16, i8, ptr, i32, ptr, i32, ptr, %struct.list_head }
%struct.set_stakey_parm = type { [6 x i8], i8, i8, [16 x i8] }
%struct.setkey_parm = type { i8, i8, i8, i8, [16 x i8] }

@init_mlme_ap_info.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&pmlmepriv->bcn_update_lock\00", [36 x i8] zeroinitializer }, align 32
@init_mlme_ap_info.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&pacl_list->acl_node_q.lock\00", [36 x i8] zeroinitializer }, align 32
@__const.rtw_check_beacon_data.OUI1 = private unnamed_addr constant [4 x i8] c"\00P\F2\01", align 1
@__const.rtw_check_beacon_data.WMM_PARA_IE = private unnamed_addr constant [6 x i8] c"\00P\F2\02\01\01", align 1
@__const.rtw_acl_remove_sta.baddr = private unnamed_addr constant [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@RTW_WPA_OUI = external dso_local global [0 x i8], align 1
@WMM_OUI = external dso_local global [0 x i8], align 1
@WPS_OUI = external dso_local global [0 x i8], align 1
@switch.table.rtw_check_beacon_data = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 1, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 5, i64 42, i64 221]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 5]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 18, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [43 x i8] c"../drivers/staging/rtl8723bs/core/rtw_ap.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 22, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [35 x i8] c"switch.table.rtw_check_beacon_data\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @init_mlme_ap_info.__key, ptr @.str, ptr @init_mlme_ap_info.__key.1, ptr @.str.2, ptr @switch.table.rtw_check_beacon_data], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_mlme_ap_info.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_mlme_ap_info.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_check_beacon_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_mlme_ap_info(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bcn_update_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 69
  tail call void @__raw_spin_lock_init(ptr noundef %bcn_update_lock, ptr noundef nonnull @.str, ptr noundef nonnull @init_mlme_ap_info.__key, i16 noundef signext 3) #8
  %acl_node_q = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3
  %0 = ptrtoint ptr %acl_node_q to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %acl_node_q, ptr %acl_node_q, align 4
  %prev.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %acl_node_q, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_mlme_ap_info.__key.1, i16 noundef signext 3) #8
  %update_bcn.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 70
  %2 = ptrtoint ptr %update_bcn.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %update_bcn.i, align 4
  %bstart_bss.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 34
  %3 = ptrtoint ptr %bstart_bss.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bstart_bss.i, align 2
  %num_sta_non_erp.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 41
  %num_sta_no_ht.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 31
  %4 = ptrtoint ptr %num_sta_no_ht.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_sta_no_ht.i, align 4
  %uglygep.i = getelementptr i8, ptr %padapter, i32 8264
  %5 = call ptr @memset(ptr %uglygep.i, i32 0, i32 128)
  %acl_list.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22
  %wps_beacon_ie.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 53
  %6 = ptrtoint ptr %wps_beacon_ie.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %wps_beacon_ie.i, align 4
  %wps_probe_resp_ie.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 54
  %7 = ptrtoint ptr %wps_probe_resp_ie.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %wps_probe_resp_ie.i, align 4
  %wps_assoc_resp_ie.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 55
  %8 = ptrtoint ptr %wps_assoc_resp_ie.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %wps_assoc_resp_ie.i, align 4
  %p2p_beacon_ie.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 59
  %9 = ptrtoint ptr %p2p_beacon_ie.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %p2p_beacon_ie.i, align 4
  %p2p_probe_resp_ie.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 61
  %10 = ptrtoint ptr %p2p_probe_resp_ie.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %p2p_probe_resp_ie.i, align 4
  %11 = call ptr @memset(ptr %num_sta_non_erp.i, i32 0, i32 30)
  %12 = ptrtoint ptr %acl_node_q to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %acl_node_q, ptr %acl_node_q, align 4
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %acl_node_q, ptr %prev.i, align 4
  %num.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 1
  %14 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %num.i, align 4
  %15 = ptrtoint ptr %acl_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %acl_list.i, align 4
  %arrayidx4.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 0
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %arrayidx4.i, ptr %arrayidx4.i, align 4
  %prev.i37.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i37.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx4.i, ptr %prev.i37.i, align 4
  %valid.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 0, i32 2
  %18 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %valid.i, align 2
  %arrayidx4.1.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %arrayidx4.1.i, ptr %arrayidx4.1.i, align 4
  %prev.i37.1.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i37.1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx4.1.i, ptr %prev.i37.1.i, align 4
  %valid.1.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 1, i32 2
  %21 = ptrtoint ptr %valid.1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %valid.1.i, align 2
  %arrayidx4.2.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 2
  %22 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx4.2.i, ptr %arrayidx4.2.i, align 4
  %prev.i37.2.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 2, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i37.2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx4.2.i, ptr %prev.i37.2.i, align 4
  %valid.2.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 2, i32 2
  %24 = ptrtoint ptr %valid.2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %valid.2.i, align 2
  %arrayidx4.3.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 3
  %25 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %arrayidx4.3.i, ptr %arrayidx4.3.i, align 4
  %prev.i37.3.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 3, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i37.3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx4.3.i, ptr %prev.i37.3.i, align 4
  %valid.3.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 3, i32 2
  %27 = ptrtoint ptr %valid.3.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %valid.3.i, align 2
  %arrayidx4.4.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 4
  %28 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx4.4.i, ptr %arrayidx4.4.i, align 4
  %prev.i37.4.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 4, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i37.4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx4.4.i, ptr %prev.i37.4.i, align 4
  %valid.4.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 4, i32 2
  %30 = ptrtoint ptr %valid.4.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %valid.4.i, align 2
  %arrayidx4.5.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 5
  %31 = ptrtoint ptr %arrayidx4.5.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %arrayidx4.5.i, ptr %arrayidx4.5.i, align 4
  %prev.i37.5.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 5, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i37.5.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx4.5.i, ptr %prev.i37.5.i, align 4
  %valid.5.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 5, i32 2
  %33 = ptrtoint ptr %valid.5.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %valid.5.i, align 2
  %arrayidx4.6.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 6
  %34 = ptrtoint ptr %arrayidx4.6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %arrayidx4.6.i, ptr %arrayidx4.6.i, align 4
  %prev.i37.6.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 6, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i37.6.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx4.6.i, ptr %prev.i37.6.i, align 4
  %valid.6.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 6, i32 2
  %36 = ptrtoint ptr %valid.6.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %valid.6.i, align 2
  %arrayidx4.7.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 7
  %37 = ptrtoint ptr %arrayidx4.7.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %arrayidx4.7.i, ptr %arrayidx4.7.i, align 4
  %prev.i37.7.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 7, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i37.7.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx4.7.i, ptr %prev.i37.7.i, align 4
  %valid.7.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 7, i32 2
  %39 = ptrtoint ptr %valid.7.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %valid.7.i, align 2
  %arrayidx4.8.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 8
  %40 = ptrtoint ptr %arrayidx4.8.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %arrayidx4.8.i, ptr %arrayidx4.8.i, align 4
  %prev.i37.8.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 8, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i37.8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx4.8.i, ptr %prev.i37.8.i, align 4
  %valid.8.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 8, i32 2
  %42 = ptrtoint ptr %valid.8.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %valid.8.i, align 2
  %arrayidx4.9.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 9
  %43 = ptrtoint ptr %arrayidx4.9.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %arrayidx4.9.i, ptr %arrayidx4.9.i, align 4
  %prev.i37.9.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 9, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i37.9.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx4.9.i, ptr %prev.i37.9.i, align 4
  %valid.9.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 9, i32 2
  %45 = ptrtoint ptr %valid.9.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %valid.9.i, align 2
  %arrayidx4.10.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 10
  %46 = ptrtoint ptr %arrayidx4.10.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %arrayidx4.10.i, ptr %arrayidx4.10.i, align 4
  %prev.i37.10.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 10, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i37.10.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx4.10.i, ptr %prev.i37.10.i, align 4
  %valid.10.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 10, i32 2
  %48 = ptrtoint ptr %valid.10.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %valid.10.i, align 2
  %arrayidx4.11.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 11
  %49 = ptrtoint ptr %arrayidx4.11.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %arrayidx4.11.i, ptr %arrayidx4.11.i, align 4
  %prev.i37.11.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 11, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i37.11.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %arrayidx4.11.i, ptr %prev.i37.11.i, align 4
  %valid.11.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 11, i32 2
  %51 = ptrtoint ptr %valid.11.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %valid.11.i, align 2
  %arrayidx4.12.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 12
  %52 = ptrtoint ptr %arrayidx4.12.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %arrayidx4.12.i, ptr %arrayidx4.12.i, align 4
  %prev.i37.12.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 12, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i37.12.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx4.12.i, ptr %prev.i37.12.i, align 4
  %valid.12.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 12, i32 2
  %54 = ptrtoint ptr %valid.12.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %valid.12.i, align 2
  %arrayidx4.13.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 13
  %55 = ptrtoint ptr %arrayidx4.13.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %arrayidx4.13.i, ptr %arrayidx4.13.i, align 4
  %prev.i37.13.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 13, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i37.13.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx4.13.i, ptr %prev.i37.13.i, align 4
  %valid.13.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 13, i32 2
  %57 = ptrtoint ptr %valid.13.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %valid.13.i, align 2
  %arrayidx4.14.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 14
  %58 = ptrtoint ptr %arrayidx4.14.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %arrayidx4.14.i, ptr %arrayidx4.14.i, align 4
  %prev.i37.14.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 14, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i37.14.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx4.14.i, ptr %prev.i37.14.i, align 4
  %valid.14.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 14, i32 2
  %60 = ptrtoint ptr %valid.14.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %valid.14.i, align 2
  %arrayidx4.15.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 15
  %61 = ptrtoint ptr %arrayidx4.15.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %arrayidx4.15.i, ptr %arrayidx4.15.i, align 4
  %prev.i37.15.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 15, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i37.15.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %arrayidx4.15.i, ptr %prev.i37.15.i, align 4
  %valid.15.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 15, i32 2
  %63 = ptrtoint ptr %valid.15.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %valid.15.i, align 2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @start_ap_mode(ptr noundef %padapter) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %update_bcn = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 70
  %0 = ptrtoint ptr %update_bcn to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %update_bcn, align 4
  %bstart_bss = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 34
  %1 = ptrtoint ptr %bstart_bss to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bstart_bss, align 2
  %num_sta_non_erp = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 41
  %num_sta_no_ht = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 31
  %2 = ptrtoint ptr %num_sta_no_ht to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %num_sta_no_ht, align 4
  %uglygep = getelementptr i8, ptr %padapter, i32 8264
  %3 = call ptr @memset(ptr %uglygep, i32 0, i32 128)
  %acl_list = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22
  %wps_beacon_ie = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 53
  %4 = ptrtoint ptr %wps_beacon_ie to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %wps_beacon_ie, align 4
  %wps_probe_resp_ie = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 54
  %5 = ptrtoint ptr %wps_probe_resp_ie to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %wps_probe_resp_ie, align 4
  %wps_assoc_resp_ie = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 55
  %6 = ptrtoint ptr %wps_assoc_resp_ie to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %wps_assoc_resp_ie, align 4
  %p2p_beacon_ie = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 59
  %7 = ptrtoint ptr %p2p_beacon_ie to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %p2p_beacon_ie, align 4
  %p2p_probe_resp_ie = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 61
  %8 = ptrtoint ptr %p2p_probe_resp_ie to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %p2p_probe_resp_ie, align 4
  %acl_node_q = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3
  %9 = call ptr @memset(ptr %num_sta_non_erp, i32 0, i32 30)
  %10 = ptrtoint ptr %acl_node_q to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %acl_node_q, ptr %acl_node_q, align 4
  %prev.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %acl_node_q, ptr %prev.i, align 4
  %num = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 1
  %12 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %num, align 4
  %13 = ptrtoint ptr %acl_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %acl_list, align 4
  %arrayidx4 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 0
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %arrayidx4, ptr %arrayidx4, align 4
  %prev.i37 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx4, ptr %prev.i37, align 4
  %valid = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 0, i32 2
  %16 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %valid, align 2
  %arrayidx4.1 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %arrayidx4.1, ptr %arrayidx4.1, align 4
  %prev.i37.1 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i37.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx4.1, ptr %prev.i37.1, align 4
  %valid.1 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 1, i32 2
  %19 = ptrtoint ptr %valid.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %valid.1, align 2
  %arrayidx4.2 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 2
  %20 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %arrayidx4.2, ptr %arrayidx4.2, align 4
  %prev.i37.2 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 2, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i37.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx4.2, ptr %prev.i37.2, align 4
  %valid.2 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 2, i32 2
  %22 = ptrtoint ptr %valid.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %valid.2, align 2
  %arrayidx4.3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 3
  %23 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %arrayidx4.3, ptr %arrayidx4.3, align 4
  %prev.i37.3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 3, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i37.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx4.3, ptr %prev.i37.3, align 4
  %valid.3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 3, i32 2
  %25 = ptrtoint ptr %valid.3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %valid.3, align 2
  %arrayidx4.4 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 4
  %26 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %arrayidx4.4, ptr %arrayidx4.4, align 4
  %prev.i37.4 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 4, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i37.4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx4.4, ptr %prev.i37.4, align 4
  %valid.4 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 4, i32 2
  %28 = ptrtoint ptr %valid.4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %valid.4, align 2
  %arrayidx4.5 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 5
  %29 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %arrayidx4.5, ptr %arrayidx4.5, align 4
  %prev.i37.5 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 5, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i37.5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx4.5, ptr %prev.i37.5, align 4
  %valid.5 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 5, i32 2
  %31 = ptrtoint ptr %valid.5 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %valid.5, align 2
  %arrayidx4.6 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 6
  %32 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %arrayidx4.6, ptr %arrayidx4.6, align 4
  %prev.i37.6 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 6, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i37.6 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx4.6, ptr %prev.i37.6, align 4
  %valid.6 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 6, i32 2
  %34 = ptrtoint ptr %valid.6 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %valid.6, align 2
  %arrayidx4.7 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 7
  %35 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %arrayidx4.7, ptr %arrayidx4.7, align 4
  %prev.i37.7 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 7, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i37.7 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx4.7, ptr %prev.i37.7, align 4
  %valid.7 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 7, i32 2
  %37 = ptrtoint ptr %valid.7 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %valid.7, align 2
  %arrayidx4.8 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 8
  %38 = ptrtoint ptr %arrayidx4.8 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %arrayidx4.8, ptr %arrayidx4.8, align 4
  %prev.i37.8 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 8, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i37.8 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx4.8, ptr %prev.i37.8, align 4
  %valid.8 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 8, i32 2
  %40 = ptrtoint ptr %valid.8 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %valid.8, align 2
  %arrayidx4.9 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 9
  %41 = ptrtoint ptr %arrayidx4.9 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %arrayidx4.9, ptr %arrayidx4.9, align 4
  %prev.i37.9 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 9, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i37.9 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx4.9, ptr %prev.i37.9, align 4
  %valid.9 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 9, i32 2
  %43 = ptrtoint ptr %valid.9 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %valid.9, align 2
  %arrayidx4.10 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 10
  %44 = ptrtoint ptr %arrayidx4.10 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %arrayidx4.10, ptr %arrayidx4.10, align 4
  %prev.i37.10 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 10, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i37.10 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx4.10, ptr %prev.i37.10, align 4
  %valid.10 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 10, i32 2
  %46 = ptrtoint ptr %valid.10 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %valid.10, align 2
  %arrayidx4.11 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 11
  %47 = ptrtoint ptr %arrayidx4.11 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %arrayidx4.11, ptr %arrayidx4.11, align 4
  %prev.i37.11 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 11, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i37.11 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx4.11, ptr %prev.i37.11, align 4
  %valid.11 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 11, i32 2
  %49 = ptrtoint ptr %valid.11 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %valid.11, align 2
  %arrayidx4.12 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 12
  %50 = ptrtoint ptr %arrayidx4.12 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %arrayidx4.12, ptr %arrayidx4.12, align 4
  %prev.i37.12 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 12, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i37.12 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx4.12, ptr %prev.i37.12, align 4
  %valid.12 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 12, i32 2
  %52 = ptrtoint ptr %valid.12 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %valid.12, align 2
  %arrayidx4.13 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 13
  %53 = ptrtoint ptr %arrayidx4.13 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %arrayidx4.13, ptr %arrayidx4.13, align 4
  %prev.i37.13 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 13, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i37.13 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx4.13, ptr %prev.i37.13, align 4
  %valid.13 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 13, i32 2
  %55 = ptrtoint ptr %valid.13 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %valid.13, align 2
  %arrayidx4.14 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 14
  %56 = ptrtoint ptr %arrayidx4.14 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %arrayidx4.14, ptr %arrayidx4.14, align 4
  %prev.i37.14 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 14, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i37.14 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx4.14, ptr %prev.i37.14, align 4
  %valid.14 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 14, i32 2
  %58 = ptrtoint ptr %valid.14 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %valid.14, align 2
  %arrayidx4.15 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 15
  %59 = ptrtoint ptr %arrayidx4.15 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %arrayidx4.15, ptr %arrayidx4.15, align 4
  %prev.i37.15 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 15, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i37.15 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx4.15, ptr %prev.i37.15, align 4
  %valid.15 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 15, i32 2
  %61 = ptrtoint ptr %valid.15 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %valid.15, align 2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_mlme_ap_info(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %update_bcn = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 70
  %0 = ptrtoint ptr %update_bcn to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %update_bcn, align 4
  %bstart_bss = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 34
  %1 = ptrtoint ptr %bstart_bss to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bstart_bss, align 2
  tail call void @rtw_sta_flush(ptr noundef %padapter)
  %2 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mlmext_info, align 4
  tail call void @rtw_free_all_stainfo(ptr noundef %padapter) #8
  %call = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #8
  %call1 = tail call i32 @rtw_free_stainfo(ptr noundef %padapter, ptr noundef %call) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_sta_flush(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %bc_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bc_addr) #8
  %0 = call ptr @memset(ptr %bc_addr, i32 255, i32 6)
  %1 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mlmext_info, align 4
  %and = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp.not = icmp eq i32 %and, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %asoc_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #8
  %asoc_list = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 9
  %3 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %asoc_list, align 4
  %cmp.i.not28 = icmp eq ptr %4, %asoc_list
  br i1 %cmp.i.not28, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %asoc_list_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 13
  br label %for.body

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %for.body.lr.ph
  %plist.029 = phi ptr [ %4, %for.body.lr.ph ], [ %tmp.031, %list_del_init.exit.for.body_crit_edge ]
  %5 = ptrtoint ptr %plist.029 to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.031 = load ptr, ptr %plist.029, align 4
  %add.ptr = getelementptr i8, ptr %plist.029, i32 -2840
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plist.029) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %plist.029, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %plist.029 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plist.029, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %plist.029 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %plist.029, ptr %plist.029, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %plist.029, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %plist.029, ptr %prev.i3.i, align 4
  %14 = ptrtoint ptr %asoc_list_cnt to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %asoc_list_cnt, align 4
  %dec = add i8 %15, -1
  store i8 %dec, ptr %asoc_list_cnt, align 4
  %call4 = tail call zeroext i8 @ap_free_sta(ptr noundef %padapter, ptr noundef %add.ptr, i1 noundef zeroext true, i16 noundef zeroext 3)
  %cmp.i.not = icmp eq ptr %tmp.031, %asoc_list
  br i1 %cmp.i.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #8
  %call7 = call i32 @issue_deauth(ptr noundef %padapter, ptr noundef nonnull %bc_addr, i16 noundef zeroext 3) #8
  call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #8
  %16 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %plist.010.i = load ptr, ptr %asoc_list, align 4
  %cmp.i.not11.i = icmp eq ptr %plist.010.i, %asoc_list
  br i1 %cmp.i.not11.i, label %for.end.associated_clients_update.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.associated_clients_update.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %associated_clients_update.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %plist.012.i = phi ptr [ %plist.0.i, %for.body.i.for.body.i_crit_edge ], [ %plist.010.i, %for.end.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %plist.012.i, i32 -2840
  call void @VCS_update(ptr noundef %padapter, ptr noundef %add.ptr.i) #8
  %17 = ptrtoint ptr %plist.012.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %plist.0.i = load ptr, ptr %plist.012.i, align 4
  %cmp.i.not.i = icmp eq ptr %plist.0.i, %asoc_list
  br i1 %cmp.i.not.i, label %for.body.i.associated_clients_update.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.associated_clients_update.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %associated_clients_update.exit

associated_clients_update.exit:                   ; preds = %for.body.i.associated_clients_update.exit_crit_edge, %for.end.associated_clients_update.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %associated_clients_update.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bc_addr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_all_stainfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_bcmc_stainfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @expire_timeout_chk(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %chk_alive_list = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %chk_alive_list) #8
  %auth_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 12
  %0 = call ptr @memset(ptr %chk_alive_list, i32 255, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %auth_list_lock) #8
  %auth_list = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 10
  %1 = ptrtoint ptr %auth_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %auth_list, align 4
  %cmp.i.not294 = icmp eq ptr %2, %auth_list
  br i1 %cmp.i.not294, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %auth_list_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %plist.0295 = phi ptr [ %2, %for.body.lr.ph ], [ %tmp.0297, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %plist.0295 to i32
  call void @__asan_load4_noabort(i32 %3)
  %tmp.0297 = load ptr, ptr %plist.0295, align 4
  %add.ptr = getelementptr i8, ptr %plist.0295, i32 -2848
  %expire_to = getelementptr i8, ptr %plist.0295, i32 8
  %4 = ptrtoint ptr %expire_to to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %expire_to, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %dec = add i32 %5, -1
  %6 = ptrtoint ptr %expire_to to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec, ptr %expire_to, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp5 = icmp eq i32 %dec, 0
  br i1 %cmp5, label %if.then6, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then6:                                         ; preds = %if.then
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plist.0295) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.list_del_init.exit_crit_edge

if.then6.list_del_init.exit_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %plist.0295, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %plist.0295 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %plist.0295, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then6.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %plist.0295 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %plist.0295, ptr %plist.0295, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %plist.0295, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %plist.0295, ptr %prev.i3.i, align 4
  %15 = ptrtoint ptr %auth_list_cnt to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %auth_list_cnt, align 1
  %dec8 = add i8 %16, -1
  store i8 %dec8, ptr %auth_list_cnt, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %auth_list_lock) #8
  %call10 = tail call i32 @rtw_free_stainfo(ptr noundef %padapter, ptr noundef %add.ptr) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %auth_list_lock) #8
  br label %for.inc

for.inc:                                          ; preds = %list_del_init.exit, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.i.not = icmp eq ptr %tmp.0297, %auth_list
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %auth_list_lock) #8
  %asoc_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #8
  %asoc_list = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 9
  %17 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asoc_list, align 4
  %cmp.i276.not299 = icmp eq ptr %18, %asoc_list
  br i1 %cmp.i276.not299, label %for.end.associated_clients_update.exit.sink.split_crit_edge, label %for.body21.lr.ph

for.end.associated_clients_update.exit.sink.split_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %associated_clients_update.exit.sink.split

for.body21.lr.ph:                                 ; preds = %for.end
  %expire_to30 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 17
  %asoc_list_cnt84 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 13
  %free_xmitframe_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 10
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 48
  %tim_bitmap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  %active_keep_alive_check = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 38
  br label %for.body21

for.body21:                                       ; preds = %for.inc98.for.body21_crit_edge, %for.body21.lr.ph
  %plist.1302 = phi ptr [ %18, %for.body21.lr.ph ], [ %tmp.1304, %for.inc98.for.body21_crit_edge ]
  %updated.0301 = phi i8 [ 0, %for.body21.lr.ph ], [ %updated.2, %for.inc98.for.body21_crit_edge ]
  %chk_alive_num.0300 = phi i8 [ 0, %for.body21.lr.ph ], [ %chk_alive_num.3, %for.inc98.for.body21_crit_edge ]
  %19 = ptrtoint ptr %plist.1302 to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp.1304 = load ptr, ptr %plist.1302, align 4
  %add.ptr24 = getelementptr i8, ptr %plist.1302, i32 -2840
  %sta_stats.i = getelementptr i8, ptr %plist.1302, i32 -2088
  %20 = ptrtoint ptr %sta_stats.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %sta_stats.i, align 8
  %last_rx_mgnt_pkts.i = getelementptr i8, ptr %plist.1302, i32 -2024
  %22 = ptrtoint ptr %last_rx_mgnt_pkts.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %last_rx_mgnt_pkts.i, align 8
  %rx_beacon_pkts.i = getelementptr i8, ptr %plist.1302, i32 -2080
  %23 = ptrtoint ptr %rx_beacon_pkts.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rx_beacon_pkts.i, align 8
  %last_rx_beacon_pkts.i = getelementptr i8, ptr %plist.1302, i32 -2016
  %25 = ptrtoint ptr %last_rx_beacon_pkts.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %last_rx_beacon_pkts.i, align 8
  %rx_probereq_pkts.i = getelementptr i8, ptr %plist.1302, i32 -2072
  %26 = ptrtoint ptr %rx_probereq_pkts.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rx_probereq_pkts.i, align 8
  %last_rx_probereq_pkts.i = getelementptr i8, ptr %plist.1302, i32 -2008
  %28 = ptrtoint ptr %last_rx_probereq_pkts.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %last_rx_probereq_pkts.i, align 8
  %rx_probersp_pkts.i = getelementptr i8, ptr %plist.1302, i32 -2064
  %29 = ptrtoint ptr %rx_probersp_pkts.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %rx_probersp_pkts.i, align 8
  %last_rx_probersp_pkts.i = getelementptr i8, ptr %plist.1302, i32 -2000
  %31 = ptrtoint ptr %last_rx_probersp_pkts.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %last_rx_probersp_pkts.i, align 8
  %rx_probersp_bm_pkts.i = getelementptr i8, ptr %plist.1302, i32 -2056
  %32 = ptrtoint ptr %rx_probersp_bm_pkts.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rx_probersp_bm_pkts.i, align 8
  %last_rx_probersp_bm_pkts.i = getelementptr i8, ptr %plist.1302, i32 -1992
  %34 = ptrtoint ptr %last_rx_probersp_bm_pkts.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %last_rx_probersp_bm_pkts.i, align 8
  %rx_probersp_uo_pkts.i = getelementptr i8, ptr %plist.1302, i32 -2048
  %35 = ptrtoint ptr %rx_probersp_uo_pkts.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %rx_probersp_uo_pkts.i, align 8
  %last_rx_probersp_uo_pkts.i = getelementptr i8, ptr %plist.1302, i32 -1984
  %37 = ptrtoint ptr %last_rx_probersp_uo_pkts.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %last_rx_probersp_uo_pkts.i, align 8
  %rx_ctrl_pkts.i = getelementptr i8, ptr %plist.1302, i32 -2040
  %38 = ptrtoint ptr %rx_ctrl_pkts.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %rx_ctrl_pkts.i, align 8
  %last_rx_ctrl_pkts.i = getelementptr i8, ptr %plist.1302, i32 -1976
  %40 = ptrtoint ptr %last_rx_ctrl_pkts.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %last_rx_ctrl_pkts.i, align 8
  %rx_data_pkts.i = getelementptr i8, ptr %plist.1302, i32 -2032
  %41 = ptrtoint ptr %rx_data_pkts.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %rx_data_pkts.i, align 8
  %last_rx_data_pkts.i = getelementptr i8, ptr %plist.1302, i32 -1968
  %43 = ptrtoint ptr %last_rx_data_pkts.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %last_rx_data_pkts.i, align 8
  %44 = ptrtoint ptr %expire_to30 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %expire_to30, align 4
  %expire_to31 = getelementptr i8, ptr %plist.1302, i32 16
  %46 = ptrtoint ptr %expire_to31 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %expire_to31, align 8
  %keep_alive_trycnt = getelementptr i8, ptr %plist.1302, i32 245
  %47 = ptrtoint ptr %keep_alive_trycnt to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %keep_alive_trycnt, align 1
  %under_exist_checking = getelementptr i8, ptr %plist.1302, i32 244
  %48 = ptrtoint ptr %under_exist_checking to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %under_exist_checking, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp41 = icmp eq i32 %45, 0
  br i1 %cmp41, label %if.then43, label %if.else83

if.then43:                                        ; preds = %for.body21
  %49 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp45 = icmp eq i8 %50, 1
  br i1 %cmp45, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %expire_to30 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %expire_to30, align 4
  %53 = ptrtoint ptr %expire_to31 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %expire_to31, align 8
  br label %for.inc98

if.end50:                                         ; preds = %if.then43
  %state = getelementptr i8, ptr %plist.1302, i32 -2232
  %54 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %state, align 8
  %56 = and i32 %55, 1028
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %56)
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %if.then56, label %if.end67

if.then56:                                        ; preds = %if.end50
  %58 = ptrtoint ptr %expire_to30 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %expire_to30, align 4
  %60 = ptrtoint ptr %expire_to31 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %expire_to31, align 8
  %or = or i32 %55, 1024
  %61 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or, ptr %state, align 8
  %aid = getelementptr i8, ptr %plist.1302, i32 -2228
  %62 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %aid, align 4
  %shl = shl nuw i32 1, %63
  %64 = ptrtoint ptr %tim_bitmap to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %tim_bitmap, align 2
  %66 = trunc i32 %shl to i16
  %conv62 = or i16 %65, %66
  store i16 %conv62, ptr %tim_bitmap, align 2
  tail call void @update_beacon(ptr noundef %padapter, i8 noundef zeroext 5, ptr noundef null, i8 noundef zeroext 1)
  %67 = ptrtoint ptr %active_keep_alive_check to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %active_keep_alive_check, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool63.not = icmp eq i8 %68, 0
  br i1 %tobool63.not, label %if.then56.for.inc98_crit_edge, label %if.then56.if.then70_crit_edge

if.then56.if.then70_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then70

if.then56.for.inc98_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc98

if.end67:                                         ; preds = %if.end50
  %69 = ptrtoint ptr %active_keep_alive_check to i32
  call void @__asan_load1_noabort(i32 %69)
  %.pr = load i8, ptr %active_keep_alive_check, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool69.not = icmp eq i8 %.pr, 0
  br i1 %tobool69.not, label %if.end79, label %if.end67.if.then70_crit_edge

if.end67.if.then70_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then70

if.then70:                                        ; preds = %if.end67.if.then70_crit_edge, %if.then56.if.then70_crit_edge
  %call71 = tail call i32 @rtw_stainfo_offset(ptr noundef %stapriv, ptr noundef %add.ptr24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call71)
  %70 = icmp ult i32 %call71, 32
  br i1 %70, label %if.then76, label %if.then70.for.inc98_crit_edge

if.then70.for.inc98_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc98

if.then76:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  %conv77 = trunc i32 %call71 to i8
  %inc = add i8 %chk_alive_num.0300, 1
  %idxprom = zext i8 %chk_alive_num.0300 to i32
  %arrayidx = getelementptr [32 x i8], ptr %chk_alive_list, i32 0, i32 %idxprom
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv77, ptr %arrayidx, align 1
  br label %for.inc98

if.end79:                                         ; preds = %if.end67
  %call.i.i278 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plist.1302) #8
  br i1 %call.i.i278, label %if.end.i.i281, label %if.end79.list_del_init.exit283_crit_edge

if.end79.list_del_init.exit283_crit_edge:         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit283

if.end.i.i281:                                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i279 = getelementptr inbounds %struct.list_head, ptr %plist.1302, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i279 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i.i279, align 4
  %74 = ptrtoint ptr %plist.1302 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %plist.1302, align 4
  %prev1.i.i.i280 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i.i280 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev1.i.i.i280, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %75, ptr %73, align 4
  br label %list_del_init.exit283

list_del_init.exit283:                            ; preds = %if.end.i.i281, %if.end79.list_del_init.exit283_crit_edge
  %78 = ptrtoint ptr %plist.1302 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %plist.1302, ptr %plist.1302, align 4
  %prev.i3.i282 = getelementptr inbounds %struct.list_head, ptr %plist.1302, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i3.i282 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %plist.1302, ptr %prev.i3.i282, align 4
  %80 = ptrtoint ptr %asoc_list_cnt84 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %asoc_list_cnt84, align 4
  %dec81 = add i8 %81, -1
  store i8 %dec81, ptr %asoc_list_cnt84, align 4
  %call82 = tail call zeroext i8 @ap_free_sta(ptr noundef %padapter, ptr noundef %add.ptr24, i1 noundef zeroext false, i16 noundef zeroext 3)
  br label %for.inc98

if.else83:                                        ; preds = %for.body21
  %sleepq_len = getelementptr i8, ptr %plist.1302, i32 -2236
  %82 = ptrtoint ptr %sleepq_len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sleepq_len, align 4
  %84 = ptrtoint ptr %asoc_list_cnt84 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %asoc_list_cnt84, align 4
  %div.rhs.trunc = zext i8 %85 to i16
  %div292 = udiv i16 256, %div.rhs.trunc
  %div.zext = zext i16 %div292 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %div.zext)
  %cmp86 = icmp ugt i32 %83, %div.zext
  br i1 %cmp86, label %land.lhs.true88, label %if.else83.for.inc98_crit_edge

if.else83.for.inc98_crit_edge:                    ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc98

land.lhs.true88:                                  ; preds = %if.else83
  %86 = ptrtoint ptr %free_xmitframe_cnt to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %free_xmitframe_cnt, align 8
  %div92274 = lshr i32 %div.zext, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %div92274)
  %cmp93 = icmp ult i32 %87, %div92274
  br i1 %cmp93, label %if.then95, label %land.lhs.true88.for.inc98_crit_edge

land.lhs.true88.for.inc98_crit_edge:              ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc98

if.then95:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @wakeup_sta_to_xmit(ptr noundef %padapter, ptr noundef %add.ptr24) #8
  br label %for.inc98

for.inc98:                                        ; preds = %if.then95, %land.lhs.true88.for.inc98_crit_edge, %if.else83.for.inc98_crit_edge, %list_del_init.exit283, %if.then76, %if.then70.for.inc98_crit_edge, %if.then56.for.inc98_crit_edge, %if.then47
  %chk_alive_num.3 = phi i8 [ %chk_alive_num.0300, %if.then95 ], [ %chk_alive_num.0300, %land.lhs.true88.for.inc98_crit_edge ], [ %chk_alive_num.0300, %if.else83.for.inc98_crit_edge ], [ %chk_alive_num.0300, %if.then47 ], [ %chk_alive_num.0300, %list_del_init.exit283 ], [ %chk_alive_num.0300, %if.then56.for.inc98_crit_edge ], [ %inc, %if.then76 ], [ %chk_alive_num.0300, %if.then70.for.inc98_crit_edge ]
  %updated.2 = phi i8 [ %updated.0301, %if.then95 ], [ %updated.0301, %land.lhs.true88.for.inc98_crit_edge ], [ %updated.0301, %if.else83.for.inc98_crit_edge ], [ %updated.0301, %if.then47 ], [ %call82, %list_del_init.exit283 ], [ %updated.0301, %if.then56.for.inc98_crit_edge ], [ %updated.0301, %if.then76 ], [ %updated.0301, %if.then70.for.inc98_crit_edge ]
  %cmp.i276.not = icmp eq ptr %tmp.1304, %asoc_list
  br i1 %cmp.i276.not, label %for.end100, label %for.inc98.for.body21_crit_edge

for.inc98.for.body21_crit_edge:                   ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21

for.end100:                                       ; preds = %for.inc98
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %chk_alive_num.3)
  %tobool102.not = icmp eq i8 %chk_alive_num.3, 0
  br i1 %tobool102.not, label %for.end100.if.end179_crit_edge, label %if.then103

for.end100.if.end179_crit_edge:                   ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

if.then103:                                       ; preds = %for.end100
  %call106 = tail call zeroext i8 @rtw_get_oper_ch(ptr noundef %padapter) #8
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %88 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %cur_channel, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %call106, i8 %89)
  %cmp109.not = icmp eq i8 %call106, %89
  br i1 %cmp109.not, label %if.then103.if.end114_crit_edge, label %if.then111

if.then103.if.end114_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then111:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  %call112 = tail call zeroext i8 @rtw_get_oper_ch(ptr noundef %padapter) #8
  %90 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %cur_channel, align 8
  tail call void @SelectChannel(ptr noundef %padapter, i8 noundef zeroext %91) #8
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %if.then103.if.end114_crit_edge
  %backup_oper_channel.0 = phi i8 [ %call112, %if.then111 ], [ 0, %if.then103.if.end114_crit_edge ]
  %asoc_list_cnt163 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 13
  %expire_to143 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 17
  %umax = zext i8 %chk_alive_num.3 to i32
  br label %for.body119

for.body119:                                      ; preds = %cleanup168.for.body119_crit_edge, %if.end114
  %updated.3307 = phi i8 [ %updated.2, %if.end114 ], [ %updated.5, %cleanup168.for.body119_crit_edge ]
  %i.0306 = phi i32 [ 0, %if.end114 ], [ %inc172, %cleanup168.for.body119_crit_edge ]
  %arrayidx120 = getelementptr [32 x i8], ptr %chk_alive_list, i32 0, i32 %i.0306
  %92 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %93 to i32
  %call122 = tail call ptr @rtw_get_stainfo_by_offset(ptr noundef %stapriv, i32 noundef %conv121) #8
  %state123 = getelementptr inbounds %struct.sta_info, ptr %call122, i32 0, i32 8
  %94 = ptrtoint ptr %state123 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %state123, align 8
  %and124 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %for.body119.cleanup168_crit_edge, label %if.end127

for.body119.cleanup168_crit_edge:                 ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup168

if.end127:                                        ; preds = %for.body119
  %and129 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  %hwaddr134 = getelementptr inbounds %struct.sta_info, ptr %call122, i32 0, i32 12
  %. = select i1 %tobool130.not, i32 3, i32 1
  %call136 = tail call i32 @issue_nulldata(ptr noundef %padapter, ptr noundef %hwaddr134, i32 noundef 0, i32 noundef %., i32 noundef 50) #8
  %keep_alive_trycnt138 = getelementptr inbounds %struct.sta_info, ptr %call122, i32 0, i32 71
  %96 = ptrtoint ptr %keep_alive_trycnt138 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %keep_alive_trycnt138, align 1
  %inc139 = add i8 %97, 1
  store i8 %inc139, ptr %keep_alive_trycnt138, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call136)
  %cmp140 = icmp eq i32 %call136, 1
  br i1 %cmp140, label %if.then142, label %if.else146

if.then142:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %expire_to143 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %expire_to143, align 4
  %expire_to144 = getelementptr inbounds %struct.sta_info, ptr %call122, i32 0, i32 41
  %100 = ptrtoint ptr %expire_to144 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %expire_to144, align 8
  %101 = ptrtoint ptr %keep_alive_trycnt138 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %keep_alive_trycnt138, align 1
  br label %cleanup168

if.else146:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %inc139)
  %cmp149 = icmp ult i8 %inc139, 4
  br i1 %cmp149, label %if.then151, label %if.end154

if.then151:                                       ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #10
  %expire_to152 = getelementptr inbounds %struct.sta_info, ptr %call122, i32 0, i32 41
  %102 = ptrtoint ptr %expire_to152 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %expire_to152, align 8
  br label %cleanup168

if.end154:                                        ; preds = %if.else146
  %103 = ptrtoint ptr %keep_alive_trycnt138 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %keep_alive_trycnt138, align 1
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #8
  %asoc_list157 = getelementptr inbounds %struct.sta_info, ptr %call122, i32 0, i32 39
  %104 = ptrtoint ptr %asoc_list157 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %asoc_list157, align 4
  %cmp.i284.not = icmp eq ptr %105, %asoc_list157
  br i1 %cmp.i284.not, label %if.end154.if.end166_crit_edge, label %if.then161

if.end154.if.end166_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end166

if.then161:                                       ; preds = %if.end154
  %call.i.i286 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %asoc_list157) #8
  br i1 %call.i.i286, label %if.end.i.i289, label %if.then161.list_del_init.exit291_crit_edge

if.then161.list_del_init.exit291_crit_edge:       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit291

if.end.i.i289:                                    ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i287 = getelementptr inbounds %struct.sta_info, ptr %call122, i32 0, i32 39, i32 1
  %106 = ptrtoint ptr %prev.i.i287 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i.i287, align 4
  %108 = ptrtoint ptr %asoc_list157 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %asoc_list157, align 4
  %prev1.i.i.i288 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %prev1.i.i.i288 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev1.i.i.i288, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %109, ptr %107, align 4
  br label %list_del_init.exit291

list_del_init.exit291:                            ; preds = %if.end.i.i289, %if.then161.list_del_init.exit291_crit_edge
  %112 = ptrtoint ptr %asoc_list157 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %asoc_list157, ptr %asoc_list157, align 4
  %prev.i3.i290 = getelementptr inbounds %struct.sta_info, ptr %call122, i32 0, i32 39, i32 1
  %113 = ptrtoint ptr %prev.i3.i290 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %asoc_list157, ptr %prev.i3.i290, align 4
  %114 = ptrtoint ptr %asoc_list_cnt163 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %asoc_list_cnt163, align 4
  %dec164 = add i8 %115, -1
  store i8 %dec164, ptr %asoc_list_cnt163, align 4
  %call165 = tail call zeroext i8 @ap_free_sta(ptr noundef %padapter, ptr noundef %call122, i1 noundef zeroext false, i16 noundef zeroext 3)
  br label %if.end166

if.end166:                                        ; preds = %list_del_init.exit291, %if.end154.if.end166_crit_edge
  %updated.4 = phi i8 [ %call165, %list_del_init.exit291 ], [ %updated.3307, %if.end154.if.end166_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #8
  br label %cleanup168

cleanup168:                                       ; preds = %if.end166, %if.then151, %if.then142, %for.body119.cleanup168_crit_edge
  %updated.5 = phi i8 [ %updated.3307, %if.then142 ], [ %updated.3307, %if.then151 ], [ %updated.4, %if.end166 ], [ %updated.3307, %for.body119.cleanup168_crit_edge ]
  %inc172 = add nuw nsw i32 %i.0306, 1
  %exitcond.not = icmp eq i32 %inc172, %umax
  br i1 %exitcond.not, label %for.end173, label %cleanup168.for.body119_crit_edge

cleanup168.for.body119_crit_edge:                 ; preds = %cleanup168
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body119

for.end173:                                       ; preds = %cleanup168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %backup_oper_channel.0)
  %cmp175.not = icmp eq i8 %backup_oper_channel.0, 0
  br i1 %cmp175.not, label %for.end173.if.end179_crit_edge, label %if.then177

for.end173.if.end179_crit_edge:                   ; preds = %for.end173
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

if.then177:                                       ; preds = %for.end173
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @SelectChannel(ptr noundef %padapter, i8 noundef zeroext %backup_oper_channel.0) #8
  br label %if.end179

if.end179:                                        ; preds = %if.then177, %for.end173.if.end179_crit_edge, %for.end100.if.end179_crit_edge
  %updated.6 = phi i8 [ %updated.2, %for.end100.if.end179_crit_edge ], [ %updated.5, %if.then177 ], [ %updated.5, %for.end173.if.end179_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %updated.6)
  %tobool.not.i = icmp eq i8 %updated.6, 0
  br i1 %tobool.not.i, label %if.end179.associated_clients_update.exit_crit_edge, label %if.then.i

if.end179.associated_clients_update.exit_crit_edge: ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %associated_clients_update.exit

if.then.i:                                        ; preds = %if.end179
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #8
  %116 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %116)
  %plist.010.i = load ptr, ptr %asoc_list, align 4
  %cmp.i.not11.i = icmp eq ptr %plist.010.i, %asoc_list
  br i1 %cmp.i.not11.i, label %if.then.i.associated_clients_update.exit.sink.split_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.associated_clients_update.exit.sink.split_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %associated_clients_update.exit.sink.split

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %plist.012.i = phi ptr [ %plist.0.i, %for.body.i.for.body.i_crit_edge ], [ %plist.010.i, %if.then.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %plist.012.i, i32 -2840
  tail call void @VCS_update(ptr noundef %padapter, ptr noundef %add.ptr.i) #8
  %117 = ptrtoint ptr %plist.012.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %plist.0.i = load ptr, ptr %plist.012.i, align 4
  %cmp.i.not.i = icmp eq ptr %plist.0.i, %asoc_list
  br i1 %cmp.i.not.i, label %for.body.i.associated_clients_update.exit.sink.split_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.associated_clients_update.exit.sink.split_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %associated_clients_update.exit.sink.split

associated_clients_update.exit.sink.split:        ; preds = %for.body.i.associated_clients_update.exit.sink.split_crit_edge, %if.then.i.associated_clients_update.exit.sink.split_crit_edge, %for.end.associated_clients_update.exit.sink.split_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #8
  br label %associated_clients_update.exit

associated_clients_update.exit:                   ; preds = %associated_clients_update.exit.sink.split, %if.end179.associated_clients_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %chk_alive_list) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_beacon(ptr noundef %padapter, i8 noundef zeroext %ie_id, ptr nocapture noundef readonly %oui, i8 noundef zeroext %tx) local_unnamed_addr #0 align 64 {
entry:
  %wps_ielen.i.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  %tmp_len.i = alloca i32, align 4
  %tim_ielen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %padapter, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bstart_bss = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 34
  %0 = ptrtoint ptr %bstart_bss to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bstart_bss, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %bcn_update_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock) #8
  %2 = zext i8 %ie_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %ie_id, label %if.end3.sw.epilog_crit_edge [
    i8 -35, label %sw.bb9
    i8 5, label %sw.bb4
    i8 42, label %sw.bb5
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end3
  %ies.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_len.i) #8
  %3 = ptrtoint ptr %tmp_len.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp_len.i, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tim_ielen.i) #8
  %4 = ptrtoint ptr %tim_ielen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tim_ielen.i, align 4, !annotation !15
  %tim_bitmap.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 20
  %5 = ptrtoint ptr %tim_bitmap.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tim_bitmap.i, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #8
  %add.ptr.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12, i32 12
  %ie_length.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 11
  %8 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %ie_length.i, align 1
  %sub.i = add i32 %9, -12
  %call.i = call ptr @rtw_get_ie(ptr noundef %add.ptr.i, i32 noundef 5, ptr noundef nonnull %tim_ielen.i, i32 noundef %sub.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb4.if.else.i_crit_edge, label %land.lhs.true.i

sw.bb4.if.else.i_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb4
  %10 = ptrtoint ptr %tim_ielen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tim_ielen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %11, 2
  %12 = ptrtoint ptr %tim_ielen.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i, ptr %tim_ielen.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %call.i, i32 %add.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %ies.i to i32
  %13 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %ie_length.i, align 1
  %add.neg.i = add i32 %sub.ptr.rhs.cast.i, -2
  %15 = add i32 %11, %sub.ptr.lhs.cast.i
  %16 = sub i32 %add.neg.i, %15
  %sub4.i = add i32 %16, %14
  br label %if.end28.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb4.if.else.i_crit_edge
  %17 = ptrtoint ptr %tim_ielen.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %tim_ielen.i, align 4
  %18 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %ie_length.i, align 1
  %sub7.i = add i32 %19, -12
  %call8.i = call ptr @rtw_get_ie(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef nonnull %tmp_len.i, i32 noundef %sub7.i) #8
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.else.i.if.end.i_crit_edge, label %if.then10.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %tmp_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tmp_len.i, align 4
  %add12.i = add i32 %21, 14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then10.i, %if.else.i.if.end.i_crit_edge
  %offset.0.i = phi i32 [ %add12.i, %if.then10.i ], [ 12, %if.else.i.if.end.i_crit_edge ]
  %22 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %ie_length.i, align 1
  %sub15.i = add i32 %23, -12
  %call16.i = call ptr @rtw_get_ie(ptr noundef %add.ptr.i, i32 noundef 1, ptr noundef nonnull %tmp_len.i, i32 noundef %sub15.i) #8
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end.i.if.end21.i_crit_edge, label %if.then18.i

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %tmp_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tmp_len.i, align 4
  %add19.i = add i32 %offset.0.i, 2
  %add20.i = add i32 %add19.i, %25
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %if.end.i.if.end21.i_crit_edge
  %offset.1.i = phi i32 [ %add20.i, %if.then18.i ], [ %offset.0.i, %if.end.i.if.end21.i_crit_edge ]
  %add22.i = add i32 %offset.1.i, 3
  %add.ptr23.i = getelementptr i8, ptr %ies.i, i32 %add22.i
  %26 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %ie_length.i, align 1
  %28 = ptrtoint ptr %tim_ielen.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tim_ielen.i, align 4
  %30 = add i32 %27, -3
  %31 = add i32 %offset.1.i, %29
  %sub26.i = sub i32 %30, %31
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end21.i, %if.then.i
  %dst_ie.0.i = phi ptr [ %call.i, %if.then.i ], [ %add.ptr23.i, %if.end21.i ]
  %premainder_ie.0.i = phi ptr [ %add.ptr1.i, %if.then.i ], [ %add.ptr23.i, %if.end21.i ]
  %remainder_ielen.0.i = phi i32 [ %sub4.i, %if.then.i ], [ %sub26.i, %if.end21.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remainder_ielen.0.i)
  %cmp29.not.i = icmp eq i32 %remainder_ielen.0.i, 0
  br i1 %cmp29.not.i, label %if.end28.i.if.end37.i_crit_edge, label %if.then30.i

if.end28.i.if.end37.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then30.i:                                      ; preds = %if.end28.i
  %call31.i = call ptr @_rtw_malloc(i32 noundef %remainder_ielen.0.i) #8
  %tobool32.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool32.not.i, label %if.then30.i.if.end37.i_crit_edge, label %land.lhs.true33.i

if.then30.i.if.end37.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

land.lhs.true33.i:                                ; preds = %if.then30.i
  %tobool34.not.i = icmp eq ptr %premainder_ie.0.i, null
  br i1 %tobool34.not.i, label %land.lhs.true33.i.if.end37.i_crit_edge, label %if.then35.i

land.lhs.true33.i.if.end37.i_crit_edge:           ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then35.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = call ptr @memcpy(ptr %call31.i, ptr %premainder_ie.0.i, i32 %remainder_ielen.0.i)
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then35.i, %land.lhs.true33.i.if.end37.i_crit_edge, %if.then30.i.if.end37.i_crit_edge, %if.end28.i.if.end37.i_crit_edge
  %pbackup_remainder_ie.0.i = phi ptr [ %call31.i, %if.then35.i ], [ %call31.i, %land.lhs.true33.i.if.end37.i_crit_edge ], [ null, %if.then30.i.if.end37.i_crit_edge ], [ null, %if.end28.i.if.end37.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %dst_ie.0.i, i32 1
  %33 = ptrtoint ptr %dst_ie.0.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 5, ptr %dst_ie.0.i, align 1
  %34 = ptrtoint ptr %tim_bitmap.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %tim_bitmap.i, align 2
  %conv.i = zext i16 %35 to i32
  %and.i = and i32 %conv.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool39.not.i = icmp eq i32 %and.i, 0
  %and43.i = and i32 %conv.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %or.cond.i = or i1 %tobool39.not.i, %tobool44.not.i
  %storemerge.i = select i1 %or.cond.i, i32 4, i32 5
  %36 = ptrtoint ptr %tim_ielen.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %storemerge.i, ptr %tim_ielen.i, align 4
  %conv48.i = trunc i32 %storemerge.i to i8
  %incdec.ptr49.i = getelementptr i8, ptr %dst_ie.0.i, i32 2
  %37 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv48.i, ptr %incdec.ptr.i, align 1
  %incdec.ptr50.i = getelementptr i8, ptr %dst_ie.0.i, i32 3
  %38 = ptrtoint ptr %incdec.ptr49.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %incdec.ptr49.i, align 1
  %incdec.ptr51.i = getelementptr i8, ptr %dst_ie.0.i, i32 4
  %39 = ptrtoint ptr %incdec.ptr50.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %incdec.ptr50.i, align 1
  %40 = ptrtoint ptr %tim_bitmap.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tim_bitmap.i, align 2
  %42 = trunc i16 %41 to i8
  %43 = and i8 %42, 1
  %dst_ie.1.i = getelementptr i8, ptr %dst_ie.0.i, i32 5
  %44 = ptrtoint ptr %incdec.ptr51.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %incdec.ptr51.i, align 1
  %45 = load i32, ptr %tim_ielen.i, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %45, label %if.end37.i.if.end82.i_crit_edge [
    i32 4, label %if.then63.i
    i32 5, label %if.then79.i
  ]

if.end37.i.if.end82.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.i

if.then63.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %tim_bitmap.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %tim_bitmap.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %48)
  %tobool67.not.i = icmp ult i16 %48, 256
  %pvb.0.off8.v.v.i = select i1 %tobool67.not.i, i16 %7, i16 %48
  %pvb.0.off8.v.i = lshr i16 %pvb.0.off8.v.v.i, 8
  %pvb.0.off8.i = trunc i16 %pvb.0.off8.v.i to i8
  %incdec.ptr75.i = getelementptr i8, ptr %dst_ie.0.i, i32 6
  %49 = ptrtoint ptr %dst_ie.1.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %pvb.0.off8.i, ptr %dst_ie.1.i, align 1
  br label %if.end82.i

if.then79.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %dst_ie.1.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %7, ptr %dst_ie.1.i, align 1
  %add.ptr80.i = getelementptr i8, ptr %dst_ie.0.i, i32 7
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then79.i, %if.then63.i, %if.end37.i.if.end82.i_crit_edge
  %dst_ie.2.i = phi ptr [ %incdec.ptr75.i, %if.then63.i ], [ %add.ptr80.i, %if.then79.i ], [ %dst_ie.1.i, %if.end37.i.if.end82.i_crit_edge ]
  %tobool83.not.i = icmp eq ptr %pbackup_remainder_ie.0.i, null
  br i1 %tobool83.not.i, label %if.end82.i.update_BCNTIM.exit_crit_edge, label %if.then84.i

if.end82.i.update_BCNTIM.exit_crit_edge:          ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_BCNTIM.exit

if.then84.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = call ptr @memcpy(ptr %dst_ie.2.i, ptr %pbackup_remainder_ie.0.i, i32 %remainder_ielen.0.i)
  call void @kfree(ptr noundef nonnull %pbackup_remainder_ie.0.i) #8
  br label %update_BCNTIM.exit

update_BCNTIM.exit:                               ; preds = %if.then84.i, %if.end82.i.update_BCNTIM.exit_crit_edge
  %sub.ptr.lhs.cast86.i = ptrtoint ptr %dst_ie.2.i to i32
  %sub.ptr.rhs.cast87.i = ptrtoint ptr %ies.i to i32
  %sub.ptr.sub88.i = sub i32 %remainder_ielen.0.i, %sub.ptr.rhs.cast87.i
  %add89.i = add i32 %sub.ptr.sub88.i, %sub.ptr.lhs.cast86.i
  %52 = ptrtoint ptr %ie_length.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %add89.i, ptr %ie_length.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tim_ielen.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_len.i) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #8
  %53 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %len.i, align 4
  %ERP_enable.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 18
  %54 = ptrtoint ptr %ERP_enable.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ERP_enable.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i27 = icmp eq i8 %55, 0
  br i1 %tobool.not.i27, label %sw.bb5.update_bcn_erpinfo_ie.exit_crit_edge, label %if.end.i32

sw.bb5.update_bcn_erpinfo_ie.exit_crit_edge:      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_bcn_erpinfo_ie.exit

if.end.i32:                                       ; preds = %sw.bb5
  %add.ptr.i28 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12, i32 12
  %ie_length.i29 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 11
  %56 = ptrtoint ptr %ie_length.i29 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %ie_length.i29, align 1
  %sub.i30 = add i32 %57, -12
  %call.i31 = call ptr @rtw_get_ie(ptr noundef %add.ptr.i28, i32 noundef 42, ptr noundef nonnull %len.i, i32 noundef %sub.i30) #8
  %tobool1.not.i = icmp eq ptr %call.i31, null
  br i1 %tobool1.not.i, label %if.end.i32.update_bcn_erpinfo_ie.exit_crit_edge, label %land.lhs.true.i34

if.end.i32.update_bcn_erpinfo_ie.exit_crit_edge:  ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_bcn_erpinfo_ie.exit

land.lhs.true.i34:                                ; preds = %if.end.i32
  %58 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.not.i33 = icmp eq i32 %59, 0
  br i1 %cmp.not.i33, label %land.lhs.true.i34.update_bcn_erpinfo_ie.exit_crit_edge, label %if.then2.i

land.lhs.true.i34.update_bcn_erpinfo_ie.exit_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_bcn_erpinfo_ie.exit

if.then2.i:                                       ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #10
  %num_sta_non_erp.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 41
  %60 = ptrtoint ptr %num_sta_non_erp.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_sta_non_erp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp3.i = icmp eq i32 %61, 1
  %data.i = getelementptr inbounds %struct.ndis_80211_var_ie, ptr %call.i31, i32 0, i32 2
  %62 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %data.i, align 1
  %64 = and i8 %63, -4
  %masksel.i = select i1 %cmp3.i, i8 3, i8 0
  %.sink.i = or i8 %64, %masksel.i
  store i8 %.sink.i, ptr %data.i, align 1
  %num_sta_no_short_preamble.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 43
  %65 = ptrtoint ptr %num_sta_no_short_preamble.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_sta_no_short_preamble.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp11.i = icmp sgt i32 %66, 0
  %67 = and i8 %.sink.i, -5
  %masksel44.i = select i1 %cmp11.i, i8 4, i8 0
  %.sink43.i = or i8 %masksel44.i, %67
  %68 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %.sink43.i, ptr %data.i, align 1
  call void @ERP_IE_handler(ptr noundef nonnull %padapter, ptr noundef nonnull %call.i31) #8
  br label %update_bcn_erpinfo_ie.exit

update_bcn_erpinfo_ie.exit:                       ; preds = %if.then2.i, %land.lhs.true.i34.update_bcn_erpinfo_ie.exit_crit_edge, %if.end.i32.update_bcn_erpinfo_ie.exit_crit_edge, %sw.bb5.update_bcn_erpinfo_ie.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end3
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @RTW_WPA_OUI, ptr noundef dereferenceable(4) %oui, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i35 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i35, label %sw.bb9.sw.epilog_crit_edge, label %if.else.i36

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.else.i36:                                      ; preds = %sw.bb9
  %bcmp21.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @WMM_OUI, ptr noundef dereferenceable(4) %oui, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21.i)
  %tobool2.not.i = icmp eq i32 %bcmp21.i, 0
  br i1 %tobool2.not.i, label %if.else.i36.sw.epilog_crit_edge, label %if.else4.i

if.else.i36.sw.epilog_crit_edge:                  ; preds = %if.else.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.else4.i:                                       ; preds = %if.else.i36
  %bcmp22.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @WPS_OUI, ptr noundef dereferenceable(4) %oui, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp22.i)
  %tobool6.not.i = icmp eq i32 %bcmp22.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else4.i.sw.epilog_crit_edge

if.else4.i.sw.epilog_crit_edge:                   ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then7.i:                                       ; preds = %if.else4.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wps_ielen.i.i) #8
  %69 = ptrtoint ptr %wps_ielen.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %wps_ielen.i.i, align 4
  %ies.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12
  %ie_length.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 11
  %70 = ptrtoint ptr %ie_length.i.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %ie_length.i.i, align 1
  %add.ptr.i.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12, i32 12
  %sub.i.i = add i32 %71, -12
  %call.i.i = call ptr @rtw_get_wps_ie(ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef null, ptr noundef nonnull %wps_ielen.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then7.i.update_bcn_wps_ie.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then7.i.update_bcn_wps_ie.exit.i_crit_edge:    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_bcn_wps_ie.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then7.i
  %72 = ptrtoint ptr %wps_ielen.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %wps_ielen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i.i = icmp eq i32 %73, 0
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.update_bcn_wps_ie.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.update_bcn_wps_ie.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_bcn_wps_ie.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %wps_beacon_ie.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 53
  %74 = ptrtoint ptr %wps_beacon_ie.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wps_beacon_ie.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %75, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.update_bcn_wps_ie.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.update_bcn_wps_ie.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_bcn_wps_ie.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %ies.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.ptr4.i.i = getelementptr i8, ptr %call.i.i, i32 %73
  %76 = add i32 %73, %sub.ptr.sub.i.i
  %sub6.i.i = sub i32 %71, %76
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %76)
  %cmp7.not.i.i = icmp eq i32 %71, %76
  br i1 %cmp7.not.i.i, label %if.end3.i.i.if.end13.i.i_crit_edge, label %if.then8.i.i

if.end3.i.i.if.end13.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i.i

if.then8.i.i:                                     ; preds = %if.end3.i.i
  %call9.i.i = call ptr @_rtw_malloc(i32 noundef %sub6.i.i) #8
  %tobool10.not.i.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not.i.i, label %if.then8.i.i.if.end13.i.i_crit_edge, label %if.then11.i.i

if.then8.i.i.if.end13.i.i_crit_edge:              ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i.i

if.then11.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = call ptr @memcpy(ptr %call9.i.i, ptr %add.ptr4.i.i, i32 %sub6.i.i)
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then11.i.i, %if.then8.i.i.if.end13.i.i_crit_edge, %if.end3.i.i.if.end13.i.i_crit_edge
  %pbackup_remainder_ie.0.i.i = phi ptr [ %call9.i.i, %if.then11.i.i ], [ null, %if.then8.i.i.if.end13.i.i_crit_edge ], [ null, %if.end3.i.i.if.end13.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %75, i32 1
  %78 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %79 to i32
  %80 = ptrtoint ptr %wps_ielen.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv.i.i, ptr %wps_ielen.i.i, align 4
  %add.i.i = add i32 %sub.ptr.sub.i.i, 2
  %add14.i.i = add i32 %add.i.i, %sub6.i.i
  %add15.i.i = add i32 %add14.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 769, i32 %add15.i.i)
  %cmp16.i.i = icmp ult i32 %add15.i.i, 769
  br i1 %cmp16.i.i, label %if.then18.i.i, label %if.end13.i.i.if.end29.i.i_crit_edge

if.end13.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i.i

if.then18.i.i:                                    ; preds = %if.end13.i.i
  %add19.i.i = add nuw nsw i32 %conv.i.i, 2
  %81 = call ptr @memcpy(ptr %call.i.i, ptr %75, i32 %add19.i.i)
  %tobool22.not.i.i = icmp eq ptr %pbackup_remainder_ie.0.i.i, null
  br i1 %tobool22.not.i.i, label %if.then18.i.i.if.end24.i.i_crit_edge, label %if.then23.i.i

if.then18.i.i.if.end24.i.i_crit_edge:             ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i.i

if.then23.i.i:                                    ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %wps_ielen.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %wps_ielen.i.i, align 4
  %add20.i.i = add i32 %83, 2
  %add.ptr21.i.i = getelementptr i8, ptr %call.i.i, i32 %add20.i.i
  %84 = call ptr @memcpy(ptr %add.ptr21.i.i, ptr %pbackup_remainder_ie.0.i.i, i32 %sub6.i.i)
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then23.i.i, %if.then18.i.i.if.end24.i.i_crit_edge
  %85 = ptrtoint ptr %wps_ielen.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %wps_ielen.i.i, align 4
  %add27.i.i = add i32 %86, %add14.i.i
  %87 = ptrtoint ptr %ie_length.i.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %add27.i.i, ptr %ie_length.i.i, align 1
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.end24.i.i, %if.end13.i.i.if.end29.i.i_crit_edge
  call void @kfree(ptr noundef %pbackup_remainder_ie.0.i.i) #8
  br label %update_bcn_wps_ie.exit.i

update_bcn_wps_ie.exit.i:                         ; preds = %if.end29.i.i, %if.end.i.i.update_bcn_wps_ie.exit.i_crit_edge, %lor.lhs.false.i.i.update_bcn_wps_ie.exit.i_crit_edge, %if.then7.i.update_bcn_wps_ie.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wps_ielen.i.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %update_bcn_wps_ie.exit.i, %if.else4.i.sw.epilog_crit_edge, %if.else.i36.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %update_bcn_erpinfo_ie.exit, %update_BCNTIM.exit, %if.end3.sw.epilog_crit_edge
  %update_bcn = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 70
  %88 = ptrtoint ptr %update_bcn to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %update_bcn, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tx)
  %tobool11.not = icmp eq i8 %tx, 0
  br i1 %tobool11.not, label %sw.epilog.cleanup_crit_edge, label %if.then12

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call = call zeroext i8 @set_tx_beacon_cmd(ptr noundef nonnull %padapter) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_stainfo_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @ap_free_sta(ptr noundef %padapter, ptr noundef %psta, i1 noundef zeroext %active, i16 noundef zeroext %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %psta, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %active, label %if.then2, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 12
  %call = tail call i32 @send_delba(ptr noundef %padapter, i8 noundef zeroext 0, ptr noundef %hwaddr) #8
  %call5 = tail call i32 @send_delba(ptr noundef %padapter, i8 noundef zeroext 1, ptr noundef %hwaddr) #8
  %call8 = tail call i32 @issue_deauth(ptr noundef %padapter, ptr noundef %hwaddr, i16 noundef zeroext %reason) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %if.end.if.end9_crit_edge
  %agg_enable_bitmap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 10
  %0 = ptrtoint ptr %agg_enable_bitmap to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %agg_enable_bitmap, align 8
  %candidate_tid_bitmap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 11
  %1 = ptrtoint ptr %candidate_tid_bitmap to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %candidate_tid_bitmap, align 1
  %call11 = tail call zeroext i8 @rtw_clearstakey_cmd(ptr noundef %padapter, ptr noundef nonnull %psta, i8 noundef zeroext 1) #8
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull %psta) #8
  %state = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 8
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %and = and i32 %3, -2
  store i32 %and, ptr %state, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull %psta) #8
  %hwaddr13 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 12
  tail call void @rtw_cfg80211_indicate_sta_disassoc(ptr noundef %padapter, ptr noundef %hwaddr13, i16 noundef zeroext %reason) #8
  tail call void @report_del_sta_event(ptr noundef %padapter, ptr noundef %hwaddr13, i16 noundef zeroext %reason) #8
  %call17 = tail call zeroext i8 @bss_cap_update_on_sta_leave(ptr noundef %padapter, ptr noundef nonnull %psta)
  %call18 = tail call i32 @rtw_free_stainfo(ptr noundef %padapter, ptr noundef nonnull %psta) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %call17, %if.end9 ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_sta_to_xmit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_get_oper_ch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @SelectChannel(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo_by_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @issue_nulldata(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @associated_clients_update(ptr noundef %padapter, i8 noundef zeroext %updated) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %updated)
  %tobool.not = icmp eq i8 %updated, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %asoc_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #8
  %asoc_list = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 9
  %0 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %plist.010 = load ptr, ptr %asoc_list, align 4
  %cmp.i.not11 = icmp eq ptr %plist.010, %asoc_list
  br i1 %cmp.i.not11, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %plist.012 = phi ptr [ %plist.0, %for.body.for.body_crit_edge ], [ %plist.010, %if.then.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %plist.012, i32 -2840
  tail call void @VCS_update(ptr noundef %padapter, ptr noundef %add.ptr) #8
  %1 = ptrtoint ptr %plist.012 to i32
  call void @__asan_load4_noabort(i32 %1)
  %plist.0 = load ptr, ptr %plist.012, align 4
  %cmp.i.not = icmp eq ptr %plist.0, %asoc_list
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @add_RATid(ptr noundef %padapter, ptr noundef %psta, i8 noundef zeroext %rssi_level) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %psta, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 8
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @rtw_hal_update_sta_rate_mask(ptr noundef %padapter, ptr noundef nonnull %psta) #8
  %ra_mask = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 29
  %2 = ptrtoint ptr %ra_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ra_mask, align 8
  %call = tail call zeroext i8 @query_ra_short_GI(ptr noundef nonnull %psta) #8
  %ds_config = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 7, i32 3
  %4 = ptrtoint ptr %ds_config to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %ds_config, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %cmp = icmp ugt i32 %5, 14
  br i1 %cmp, label %if.end3.if.end27_crit_edge, label %if.else

if.end3.if.end27_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %and6 = and i32 %3, 268431360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %spec.select = select i1 %tobool7.not, i8 0, i8 8
  %and13 = and i32 %3, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %6 = or i8 %spec.select, 2
  %sta_band.1 = select i1 %tobool14.not, i8 %spec.select, i8 %6
  %and20 = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp ne i32 %and20, 0
  %7 = zext i1 %tobool21.not to i8
  %spec.select63 = or i8 %sta_band.1, %7
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end3.if.end27_crit_edge
  %sta_band.2 = phi i8 [ 0, %if.end3.if.end27_crit_edge ], [ %spec.select63, %if.else ]
  %wireless_mode = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 30
  %8 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %sta_band.2, ptr %wireless_mode, align 4
  %call28 = tail call zeroext i8 @networktype_to_raid_ex(ptr noundef %padapter, ptr noundef nonnull %psta) #8
  %raid = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 27
  %9 = ptrtoint ptr %raid to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call28, ptr %raid, align 2
  %aid = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 9
  %10 = ptrtoint ptr %aid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %aid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %11)
  %cmp29 = icmp ult i32 %11, 32
  br i1 %cmp29, label %if.then31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #8
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 10
  %12 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mac_id, align 8
  %conv32 = trunc i32 %13 to i8
  %14 = ptrtoint ptr %arg to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv32, ptr %arg, align 4
  %arrayidx34 = getelementptr inbounds [4 x i8], ptr %arg, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call28, ptr %arrayidx34, align 1
  %arrayidx35 = getelementptr inbounds [4 x i8], ptr %arg, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call, ptr %arrayidx35, align 2
  %init_rate = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 28
  %17 = ptrtoint ptr %init_rate to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %init_rate, align 1
  %arrayidx36 = getelementptr inbounds [4 x i8], ptr %arg, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx36, align 1
  call void @rtw_hal_add_ra_tid(ptr noundef %padapter, i32 noundef %3, ptr noundef nonnull %arg, i8 noundef zeroext %rssi_level) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_update_sta_rate_mask(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @query_ra_short_GI(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @networktype_to_raid_ex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_add_ra_tid(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_bmc_sta(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %if.then

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then:                                          ; preds = %entry
  %aid = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %aid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %aid, align 4
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 10
  %1 = ptrtoint ptr %mac_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %mac_id, align 8
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %arrayidx, align 4
  %qos_option = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 11
  %3 = ptrtoint ptr %qos_option to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qos_option, align 4
  %htpriv = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 38
  %4 = ptrtoint ptr %htpriv to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %htpriv, align 8
  %ieee8021x_blocked = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %ieee8021x_blocked to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ieee8021x_blocked, align 8
  %sta_stats = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 34
  %6 = call ptr @memset(ptr %sta_stats, i32 0, i32 168)
  %supported_rates = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 9
  %call4 = tail call i32 @rtw_get_rateset_len(ptr noundef %supported_rates) #8
  %ds_config = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 7, i32 3
  %7 = ptrtoint ptr %ds_config to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %ds_config, align 1
  %call6 = tail call i32 @rtw_check_network_type(ptr noundef %supported_rates, i32 noundef %call4, i32 noundef %8) #8
  %and = and i32 %call6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else, label %if.then.if.end20_crit_edge

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else:                                          ; preds = %if.then
  %conv7 = and i32 %call6, 255
  %conv = trunc i32 %call6 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv7)
  %cmp = icmp eq i32 %conv7, 0
  br i1 %cmp, label %if.then12, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %ds_config to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %ds_config, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %10)
  %cmp15 = icmp ult i32 %10, 15
  %. = zext i1 %cmp15 to i8
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %if.else.if.end20_crit_edge, %if.then.if.end20_crit_edge
  %network_type.0 = phi i8 [ %conv, %if.else.if.end20_crit_edge ], [ 1, %if.then.if.end20_crit_edge ], [ %., %if.then12 ]
  tail call void @update_sta_basic_rate(ptr noundef nonnull %call, i8 noundef zeroext %network_type.0) #8
  %wireless_mode = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 30
  %11 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %network_type.0, ptr %wireless_mode, align 4
  tail call void @rtw_hal_update_sta_rate_mask(ptr noundef %padapter, ptr noundef nonnull %call) #8
  %ra_mask = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 29
  %12 = ptrtoint ptr %ra_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ra_mask, align 8
  %call21 = tail call zeroext i8 @networktype_to_raid_ex(ptr noundef %padapter, ptr noundef nonnull %call) #8
  %raid = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 27
  %14 = ptrtoint ptr %raid to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call21, ptr %raid, align 2
  tail call void @rtw_hal_set_odm_var(ptr noundef %padapter, i32 noundef 0, ptr noundef nonnull %call, i1 noundef zeroext true) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #8
  %15 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arg, align 4
  %16 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mac_id, align 8
  %conv23 = trunc i32 %17 to i8
  store i8 %conv23, ptr %arg, align 4
  %18 = ptrtoint ptr %raid to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %raid, align 2
  %arrayidx26 = getelementptr inbounds [4 x i8], ptr %arg, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx26, align 1
  %init_rate = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 28
  %21 = ptrtoint ptr %init_rate to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %init_rate, align 1
  %arrayidx28 = getelementptr inbounds [4 x i8], ptr %arg, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx28, align 1
  call void @rtw_hal_add_ra_tid(ptr noundef %padapter, i32 noundef %13, ptr noundef nonnull %arg, i8 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #8
  call void @rtw_sta_media_status_rpt(ptr noundef %padapter, ptr noundef nonnull %call, i32 noundef 1) #8
  call void @_raw_spin_lock_bh(ptr noundef nonnull %call) #8
  %state = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 8
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %state, align 8
  call void @_raw_spin_unlock_bh(ptr noundef nonnull %call) #8
  br label %if.end30

if.end30:                                         ; preds = %if.end20, %entry.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_rateset_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_check_network_type(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_sta_basic_rate(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_odm_var(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sta_media_status_rpt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_sta_info_apmode(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %htpriv1 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38
  tail call void @rtw_hal_set_odm_var(ptr noundef %padapter, i32 noundef 0, ptr noundef %psta, i1 noundef zeroext true) #8
  %0 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %securitypriv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %spec.select161 = zext i1 %cmp to i32
  %2 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select161, ptr %2, align 8
  tail call void @VCS_update(ptr noundef %padapter, ptr noundef %psta) #8
  %4 = ptrtoint ptr %htpriv1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %htpriv1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else85, label %if.then3

if.then3:                                         ; preds = %entry
  %ampdu_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 1
  %6 = ptrtoint ptr %ampdu_enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ampdu_enable, align 1
  %ampdu_enable4 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 1
  %8 = ptrtoint ptr %ampdu_enable4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %ampdu_enable4, align 1
  %ht_cap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 15
  %ampdu_params_info = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 15, i32 1
  %9 = ptrtoint ptr %ampdu_params_info to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ampdu_params_info, align 1
  %11 = lshr i8 %10, 2
  %12 = and i8 %11, 7
  %rx_ampdu_min_spacing = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 6
  %13 = ptrtoint ptr %rx_ampdu_min_spacing to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %rx_ampdu_min_spacing, align 4
  %14 = ptrtoint ptr %ht_cap to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %ht_cap, align 1
  %ht_cap8 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 15
  %16 = ptrtoint ptr %ht_cap8 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %ht_cap8, align 1
  %and11153 = and i16 %15, 512
  %18 = and i16 %and11153, %17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool13.not = icmp eq i16 %18, 0
  %19 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 31
  br i1 %tobool13.not, label %if.then3.if.end26_crit_edge, label %if.end17

if.then3.if.end26_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end17:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %19, align 1
  %cur_bwmode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %21 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cur_bwmode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp21 = icmp ne i8 %22, 0
  %spec.store.select = zext i1 %cmp21 to i8
  br label %if.end26

if.end26:                                         ; preds = %if.end17, %if.then3.if.end26_crit_edge
  %spec.store.select.sink = phi i8 [ %spec.store.select, %if.end17 ], [ 0, %if.then3.if.end26_crit_edge ]
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.store.select.sink, ptr %19, align 1
  %cur_ch_offset = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 9
  %24 = ptrtoint ptr %cur_ch_offset to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cur_ch_offset, align 2
  %ch_offset = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 7
  %26 = ptrtoint ptr %ch_offset to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %ch_offset, align 1
  %27 = ptrtoint ptr %ht_cap8 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %ht_cap8, align 1
  %and33154 = and i16 %15, 8192
  %29 = and i16 %and33154, %28
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool35.not = icmp eq i16 %29, 0
  br i1 %tobool35.not, label %if.end26.if.end37_crit_edge, label %if.then36

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %sgi_20m = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 8
  %30 = ptrtoint ptr %sgi_20m to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %sgi_20m, align 2
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end26.if.end37_crit_edge
  %31 = ptrtoint ptr %ht_cap8 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %ht_cap8, align 1
  %and44155 = and i16 %15, 16384
  %33 = and i16 %and44155, %32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool46.not = icmp eq i16 %33, 0
  br i1 %tobool46.not, label %if.end37.if.end56_crit_edge, label %if.then47

if.end37.if.end56_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then47:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp50 = icmp eq i8 %35, 1
  %sgi_40m = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 9
  %. = zext i1 %cmp50 to i8
  %36 = ptrtoint ptr %sgi_40m to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %., ptr %sgi_40m, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.then47, %if.end37.if.end56_crit_edge
  %qos_option = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 11
  %37 = ptrtoint ptr %qos_option to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %qos_option, align 4
  %ldpc_cap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 12
  %38 = ptrtoint ptr %ldpc_cap to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ldpc_cap, align 2
  %40 = and i8 %39, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp59.not = icmp eq i8 %40, 0
  br i1 %cmp59.not, label %if.end56.if.end69_crit_edge, label %land.lhs.true

if.end56.if.end69_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

land.lhs.true:                                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ht_cap, align 1
  %43 = and i8 %42, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool65.not = icmp eq i8 %43, 0
  %spec.select = select i1 %tobool65.not, i8 0, i8 10
  br label %if.end69

if.end69:                                         ; preds = %land.lhs.true, %if.end56.if.end69_crit_edge
  %cur_ldpc_cap.0 = phi i8 [ 0, %if.end56.if.end69_crit_edge ], [ %spec.select, %land.lhs.true ]
  %stbc_cap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 13
  %44 = ptrtoint ptr %stbc_cap to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %stbc_cap, align 1
  %46 = and i8 %45, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp72.not = icmp eq i8 %46, 0
  br i1 %cmp72.not, label %if.end69.if.end91_crit_edge, label %land.lhs.true74

if.end69.if.end91_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

land.lhs.true74:                                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %ht_cap, i32 1
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr, align 1
  %49 = and i8 %48, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool79.not = icmp eq i8 %49, 0
  %spec.select156 = select i1 %tobool79.not, i8 0, i8 10
  br label %if.end91

if.else85:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ampdu_enable86 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 1
  %50 = ptrtoint ptr %ampdu_enable86 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %ampdu_enable86, align 1
  %sgi_20m87 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 8
  %51 = ptrtoint ptr %sgi_20m87 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %sgi_20m87, align 2
  %sgi_40m88 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 9
  %52 = ptrtoint ptr %sgi_40m88 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %sgi_40m88, align 1
  %bw_mode89 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 31
  %53 = ptrtoint ptr %bw_mode89 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %bw_mode89, align 1
  %ch_offset90 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 7
  %54 = ptrtoint ptr %ch_offset90 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %ch_offset90, align 1
  br label %if.end91

if.end91:                                         ; preds = %if.else85, %land.lhs.true74, %if.end69.if.end91_crit_edge
  %cur_ldpc_cap.1 = phi i8 [ %cur_ldpc_cap.0, %if.end69.if.end91_crit_edge ], [ 0, %if.else85 ], [ %cur_ldpc_cap.0, %land.lhs.true74 ]
  %cur_stbc_cap.0 = phi i8 [ 0, %if.end69.if.end91_crit_edge ], [ 0, %if.else85 ], [ %spec.select156, %land.lhs.true74 ]
  %ldpc_cap92 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 12
  %55 = ptrtoint ptr %ldpc_cap92 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %cur_ldpc_cap.1, ptr %ldpc_cap92, align 2
  %stbc_cap93 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 13
  %56 = ptrtoint ptr %stbc_cap93 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %cur_stbc_cap.0, ptr %stbc_cap93, align 1
  %beamform_cap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 14
  %57 = ptrtoint ptr %beamform_cap to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %beamform_cap, align 4
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 12
  %call = tail call i32 @send_delba(ptr noundef %padapter, i8 noundef zeroext 0, ptr noundef %hwaddr) #8
  %call96 = tail call i32 @send_delba(ptr noundef %padapter, i8 noundef zeroext 1, ptr noundef %hwaddr) #8
  %agg_enable_bitmap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 10
  %58 = ptrtoint ptr %agg_enable_bitmap to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %agg_enable_bitmap, align 4
  %candidate_tid_bitmap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 11
  %59 = ptrtoint ptr %candidate_tid_bitmap to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %candidate_tid_bitmap, align 1
  tail call void @update_ldpc_stbc_cap(ptr noundef %psta) #8
  %sta_stats = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 34
  %60 = call ptr @memset(ptr %sta_stats, i32 0, i32 168)
  tail call void @_raw_spin_lock_bh(ptr noundef %psta) #8
  %state = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 8
  %61 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %state, align 8
  %or97 = or i32 %62, 1
  store i32 %or97, ptr %state, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %psta) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @VCS_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_delba(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_ldpc_stbc_cap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @start_bss_network(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %max_AMPDU_len.i = alloca i8, align 1
  %min_MPDU_spacing.i = alloca i8, align 1
  %val8 = alloca i8, align 1
  %bcn_interval = alloca i16, align 2
  %acparm = alloca i32, align 4
  %ie_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val8) #8
  %0 = ptrtoint ptr %val8 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val8, align 1, !annotation !15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bcn_interval) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acparm) #8
  %1 = ptrtoint ptr %acparm to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %acparm, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ie_len) #8
  %2 = ptrtoint ptr %ie_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ie_len, align 4, !annotation !15
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6
  %network1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %beacon_period = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 7, i32 1
  %3 = ptrtoint ptr %beacon_period to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %beacon_period, align 1
  %conv = trunc i32 %4 to i16
  %5 = ptrtoint ptr %bcn_interval to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %bcn_interval, align 2
  %ds_config = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 7, i32 3
  %6 = ptrtoint ptr %ds_config to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ds_config, align 1
  %conv3 = trunc i32 %7 to i8
  %add.ptr = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 12, i32 12
  %ie_length = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 11
  %8 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %ie_length, align 1
  %sub = add i32 %9, -12
  %call = tail call ptr @rtw_get_wps_ie(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef null, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bstart_bss = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 34
  %10 = ptrtoint ptr %bstart_bss to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %bstart_bss, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %qospriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 30
  %11 = ptrtoint ptr %qospriv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qospriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not = icmp eq i32 %12, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %WMM_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 17
  %13 = ptrtoint ptr %WMM_enable to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %WMM_enable, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %htpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33
  %14 = ptrtoint ptr %htpriv to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not = icmp eq i8 %15, 0
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %WMM_enable9 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 17
  %16 = ptrtoint ptr %WMM_enable9 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %WMM_enable9, align 1
  %HT_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 20
  %17 = ptrtoint ptr %HT_enable to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %HT_enable, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %max_AMPDU_len.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %min_MPDU_spacing.i) #8
  %HT_caps.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37
  %AMPDU_para.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 37, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %AMPDU_para.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %AMPDU_para.i, align 2
  %20 = and i8 %19, 3
  %21 = ptrtoint ptr %max_AMPDU_len.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %max_AMPDU_len.i, align 1
  %22 = lshr i8 %19, 2
  %23 = and i8 %22, 7
  %24 = ptrtoint ptr %min_MPDU_spacing.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %min_MPDU_spacing.i, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 37, ptr noundef nonnull %min_MPDU_spacing.i) #8
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 38, ptr noundef nonnull %max_AMPDU_len.i) #8
  %25 = ptrtoint ptr %HT_caps.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %HT_caps.i, align 4
  %27 = lshr i16 %26, 10
  %28 = trunc i16 %27 to i8
  %conv13.i = and i8 %28, 3
  %SM_PS.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 26
  %29 = ptrtoint ptr %SM_PS.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv13.i, ptr %SM_PS.i, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %min_MPDU_spacing.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %max_AMPDU_len.i) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %join_res = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 5
  %30 = ptrtoint ptr %join_res to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %join_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool12.not = icmp eq i32 %31, 0
  br i1 %tobool12.not, label %if.then13, label %if.end10.if.end20_crit_edge

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then13:                                        ; preds = %if.end10
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  %32 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %33, label %if.then18 [
    i32 1, label %if.then13.if.end20_crit_edge
    i32 5, label %if.then13.if.end20_crit_edge145
  ]

if.then13.if.end20_crit_edge145:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  call void @flush_all_cam_entry(ptr noundef %padapter) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then13.if.end20_crit_edge, %if.then13.if.end20_crit_edge145, %if.end10.if.end20_crit_edge
  call void @Set_MSR(ptr noundef %padapter, i8 noundef zeroext 3) #8
  %mac_address = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 4, ptr noundef %mac_address) #8
  %35 = ptrtoint ptr %acparm to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3093015, ptr %acparm, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 32, ptr noundef nonnull %acparm) #8
  %36 = ptrtoint ptr %acparm to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 6177559, ptr %acparm, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 33, ptr noundef nonnull %acparm) #8
  %37 = ptrtoint ptr %acparm to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 6202411, ptr %acparm, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 34, ptr noundef nonnull %acparm) #8
  %38 = ptrtoint ptr %acparm to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 42052, ptr %acparm, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 35, ptr noundef nonnull %acparm) #8
  %39 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %securitypriv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp22 = icmp eq i32 %40, 2
  %conv24 = select i1 %cmp22, i8 -52, i8 -49
  %41 = ptrtoint ptr %val8 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv24, ptr %val8, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 20, ptr noundef nonnull %val8) #8
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 16, ptr noundef nonnull %bcn_interval) #8
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 79, ptr noundef null) #8
  %42 = ptrtoint ptr %join_res to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %join_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool27.not = icmp eq i32 %43, 0
  br i1 %tobool27.not, label %if.then28, label %if.end20.if.end29_crit_edge

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  call void @Switch_DM_Func(ptr noundef %padapter, i32 noundef 268435455, i8 noundef zeroext 1) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end20.if.end29_crit_edge
  %44 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %ie_length, align 1
  %sub34 = add i32 %45, -12
  %call35 = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 61, ptr noundef nonnull %ie_len, i32 noundef %sub34) #8
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end29.if.end71_crit_edge, label %land.lhs.true37

if.end29.if.end71_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

land.lhs.true37:                                  ; preds = %if.end29
  %46 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool38.not = icmp eq i32 %47, 0
  br i1 %tobool38.not, label %land.lhs.true37.if.end71_crit_edge, label %if.then39

land.lhs.true37.if.end71_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then39:                                        ; preds = %land.lhs.true37
  %conv41 = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %conv41)
  %cmp42 = icmp ugt i32 %conv41, 14
  %bw_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 38
  %48 = ptrtoint ptr %bw_mode to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bw_mode, align 1
  br i1 %cmp42, label %if.then44, label %if.end57

if.then44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %49)
  %cmp46.not = icmp ult i8 %49, 16
  br i1 %cmp46.not, label %if.then44.if.end71_crit_edge, label %if.then44.land.lhs.true60_crit_edge

if.then44.land.lhs.true60_crit_edge:              ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true60

if.then44.if.end71_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.end57:                                         ; preds = %if.then39
  %50 = and i8 %49, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp53.not = icmp eq i8 %50, 0
  br i1 %cmp53.not, label %if.end57.if.end71_crit_edge, label %if.end57.land.lhs.true60_crit_edge

if.end57.land.lhs.true60_crit_edge:               ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true60

if.end57.if.end71_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

land.lhs.true60:                                  ; preds = %if.end57.land.lhs.true60_crit_edge, %if.then44.land.lhs.true60_crit_edge
  %infos = getelementptr i8, ptr %call35, i32 3
  %51 = ptrtoint ptr %infos to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %infos, align 1
  %conv61 = zext i8 %52 to i32
  %and62 = and i32 %conv61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %land.lhs.true60.if.end71_crit_edge, label %if.then64

land.lhs.true60.if.end71_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then64:                                        ; preds = %land.lhs.true60
  %and68 = and i32 %conv61, 3
  %53 = zext i32 %and68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %and68, label %sw.default [
    i32 1, label %if.then64.if.end71_crit_edge
    i32 3, label %sw.bb69
  ]

if.then64.if.end71_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

sw.bb69:                                          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

sw.default:                                       ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.end71:                                         ; preds = %sw.default, %sw.bb69, %if.then64.if.end71_crit_edge, %land.lhs.true60.if.end71_crit_edge, %if.end57.if.end71_crit_edge, %if.then44.if.end71_crit_edge, %land.lhs.true37.if.end71_crit_edge, %if.end29.if.end71_crit_edge
  %cur_bwmode.0 = phi i8 [ 1, %sw.default ], [ 1, %sw.bb69 ], [ 0, %land.lhs.true60.if.end71_crit_edge ], [ 0, %if.end57.if.end71_crit_edge ], [ 0, %land.lhs.true37.if.end71_crit_edge ], [ 0, %if.end29.if.end71_crit_edge ], [ 1, %if.then64.if.end71_crit_edge ], [ 0, %if.then44.if.end71_crit_edge ]
  %cur_ch_offset.0 = phi i8 [ 0, %sw.default ], [ 2, %sw.bb69 ], [ 0, %land.lhs.true60.if.end71_crit_edge ], [ 0, %if.end57.if.end71_crit_edge ], [ 0, %land.lhs.true37.if.end71_crit_edge ], [ 0, %if.end29.if.end71_crit_edge ], [ 1, %if.then64.if.end71_crit_edge ], [ 0, %if.then44.if.end71_crit_edge ]
  %conv72 = zext i8 %cur_bwmode.0 to i16
  call void @set_channel_bwmode(ptr noundef %padapter, i8 noundef zeroext %conv3, i8 noundef zeroext %cur_ch_offset.0, i16 noundef zeroext %conv72) #8
  %cur_channel73 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %54 = ptrtoint ptr %cur_channel73 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv3, ptr %cur_channel73, align 8
  %cur_bwmode74 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %55 = ptrtoint ptr %cur_bwmode74 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %cur_bwmode.0, ptr %cur_bwmode74, align 1
  %cur_ch_offset75 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 9
  %56 = ptrtoint ptr %cur_ch_offset75 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %cur_ch_offset.0, ptr %cur_ch_offset75, align 2
  %network_type = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 1
  %57 = ptrtoint ptr %network_type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %network_type, align 4
  %conv77 = trunc i32 %58 to i8
  %cur_wireless_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 10
  %59 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv77, ptr %cur_wireless_mode, align 1
  %60 = ptrtoint ptr %network to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %network, align 1
  %62 = call ptr @memcpy(ptr %network1, ptr %network, i32 %61)
  call void @update_wireless_mode(ptr noundef %padapter) #8
  %supported_rates = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 9
  call void @UpdateBrateTbl(ptr noundef %padapter, ptr noundef %supported_rates) #8
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 6, ptr noundef %supported_rates) #8
  %call81 = call zeroext i16 @rtw_get_capability(ptr noundef %network) #8
  call void @update_capinfo(ptr noundef %padapter, i16 noundef zeroext %call81) #8
  %bstart_bss82 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 34
  %63 = ptrtoint ptr %bstart_bss82 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bstart_bss82, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool83.not = icmp eq i8 %64, 0
  br i1 %tobool83.not, label %if.end71.if.end86_crit_edge, label %if.then84

if.end71.if.end86_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then84:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  call void @update_beacon(ptr noundef %padapter, i8 noundef zeroext 5, ptr noundef null, i8 noundef zeroext 1)
  %call85 = call i32 @send_beacon(ptr noundef %padapter) #8
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end71.if.end86_crit_edge
  call void @update_bmc_sta(ptr noundef %padapter)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ie_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acparm) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bcn_interval) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val8) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_wps_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_all_cam_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Set_MSR(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Switch_DM_Func(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_ie(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_channel_bwmode(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_wireless_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @UpdateBrateTbl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_capinfo(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw_get_capability(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_beacon(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_check_beacon_data(ptr noundef %padapter, ptr nocapture noundef readonly %pbuf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %ie_len = alloca i32, align 4
  %group_cipher = alloca i32, align 4
  %pairwise_cipher = alloca i32, align 4
  %supportRate = alloca [16 x i8], align 1
  %max_rx_ampdu_factor = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ie_len) #8
  %0 = ptrtoint ptr %ie_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ie_len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group_cipher) #8
  %1 = ptrtoint ptr %group_cipher to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %group_cipher, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pairwise_cipher) #8
  %2 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pairwise_cipher, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %supportRate) #8
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6
  %ies = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 12
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %3 = call ptr @memset(ptr %supportRate, i32 255, i32 16)
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %len)
  %7 = icmp ugt i32 %len, 768
  %or.cond = or i1 %7, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %entry
  %ie_length = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 11
  %8 = ptrtoint ptr %ie_length to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %len, ptr %ie_length, align 1
  %9 = call ptr @memset(ptr %ies, i32 0, i32 768)
  %10 = call ptr @memcpy(ptr %ies, ptr %pbuf, i32 %len)
  %infrastructure_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 8
  %11 = ptrtoint ptr %infrastructure_mode to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %infrastructure_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp5.not = icmp eq i32 %12, 4
  br i1 %cmp5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %rssi = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 5
  %13 = ptrtoint ptr %rssi to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 0, ptr %rssi, align 1
  %mac_address = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %14 = call ptr @memcpy(ptr %mac_address, ptr %mac_addr.i, i32 6)
  %call10 = tail call ptr @rtw_get_beacon_interval_from_ie(ptr noundef %ies) #8
  %15 = ptrtoint ptr %call10 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %call10, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #8
  %conv = zext i16 %17 to i32
  %configuration = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 7
  %beacon_period = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 7, i32 1
  %18 = ptrtoint ptr %beacon_period to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %conv, ptr %beacon_period, align 1
  %19 = ptrtoint ptr %ies to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %ies, align 1
  %add.ptr = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 12, i32 12
  %21 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %ie_length, align 1
  %sub = add i32 %22, -12
  %call14 = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %ie_len, i32 noundef %sub) #8
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end7.if.end24_crit_edge, label %land.lhs.true

if.end7.if.end24_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end7
  %23 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp16.not = icmp eq i32 %24, 0
  br i1 %cmp16.not, label %land.lhs.true.if.end24_crit_edge, label %if.then18

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 3
  %25 = call ptr @memset(ptr %ssid, i32 0, i32 36)
  %ssid20 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 3, i32 1
  %add.ptr22 = getelementptr i8, ptr %call14, i32 2
  %26 = call ptr @memcpy(ptr %ssid20, ptr %add.ptr22, i32 %24)
  %27 = ptrtoint ptr %ssid to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %24, ptr %ssid, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %land.lhs.true.if.end24_crit_edge, %if.end7.if.end24_crit_edge
  %28 = ptrtoint ptr %configuration to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 0, ptr %configuration, align 1
  %29 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %ie_length, align 1
  %sub28 = add i32 %30, -12
  %call29 = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 3, ptr noundef nonnull %ie_len, i32 noundef %sub28) #8
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end24.if.end36_crit_edge, label %land.lhs.true31

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true31:                                  ; preds = %if.end24
  %31 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp32.not = icmp eq i32 %32, 0
  br i1 %cmp32.not, label %land.lhs.true31.if.end36_crit_edge, label %if.then34

land.lhs.true31.if.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then34:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr35 = getelementptr i8, ptr %call29, i32 2
  %33 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr35, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %land.lhs.true31.if.end36_crit_edge, %if.end24.if.end36_crit_edge
  %channel.0 = phi i8 [ %34, %if.then34 ], [ 0, %land.lhs.true31.if.end36_crit_edge ], [ 0, %if.end24.if.end36_crit_edge ]
  %conv37 = zext i8 %channel.0 to i32
  %ds_config = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 7, i32 3
  %35 = ptrtoint ptr %ds_config to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %conv37, ptr %ds_config, align 1
  %36 = call ptr @memset(ptr %supportRate, i32 0, i32 16)
  %37 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %ie_length, align 1
  %sub42 = add i32 %38, -12
  %call43 = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull %ie_len, i32 noundef %sub42) #8
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.end36.if.end48_crit_edge, label %if.then45

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then45:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr47 = getelementptr i8, ptr %call43, i32 2
  %39 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ie_len, align 4
  %41 = call ptr @memcpy(ptr %supportRate, ptr %add.ptr47, i32 %40)
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end36.if.end48_crit_edge
  %supportRateNum.0 = phi i32 [ %40, %if.then45 ], [ 0, %if.end36.if.end48_crit_edge ]
  %42 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %ie_length, align 1
  %sub51 = add i32 %43, -12
  %call52 = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 50, ptr noundef nonnull %ie_len, i32 noundef %sub51) #8
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.end48.if.end58_crit_edge, label %if.then54

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then54:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr56 = getelementptr i8, ptr %supportRate, i32 %supportRateNum.0
  %add.ptr57 = getelementptr i8, ptr %call52, i32 2
  %44 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ie_len, align 4
  %46 = call ptr @memcpy(ptr %add.ptr56, ptr %add.ptr57, i32 %45)
  %add = add i32 %45, %supportRateNum.0
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end48.if.end58_crit_edge
  %supportRateNum.1 = phi i32 [ %add, %if.then54 ], [ %supportRateNum.0, %if.end48.if.end58_crit_edge ]
  %call61 = call i32 @rtw_check_network_type(ptr noundef nonnull %supportRate, i32 noundef %supportRateNum.1, i32 noundef %conv37) #8
  %supported_rates = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 9
  %conv64 = and i32 %call61, 255
  call void @rtw_set_supported_rate(ptr noundef %supported_rates, i32 noundef %conv64) #8
  %47 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %ie_length, align 1
  %sub67 = add i32 %48, -12
  %call68 = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 42, ptr noundef nonnull %ie_len, i32 noundef %sub67) #8
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %if.end58.if.end74_crit_edge, label %land.lhs.true70

if.end58.if.end74_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

land.lhs.true70:                                  ; preds = %if.end58
  %49 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp71.not = icmp eq i32 %50, 0
  br i1 %cmp71.not, label %land.lhs.true70.if.end74_crit_edge, label %if.then73

land.lhs.true70.if.end74_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then73:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  call void @ERP_IE_handler(ptr noundef %padapter, ptr noundef nonnull %call68) #8
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %land.lhs.true70.if.end74_crit_edge, %if.end58.if.end74_crit_edge
  %51 = lshr i16 %20, 12
  %.lobit = and i16 %51, 1
  %52 = zext i16 %.lobit to i32
  %53 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %52, ptr %53, align 1
  %wpa_psk = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 18
  %55 = ptrtoint ptr %wpa_psk to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %wpa_psk, align 4
  %56 = ptrtoint ptr %group_cipher to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %group_cipher, align 4
  %57 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %pairwise_cipher, align 4
  %wpa2_group_cipher = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 20
  %58 = ptrtoint ptr %wpa2_group_cipher to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %wpa2_group_cipher, align 4
  %wpa2_pairwise_cipher = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 22
  %59 = ptrtoint ptr %wpa2_pairwise_cipher to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %wpa2_pairwise_cipher, align 4
  %60 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %ie_length, align 1
  %sub82 = add i32 %61, -12
  %call83 = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 48, ptr noundef nonnull %ie_len, i32 noundef %sub82) #8
  %tobool84.not = icmp eq ptr %call83, null
  br i1 %tobool84.not, label %if.end74.if.end98_crit_edge, label %land.lhs.true85

if.end74.if.end98_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

land.lhs.true85:                                  ; preds = %if.end74
  %62 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp86.not = icmp eq i32 %63, 0
  br i1 %cmp86.not, label %land.lhs.true85.if.end98_crit_edge, label %if.then88

land.lhs.true85.if.end98_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then88:                                        ; preds = %land.lhs.true85
  %add89 = add i32 %63, 2
  %call90 = call i32 @rtw_parse_wpa2_ie(ptr noundef nonnull %call83, i32 noundef %add89, ptr noundef nonnull %group_cipher, ptr noundef nonnull %pairwise_cipher, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call90)
  %cmp91 = icmp eq i32 %call90, 1
  br i1 %cmp91, label %if.then93, label %if.then88.if.end98_crit_edge

if.then88.if.end98_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then93:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %securitypriv to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %securitypriv, align 8
  %dot8021xalg = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 17
  %65 = ptrtoint ptr %dot8021xalg to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %dot8021xalg, align 8
  %66 = ptrtoint ptr %wpa_psk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %wpa_psk, align 4
  %or = or i32 %67, 2
  store i32 %or, ptr %wpa_psk, align 4
  %68 = ptrtoint ptr %group_cipher to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %group_cipher, align 4
  %70 = ptrtoint ptr %wpa2_group_cipher to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %wpa2_group_cipher, align 4
  %71 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pairwise_cipher, align 4
  %73 = ptrtoint ptr %wpa2_pairwise_cipher to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %wpa2_pairwise_cipher, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then93, %if.then88.if.end98_crit_edge, %land.lhs.true85.if.end98_crit_edge, %if.end74.if.end98_crit_edge
  %74 = ptrtoint ptr %ie_len to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %ie_len, align 4
  %75 = ptrtoint ptr %group_cipher to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %group_cipher, align 4
  %76 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %pairwise_cipher, align 4
  %wpa_group_cipher = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 19
  %77 = ptrtoint ptr %wpa_group_cipher to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %wpa_group_cipher, align 8
  %wpa_pairwise_cipher = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 21
  %78 = ptrtoint ptr %wpa_pairwise_cipher to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %wpa_pairwise_cipher, align 8
  %79 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %ie_length, align 1
  %81 = add i32 %80, -14
  %call104521 = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 221, ptr noundef nonnull %ie_len, i32 noundef %81) #8
  %tobool105.not522 = icmp eq ptr %call104521, null
  br i1 %tobool105.not522, label %if.end98.for.end_crit_edge, label %if.end98.land.lhs.true106_crit_edge

if.end98.land.lhs.true106_crit_edge:              ; preds = %if.end98
  br label %land.lhs.true106

if.end98.for.end_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true106:                                 ; preds = %for.inc.land.lhs.true106_crit_edge, %if.end98.land.lhs.true106_crit_edge
  %call104523 = phi ptr [ %call104, %for.inc.land.lhs.true106_crit_edge ], [ %call104521, %if.end98.land.lhs.true106_crit_edge ]
  %add.ptr107 = getelementptr i8, ptr %call104523, i32 2
  %bcmp515 = call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr107, ptr noundef nonnull dereferenceable(4) @__const.rtw_check_beacon_data.OUI1, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp515)
  %tobool110.not = icmp eq i32 %bcmp515, 0
  %82 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ie_len, align 4
  br i1 %tobool110.not, label %if.then111, label %lor.lhs.false126.critedge

if.then111:                                       ; preds = %land.lhs.true106
  %add112 = add i32 %83, 2
  %call113 = call i32 @rtw_parse_wpa_ie(ptr noundef nonnull %call104523, i32 noundef %add112, ptr noundef nonnull %group_cipher, ptr noundef nonnull %pairwise_cipher, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call113)
  %cmp114 = icmp eq i32 %call113, 1
  br i1 %cmp114, label %if.then116, label %if.then111.for.end_crit_edge

if.then111.for.end_crit_edge:                     ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then116:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %securitypriv to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2, ptr %securitypriv, align 8
  %dot8021xalg118 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 17
  %85 = ptrtoint ptr %dot8021xalg118 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %dot8021xalg118, align 8
  %86 = ptrtoint ptr %wpa_psk to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %wpa_psk, align 4
  %or120 = or i32 %87, 1
  store i32 %or120, ptr %wpa_psk, align 4
  %88 = ptrtoint ptr %group_cipher to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %group_cipher, align 4
  %90 = ptrtoint ptr %wpa_group_cipher to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %wpa_group_cipher, align 8
  %91 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pairwise_cipher, align 4
  %93 = ptrtoint ptr %wpa_pairwise_cipher to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %wpa_pairwise_cipher, align 8
  br label %for.end

lor.lhs.false126.critedge:                        ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp127 = icmp eq i32 %83, 0
  br i1 %cmp127, label %lor.lhs.false126.critedge.for.end_crit_edge, label %for.inc

lor.lhs.false126.critedge.for.end_crit_edge:      ; preds = %lor.lhs.false126.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false126.critedge
  %add131 = add i32 %83, 2
  %add.ptr132 = getelementptr i8, ptr %call104523, i32 %add131
  %94 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %ie_length, align 1
  %96 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ie_len, align 4
  %98 = add i32 %95, -14
  %sub103 = sub i32 %98, %97
  %call104 = call ptr @rtw_get_ie(ptr noundef %add.ptr132, i32 noundef 221, ptr noundef nonnull %ie_len, i32 noundef %sub103) #8
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %for.inc.for.end_crit_edge, label %for.inc.land.lhs.true106_crit_edge

for.inc.land.lhs.true106_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true106

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lor.lhs.false126.critedge.for.end_crit_edge, %if.then116, %if.then111.for.end_crit_edge, %if.end98.for.end_crit_edge
  %99 = ptrtoint ptr %ie_len to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %ie_len, align 4
  %qospriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 30
  %100 = ptrtoint ptr %qospriv to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %qospriv, align 4
  %wmm_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 29
  %101 = ptrtoint ptr %wmm_enable to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %wmm_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool133.not = icmp eq i8 %102, 0
  br i1 %tobool133.not, label %for.end.if.end182_crit_edge, label %for.cond136.preheader

for.end.if.end182_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end182

for.cond136.preheader:                            ; preds = %for.end
  %103 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %ie_length, align 1
  %105 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ie_len, align 4
  %107 = add i32 %104, -14
  %sub140525 = sub i32 %107, %106
  %call141526 = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 221, ptr noundef nonnull %ie_len, i32 noundef %sub140525) #8
  %tobool142.not527 = icmp eq ptr %call141526, null
  br i1 %tobool142.not527, label %for.cond136.preheader.if.end182_crit_edge, label %for.cond136.preheader.land.lhs.true143_crit_edge

for.cond136.preheader.land.lhs.true143_crit_edge: ; preds = %for.cond136.preheader
  br label %land.lhs.true143

for.cond136.preheader.if.end182_crit_edge:        ; preds = %for.cond136.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end182

land.lhs.true143:                                 ; preds = %for.inc178.land.lhs.true143_crit_edge, %for.cond136.preheader.land.lhs.true143_crit_edge
  %call141528 = phi ptr [ %call141, %for.inc178.land.lhs.true143_crit_edge ], [ %call141526, %for.cond136.preheader.land.lhs.true143_crit_edge ]
  %add.ptr144 = getelementptr i8, ptr %call141528, i32 2
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr144, ptr noundef nonnull dereferenceable(6) @__const.rtw_check_beacon_data.WMM_PARA_IE, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool147.not = icmp eq i32 %bcmp, 0
  br i1 %tobool147.not, label %if.then148, label %lor.lhs.false173.critedge

if.then148:                                       ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %qospriv to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %qospriv, align 4
  %add.ptr151 = getelementptr i8, ptr %call141528, i32 8
  %109 = ptrtoint ptr %add.ptr151 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %add.ptr151, align 1
  %111 = or i8 %110, -128
  store i8 %111, ptr %add.ptr151, align 1
  %add.ptr155 = getelementptr i8, ptr %call141528, i32 10
  %112 = ptrtoint ptr %add.ptr155 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %add.ptr155, align 1
  %114 = and i8 %113, -17
  store i8 %114, ptr %add.ptr155, align 1
  %add.ptr159 = getelementptr i8, ptr %call141528, i32 14
  %115 = ptrtoint ptr %add.ptr159 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %add.ptr159, align 1
  %117 = and i8 %116, -17
  store i8 %117, ptr %add.ptr159, align 1
  %add.ptr163 = getelementptr i8, ptr %call141528, i32 18
  %118 = ptrtoint ptr %add.ptr163 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %add.ptr163, align 1
  %120 = and i8 %119, -17
  store i8 %120, ptr %add.ptr163, align 1
  %add.ptr167 = getelementptr i8, ptr %call141528, i32 22
  %121 = ptrtoint ptr %add.ptr167 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %add.ptr167, align 1
  %123 = and i8 %122, -17
  store i8 %123, ptr %add.ptr167, align 1
  br label %if.end182

lor.lhs.false173.critedge:                        ; preds = %land.lhs.true143
  %124 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp174 = icmp eq i32 %125, 0
  br i1 %cmp174, label %lor.lhs.false173.critedge.if.end182_crit_edge, label %for.inc178

lor.lhs.false173.critedge.if.end182_crit_edge:    ; preds = %lor.lhs.false173.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end182

for.inc178:                                       ; preds = %lor.lhs.false173.critedge
  %add179 = add i32 %125, 2
  %add.ptr180 = getelementptr i8, ptr %call141528, i32 %add179
  %126 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %ie_length, align 1
  %128 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ie_len, align 4
  %130 = add i32 %127, -14
  %sub140 = sub i32 %130, %129
  %call141 = call ptr @rtw_get_ie(ptr noundef %add.ptr180, i32 noundef 221, ptr noundef nonnull %ie_len, i32 noundef %sub140) #8
  %tobool142.not = icmp eq ptr %call141, null
  br i1 %tobool142.not, label %for.inc178.if.end182_crit_edge, label %for.inc178.land.lhs.true143_crit_edge

for.inc178.land.lhs.true143_crit_edge:            ; preds = %for.inc178
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true143

for.inc178.if.end182_crit_edge:                   ; preds = %for.inc178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end182

if.end182:                                        ; preds = %for.inc178.if.end182_crit_edge, %lor.lhs.false173.critedge.if.end182_crit_edge, %if.then148, %for.cond136.preheader.if.end182_crit_edge, %for.end.if.end182_crit_edge
  %131 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %ie_length, align 1
  %sub185 = add i32 %132, -12
  %call186 = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 45, ptr noundef nonnull %ie_len, i32 noundef %sub185) #8
  %tobool187.not = icmp eq ptr %call186, null
  br i1 %tobool187.not, label %if.end182.if.end282_crit_edge, label %land.lhs.true188

if.end182.if.end282_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end282

land.lhs.true188:                                 ; preds = %if.end182
  %133 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp189.not = icmp eq i32 %134, 0
  br i1 %cmp189.not, label %land.lhs.true188.if.end282_crit_edge, label %if.then191

land.lhs.true188.if.end282_crit_edge:             ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end282

if.then191:                                       ; preds = %land.lhs.true188
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %max_rx_ampdu_factor) #8
  %135 = ptrtoint ptr %max_rx_ampdu_factor to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %max_rx_ampdu_factor, align 1
  %add.ptr192 = getelementptr i8, ptr %call186, i32 2
  %or194 = or i32 %conv64, 8
  call void @rtw_ht_use_default_setting(ptr noundef %padapter) #8
  %sgi_20m = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 8
  %136 = ptrtoint ptr %sgi_20m to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %sgi_20m, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %cmp197 = icmp eq i8 %137, 0
  br i1 %cmp197, label %if.then199, label %if.then191.if.end203_crit_edge

if.then191.if.end203_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end203

if.then199:                                       ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #10
  %138 = ptrtoint ptr %add.ptr192 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %139 = load i16, ptr %add.ptr192, align 1
  %140 = and i16 %139, -8193
  store i16 %140, ptr %add.ptr192, align 1
  br label %if.end203

if.end203:                                        ; preds = %if.then199, %if.then191.if.end203_crit_edge
  %sgi_40m = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 9
  %141 = ptrtoint ptr %sgi_40m to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %sgi_40m, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %cmp206 = icmp eq i8 %142, 0
  br i1 %cmp206, label %if.then208, label %if.end203.if.end213_crit_edge

if.end203.if.end213_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end213

if.then208:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %add.ptr192 to i32
  call void @__asan_loadN_noabort(i32 %143, i32 2)
  %144 = load i16, ptr %add.ptr192, align 1
  %145 = and i16 %144, -16385
  store i16 %145, ptr %add.ptr192, align 1
  br label %if.end213

if.end213:                                        ; preds = %if.then208, %if.end203.if.end213_crit_edge
  %ldpc_cap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 12
  %146 = ptrtoint ptr %ldpc_cap to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %ldpc_cap, align 2
  %148 = and i8 %147, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %cmp217.not = icmp eq i8 %148, 0
  br i1 %cmp217.not, label %if.then219, label %if.end213.if.end224_crit_edge

if.end213.if.end224_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

if.then219:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %add.ptr192 to i32
  call void @__asan_loadN_noabort(i32 %149, i32 2)
  %150 = load i16, ptr %add.ptr192, align 1
  %151 = and i16 %150, -257
  store i16 %151, ptr %add.ptr192, align 1
  br label %if.end224

if.end224:                                        ; preds = %if.then219, %if.end213.if.end224_crit_edge
  %stbc_cap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 13
  %152 = ptrtoint ptr %stbc_cap to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %stbc_cap, align 1
  %154 = and i8 %153, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %cmp228.not = icmp eq i8 %154, 0
  br i1 %cmp228.not, label %if.then230, label %if.end224.if.end235_crit_edge

if.end224.if.end235_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end235

if.then230:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  %155 = ptrtoint ptr %add.ptr192 to i32
  call void @__asan_loadN_noabort(i32 %155, i32 2)
  %156 = load i16, ptr %add.ptr192, align 1
  %157 = and i16 %156, 32767
  store i16 %157, ptr %add.ptr192, align 1
  br label %if.end235

if.end235:                                        ; preds = %if.then230, %if.end224.if.end235_crit_edge
  %158 = ptrtoint ptr %stbc_cap to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %stbc_cap, align 1
  %160 = and i8 %159, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %cmp240.not = icmp eq i8 %160, 0
  br i1 %cmp240.not, label %if.then242, label %if.end235.if.end247_crit_edge

if.end235.if.end247_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end247

if.then242:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #10
  %161 = ptrtoint ptr %add.ptr192 to i32
  call void @__asan_loadN_noabort(i32 %161, i32 2)
  %162 = load i16, ptr %add.ptr192, align 1
  %163 = and i16 %162, -4
  store i16 %163, ptr %add.ptr192, align 1
  br label %if.end247

if.end247:                                        ; preds = %if.then242, %if.end235.if.end247_crit_edge
  %ampdu_params_info = getelementptr i8, ptr %call186, i32 4
  %164 = ptrtoint ptr %ampdu_params_info to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %ampdu_params_info, align 1
  %166 = and i8 %165, -32
  store i8 %166, ptr %ampdu_params_info, align 1
  %167 = ptrtoint ptr %wpa_pairwise_cipher to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %wpa_pairwise_cipher, align 8
  %and252 = and i32 %168, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252)
  %tobool253.not = icmp eq i32 %and252, 0
  br i1 %tobool253.not, label %lor.lhs.false254, label %if.end247.if.then258_crit_edge

if.end247.if.then258_crit_edge:                   ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then258

lor.lhs.false254:                                 ; preds = %if.end247
  %169 = ptrtoint ptr %wpa2_pairwise_cipher to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %wpa2_pairwise_cipher, align 4
  %and256 = and i32 %170, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and256)
  %tobool257.not = icmp eq i32 %and256, 0
  br i1 %tobool257.not, label %lor.lhs.false254.if.end268_crit_edge, label %lor.lhs.false254.if.then258_crit_edge

lor.lhs.false254.if.then258_crit_edge:            ; preds = %lor.lhs.false254
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then258

lor.lhs.false254.if.end268_crit_edge:             ; preds = %lor.lhs.false254
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end268

if.then258:                                       ; preds = %lor.lhs.false254.if.then258_crit_edge, %if.end247.if.then258_crit_edge
  %171 = or i8 %166, 28
  br label %if.end268

if.end268:                                        ; preds = %if.then258, %lor.lhs.false254.if.end268_crit_edge
  %storemerge = phi i8 [ %171, %if.then258 ], [ %166, %lor.lhs.false254.if.end268_crit_edge ]
  %172 = ptrtoint ptr %ampdu_params_info to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %storemerge, ptr %ampdu_params_info, align 1
  %call269 = call zeroext i8 @rtw_hal_get_def_var(ptr noundef %padapter, i32 noundef 17, ptr noundef nonnull %max_rx_ampdu_factor) #8
  %173 = ptrtoint ptr %max_rx_ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %max_rx_ampdu_factor, align 1
  %175 = and i8 %174, 3
  %176 = ptrtoint ptr %ampdu_params_info to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %ampdu_params_info, align 1
  %or274514 = or i8 %177, %175
  store i8 %or274514, ptr %ampdu_params_info, align 1
  %mcs = getelementptr i8, ptr %call186, i32 5
  %178 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 -1, ptr %mcs, align 1
  %arrayidx278 = getelementptr i8, ptr %call186, i32 6
  %179 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %arrayidx278, align 1
  %ht_cap280 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 15
  %180 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %ie_len, align 4
  %182 = call ptr @memcpy(ptr %ht_cap280, ptr %add.ptr192, i32 %181)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %max_rx_ampdu_factor) #8
  br label %if.end282

if.end282:                                        ; preds = %if.end268, %land.lhs.true188.if.end282_crit_edge, %if.end182.if.end282_crit_edge
  %pHT_caps_ie.0 = phi ptr [ %call186, %if.end268 ], [ null, %land.lhs.true188.if.end282_crit_edge ], [ null, %if.end182.if.end282_crit_edge ]
  %tobool314.not = phi i1 [ false, %if.end268 ], [ true, %land.lhs.true188.if.end282_crit_edge ], [ true, %if.end182.if.end282_crit_edge ]
  %network_type.0.in = phi i32 [ %or194, %if.end268 ], [ %call61, %land.lhs.true188.if.end282_crit_edge ], [ %call61, %if.end182.if.end282_crit_edge ]
  %183 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %183, i32 4)
  %184 = load i32, ptr %ie_length, align 1
  %sub285 = add i32 %184, -12
  %call286 = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 61, ptr noundef nonnull %ie_len, i32 noundef %sub285) #8
  %tobool287.not = icmp eq ptr %call286, null
  br i1 %tobool287.not, label %if.end282.if.end292_crit_edge, label %land.lhs.true288

if.end282.if.end292_crit_edge:                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end292

land.lhs.true288:                                 ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #10
  %185 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp289.not = icmp eq i32 %186, 0
  %spec.select = select i1 %cmp289.not, ptr null, ptr %call286
  br label %if.end292

if.end292:                                        ; preds = %land.lhs.true288, %if.end282.if.end292_crit_edge
  %pHT_info_ie.0 = phi ptr [ null, %if.end282.if.end292_crit_edge ], [ %spec.select, %land.lhs.true288 ]
  %conv293 = and i32 %network_type.0.in, 255
  %trunc = trunc i32 %network_type.0.in to i8
  %switch.tableidx = add i8 %trunc, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %switch.tableidx)
  %187 = icmp ult i8 %switch.tableidx, 11
  br i1 %187, label %switch.lookup, label %if.end292.sw.epilog_crit_edge

if.end292.sw.epilog_crit_edge:                    ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #10
  %188 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.rtw_check_beacon_data, i32 0, i32 %188
  %189 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %189)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end292.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 3, %if.end292.sw.epilog_crit_edge ]
  %network_type_in_use296 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 6
  %190 = ptrtoint ptr %network_type_in_use296 to i32
  call void @__asan_storeN_noabort(i32 %190, i32 4)
  store i32 %.sink, ptr %network_type_in_use296, align 1
  %network_type299 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 1
  %191 = ptrtoint ptr %network_type299 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %conv293, ptr %network_type299, align 4
  %htpriv300 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33
  %192 = ptrtoint ptr %htpriv300 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %htpriv300, align 4
  %ht_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 37
  %193 = ptrtoint ptr %ht_enable to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %ht_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool311.not = icmp eq i8 %194, 0
  %brmerge = or i1 %tobool314.not, %tobool311.not
  br i1 %brmerge, label %sw.epilog.if.end327_crit_edge, label %if.then315

sw.epilog.if.end327_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end327

if.then315:                                       ; preds = %sw.epilog
  %195 = ptrtoint ptr %htpriv300 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 1, ptr %htpriv300, align 4
  %196 = ptrtoint ptr %qospriv to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 1, ptr %qospriv, align 4
  %ampdu_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 39
  %197 = ptrtoint ptr %ampdu_enable to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %ampdu_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %198)
  %cmp321 = icmp eq i8 %198, 1
  br i1 %cmp321, label %if.then323, label %if.then315.if.end326_crit_edge

if.then315.if.end326_crit_edge:                   ; preds = %if.then315
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end326

if.then323:                                       ; preds = %if.then315
  call void @__sanitizer_cov_trace_pc() #10
  %ampdu_enable325 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 1
  %199 = ptrtoint ptr %ampdu_enable325 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 1, ptr %ampdu_enable325, align 1
  br label %if.end326

if.end326:                                        ; preds = %if.then323, %if.then315.if.end326_crit_edge
  call void @HT_caps_handler(ptr noundef %padapter, ptr noundef %pHT_caps_ie.0) #8
  call void @HT_info_handler(ptr noundef %padapter, ptr noundef %pHT_info_ie.0) #8
  br label %if.end327

if.end327:                                        ; preds = %if.end326, %sw.epilog.if.end327_crit_edge
  %200 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %200, i32 4)
  %201 = load i32, ptr %ie_length, align 1
  %add.i = add i32 %201, 104
  %202 = ptrtoint ptr %network to i32
  call void @__asan_storeN_noabort(i32 %202, i32 4)
  store i32 %add.i, ptr %network, align 1
  %call330 = call i32 @rtw_startbss_cmd(ptr noundef %padapter, i32 noundef 2) #8
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call333 = call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %mac_address) #8
  %tobool334.not = icmp eq ptr %call333, null
  br i1 %tobool334.not, label %if.then335, label %if.end327.if.end343_crit_edge

if.end327.if.end343_crit_edge:                    ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end343

if.then335:                                       ; preds = %if.end327
  %call339 = call ptr @rtw_alloc_stainfo(ptr noundef %stapriv, ptr noundef %mac_address) #8
  %tobool340.not = icmp eq ptr %call339, null
  br i1 %tobool340.not, label %if.then335.cleanup_crit_edge, label %if.then335.if.end343_crit_edge

if.then335.if.end343_crit_edge:                   ; preds = %if.then335
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end343

if.then335.cleanup_crit_edge:                     ; preds = %if.then335
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end343:                                        ; preds = %if.then335.if.end343_crit_edge, %if.end327.if.end343_crit_edge
  %psta.0 = phi ptr [ %call333, %if.end327.if.end343_crit_edge ], [ %call339, %if.then335.if.end343_crit_edge ]
  %cur_wireless_mode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 10
  %203 = ptrtoint ptr %cur_wireless_mode.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %cur_wireless_mode.i, align 1
  %wireless_mode.i = getelementptr inbounds %struct.sta_info, ptr %psta.0, i32 0, i32 30
  %205 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %204, ptr %wireless_mode.i, align 4
  %call.i = call i32 @rtw_get_rateset_len(ptr noundef %supported_rates) #8
  %bssratelen.i = getelementptr inbounds %struct.sta_info, ptr %psta.0, i32 0, i32 22
  %206 = ptrtoint ptr %bssratelen.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %call.i, ptr %bssratelen.i, align 8
  %bssrateset.i = getelementptr inbounds %struct.sta_info, ptr %psta.0, i32 0, i32 21
  %207 = call ptr @memcpy(ptr %bssrateset.i, ptr %supported_rates, i32 %call.i)
  %208 = ptrtoint ptr %htpriv300 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %htpriv300, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool.not.i = icmp eq i8 %209, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end343
  %ht_cap.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 15
  %210 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_loadN_noabort(i32 %210, i32 2)
  %211 = load i16, ptr %ht_cap.i, align 1
  %212 = and i16 %211, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %212)
  %tobool5.not.i = icmp eq i16 %212, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then6.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sgi_20m.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 8
  %213 = ptrtoint ptr %sgi_20m.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 1, ptr %sgi_20m.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i, %if.then.i.if.end.i_crit_edge
  %214 = and i16 %211, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %214)
  %tobool11.not.i = icmp eq i16 %214, 0
  br i1 %tobool11.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then12.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sgi_40m.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 9
  %215 = ptrtoint ptr %sgi_40m.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 1, ptr %sgi_40m.i, align 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end.i.if.end13.i_crit_edge
  %qos_option.i = getelementptr inbounds %struct.sta_info, ptr %psta.0, i32 0, i32 11
  %216 = ptrtoint ptr %qos_option.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 1, ptr %qos_option.i, align 4
  br label %update_ap_info.exit

if.else.i:                                        ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #10
  %ampdu_enable.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 1
  %217 = ptrtoint ptr %ampdu_enable.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 0, ptr %ampdu_enable.i, align 1
  %sgi_20m14.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 8
  %218 = ptrtoint ptr %sgi_20m14.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %sgi_20m14.i, align 2
  %sgi_40m15.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 9
  %219 = ptrtoint ptr %sgi_40m15.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %sgi_40m15.i, align 1
  br label %update_ap_info.exit

update_ap_info.exit:                              ; preds = %if.else.i, %if.end13.i
  %cur_bwmode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %220 = ptrtoint ptr %cur_bwmode.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %cur_bwmode.i, align 1
  %bw_mode.i = getelementptr inbounds %struct.sta_info, ptr %psta.0, i32 0, i32 31
  %222 = ptrtoint ptr %bw_mode.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %221, ptr %bw_mode.i, align 1
  %cur_ch_offset.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 9
  %223 = ptrtoint ptr %cur_ch_offset.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %cur_ch_offset.i, align 2
  %ch_offset.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 7
  %225 = ptrtoint ptr %ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %224, ptr %ch_offset.i, align 1
  %agg_enable_bitmap.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 10
  %226 = ptrtoint ptr %agg_enable_bitmap.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 0, ptr %agg_enable_bitmap.i, align 4
  %candidate_tid_bitmap.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 11
  %227 = ptrtoint ptr %candidate_tid_bitmap.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 0, ptr %candidate_tid_bitmap.i, align 1
  %htpriv17.i = getelementptr inbounds %struct.sta_info, ptr %psta.0, i32 0, i32 38
  %228 = call ptr @memcpy(ptr %htpriv17.i, ptr %htpriv300, i32 48)
  %state = getelementptr inbounds %struct.sta_info, ptr %psta.0, i32 0, i32 8
  %229 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %state, align 8
  %or344 = or i32 %230, 16
  store i32 %or344, ptr %state, align 8
  call void @rtw_indicate_connect(ptr noundef %padapter) #8
  %join_res = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 5
  %231 = ptrtoint ptr %join_res to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 1, ptr %join_res, align 4
  br label %cleanup

cleanup:                                          ; preds = %update_ap_info.exit, %if.then335.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %update_ap_info.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %if.then335.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %supportRate) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pairwise_cipher) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group_cipher) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ie_len) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_beacon_interval_from_ie(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_set_supported_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ERP_IE_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_parse_wpa2_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_parse_wpa_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_ht_use_default_setting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_hal_get_def_var(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @HT_caps_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @HT_info_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_startbss_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_indicate_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rtw_set_macaddr_acl(ptr nocapture noundef writeonly %padapter, i32 noundef %mode) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_list = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22
  %0 = ptrtoint ptr %acl_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mode, ptr %acl_list, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_acl_add_sta(ptr noundef %padapter, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_node_q = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3
  %num = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 1
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp = icmp sgt i32 %1, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %2 = ptrtoint ptr %acl_node_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %plist.066 = load ptr, ptr %acl_node_q, align 4
  %cmp.i.not67 = icmp eq ptr %plist.066, %acl_node_q
  br i1 %cmp.i.not67, label %if.end.if.end15.critedge_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end15.critedge_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %plist.068 = phi ptr [ %plist.0, %for.inc.for.body_crit_edge ], [ %plist.066, %if.end.for.body_crit_edge ]
  %addr2 = getelementptr inbounds %struct.rtw_wlan_acl_node, ptr %plist.068, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr2, ptr noundef dereferenceable(6) %addr, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool4.not = icmp eq i32 %bcmp, 0
  br i1 %tobool4.not, label %if.then5, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then5:                                         ; preds = %for.body
  %valid = getelementptr inbounds %struct.rtw_wlan_acl_node, ptr %plist.068, i32 0, i32 2
  %3 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %valid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp6 = icmp eq i8 %4, 1
  br i1 %cmp6, label %if.then5.cleanup.sink.split_crit_edge, label %if.then5.for.inc_crit_edge

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.inc:                                          ; preds = %if.then5.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %plist.068 to i32
  call void @__asan_load4_noabort(i32 %5)
  %plist.0 = load ptr, ptr %plist.068, align 4
  %cmp.i.not = icmp eq ptr %plist.0, %acl_node_q
  br i1 %cmp.i.not, label %for.inc.if.end15.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end15.critedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.critedge

if.end15.critedge:                                ; preds = %for.inc.if.end15.critedge_crit_edge, %if.end.if.end15.critedge_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %valid21 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 0, i32 2
  %6 = ptrtoint ptr %valid21 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %valid21, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool22.not = icmp eq i8 %7, 0
  br i1 %tobool22.not, label %if.end15.critedge.if.then23_crit_edge, label %for.inc31

if.end15.critedge.if.then23_crit_edge:            ; preds = %if.end15.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

if.then23:                                        ; preds = %for.inc31.14.if.then23_crit_edge, %for.inc31.13.if.then23_crit_edge, %for.inc31.12.if.then23_crit_edge, %for.inc31.11.if.then23_crit_edge, %for.inc31.10.if.then23_crit_edge, %for.inc31.9.if.then23_crit_edge, %for.inc31.8.if.then23_crit_edge, %for.inc31.7.if.then23_crit_edge, %for.inc31.6.if.then23_crit_edge, %for.inc31.5.if.then23_crit_edge, %for.inc31.4.if.then23_crit_edge, %for.inc31.3.if.then23_crit_edge, %for.inc31.2.if.then23_crit_edge, %for.inc31.1.if.then23_crit_edge, %for.inc31.if.then23_crit_edge, %if.end15.critedge.if.then23_crit_edge
  %i.069.lcssa = phi i32 [ 0, %if.end15.critedge.if.then23_crit_edge ], [ 1, %for.inc31.if.then23_crit_edge ], [ 2, %for.inc31.1.if.then23_crit_edge ], [ 3, %for.inc31.2.if.then23_crit_edge ], [ 4, %for.inc31.3.if.then23_crit_edge ], [ 5, %for.inc31.4.if.then23_crit_edge ], [ 6, %for.inc31.5.if.then23_crit_edge ], [ 7, %for.inc31.6.if.then23_crit_edge ], [ 8, %for.inc31.7.if.then23_crit_edge ], [ 9, %for.inc31.8.if.then23_crit_edge ], [ 10, %for.inc31.9.if.then23_crit_edge ], [ 11, %for.inc31.10.if.then23_crit_edge ], [ 12, %for.inc31.11.if.then23_crit_edge ], [ 13, %for.inc31.12.if.then23_crit_edge ], [ 14, %for.inc31.13.if.then23_crit_edge ], [ 15, %for.inc31.14.if.then23_crit_edge ]
  %valid21.lcssa = phi ptr [ %valid21, %if.end15.critedge.if.then23_crit_edge ], [ %valid21.1, %for.inc31.if.then23_crit_edge ], [ %valid21.2, %for.inc31.1.if.then23_crit_edge ], [ %valid21.3, %for.inc31.2.if.then23_crit_edge ], [ %valid21.4, %for.inc31.3.if.then23_crit_edge ], [ %valid21.5, %for.inc31.4.if.then23_crit_edge ], [ %valid21.6, %for.inc31.5.if.then23_crit_edge ], [ %valid21.7, %for.inc31.6.if.then23_crit_edge ], [ %valid21.8, %for.inc31.7.if.then23_crit_edge ], [ %valid21.9, %for.inc31.8.if.then23_crit_edge ], [ %valid21.10, %for.inc31.9.if.then23_crit_edge ], [ %valid21.11, %for.inc31.10.if.then23_crit_edge ], [ %valid21.12, %for.inc31.11.if.then23_crit_edge ], [ %valid21.13, %for.inc31.12.if.then23_crit_edge ], [ %valid21.14, %for.inc31.13.if.then23_crit_edge ], [ %valid21.15, %for.inc31.14.if.then23_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 %i.069.lcssa
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx, ptr %prev.i, align 4
  %addr24 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 %i.069.lcssa, i32 1
  %10 = call ptr @memcpy(ptr %addr24, ptr %addr, i32 6)
  %11 = ptrtoint ptr %valid21.lcssa to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %valid21.lcssa, align 2
  %prev.i64 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i64 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i64, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %13, ptr noundef %acl_node_q) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then23.list_add_tail.exit_crit_edge

if.then23.list_add_tail.exit_crit_edge:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %prev.i64 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx, ptr %prev.i64, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %acl_node_q, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %arrayidx, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then23.list_add_tail.exit_crit_edge
  %18 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %num, align 4
  br label %cleanup.sink.split

for.inc31:                                        ; preds = %if.end15.critedge
  %valid21.1 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 1, i32 2
  %20 = ptrtoint ptr %valid21.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %valid21.1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool22.not.1 = icmp eq i8 %21, 0
  br i1 %tobool22.not.1, label %for.inc31.if.then23_crit_edge, label %for.inc31.1

for.inc31.if.then23_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

for.inc31.1:                                      ; preds = %for.inc31
  %valid21.2 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 2, i32 2
  %22 = ptrtoint ptr %valid21.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %valid21.2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool22.not.2 = icmp eq i8 %23, 0
  br i1 %tobool22.not.2, label %for.inc31.1.if.then23_crit_edge, label %for.inc31.2

for.inc31.1.if.then23_crit_edge:                  ; preds = %for.inc31.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

for.inc31.2:                                      ; preds = %for.inc31.1
  %valid21.3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 3, i32 2
  %24 = ptrtoint ptr %valid21.3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %valid21.3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool22.not.3 = icmp eq i8 %25, 0
  br i1 %tobool22.not.3, label %for.inc31.2.if.then23_crit_edge, label %for.inc31.3

for.inc31.2.if.then23_crit_edge:                  ; preds = %for.inc31.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

for.inc31.3:                                      ; preds = %for.inc31.2
  %valid21.4 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 4, i32 2
  %26 = ptrtoint ptr %valid21.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %valid21.4, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool22.not.4 = icmp eq i8 %27, 0
  br i1 %tobool22.not.4, label %for.inc31.3.if.then23_crit_edge, label %for.inc31.4

for.inc31.3.if.then23_crit_edge:                  ; preds = %for.inc31.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

for.inc31.4:                                      ; preds = %for.inc31.3
  %valid21.5 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 5, i32 2
  %28 = ptrtoint ptr %valid21.5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %valid21.5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool22.not.5 = icmp eq i8 %29, 0
  br i1 %tobool22.not.5, label %for.inc31.4.if.then23_crit_edge, label %for.inc31.5

for.inc31.4.if.then23_crit_edge:                  ; preds = %for.inc31.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

for.inc31.5:                                      ; preds = %for.inc31.4
  %valid21.6 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 6, i32 2
  %30 = ptrtoint ptr %valid21.6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %valid21.6, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool22.not.6 = icmp eq i8 %31, 0
  br i1 %tobool22.not.6, label %for.inc31.5.if.then23_crit_edge, label %for.inc31.6

for.inc31.5.if.then23_crit_edge:                  ; preds = %for.inc31.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

for.inc31.6:                                      ; preds = %for.inc31.5
  %valid21.7 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 7, i32 2
  %32 = ptrtoint ptr %valid21.7 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %valid21.7, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool22.not.7 = icmp eq i8 %33, 0
  br i1 %tobool22.not.7, label %for.inc31.6.if.then23_crit_edge, label %for.inc31.7

for.inc31.6.if.then23_crit_edge:                  ; preds = %for.inc31.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

for.inc31.7:                                      ; preds = %for.inc31.6
  %valid21.8 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 8, i32 2
  %34 = ptrtoint ptr %valid21.8 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %valid21.8, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool22.not.8 = icmp eq i8 %35, 0
  br i1 %tobool22.not.8, label %for.inc31.7.if.then23_crit_edge, label %for.inc31.8

for.inc31.7.if.then23_crit_edge:                  ; preds = %for.inc31.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

for.inc31.8:                                      ; preds = %for.inc31.7
  %valid21.9 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 9, i32 2
  %36 = ptrtoint ptr %valid21.9 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %valid21.9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool22.not.9 = icmp eq i8 %37, 0
  br i1 %tobool22.not.9, label %for.inc31.8.if.then23_crit_edge, label %for.inc31.9

for.inc31.8.if.then23_crit_edge:                  ; preds = %for.inc31.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

for.inc31.9:                                      ; preds = %for.inc31.8
  %valid21.10 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 10, i32 2
  %38 = ptrtoint ptr %valid21.10 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %valid21.10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool22.not.10 = icmp eq i8 %39, 0
  br i1 %tobool22.not.10, label %for.inc31.9.if.then23_crit_edge, label %for.inc31.10

for.inc31.9.if.then23_crit_edge:                  ; preds = %for.inc31.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

for.inc31.10:                                     ; preds = %for.inc31.9
  %valid21.11 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 11, i32 2
  %40 = ptrtoint ptr %valid21.11 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %valid21.11, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool22.not.11 = icmp eq i8 %41, 0
  br i1 %tobool22.not.11, label %for.inc31.10.if.then23_crit_edge, label %for.inc31.11

for.inc31.10.if.then23_crit_edge:                 ; preds = %for.inc31.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

for.inc31.11:                                     ; preds = %for.inc31.10
  %valid21.12 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 12, i32 2
  %42 = ptrtoint ptr %valid21.12 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %valid21.12, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool22.not.12 = icmp eq i8 %43, 0
  br i1 %tobool22.not.12, label %for.inc31.11.if.then23_crit_edge, label %for.inc31.12

for.inc31.11.if.then23_crit_edge:                 ; preds = %for.inc31.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

for.inc31.12:                                     ; preds = %for.inc31.11
  %valid21.13 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 13, i32 2
  %44 = ptrtoint ptr %valid21.13 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %valid21.13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool22.not.13 = icmp eq i8 %45, 0
  br i1 %tobool22.not.13, label %for.inc31.12.if.then23_crit_edge, label %for.inc31.13

for.inc31.12.if.then23_crit_edge:                 ; preds = %for.inc31.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

for.inc31.13:                                     ; preds = %for.inc31.12
  %valid21.14 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 14, i32 2
  %46 = ptrtoint ptr %valid21.14 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %valid21.14, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool22.not.14 = icmp eq i8 %47, 0
  br i1 %tobool22.not.14, label %for.inc31.13.if.then23_crit_edge, label %for.inc31.14

for.inc31.13.if.then23_crit_edge:                 ; preds = %for.inc31.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

for.inc31.14:                                     ; preds = %for.inc31.13
  %valid21.15 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 2, i32 15, i32 2
  %48 = ptrtoint ptr %valid21.15 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %valid21.15, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool22.not.15 = icmp eq i8 %49, 0
  br i1 %tobool22.not.15, label %for.inc31.14.if.then23_crit_edge, label %for.inc31.14.cleanup.sink.split_crit_edge

for.inc31.14.cleanup.sink.split_crit_edge:        ; preds = %for.inc31.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.inc31.14.if.then23_crit_edge:                 ; preds = %for.inc31.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

cleanup.sink.split:                               ; preds = %for.inc31.14.cleanup.sink.split_crit_edge, %list_add_tail.exit, %if.then5.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_acl_remove_sta(ptr noundef %padapter, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_node_q = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3
  %lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %0 = ptrtoint ptr %acl_node_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl_node_q, align 4
  %cmp.i.not29 = icmp eq ptr %1, %acl_node_q
  br i1 %cmp.i.not29, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %num = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %plist.030 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.032, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %plist.030 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.032 = load ptr, ptr %plist.030, align 4
  %addr4 = getelementptr inbounds %struct.rtw_wlan_acl_node, ptr %plist.030, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr4, ptr noundef dereferenceable(6) %addr, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool6.not = icmp eq i32 %bcmp, 0
  br i1 %tobool6.not, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %bcmp27 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @__const.rtw_acl_remove_sta.baddr, ptr noundef dereferenceable(6) %addr, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp27)
  %tobool9.not = icmp eq i32 %bcmp27, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %valid = getelementptr inbounds %struct.rtw_wlan_acl_node, ptr %plist.030, i32 0, i32 2
  %3 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %valid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool10.not = icmp eq i8 %4, 0
  br i1 %tobool10.not, label %if.then.for.inc_crit_edge, label %if.then11

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then11:                                        ; preds = %if.then
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %valid, align 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plist.030) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.list_del_init.exit_crit_edge

if.then11.list_del_init.exit_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %plist.030, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %plist.030 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plist.030, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then11.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %plist.030 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %plist.030, ptr %plist.030, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %plist.030, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %plist.030, ptr %prev.i3.i, align 4
  %14 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %num, align 4
  br label %for.inc

for.inc:                                          ; preds = %list_del_init.exit, %if.then.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %cmp.i.not = icmp eq ptr %tmp.032, %acl_node_q
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_ap_set_pairwise_key(ptr noundef %padapter, ptr nocapture noundef readonly %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 24) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %exit

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
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
  store i16 21, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 24, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rspsz, align 4
  %dot118021XPrivacy = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 14
  %7 = ptrtoint ptr %dot118021XPrivacy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dot118021XPrivacy, align 4
  %conv = trunc i32 %8 to i8
  %algorithm = getelementptr inbounds %struct.set_stakey_parm, ptr %call1, i32 0, i32 1
  %9 = ptrtoint ptr %algorithm to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %algorithm, align 1
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 12
  %10 = call ptr @memcpy(ptr %call1, ptr %hwaddr, i32 6)
  %key = getelementptr inbounds %struct.set_stakey_parm, ptr %call1, i32 0, i32 3
  %dot118021x_UncstKey = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 17
  %11 = call ptr @memcpy(ptr %key, ptr %dot118021x_UncstKey, i32 16)
  %call7 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call) #8
  %conv8 = trunc i32 %call7 to i8
  br label %exit

exit:                                             ; preds = %do.body, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i8 [ %conv8, %do.body ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i8 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_zmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_enqueue_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_ap_set_group_key(ptr noundef %padapter, ptr nocapture noundef readonly %key, i8 noundef zeroext %alg, i32 noundef %keyid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rtw_ap_set_key(ptr noundef %padapter, ptr noundef %key, i8 noundef zeroext %alg, i32 noundef %keyid, i8 noundef zeroext 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw_ap_set_key(ptr noundef %padapter, ptr nocapture noundef readonly %key, i8 noundef zeroext %alg, i32 noundef %keyid, i8 noundef zeroext %set_tx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 36) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @_rtw_zmalloc(i32 noundef 20) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %exit

if.end4:                                          ; preds = %if.end
  %conv = trunc i32 %keyid to i8
  %keyid5 = getelementptr inbounds %struct.setkey_parm, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %keyid5 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %keyid5, align 1
  %1 = zext i8 %alg to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %alg, label %if.end4.if.end16_crit_edge [
    i8 1, label %if.end4.if.then11_crit_edge
    i8 5, label %if.end4.if.then11_crit_edge44
  ]

if.end4.if.then11_crit_edge44:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.end4.if.then11_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.end4.if.then11_crit_edge, %if.end4.if.then11_crit_edge44
  %conv13 = and i32 %keyid, 255
  %shl = shl nuw i32 1, %conv13
  %key_mask = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 5
  %2 = ptrtoint ptr %key_mask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %key_mask, align 4
  %4 = trunc i32 %shl to i8
  %conv15 = or i8 %3, %4
  store i8 %conv15, ptr %key_mask, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end4.if.end16_crit_edge
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %alg, ptr %call1, align 1
  %set_tx17 = getelementptr inbounds %struct.setkey_parm, ptr %call1, i32 0, i32 3
  %6 = ptrtoint ptr %set_tx17 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %set_tx, ptr %set_tx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %alg)
  %switch.selectcmp = icmp eq i8 %alg, 5
  %switch.select = select i1 %switch.selectcmp, i32 13, i32 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %alg)
  %switch.selectcmp42 = icmp eq i8 %alg, 1
  %switch.select43 = select i1 %switch.selectcmp42, i32 5, i32 %switch.select
  %key21 = getelementptr inbounds %struct.setkey_parm, ptr %call1, i32 0, i32 4
  %7 = call ptr @memcpy(ptr %key21, ptr %key, i32 %switch.select43)
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 20, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %parmbuf, align 4
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 4
  %10 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 20, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 5
  %11 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rsp, align 4
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 6
  %12 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rspsz, align 4
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8
  %13 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %prev.i, align 4
  %call23 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call) #8
  br label %exit

exit:                                             ; preds = %if.end16, %if.then3, %entry.exit_crit_edge
  %res.0 = phi i32 [ %call23, %if.end16 ], [ 0, %if.then3 ], [ 0, %entry.exit_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_ap_set_wep_key(ptr noundef %padapter, ptr nocapture noundef readonly %key, i8 noundef zeroext %keylen, i32 noundef %keyid, i8 noundef zeroext %set_tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %keylen)
  %switch.selectcmp = icmp eq i8 %keylen, 13
  %switch.select = select i1 %switch.selectcmp, i8 5, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %keylen)
  %switch.selectcmp2 = icmp eq i8 %keylen, 5
  %switch.select3 = select i1 %switch.selectcmp2, i8 1, i8 %switch.select
  %call = tail call fastcc i32 @rtw_ap_set_key(ptr noundef %padapter, ptr noundef %key, i8 noundef zeroext %switch.select3, i32 noundef %keyid, i8 noundef zeroext %set_tx)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @set_tx_beacon_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bss_cap_update_on_sta_join(ptr noundef %padapter, ptr nocapture noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 46
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %no_short_preamble_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 57
  %2 = ptrtoint ptr %no_short_preamble_set to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %no_short_preamble_set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end26_crit_edge

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then2:                                         ; preds = %if.then
  %4 = ptrtoint ptr %no_short_preamble_set to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %no_short_preamble_set, align 1
  %num_sta_no_short_preamble = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 43
  %5 = ptrtoint ptr %num_sta_no_short_preamble to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_sta_no_short_preamble, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %num_sta_no_short_preamble, align 4
  %cur_wireless_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 10
  %7 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cur_wireless_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp ugt i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6 = icmp eq i32 %6, 0
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.then8, label %if.then2.if.end26_crit_edge

if.then2.if.end26_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then8:                                         ; preds = %if.then2
  %tobool.not.i = icmp eq ptr %padapter, null
  br i1 %tobool.not.i, label %if.then8.if.end26_crit_edge, label %if.end.i

if.then8.if.end26_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end.i:                                         ; preds = %if.then8
  %bstart_bss.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 34
  %9 = ptrtoint ptr %bstart_bss.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bstart_bss.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not.i = icmp eq i8 %10, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end26_crit_edge, label %if.end.i.if.end26.sink.split_crit_edge

if.end.i.if.end26.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.sink.split

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.else:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.else.if.end26_crit_edge, label %if.then12

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then12:                                        ; preds = %if.else
  %11 = ptrtoint ptr %no_short_preamble_set to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %no_short_preamble_set, align 1
  %num_sta_no_short_preamble14 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 43
  %12 = ptrtoint ptr %num_sta_no_short_preamble14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_sta_no_short_preamble14, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %num_sta_no_short_preamble14, align 4
  %cur_wireless_mode15 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 10
  %14 = ptrtoint ptr %cur_wireless_mode15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cur_wireless_mode15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp17 = icmp ugt i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp21 = icmp eq i32 %dec, 0
  %or.cond191 = select i1 %cmp17, i1 %cmp21, i1 false
  br i1 %or.cond191, label %if.then23, label %if.then12.if.end26_crit_edge

if.then12.if.end26_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then23:                                        ; preds = %if.then12
  %tobool.not.i194 = icmp eq ptr %padapter, null
  br i1 %tobool.not.i194, label %if.then23.if.end26_crit_edge, label %if.end.i197

if.then23.if.end26_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end.i197:                                      ; preds = %if.then23
  %bstart_bss.i195 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 34
  %16 = ptrtoint ptr %bstart_bss.i195 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bstart_bss.i195, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool1.not.i196 = icmp eq i8 %17, 0
  br i1 %tobool1.not.i196, label %if.end.i197.if.end26_crit_edge, label %if.end.i197.if.end26.sink.split_crit_edge

if.end.i197.if.end26.sink.split_crit_edge:        ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.sink.split

if.end.i197.if.end26_crit_edge:                   ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end26.sink.split:                              ; preds = %if.end.i197.if.end26.sink.split_crit_edge, %if.end.i.if.end26.sink.split_crit_edge
  %bcn_update_lock.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock.i) #8
  %update_bcn.i200 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 70
  %18 = ptrtoint ptr %update_bcn.i200 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %update_bcn.i200, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock.i) #8
  %call.i201 = tail call zeroext i8 @set_tx_beacon_cmd(ptr noundef nonnull %padapter) #8
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.end.i197.if.end26_crit_edge, %if.then23.if.end26_crit_edge, %if.then12.if.end26_crit_edge, %if.else.if.end26_crit_edge, %if.end.i.if.end26_crit_edge, %if.then8.if.end26_crit_edge, %if.then2.if.end26_crit_edge, %if.then.if.end26_crit_edge
  %beacon_updated.0 = phi i8 [ 0, %if.then12.if.end26_crit_edge ], [ 0, %if.else.if.end26_crit_edge ], [ 0, %if.then.if.end26_crit_edge ], [ 0, %if.then2.if.end26_crit_edge ], [ 1, %if.then8.if.end26_crit_edge ], [ 1, %if.end.i.if.end26_crit_edge ], [ 1, %if.then23.if.end26_crit_edge ], [ 1, %if.end.i197.if.end26_crit_edge ], [ 1, %if.end26.sink.split ]
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %tobool29.not = icmp sgt i32 %20, -1
  %nonerp_set42 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 55
  %21 = ptrtoint ptr %nonerp_set42 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nonerp_set42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool43.not = icmp eq i8 %22, 0
  br i1 %tobool29.not, label %if.else41, label %if.then30

if.then30:                                        ; preds = %if.end26
  br i1 %tobool43.not, label %if.then32, label %if.then30.if.end54_crit_edge

if.then30.if.end54_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then32:                                        ; preds = %if.then30
  %23 = ptrtoint ptr %nonerp_set42 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %nonerp_set42, align 1
  %num_sta_non_erp = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 41
  %24 = ptrtoint ptr %num_sta_non_erp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_sta_non_erp, align 4
  %inc34 = add i32 %25, 1
  store i32 %inc34, ptr %num_sta_non_erp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp36 = icmp eq i32 %25, 0
  br i1 %cmp36, label %if.then32.if.end54.sink.split_crit_edge, label %if.then32.if.end54_crit_edge

if.then32.if.end54_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then32.if.end54.sink.split_crit_edge:          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.sink.split

if.else41:                                        ; preds = %if.end26
  br i1 %tobool43.not, label %if.else41.if.end54_crit_edge, label %if.then44

if.else41.if.end54_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then44:                                        ; preds = %if.else41
  %26 = ptrtoint ptr %nonerp_set42 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %nonerp_set42, align 1
  %num_sta_non_erp46 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 41
  %27 = ptrtoint ptr %num_sta_non_erp46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_sta_non_erp46, align 4
  %dec47 = add i32 %28, -1
  store i32 %dec47, ptr %num_sta_non_erp46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec47)
  %cmp49 = icmp eq i32 %dec47, 0
  br i1 %cmp49, label %if.then44.if.end54.sink.split_crit_edge, label %if.then44.if.end54_crit_edge

if.then44.if.end54_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then44.if.end54.sink.split_crit_edge:          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.sink.split

if.end54.sink.split:                              ; preds = %if.then44.if.end54.sink.split_crit_edge, %if.then32.if.end54.sink.split_crit_edge
  tail call void @update_beacon(ptr noundef %padapter, i8 noundef zeroext 42, ptr noundef null, i8 noundef zeroext 1)
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %if.then44.if.end54_crit_edge, %if.else41.if.end54_crit_edge, %if.then32.if.end54_crit_edge, %if.then30.if.end54_crit_edge
  %beacon_updated.1 = phi i8 [ %beacon_updated.0, %if.then30.if.end54_crit_edge ], [ %beacon_updated.0, %if.then32.if.end54_crit_edge ], [ %beacon_updated.0, %if.then44.if.end54_crit_edge ], [ %beacon_updated.0, %if.else41.if.end54_crit_edge ], [ 1, %if.end54.sink.split ]
  %capability = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 45
  %29 = ptrtoint ptr %capability to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %capability, align 4
  %31 = and i16 %30, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool57.not = icmp eq i16 %31, 0
  %no_short_slot_time_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 56
  %32 = ptrtoint ptr %no_short_slot_time_set to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %no_short_slot_time_set, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool59.not = icmp eq i8 %33, 0
  br i1 %tobool57.not, label %if.then58, label %if.else74

if.then58:                                        ; preds = %if.end54
  br i1 %tobool59.not, label %if.then60, label %if.then58.if.end92_crit_edge

if.then58.if.end92_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then60:                                        ; preds = %if.then58
  %34 = ptrtoint ptr %no_short_slot_time_set to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %no_short_slot_time_set, align 2
  %num_sta_no_short_slot_time = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 42
  %35 = ptrtoint ptr %num_sta_no_short_slot_time to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_sta_no_short_slot_time, align 4
  %inc62 = add i32 %36, 1
  store i32 %inc62, ptr %num_sta_no_short_slot_time, align 4
  %cur_wireless_mode63 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 10
  %37 = ptrtoint ptr %cur_wireless_mode63 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cur_wireless_mode63, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp65 = icmp ugt i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp69 = icmp eq i32 %36, 0
  %or.cond192 = select i1 %cmp65, i1 %cmp69, i1 false
  br i1 %or.cond192, label %if.then71, label %if.then60.if.end92_crit_edge

if.then60.if.end92_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then71:                                        ; preds = %if.then60
  %tobool.not.i203 = icmp eq ptr %padapter, null
  br i1 %tobool.not.i203, label %if.then71.if.end92_crit_edge, label %if.end.i206

if.then71.if.end92_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.end.i206:                                      ; preds = %if.then71
  %bstart_bss.i204 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 34
  %39 = ptrtoint ptr %bstart_bss.i204 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bstart_bss.i204, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool1.not.i205 = icmp eq i8 %40, 0
  br i1 %tobool1.not.i205, label %if.end.i206.if.end92_crit_edge, label %if.end.i206.if.end92.sink.split_crit_edge

if.end.i206.if.end92.sink.split_crit_edge:        ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.sink.split

if.end.i206.if.end92_crit_edge:                   ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.else74:                                        ; preds = %if.end54
  br i1 %tobool59.not, label %if.else74.if.end92_crit_edge, label %if.then77

if.else74.if.end92_crit_edge:                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then77:                                        ; preds = %if.else74
  %41 = ptrtoint ptr %no_short_slot_time_set to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %no_short_slot_time_set, align 2
  %num_sta_no_short_slot_time79 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 42
  %42 = ptrtoint ptr %num_sta_no_short_slot_time79 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_sta_no_short_slot_time79, align 4
  %dec80 = add i32 %43, -1
  store i32 %dec80, ptr %num_sta_no_short_slot_time79, align 4
  %cur_wireless_mode81 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 10
  %44 = ptrtoint ptr %cur_wireless_mode81 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %cur_wireless_mode81, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp83 = icmp ugt i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec80)
  %cmp87 = icmp eq i32 %dec80, 0
  %or.cond193 = select i1 %cmp83, i1 %cmp87, i1 false
  br i1 %or.cond193, label %if.then89, label %if.then77.if.end92_crit_edge

if.then77.if.end92_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then89:                                        ; preds = %if.then77
  %tobool.not.i212 = icmp eq ptr %padapter, null
  br i1 %tobool.not.i212, label %if.then89.if.end92_crit_edge, label %if.end.i215

if.then89.if.end92_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.end.i215:                                      ; preds = %if.then89
  %bstart_bss.i213 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 34
  %46 = ptrtoint ptr %bstart_bss.i213 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bstart_bss.i213, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool1.not.i214 = icmp eq i8 %47, 0
  br i1 %tobool1.not.i214, label %if.end.i215.if.end92_crit_edge, label %if.end.i215.if.end92.sink.split_crit_edge

if.end.i215.if.end92.sink.split_crit_edge:        ; preds = %if.end.i215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.sink.split

if.end.i215.if.end92_crit_edge:                   ; preds = %if.end.i215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.end92.sink.split:                              ; preds = %if.end.i215.if.end92.sink.split_crit_edge, %if.end.i206.if.end92.sink.split_crit_edge
  %bcn_update_lock.i207 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock.i207) #8
  %update_bcn.i218 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 70
  %48 = ptrtoint ptr %update_bcn.i218 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %update_bcn.i218, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock.i207) #8
  %call.i219 = tail call zeroext i8 @set_tx_beacon_cmd(ptr noundef nonnull %padapter) #8
  br label %if.end92

if.end92:                                         ; preds = %if.end92.sink.split, %if.end.i215.if.end92_crit_edge, %if.then89.if.end92_crit_edge, %if.then77.if.end92_crit_edge, %if.else74.if.end92_crit_edge, %if.end.i206.if.end92_crit_edge, %if.then71.if.end92_crit_edge, %if.then60.if.end92_crit_edge, %if.then58.if.end92_crit_edge
  %beacon_updated.2 = phi i8 [ %beacon_updated.1, %if.then77.if.end92_crit_edge ], [ %beacon_updated.1, %if.else74.if.end92_crit_edge ], [ %beacon_updated.1, %if.then58.if.end92_crit_edge ], [ %beacon_updated.1, %if.then60.if.end92_crit_edge ], [ 1, %if.then71.if.end92_crit_edge ], [ 1, %if.end.i206.if.end92_crit_edge ], [ 1, %if.then89.if.end92_crit_edge ], [ 1, %if.end.i215.if.end92_crit_edge ], [ 1, %if.end92.sink.split ]
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 8
  %and94 = and i32 %50, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.else124, label %if.then96

if.then96:                                        ; preds = %if.end92
  %ht_cap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 15
  %51 = ptrtoint ptr %ht_cap to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %ht_cap, align 1
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %no_ht_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 59
  %54 = ptrtoint ptr %no_ht_set to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %no_ht_set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool97.not = icmp eq i8 %55, 0
  br i1 %tobool97.not, label %if.then96.if.end101_crit_edge, label %if.then98

if.then96.if.end101_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then98:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %no_ht_set to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %no_ht_set, align 1
  %num_sta_no_ht = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 31
  %57 = ptrtoint ptr %num_sta_no_ht to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_sta_no_ht, align 4
  %dec100 = add i32 %58, -1
  store i32 %dec100, ptr %num_sta_no_ht, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %if.then96.if.end101_crit_edge
  %conv102 = zext i16 %53 to i32
  %and103 = and i32 %conv102, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %cmp104 = icmp eq i32 %and103, 0
  br i1 %cmp104, label %if.then106, label %if.end101.if.end112_crit_edge

if.end101.if.end112_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then106:                                       ; preds = %if.end101
  %no_ht_gf_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 58
  %59 = ptrtoint ptr %no_ht_gf_set to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %no_ht_gf_set, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool107.not = icmp eq i8 %60, 0
  br i1 %tobool107.not, label %if.then108, label %if.then106.if.end112_crit_edge

if.then106.if.end112_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then108:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %no_ht_gf_set to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %no_ht_gf_set, align 8
  %num_sta_ht_no_gf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 45
  %62 = ptrtoint ptr %num_sta_ht_no_gf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_sta_ht_no_gf, align 4
  %inc110 = add i32 %63, 1
  store i32 %inc110, ptr %num_sta_ht_no_gf, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then108, %if.then106.if.end112_crit_edge, %if.end101.if.end112_crit_edge
  %and114 = and i32 %conv102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %cmp115 = icmp eq i32 %and114, 0
  br i1 %cmp115, label %if.then117, label %if.end112.if.end132_crit_edge

if.end112.if.end132_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

if.then117:                                       ; preds = %if.end112
  %ht_20mhz_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 60
  %64 = ptrtoint ptr %ht_20mhz_set to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ht_20mhz_set, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool118.not = icmp eq i8 %65, 0
  br i1 %tobool118.not, label %if.then119, label %if.then117.if.end132_crit_edge

if.then117.if.end132_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

if.then119:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %ht_20mhz_set to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %ht_20mhz_set, align 2
  %num_sta_ht_20mhz = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 46
  br label %if.end132.sink.split

if.else124:                                       ; preds = %if.end92
  %no_ht_set125 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 59
  %67 = ptrtoint ptr %no_ht_set125 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %no_ht_set125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool126.not = icmp eq i8 %68, 0
  br i1 %tobool126.not, label %if.then127, label %if.else124.if.end132_crit_edge

if.else124.if.end132_crit_edge:                   ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

if.then127:                                       ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %no_ht_set125 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %no_ht_set125, align 1
  %num_sta_no_ht129 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 31
  br label %if.end132.sink.split

if.end132.sink.split:                             ; preds = %if.then127, %if.then119
  %num_sta_ht_20mhz.sink244 = phi ptr [ %num_sta_ht_20mhz, %if.then119 ], [ %num_sta_no_ht129, %if.then127 ]
  %70 = ptrtoint ptr %num_sta_ht_20mhz.sink244 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_sta_ht_20mhz.sink244, align 4
  %inc121 = add i32 %71, 1
  store i32 %inc121, ptr %num_sta_ht_20mhz.sink244, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.end132.sink.split, %if.else124.if.end132_crit_edge, %if.then117.if.end132_crit_edge, %if.end112.if.end132_crit_edge
  %call = tail call fastcc i32 @rtw_ht_operation_update(ptr noundef %padapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp133 = icmp slt i32 %call, 1
  %tobool.not.i221 = icmp eq ptr %padapter, null
  %or.cond240 = or i1 %tobool.not.i221, %cmp133
  br i1 %or.cond240, label %if.end132.if.end136_crit_edge, label %if.end.i224

if.end132.if.end136_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.end.i224:                                      ; preds = %if.end132
  %bstart_bss.i222 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 34
  %72 = ptrtoint ptr %bstart_bss.i222 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bstart_bss.i222, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool1.not.i223 = icmp eq i8 %73, 0
  br i1 %tobool1.not.i223, label %if.end.i224.if.end136_crit_edge, label %if.end.i232

if.end.i224.if.end136_crit_edge:                  ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.end.i232:                                      ; preds = %if.end.i224
  %bcn_update_lock.i225 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock.i225) #8
  %update_bcn.i227 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 70
  %74 = ptrtoint ptr %update_bcn.i227 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %update_bcn.i227, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock.i225) #8
  %75 = ptrtoint ptr %bstart_bss.i222 to i32
  call void @__asan_load1_noabort(i32 %75)
  %.pr = load i8, ptr %bstart_bss.i222, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool1.not.i231 = icmp eq i8 %.pr, 0
  br i1 %tobool1.not.i231, label %if.end.i232.if.end136_crit_edge, label %if.end3.i234

if.end.i232.if.end136_crit_edge:                  ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.end3.i234:                                     ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_pc() #10
  %bcn_update_lock.i233 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock.i233) #8
  %update_bcn.i235 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 70
  %76 = ptrtoint ptr %update_bcn.i235 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %update_bcn.i235, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock.i233) #8
  %call.i236 = tail call zeroext i8 @set_tx_beacon_cmd(ptr noundef nonnull %padapter) #8
  br label %if.end136

if.end136:                                        ; preds = %if.end3.i234, %if.end.i232.if.end136_crit_edge, %if.end.i224.if.end136_crit_edge, %if.end132.if.end136_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %beacon_updated.2)
  %tobool.not.i238 = icmp eq i8 %beacon_updated.2, 0
  br i1 %tobool.not.i238, label %if.end136.associated_clients_update.exit_crit_edge, label %if.then.i

if.end136.associated_clients_update.exit_crit_edge: ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %associated_clients_update.exit

if.then.i:                                        ; preds = %if.end136
  %asoc_list_lock.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock.i) #8
  %asoc_list.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 9
  %77 = ptrtoint ptr %asoc_list.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %plist.010.i = load ptr, ptr %asoc_list.i, align 4
  %cmp.i.not11.i = icmp eq ptr %plist.010.i, %asoc_list.i
  br i1 %cmp.i.not11.i, label %if.then.i.for.end.i_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %plist.012.i = phi ptr [ %plist.0.i, %for.body.i.for.body.i_crit_edge ], [ %plist.010.i, %if.then.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %plist.012.i, i32 -2840
  tail call void @VCS_update(ptr noundef %padapter, ptr noundef %add.ptr.i) #8
  %78 = ptrtoint ptr %plist.012.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %plist.0.i = load ptr, ptr %plist.012.i, align 4
  %cmp.i.not.i = icmp eq ptr %plist.0.i, %asoc_list.i
  br i1 %cmp.i.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock.i) #8
  br label %associated_clients_update.exit

associated_clients_update.exit:                   ; preds = %for.end.i, %if.end136.associated_clients_update.exit_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @rtw_ht_operation_update(ptr nocapture noundef %padapter) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %htpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33
  %0 = ptrtoint ptr %htpriv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ht_op_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 48
  %2 = ptrtoint ptr %ht_op_mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ht_op_mode, align 4
  %4 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2.not = icmp eq i16 %4, 0
  %num_sta_ht_no_gf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 45
  %5 = ptrtoint ptr %num_sta_ht_no_gf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_sta_ht_no_gf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %land.lhs.true, label %land.lhs.true12

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool3.not, label %land.lhs.true.if.end22_crit_edge, label %if.then4

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i16 %3, 4
  br label %if.end22.sink.split

land.lhs.true12:                                  ; preds = %if.end
  br i1 %tobool3.not, label %if.then15, label %land.lhs.true12.if.end22_crit_edge

land.lhs.true12.if.end22_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then15:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  %and18 = and i16 %3, -5
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.then15, %if.then4
  %and18.sink = phi i16 [ %and18, %if.then15 ], [ %or, %if.then4 ]
  %7 = ptrtoint ptr %ht_op_mode to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %and18.sink, ptr %ht_op_mode, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %land.lhs.true12.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge
  %op_mode_changes.0 = phi i32 [ 0, %land.lhs.true12.if.end22_crit_edge ], [ 0, %land.lhs.true.if.end22_crit_edge ], [ 1, %if.end22.sink.split ]
  %8 = ptrtoint ptr %ht_op_mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ht_op_mode, align 4
  %10 = and i16 %9, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool26.not = icmp eq i16 %10, 0
  %num_sta_no_ht = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 31
  %11 = ptrtoint ptr %num_sta_no_ht to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_sta_no_ht, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool28.not = icmp eq i32 %12, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %land.lhs.true41

land.lhs.true27:                                  ; preds = %if.end22
  br i1 %tobool28.not, label %lor.lhs.false, label %land.lhs.true27.if.then30_crit_edge

land.lhs.true27.if.then30_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

lor.lhs.false:                                    ; preds = %land.lhs.true27
  %olbc_ht = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 47
  %13 = ptrtoint ptr %olbc_ht to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %olbc_ht, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool29.not = icmp eq i32 %14, 0
  br i1 %tobool29.not, label %lor.lhs.false.if.end55_crit_edge, label %lor.lhs.false.if.then30_crit_edge

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

lor.lhs.false.if.end55_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %land.lhs.true27.if.then30_crit_edge
  %15 = or i16 %9, 16
  br label %if.end55.sink.split

land.lhs.true41:                                  ; preds = %if.end22
  br i1 %tobool28.not, label %land.lhs.true45, label %land.lhs.true41.if.end55_crit_edge

land.lhs.true41.if.end55_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

land.lhs.true45:                                  ; preds = %land.lhs.true41
  %olbc_ht46 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 47
  %16 = ptrtoint ptr %olbc_ht46 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %olbc_ht46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool47.not = icmp eq i32 %17, 0
  br i1 %tobool47.not, label %if.then48, label %land.lhs.true45.if.end55_crit_edge

land.lhs.true45.if.end55_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then48:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  %and51 = and i16 %9, -17
  br label %if.end55.sink.split

if.end55.sink.split:                              ; preds = %if.then48, %if.then30
  %and51.sink = phi i16 [ %and51, %if.then48 ], [ %15, %if.then30 ]
  %18 = ptrtoint ptr %ht_op_mode to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %and51.sink, ptr %ht_op_mode, align 4
  %inc53 = add nuw nsw i32 %op_mode_changes.0, 1
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %land.lhs.true45.if.end55_crit_edge, %land.lhs.true41.if.end55_crit_edge, %lor.lhs.false.if.end55_crit_edge
  %op_mode_changes.1 = phi i32 [ %op_mode_changes.0, %land.lhs.true45.if.end55_crit_edge ], [ %op_mode_changes.0, %land.lhs.true41.if.end55_crit_edge ], [ %op_mode_changes.0, %lor.lhs.false.if.end55_crit_edge ], [ %inc53, %if.end55.sink.split ]
  %num_sta_no_ht56 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 31
  %19 = ptrtoint ptr %num_sta_no_ht56 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_sta_no_ht56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool57.not = icmp eq i32 %20, 0
  br i1 %tobool57.not, label %lor.lhs.false58, label %if.end55.if.end78_crit_edge

if.end55.if.end78_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

lor.lhs.false58:                                  ; preds = %if.end55
  %21 = ptrtoint ptr %ht_op_mode to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ht_op_mode, align 4
  %23 = and i16 %22, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool62.not = icmp eq i16 %23, 0
  br i1 %tobool62.not, label %if.else64, label %lor.lhs.false58.if.end78_crit_edge

lor.lhs.false58.if.end78_crit_edge:               ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.else64:                                        ; preds = %lor.lhs.false58
  %ht_cap = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 15
  %24 = ptrtoint ptr %ht_cap to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %ht_cap, align 1
  %26 = and i16 %25, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool67.not = icmp eq i16 %26, 0
  br i1 %tobool67.not, label %if.else64.if.else71_crit_edge, label %land.lhs.true68

if.else64.if.else71_crit_edge:                    ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else71

land.lhs.true68:                                  ; preds = %if.else64
  %num_sta_ht_20mhz = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 46
  %27 = ptrtoint ptr %num_sta_ht_20mhz to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_sta_ht_20mhz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool69.not = icmp eq i32 %28, 0
  br i1 %tobool69.not, label %land.lhs.true68.if.else71_crit_edge, label %land.lhs.true68.if.end78_crit_edge

land.lhs.true68.if.end78_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

land.lhs.true68.if.else71_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else71

if.else71:                                        ; preds = %land.lhs.true68.if.else71_crit_edge, %if.else64.if.else71_crit_edge
  %olbc_ht72 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 47
  %29 = ptrtoint ptr %olbc_ht72 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %olbc_ht72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool73.not = icmp ne i32 %30, 0
  %. = zext i1 %tobool73.not to i32
  br label %if.end78

if.end78:                                         ; preds = %if.else71, %land.lhs.true68.if.end78_crit_edge, %lor.lhs.false58.if.end78_crit_edge, %if.end55.if.end78_crit_edge
  %new_op_mode.0 = phi i32 [ 3, %lor.lhs.false58.if.end78_crit_edge ], [ 3, %if.end55.if.end78_crit_edge ], [ 2, %land.lhs.true68.if.end78_crit_edge ], [ %., %if.else71 ]
  %31 = ptrtoint ptr %ht_op_mode to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ht_op_mode, align 4
  %and81 = and i16 %32, 3
  %conv83 = zext i16 %and81 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %new_op_mode.0, i32 %conv83)
  %cmp85.not = icmp eq i32 %new_op_mode.0, %conv83
  br i1 %cmp85.not, label %if.end78.cleanup_crit_edge, label %if.then87

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then87:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %33 = and i16 %32, -4
  %34 = trunc i32 %new_op_mode.0 to i16
  %conv96 = or i16 %33, %34
  %35 = ptrtoint ptr %ht_op_mode to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv96, ptr %ht_op_mode, align 4
  %inc97 = add nuw nsw i32 %op_mode_changes.1, 1
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %if.end78.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %inc97, %if.then87 ], [ %op_mode_changes.1, %if.end78.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @bss_cap_update_on_sta_leave(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %psta, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %no_short_preamble_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 57
  %0 = ptrtoint ptr %no_short_preamble_set to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %no_short_preamble_set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %if.then2

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then2:                                         ; preds = %if.end
  %2 = ptrtoint ptr %no_short_preamble_set to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %no_short_preamble_set, align 1
  %num_sta_no_short_preamble = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 43
  %3 = ptrtoint ptr %num_sta_no_short_preamble to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_sta_no_short_preamble, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %num_sta_no_short_preamble, align 4
  %cur_wireless_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 10
  %5 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cur_wireless_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp ugt i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp6 = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.then8, label %if.then2.if.end10_crit_edge

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.then2
  %tobool.not.i = icmp eq ptr %padapter, null
  br i1 %tobool.not.i, label %if.then8.if.end10_crit_edge, label %if.end.i

if.then8.if.end10_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.i:                                         ; preds = %if.then8
  %bstart_bss.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 34
  %7 = ptrtoint ptr %bstart_bss.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bstart_bss.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end10_crit_edge, label %if.end3.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %bcn_update_lock.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock.i) #8
  %update_bcn.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 70
  %9 = ptrtoint ptr %update_bcn.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %update_bcn.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock.i) #8
  %call.i = tail call zeroext i8 @set_tx_beacon_cmd(ptr noundef nonnull %padapter) #8
  br label %if.end10

if.end10:                                         ; preds = %if.end3.i, %if.end.i.if.end10_crit_edge, %if.then8.if.end10_crit_edge, %if.then2.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %beacon_updated.0 = phi i8 [ 0, %if.then2.if.end10_crit_edge ], [ 0, %if.end.if.end10_crit_edge ], [ 1, %if.then8.if.end10_crit_edge ], [ 1, %if.end.i.if.end10_crit_edge ], [ 1, %if.end3.i ]
  %nonerp_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 55
  %10 = ptrtoint ptr %nonerp_set to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nonerp_set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  br i1 %tobool11.not, label %if.end10.if.end20_crit_edge, label %if.then12

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then12:                                        ; preds = %if.end10
  %12 = ptrtoint ptr %nonerp_set to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %nonerp_set, align 1
  %num_sta_non_erp = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 41
  %13 = ptrtoint ptr %num_sta_non_erp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_sta_non_erp, align 4
  %dec14 = add i32 %14, -1
  store i32 %dec14, ptr %num_sta_non_erp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec14)
  %cmp16 = icmp eq i32 %dec14, 0
  br i1 %cmp16, label %if.then18, label %if.then12.if.end20_crit_edge

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @update_beacon(ptr noundef %padapter, i8 noundef zeroext 42, ptr noundef null, i8 noundef zeroext 1)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then12.if.end20_crit_edge, %if.end10.if.end20_crit_edge
  %beacon_updated.1 = phi i8 [ 1, %if.then18 ], [ %beacon_updated.0, %if.then12.if.end20_crit_edge ], [ %beacon_updated.0, %if.end10.if.end20_crit_edge ]
  %no_short_slot_time_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 56
  %15 = ptrtoint ptr %no_short_slot_time_set to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %no_short_slot_time_set, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool21.not = icmp eq i8 %16, 0
  br i1 %tobool21.not, label %if.end20.if.end35_crit_edge, label %if.then22

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then22:                                        ; preds = %if.end20
  %17 = ptrtoint ptr %no_short_slot_time_set to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %no_short_slot_time_set, align 2
  %num_sta_no_short_slot_time = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 42
  %18 = ptrtoint ptr %num_sta_no_short_slot_time to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_sta_no_short_slot_time, align 4
  %dec24 = add i32 %19, -1
  store i32 %dec24, ptr %num_sta_no_short_slot_time, align 4
  %cur_wireless_mode25 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 10
  %20 = ptrtoint ptr %cur_wireless_mode25 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cur_wireless_mode25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp27 = icmp ugt i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec24)
  %cmp31 = icmp eq i32 %dec24, 0
  %or.cond86 = select i1 %cmp27, i1 %cmp31, i1 false
  br i1 %or.cond86, label %if.then33, label %if.then22.if.end35_crit_edge

if.then22.if.end35_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then33:                                        ; preds = %if.then22
  %tobool.not.i87 = icmp eq ptr %padapter, null
  br i1 %tobool.not.i87, label %if.then33.if.end35_crit_edge, label %if.end.i90

if.then33.if.end35_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end.i90:                                       ; preds = %if.then33
  %bstart_bss.i88 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 34
  %22 = ptrtoint ptr %bstart_bss.i88 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bstart_bss.i88, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not.i89 = icmp eq i8 %23, 0
  br i1 %tobool1.not.i89, label %if.end.i90.if.end35_crit_edge, label %if.end3.i92

if.end.i90.if.end35_crit_edge:                    ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end3.i92:                                      ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #10
  %bcn_update_lock.i91 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock.i91) #8
  %update_bcn.i93 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 70
  %24 = ptrtoint ptr %update_bcn.i93 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %update_bcn.i93, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock.i91) #8
  %call.i94 = tail call zeroext i8 @set_tx_beacon_cmd(ptr noundef nonnull %padapter) #8
  br label %if.end35

if.end35:                                         ; preds = %if.end3.i92, %if.end.i90.if.end35_crit_edge, %if.then33.if.end35_crit_edge, %if.then22.if.end35_crit_edge, %if.end20.if.end35_crit_edge
  %beacon_updated.2 = phi i8 [ %beacon_updated.1, %if.then22.if.end35_crit_edge ], [ %beacon_updated.1, %if.end20.if.end35_crit_edge ], [ 1, %if.then33.if.end35_crit_edge ], [ 1, %if.end.i90.if.end35_crit_edge ], [ 1, %if.end3.i92 ]
  %no_ht_gf_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 58
  %25 = ptrtoint ptr %no_ht_gf_set to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %no_ht_gf_set, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool36.not = icmp eq i8 %26, 0
  br i1 %tobool36.not, label %if.end35.if.end40_crit_edge, label %if.then37

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %no_ht_gf_set to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %no_ht_gf_set, align 8
  %num_sta_ht_no_gf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 45
  %28 = ptrtoint ptr %num_sta_ht_no_gf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_sta_ht_no_gf, align 4
  %dec39 = add i32 %29, -1
  store i32 %dec39, ptr %num_sta_ht_no_gf, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end35.if.end40_crit_edge
  %no_ht_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 59
  %30 = ptrtoint ptr %no_ht_set to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %no_ht_set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool41.not = icmp eq i8 %31, 0
  br i1 %tobool41.not, label %if.end40.if.end45_crit_edge, label %if.then42

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %no_ht_set to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %no_ht_set, align 1
  %num_sta_no_ht = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 31
  %33 = ptrtoint ptr %num_sta_no_ht to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_sta_no_ht, align 4
  %dec44 = add i32 %34, -1
  store i32 %dec44, ptr %num_sta_no_ht, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end40.if.end45_crit_edge
  %ht_20mhz_set = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 60
  %35 = ptrtoint ptr %ht_20mhz_set to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ht_20mhz_set, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool46.not = icmp eq i8 %36, 0
  br i1 %tobool46.not, label %if.end45.if.end50_crit_edge, label %if.then47

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %ht_20mhz_set to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %ht_20mhz_set, align 2
  %num_sta_ht_20mhz = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 46
  %38 = ptrtoint ptr %num_sta_ht_20mhz to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_sta_ht_20mhz, align 4
  %dec49 = add i32 %39, -1
  store i32 %dec49, ptr %num_sta_ht_20mhz, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end45.if.end50_crit_edge
  %call = tail call fastcc i32 @rtw_ht_operation_update(ptr noundef %padapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp51 = icmp slt i32 %call, 1
  %tobool.not.i96 = icmp eq ptr %padapter, null
  %or.cond113 = or i1 %tobool.not.i96, %cmp51
  br i1 %or.cond113, label %if.end50.cleanup_crit_edge, label %if.end.i99

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i99:                                       ; preds = %if.end50
  %bstart_bss.i97 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 34
  %40 = ptrtoint ptr %bstart_bss.i97 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bstart_bss.i97, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool1.not.i98 = icmp eq i8 %41, 0
  br i1 %tobool1.not.i98, label %if.end.i99.cleanup_crit_edge, label %if.end.i107

if.end.i99.cleanup_crit_edge:                     ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i107:                                      ; preds = %if.end.i99
  %bcn_update_lock.i100 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock.i100) #8
  %update_bcn.i102 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 70
  %42 = ptrtoint ptr %update_bcn.i102 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %update_bcn.i102, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock.i100) #8
  %43 = ptrtoint ptr %bstart_bss.i97 to i32
  call void @__asan_load1_noabort(i32 %43)
  %.pr = load i8, ptr %bstart_bss.i97, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool1.not.i106 = icmp eq i8 %.pr, 0
  br i1 %tobool1.not.i106, label %if.end.i107.cleanup_crit_edge, label %if.end3.i109

if.end.i107.cleanup_crit_edge:                    ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i109:                                     ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #10
  %bcn_update_lock.i108 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %bcn_update_lock.i108) #8
  %update_bcn.i110 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 70
  %44 = ptrtoint ptr %update_bcn.i110 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %update_bcn.i110, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %bcn_update_lock.i108) #8
  %call.i111 = tail call zeroext i8 @set_tx_beacon_cmd(ptr noundef nonnull %padapter) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i109, %if.end.i107.cleanup_crit_edge, %if.end.i99.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ %beacon_updated.2, %if.end50.cleanup_crit_edge ], [ %beacon_updated.2, %if.end.i107.cleanup_crit_edge ], [ %beacon_updated.2, %if.end3.i109 ], [ %beacon_updated.2, %if.end.i99.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @issue_deauth(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_clearstakey_cmd(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_cfg80211_indicate_sta_disassoc(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @report_del_sta_event(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sta_info_update(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 46
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 8
  %and = lshr i32 %1, 9
  %and.lobit = and i32 %and, 1
  %2 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 11
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and.lobit, ptr %2, align 4
  %qospriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 30
  %4 = ptrtoint ptr %qospriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qospriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp ne i32 %5, 0
  %and7 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %6 = and i1 %tobool8.not, %cmp.not
  br i1 %6, label %entry.if.end21_crit_edge, label %7

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

7:                                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %not.tobool8.not = xor i1 %tobool8.not, true
  %spec.select34 = zext i1 %not.tobool8.not to i32
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select34, ptr %2, align 4
  br label %if.end21

if.end21:                                         ; preds = %7, %entry.if.end21_crit_edge
  %not.tobool8.not36 = xor i1 %tobool8.not, true
  %spec.select35 = zext i1 %not.tobool8.not36 to i8
  %9 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select35, ptr %9, align 8
  %htpriv15 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33
  %11 = ptrtoint ptr %htpriv15 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %htpriv15, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool17.not = icmp eq i8 %12, 0
  %spec.store.select = select i1 %tobool17.not, i8 0, i8 %spec.select35
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.store.select, ptr %9, align 8
  tail call void @update_sta_info_apmode(ptr noundef %padapter, ptr noundef %psta)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ap_sta_info_defer_update(ptr noundef %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 8
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 10
  %2 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_id, align 8
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %psta, ptr %arrayidx, align 4
  tail call void @add_RATid(ptr noundef %padapter, ptr noundef %psta, i8 noundef zeroext 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_ap_restore_network(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %chk_alive_list = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %chk_alive_list) #8
  %0 = call ptr @memset(ptr %chk_alive_list, i32 255, i32 32)
  %call = tail call zeroext i8 @rtw_setopmode_cmd(ptr noundef %padapter, i32 noundef 4, i1 noundef zeroext false) #8
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %1 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cur_channel, align 8
  %cur_ch_offset = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 9
  %3 = ptrtoint ptr %cur_ch_offset to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cur_ch_offset, align 2
  %cur_bwmode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %5 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cur_bwmode, align 1
  %conv = zext i8 %6 to i16
  tail call void @set_channel_bwmode(ptr noundef %padapter, i8 noundef zeroext %2, i8 noundef zeroext %4, i16 noundef zeroext %conv) #8
  tail call void @start_bss_network(ptr noundef %padapter)
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %8, label %entry.if.end_crit_edge [
    i32 2, label %entry.if.then_crit_edge
    i32 4, label %entry.if.then_crit_edge89
  ]

entry.if.then_crit_edge89:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge89
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %dot118021XGrpKeyid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 7
  %10 = ptrtoint ptr %dot118021XGrpKeyid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dot118021XGrpKeyid, align 4
  %call7 = tail call i32 @rtw_set_key(ptr noundef %padapter, ptr noundef %securitypriv, i32 noundef %11, i8 noundef zeroext 0, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %asoc_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #8
  %asoc_list = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 9
  %12 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %plist.080 = load ptr, ptr %asoc_list, align 4
  %cmp.i.not81 = icmp eq ptr %plist.080, %asoc_list
  br i1 %cmp.i.not81, label %for.end.thread, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.end.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #8
  br label %for.end45

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %if.end.for.body_crit_edge
  %plist.083 = phi ptr [ %plist.0, %if.end16.for.body_crit_edge ], [ %plist.080, %if.end.for.body_crit_edge ]
  %chk_alive_num.082 = phi i8 [ %chk_alive_num.1, %if.end16.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %plist.083, i32 -2840
  %call9 = tail call i32 @rtw_stainfo_offset(ptr noundef %stapriv, ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call9)
  %13 = icmp ult i32 %call9, 32
  br i1 %13, label %if.then14, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv15 = trunc i32 %call9 to i8
  %inc = add i8 %chk_alive_num.082, 1
  %idxprom = zext i8 %chk_alive_num.082 to i32
  %arrayidx = getelementptr [32 x i8], ptr %chk_alive_list, i32 0, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv15, ptr %arrayidx, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %for.body.if.end16_crit_edge
  %chk_alive_num.1 = phi i8 [ %inc, %if.then14 ], [ %chk_alive_num.082, %for.body.if.end16_crit_edge ]
  %15 = ptrtoint ptr %plist.083 to i32
  call void @__asan_load4_noabort(i32 %15)
  %plist.0 = load ptr, ptr %plist.083, align 4
  %cmp.i.not = icmp eq ptr %plist.0, %asoc_list
  br i1 %cmp.i.not, label %for.end, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end16
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #8
  %conv20 = zext i8 %chk_alive_num.1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %chk_alive_num.1)
  %cmp2184.not = icmp eq i8 %chk_alive_num.1, 0
  br i1 %cmp2184.not, label %for.end.for.end45_crit_edge, label %for.end.for.body23_crit_edge

for.end.for.body23_crit_edge:                     ; preds = %for.end
  br label %for.body23

for.end.for.end45_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end45

for.body23:                                       ; preds = %for.inc43.for.body23_crit_edge, %for.end.for.body23_crit_edge
  %i.085 = phi i32 [ %inc44, %for.inc43.for.body23_crit_edge ], [ 0, %for.end.for.body23_crit_edge ]
  %arrayidx24 = getelementptr [32 x i8], ptr %chk_alive_list, i32 0, i32 %i.085
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %17 to i32
  %call26 = tail call ptr @rtw_get_stainfo_by_offset(ptr noundef %stapriv, i32 noundef %conv25) #8
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %for.body23.for.inc43_crit_edge, label %if.end29

for.body23.for.inc43_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43

if.end29:                                         ; preds = %for.body23
  %state = getelementptr inbounds %struct.sta_info, ptr %call26, i32 0, i32 8
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 8
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end29.for.inc43_crit_edge, label %if.then31

if.end29.for.inc43_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43

if.then31:                                        ; preds = %if.end29
  tail call void @rtw_sta_media_status_rpt(ptr noundef %padapter, ptr noundef nonnull %call26, i32 noundef 1) #8
  tail call void @Update_RA_Entry(ptr noundef %padapter, ptr noundef nonnull %call26) #8
  %20 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %21, label %if.then31.for.inc43_crit_edge [
    i32 2, label %if.then31.if.then39_crit_edge
    i32 4, label %if.then31.if.then39_crit_edge90
  ]

if.then31.if.then39_crit_edge90:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

if.then31.if.then39_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

if.then31.for.inc43_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43

if.then39:                                        ; preds = %if.then31.if.then39_crit_edge, %if.then31.if.then39_crit_edge90
  %call40 = tail call zeroext i8 @rtw_setstakey_cmd(ptr noundef %padapter, ptr noundef nonnull %call26, i8 noundef zeroext 1, i1 noundef zeroext false) #8
  br label %for.inc43

for.inc43:                                        ; preds = %if.then39, %if.then31.for.inc43_crit_edge, %if.end29.for.inc43_crit_edge, %for.body23.for.inc43_crit_edge
  %inc44 = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc44, %conv20
  br i1 %exitcond.not, label %for.inc43.for.end45_crit_edge, label %for.inc43.for.body23_crit_edge

for.inc43.for.body23_crit_edge:                   ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23

for.inc43.for.end45_crit_edge:                    ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end45

for.end45:                                        ; preds = %for.inc43.for.end45_crit_edge, %for.end.for.end45_crit_edge, %for.end.thread
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %chk_alive_list) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_setopmode_cmd(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_set_key(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Update_RA_Entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_setstakey_cmd(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stop_ap_mode(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_node_q = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3
  %update_bcn = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 70
  %0 = ptrtoint ptr %update_bcn to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %update_bcn, align 4
  %bstart_bss = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 34
  %1 = ptrtoint ptr %bstart_bss to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bstart_bss, align 2
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %ndisencryptstatus = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 36
  %2 = call ptr @memset(ptr %securitypriv, i32 0, i32 6936)
  %3 = ptrtoint ptr %ndisencryptstatus to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %ndisencryptstatus, align 4
  %lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 3, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %4 = ptrtoint ptr %acl_node_q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acl_node_q, align 4
  %cmp.i.not35 = icmp eq ptr %5, %acl_node_q
  br i1 %cmp.i.not35, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %num = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 22, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %plist.036 = phi ptr [ %5, %for.body.lr.ph ], [ %tmp.038, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %plist.036 to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.038 = load ptr, ptr %plist.036, align 4
  %valid = getelementptr inbounds %struct.rtw_wlan_acl_node, ptr %plist.036, i32 0, i32 2
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %9 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %valid, align 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plist.036) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %plist.036, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %plist.036 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %plist.036, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %plist.036 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %plist.036, ptr %plist.036, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %plist.036, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %plist.036, ptr %prev.i3.i, align 4
  %18 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %num, align 4
  br label %for.inc

for.inc:                                          ; preds = %list_del_init.exit, %for.body.for.inc_crit_edge
  %cmp.i.not = icmp eq ptr %tmp.038, %acl_node_q
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  tail call void @rtw_sta_flush(ptr noundef %padapter)
  tail call void @rtw_free_all_stainfo(ptr noundef %padapter) #8
  %call10 = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %padapter) #8
  %call11 = tail call i32 @rtw_free_stainfo(ptr noundef %padapter, ptr noundef %call10) #8
  %call12 = tail call i32 @rtw_init_bcmc_stainfo(ptr noundef %padapter) #8
  tail call void @rtw_free_mlme_priv_ie_data(ptr noundef %mlmepriv) #8
  tail call void @rtw_btcoex_MediaStatusNotify(ptr noundef %padapter, i8 noundef zeroext 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_init_bcmc_stainfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_mlme_priv_ie_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_btcoex_MediaStatusNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @init_mlme_ap_info.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/core/rtw_ap.c", i32 18, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @init_mlme_ap_info.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/rtl8723bs/core/rtw_ap.c", i32 22, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
