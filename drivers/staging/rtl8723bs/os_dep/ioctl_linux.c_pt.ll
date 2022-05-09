; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/os_dep/ioctl_linux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwreq = type { %union.anon.128, %union.iwreq_data }
%union.anon.128 = type { [16 x i8] }
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.iw_point = type { ptr, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee_param = type { i32, [6 x i8], %union.anon.129 }
%union.anon.129 = type { %struct.anon.134 }
%struct.anon.134 = type { i16, i16, i32, [16 x i8], %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
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
%struct.rt_link_detect_t = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.HT_caps_element = type { %union.anon.136 }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, i8, ptr, %struct.mutex }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%union.anon.139 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
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
%struct.ieee_param_ex = type { i32, [6 x i8], [0 x i8] }
%struct.sta_data = type { i16, i16, i32, i32, [16 x i8], i32, %struct.ieee80211_ht_cap, i64, i64, i64, i64, i64, i64 }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__const.rtw_set_wpa_ie.wps_oui = private unnamed_addr constant [4 x i8] c"\00P\F2\04", align 1
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WEP\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TKIP\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CCMP\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BIP\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 35836, i64 35838]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.9 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.12 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.15 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 221]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 230, i32 6 }
@___asan_gen_.21 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 214, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 156, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 78, i32 33 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 146, i32 36 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 157, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 168, i32 80 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [50 x i8] c"../drivers/staging/rtl8723bs/os_dep/ioctl_linux.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 180, i32 44 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %rq, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %wps_oui.i = alloca [4 x i8], align 4
  %ssid.i = alloca [33 x i8], align 1
  %ssid_len.i = alloca i32, align 4
  %group_cipher.i = alloca i32, align 4
  %pairwise_cipher.i = alloca i32, align 4
  %null_addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 35838, label %sw.bb
    i32 35836, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %u = getelementptr inbounds %struct.iwreq, ptr %rq, i32 0, i32 1
  %1 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %u, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %lor.lhs.false.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %sw.bb
  %length.i = getelementptr inbounds %struct.iwreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %4)
  %cmp.not.i = icmp eq i16 %4, 64
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.sw.epilog_crit_edge

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = tail call ptr @_rtw_malloc(i32 noundef 64) #8
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.end6.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end6.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %u, align 4
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %length.i, align 4
  %conv9.i = zext i16 %8 to i32
  tail call void @__check_object_size(ptr noundef nonnull %call.i, i32 noundef %conv9.i, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.end6.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end6.i.if.end.i.i.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end6.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 %conv9.i, i32 -1226833920) #11, !srcloc !27
  %asmresult.i.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !28

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef %conv9.i) #8
  %10 = tail call i32 @llvm.read_register.i32(metadata !17) #8
  %and.i.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !29
  %and.i.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.i, ptr noundef %6, i32 noundef %conv9.i) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end6.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %conv9.i, %if.end6.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %conv9.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end13.i, label %if.then11.i.i.i, !prof !28

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = sub i32 %conv9.i, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i, i32 %sub.i.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %sw.epilog.sink.split

if.end13.i:                                       ; preds = %if.end.i.i.i
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %15, label %if.end13.i.sw.epilog.sink.split_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb16.i
    i32 3, label %sw.bb22.i
    i32 4, label %sw.bb26.i
  ]

if.end13.i.sw.epilog.sink.split_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb.i:                                          ; preds = %if.end13.i
  %u.i = getelementptr inbounds %struct.ieee_param, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %u.i, align 4
  %value.i = getelementptr inbounds %struct.ieee_param, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %19 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value.i, align 4
  %add.ptr.i.i.i82 = getelementptr i8, ptr %dev, i32 2304
  %21 = ptrtoint ptr %add.ptr.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i.i.i82, align 4
  %23 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %18, label %sw.bb.i.sw.epilog.sink.split_crit_edge [
    i8 1, label %sw.bb.i84
    i8 2, label %sw.bb.i.land.lhs.true.i_crit_edge
    i8 3, label %sw.bb.i.land.lhs.true.i_crit_edge381
    i8 4, label %sw.bb.i.land.lhs.true.i_crit_edge382
    i8 5, label %sw.bb10.i
    i8 6, label %sw.bb.i.land.lhs.true.i_crit_edge383
    i8 7, label %sw.bb.i.land.lhs.true.i_crit_edge384
  ]

sw.bb.i.land.lhs.true.i_crit_edge384:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

sw.bb.i.land.lhs.true.i_crit_edge383:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

sw.bb.i.land.lhs.true.i_crit_edge382:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

sw.bb.i.land.lhs.true.i_crit_edge381:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

sw.bb.i.land.lhs.true.i_crit_edge:                ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

sw.bb.i.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb.i84:                                        ; preds = %sw.bb.i
  %securitypriv.i83 = getelementptr inbounds %struct.adapter, ptr %22, i32 0, i32 12
  %24 = ptrtoint ptr %securitypriv.i83 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %securitypriv.i83, align 8
  %trunc.i = trunc i32 %20 to i8
  %25 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %trunc.i, label %sw.bb.i84.land.lhs.true.i_crit_edge [
    i8 1, label %sw.bb1.i
    i8 2, label %sw.bb4.i
  ]

sw.bb.i84.land.lhs.true.i_crit_edge:              ; preds = %sw.bb.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

sw.bb1.i:                                         ; preds = %sw.bb.i84
  call void @__sanitizer_cov_trace_pc() #10
  %ndisauthtype.i85 = getelementptr inbounds %struct.adapter, ptr %22, i32 0, i32 12, i32 35
  %26 = ptrtoint ptr %ndisauthtype.i85 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %ndisauthtype.i85, align 8
  %ndisencryptstatus.i86 = getelementptr inbounds %struct.adapter, ptr %22, i32 0, i32 12, i32 36
  %27 = ptrtoint ptr %ndisencryptstatus.i86 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %ndisencryptstatus.i86, align 4
  br label %land.lhs.true.i

sw.bb4.i:                                         ; preds = %sw.bb.i84
  call void @__sanitizer_cov_trace_pc() #10
  %ndisauthtype6.i = getelementptr inbounds %struct.adapter, ptr %22, i32 0, i32 12, i32 35
  %28 = ptrtoint ptr %ndisauthtype6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 7, ptr %ndisauthtype6.i, align 8
  %ndisencryptstatus8.i = getelementptr inbounds %struct.adapter, ptr %22, i32 0, i32 12, i32 36
  %29 = ptrtoint ptr %ndisencryptstatus8.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 6, ptr %ndisencryptstatus8.i, align 4
  br label %land.lhs.true.i

sw.bb10.i:                                        ; preds = %sw.bb.i
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  %30 = and i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %.not.i.i = icmp eq i32 %30, 3
  br i1 %.not.i.i, label %if.then.i.i87, label %if.else.i.i

if.then.i.i87:                                    ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #10
  %securitypriv.i.i = getelementptr inbounds %struct.adapter, ptr %22, i32 0, i32 12
  %ndisencryptstatus.i.i = getelementptr inbounds %struct.adapter, ptr %22, i32 0, i32 12, i32 36
  %31 = ptrtoint ptr %ndisencryptstatus.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %ndisencryptstatus.i.i, align 4
  %ndisauthtype.i.i = getelementptr inbounds %struct.adapter, ptr %22, i32 0, i32 12, i32 35
  %32 = ptrtoint ptr %ndisauthtype.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %ndisauthtype.i.i, align 8
  %33 = ptrtoint ptr %securitypriv.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %securitypriv.i.i, align 8
  br label %land.lhs.true.i

if.else.i.i:                                      ; preds = %sw.bb10.i
  %and.i.i88 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i88)
  %tobool.not.i.i = icmp eq i32 %and.i.i88, 0
  br i1 %tobool.not.i.i, label %if.else14.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %securitypriv8.i.i = getelementptr inbounds %struct.adapter, ptr %22, i32 0, i32 12
  %ndisencryptstatus9.i.i = getelementptr inbounds %struct.adapter, ptr %22, i32 0, i32 12, i32 36
  %34 = ptrtoint ptr %ndisencryptstatus9.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %ndisencryptstatus9.i.i, align 4
  %ndisauthtype11.i.i = getelementptr inbounds %struct.adapter, ptr %22, i32 0, i32 12, i32 35
  %35 = ptrtoint ptr %ndisauthtype11.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %ndisauthtype11.i.i, align 8
  %36 = ptrtoint ptr %securitypriv8.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %securitypriv8.i.i, align 8
  br label %land.lhs.true.i

if.else14.i.i:                                    ; preds = %if.else.i.i
  br i1 %tobool2.not.i.i, label %if.else14.i.i.sw.epilog.sink.split_crit_edge, label %if.then17.i.i

if.else14.i.i.sw.epilog.sink.split_crit_edge:     ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.then17.i.i:                                    ; preds = %if.else14.i.i
  %ndisauthtype19.i.i = getelementptr inbounds %struct.adapter, ptr %22, i32 0, i32 12, i32 35
  %37 = ptrtoint ptr %ndisauthtype19.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ndisauthtype19.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp.i.i = icmp ult i32 %38, 4
  br i1 %cmp.i.i, label %if.then20.i.i, label %if.then17.i.i.land.lhs.true.i_crit_edge

if.then17.i.i.land.lhs.true.i_crit_edge:          ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.then20.i.i:                                    ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %securitypriv18.i.i = getelementptr inbounds %struct.adapter, ptr %22, i32 0, i32 12
  %39 = ptrtoint ptr %ndisauthtype19.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %ndisauthtype19.i.i, align 8
  %40 = ptrtoint ptr %securitypriv18.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %securitypriv18.i.i, align 8
  br label %land.lhs.true.i

sw.bb16.i:                                        ; preds = %if.end13.i
  %add.ptr.i.i78.i = getelementptr i8, ptr %dev, i32 2304
  %41 = ptrtoint ptr %add.ptr.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i.i78.i, align 4
  %u18.i = getelementptr inbounds %struct.ieee_param, ptr %call.i, i32 0, i32 2
  %data.i = getelementptr inbounds %struct.ieee_param, ptr %call.i, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %43 = ptrtoint ptr %u18.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %u18.i, align 4
  %conv20.i = trunc i32 %44 to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group_cipher.i) #8
  %45 = ptrtoint ptr %group_cipher.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %group_cipher.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pairwise_cipher.i) #8
  %46 = ptrtoint ptr %pairwise_cipher.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %pairwise_cipher.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %null_addr.i) #8
  %47 = call ptr @memset(ptr %null_addr.i, i32 0, i32 6)
  %conv.i63 = and i32 %44, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %conv20.i)
  %cmp.i64 = icmp ugt i16 %conv20.i, 256
  %tobool.not.i65 = icmp eq ptr %data.i, null
  %or.cond.i = or i1 %tobool.not.i65, %cmp.i64
  br i1 %or.cond.i, label %if.then.i, label %if.end.i69

if.then.i:                                        ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #10
  %fw_state.i.i66 = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %fw_state.i.i66 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fw_state.i.i66, align 4
  %and.i.i67 = and i32 %49, -257
  store i32 %and.i.i67, ptr %fw_state.i.i66, align 4
  %..i = select i1 %tobool.not.i65, i32 0, i32 -22
  br label %rtw_set_wpa_ie.exit

if.end.i69:                                       ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv20.i)
  %tobool4.not.i68 = icmp eq i16 %conv20.i, 0
  br i1 %tobool4.not.i68, label %if.end.i69.if.end148.i_crit_edge, label %if.then5.i

if.end.i69.if.end148.i_crit_edge:                 ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148.i

if.then5.i:                                       ; preds = %if.end.i69
  %call.i70 = tail call ptr @_rtw_zmalloc(i32 noundef %conv.i63) #8
  %tobool7.not.i = icmp eq ptr %call.i70, null
  br i1 %tobool7.not.i, label %if.then5.i.exit.i80_crit_edge, label %if.end9.i

if.then5.i.exit.i80_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i80

if.end9.i:                                        ; preds = %if.then5.i
  %50 = call ptr @memcpy(ptr %call.i70, ptr %data.i, i32 %conv.i63)
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %conv20.i)
  %cmp12.i71 = icmp ult i16 %conv20.i, 4
  br i1 %cmp12.i71, label %if.end9.i.exit.i80_crit_edge, label %if.end15.i

if.end9.i.exit.i80_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i80

if.end15.i:                                       ; preds = %if.end9.i
  %call17.i = call i32 @rtw_parse_wpa_ie(ptr noundef nonnull %call.i70, i32 noundef %conv.i63, ptr noundef nonnull %group_cipher.i, ptr noundef nonnull %pairwise_cipher.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17.i)
  %cmp18.i72 = icmp eq i32 %call17.i, 1
  br i1 %cmp18.i72, label %if.then20.i, label %if.end15.i.if.end24.i_crit_edge

if.end15.i.if.end24.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then20.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %securitypriv.i73 = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 12
  %51 = ptrtoint ptr %securitypriv.i73 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %securitypriv.i73, align 8
  %ndisauthtype.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 12, i32 35
  %52 = ptrtoint ptr %ndisauthtype.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %ndisauthtype.i, align 8
  %supplicant_ie.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 12, i32 43
  %53 = call ptr @memcpy(ptr %supplicant_ie.i, ptr %call.i70, i32 %conv.i63)
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then20.i, %if.end15.i.if.end24.i_crit_edge
  %call26.i = call i32 @rtw_parse_wpa2_ie(ptr noundef nonnull %call.i70, i32 noundef %conv.i63, ptr noundef nonnull %group_cipher.i, ptr noundef nonnull %pairwise_cipher.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call26.i)
  %cmp27.i = icmp eq i32 %call26.i, 1
  br i1 %cmp27.i, label %if.then29.i, label %if.end24.i.if.end39.i_crit_edge

if.end24.i.if.end39.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

if.then29.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %securitypriv30.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 12
  %54 = ptrtoint ptr %securitypriv30.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %securitypriv30.i, align 8
  %ndisauthtype33.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 12, i32 35
  %55 = ptrtoint ptr %ndisauthtype33.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 7, ptr %ndisauthtype33.i, align 8
  %supplicant_ie35.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 12, i32 43
  %56 = call ptr @memcpy(ptr %supplicant_ie35.i, ptr %call.i70, i32 %conv.i63)
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then29.i, %if.end24.i.if.end39.i_crit_edge
  %57 = ptrtoint ptr %group_cipher.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %group_cipher.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp40.i = icmp eq i32 %58, 0
  br i1 %cmp40.i, label %if.then42.i, label %if.end39.i.if.end43.i_crit_edge

if.end39.i.if.end43.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %group_cipher.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %group_cipher.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then42.i, %if.end39.i.if.end43.i_crit_edge
  %60 = ptrtoint ptr %pairwise_cipher.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pairwise_cipher.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp44.i = icmp eq i32 %61, 0
  br i1 %cmp44.i, label %if.then46.i, label %if.end43.i.if.end47.i_crit_edge

if.end43.i.if.end47.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %pairwise_cipher.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %pairwise_cipher.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then46.i, %if.end43.i.if.end47.i_crit_edge
  %63 = ptrtoint ptr %group_cipher.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %group_cipher.i, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %64, label %if.end47.i.sw.epilog.i75_crit_edge [
    i32 1, label %if.end47.i.sw.epilog.sink.split.i_crit_edge
    i32 2, label %sw.bb50.i
    i32 8, label %sw.bb55.i
    i32 16, label %sw.bb60.i74
    i32 4, label %sw.bb65.i
  ]

if.end47.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

if.end47.i.sw.epilog.i75_crit_edge:               ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i75

sw.bb50.i:                                        ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb55.i:                                        ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb60.i74:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb65.i:                                        ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb65.i, %sw.bb60.i74, %sw.bb55.i, %sw.bb50.i, %if.end47.i.sw.epilog.sink.split.i_crit_edge
  %.sink250.i = phi i32 [ 5, %sw.bb65.i ], [ 4, %sw.bb60.i74 ], [ 2, %sw.bb55.i ], [ 1, %sw.bb50.i ], [ 0, %if.end47.i.sw.epilog.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 0, %sw.bb65.i ], [ 6, %sw.bb60.i74 ], [ 4, %sw.bb55.i ], [ 0, %sw.bb50.i ], [ %64, %if.end47.i.sw.epilog.sink.split.i_crit_edge ]
  %dot118021XGrpPrivacy67.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 12, i32 6
  %66 = ptrtoint ptr %dot118021XGrpPrivacy67.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %.sink250.i, ptr %dot118021XGrpPrivacy67.i, align 8
  %ndisencryptstatus69.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 12, i32 36
  %67 = ptrtoint ptr %ndisencryptstatus69.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %.sink.i, ptr %ndisencryptstatus69.i, align 4
  br label %sw.epilog.i75

sw.epilog.i75:                                    ; preds = %sw.epilog.sink.split.i, %if.end47.i.sw.epilog.i75_crit_edge
  %68 = ptrtoint ptr %pairwise_cipher.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pairwise_cipher.i, align 4
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %69, label %sw.epilog.i75.while.body.preheader.i_crit_edge [
    i32 1, label %sw.epilog.i75.while.body.preheader.sink.split.i_crit_edge
    i32 2, label %sw.bb74.i
    i32 8, label %sw.bb79.i
    i32 16, label %sw.bb84.i
    i32 4, label %sw.bb89.i
  ]

sw.epilog.i75.while.body.preheader.sink.split.i_crit_edge: ; preds = %sw.epilog.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader.sink.split.i

sw.epilog.i75.while.body.preheader.i_crit_edge:   ; preds = %sw.epilog.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader.i

sw.bb74.i:                                        ; preds = %sw.epilog.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader.sink.split.i

sw.bb79.i:                                        ; preds = %sw.epilog.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader.sink.split.i

sw.bb84.i:                                        ; preds = %sw.epilog.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader.sink.split.i

sw.bb89.i:                                        ; preds = %sw.epilog.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader.sink.split.i

while.body.preheader.sink.split.i:                ; preds = %sw.bb89.i, %sw.bb84.i, %sw.bb79.i, %sw.bb74.i, %sw.epilog.i75.while.body.preheader.sink.split.i_crit_edge
  %.sink252.i = phi i32 [ 1, %sw.bb74.i ], [ 2, %sw.bb79.i ], [ 4, %sw.bb84.i ], [ 5, %sw.bb89.i ], [ 0, %sw.epilog.i75.while.body.preheader.sink.split.i_crit_edge ]
  %.sink251.i = phi i32 [ 0, %sw.bb74.i ], [ 4, %sw.bb79.i ], [ 6, %sw.bb84.i ], [ 0, %sw.bb89.i ], [ %69, %sw.epilog.i75.while.body.preheader.sink.split.i_crit_edge ]
  %dot11PrivacyAlgrthm.i76 = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 12, i32 1
  %71 = ptrtoint ptr %dot11PrivacyAlgrthm.i76 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink252.i, ptr %dot11PrivacyAlgrthm.i76, align 4
  %ndisencryptstatus73.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 12, i32 36
  %72 = ptrtoint ptr %ndisencryptstatus73.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %.sink251.i, ptr %ndisencryptstatus73.i, align 4
  br label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %while.body.preheader.sink.split.i, %sw.epilog.i75.while.body.preheader.i_crit_edge
  %fw_state.i239.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 4, i32 1
  %73 = ptrtoint ptr %fw_state.i239.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fw_state.i239.i, align 4
  %and.i240.i = and i32 %74, -257
  store i32 %and.i240.i, ptr %fw_state.i239.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.else138.i.while.body.i_crit_edge, %while.body.preheader.i
  %conv96244.i = phi i32 [ %conv96.i, %if.else138.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %arrayidx100.i = getelementptr i8, ptr %call.i70, i32 %conv96244.i
  %75 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx100.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %76)
  %cmp102.i = icmp eq i8 %76, -35
  %add.i77 = add nuw nsw i32 %conv96244.i, 2
  br i1 %cmp102.i, label %land.lhs.true.i78, label %while.body.i.if.else138.i_crit_edge

while.body.i.if.else138.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else138.i

land.lhs.true.i78:                                ; preds = %while.body.i
  %arrayidx105.i = getelementptr i8, ptr %call.i70, i32 %add.i77
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx105.i, ptr noundef nonnull dereferenceable(4) @__const.rtw_set_wpa_ie.wps_oui, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool108.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool108.not.i, label %if.then109.i, label %land.lhs.true.i78.if.else138.i_crit_edge

land.lhs.true.i78.if.else138.i_crit_edge:         ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else138.i

if.then109.i:                                     ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx100.i.le = getelementptr i8, ptr %call.i70, i32 %conv96244.i
  %add111.i = add nuw nsw i32 %conv96244.i, 1
  %arrayidx112.i = getelementptr i8, ptr %call.i70, i32 %add111.i
  %77 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx112.i, align 1
  %conv113.i = zext i8 %78 to i32
  %add114.i = add nuw nsw i32 %conv113.i, 2
  %wps_ie_len.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 12, i32 24
  %79 = ptrtoint ptr %wps_ie_len.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add114.i, ptr %wps_ie_len.i, align 8
  %wps_ie.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 12, i32 23
  %80 = call ptr @memcpy(ptr %wps_ie.i, ptr %arrayidx100.i.le, i32 %add114.i)
  %or.i.i = or i32 %74, 256
  %81 = ptrtoint ptr %fw_state.i239.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or.i.i, ptr %fw_state.i239.i, align 4
  br label %if.end148.i

if.else138.i:                                     ; preds = %land.lhs.true.i78.if.else138.i_crit_edge, %while.body.i.if.else138.i_crit_edge
  %add140.i = add nuw nsw i32 %conv96244.i, 1
  %arrayidx141.i = getelementptr i8, ptr %call.i70, i32 %add140.i
  %82 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx141.i, align 1
  %conv142.i = zext i8 %83 to i32
  %add145.i = add nuw nsw i32 %add.i77, %conv142.i
  %conv96.i = and i32 %add145.i, 65535
  %cmp98.i = icmp ult i32 %conv96.i, %conv.i63
  br i1 %cmp98.i, label %if.else138.i.while.body.i_crit_edge, label %if.else138.i.if.end148.i_crit_edge

if.else138.i.if.end148.i_crit_edge:               ; preds = %if.else138.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148.i

if.else138.i.while.body.i_crit_edge:              ; preds = %if.else138.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end148.i:                                      ; preds = %if.else138.i.if.end148.i_crit_edge, %if.then109.i, %if.end.i69.if.end148.i_crit_edge
  %buf.0.i = phi ptr [ null, %if.end.i69.if.end148.i_crit_edge ], [ %call.i70, %if.then109.i ], [ %call.i70, %if.else138.i.if.end148.i_crit_edge ]
  %dot11PrivacyAlgrthm150.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 12, i32 1
  %84 = ptrtoint ptr %dot11PrivacyAlgrthm150.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dot11PrivacyAlgrthm150.i, align 4
  %.off.i = add i32 %85, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.then163.i, label %if.end148.i.exit.i80_crit_edge

if.end148.i.exit.i80_crit_edge:                   ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i80

if.then163.i:                                     ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @rtw_hal_set_hwreg(ptr noundef %42, i8 noundef zeroext 15, ptr noundef nonnull %null_addr.i) #8
  br label %exit.i80

exit.i80:                                         ; preds = %if.then163.i, %if.end148.i.exit.i80_crit_edge, %if.end9.i.exit.i80_crit_edge, %if.then5.i.exit.i80_crit_edge
  %buf.1.i = phi ptr [ %buf.0.i, %if.then163.i ], [ null, %if.then5.i.exit.i80_crit_edge ], [ %call.i70, %if.end9.i.exit.i80_crit_edge ], [ %buf.0.i, %if.end148.i.exit.i80_crit_edge ]
  %ret.0.i79 = phi i32 [ 0, %if.then163.i ], [ -12, %if.then5.i.exit.i80_crit_edge ], [ -1, %if.end9.i.exit.i80_crit_edge ], [ 0, %if.end148.i.exit.i80_crit_edge ]
  call void @kfree(ptr noundef %buf.1.i) #8
  br label %rtw_set_wpa_ie.exit

rtw_set_wpa_ie.exit:                              ; preds = %exit.i80, %if.then.i
  %retval.0.i81 = phi i32 [ %ret.0.i79, %exit.i80 ], [ %..i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %null_addr.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pairwise_cipher.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group_cipher.i) #8
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %if.end13.i
  %86 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %length.i, align 4
  %conv24.i = zext i16 %87 to i32
  %add.ptr.i.i.i54 = getelementptr i8, ptr %dev, i32 2304
  %88 = ptrtoint ptr %add.ptr.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr.i.i.i54, align 4
  %securitypriv.i = getelementptr inbounds %struct.adapter, ptr %89, i32 0, i32 12
  %u.i55 = getelementptr inbounds %struct.ieee_param, ptr %call.i, i32 0, i32 2
  %err.i = getelementptr inbounds %struct.ieee_param, ptr %call.i, i32 0, i32 2, i32 0, i32 3, i32 12
  %90 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %err.i, align 4
  %arrayidx.i = getelementptr %struct.ieee_param, ptr %call.i, i32 0, i32 2, i32 0, i32 3, i32 7
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %arrayidx.i, align 1
  %key.i = getelementptr inbounds %struct.ieee_param, ptr %call.i, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %key_len.i = getelementptr inbounds %struct.ieee_param, ptr %call.i, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 7
  %92 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %key_len.i, align 2
  %conv.i = zext i16 %93 to i32
  %add.i = add nuw nsw i32 %conv.i, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv24.i)
  %cmp.i = icmp ugt i32 %add.i, %conv24.i
  br i1 %cmp.i, label %sw.bb22.i.exit.i_crit_edge, label %if.end.i56

sw.bb22.i.exit.i_crit_edge:                       ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.end.i56:                                       ; preds = %sw.bb22.i
  %sta_addr.i = getelementptr inbounds %struct.ieee_param, ptr %call.i, i32 0, i32 1
  %94 = ptrtoint ptr %sta_addr.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %sta_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %95)
  %cmp7.i = icmp eq i8 %95, -1
  br i1 %cmp7.i, label %land.lhs.true.i57, label %if.end.i56.exit.i_crit_edge

if.end.i56.exit.i_crit_edge:                      ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

land.lhs.true.i57:                                ; preds = %if.end.i56
  %arrayidx10.i = getelementptr %struct.ieee_param, ptr %call.i, i32 0, i32 1, i32 1
  %96 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %97)
  %cmp12.i = icmp eq i8 %97, -1
  br i1 %cmp12.i, label %land.lhs.true14.i, label %land.lhs.true.i57.exit.i_crit_edge

land.lhs.true.i57.exit.i_crit_edge:               ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i57
  %arrayidx16.i = getelementptr %struct.ieee_param, ptr %call.i, i32 0, i32 1, i32 2
  %98 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %99)
  %cmp18.i = icmp eq i8 %99, -1
  br i1 %cmp18.i, label %land.lhs.true20.i, label %land.lhs.true14.i.exit.i_crit_edge

land.lhs.true14.i.exit.i_crit_edge:               ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

land.lhs.true20.i:                                ; preds = %land.lhs.true14.i
  %arrayidx22.i = getelementptr %struct.ieee_param, ptr %call.i, i32 0, i32 1, i32 3
  %100 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %101)
  %cmp24.i = icmp eq i8 %101, -1
  br i1 %cmp24.i, label %land.lhs.true26.i, label %land.lhs.true20.i.exit.i_crit_edge

land.lhs.true20.i.exit.i_crit_edge:               ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

land.lhs.true26.i:                                ; preds = %land.lhs.true20.i
  %arrayidx28.i = getelementptr %struct.ieee_param, ptr %call.i, i32 0, i32 1, i32 4
  %102 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %103)
  %cmp30.i58 = icmp eq i8 %103, -1
  br i1 %cmp30.i58, label %land.lhs.true32.i, label %land.lhs.true26.i.exit.i_crit_edge

land.lhs.true26.i.exit.i_crit_edge:               ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

land.lhs.true32.i:                                ; preds = %land.lhs.true26.i
  %arrayidx34.i = getelementptr %struct.ieee_param, ptr %call.i, i32 0, i32 1, i32 5
  %104 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %105)
  %cmp36.i = icmp eq i8 %105, -1
  br i1 %cmp36.i, label %if.then38.i, label %land.lhs.true32.i.exit.i_crit_edge

land.lhs.true32.i.exit.i_crit_edge:               ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.then38.i:                                      ; preds = %land.lhs.true32.i
  %idx.i = getelementptr inbounds %struct.ieee_param, ptr %call.i, i32 0, i32 2, i32 0, i32 4
  %106 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %107)
  %cmp41.i = icmp ugt i8 %107, 3
  br i1 %cmp41.i, label %if.then38.i.exit.i_crit_edge, label %if.end50.i

if.then38.i.exit.i_crit_edge:                     ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.end50.i:                                       ; preds = %if.then38.i
  %call54.i = tail call i32 @strcmp(ptr noundef %u.i55, ptr noundef nonnull dereferenceable(4) @.str.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp55.i = icmp eq i32 %call54.i, 0
  br i1 %cmp55.i, label %if.then57.i, label %if.end119.i

if.then57.i:                                      ; preds = %if.end50.i
  %ndisencryptstatus.i = getelementptr inbounds %struct.adapter, ptr %89, i32 0, i32 12, i32 36
  %108 = ptrtoint ptr %ndisencryptstatus.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %ndisencryptstatus.i, align 4
  %dot11PrivacyAlgrthm.i = getelementptr inbounds %struct.adapter, ptr %89, i32 0, i32 12, i32 1
  %109 = ptrtoint ptr %dot11PrivacyAlgrthm.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1, ptr %dot11PrivacyAlgrthm.i, align 4
  %dot118021XGrpPrivacy.i = getelementptr inbounds %struct.adapter, ptr %89, i32 0, i32 12, i32 6
  %110 = ptrtoint ptr %dot118021XGrpPrivacy.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %dot118021XGrpPrivacy.i, align 8
  %111 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %idx.i, align 4
  %conv63.i = zext i8 %112 to i32
  %113 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %key_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %112)
  %cmp67.i = icmp ugt i8 %112, 4
  br i1 %cmp67.i, label %if.then57.i.sw.epilog.sink.split_crit_edge, label %if.end70.i

if.then57.i.sw.epilog.sink.split_crit_edge:       ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end70.i:                                       ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %cmp71.not.i = icmp eq i16 %114, 0
  br i1 %cmp71.not.i, label %if.end70.i.exit.i_crit_edge, label %if.then73.i

if.end70.i.exit.i_crit_edge:                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.then73.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %114)
  %cmp74.i = icmp ult i16 %114, 6
  %cond.i = select i1 %cmp74.i, i32 5, i32 13
  %add76.i = add nuw nsw i32 %cond.i, 12
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add76.i, i32 noundef 3520) #13
  %tobool.not.i59 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i59, label %if.then73.i.exit.i_crit_edge, label %if.end79.i

if.then73.i.exit.i_crit_edge:                     ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.end79.i:                                       ; preds = %if.then73.i
  %key_length.i = getelementptr inbounds %struct.ndis_802_11_wep, ptr %call9.i.i.i, i32 0, i32 2
  %115 = ptrtoint ptr %key_length.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %cond.i, ptr %key_length.i, align 8
  %116 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %add76.i, ptr %call9.i.i.i, align 128
  br i1 %cmp74.i, label %if.end79.i.if.end89.i_crit_edge, label %if.then82.i

if.end79.i.if.end89.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

if.then82.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %dot11PrivacyAlgrthm.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 5, ptr %dot11PrivacyAlgrthm.i, align 4
  %118 = ptrtoint ptr %dot118021XGrpPrivacy.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 5, ptr %dot118021XGrpPrivacy.i, align 8
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then82.i, %if.end79.i.if.end89.i_crit_edge
  %key_index.i = getelementptr inbounds %struct.ndis_802_11_wep, ptr %call9.i.i.i, i32 0, i32 1
  %or.i = or i32 %conv63.i, -2147483648
  %119 = ptrtoint ptr %key_index.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %or.i, ptr %key_index.i, align 4
  %key_material.i = getelementptr inbounds %struct.ndis_802_11_wep, ptr %call9.i.i.i, i32 0, i32 3
  %120 = ptrtoint ptr %key_length.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %key_length.i, align 8
  %122 = call ptr @memcpy(ptr %key_material.i, ptr %key.i, i32 %121)
  %set_tx.i = getelementptr inbounds %struct.ieee_param, ptr %call.i, i32 0, i32 2, i32 0, i32 3, i32 8
  %123 = ptrtoint ptr %set_tx.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %set_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool97.not.i = icmp eq i8 %124, 0
  br i1 %tobool97.not.i, label %if.else105.i, label %if.then98.i

if.then98.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  %call99.i = tail call zeroext i8 @rtw_set_802_11_add_wep(ptr noundef %89, ptr noundef nonnull %call9.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call99.i)
  %cmp101.i = icmp eq i8 %call99.i, 0
  %spec.select.i60 = select i1 %cmp101.i, i32 -95, i32 0
  br label %exit.i

if.else105.i:                                     ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %112)
  %cmp106.i = icmp ugt i8 %112, 3
  br i1 %cmp106.i, label %if.else105.i.exit.i_crit_edge, label %if.end109.i

if.else105.i.exit.i_crit_edge:                    ; preds = %if.else105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.end109.i:                                      ; preds = %if.else105.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx110.i = getelementptr %struct.adapter, ptr %89, i32 0, i32 12, i32 3, i32 %conv63.i
  %125 = call ptr @memmove(ptr %arrayidx110.i, ptr %key.i, i32 %121)
  %126 = ptrtoint ptr %key_length.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %key_length.i, align 8
  %arrayidx116.i = getelementptr %struct.adapter, ptr %89, i32 0, i32 12, i32 4, i32 %conv63.i
  %128 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %arrayidx116.i, align 4
  %call117.i = tail call i32 @rtw_set_key(ptr noundef %89, ptr noundef %securitypriv.i, i32 noundef %conv63.i, i8 noundef zeroext 0, i1 noundef zeroext true) #8
  br label %exit.i

if.end119.i:                                      ; preds = %if.end50.i
  %129 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %securitypriv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %130)
  %cmp121.i = icmp eq i32 %130, 2
  br i1 %cmp121.i, label %if.then123.i, label %if.end119.i.exit.i_crit_edge

if.end119.i.exit.i_crit_edge:                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.then123.i:                                     ; preds = %if.end119.i
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %89, i32 0, i32 4, i32 1
  %131 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %132, 65544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.then123.i.exit.i_crit_edge, label %if.then127.i

if.then123.i.exit.i_crit_edge:                    ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.then127.i:                                     ; preds = %if.then123.i
  %stapriv.i = getelementptr inbounds %struct.adapter, ptr %89, i32 0, i32 11
  %mac_address.i.i = getelementptr inbounds %struct.adapter, ptr %89, i32 0, i32 4, i32 20, i32 6, i32 1
  %call129.i = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv.i, ptr noundef %mac_address.i.i) #8
  %tobool130.not.i = icmp eq ptr %call129.i, null
  br i1 %tobool130.not.i, label %if.then127.i.if.end298.i_crit_edge, label %if.else132.i

if.then127.i.if.end298.i_crit_edge:               ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end298.i

if.else132.i:                                     ; preds = %if.then127.i
  %call136.i = tail call i32 @strcmp(ptr noundef %u.i55, ptr noundef nonnull dereferenceable(5) @.str.4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136.i)
  %cmp137.not.i = icmp eq i32 %call136.i, 0
  br i1 %cmp137.not.i, label %if.else132.i.if.end140.i_crit_edge, label %if.then139.i

if.else132.i.if.end140.i_crit_edge:               ; preds = %if.else132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140.i

if.then139.i:                                     ; preds = %if.else132.i
  call void @__sanitizer_cov_trace_pc() #10
  %ieee8021x_blocked.i = getelementptr inbounds %struct.sta_info, ptr %call129.i, i32 0, i32 13
  %133 = ptrtoint ptr %ieee8021x_blocked.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %ieee8021x_blocked.i, align 8
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.then139.i, %if.else132.i.if.end140.i_crit_edge
  %ndisencryptstatus142.i = getelementptr inbounds %struct.adapter, ptr %89, i32 0, i32 12, i32 36
  %134 = ptrtoint ptr %ndisencryptstatus142.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ndisencryptstatus142.i, align 4
  %136 = zext i32 %135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %135, label %if.end140.i.if.end153.i_crit_edge [
    i32 4, label %if.end140.i.if.then150.i_crit_edge
    i32 6, label %if.end140.i.if.then150.i_crit_edge385
  ]

if.end140.i.if.then150.i_crit_edge385:            ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then150.i

if.end140.i.if.then150.i_crit_edge:               ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then150.i

if.end140.i.if.end153.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153.i

if.then150.i:                                     ; preds = %if.end140.i.if.then150.i_crit_edge, %if.end140.i.if.then150.i_crit_edge385
  %dot11PrivacyAlgrthm152.i = getelementptr inbounds %struct.adapter, ptr %89, i32 0, i32 12, i32 1
  %137 = ptrtoint ptr %dot11PrivacyAlgrthm152.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %dot11PrivacyAlgrthm152.i, align 4
  %dot118021XPrivacy.i = getelementptr inbounds %struct.sta_info, ptr %call129.i, i32 0, i32 14
  %139 = ptrtoint ptr %dot118021XPrivacy.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %dot118021XPrivacy.i, align 4
  br label %if.end153.i

if.end153.i:                                      ; preds = %if.then150.i, %if.end140.i.if.end153.i_crit_edge
  %set_tx155.i = getelementptr inbounds %struct.ieee_param, ptr %call.i, i32 0, i32 2, i32 0, i32 3, i32 8
  %140 = ptrtoint ptr %set_tx155.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %set_tx155.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %141)
  %cmp157.i = icmp eq i8 %141, 1
  br i1 %cmp157.i, label %if.then159.i, label %if.else191.i

if.then159.i:                                     ; preds = %if.end153.i
  %dot118021x_UncstKey.i = getelementptr inbounds %struct.sta_info, ptr %call129.i, i32 0, i32 17
  %142 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %key_len.i, align 2
  %144 = tail call i16 @llvm.umin.i16(i16 %143, i16 16) #8
  %spec.select449.i = zext i16 %144 to i32
  %145 = call ptr @memcpy(ptr %dot118021x_UncstKey.i, ptr %key.i, i32 %spec.select449.i)
  %call176.i = tail call i32 @strcmp(ptr noundef %u.i55, ptr noundef nonnull dereferenceable(5) @.str.5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176.i)
  %cmp177.i = icmp eq i32 %call176.i, 0
  br i1 %cmp177.i, label %if.then179.i, label %if.then159.i.if.end189.i_crit_edge

if.then159.i.if.end189.i_crit_edge:               ; preds = %if.then159.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189.i

if.then179.i:                                     ; preds = %if.then159.i
  call void @__sanitizer_cov_trace_pc() #10
  %dot11tkiptxmickey.i = getelementptr inbounds %struct.sta_info, ptr %call129.i, i32 0, i32 15
  %arrayidx183.i = getelementptr %struct.ieee_param, ptr %call.i, i32 1
  %146 = ptrtoint ptr %arrayidx183.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 8)
  %147 = load i64, ptr %arrayidx183.i, align 4
  %148 = ptrtoint ptr %dot11tkiptxmickey.i to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %147, ptr %dot11tkiptxmickey.i, align 8
  %dot11tkiprxmickey.i = getelementptr inbounds %struct.sta_info, ptr %call129.i, i32 0, i32 16
  %arrayidx187.i = getelementptr %struct.ieee_param, ptr %call.i, i32 1, i32 1, i32 4
  %149 = ptrtoint ptr %arrayidx187.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 8)
  %150 = load i64, ptr %arrayidx187.i, align 4
  %151 = ptrtoint ptr %dot11tkiprxmickey.i to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %150, ptr %dot11tkiprxmickey.i, align 8
  %busetkipkey.i = getelementptr inbounds %struct.adapter, ptr %89, i32 0, i32 12, i32 29
  %152 = ptrtoint ptr %busetkipkey.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %busetkipkey.i, align 2
  br label %if.end189.i

if.end189.i:                                      ; preds = %if.then179.i, %if.then159.i.if.end189.i_crit_edge
  %call190.i = tail call zeroext i8 @rtw_setstakey_cmd(ptr noundef %89, ptr noundef nonnull %call129.i, i8 noundef zeroext 1, i1 noundef zeroext true) #8
  br label %if.end298.i

if.else191.i:                                     ; preds = %if.end153.i
  %call195.i = tail call i32 @strcmp(ptr noundef %u.i55, ptr noundef nonnull dereferenceable(5) @.str.5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195.i)
  %cmp196.i = icmp eq i32 %call195.i, 0
  br i1 %cmp196.i, label %if.else191.i.if.then205.i_crit_edge, label %lor.lhs.false198.i

if.else191.i.if.then205.i_crit_edge:              ; preds = %if.else191.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then205.i

lor.lhs.false198.i:                               ; preds = %if.else191.i
  %call202.i = tail call i32 @strcmp(ptr noundef %u.i55, ptr noundef nonnull dereferenceable(5) @.str.6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202.i)
  %cmp203.i = icmp eq i32 %call202.i, 0
  br i1 %cmp203.i, label %lor.lhs.false198.i.if.then205.i_crit_edge, label %if.else261.i

lor.lhs.false198.i.if.then205.i_crit_edge:        ; preds = %lor.lhs.false198.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then205.i

if.then205.i:                                     ; preds = %lor.lhs.false198.i.if.then205.i_crit_edge, %if.else191.i.if.then205.i_crit_edge
  %153 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %idx.i, align 4
  %idxprom.i = zext i8 %154 to i32
  %arrayidx209.i = getelementptr %struct.adapter, ptr %89, i32 0, i32 12, i32 8, i32 %idxprom.i
  %155 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %key_len.i, align 2
  %157 = tail call i16 @llvm.umin.i16(i16 %156, i16 16) #8
  %spec.select450.i = zext i16 %157 to i32
  %158 = call ptr @memcpy(ptr %arrayidx209.i, ptr %key.i, i32 %spec.select450.i)
  %159 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %key_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %160)
  %cmp229.i = icmp ugt i16 %160, 16
  br i1 %cmp229.i, label %if.then231.i, label %if.then205.i.if.end250.i_crit_edge

if.then205.i.if.end250.i_crit_edge:               ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end250.i

if.then231.i:                                     ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_pc() #10
  %161 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %idx.i, align 4
  %idxprom235.i = zext i8 %162 to i32
  %arrayidx236.i = getelementptr %struct.adapter, ptr %89, i32 0, i32 12, i32 9, i32 %idxprom235.i
  %arrayidx240.i = getelementptr %struct.ieee_param, ptr %call.i, i32 1
  %163 = ptrtoint ptr %arrayidx240.i to i32
  call void @__asan_loadN_noabort(i32 %163, i32 8)
  %164 = load i64, ptr %arrayidx240.i, align 4
  %165 = ptrtoint ptr %arrayidx236.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %164, ptr %arrayidx236.i, align 8
  %166 = load i8, ptr %idx.i, align 4
  %idxprom244.i = zext i8 %166 to i32
  %arrayidx245.i = getelementptr %struct.adapter, ptr %89, i32 0, i32 12, i32 10, i32 %idxprom244.i
  %arrayidx249.i = getelementptr %struct.ieee_param, ptr %call.i, i32 1, i32 1, i32 4
  %167 = ptrtoint ptr %arrayidx249.i to i32
  call void @__asan_loadN_noabort(i32 %167, i32 8)
  %168 = load i64, ptr %arrayidx249.i, align 4
  %169 = ptrtoint ptr %arrayidx245.i to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %168, ptr %arrayidx245.i, align 8
  br label %if.end250.i

if.end250.i:                                      ; preds = %if.then231.i, %if.then205.i.if.end250.i_crit_edge
  %binstallGrpkey.i = getelementptr inbounds %struct.adapter, ptr %89, i32 0, i32 12, i32 27
  %170 = ptrtoint ptr %binstallGrpkey.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 1, ptr %binstallGrpkey.i, align 4
  %171 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %idx.i, align 4
  %conv254.i = zext i8 %172 to i32
  %dot118021XGrpKeyid.i = getelementptr inbounds %struct.adapter, ptr %89, i32 0, i32 12, i32 7
  %173 = ptrtoint ptr %dot118021XGrpKeyid.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %conv254.i, ptr %dot118021XGrpKeyid.i, align 4
  %174 = load i8, ptr %idx.i, align 4
  %conv259.i = zext i8 %174 to i32
  %call260.i = tail call i32 @rtw_set_key(ptr noundef %89, ptr noundef %securitypriv.i, i32 noundef %conv259.i, i8 noundef zeroext 1, i1 noundef zeroext true) #8
  br label %if.end298.i

if.else261.i:                                     ; preds = %lor.lhs.false198.i
  %call265.i = tail call i32 @strcmp(ptr noundef %u.i55, ptr noundef nonnull dereferenceable(4) @.str.7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265.i)
  %cmp266.i = icmp eq i32 %call265.i, 0
  br i1 %cmp266.i, label %if.then268.i, label %if.else261.i.if.end298.i_crit_edge

if.else261.i.if.end298.i_crit_edge:               ; preds = %if.else261.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end298.i

if.then268.i:                                     ; preds = %if.else261.i
  call void @__sanitizer_cov_trace_pc() #10
  %175 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %idx.i, align 4
  %idxprom272.i = zext i8 %176 to i32
  %arrayidx273.i = getelementptr %struct.adapter, ptr %89, i32 0, i32 12, i32 14, i32 %idxprom272.i
  %177 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %key_len.i, align 2
  %179 = tail call i16 @llvm.umin.i16(i16 %178, i16 16) #8
  %spec.select451.i = zext i16 %179 to i32
  %180 = call ptr @memcpy(ptr %arrayidx273.i, ptr %key.i, i32 %spec.select451.i)
  %181 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %idx.i, align 4
  %conv292.i = zext i8 %182 to i32
  %dot11wBIPKeyid.i = getelementptr inbounds %struct.adapter, ptr %89, i32 0, i32 12, i32 13
  %183 = ptrtoint ptr %dot11wBIPKeyid.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %conv292.i, ptr %dot11wBIPKeyid.i, align 8
  %binstallBIPkey.i = getelementptr inbounds %struct.adapter, ptr %89, i32 0, i32 12, i32 28
  %184 = ptrtoint ptr %binstallBIPkey.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %binstallBIPkey.i, align 1
  br label %if.end298.i

if.end298.i:                                      ; preds = %if.then268.i, %if.else261.i.if.end298.i_crit_edge, %if.end250.i, %if.end189.i, %if.then127.i.if.end298.i_crit_edge
  %call299.i = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %89) #8
  %tobool300.not.i = icmp eq ptr %call299.i, null
  br i1 %tobool300.not.i, label %if.end298.i.exit.i_crit_edge, label %if.else302.i

if.end298.i.exit.i_crit_edge:                     ; preds = %if.end298.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.else302.i:                                     ; preds = %if.end298.i
  %call306.i = tail call i32 @strcmp(ptr noundef %u.i55, ptr noundef nonnull dereferenceable(5) @.str.4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call306.i)
  %cmp307.not.i = icmp eq i32 %call306.i, 0
  br i1 %cmp307.not.i, label %if.else302.i.if.end311.i_crit_edge, label %if.then309.i

if.else302.i.if.end311.i_crit_edge:               ; preds = %if.else302.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end311.i

if.then309.i:                                     ; preds = %if.else302.i
  call void @__sanitizer_cov_trace_pc() #10
  %ieee8021x_blocked310.i = getelementptr inbounds %struct.sta_info, ptr %call299.i, i32 0, i32 13
  %185 = ptrtoint ptr %ieee8021x_blocked310.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %ieee8021x_blocked310.i, align 8
  br label %if.end311.i

if.end311.i:                                      ; preds = %if.then309.i, %if.else302.i.if.end311.i_crit_edge
  %ndisencryptstatus313.i = getelementptr inbounds %struct.adapter, ptr %89, i32 0, i32 12, i32 36
  %186 = ptrtoint ptr %ndisencryptstatus313.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %ndisencryptstatus313.i, align 4
  %188 = zext i32 %187 to i64
  call void @__sanitizer_cov_trace_switch(i64 %188, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %187, label %if.end311.i.exit.i_crit_edge [
    i32 4, label %if.end311.i.if.then321.i_crit_edge
    i32 6, label %if.end311.i.if.then321.i_crit_edge386
  ]

if.end311.i.if.then321.i_crit_edge386:            ; preds = %if.end311.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then321.i

if.end311.i.if.then321.i_crit_edge:               ; preds = %if.end311.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then321.i

if.end311.i.exit.i_crit_edge:                     ; preds = %if.end311.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.then321.i:                                     ; preds = %if.end311.i.if.then321.i_crit_edge, %if.end311.i.if.then321.i_crit_edge386
  %dot11PrivacyAlgrthm323.i = getelementptr inbounds %struct.adapter, ptr %89, i32 0, i32 12, i32 1
  %189 = ptrtoint ptr %dot11PrivacyAlgrthm323.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %dot11PrivacyAlgrthm323.i, align 4
  %dot118021XPrivacy324.i = getelementptr inbounds %struct.sta_info, ptr %call299.i, i32 0, i32 14
  %191 = ptrtoint ptr %dot118021XPrivacy324.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %dot118021XPrivacy324.i, align 4
  br label %exit.i

exit.i:                                           ; preds = %if.then321.i, %if.end311.i.exit.i_crit_edge, %if.end298.i.exit.i_crit_edge, %if.then123.i.exit.i_crit_edge, %if.end119.i.exit.i_crit_edge, %if.end109.i, %if.else105.i.exit.i_crit_edge, %if.then98.i, %if.then73.i.exit.i_crit_edge, %if.end70.i.exit.i_crit_edge, %if.then38.i.exit.i_crit_edge, %land.lhs.true32.i.exit.i_crit_edge, %land.lhs.true26.i.exit.i_crit_edge, %land.lhs.true20.i.exit.i_crit_edge, %land.lhs.true14.i.exit.i_crit_edge, %land.lhs.true.i57.exit.i_crit_edge, %if.end.i56.exit.i_crit_edge, %sw.bb22.i.exit.i_crit_edge
  %ret.0.i61 = phi i32 [ 0, %if.end109.i ], [ 0, %if.end119.i.exit.i_crit_edge ], [ -22, %sw.bb22.i.exit.i_crit_edge ], [ -22, %if.then38.i.exit.i_crit_edge ], [ -22, %land.lhs.true32.i.exit.i_crit_edge ], [ -22, %land.lhs.true26.i.exit.i_crit_edge ], [ -22, %land.lhs.true20.i.exit.i_crit_edge ], [ -22, %land.lhs.true14.i.exit.i_crit_edge ], [ -22, %land.lhs.true.i57.exit.i_crit_edge ], [ -22, %if.end.i56.exit.i_crit_edge ], [ -12, %if.then73.i.exit.i_crit_edge ], [ -22, %if.end70.i.exit.i_crit_edge ], [ %spec.select.i60, %if.then98.i ], [ -95, %if.else105.i.exit.i_crit_edge ], [ 0, %if.end311.i.exit.i_crit_edge ], [ 0, %if.end298.i.exit.i_crit_edge ], [ 0, %if.then321.i ], [ 0, %if.then123.i.exit.i_crit_edge ]
  %pwep.0.i = phi ptr [ %call9.i.i.i, %if.end109.i ], [ null, %if.end119.i.exit.i_crit_edge ], [ null, %sw.bb22.i.exit.i_crit_edge ], [ null, %if.then38.i.exit.i_crit_edge ], [ null, %land.lhs.true32.i.exit.i_crit_edge ], [ null, %land.lhs.true26.i.exit.i_crit_edge ], [ null, %land.lhs.true20.i.exit.i_crit_edge ], [ null, %land.lhs.true14.i.exit.i_crit_edge ], [ null, %land.lhs.true.i57.exit.i_crit_edge ], [ null, %if.end.i56.exit.i_crit_edge ], [ null, %if.then73.i.exit.i_crit_edge ], [ null, %if.end70.i.exit.i_crit_edge ], [ %call9.i.i.i, %if.then98.i ], [ %call9.i.i.i, %if.else105.i.exit.i_crit_edge ], [ null, %if.end311.i.exit.i_crit_edge ], [ null, %if.end298.i.exit.i_crit_edge ], [ null, %if.then321.i ], [ null, %if.then123.i.exit.i_crit_edge ]
  tail call void @kfree(ptr noundef %pwep.0.i) #8
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %if.end13.i
  %u27.i = getelementptr inbounds %struct.ieee_param, ptr %call.i, i32 0, i32 2
  %192 = ptrtoint ptr %u27.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %u27.i, align 4
  %command.off.i.i = add i32 %193, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %command.off.i.i)
  %switch.i.i = icmp ult i32 %command.off.i.i, 2
  br i1 %switch.i.i, label %sw.epilog.sink.split.i.i, label %sw.bb26.i.sw.epilog.sink.split_crit_edge

sw.bb26.i.sw.epilog.sink.split_crit_edge:         ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %194 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %call3.i.i = tail call zeroext i8 @rtw_set_802_11_disassociate(ptr noundef %195) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call3.i.i)
  %tobool4.not.i.i = icmp eq i8 %call3.i.i, 0
  %spec.select1.i.i = sext i1 %tobool4.not.i.i to i32
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i.i, %exit.i, %rtw_set_wpa_ie.exit
  %ret.0.i = phi i32 [ %retval.0.i81, %rtw_set_wpa_ie.exit ], [ %spec.select1.i.i, %sw.epilog.sink.split.i.i ], [ %ret.0.i61, %exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp30.i = icmp eq i32 %ret.0.i, 0
  br i1 %cmp30.i, label %sw.epilog.i.land.lhs.true.i_crit_edge, label %sw.epilog.i.sw.epilog.sink.split_crit_edge

sw.epilog.i.sw.epilog.sink.split_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.i.land.lhs.true.i_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i.land.lhs.true.i_crit_edge, %if.then20.i.i, %if.then17.i.i.land.lhs.true.i_crit_edge, %if.then7.i.i, %if.then.i.i87, %sw.bb4.i, %sw.bb1.i, %sw.bb.i84.land.lhs.true.i_crit_edge, %sw.bb.i.land.lhs.true.i_crit_edge, %sw.bb.i.land.lhs.true.i_crit_edge381, %sw.bb.i.land.lhs.true.i_crit_edge382, %sw.bb.i.land.lhs.true.i_crit_edge383, %sw.bb.i.land.lhs.true.i_crit_edge384
  %196 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %u, align 4
  %198 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %length.i, align 4
  %conv34.i = zext i16 %199 to i32
  call void @__check_object_size(ptr noundef nonnull %call.i, i32 noundef %conv34.i, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #8
  %call.i.i71.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i71.i, label %land.lhs.true.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i75.i

land.lhs.true.i.copy_to_user.exit.i_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i

if.end.i.i75.i:                                   ; preds = %land.lhs.true.i
  %200 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %197, i32 %conv34.i, i32 -1226833920) #11, !srcloc !32
  %asmresult.i.i73.i = extractvalue { i32, i32 } %200, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i73.i)
  %cmp.i6.i74.i = icmp eq i32 %asmresult.i.i73.i, 0
  br i1 %cmp.i6.i74.i, label %if.then2.i.i.i, label %if.end.i.i75.i.copy_to_user.exit.i_crit_edge

if.end.i.i75.i.copy_to_user.exit.i_crit_edge:     ; preds = %if.end.i.i75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i75.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i76.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call.i, i32 noundef %conv34.i) #8
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %197, ptr noundef nonnull %call.i, i32 noundef %conv34.i) #8
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i75.i.copy_to_user.exit.i_crit_edge, %land.lhs.true.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i77.i = phi i32 [ %conv34.i, %land.lhs.true.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %conv34.i, %if.end.i.i75.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i77.i)
  %tobool36.not.i = icmp eq i32 %n.addr.0.i77.i, 0
  %spec.select.i = select i1 %tobool36.not.i, i32 0, i32 -14
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  %u2 = getelementptr inbounds %struct.iwreq, ptr %rq, i32 0, i32 1
  %add.ptr.i.i139.i = getelementptr i8, ptr %dev, i32 2304
  %201 = ptrtoint ptr %add.ptr.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %add.ptr.i.i139.i, align 4
  %hw_init_completed.i = getelementptr inbounds %struct.adapter, ptr %202, i32 0, i32 27
  %203 = ptrtoint ptr %hw_init_completed.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %hw_init_completed.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool.not.i6 = icmp eq i8 %204, 0
  br i1 %tobool.not.i6, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i7

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i7:                                        ; preds = %sw.bb1
  %205 = ptrtoint ptr %u2 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %u2, align 4
  %tobool1.not.i = icmp eq ptr %206, null
  br i1 %tobool1.not.i, label %if.end.i7.sw.epilog_crit_edge, label %lor.lhs.false.i10

if.end.i7.sw.epilog_crit_edge:                    ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false.i10:                                ; preds = %if.end.i7
  %length.i8 = getelementptr inbounds %struct.iwreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %207 = ptrtoint ptr %length.i8 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %length.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %208)
  %cmp.not.i9 = icmp eq i16 %208, 64
  br i1 %cmp.not.i9, label %if.end4.i, label %lor.lhs.false.i10.sw.epilog_crit_edge

lor.lhs.false.i10.sw.epilog_crit_edge:            ; preds = %lor.lhs.false.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end4.i:                                        ; preds = %lor.lhs.false.i10
  %call7.i = tail call ptr @_rtw_malloc(i32 noundef 64) #8
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end4.i.sw.epilog_crit_edge, label %if.end10.i

if.end4.i.sw.epilog_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end10.i:                                       ; preds = %if.end4.i
  %209 = ptrtoint ptr %u2 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %u2, align 4
  %211 = ptrtoint ptr %length.i8 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %length.i8, align 4
  %conv13.i = zext i16 %212 to i32
  tail call void @__check_object_size(ptr noundef nonnull %call7.i, i32 noundef %conv13.i, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #8
  %call.i.i.i19 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i19, label %if.end10.i.if.end.i.i.i33_crit_edge, label %land.lhs.true.i.i.i23

if.end10.i.if.end.i.i.i33_crit_edge:              ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i33

land.lhs.true.i.i.i23:                            ; preds = %if.end10.i
  %213 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %210, i32 %conv13.i, i32 -1226833920) #11, !srcloc !27
  %asmresult.i.i.i21 = extractvalue { i32, i32 } %213, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i21)
  %cmp.i6.i.i22 = icmp eq i32 %asmresult.i.i.i21, 0
  br i1 %cmp.i6.i.i22, label %if.then.i7.i.i30, label %land.lhs.true.i.i.i23.if.end.i.i.i33_crit_edge, !prof !28

land.lhs.true.i.i.i23.if.end.i.i.i33_crit_edge:   ; preds = %land.lhs.true.i.i.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i33

if.then.i7.i.i30:                                 ; preds = %land.lhs.true.i.i.i23
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef %conv13.i) #8
  %214 = tail call i32 @llvm.read_register.i32(metadata !17) #8
  %and.i.i.i.i.i.i.i25 = and i32 %214, -16384
  %215 = inttoptr i32 %and.i.i.i.i.i.i.i25 to ptr
  %cpu_domain.i.i.i.i.i.i26 = getelementptr inbounds %struct.thread_info, ptr %215, i32 0, i32 4
  %216 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i26) #3, !srcloc !29
  %and.i.i.i.i.i27 = and i32 %216, -13
  %or.i.i.i.i.i28 = or i32 %and.i.i.i.i.i27, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i28) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  %call1.i.i.i.i29 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call7.i, ptr noundef %210, i32 noundef %conv13.i) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %216) #8, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  br label %if.end.i.i.i33

if.end.i.i.i33:                                   ; preds = %if.then.i7.i.i30, %land.lhs.true.i.i.i23.if.end.i.i.i33_crit_edge, %if.end10.i.if.end.i.i.i33_crit_edge
  %res.0.i.i.i31 = phi i32 [ %conv13.i, %if.end10.i.if.end.i.i.i33_crit_edge ], [ %call1.i.i.i.i29, %if.then.i7.i.i30 ], [ %conv13.i, %land.lhs.true.i.i.i23.if.end.i.i.i33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i31)
  %tobool4.not.i.i.i32 = icmp eq i32 %res.0.i.i.i31, 0
  br i1 %tobool4.not.i.i.i32, label %if.end17.i, label %if.then11.i.i.i36, !prof !28

if.then11.i.i.i36:                                ; preds = %if.end.i.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i34 = sub i32 %conv13.i, %res.0.i.i.i31
  %add.ptr.i.i.i35 = getelementptr i8, ptr %call7.i, i32 %sub.i.i.i34
  %217 = call ptr @memset(ptr %add.ptr.i.i.i35, i32 0, i32 %res.0.i.i.i31)
  br label %sw.epilog.sink.split

if.end17.i:                                       ; preds = %if.end.i.i.i33
  %218 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %call7.i, align 4
  %220 = zext i32 %219 to i64
  call void @__sanitizer_cov_trace_switch(i64 %220, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %219, label %if.end17.i.sw.epilog.sink.split_crit_edge [
    i32 1, label %sw.bb.i37
    i32 2, label %sw.bb18.i
    i32 3, label %sw.bb20.i
    i32 16, label %sw.bb22.i41
    i32 6, label %sw.bb26.i42
    i32 5, label %sw.bb30.i
    i32 17, label %sw.bb32.i
    i32 18, label %sw.bb36.i
    i32 19, label %sw.bb40.i
    i32 20, label %sw.bb44.i
    i32 4, label %sw.bb48.i
    i32 21, label %sw.bb52.i
    i32 22, label %sw.bb56.i
    i32 23, label %sw.bb60.i
  ]

if.end17.i.sw.epilog.sink.split_crit_edge:        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb.i37:                                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %221 = ptrtoint ptr %add.ptr.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %add.ptr.i.i139.i, align 4
  tail call void @flush_all_cam_entry(ptr noundef %222) #8
  tail call void @rtw_sta_flush(ptr noundef %222) #8
  br label %land.lhs.true.i46

sw.bb18.i:                                        ; preds = %if.end17.i
  %223 = ptrtoint ptr %add.ptr.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %add.ptr.i.i139.i, align 4
  %stapriv.i324 = getelementptr inbounds %struct.adapter, ptr %224, i32 0, i32 11
  %fw_state.i.i325 = getelementptr inbounds %struct.adapter, ptr %224, i32 0, i32 4, i32 1
  %225 = ptrtoint ptr %fw_state.i.i325 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %fw_state.i.i325, align 4
  %and.i.i326 = and i32 %226, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i326)
  %tobool.not.i.not.i327 = icmp eq i32 %and.i.i326, 0
  br i1 %tobool.not.i.not.i327, label %sw.bb18.i.sw.epilog.sink.split_crit_edge, label %if.end.i330

sw.bb18.i.sw.epilog.sink.split_crit_edge:         ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end.i330:                                      ; preds = %sw.bb18.i
  %sta_addr.i328 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 1
  %227 = ptrtoint ptr %sta_addr.i328 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %sta_addr.i328, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %228)
  %cmp2.i329 = icmp eq i8 %228, -1
  br i1 %cmp2.i329, label %land.lhs.true.i333, label %if.end.i330.if.end34.i348_crit_edge

if.end.i330.if.end34.i348_crit_edge:              ; preds = %if.end.i330
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i348

land.lhs.true.i333:                               ; preds = %if.end.i330
  %arrayidx5.i331 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 1
  %229 = ptrtoint ptr %arrayidx5.i331 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx5.i331, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %230)
  %cmp7.i332 = icmp eq i8 %230, -1
  br i1 %cmp7.i332, label %land.lhs.true9.i336, label %land.lhs.true.i333.if.end34.i348_crit_edge

land.lhs.true.i333.if.end34.i348_crit_edge:       ; preds = %land.lhs.true.i333
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i348

land.lhs.true9.i336:                              ; preds = %land.lhs.true.i333
  %arrayidx11.i334 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 2
  %231 = ptrtoint ptr %arrayidx11.i334 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx11.i334, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %232)
  %cmp13.i335 = icmp eq i8 %232, -1
  br i1 %cmp13.i335, label %land.lhs.true15.i339, label %land.lhs.true9.i336.if.end34.i348_crit_edge

land.lhs.true9.i336.if.end34.i348_crit_edge:      ; preds = %land.lhs.true9.i336
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i348

land.lhs.true15.i339:                             ; preds = %land.lhs.true9.i336
  %arrayidx17.i337 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 3
  %233 = ptrtoint ptr %arrayidx17.i337 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx17.i337, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %234)
  %cmp19.i338 = icmp eq i8 %234, -1
  br i1 %cmp19.i338, label %land.lhs.true21.i342, label %land.lhs.true15.i339.if.end34.i348_crit_edge

land.lhs.true15.i339.if.end34.i348_crit_edge:     ; preds = %land.lhs.true15.i339
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i348

land.lhs.true21.i342:                             ; preds = %land.lhs.true15.i339
  %arrayidx23.i340 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 4
  %235 = ptrtoint ptr %arrayidx23.i340 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx23.i340, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %236)
  %cmp25.i341 = icmp eq i8 %236, -1
  br i1 %cmp25.i341, label %land.lhs.true27.i345, label %land.lhs.true21.i342.if.end34.i348_crit_edge

land.lhs.true21.i342.if.end34.i348_crit_edge:     ; preds = %land.lhs.true21.i342
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i348

land.lhs.true27.i345:                             ; preds = %land.lhs.true21.i342
  %arrayidx29.i343 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 5
  %237 = ptrtoint ptr %arrayidx29.i343 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx29.i343, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %238)
  %cmp31.i344 = icmp eq i8 %238, -1
  br i1 %cmp31.i344, label %land.lhs.true27.i345.sw.epilog.sink.split_crit_edge, label %land.lhs.true27.i345.if.end34.i348_crit_edge

land.lhs.true27.i345.if.end34.i348_crit_edge:     ; preds = %land.lhs.true27.i345
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i348

land.lhs.true27.i345.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true27.i345
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end34.i348:                                    ; preds = %land.lhs.true27.i345.if.end34.i348_crit_edge, %land.lhs.true21.i342.if.end34.i348_crit_edge, %land.lhs.true15.i339.if.end34.i348_crit_edge, %land.lhs.true9.i336.if.end34.i348_crit_edge, %land.lhs.true.i333.if.end34.i348_crit_edge, %if.end.i330.if.end34.i348_crit_edge
  %call36.i346 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv.i324, ptr noundef %sta_addr.i328) #8
  %tobool.not.i347 = icmp eq ptr %call36.i346, null
  br i1 %tobool.not.i347, label %if.end34.i348.sw.epilog.sink.split_crit_edge, label %if.then37.i353

if.end34.i348.sw.epilog.sink.split_crit_edge:     ; preds = %if.end34.i348
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.then37.i353:                                   ; preds = %if.end34.i348
  %u.i349 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2
  %flags38.i = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 2
  %239 = ptrtoint ptr %flags38.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %flags38.i, align 4
  %241 = ptrtoint ptr %u.i349 to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %u.i349, align 4
  %conv40.i = zext i16 %242 to i32
  %aid41.i = getelementptr inbounds %struct.sta_info, ptr %call36.i346, i32 0, i32 9
  %243 = ptrtoint ptr %aid41.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %conv40.i, ptr %aid41.i, align 4
  %bssrateset.i350 = getelementptr inbounds %struct.sta_info, ptr %call36.i346, i32 0, i32 21
  %tx_supp_rates.i351 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 3
  %244 = call ptr @memcpy(ptr %bssrateset.i350, ptr %tx_supp_rates.i351, i32 16)
  %and.i = lshr i32 %240, 9
  %and.lobit.i = and i32 %and.i, 1
  %245 = getelementptr inbounds %struct.sta_info, ptr %call36.i346, i32 0, i32 11
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %and.lobit.i, ptr %245, align 4
  %qospriv.i = getelementptr inbounds %struct.adapter, ptr %224, i32 0, i32 4, i32 30
  %247 = ptrtoint ptr %qospriv.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %qospriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %cmp50.i = icmp eq i32 %248, 0
  %spec.store.select.i352 = select i1 %cmp50.i, i32 0, i32 %and.lobit.i
  %249 = ptrtoint ptr %245 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %spec.store.select.i352, ptr %245, align 4
  %and55.i = and i32 %240, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  %htpriv63.i = getelementptr inbounds %struct.sta_info, ptr %call36.i346, i32 0, i32 38
  br i1 %tobool56.not.i, label %if.else62.i, label %if.then57.i355

if.then57.i355:                                   ; preds = %if.then37.i353
  call void @__sanitizer_cov_trace_pc() #10
  %250 = ptrtoint ptr %htpriv63.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 1, ptr %htpriv63.i, align 8
  %251 = ptrtoint ptr %245 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 1, ptr %245, align 4
  %ht_cap.i354 = getelementptr inbounds %struct.sta_info, ptr %call36.i346, i32 0, i32 38, i32 15
  %ht_cap61.i = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 4
  %252 = call ptr @memcpy(ptr %ht_cap.i354, ptr %ht_cap61.i, i32 26)
  br label %if.end65.i

if.else62.i:                                      ; preds = %if.then37.i353
  call void @__sanitizer_cov_trace_pc() #10
  %253 = ptrtoint ptr %htpriv63.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 0, ptr %htpriv63.i, align 8
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.else62.i, %if.then57.i355
  %htpriv66.i = getelementptr inbounds %struct.adapter, ptr %224, i32 0, i32 4, i32 33
  %254 = ptrtoint ptr %htpriv66.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %htpriv66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %cmp69.i356 = icmp eq i8 %255, 0
  br i1 %cmp69.i356, label %if.then71.i, label %if.end65.i.if.end74.i357_crit_edge

if.end65.i.if.end74.i357_crit_edge:               ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i357

if.then71.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  %256 = ptrtoint ptr %htpriv63.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 0, ptr %htpriv63.i, align 8
  br label %if.end74.i357

if.end74.i357:                                    ; preds = %if.then71.i, %if.end65.i.if.end74.i357_crit_edge
  tail call void @update_sta_info_apmode(ptr noundef %224, ptr noundef nonnull %call36.i346) #8
  br label %land.lhs.true.i46

sw.bb20.i:                                        ; preds = %if.end17.i
  %257 = ptrtoint ptr %add.ptr.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %add.ptr.i.i139.i, align 4
  %stapriv.i294 = getelementptr inbounds %struct.adapter, ptr %258, i32 0, i32 11
  %fw_state.i.i295 = getelementptr inbounds %struct.adapter, ptr %258, i32 0, i32 4, i32 1
  %259 = ptrtoint ptr %fw_state.i.i295 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %fw_state.i.i295, align 4
  %and.i.i296 = and i32 %260, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i296)
  %tobool.not.i.not.i297 = icmp eq i32 %and.i.i296, 0
  br i1 %tobool.not.i.not.i297, label %sw.bb20.i.sw.epilog.sink.split_crit_edge, label %if.end.i300

sw.bb20.i.sw.epilog.sink.split_crit_edge:         ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end.i300:                                      ; preds = %sw.bb20.i
  %sta_addr.i298 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 1
  %261 = ptrtoint ptr %sta_addr.i298 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %sta_addr.i298, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %262)
  %cmp2.i299 = icmp eq i8 %262, -1
  br i1 %cmp2.i299, label %land.lhs.true.i303, label %if.end.i300.if.end34.i318_crit_edge

if.end.i300.if.end34.i318_crit_edge:              ; preds = %if.end.i300
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i318

land.lhs.true.i303:                               ; preds = %if.end.i300
  %arrayidx5.i301 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 1
  %263 = ptrtoint ptr %arrayidx5.i301 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %arrayidx5.i301, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %264)
  %cmp7.i302 = icmp eq i8 %264, -1
  br i1 %cmp7.i302, label %land.lhs.true9.i306, label %land.lhs.true.i303.if.end34.i318_crit_edge

land.lhs.true.i303.if.end34.i318_crit_edge:       ; preds = %land.lhs.true.i303
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i318

land.lhs.true9.i306:                              ; preds = %land.lhs.true.i303
  %arrayidx11.i304 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 2
  %265 = ptrtoint ptr %arrayidx11.i304 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx11.i304, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %266)
  %cmp13.i305 = icmp eq i8 %266, -1
  br i1 %cmp13.i305, label %land.lhs.true15.i309, label %land.lhs.true9.i306.if.end34.i318_crit_edge

land.lhs.true9.i306.if.end34.i318_crit_edge:      ; preds = %land.lhs.true9.i306
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i318

land.lhs.true15.i309:                             ; preds = %land.lhs.true9.i306
  %arrayidx17.i307 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 3
  %267 = ptrtoint ptr %arrayidx17.i307 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %arrayidx17.i307, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %268)
  %cmp19.i308 = icmp eq i8 %268, -1
  br i1 %cmp19.i308, label %land.lhs.true21.i312, label %land.lhs.true15.i309.if.end34.i318_crit_edge

land.lhs.true15.i309.if.end34.i318_crit_edge:     ; preds = %land.lhs.true15.i309
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i318

land.lhs.true21.i312:                             ; preds = %land.lhs.true15.i309
  %arrayidx23.i310 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 4
  %269 = ptrtoint ptr %arrayidx23.i310 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx23.i310, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %270)
  %cmp25.i311 = icmp eq i8 %270, -1
  br i1 %cmp25.i311, label %land.lhs.true27.i315, label %land.lhs.true21.i312.if.end34.i318_crit_edge

land.lhs.true21.i312.if.end34.i318_crit_edge:     ; preds = %land.lhs.true21.i312
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i318

land.lhs.true27.i315:                             ; preds = %land.lhs.true21.i312
  %arrayidx29.i313 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 5
  %271 = ptrtoint ptr %arrayidx29.i313 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx29.i313, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %272)
  %cmp31.i314 = icmp eq i8 %272, -1
  br i1 %cmp31.i314, label %land.lhs.true27.i315.sw.epilog.sink.split_crit_edge, label %land.lhs.true27.i315.if.end34.i318_crit_edge

land.lhs.true27.i315.if.end34.i318_crit_edge:     ; preds = %land.lhs.true27.i315
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i318

land.lhs.true27.i315.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true27.i315
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end34.i318:                                    ; preds = %land.lhs.true27.i315.if.end34.i318_crit_edge, %land.lhs.true21.i312.if.end34.i318_crit_edge, %land.lhs.true15.i309.if.end34.i318_crit_edge, %land.lhs.true9.i306.if.end34.i318_crit_edge, %land.lhs.true.i303.if.end34.i318_crit_edge, %if.end.i300.if.end34.i318_crit_edge
  %call36.i316 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv.i294, ptr noundef %sta_addr.i298) #8
  %tobool.not.i317 = icmp eq ptr %call36.i316, null
  br i1 %tobool.not.i317, label %if.end34.i318.land.lhs.true.i46_crit_edge, label %if.then37.i319

if.end34.i318.land.lhs.true.i46_crit_edge:        ; preds = %if.end34.i318
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i46

if.then37.i319:                                   ; preds = %if.end34.i318
  %asoc_list_lock.i = getelementptr inbounds %struct.adapter, ptr %258, i32 0, i32 11, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock.i) #8
  %asoc_list.i = getelementptr inbounds %struct.sta_info, ptr %call36.i316, i32 0, i32 39
  %273 = ptrtoint ptr %asoc_list.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load volatile ptr, ptr %asoc_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %274, %asoc_list.i
  br i1 %cmp.i.not.i, label %if.then37.i319.if.end44.i_crit_edge, label %if.then41.i

if.then37.i319.if.end44.i_crit_edge:              ; preds = %if.then37.i319
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.then41.i:                                      ; preds = %if.then37.i319
  %call.i.i.i320 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %asoc_list.i) #8
  br i1 %call.i.i.i320, label %if.end.i.i.i321, label %if.then41.i.list_del_init.exit.i_crit_edge

if.then41.i.list_del_init.exit.i_crit_edge:       ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i

if.end.i.i.i321:                                  ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call36.i316, i32 0, i32 39, i32 1
  %275 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %prev.i.i.i, align 4
  %277 = ptrtoint ptr %asoc_list.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %asoc_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %278, i32 0, i32 1
  %279 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %276, ptr %prev1.i.i.i.i, align 4
  %280 = ptrtoint ptr %276 to i32
  call void @__asan_store4_noabort(i32 %280)
  store volatile ptr %278, ptr %276, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i321, %if.then41.i.list_del_init.exit.i_crit_edge
  %281 = ptrtoint ptr %asoc_list.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store volatile ptr %asoc_list.i, ptr %asoc_list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.sta_info, ptr %call36.i316, i32 0, i32 39, i32 1
  %282 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %asoc_list.i, ptr %prev.i3.i.i, align 4
  %asoc_list_cnt.i = getelementptr inbounds %struct.adapter, ptr %258, i32 0, i32 11, i32 13
  %283 = ptrtoint ptr %asoc_list_cnt.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %asoc_list_cnt.i, align 4
  %dec.i = add i8 %284, -1
  store i8 %dec.i, ptr %asoc_list_cnt.i, align 4
  %call43.i = tail call zeroext i8 @ap_free_sta(ptr noundef %258, ptr noundef nonnull %call36.i316, i1 noundef zeroext true, i16 noundef zeroext 3) #8
  br label %if.end44.i

if.end44.i:                                       ; preds = %list_del_init.exit.i, %if.then37.i319.if.end44.i_crit_edge
  %updated.0.i = phi i8 [ %call43.i, %list_del_init.exit.i ], [ 0, %if.then37.i319.if.end44.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock.i) #8
  tail call void @associated_clients_update(ptr noundef %258, i8 noundef zeroext %updated.0.i) #8
  br label %land.lhs.true.i46

sw.bb22.i41:                                      ; preds = %if.end17.i
  %285 = ptrtoint ptr %add.ptr.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %add.ptr.i.i139.i, align 4
  %fw_state.i.i284 = getelementptr inbounds %struct.adapter, ptr %286, i32 0, i32 4, i32 1
  %287 = ptrtoint ptr %fw_state.i.i284 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %fw_state.i.i284, align 4
  %and.i.i285 = and i32 %288, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i285)
  %tobool.not.i.not.i286 = icmp eq i32 %and.i.i285, 0
  br i1 %tobool.not.i.not.i286, label %sw.bb22.i41.sw.epilog.sink.split_crit_edge, label %if.end.i291

sw.bb22.i41.sw.epilog.sink.split_crit_edge:       ; preds = %sw.bb22.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end.i291:                                      ; preds = %sw.bb22.i41
  %289 = ptrtoint ptr %length.i8 to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %length.i8, align 4
  %conv24.i39 = zext i16 %290 to i32
  %buf.i287 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 1
  %u.i288 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2
  %max_num_sta.i = getelementptr inbounds %struct.adapter, ptr %286, i32 0, i32 11, i32 21
  %291 = ptrtoint ptr %u.i288 to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %u.i288, align 4
  %293 = add i16 %292, -33
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32, i16 %293)
  %294 = icmp ult i16 %293, -32
  %spec.store.select.i289 = select i1 %294, i16 32, i16 %292
  %295 = ptrtoint ptr %max_num_sta.i to i32
  call void @__asan_store2_noabort(i32 %295)
  store i16 %spec.store.select.i289, ptr %max_num_sta.i, align 4
  %sub14.i = add nsw i32 %conv24.i39, -14
  %call15.i = tail call i32 @rtw_check_beacon_data(ptr noundef %286, ptr noundef %buf.i287, i32 noundef %sub14.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15.i)
  %cmp16.i = icmp eq i32 %call15.i, 1
  br i1 %cmp16.i, label %if.end.i291.land.lhs.true.i46_crit_edge, label %if.end.i291.sw.epilog.sink.split_crit_edge

if.end.i291.sw.epilog.sink.split_crit_edge:       ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end.i291.land.lhs.true.i46_crit_edge:          ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i46

sw.bb26.i42:                                      ; preds = %if.end17.i
  %296 = ptrtoint ptr %length.i8 to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %length.i8, align 4
  %conv28.i = zext i16 %297 to i32
  %298 = ptrtoint ptr %add.ptr.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %add.ptr.i.i139.i, align 4
  %securitypriv.i229 = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12
  %stapriv.i230 = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 11
  %u.i231 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2
  %idx.i232 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 4
  %300 = ptrtoint ptr %idx.i232 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %idx.i232, align 4
  %idxprom.i233 = zext i8 %301 to i32
  %arrayidx.i234 = getelementptr %struct.adapter, ptr %299, i32 0, i32 12, i32 9, i32 %idxprom.i233
  %arrayidx6.i = getelementptr %struct.adapter, ptr %299, i32 0, i32 12, i32 10, i32 %idxprom.i233
  %arrayidx11.i235 = getelementptr %struct.adapter, ptr %299, i32 0, i32 12, i32 8, i32 %idxprom.i233
  %err.i236 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 3, i32 12
  %302 = ptrtoint ptr %err.i236 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 0, ptr %err.i236, align 4
  %arrayidx15.i = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 3, i32 7
  %303 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 0, ptr %arrayidx15.i, align 1
  %key_len.i237 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 7
  %304 = ptrtoint ptr %key_len.i237 to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %key_len.i237, align 2
  %conv.i238 = zext i16 %305 to i32
  %add.i239 = add nuw nsw i32 %conv.i238, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i239, i32 %conv28.i)
  %cmp.not.i240 = icmp eq i32 %add.i239, %conv28.i
  br i1 %cmp.not.i240, label %if.end.i242, label %sw.bb26.i42.rtw_set_encryption.exit_crit_edge

sw.bb26.i42.rtw_set_encryption.exit_crit_edge:    ; preds = %sw.bb26.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_set_encryption.exit

if.end.i242:                                      ; preds = %sw.bb26.i42
  %sta_addr.i241 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 1
  %306 = ptrtoint ptr %sta_addr.i241 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %sta_addr.i241, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %307)
  %cmp20.i = icmp eq i8 %307, -1
  br i1 %cmp20.i, label %land.lhs.true.i245, label %if.end.i242.if.else.i_crit_edge

if.end.i242.if.else.i_crit_edge:                  ; preds = %if.end.i242
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i245:                               ; preds = %if.end.i242
  %arrayidx23.i243 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 1
  %308 = ptrtoint ptr %arrayidx23.i243 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %arrayidx23.i243, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %309)
  %cmp25.i244 = icmp eq i8 %309, -1
  br i1 %cmp25.i244, label %land.lhs.true27.i248, label %land.lhs.true.i245.if.else.i_crit_edge

land.lhs.true.i245.if.else.i_crit_edge:           ; preds = %land.lhs.true.i245
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true27.i248:                             ; preds = %land.lhs.true.i245
  %arrayidx29.i246 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 2
  %310 = ptrtoint ptr %arrayidx29.i246 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx29.i246, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %311)
  %cmp31.i247 = icmp eq i8 %311, -1
  br i1 %cmp31.i247, label %land.lhs.true33.i, label %land.lhs.true27.i248.if.else.i_crit_edge

land.lhs.true27.i248.if.else.i_crit_edge:         ; preds = %land.lhs.true27.i248
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true33.i:                                ; preds = %land.lhs.true27.i248
  %arrayidx35.i = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 3
  %312 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx35.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %313)
  %cmp37.i = icmp eq i8 %313, -1
  br i1 %cmp37.i, label %land.lhs.true39.i, label %land.lhs.true33.i.if.else.i_crit_edge

land.lhs.true33.i.if.else.i_crit_edge:            ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true39.i:                                ; preds = %land.lhs.true33.i
  %arrayidx41.i = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 4
  %314 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %315)
  %cmp43.i = icmp eq i8 %315, -1
  br i1 %cmp43.i, label %land.lhs.true45.i, label %land.lhs.true39.i.if.else.i_crit_edge

land.lhs.true39.i.if.else.i_crit_edge:            ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true45.i:                                ; preds = %land.lhs.true39.i
  %arrayidx47.i = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 5
  %316 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx47.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %317)
  %cmp49.i = icmp eq i8 %317, -1
  br i1 %cmp49.i, label %if.then51.i, label %land.lhs.true45.i.if.else.i_crit_edge

land.lhs.true45.i.if.else.i_crit_edge:            ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then51.i:                                      ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %301)
  %cmp55.i249 = icmp ugt i8 %301, 3
  br i1 %cmp55.i249, label %if.then51.i.rtw_set_encryption.exit_crit_edge, label %if.then51.i.if.end64.i_crit_edge

if.then51.i.if.end64.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

if.then51.i.rtw_set_encryption.exit_crit_edge:    ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_set_encryption.exit

if.else.i:                                        ; preds = %land.lhs.true45.i.if.else.i_crit_edge, %land.lhs.true39.i.if.else.i_crit_edge, %land.lhs.true33.i.if.else.i_crit_edge, %land.lhs.true27.i248.if.else.i_crit_edge, %land.lhs.true.i245.if.else.i_crit_edge, %if.end.i242.if.else.i_crit_edge
  %call61.i = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv.i230, ptr noundef %sta_addr.i241) #8
  %tobool.not.i250 = icmp eq ptr %call61.i, null
  br i1 %tobool.not.i250, label %if.else.i.rtw_set_encryption.exit_crit_edge, label %if.else.i.if.end64.i_crit_edge

if.else.i.if.end64.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

if.else.i.rtw_set_encryption.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_set_encryption.exit

if.end64.i:                                       ; preds = %if.else.i.if.end64.i_crit_edge, %if.then51.i.if.end64.i_crit_edge
  %psta.0.i = phi ptr [ null, %if.then51.i.if.end64.i_crit_edge ], [ %call61.i, %if.else.i.if.end64.i_crit_edge ]
  %call68.i = tail call i32 @strcmp(ptr noundef %u.i231, ptr noundef nonnull dereferenceable(5) @.str.4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %cmp69.i = icmp eq i32 %call68.i, 0
  %tobool72.not.i = icmp eq ptr %psta.0.i, null
  %or.cond.i251 = select i1 %cmp69.i, i1 %tobool72.not.i, i1 false
  br i1 %or.cond.i251, label %if.then73.i255, label %if.end74.i

if.then73.i255:                                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  %318 = ptrtoint ptr %securitypriv.i229 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 0, ptr %securitypriv.i229, align 8
  %ndisencryptstatus.i252 = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 36
  %319 = ptrtoint ptr %ndisencryptstatus.i252 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 1, ptr %ndisencryptstatus.i252, align 4
  %dot11PrivacyAlgrthm.i253 = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 1
  %320 = ptrtoint ptr %dot11PrivacyAlgrthm.i253 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 0, ptr %dot11PrivacyAlgrthm.i253, align 4
  %dot118021XGrpPrivacy.i254 = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 6
  %321 = ptrtoint ptr %dot118021XGrpPrivacy.i254 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 0, ptr %dot118021XGrpPrivacy.i254, align 8
  br label %rtw_set_encryption.exit

if.end74.i:                                       ; preds = %if.end64.i
  %call78.i = tail call i32 @strcmp(ptr noundef %u.i231, ptr noundef nonnull dereferenceable(4) @.str.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %cmp79.i = icmp eq i32 %call78.i, 0
  %or.cond654.i = select i1 %cmp79.i, i1 %tobool72.not.i, i1 false
  br i1 %or.cond654.i, label %if.then83.i, label %if.end153.i270

if.then83.i:                                      ; preds = %if.end74.i
  %322 = ptrtoint ptr %idx.i232 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %idx.i232, align 4
  %conv86.i = zext i8 %323 to i32
  %324 = ptrtoint ptr %key_len.i237 to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %key_len.i237, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %323)
  %cmp90.i = icmp ugt i8 %323, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %325)
  %cmp92.i = icmp eq i16 %325, 0
  %or.cond655.i = select i1 %cmp90.i, i1 true, i1 %cmp92.i
  br i1 %or.cond655.i, label %if.then83.i.rtw_set_encryption.exit_crit_edge, label %if.then98.i257

if.then83.i.rtw_set_encryption.exit_crit_edge:    ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_set_encryption.exit

if.then98.i257:                                   ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %325)
  %cmp99.i = icmp ult i16 %325, 6
  %cond.i256 = select i1 %cmp99.i, i32 5, i32 13
  %add101.i = add nuw nsw i32 %cond.i256, 12
  %call9.i.i.i260 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add101.i, i32 noundef 3520) #13
  %tobool103.not.i = icmp eq ptr %call9.i.i.i260, null
  br i1 %tobool103.not.i, label %if.then98.i257.rtw_set_encryption.exit_crit_edge, label %if.end105.i

if.then98.i257.rtw_set_encryption.exit_crit_edge: ; preds = %if.then98.i257
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_set_encryption.exit

if.end105.i:                                      ; preds = %if.then98.i257
  %key_length.i264 = getelementptr inbounds %struct.ndis_802_11_wep, ptr %call9.i.i.i260, i32 0, i32 2
  %326 = ptrtoint ptr %key_length.i264 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %cond.i256, ptr %key_length.i264, align 8
  %327 = ptrtoint ptr %call9.i.i.i260 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %add101.i, ptr %call9.i.i.i260, align 128
  %key_index.i265 = getelementptr inbounds %struct.ndis_802_11_wep, ptr %call9.i.i.i260, i32 0, i32 1
  %328 = ptrtoint ptr %key_index.i265 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %conv86.i, ptr %key_index.i265, align 4
  %key_material.i266 = getelementptr inbounds %struct.ndis_802_11_wep, ptr %call9.i.i.i260, i32 0, i32 3
  %key.i267 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %329 = call ptr @memcpy(ptr %key_material.i266, ptr %key.i267, i32 %cond.i256)
  %set_tx.i268 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 3, i32 8
  %330 = ptrtoint ptr %set_tx.i268 to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %set_tx.i268, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %331)
  %tobool112.not.i = icmp eq i8 %331, 0
  br i1 %tobool112.not.i, label %if.else137.i, label %if.then113.i

if.then113.i:                                     ; preds = %if.end105.i
  %332 = ptrtoint ptr %securitypriv.i229 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 3, ptr %securitypriv.i229, align 8
  %ndisencryptstatus115.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 36
  %333 = ptrtoint ptr %ndisencryptstatus115.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 0, ptr %ndisencryptstatus115.i, align 4
  %dot11PrivacyAlgrthm116.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 1
  %334 = ptrtoint ptr %dot11PrivacyAlgrthm116.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 1, ptr %dot11PrivacyAlgrthm116.i, align 4
  %dot118021XGrpPrivacy117.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 6
  %335 = ptrtoint ptr %dot118021XGrpPrivacy117.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 1, ptr %dot118021XGrpPrivacy117.i, align 8
  %336 = ptrtoint ptr %key_length.i264 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %key_length.i264, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %337)
  %cmp119.i = icmp eq i32 %337, 13
  br i1 %cmp119.i, label %if.then121.i, label %if.then113.i.if.end124.i_crit_edge

if.then113.i.if.end124.i_crit_edge:               ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124.i

if.then121.i:                                     ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #10
  %338 = ptrtoint ptr %dot11PrivacyAlgrthm116.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 5, ptr %dot11PrivacyAlgrthm116.i, align 4
  %339 = ptrtoint ptr %dot118021XGrpPrivacy117.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 5, ptr %dot118021XGrpPrivacy117.i, align 8
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.then121.i, %if.then113.i.if.end124.i_crit_edge
  %dot11PrivacyKeyIndex.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 2
  %340 = ptrtoint ptr %dot11PrivacyKeyIndex.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %conv86.i, ptr %dot11PrivacyKeyIndex.i, align 8
  %arrayidx125.i = getelementptr %struct.adapter, ptr %299, i32 0, i32 12, i32 3, i32 %conv86.i
  %341 = ptrtoint ptr %key_length.i264 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %key_length.i264, align 8
  %343 = call ptr @memcpy(ptr %arrayidx125.i, ptr %key_material.i266, i32 %342)
  %344 = load i32, ptr %key_length.i264, align 8
  %arrayidx131.i = getelementptr %struct.adapter, ptr %299, i32 0, i32 12, i32 4, i32 %conv86.i
  %345 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %344, ptr %arrayidx131.i, align 4
  %346 = load i32, ptr %key_length.i264, align 8
  %conv135.i = trunc i32 %346 to i8
  %call136.i269 = tail call i32 @rtw_ap_set_wep_key(ptr noundef %299, ptr noundef %key_material.i266, i8 noundef zeroext %conv135.i, i32 noundef %conv86.i, i8 noundef zeroext 1) #8
  br label %rtw_set_encryption.exit

if.else137.i:                                     ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx139.i = getelementptr %struct.adapter, ptr %299, i32 0, i32 12, i32 3, i32 %conv86.i
  %347 = call ptr @memmove(ptr %arrayidx139.i, ptr %key.i267, i32 %cond.i256)
  %348 = ptrtoint ptr %key_length.i264 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %key_length.i264, align 8
  %arrayidx146.i = getelementptr %struct.adapter, ptr %299, i32 0, i32 12, i32 4, i32 %conv86.i
  %350 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 %349, ptr %arrayidx146.i, align 4
  %351 = load i32, ptr %key_length.i264, align 8
  %conv150.i = trunc i32 %351 to i8
  %call151.i = tail call i32 @rtw_ap_set_wep_key(ptr noundef %299, ptr noundef %key_material.i266, i8 noundef zeroext %conv150.i, i32 noundef %conv86.i, i8 noundef zeroext 0) #8
  br label %rtw_set_encryption.exit

if.end153.i270:                                   ; preds = %if.end74.i
  br i1 %tobool72.not.i, label %land.lhs.true155.i, label %if.end278.i

land.lhs.true155.i:                               ; preds = %if.end153.i270
  %fw_state.i.i271 = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 4, i32 1
  %352 = ptrtoint ptr %fw_state.i.i271 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %fw_state.i.i271, align 4
  %354 = and i32 %353, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %354)
  %tobool157.not.i = icmp eq i32 %354, 0
  br i1 %tobool157.not.i, label %land.lhs.true155.i.rtw_set_encryption.exit_crit_edge, label %if.then158.i

land.lhs.true155.i.rtw_set_encryption.exit_crit_edge: ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_set_encryption.exit

if.then158.i:                                     ; preds = %land.lhs.true155.i
  %set_tx160.i = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 3, i32 8
  %355 = ptrtoint ptr %set_tx160.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %set_tx160.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %356)
  %cmp162.i = icmp eq i8 %356, 1
  br i1 %cmp162.i, label %if.then164.i, label %if.then158.i.rtw_set_encryption.exit_crit_edge

if.then158.i.rtw_set_encryption.exit_crit_edge:   ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_set_encryption.exit

if.then164.i:                                     ; preds = %if.then158.i
  br i1 %cmp79.i, label %if.then171.i, label %if.else193.i

if.then171.i:                                     ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_pc() #10
  %key173.i = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %357 = ptrtoint ptr %key_len.i237 to i32
  call void @__asan_load2_noabort(i32 %357)
  %358 = load i16, ptr %key_len.i237, align 2
  %359 = tail call i16 @llvm.umin.i16(i16 %358, i16 16) #8
  %spec.select.i272 = zext i16 %359 to i32
  %360 = call ptr @memcpy(ptr %arrayidx11.i235, ptr %key173.i, i32 %spec.select.i272)
  %dot118021XGrpPrivacy184.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 6
  %361 = ptrtoint ptr %dot118021XGrpPrivacy184.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 1, ptr %dot118021XGrpPrivacy184.i, align 8
  %362 = ptrtoint ptr %key_len.i237 to i32
  call void @__asan_load2_noabort(i32 %362)
  %363 = load i16, ptr %key_len.i237, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %363)
  %cmp188.i = icmp eq i16 %363, 13
  %spec.store.select662.i = select i1 %cmp188.i, i32 5, i32 1
  %364 = ptrtoint ptr %dot118021XGrpPrivacy184.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %spec.store.select662.i, ptr %dot118021XGrpPrivacy184.i, align 8
  br label %if.end257.i

if.else193.i:                                     ; preds = %if.then164.i
  %call197.i = tail call i32 @strcmp(ptr noundef %u.i231, ptr noundef nonnull dereferenceable(5) @.str.5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197.i)
  %cmp198.i = icmp eq i32 %call197.i, 0
  br i1 %cmp198.i, label %if.then200.i, label %if.else229.i

if.then200.i:                                     ; preds = %if.else193.i
  call void @__sanitizer_cov_trace_pc() #10
  %dot118021XGrpPrivacy201.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 6
  %365 = ptrtoint ptr %dot118021XGrpPrivacy201.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 2, ptr %dot118021XGrpPrivacy201.i, align 8
  %key203.i = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %366 = ptrtoint ptr %key_len.i237 to i32
  call void @__asan_load2_noabort(i32 %366)
  %367 = load i16, ptr %key_len.i237, align 2
  %368 = tail call i16 @llvm.umin.i16(i16 %367, i16 16) #8
  %spec.select656.i = zext i16 %368 to i32
  %369 = call ptr @memcpy(ptr %arrayidx11.i235, ptr %key203.i, i32 %spec.select656.i)
  %arrayidx219.i = getelementptr %struct.ieee_param, ptr %call7.i, i32 1
  %370 = ptrtoint ptr %arrayidx219.i to i32
  call void @__asan_loadN_noabort(i32 %370, i32 8)
  %371 = load i64, ptr %arrayidx219.i, align 4
  %372 = ptrtoint ptr %arrayidx.i234 to i32
  call void @__asan_storeN_noabort(i32 %372, i32 8)
  store i64 %371, ptr %arrayidx.i234, align 1
  %373 = ptrtoint ptr %idx.i232 to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %idx.i232, align 4
  %idxprom223.i = zext i8 %374 to i32
  %arrayidx224.i = getelementptr %struct.adapter, ptr %299, i32 0, i32 12, i32 10, i32 %idxprom223.i
  %arrayidx228.i = getelementptr %struct.ieee_param, ptr %call7.i, i32 1, i32 1, i32 4
  %375 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_loadN_noabort(i32 %375, i32 8)
  %376 = load i64, ptr %arrayidx228.i, align 4
  %377 = ptrtoint ptr %arrayidx224.i to i32
  call void @__asan_store8_noabort(i32 %377)
  store i64 %376, ptr %arrayidx224.i, align 8
  %busetkipkey.i273 = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 29
  %378 = ptrtoint ptr %busetkipkey.i273 to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 1, ptr %busetkipkey.i273, align 2
  br label %if.end257.i

if.else229.i:                                     ; preds = %if.else193.i
  %call233.i = tail call i32 @strcmp(ptr noundef %u.i231, ptr noundef nonnull dereferenceable(5) @.str.6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233.i)
  %cmp234.i = icmp eq i32 %call233.i, 0
  %dot118021XGrpPrivacy237.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 6
  br i1 %cmp234.i, label %if.then236.i, label %if.else253.i

if.then236.i:                                     ; preds = %if.else229.i
  call void @__sanitizer_cov_trace_pc() #10
  %379 = ptrtoint ptr %dot118021XGrpPrivacy237.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 4, ptr %dot118021XGrpPrivacy237.i, align 8
  %key239.i = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %380 = ptrtoint ptr %key_len.i237 to i32
  call void @__asan_load2_noabort(i32 %380)
  %381 = load i16, ptr %key_len.i237, align 2
  %382 = tail call i16 @llvm.umin.i16(i16 %381, i16 16) #8
  %spec.select657.i = zext i16 %382 to i32
  %383 = call ptr @memcpy(ptr %arrayidx11.i235, ptr %key239.i, i32 %spec.select657.i)
  br label %if.end257.i

if.else253.i:                                     ; preds = %if.else229.i
  call void @__sanitizer_cov_trace_pc() #10
  %384 = ptrtoint ptr %dot118021XGrpPrivacy237.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 0, ptr %dot118021XGrpPrivacy237.i, align 8
  br label %if.end257.i

if.end257.i:                                      ; preds = %if.else253.i, %if.then236.i, %if.then200.i, %if.then171.i
  %385 = ptrtoint ptr %idx.i232 to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %idx.i232, align 4
  %conv260.i = zext i8 %386 to i32
  %dot118021XGrpKeyid.i274 = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 7
  %387 = ptrtoint ptr %dot118021XGrpKeyid.i274 to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 %conv260.i, ptr %dot118021XGrpKeyid.i274, align 4
  %binstallGrpkey.i275 = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 27
  %388 = ptrtoint ptr %binstallGrpkey.i275 to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 1, ptr %binstallGrpkey.i275, align 4
  %dot118021XGrpPrivacy261.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 6
  %389 = ptrtoint ptr %dot118021XGrpPrivacy261.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %dot118021XGrpPrivacy261.i, align 8
  %dot11PrivacyAlgrthm262.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 1
  %391 = ptrtoint ptr %dot11PrivacyAlgrthm262.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %390, ptr %dot11PrivacyAlgrthm262.i, align 4
  %key264.i = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %conv267.i = trunc i32 %390 to i8
  %392 = load i8, ptr %idx.i232, align 4
  %conv270.i = zext i8 %392 to i32
  %call271.i = tail call i32 @rtw_ap_set_group_key(ptr noundef %299, ptr noundef %key264.i, i8 noundef zeroext %conv267.i, i32 noundef %conv270.i) #8
  %call272.i = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %299) #8
  %tobool273.not.i = icmp eq ptr %call272.i, null
  br i1 %tobool273.not.i, label %if.end257.i.rtw_set_encryption.exit_crit_edge, label %if.then274.i

if.end257.i.rtw_set_encryption.exit_crit_edge:    ; preds = %if.end257.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_set_encryption.exit

if.then274.i:                                     ; preds = %if.end257.i
  call void @__sanitizer_cov_trace_pc() #10
  %ieee8021x_blocked.i276 = getelementptr inbounds %struct.sta_info, ptr %call272.i, i32 0, i32 13
  %393 = ptrtoint ptr %ieee8021x_blocked.i276 to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 0, ptr %ieee8021x_blocked.i276, align 8
  %394 = ptrtoint ptr %dot118021XGrpPrivacy261.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %dot118021XGrpPrivacy261.i, align 8
  %dot118021XPrivacy.i277 = getelementptr inbounds %struct.sta_info, ptr %call272.i, i32 0, i32 14
  %396 = ptrtoint ptr %dot118021XPrivacy.i277 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %395, ptr %dot118021XPrivacy.i277, align 4
  br label %rtw_set_encryption.exit

if.end278.i:                                      ; preds = %if.end153.i270
  %397 = ptrtoint ptr %securitypriv.i229 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %securitypriv.i229, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %398)
  %cmp280.not.i = icmp eq i32 %398, 2
  br i1 %cmp280.not.i, label %if.then284.i, label %if.end278.i.rtw_set_encryption.exit_crit_edge

if.end278.i.rtw_set_encryption.exit_crit_edge:    ; preds = %if.end278.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_set_encryption.exit

if.then284.i:                                     ; preds = %if.end278.i
  %fw_state.i664.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 4, i32 1
  %399 = ptrtoint ptr %fw_state.i664.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %fw_state.i664.i, align 4
  %401 = and i32 %400, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %401)
  %tobool286.not.i = icmp eq i32 %401, 0
  br i1 %tobool286.not.i, label %if.then284.i.rtw_set_encryption.exit_crit_edge, label %if.then287.i

if.then284.i.rtw_set_encryption.exit_crit_edge:   ; preds = %if.then284.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_set_encryption.exit

if.then287.i:                                     ; preds = %if.then284.i
  %set_tx289.i = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 3, i32 8
  %402 = ptrtoint ptr %set_tx289.i to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %set_tx289.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %403)
  %cmp291.i = icmp eq i8 %403, 1
  br i1 %cmp291.i, label %if.then293.i, label %if.else360.i

if.then293.i:                                     ; preds = %if.then287.i
  %dot118021x_UncstKey.i278 = getelementptr inbounds %struct.sta_info, ptr %psta.0.i, i32 0, i32 17
  %key296.i = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %404 = ptrtoint ptr %key_len.i237 to i32
  call void @__asan_load2_noabort(i32 %404)
  %405 = load i16, ptr %key_len.i237, align 2
  %406 = tail call i16 @llvm.umin.i16(i16 %405, i16 16) #8
  %spec.select658.i = zext i16 %406 to i32
  %407 = call ptr @memcpy(ptr %dot118021x_UncstKey.i278, ptr %key296.i, i32 %spec.select658.i)
  %call313.i = tail call i32 @strcmp(ptr noundef %u.i231, ptr noundef nonnull dereferenceable(4) @.str.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call313.i)
  %cmp314.i = icmp eq i32 %call313.i, 0
  br i1 %cmp314.i, label %if.then316.i, label %if.else326.i

if.then316.i:                                     ; preds = %if.then293.i
  call void @__sanitizer_cov_trace_pc() #10
  %dot118021XPrivacy317.i = getelementptr inbounds %struct.sta_info, ptr %psta.0.i, i32 0, i32 14
  %408 = ptrtoint ptr %dot118021XPrivacy317.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 1, ptr %dot118021XPrivacy317.i, align 4
  %409 = ptrtoint ptr %key_len.i237 to i32
  call void @__asan_load2_noabort(i32 %409)
  %410 = load i16, ptr %key_len.i237, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %410)
  %cmp321.i = icmp eq i16 %410, 13
  %spec.store.select.i = select i1 %cmp321.i, i32 5, i32 1
  %411 = ptrtoint ptr %dot118021XPrivacy317.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %spec.store.select.i, ptr %dot118021XPrivacy317.i, align 4
  br label %if.end357.i

if.else326.i:                                     ; preds = %if.then293.i
  %call330.i = tail call i32 @strcmp(ptr noundef %u.i231, ptr noundef nonnull dereferenceable(5) @.str.5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call330.i)
  %cmp331.i = icmp eq i32 %call330.i, 0
  br i1 %cmp331.i, label %if.then333.i, label %if.else344.i

if.then333.i:                                     ; preds = %if.else326.i
  call void @__sanitizer_cov_trace_pc() #10
  %dot118021XPrivacy334.i = getelementptr inbounds %struct.sta_info, ptr %psta.0.i, i32 0, i32 14
  %412 = ptrtoint ptr %dot118021XPrivacy334.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 2, ptr %dot118021XPrivacy334.i, align 4
  %dot11tkiptxmickey.i279 = getelementptr inbounds %struct.sta_info, ptr %psta.0.i, i32 0, i32 15
  %arrayidx338.i = getelementptr %struct.ieee_param, ptr %call7.i, i32 1
  %413 = ptrtoint ptr %arrayidx338.i to i32
  call void @__asan_loadN_noabort(i32 %413, i32 8)
  %414 = load i64, ptr %arrayidx338.i, align 4
  %415 = ptrtoint ptr %dot11tkiptxmickey.i279 to i32
  call void @__asan_store8_noabort(i32 %415)
  store i64 %414, ptr %dot11tkiptxmickey.i279, align 8
  %dot11tkiprxmickey.i280 = getelementptr inbounds %struct.sta_info, ptr %psta.0.i, i32 0, i32 16
  %arrayidx342.i = getelementptr %struct.ieee_param, ptr %call7.i, i32 1, i32 1, i32 4
  %416 = ptrtoint ptr %arrayidx342.i to i32
  call void @__asan_loadN_noabort(i32 %416, i32 8)
  %417 = load i64, ptr %arrayidx342.i, align 4
  %418 = ptrtoint ptr %dot11tkiprxmickey.i280 to i32
  call void @__asan_store8_noabort(i32 %418)
  store i64 %417, ptr %dot11tkiprxmickey.i280, align 8
  %busetkipkey343.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 29
  %419 = ptrtoint ptr %busetkipkey343.i to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 1, ptr %busetkipkey343.i, align 2
  br label %if.end357.i

if.else344.i:                                     ; preds = %if.else326.i
  %call348.i = tail call i32 @strcmp(ptr noundef %u.i231, ptr noundef nonnull dereferenceable(5) @.str.6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call348.i)
  %cmp349.i = icmp eq i32 %call348.i, 0
  %dot118021XPrivacy352.i = getelementptr inbounds %struct.sta_info, ptr %psta.0.i, i32 0, i32 14
  br i1 %cmp349.i, label %if.then351.i, label %if.else353.i

if.then351.i:                                     ; preds = %if.else344.i
  call void @__sanitizer_cov_trace_pc() #10
  %420 = ptrtoint ptr %dot118021XPrivacy352.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 4, ptr %dot118021XPrivacy352.i, align 4
  br label %if.end357.i

if.else353.i:                                     ; preds = %if.else344.i
  call void @__sanitizer_cov_trace_pc() #10
  %421 = ptrtoint ptr %dot118021XPrivacy352.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 0, ptr %dot118021XPrivacy352.i, align 4
  br label %if.end357.i

if.end357.i:                                      ; preds = %if.else353.i, %if.then351.i, %if.then333.i, %if.then316.i
  %call358.i = tail call zeroext i8 @rtw_ap_set_pairwise_key(ptr noundef %299, ptr noundef nonnull %psta.0.i) #8
  %ieee8021x_blocked359.i = getelementptr inbounds %struct.sta_info, ptr %psta.0.i, i32 0, i32 13
  %422 = ptrtoint ptr %ieee8021x_blocked359.i to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 0, ptr %ieee8021x_blocked359.i, align 8
  br label %rtw_set_encryption.exit

if.else360.i:                                     ; preds = %if.then287.i
  br i1 %cmp79.i, label %if.then367.i, label %if.else392.i

if.then367.i:                                     ; preds = %if.else360.i
  call void @__sanitizer_cov_trace_pc() #10
  %key369.i = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %423 = ptrtoint ptr %key_len.i237 to i32
  call void @__asan_load2_noabort(i32 %423)
  %424 = load i16, ptr %key_len.i237, align 2
  %425 = tail call i16 @llvm.umin.i16(i16 %424, i16 16) #8
  %spec.select659.i = zext i16 %425 to i32
  %426 = call ptr @memcpy(ptr %arrayidx11.i235, ptr %key369.i, i32 %spec.select659.i)
  %dot118021XGrpPrivacy383.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 6
  %427 = ptrtoint ptr %dot118021XGrpPrivacy383.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 1, ptr %dot118021XGrpPrivacy383.i, align 8
  %428 = ptrtoint ptr %key_len.i237 to i32
  call void @__asan_load2_noabort(i32 %428)
  %429 = load i16, ptr %key_len.i237, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %429)
  %cmp387.i = icmp eq i16 %429, 13
  %spec.store.select663.i = select i1 %cmp387.i, i32 5, i32 1
  %430 = ptrtoint ptr %dot118021XGrpPrivacy383.i to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 %spec.store.select663.i, ptr %dot118021XGrpPrivacy383.i, align 8
  br label %if.end451.i

if.else392.i:                                     ; preds = %if.else360.i
  %call396.i = tail call i32 @strcmp(ptr noundef %u.i231, ptr noundef nonnull dereferenceable(5) @.str.5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call396.i)
  %cmp397.i = icmp eq i32 %call396.i, 0
  br i1 %cmp397.i, label %if.then399.i, label %if.else423.i

if.then399.i:                                     ; preds = %if.else392.i
  call void @__sanitizer_cov_trace_pc() #10
  %dot118021XGrpPrivacy400.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 6
  %431 = ptrtoint ptr %dot118021XGrpPrivacy400.i to i32
  call void @__asan_store4_noabort(i32 %431)
  store i32 2, ptr %dot118021XGrpPrivacy400.i, align 8
  %key402.i = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %432 = ptrtoint ptr %key_len.i237 to i32
  call void @__asan_load2_noabort(i32 %432)
  %433 = load i16, ptr %key_len.i237, align 2
  %434 = tail call i16 @llvm.umin.i16(i16 %433, i16 16) #8
  %spec.select660.i = zext i16 %434 to i32
  %435 = call ptr @memcpy(ptr %arrayidx11.i235, ptr %key402.i, i32 %spec.select660.i)
  %arrayidx418.i = getelementptr %struct.ieee_param, ptr %call7.i, i32 1
  %436 = ptrtoint ptr %arrayidx418.i to i32
  call void @__asan_loadN_noabort(i32 %436, i32 8)
  %437 = load i64, ptr %arrayidx418.i, align 4
  %438 = ptrtoint ptr %arrayidx.i234 to i32
  call void @__asan_storeN_noabort(i32 %438, i32 8)
  store i64 %437, ptr %arrayidx.i234, align 1
  %arrayidx421.i = getelementptr %struct.ieee_param, ptr %call7.i, i32 1, i32 1, i32 4
  %439 = ptrtoint ptr %arrayidx421.i to i32
  call void @__asan_loadN_noabort(i32 %439, i32 8)
  %440 = load i64, ptr %arrayidx421.i, align 4
  %441 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_storeN_noabort(i32 %441, i32 8)
  store i64 %440, ptr %arrayidx6.i, align 1
  %busetkipkey422.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 29
  %442 = ptrtoint ptr %busetkipkey422.i to i32
  call void @__asan_store1_noabort(i32 %442)
  store i8 1, ptr %busetkipkey422.i, align 2
  br label %if.end451.i

if.else423.i:                                     ; preds = %if.else392.i
  %call427.i = tail call i32 @strcmp(ptr noundef %u.i231, ptr noundef nonnull dereferenceable(5) @.str.6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call427.i)
  %cmp428.i = icmp eq i32 %call427.i, 0
  %dot118021XGrpPrivacy431.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 6
  br i1 %cmp428.i, label %if.then430.i, label %if.else447.i

if.then430.i:                                     ; preds = %if.else423.i
  call void @__sanitizer_cov_trace_pc() #10
  %443 = ptrtoint ptr %dot118021XGrpPrivacy431.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 4, ptr %dot118021XGrpPrivacy431.i, align 8
  %key433.i = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %444 = ptrtoint ptr %key_len.i237 to i32
  call void @__asan_load2_noabort(i32 %444)
  %445 = load i16, ptr %key_len.i237, align 2
  %446 = tail call i16 @llvm.umin.i16(i16 %445, i16 16) #8
  %spec.select661.i = zext i16 %446 to i32
  %447 = call ptr @memcpy(ptr %arrayidx11.i235, ptr %key433.i, i32 %spec.select661.i)
  br label %if.end451.i

if.else447.i:                                     ; preds = %if.else423.i
  call void @__sanitizer_cov_trace_pc() #10
  %448 = ptrtoint ptr %dot118021XGrpPrivacy431.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 0, ptr %dot118021XGrpPrivacy431.i, align 8
  br label %if.end451.i

if.end451.i:                                      ; preds = %if.else447.i, %if.then430.i, %if.then399.i, %if.then367.i
  %449 = ptrtoint ptr %idx.i232 to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %idx.i232, align 4
  %conv454.i = zext i8 %450 to i32
  %dot118021XGrpKeyid455.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 7
  %451 = ptrtoint ptr %dot118021XGrpKeyid455.i to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 %conv454.i, ptr %dot118021XGrpKeyid455.i, align 4
  %binstallGrpkey456.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 27
  %452 = ptrtoint ptr %binstallGrpkey456.i to i32
  call void @__asan_store1_noabort(i32 %452)
  store i8 1, ptr %binstallGrpkey456.i, align 4
  %dot118021XGrpPrivacy457.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 6
  %453 = ptrtoint ptr %dot118021XGrpPrivacy457.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %dot118021XGrpPrivacy457.i, align 8
  %dot11PrivacyAlgrthm458.i = getelementptr inbounds %struct.adapter, ptr %299, i32 0, i32 12, i32 1
  %455 = ptrtoint ptr %dot11PrivacyAlgrthm458.i to i32
  call void @__asan_store4_noabort(i32 %455)
  store i32 %454, ptr %dot11PrivacyAlgrthm458.i, align 4
  %key460.i = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 4, i32 2, i32 0, i32 9
  %conv463.i = trunc i32 %454 to i8
  %456 = load i8, ptr %idx.i232, align 4
  %conv466.i = zext i8 %456 to i32
  %call467.i = tail call i32 @rtw_ap_set_group_key(ptr noundef %299, ptr noundef %key460.i, i8 noundef zeroext %conv463.i, i32 noundef %conv466.i) #8
  %call468.i = tail call ptr @rtw_get_bcmc_stainfo(ptr noundef %299) #8
  %tobool469.not.i = icmp eq ptr %call468.i, null
  br i1 %tobool469.not.i, label %if.end451.i.rtw_set_encryption.exit_crit_edge, label %if.then470.i

if.end451.i.rtw_set_encryption.exit_crit_edge:    ; preds = %if.end451.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_set_encryption.exit

if.then470.i:                                     ; preds = %if.end451.i
  call void @__sanitizer_cov_trace_pc() #10
  %ieee8021x_blocked471.i = getelementptr inbounds %struct.sta_info, ptr %call468.i, i32 0, i32 13
  %457 = ptrtoint ptr %ieee8021x_blocked471.i to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 0, ptr %ieee8021x_blocked471.i, align 8
  %458 = ptrtoint ptr %dot118021XGrpPrivacy457.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %dot118021XGrpPrivacy457.i, align 8
  %dot118021XPrivacy473.i = getelementptr inbounds %struct.sta_info, ptr %call468.i, i32 0, i32 14
  %460 = ptrtoint ptr %dot118021XPrivacy473.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 %459, ptr %dot118021XPrivacy473.i, align 4
  br label %rtw_set_encryption.exit

rtw_set_encryption.exit:                          ; preds = %if.then470.i, %if.end451.i.rtw_set_encryption.exit_crit_edge, %if.end357.i, %if.then284.i.rtw_set_encryption.exit_crit_edge, %if.end278.i.rtw_set_encryption.exit_crit_edge, %if.then274.i, %if.end257.i.rtw_set_encryption.exit_crit_edge, %if.then158.i.rtw_set_encryption.exit_crit_edge, %land.lhs.true155.i.rtw_set_encryption.exit_crit_edge, %if.else137.i, %if.end124.i, %if.then98.i257.rtw_set_encryption.exit_crit_edge, %if.then83.i.rtw_set_encryption.exit_crit_edge, %if.then73.i255, %if.else.i.rtw_set_encryption.exit_crit_edge, %if.then51.i.rtw_set_encryption.exit_crit_edge, %sw.bb26.i42.rtw_set_encryption.exit_crit_edge
  %ret.0.i281 = phi i32 [ 0, %if.end357.i ], [ 0, %if.then470.i ], [ 0, %if.end451.i.rtw_set_encryption.exit_crit_edge ], [ 0, %if.then284.i.rtw_set_encryption.exit_crit_edge ], [ 0, %if.end278.i.rtw_set_encryption.exit_crit_edge ], [ 0, %if.then274.i ], [ 0, %if.end257.i.rtw_set_encryption.exit_crit_edge ], [ 0, %if.then158.i.rtw_set_encryption.exit_crit_edge ], [ 0, %if.end124.i ], [ 0, %if.else137.i ], [ 0, %if.then98.i257.rtw_set_encryption.exit_crit_edge ], [ 0, %if.then73.i255 ], [ 0, %if.else.i.rtw_set_encryption.exit_crit_edge ], [ -22, %sw.bb26.i42.rtw_set_encryption.exit_crit_edge ], [ -22, %if.then51.i.rtw_set_encryption.exit_crit_edge ], [ -22, %if.then83.i.rtw_set_encryption.exit_crit_edge ], [ 0, %land.lhs.true155.i.rtw_set_encryption.exit_crit_edge ]
  %pwep.1.i = phi ptr [ null, %if.end357.i ], [ null, %if.then470.i ], [ null, %if.end451.i.rtw_set_encryption.exit_crit_edge ], [ null, %if.then284.i.rtw_set_encryption.exit_crit_edge ], [ null, %if.end278.i.rtw_set_encryption.exit_crit_edge ], [ null, %if.then274.i ], [ null, %if.end257.i.rtw_set_encryption.exit_crit_edge ], [ null, %if.then158.i.rtw_set_encryption.exit_crit_edge ], [ %call9.i.i.i260, %if.end124.i ], [ %call9.i.i.i260, %if.else137.i ], [ null, %if.then98.i257.rtw_set_encryption.exit_crit_edge ], [ null, %if.then73.i255 ], [ null, %if.else.i.rtw_set_encryption.exit_crit_edge ], [ null, %sw.bb26.i42.rtw_set_encryption.exit_crit_edge ], [ null, %if.then51.i.rtw_set_encryption.exit_crit_edge ], [ null, %if.then83.i.rtw_set_encryption.exit_crit_edge ], [ null, %land.lhs.true155.i.rtw_set_encryption.exit_crit_edge ]
  tail call void @kfree(ptr noundef %pwep.1.i) #8
  br label %sw.epilog.i45

sw.bb30.i:                                        ; preds = %if.end17.i
  %461 = ptrtoint ptr %add.ptr.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %add.ptr.i.i139.i, align 4
  %stapriv.i199 = getelementptr inbounds %struct.adapter, ptr %462, i32 0, i32 11
  %fw_state.i.i200 = getelementptr inbounds %struct.adapter, ptr %462, i32 0, i32 4, i32 1
  %463 = ptrtoint ptr %fw_state.i.i200 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %fw_state.i.i200, align 4
  %and.i.i201 = and i32 %464, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i201)
  %tobool.not.i.not.i202 = icmp eq i32 %and.i.i201, 0
  br i1 %tobool.not.i.not.i202, label %sw.bb30.i.sw.epilog.sink.split_crit_edge, label %if.end.i205

sw.bb30.i.sw.epilog.sink.split_crit_edge:         ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end.i205:                                      ; preds = %sw.bb30.i
  %sta_addr.i203 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 1
  %465 = ptrtoint ptr %sta_addr.i203 to i32
  call void @__asan_load1_noabort(i32 %465)
  %466 = load i8, ptr %sta_addr.i203, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %466)
  %cmp2.i204 = icmp eq i8 %466, -1
  br i1 %cmp2.i204, label %land.lhs.true.i208, label %if.end.i205.if.end34.i223_crit_edge

if.end.i205.if.end34.i223_crit_edge:              ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i223

land.lhs.true.i208:                               ; preds = %if.end.i205
  %arrayidx5.i206 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 1
  %467 = ptrtoint ptr %arrayidx5.i206 to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %arrayidx5.i206, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %468)
  %cmp7.i207 = icmp eq i8 %468, -1
  br i1 %cmp7.i207, label %land.lhs.true9.i211, label %land.lhs.true.i208.if.end34.i223_crit_edge

land.lhs.true.i208.if.end34.i223_crit_edge:       ; preds = %land.lhs.true.i208
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i223

land.lhs.true9.i211:                              ; preds = %land.lhs.true.i208
  %arrayidx11.i209 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 2
  %469 = ptrtoint ptr %arrayidx11.i209 to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %arrayidx11.i209, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %470)
  %cmp13.i210 = icmp eq i8 %470, -1
  br i1 %cmp13.i210, label %land.lhs.true15.i214, label %land.lhs.true9.i211.if.end34.i223_crit_edge

land.lhs.true9.i211.if.end34.i223_crit_edge:      ; preds = %land.lhs.true9.i211
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i223

land.lhs.true15.i214:                             ; preds = %land.lhs.true9.i211
  %arrayidx17.i212 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 3
  %471 = ptrtoint ptr %arrayidx17.i212 to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %arrayidx17.i212, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %472)
  %cmp19.i213 = icmp eq i8 %472, -1
  br i1 %cmp19.i213, label %land.lhs.true21.i217, label %land.lhs.true15.i214.if.end34.i223_crit_edge

land.lhs.true15.i214.if.end34.i223_crit_edge:     ; preds = %land.lhs.true15.i214
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i223

land.lhs.true21.i217:                             ; preds = %land.lhs.true15.i214
  %arrayidx23.i215 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 4
  %473 = ptrtoint ptr %arrayidx23.i215 to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %arrayidx23.i215, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %474)
  %cmp25.i216 = icmp eq i8 %474, -1
  br i1 %cmp25.i216, label %land.lhs.true27.i220, label %land.lhs.true21.i217.if.end34.i223_crit_edge

land.lhs.true21.i217.if.end34.i223_crit_edge:     ; preds = %land.lhs.true21.i217
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i223

land.lhs.true27.i220:                             ; preds = %land.lhs.true21.i217
  %arrayidx29.i218 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 5
  %475 = ptrtoint ptr %arrayidx29.i218 to i32
  call void @__asan_load1_noabort(i32 %475)
  %476 = load i8, ptr %arrayidx29.i218, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %476)
  %cmp31.i219 = icmp eq i8 %476, -1
  br i1 %cmp31.i219, label %land.lhs.true27.i220.sw.epilog.sink.split_crit_edge, label %land.lhs.true27.i220.if.end34.i223_crit_edge

land.lhs.true27.i220.if.end34.i223_crit_edge:     ; preds = %land.lhs.true27.i220
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i223

land.lhs.true27.i220.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true27.i220
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end34.i223:                                    ; preds = %land.lhs.true27.i220.if.end34.i223_crit_edge, %land.lhs.true21.i217.if.end34.i223_crit_edge, %land.lhs.true15.i214.if.end34.i223_crit_edge, %land.lhs.true9.i211.if.end34.i223_crit_edge, %land.lhs.true.i208.if.end34.i223_crit_edge, %if.end.i205.if.end34.i223_crit_edge
  %call36.i221 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv.i199, ptr noundef %sta_addr.i203) #8
  %tobool.not.i222 = icmp eq ptr %call36.i221, null
  br i1 %tobool.not.i222, label %if.end34.i223.sw.epilog.sink.split_crit_edge, label %if.then37.i

if.end34.i223.sw.epilog.sink.split_crit_edge:     ; preds = %if.end34.i223
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.then37.i:                                      ; preds = %if.end34.i223
  %wpa_ie.i = getelementptr inbounds %struct.sta_info, ptr %call36.i221, i32 0, i32 54
  %477 = ptrtoint ptr %wpa_ie.i to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %wpa_ie.i, align 1
  %479 = zext i8 %478 to i64
  call void @__sanitizer_cov_trace_switch(i64 %479, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %478, label %if.then37.i.land.lhs.true.i46_crit_edge [
    i8 48, label %if.then37.i.if.then47.i_crit_edge
    i8 -35, label %if.then37.i.if.then47.i_crit_edge387
  ]

if.then37.i.if.then47.i_crit_edge387:             ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47.i

if.then37.i.if.then47.i_crit_edge:                ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47.i

if.then37.i.land.lhs.true.i46_crit_edge:          ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i46

if.then47.i:                                      ; preds = %if.then37.i.if.then47.i_crit_edge, %if.then37.i.if.then47.i_crit_edge387
  %arrayidx49.i = getelementptr %struct.sta_info, ptr %call36.i221, i32 0, i32 54, i32 1
  %480 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %arrayidx49.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %481)
  %cmp51.i = icmp ugt i8 %481, 30
  %conv50.i = zext i8 %481 to i32
  %add.i224 = add nuw nsw i32 %conv50.i, 2
  %cond.i225 = select i1 %cmp51.i, i32 32, i32 %add.i224
  %u.i226 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2
  %482 = ptrtoint ptr %u.i226 to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 %cond.i225, ptr %u.i226, align 4
  %reserved.i = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 2
  %483 = call ptr @memcpy(ptr %reserved.i, ptr %wpa_ie.i, i32 %cond.i225)
  br label %land.lhs.true.i46

sw.bb32.i:                                        ; preds = %if.end17.i
  %484 = ptrtoint ptr %length.i8 to i32
  call void @__asan_load2_noabort(i32 %484)
  %485 = load i16, ptr %length.i8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wps_oui.i) #8
  %486 = ptrtoint ptr %wps_oui.i to i32
  call void @__asan_store4_noabort(i32 %486)
  store i32 5304836, ptr %wps_oui.i, align 4
  %487 = ptrtoint ptr %add.ptr.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %add.ptr.i.i139.i, align 4
  %fw_state.i.i186 = getelementptr inbounds %struct.adapter, ptr %488, i32 0, i32 4, i32 1
  %489 = ptrtoint ptr %fw_state.i.i186 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %fw_state.i.i186, align 4
  %and.i.i187 = and i32 %490, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i187)
  %tobool.not.i.not.i188 = icmp eq i32 %and.i.i187, 0
  br i1 %tobool.not.i.not.i188, label %sw.bb32.i.rtw_set_wps_beacon.exit_crit_edge, label %if.end.i191

sw.bb32.i.rtw_set_wps_beacon.exit_crit_edge:      ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_set_wps_beacon.exit

if.end.i191:                                      ; preds = %sw.bb32.i
  %conv34.i43 = zext i16 %485 to i32
  %sub2.i189 = add nsw i32 %conv34.i43, -14
  %wps_beacon_ie.i = getelementptr inbounds %struct.adapter, ptr %488, i32 0, i32 4, i32 53
  %491 = ptrtoint ptr %wps_beacon_ie.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %wps_beacon_ie.i, align 4
  tail call void @kfree(ptr noundef %492) #8
  %493 = ptrtoint ptr %wps_beacon_ie.i to i32
  call void @__asan_store4_noabort(i32 %493)
  store ptr null, ptr %wps_beacon_ie.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %485)
  %cmp4.i190 = icmp ugt i16 %485, 14
  br i1 %cmp4.i190, label %if.then5.i194, label %if.end.i191.rtw_set_wps_beacon.exit_crit_edge

if.end.i191.rtw_set_wps_beacon.exit_crit_edge:    ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_set_wps_beacon.exit

if.then5.i194:                                    ; preds = %if.end.i191
  %call6.i192 = tail call ptr @_rtw_malloc(i32 noundef %sub2.i189) #8
  %494 = ptrtoint ptr %wps_beacon_ie.i to i32
  call void @__asan_store4_noabort(i32 %494)
  store ptr %call6.i192, ptr %wps_beacon_ie.i, align 4
  %wps_beacon_ie_len.i = getelementptr inbounds %struct.adapter, ptr %488, i32 0, i32 4, i32 56
  %495 = ptrtoint ptr %wps_beacon_ie_len.i to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 %sub2.i189, ptr %wps_beacon_ie_len.i, align 4
  %tobool.not.i193 = icmp eq ptr %call6.i192, null
  br i1 %tobool.not.i193, label %if.then5.i194.rtw_set_wps_beacon.exit_crit_edge, label %if.end10.i196

if.then5.i194.rtw_set_wps_beacon.exit_crit_edge:  ; preds = %if.then5.i194
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_set_wps_beacon.exit

if.end10.i196:                                    ; preds = %if.then5.i194
  call void @__sanitizer_cov_trace_pc() #10
  %buf.i195 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 1
  %496 = call ptr @memcpy(ptr %call6.i192, ptr %buf.i195, i32 %sub2.i189)
  call void @update_beacon(ptr noundef %488, i8 noundef zeroext -35, ptr noundef nonnull %wps_oui.i, i8 noundef zeroext 1) #8
  %bstart_bss.i = getelementptr inbounds %struct.adapter, ptr %488, i32 0, i32 5, i32 34
  %497 = ptrtoint ptr %bstart_bss.i to i32
  call void @__asan_store1_noabort(i32 %497)
  store i8 1, ptr %bstart_bss.i, align 2
  br label %rtw_set_wps_beacon.exit

rtw_set_wps_beacon.exit:                          ; preds = %if.end10.i196, %if.then5.i194.rtw_set_wps_beacon.exit_crit_edge, %if.end.i191.rtw_set_wps_beacon.exit_crit_edge, %sw.bb32.i.rtw_set_wps_beacon.exit_crit_edge
  %retval.0.i197 = phi i32 [ -22, %sw.bb32.i.rtw_set_wps_beacon.exit_crit_edge ], [ -22, %if.then5.i194.rtw_set_wps_beacon.exit_crit_edge ], [ 0, %if.end10.i196 ], [ 0, %if.end.i191.rtw_set_wps_beacon.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wps_oui.i) #8
  br label %sw.epilog.i45

sw.bb36.i:                                        ; preds = %if.end17.i
  %498 = ptrtoint ptr %add.ptr.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %add.ptr.i.i139.i, align 4
  %fw_state.i.i173 = getelementptr inbounds %struct.adapter, ptr %499, i32 0, i32 4, i32 1
  %500 = ptrtoint ptr %fw_state.i.i173 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %fw_state.i.i173, align 4
  %and.i.i174 = and i32 %501, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i174)
  %tobool.not.i.not.i175 = icmp eq i32 %and.i.i174, 0
  br i1 %tobool.not.i.not.i175, label %sw.bb36.i.sw.epilog.sink.split_crit_edge, label %if.end.i178

sw.bb36.i.sw.epilog.sink.split_crit_edge:         ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end.i178:                                      ; preds = %sw.bb36.i
  %502 = ptrtoint ptr %length.i8 to i32
  call void @__asan_load2_noabort(i32 %502)
  %503 = load i16, ptr %length.i8, align 4
  %conv38.i = zext i16 %503 to i32
  %sub2.i176 = add nsw i32 %conv38.i, -14
  %wps_probe_resp_ie.i = getelementptr inbounds %struct.adapter, ptr %499, i32 0, i32 4, i32 54
  %504 = ptrtoint ptr %wps_probe_resp_ie.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %wps_probe_resp_ie.i, align 4
  tail call void @kfree(ptr noundef %505) #8
  %506 = ptrtoint ptr %wps_probe_resp_ie.i to i32
  call void @__asan_store4_noabort(i32 %506)
  store ptr null, ptr %wps_probe_resp_ie.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %503)
  %cmp4.i177 = icmp ugt i16 %503, 14
  br i1 %cmp4.i177, label %if.then5.i181, label %if.end.i178.land.lhs.true.i46_crit_edge

if.end.i178.land.lhs.true.i46_crit_edge:          ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i46

if.then5.i181:                                    ; preds = %if.end.i178
  %call6.i179 = tail call ptr @_rtw_malloc(i32 noundef %sub2.i176) #8
  %507 = ptrtoint ptr %wps_probe_resp_ie.i to i32
  call void @__asan_store4_noabort(i32 %507)
  store ptr %call6.i179, ptr %wps_probe_resp_ie.i, align 4
  %wps_probe_resp_ie_len.i = getelementptr inbounds %struct.adapter, ptr %499, i32 0, i32 4, i32 57
  %508 = ptrtoint ptr %wps_probe_resp_ie_len.i to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 %sub2.i176, ptr %wps_probe_resp_ie_len.i, align 4
  %tobool.not.i180 = icmp eq ptr %call6.i179, null
  br i1 %tobool.not.i180, label %if.then5.i181.sw.epilog.sink.split_crit_edge, label %if.end10.i183

if.then5.i181.sw.epilog.sink.split_crit_edge:     ; preds = %if.then5.i181
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end10.i183:                                    ; preds = %if.then5.i181
  call void @__sanitizer_cov_trace_pc() #10
  %buf.i182 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 1
  %509 = call ptr @memcpy(ptr %call6.i179, ptr %buf.i182, i32 %sub2.i176)
  br label %land.lhs.true.i46

sw.bb40.i:                                        ; preds = %if.end17.i
  %510 = ptrtoint ptr %add.ptr.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %add.ptr.i.i139.i, align 4
  %fw_state.i.i163 = getelementptr inbounds %struct.adapter, ptr %511, i32 0, i32 4, i32 1
  %512 = ptrtoint ptr %fw_state.i.i163 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %fw_state.i.i163, align 4
  %and.i.i164 = and i32 %513, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i164)
  %tobool.not.i.not.i165 = icmp eq i32 %and.i.i164, 0
  br i1 %tobool.not.i.not.i165, label %sw.bb40.i.sw.epilog.sink.split_crit_edge, label %if.end.i166

sw.bb40.i.sw.epilog.sink.split_crit_edge:         ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end.i166:                                      ; preds = %sw.bb40.i
  %514 = ptrtoint ptr %length.i8 to i32
  call void @__asan_load2_noabort(i32 %514)
  %515 = load i16, ptr %length.i8, align 4
  %conv42.i = zext i16 %515 to i32
  %sub2.i = add nsw i32 %conv42.i, -14
  %wps_assoc_resp_ie.i = getelementptr inbounds %struct.adapter, ptr %511, i32 0, i32 4, i32 55
  %516 = ptrtoint ptr %wps_assoc_resp_ie.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %wps_assoc_resp_ie.i, align 4
  tail call void @kfree(ptr noundef %517) #8
  %518 = ptrtoint ptr %wps_assoc_resp_ie.i to i32
  call void @__asan_store4_noabort(i32 %518)
  store ptr null, ptr %wps_assoc_resp_ie.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %515)
  %cmp4.i = icmp ugt i16 %515, 14
  br i1 %cmp4.i, label %if.then5.i168, label %if.end.i166.land.lhs.true.i46_crit_edge

if.end.i166.land.lhs.true.i46_crit_edge:          ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i46

if.then5.i168:                                    ; preds = %if.end.i166
  %call6.i = tail call ptr @_rtw_malloc(i32 noundef %sub2.i) #8
  %519 = ptrtoint ptr %wps_assoc_resp_ie.i to i32
  call void @__asan_store4_noabort(i32 %519)
  store ptr %call6.i, ptr %wps_assoc_resp_ie.i, align 4
  %wps_assoc_resp_ie_len.i = getelementptr inbounds %struct.adapter, ptr %511, i32 0, i32 4, i32 58
  %520 = ptrtoint ptr %wps_assoc_resp_ie_len.i to i32
  call void @__asan_store4_noabort(i32 %520)
  store i32 %sub2.i, ptr %wps_assoc_resp_ie_len.i, align 4
  %tobool.not.i167 = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i167, label %if.then5.i168.sw.epilog.sink.split_crit_edge, label %if.end10.i170

if.then5.i168.sw.epilog.sink.split_crit_edge:     ; preds = %if.then5.i168
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end10.i170:                                    ; preds = %if.then5.i168
  call void @__sanitizer_cov_trace_pc() #10
  %buf.i169 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 1
  %521 = call ptr @memcpy(ptr %call6.i, ptr %buf.i169, i32 %sub2.i)
  br label %land.lhs.true.i46

sw.bb44.i:                                        ; preds = %if.end17.i
  %522 = ptrtoint ptr %length.i8 to i32
  call void @__asan_load2_noabort(i32 %522)
  %523 = load i16, ptr %length.i8, align 4
  %conv46.i = zext i16 %523 to i32
  %524 = ptrtoint ptr %add.ptr.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %add.ptr.i.i139.i, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %ssid.i) #8
  %526 = call ptr @memset(ptr %ssid.i, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ssid_len.i) #8
  %527 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_store4_noabort(i32 %527)
  store i32 -1, ptr %ssid_len.i, align 4, !annotation !33
  %fw_state.i.i153 = getelementptr inbounds %struct.adapter, ptr %525, i32 0, i32 4, i32 1
  %528 = ptrtoint ptr %fw_state.i.i153 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %fw_state.i.i153, align 4
  %and.i.i154 = and i32 %529, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i154)
  %tobool.not.i.not.i155 = icmp eq i32 %and.i.i154, 0
  br i1 %tobool.not.i.not.i155, label %sw.bb44.i.rtw_set_hidden_ssid.exit_crit_edge, label %if.end.i157

sw.bb44.i.rtw_set_hidden_ssid.exit_crit_edge:     ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_set_hidden_ssid.exit

if.end.i157:                                      ; preds = %sw.bb44.i
  %u.i156 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2
  %530 = ptrtoint ptr %u.i156 to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %u.i156, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %531)
  %cmp3.not.i = icmp eq i8 %531, -22
  br i1 %cmp3.not.i, label %if.end6.i159, label %if.end.i157.rtw_set_hidden_ssid.exit_crit_edge

if.end.i157.rtw_set_hidden_ssid.exit_crit_edge:   ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_set_hidden_ssid.exit

if.end6.i159:                                     ; preds = %if.end.i157
  %arrayidx9.i = getelementptr [2 x i8], ptr %u.i156, i32 0, i32 1
  %532 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %arrayidx9.i, align 1
  %hidden_ssid_mode.i = getelementptr inbounds %struct.adapter, ptr %525, i32 0, i32 5, i32 18, i32 33
  %534 = ptrtoint ptr %hidden_ssid_mode.i to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 %533, ptr %hidden_ssid_mode.i, align 1
  %sub10.i = add nsw i32 %conv46.i, -14
  %buf.i = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2, i32 0, i32 1
  %call12.i = call ptr @rtw_get_ie(ptr noundef %buf.i, i32 noundef 0, ptr noundef nonnull %ssid_len.i, i32 noundef %sub10.i) #8
  %tobool.not.i158 = icmp eq ptr %call12.i, null
  br i1 %tobool.not.i158, label %if.end6.i159.rtw_set_hidden_ssid.exit_crit_edge, label %land.lhs.true.i160

if.end6.i159.rtw_set_hidden_ssid.exit_crit_edge:  ; preds = %if.end6.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_set_hidden_ssid.exit

land.lhs.true.i160:                               ; preds = %if.end6.i159
  %535 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %ssid_len.i, align 4
  %537 = add i32 %536, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %537)
  %538 = icmp ult i32 %537, 32
  br i1 %538, label %if.then18.i, label %land.lhs.true.i160.rtw_set_hidden_ssid.exit_crit_edge

land.lhs.true.i160.rtw_set_hidden_ssid.exit_crit_edge: ; preds = %land.lhs.true.i160
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_set_hidden_ssid.exit

if.then18.i:                                      ; preds = %land.lhs.true.i160
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %call12.i, i32 2
  %539 = call ptr @memcpy(ptr %ssid.i, ptr %add.ptr.i, i32 %536)
  %arrayidx21.i = getelementptr [33 x i8], ptr %ssid.i, i32 0, i32 %536
  %540 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %540)
  store i8 0, ptr %arrayidx21.i, align 1
  %ssid22.i = getelementptr inbounds %struct.adapter, ptr %525, i32 0, i32 4, i32 20, i32 6, i32 3
  %ssid23.i = getelementptr inbounds %struct.adapter, ptr %525, i32 0, i32 4, i32 20, i32 6, i32 3, i32 1
  %541 = call ptr @memcpy(ptr %ssid23.i, ptr %ssid.i, i32 %536)
  %542 = ptrtoint ptr %ssid22.i to i32
  call void @__asan_storeN_noabort(i32 %542, i32 4)
  store i32 %536, ptr %ssid22.i, align 1
  %ssid27.i = getelementptr inbounds %struct.adapter, ptr %525, i32 0, i32 5, i32 18, i32 39, i32 3
  %ssid28.i = getelementptr inbounds %struct.adapter, ptr %525, i32 0, i32 5, i32 18, i32 39, i32 3, i32 1
  %543 = call ptr @memcpy(ptr %ssid28.i, ptr %ssid.i, i32 %536)
  %544 = ptrtoint ptr %ssid27.i to i32
  call void @__asan_storeN_noabort(i32 %544, i32 4)
  store i32 %536, ptr %ssid27.i, align 1
  br label %rtw_set_hidden_ssid.exit

rtw_set_hidden_ssid.exit:                         ; preds = %if.then18.i, %land.lhs.true.i160.rtw_set_hidden_ssid.exit_crit_edge, %if.end6.i159.rtw_set_hidden_ssid.exit_crit_edge, %if.end.i157.rtw_set_hidden_ssid.exit_crit_edge, %sw.bb44.i.rtw_set_hidden_ssid.exit_crit_edge
  %retval.0.i161 = phi i32 [ -1, %sw.bb44.i.rtw_set_hidden_ssid.exit_crit_edge ], [ -22, %if.end.i157.rtw_set_hidden_ssid.exit_crit_edge ], [ 0, %if.then18.i ], [ 0, %land.lhs.true.i160.rtw_set_hidden_ssid.exit_crit_edge ], [ 0, %if.end6.i159.rtw_set_hidden_ssid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ssid_len.i) #8
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %ssid.i) #8
  br label %sw.epilog.i45

sw.bb48.i:                                        ; preds = %if.end17.i
  %545 = ptrtoint ptr %add.ptr.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %add.ptr.i.i139.i, align 4
  %stapriv.i124 = getelementptr inbounds %struct.adapter, ptr %546, i32 0, i32 11
  %data.i125 = getelementptr inbounds %struct.ieee_param_ex, ptr %call7.i, i32 0, i32 2
  %fw_state.i.i126 = getelementptr inbounds %struct.adapter, ptr %546, i32 0, i32 4, i32 1
  %547 = ptrtoint ptr %fw_state.i.i126 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %fw_state.i.i126, align 4
  %and.i.i127 = and i32 %548, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i127)
  %tobool.not.i.not.i128 = icmp eq i32 %and.i.i127, 0
  br i1 %tobool.not.i.not.i128, label %sw.bb48.i.sw.epilog.sink.split_crit_edge, label %if.end.i131

sw.bb48.i.sw.epilog.sink.split_crit_edge:         ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end.i131:                                      ; preds = %sw.bb48.i
  %sta_addr.i129 = getelementptr inbounds %struct.ieee_param_ex, ptr %call7.i, i32 0, i32 1
  %549 = ptrtoint ptr %sta_addr.i129 to i32
  call void @__asan_load1_noabort(i32 %549)
  %550 = load i8, ptr %sta_addr.i129, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %550)
  %cmp2.i130 = icmp eq i8 %550, -1
  br i1 %cmp2.i130, label %land.lhs.true.i134, label %if.end.i131.if.end34.i148_crit_edge

if.end.i131.if.end34.i148_crit_edge:              ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i148

land.lhs.true.i134:                               ; preds = %if.end.i131
  %arrayidx5.i132 = getelementptr %struct.ieee_param_ex, ptr %call7.i, i32 0, i32 1, i32 1
  %551 = ptrtoint ptr %arrayidx5.i132 to i32
  call void @__asan_load1_noabort(i32 %551)
  %552 = load i8, ptr %arrayidx5.i132, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %552)
  %cmp7.i133 = icmp eq i8 %552, -1
  br i1 %cmp7.i133, label %land.lhs.true9.i137, label %land.lhs.true.i134.if.end34.i148_crit_edge

land.lhs.true.i134.if.end34.i148_crit_edge:       ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i148

land.lhs.true9.i137:                              ; preds = %land.lhs.true.i134
  %arrayidx11.i135 = getelementptr %struct.ieee_param_ex, ptr %call7.i, i32 0, i32 1, i32 2
  %553 = ptrtoint ptr %arrayidx11.i135 to i32
  call void @__asan_load1_noabort(i32 %553)
  %554 = load i8, ptr %arrayidx11.i135, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %554)
  %cmp13.i136 = icmp eq i8 %554, -1
  br i1 %cmp13.i136, label %land.lhs.true15.i140, label %land.lhs.true9.i137.if.end34.i148_crit_edge

land.lhs.true9.i137.if.end34.i148_crit_edge:      ; preds = %land.lhs.true9.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i148

land.lhs.true15.i140:                             ; preds = %land.lhs.true9.i137
  %arrayidx17.i138 = getelementptr %struct.ieee_param_ex, ptr %call7.i, i32 0, i32 1, i32 3
  %555 = ptrtoint ptr %arrayidx17.i138 to i32
  call void @__asan_load1_noabort(i32 %555)
  %556 = load i8, ptr %arrayidx17.i138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %556)
  %cmp19.i139 = icmp eq i8 %556, -1
  br i1 %cmp19.i139, label %land.lhs.true21.i143, label %land.lhs.true15.i140.if.end34.i148_crit_edge

land.lhs.true15.i140.if.end34.i148_crit_edge:     ; preds = %land.lhs.true15.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i148

land.lhs.true21.i143:                             ; preds = %land.lhs.true15.i140
  %arrayidx23.i141 = getelementptr %struct.ieee_param_ex, ptr %call7.i, i32 0, i32 1, i32 4
  %557 = ptrtoint ptr %arrayidx23.i141 to i32
  call void @__asan_load1_noabort(i32 %557)
  %558 = load i8, ptr %arrayidx23.i141, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %558)
  %cmp25.i142 = icmp eq i8 %558, -1
  br i1 %cmp25.i142, label %land.lhs.true27.i146, label %land.lhs.true21.i143.if.end34.i148_crit_edge

land.lhs.true21.i143.if.end34.i148_crit_edge:     ; preds = %land.lhs.true21.i143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i148

land.lhs.true27.i146:                             ; preds = %land.lhs.true21.i143
  %arrayidx29.i144 = getelementptr %struct.ieee_param_ex, ptr %call7.i, i32 0, i32 1, i32 5
  %559 = ptrtoint ptr %arrayidx29.i144 to i32
  call void @__asan_load1_noabort(i32 %559)
  %560 = load i8, ptr %arrayidx29.i144, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %560)
  %cmp31.i145 = icmp eq i8 %560, -1
  br i1 %cmp31.i145, label %land.lhs.true27.i146.sw.epilog.sink.split_crit_edge, label %land.lhs.true27.i146.if.end34.i148_crit_edge

land.lhs.true27.i146.if.end34.i148_crit_edge:     ; preds = %land.lhs.true27.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i148

land.lhs.true27.i146.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true27.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end34.i148:                                    ; preds = %land.lhs.true27.i146.if.end34.i148_crit_edge, %land.lhs.true21.i143.if.end34.i148_crit_edge, %land.lhs.true15.i140.if.end34.i148_crit_edge, %land.lhs.true9.i137.if.end34.i148_crit_edge, %land.lhs.true.i134.if.end34.i148_crit_edge, %if.end.i131.if.end34.i148_crit_edge
  %call37.i = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv.i124, ptr noundef %sta_addr.i129) #8
  %tobool.not.i147 = icmp eq ptr %call37.i, null
  br i1 %tobool.not.i147, label %if.end34.i148.sw.epilog.sink.split_crit_edge, label %if.then38.i150

if.end34.i148.sw.epilog.sink.split_crit_edge:     ; preds = %if.end34.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.then38.i150:                                   ; preds = %if.end34.i148
  call void @__sanitizer_cov_trace_pc() #10
  %aid.i = getelementptr inbounds %struct.sta_info, ptr %call37.i, i32 0, i32 9
  %561 = ptrtoint ptr %aid.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %aid.i, align 4
  %conv39.i = trunc i32 %562 to i16
  %563 = ptrtoint ptr %data.i125 to i32
  call void @__asan_store2_noabort(i32 %563)
  store i16 %conv39.i, ptr %data.i125, align 8
  %capability.i = getelementptr inbounds %struct.sta_info, ptr %call37.i, i32 0, i32 45
  %564 = ptrtoint ptr %capability.i to i32
  call void @__asan_load2_noabort(i32 %564)
  %565 = load i16, ptr %capability.i, align 4
  %capability41.i = getelementptr inbounds %struct.ieee_param_ex, ptr %call7.i, i32 1
  %566 = ptrtoint ptr %capability41.i to i32
  call void @__asan_store2_noabort(i32 %566)
  store i16 %565, ptr %capability41.i, align 2
  %flags.i = getelementptr inbounds %struct.sta_info, ptr %call37.i, i32 0, i32 46
  %567 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %flags.i, align 8
  %flags42.i = getelementptr inbounds %struct.sta_data, ptr %data.i125, i32 0, i32 2
  %569 = ptrtoint ptr %flags42.i to i32
  call void @__asan_store4_noabort(i32 %569)
  store i32 %568, ptr %flags42.i, align 4
  %nonerp_set.i = getelementptr inbounds %struct.sta_info, ptr %call37.i, i32 0, i32 55
  %570 = ptrtoint ptr %nonerp_set.i to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %nonerp_set.i, align 1
  %conv43.i = zext i8 %571 to i32
  %no_short_slot_time_set.i = getelementptr inbounds %struct.sta_info, ptr %call37.i, i32 0, i32 56
  %572 = ptrtoint ptr %no_short_slot_time_set.i to i32
  call void @__asan_load1_noabort(i32 %572)
  %573 = load i8, ptr %no_short_slot_time_set.i, align 2
  %conv44.i = zext i8 %573 to i32
  %shl.i = shl nuw nsw i32 %conv44.i, 1
  %or.i149 = or i32 %shl.i, %conv43.i
  %no_short_preamble_set.i = getelementptr inbounds %struct.sta_info, ptr %call37.i, i32 0, i32 57
  %574 = ptrtoint ptr %no_short_preamble_set.i to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %no_short_preamble_set.i, align 1
  %conv45.i = zext i8 %575 to i32
  %shl46.i = shl nuw nsw i32 %conv45.i, 2
  %or47.i = or i32 %or.i149, %shl46.i
  %no_ht_gf_set.i = getelementptr inbounds %struct.sta_info, ptr %call37.i, i32 0, i32 58
  %576 = ptrtoint ptr %no_ht_gf_set.i to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %no_ht_gf_set.i, align 8
  %conv48.i = zext i8 %577 to i32
  %shl49.i = shl nuw nsw i32 %conv48.i, 3
  %or50.i = or i32 %or47.i, %shl49.i
  %no_ht_set.i = getelementptr inbounds %struct.sta_info, ptr %call37.i, i32 0, i32 59
  %578 = ptrtoint ptr %no_ht_set.i to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %no_ht_set.i, align 1
  %conv51.i = zext i8 %579 to i32
  %shl52.i = shl nuw nsw i32 %conv51.i, 4
  %or53.i = or i32 %or50.i, %shl52.i
  %ht_20mhz_set.i = getelementptr inbounds %struct.sta_info, ptr %call37.i, i32 0, i32 60
  %580 = ptrtoint ptr %ht_20mhz_set.i to i32
  call void @__asan_load1_noabort(i32 %580)
  %581 = load i8, ptr %ht_20mhz_set.i, align 2
  %conv54.i = zext i8 %581 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 5
  %or56.i = or i32 %or53.i, %shl55.i
  %sta_set.i = getelementptr inbounds %struct.ieee_param_ex, ptr %call7.i, i32 1, i32 1, i32 2
  %582 = ptrtoint ptr %sta_set.i to i32
  call void @__asan_store4_noabort(i32 %582)
  store i32 %or56.i, ptr %sta_set.i, align 8
  %bssratelen.i = getelementptr inbounds %struct.sta_info, ptr %call37.i, i32 0, i32 22
  %583 = ptrtoint ptr %bssratelen.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load i32, ptr %bssratelen.i, align 8
  %tx_supp_rates_len.i = getelementptr inbounds %struct.sta_data, ptr %data.i125, i32 0, i32 5
  %585 = ptrtoint ptr %tx_supp_rates_len.i to i32
  call void @__asan_store4_noabort(i32 %585)
  store i32 %584, ptr %tx_supp_rates_len.i, align 4
  %tx_supp_rates.i = getelementptr inbounds %struct.ieee_param_ex, ptr %call7.i, i32 1, i32 2
  %bssrateset.i = getelementptr inbounds %struct.sta_info, ptr %call37.i, i32 0, i32 21
  %586 = load i32, ptr %bssratelen.i, align 8
  %587 = call ptr @memcpy(ptr %tx_supp_rates.i, ptr %bssrateset.i, i32 %586)
  %ht_cap.i = getelementptr inbounds %struct.ieee_param_ex, ptr %call7.i, i32 3, i32 1, i32 2
  %ht_cap60.i = getelementptr inbounds %struct.sta_info, ptr %call37.i, i32 0, i32 38, i32 15
  %588 = call ptr @memcpy(ptr %ht_cap.i, ptr %ht_cap60.i, i32 26)
  %rx_data_pkts.i = getelementptr inbounds %struct.sta_info, ptr %call37.i, i32 0, i32 34, i32 7
  %589 = ptrtoint ptr %rx_data_pkts.i to i32
  call void @__asan_load8_noabort(i32 %589)
  %590 = load i64, ptr %rx_data_pkts.i, align 8
  %rx_pkts.i = getelementptr inbounds %struct.sta_data, ptr %data.i125, i32 0, i32 7
  %591 = ptrtoint ptr %rx_pkts.i to i32
  call void @__asan_store8_noabort(i32 %591)
  store i64 %590, ptr %rx_pkts.i, align 8
  %rx_bytes.i = getelementptr inbounds %struct.sta_info, ptr %call37.i, i32 0, i32 34, i32 16
  %592 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %592)
  %593 = load i64, ptr %rx_bytes.i, align 8
  %rx_bytes62.i = getelementptr inbounds %struct.ieee_param_ex, ptr %call7.i, i32 6, i32 2
  %594 = ptrtoint ptr %rx_bytes62.i to i32
  call void @__asan_store8_noabort(i32 %594)
  store i64 %593, ptr %rx_bytes62.i, align 8
  %rx_drops.i = getelementptr inbounds %struct.sta_info, ptr %call37.i, i32 0, i32 34, i32 17
  %595 = ptrtoint ptr %rx_drops.i to i32
  call void @__asan_load8_noabort(i32 %595)
  %596 = load i64, ptr %rx_drops.i, align 8
  %rx_drops64.i = getelementptr inbounds %struct.ieee_param_ex, ptr %call7.i, i32 7, i32 1, i32 2
  %597 = ptrtoint ptr %rx_drops64.i to i32
  call void @__asan_store8_noabort(i32 %597)
  store i64 %596, ptr %rx_drops64.i, align 8
  %tx_pkts.i = getelementptr inbounds %struct.sta_info, ptr %call37.i, i32 0, i32 34, i32 18
  %598 = ptrtoint ptr %tx_pkts.i to i32
  call void @__asan_load8_noabort(i32 %598)
  %599 = load i64, ptr %tx_pkts.i, align 8
  %tx_pkts66.i = getelementptr inbounds %struct.sta_data, ptr %data.i125, i32 0, i32 10
  %600 = ptrtoint ptr %tx_pkts66.i to i32
  call void @__asan_store8_noabort(i32 %600)
  store i64 %599, ptr %tx_pkts66.i, align 8
  %tx_bytes.i = getelementptr inbounds %struct.sta_info, ptr %call37.i, i32 0, i32 34, i32 19
  %601 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %601)
  %602 = load i64, ptr %tx_bytes.i, align 8
  %tx_bytes68.i = getelementptr inbounds %struct.ieee_param_ex, ptr %call7.i, i32 8, i32 2
  %603 = ptrtoint ptr %tx_bytes68.i to i32
  call void @__asan_store8_noabort(i32 %603)
  store i64 %602, ptr %tx_bytes68.i, align 8
  %tx_drops.i = getelementptr inbounds %struct.sta_info, ptr %call37.i, i32 0, i32 34, i32 20
  %604 = ptrtoint ptr %tx_drops.i to i32
  call void @__asan_load8_noabort(i32 %604)
  %605 = load i64, ptr %tx_drops.i, align 8
  %tx_drops70.i = getelementptr inbounds %struct.ieee_param_ex, ptr %call7.i, i32 9, i32 1, i32 2
  %606 = ptrtoint ptr %tx_drops70.i to i32
  call void @__asan_store8_noabort(i32 %606)
  store i64 %605, ptr %tx_drops70.i, align 8
  br label %land.lhs.true.i46

sw.bb52.i:                                        ; preds = %if.end17.i
  %607 = ptrtoint ptr %add.ptr.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %add.ptr.i.i139.i, align 4
  %fw_state.i.i.i = getelementptr inbounds %struct.adapter, ptr %608, i32 0, i32 4, i32 1
  %609 = ptrtoint ptr %fw_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load i32, ptr %fw_state.i.i.i, align 4
  %and.i.i.i = and i32 %610, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.not.i.i, label %sw.bb52.i.sw.epilog.sink.split_crit_edge, label %if.end.i.i

sw.bb52.i.sw.epilog.sink.split_crit_edge:         ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end.i.i:                                       ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #10
  %u.i.i = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 2
  %611 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %u.i.i, align 4
  tail call void @rtw_set_macaddr_acl(ptr noundef %608, i32 noundef %612) #8
  br label %land.lhs.true.i46

sw.bb56.i:                                        ; preds = %if.end17.i
  %613 = ptrtoint ptr %add.ptr.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %add.ptr.i.i139.i, align 4
  %fw_state.i.i100 = getelementptr inbounds %struct.adapter, ptr %614, i32 0, i32 4, i32 1
  %615 = ptrtoint ptr %fw_state.i.i100 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %fw_state.i.i100, align 4
  %and.i.i101 = and i32 %616, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i101)
  %tobool.not.i.not.i102 = icmp eq i32 %and.i.i101, 0
  br i1 %tobool.not.i.not.i102, label %sw.bb56.i.sw.epilog.sink.split_crit_edge, label %if.end.i105

sw.bb56.i.sw.epilog.sink.split_crit_edge:         ; preds = %sw.bb56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end.i105:                                      ; preds = %sw.bb56.i
  %sta_addr.i103 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 1
  %617 = ptrtoint ptr %sta_addr.i103 to i32
  call void @__asan_load1_noabort(i32 %617)
  %618 = load i8, ptr %sta_addr.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %618)
  %cmp2.i104 = icmp eq i8 %618, -1
  br i1 %cmp2.i104, label %land.lhs.true.i108, label %if.end.i105.if.end34.i121_crit_edge

if.end.i105.if.end34.i121_crit_edge:              ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i121

land.lhs.true.i108:                               ; preds = %if.end.i105
  %arrayidx5.i106 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 1
  %619 = ptrtoint ptr %arrayidx5.i106 to i32
  call void @__asan_load1_noabort(i32 %619)
  %620 = load i8, ptr %arrayidx5.i106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %620)
  %cmp7.i107 = icmp eq i8 %620, -1
  br i1 %cmp7.i107, label %land.lhs.true9.i111, label %land.lhs.true.i108.if.end34.i121_crit_edge

land.lhs.true.i108.if.end34.i121_crit_edge:       ; preds = %land.lhs.true.i108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i121

land.lhs.true9.i111:                              ; preds = %land.lhs.true.i108
  %arrayidx11.i109 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 2
  %621 = ptrtoint ptr %arrayidx11.i109 to i32
  call void @__asan_load1_noabort(i32 %621)
  %622 = load i8, ptr %arrayidx11.i109, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %622)
  %cmp13.i110 = icmp eq i8 %622, -1
  br i1 %cmp13.i110, label %land.lhs.true15.i114, label %land.lhs.true9.i111.if.end34.i121_crit_edge

land.lhs.true9.i111.if.end34.i121_crit_edge:      ; preds = %land.lhs.true9.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i121

land.lhs.true15.i114:                             ; preds = %land.lhs.true9.i111
  %arrayidx17.i112 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 3
  %623 = ptrtoint ptr %arrayidx17.i112 to i32
  call void @__asan_load1_noabort(i32 %623)
  %624 = load i8, ptr %arrayidx17.i112, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %624)
  %cmp19.i113 = icmp eq i8 %624, -1
  br i1 %cmp19.i113, label %land.lhs.true21.i117, label %land.lhs.true15.i114.if.end34.i121_crit_edge

land.lhs.true15.i114.if.end34.i121_crit_edge:     ; preds = %land.lhs.true15.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i121

land.lhs.true21.i117:                             ; preds = %land.lhs.true15.i114
  %arrayidx23.i115 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 4
  %625 = ptrtoint ptr %arrayidx23.i115 to i32
  call void @__asan_load1_noabort(i32 %625)
  %626 = load i8, ptr %arrayidx23.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %626)
  %cmp25.i116 = icmp eq i8 %626, -1
  br i1 %cmp25.i116, label %land.lhs.true27.i120, label %land.lhs.true21.i117.if.end34.i121_crit_edge

land.lhs.true21.i117.if.end34.i121_crit_edge:     ; preds = %land.lhs.true21.i117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i121

land.lhs.true27.i120:                             ; preds = %land.lhs.true21.i117
  %arrayidx29.i118 = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 5
  %627 = ptrtoint ptr %arrayidx29.i118 to i32
  call void @__asan_load1_noabort(i32 %627)
  %628 = load i8, ptr %arrayidx29.i118, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %628)
  %cmp31.i119 = icmp eq i8 %628, -1
  br i1 %cmp31.i119, label %land.lhs.true27.i120.sw.epilog.sink.split_crit_edge, label %land.lhs.true27.i120.if.end34.i121_crit_edge

land.lhs.true27.i120.if.end34.i121_crit_edge:     ; preds = %land.lhs.true27.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i121

land.lhs.true27.i120.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true27.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end34.i121:                                    ; preds = %land.lhs.true27.i120.if.end34.i121_crit_edge, %land.lhs.true21.i117.if.end34.i121_crit_edge, %land.lhs.true15.i114.if.end34.i121_crit_edge, %land.lhs.true9.i111.if.end34.i121_crit_edge, %land.lhs.true.i108.if.end34.i121_crit_edge, %if.end.i105.if.end34.i121_crit_edge
  %call36.i = tail call i32 @rtw_acl_add_sta(ptr noundef %614, ptr noundef %sta_addr.i103) #8
  br label %sw.epilog.i45

sw.bb60.i:                                        ; preds = %if.end17.i
  %629 = ptrtoint ptr %add.ptr.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %add.ptr.i.i139.i, align 4
  %fw_state.i.i91 = getelementptr inbounds %struct.adapter, ptr %630, i32 0, i32 4, i32 1
  %631 = ptrtoint ptr %fw_state.i.i91 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load i32, ptr %fw_state.i.i91, align 4
  %and.i.i92 = and i32 %632, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i92)
  %tobool.not.i.not.i93 = icmp eq i32 %and.i.i92, 0
  br i1 %tobool.not.i.not.i93, label %sw.bb60.i.sw.epilog.sink.split_crit_edge, label %if.end.i95

sw.bb60.i.sw.epilog.sink.split_crit_edge:         ; preds = %sw.bb60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end.i95:                                       ; preds = %sw.bb60.i
  %sta_addr.i94 = getelementptr inbounds %struct.ieee_param, ptr %call7.i, i32 0, i32 1
  %633 = ptrtoint ptr %sta_addr.i94 to i32
  call void @__asan_load1_noabort(i32 %633)
  %634 = load i8, ptr %sta_addr.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %634)
  %cmp2.i = icmp eq i8 %634, -1
  br i1 %cmp2.i, label %land.lhs.true.i97, label %if.end.i95.if.end34.i_crit_edge

if.end.i95.if.end34.i_crit_edge:                  ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true.i97:                                ; preds = %if.end.i95
  %arrayidx5.i = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 1
  %635 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %635)
  %636 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %636)
  %cmp7.i96 = icmp eq i8 %636, -1
  br i1 %cmp7.i96, label %land.lhs.true9.i, label %land.lhs.true.i97.if.end34.i_crit_edge

land.lhs.true.i97.if.end34.i_crit_edge:           ; preds = %land.lhs.true.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i97
  %arrayidx11.i = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 2
  %637 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %637)
  %638 = load i8, ptr %arrayidx11.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %638)
  %cmp13.i = icmp eq i8 %638, -1
  br i1 %cmp13.i, label %land.lhs.true15.i, label %land.lhs.true9.i.if.end34.i_crit_edge

land.lhs.true9.i.if.end34.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true15.i:                                ; preds = %land.lhs.true9.i
  %arrayidx17.i = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 3
  %639 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %639)
  %640 = load i8, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %640)
  %cmp19.i = icmp eq i8 %640, -1
  br i1 %cmp19.i, label %land.lhs.true21.i, label %land.lhs.true15.i.if.end34.i_crit_edge

land.lhs.true15.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true21.i:                                ; preds = %land.lhs.true15.i
  %arrayidx23.i = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 4
  %641 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %641)
  %642 = load i8, ptr %arrayidx23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %642)
  %cmp25.i = icmp eq i8 %642, -1
  br i1 %cmp25.i, label %land.lhs.true27.i, label %land.lhs.true21.i.if.end34.i_crit_edge

land.lhs.true21.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true27.i:                                ; preds = %land.lhs.true21.i
  %arrayidx29.i = getelementptr %struct.ieee_param, ptr %call7.i, i32 0, i32 1, i32 5
  %643 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %643)
  %644 = load i8, ptr %arrayidx29.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %644)
  %cmp31.i = icmp eq i8 %644, -1
  br i1 %cmp31.i, label %land.lhs.true27.i.sw.epilog.sink.split_crit_edge, label %land.lhs.true27.i.if.end34.i_crit_edge

land.lhs.true27.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true27.i.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end34.i:                                       ; preds = %land.lhs.true27.i.if.end34.i_crit_edge, %land.lhs.true21.i.if.end34.i_crit_edge, %land.lhs.true15.i.if.end34.i_crit_edge, %land.lhs.true9.i.if.end34.i_crit_edge, %land.lhs.true.i97.if.end34.i_crit_edge, %if.end.i95.if.end34.i_crit_edge
  tail call void @rtw_acl_remove_sta(ptr noundef %630, ptr noundef %sta_addr.i94) #8
  br label %land.lhs.true.i46

sw.epilog.i45:                                    ; preds = %if.end34.i121, %rtw_set_hidden_ssid.exit, %rtw_set_wps_beacon.exit, %rtw_set_encryption.exit
  %ret.0.i44 = phi i32 [ %retval.0.i161, %rtw_set_hidden_ssid.exit ], [ %retval.0.i197, %rtw_set_wps_beacon.exit ], [ %ret.0.i281, %rtw_set_encryption.exit ], [ %call36.i, %if.end34.i121 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i44)
  %cmp64.i = icmp eq i32 %ret.0.i44, 0
  br i1 %cmp64.i, label %sw.epilog.i45.land.lhs.true.i46_crit_edge, label %sw.epilog.i45.sw.epilog.sink.split_crit_edge

sw.epilog.i45.sw.epilog.sink.split_crit_edge:     ; preds = %sw.epilog.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.i45.land.lhs.true.i46_crit_edge:        ; preds = %sw.epilog.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i46

land.lhs.true.i46:                                ; preds = %sw.epilog.i45.land.lhs.true.i46_crit_edge, %if.end34.i, %if.end.i.i, %if.then38.i150, %if.end10.i170, %if.end.i166.land.lhs.true.i46_crit_edge, %if.end10.i183, %if.end.i178.land.lhs.true.i46_crit_edge, %if.then47.i, %if.then37.i.land.lhs.true.i46_crit_edge, %if.end.i291.land.lhs.true.i46_crit_edge, %if.end44.i, %if.end34.i318.land.lhs.true.i46_crit_edge, %if.end74.i357, %sw.bb.i37
  %645 = ptrtoint ptr %u2 to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %u2, align 4
  %647 = ptrtoint ptr %length.i8 to i32
  call void @__asan_load2_noabort(i32 %647)
  %648 = load i16, ptr %length.i8, align 4
  %conv68.i = zext i16 %648 to i32
  call void @__check_object_size(ptr noundef nonnull %call7.i, i32 noundef %conv68.i, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #8
  %call.i.i132.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i132.i, label %land.lhs.true.i46.copy_to_user.exit.i50_crit_edge, label %if.end.i.i136.i

land.lhs.true.i46.copy_to_user.exit.i50_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i50

if.end.i.i136.i:                                  ; preds = %land.lhs.true.i46
  %649 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %646, i32 %conv68.i, i32 -1226833920) #11, !srcloc !32
  %asmresult.i.i134.i = extractvalue { i32, i32 } %649, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i134.i)
  %cmp.i6.i135.i = icmp eq i32 %asmresult.i.i134.i, 0
  br i1 %cmp.i6.i135.i, label %if.then2.i.i.i48, label %if.end.i.i136.i.copy_to_user.exit.i50_crit_edge

if.end.i.i136.i.copy_to_user.exit.i50_crit_edge:  ; preds = %if.end.i.i136.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i50

if.then2.i.i.i48:                                 ; preds = %if.end.i.i136.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i137.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef %conv68.i) #8
  %call.i12.i.i.i47 = call i32 @arm_copy_to_user(ptr noundef %646, ptr noundef nonnull %call7.i, i32 noundef %conv68.i) #8
  br label %copy_to_user.exit.i50

copy_to_user.exit.i50:                            ; preds = %if.then2.i.i.i48, %if.end.i.i136.i.copy_to_user.exit.i50_crit_edge, %land.lhs.true.i46.copy_to_user.exit.i50_crit_edge
  %n.addr.0.i138.i = phi i32 [ %conv68.i, %land.lhs.true.i46.copy_to_user.exit.i50_crit_edge ], [ %call.i12.i.i.i47, %if.then2.i.i.i48 ], [ %conv68.i, %if.end.i.i136.i.copy_to_user.exit.i50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i138.i)
  %tobool70.not.i = icmp eq i32 %n.addr.0.i138.i, 0
  %spec.select.i49 = select i1 %tobool70.not.i, i32 0, i32 -14
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %copy_to_user.exit.i50, %sw.epilog.i45.sw.epilog.sink.split_crit_edge, %land.lhs.true27.i.sw.epilog.sink.split_crit_edge, %sw.bb60.i.sw.epilog.sink.split_crit_edge, %land.lhs.true27.i120.sw.epilog.sink.split_crit_edge, %sw.bb56.i.sw.epilog.sink.split_crit_edge, %sw.bb52.i.sw.epilog.sink.split_crit_edge, %if.end34.i148.sw.epilog.sink.split_crit_edge, %land.lhs.true27.i146.sw.epilog.sink.split_crit_edge, %sw.bb48.i.sw.epilog.sink.split_crit_edge, %if.then5.i168.sw.epilog.sink.split_crit_edge, %sw.bb40.i.sw.epilog.sink.split_crit_edge, %if.then5.i181.sw.epilog.sink.split_crit_edge, %sw.bb36.i.sw.epilog.sink.split_crit_edge, %if.end34.i223.sw.epilog.sink.split_crit_edge, %land.lhs.true27.i220.sw.epilog.sink.split_crit_edge, %sw.bb30.i.sw.epilog.sink.split_crit_edge, %if.end.i291.sw.epilog.sink.split_crit_edge, %sw.bb22.i41.sw.epilog.sink.split_crit_edge, %land.lhs.true27.i315.sw.epilog.sink.split_crit_edge, %sw.bb20.i.sw.epilog.sink.split_crit_edge, %if.end34.i348.sw.epilog.sink.split_crit_edge, %land.lhs.true27.i345.sw.epilog.sink.split_crit_edge, %sw.bb18.i.sw.epilog.sink.split_crit_edge, %if.end17.i.sw.epilog.sink.split_crit_edge, %if.then11.i.i.i36, %copy_to_user.exit.i, %sw.epilog.i.sw.epilog.sink.split_crit_edge, %sw.bb26.i.sw.epilog.sink.split_crit_edge, %if.then57.i.sw.epilog.sink.split_crit_edge, %if.else14.i.i.sw.epilog.sink.split_crit_edge, %sw.bb.i.sw.epilog.sink.split_crit_edge, %if.end13.i.sw.epilog.sink.split_crit_edge, %if.then11.i.i.i
  %call7.i.sink = phi ptr [ %call.i, %sw.bb.i.sw.epilog.sink.split_crit_edge ], [ %call.i, %if.then57.i.sw.epilog.sink.split_crit_edge ], [ %call.i, %if.else14.i.i.sw.epilog.sink.split_crit_edge ], [ %call.i, %copy_to_user.exit.i ], [ %call.i, %sw.epilog.i.sw.epilog.sink.split_crit_edge ], [ %call.i, %sw.bb26.i.sw.epilog.sink.split_crit_edge ], [ %call.i, %if.end13.i.sw.epilog.sink.split_crit_edge ], [ %call.i, %if.then11.i.i.i ], [ %call7.i, %land.lhs.true27.i.sw.epilog.sink.split_crit_edge ], [ %call7.i, %sw.bb60.i.sw.epilog.sink.split_crit_edge ], [ %call7.i, %land.lhs.true27.i120.sw.epilog.sink.split_crit_edge ], [ %call7.i, %sw.bb56.i.sw.epilog.sink.split_crit_edge ], [ %call7.i, %if.end34.i148.sw.epilog.sink.split_crit_edge ], [ %call7.i, %land.lhs.true27.i146.sw.epilog.sink.split_crit_edge ], [ %call7.i, %sw.bb48.i.sw.epilog.sink.split_crit_edge ], [ %call7.i, %if.then5.i168.sw.epilog.sink.split_crit_edge ], [ %call7.i, %sw.bb40.i.sw.epilog.sink.split_crit_edge ], [ %call7.i, %if.then5.i181.sw.epilog.sink.split_crit_edge ], [ %call7.i, %sw.bb36.i.sw.epilog.sink.split_crit_edge ], [ %call7.i, %if.end34.i223.sw.epilog.sink.split_crit_edge ], [ %call7.i, %land.lhs.true27.i220.sw.epilog.sink.split_crit_edge ], [ %call7.i, %sw.bb30.i.sw.epilog.sink.split_crit_edge ], [ %call7.i, %sw.bb22.i41.sw.epilog.sink.split_crit_edge ], [ %call7.i, %if.end.i291.sw.epilog.sink.split_crit_edge ], [ %call7.i, %land.lhs.true27.i315.sw.epilog.sink.split_crit_edge ], [ %call7.i, %sw.bb20.i.sw.epilog.sink.split_crit_edge ], [ %call7.i, %if.end34.i348.sw.epilog.sink.split_crit_edge ], [ %call7.i, %land.lhs.true27.i345.sw.epilog.sink.split_crit_edge ], [ %call7.i, %sw.bb18.i.sw.epilog.sink.split_crit_edge ], [ %call7.i, %copy_to_user.exit.i50 ], [ %call7.i, %sw.epilog.i45.sw.epilog.sink.split_crit_edge ], [ %call7.i, %sw.bb52.i.sw.epilog.sink.split_crit_edge ], [ %call7.i, %if.end17.i.sw.epilog.sink.split_crit_edge ], [ %call7.i, %if.then11.i.i.i36 ]
  %ret.0.ph = phi i32 [ -95, %sw.bb.i.sw.epilog.sink.split_crit_edge ], [ -22, %if.then57.i.sw.epilog.sink.split_crit_edge ], [ -22, %if.else14.i.i.sw.epilog.sink.split_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ], [ %ret.0.i, %sw.epilog.i.sw.epilog.sink.split_crit_edge ], [ -95, %sw.bb26.i.sw.epilog.sink.split_crit_edge ], [ -95, %if.end13.i.sw.epilog.sink.split_crit_edge ], [ -14, %if.then11.i.i.i ], [ -22, %land.lhs.true27.i.sw.epilog.sink.split_crit_edge ], [ -22, %sw.bb60.i.sw.epilog.sink.split_crit_edge ], [ -22, %land.lhs.true27.i120.sw.epilog.sink.split_crit_edge ], [ -22, %sw.bb56.i.sw.epilog.sink.split_crit_edge ], [ -1, %if.end34.i148.sw.epilog.sink.split_crit_edge ], [ -22, %land.lhs.true27.i146.sw.epilog.sink.split_crit_edge ], [ -22, %sw.bb48.i.sw.epilog.sink.split_crit_edge ], [ -22, %if.then5.i168.sw.epilog.sink.split_crit_edge ], [ -22, %sw.bb40.i.sw.epilog.sink.split_crit_edge ], [ -22, %if.then5.i181.sw.epilog.sink.split_crit_edge ], [ -22, %sw.bb36.i.sw.epilog.sink.split_crit_edge ], [ -1, %if.end34.i223.sw.epilog.sink.split_crit_edge ], [ -22, %land.lhs.true27.i220.sw.epilog.sink.split_crit_edge ], [ -22, %sw.bb30.i.sw.epilog.sink.split_crit_edge ], [ -22, %sw.bb22.i41.sw.epilog.sink.split_crit_edge ], [ -22, %if.end.i291.sw.epilog.sink.split_crit_edge ], [ -22, %land.lhs.true27.i315.sw.epilog.sink.split_crit_edge ], [ -22, %sw.bb20.i.sw.epilog.sink.split_crit_edge ], [ -12, %if.end34.i348.sw.epilog.sink.split_crit_edge ], [ -22, %land.lhs.true27.i345.sw.epilog.sink.split_crit_edge ], [ -22, %sw.bb18.i.sw.epilog.sink.split_crit_edge ], [ %spec.select.i49, %copy_to_user.exit.i50 ], [ %ret.0.i44, %sw.epilog.i45.sw.epilog.sink.split_crit_edge ], [ -22, %sw.bb52.i.sw.epilog.sink.split_crit_edge ], [ -95, %if.end17.i.sw.epilog.sink.split_crit_edge ], [ -14, %if.then11.i.i.i36 ]
  call void @kfree(ptr noundef nonnull %call7.i.sink) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end4.i.sw.epilog_crit_edge, %lor.lhs.false.i10.sw.epilog_crit_edge, %if.end.i7.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %lor.lhs.false.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ -22, %lor.lhs.false.i.sw.epilog_crit_edge ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ -12, %if.end.i.sw.epilog_crit_edge ], [ -1, %sw.bb1.sw.epilog_crit_edge ], [ -22, %lor.lhs.false.i10.sw.epilog_crit_edge ], [ -22, %if.end.i7.sw.epilog_crit_edge ], [ -12, %if.end4.i.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_zmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_parse_wpa_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_parse_wpa2_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_set_802_11_add_wep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_set_key(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_setstakey_cmd(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_bcmc_stainfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_set_802_11_disassociate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_all_cam_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sta_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_sta_info_apmode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ap_free_sta(ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @associated_clients_update(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_check_beacon_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_ap_set_wep_key(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_ap_set_group_key(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_ap_set_pairwise_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_beacon(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_ie(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_set_macaddr_acl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_acl_add_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_acl_remove_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15}
!llvm.named.register.sp = !{!17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_linux.c", i32 78, i32 33}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_linux.c", i32 146, i32 36}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_linux.c", i32 157, i32 37}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_linux.c", i32 168, i32 80}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8723bs/os_dep/ioctl_linux.c", i32 180, i32 44}
!17 = !{!"sp"}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2152376129, i64 2152376154}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i64 4871684}
!30 = !{i64 4871881}
!31 = !{i64 2152357114}
!32 = !{i64 2152376810, i64 2152376835}
!33 = !{!"auto-init"}
