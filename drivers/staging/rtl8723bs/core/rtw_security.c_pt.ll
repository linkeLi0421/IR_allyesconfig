; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/core/rtw_security.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/core/rtw_security.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%union.anon.132 = type { i32 }
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
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8, ptr, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %union.Keytype, %union.Keytype, i8 }
%struct.recv_frame_hdr = type { %struct.list_head, ptr, ptr, ptr, i8, i32, %struct.rx_pkt_attrib, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rx_pkt_attrib = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, [2 x i32], %struct.phy_info }
%struct.phy_info = type { i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i16], [4 x i16], i8, i8, i8, i8, [4 x i8], [4 x i8], i8, i8 }
%struct.mic_data = type { i32, i32, i32, i32, i32, i32 }
%union.anon.134 = type { i32 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }

@_security_type_str = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [60 x i8] zeroinitializer }, align 32
@rtw_tkip_decrypt.start = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rtw_tkip_decrypt.no_gkey_bc_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rtw_tkip_decrypt.no_gkey_mc_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rtw_tkip_decrypt.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8723bs\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtw_tkip_decrypt\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/staging/rtl8723bs/core/rtw_security.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(%s) no_gkey_bc_cnt:%u, no_gkey_mc_cnt:%u\0A\00", [51 x i8] zeroinitializer }, align 32
@rtw_tkip_decrypt.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s(%s) gkey installed. no_gkey_bc_cnt:%u, no_gkey_mc_cnt:%u\0A\00", [35 x i8] zeroinitializer }, align 32
@rtw_aes_decrypt.start = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rtw_aes_decrypt.no_gkey_bc_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rtw_aes_decrypt.no_gkey_mc_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rtw_aes_decrypt.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 1, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw_aes_decrypt\00", [16 x i8] zeroinitializer }, align 32
@rtw_aes_decrypt.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.4, i8 1, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw_handle_tkip_countermeasure.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 1, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtw_handle_tkip_countermeasure\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(%s) countermeasure time:%lus > 60s\0A\00", [57 x i8] zeroinitializer }, align 32
@rtw_handle_tkip_countermeasure.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 1, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(%s) countermeasure time:%lus < 60s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WEP40\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TKIP\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TKIP_WM\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AES\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WEP104\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SMS4\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WEP_WPA\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BIP\00", [28 x i8] zeroinitializer }, align 32
@Sbox1 = internal constant { [2 x [256 x i16]], [256 x i8] } { [2 x [256 x i16]] [[256 x i16] [i16 -14683, i16 -1916, i16 -4455, i16 -2419, i16 -243, i16 -10563, i16 -8527, i16 -28332, i16 24656, i16 515, i16 -12631, i16 22141, i16 -6375, i16 -19102, i16 19942, i16 -4966, i16 -28859, i16 8093, i16 -30400, i16 -1401, i16 -4331, i16 -19733, i16 -28983, i16 -1269, i16 16876, i16 -19609, i16 24573, i16 17898, i16 9151, i16 21495, i16 -7018, i16 -25765, i16 30146, i16 -7908, i16 15790, i16 19562, i16 27738, i16 32321, i16 -2814, i16 -31921, i16 26716, i16 20980, i16 -11980, i16 -1784, i16 -7533, i16 -21645, i16 25171, i16 10815, i16 2060, i16 -27310, i16 18021, i16 -25250, i16 12328, i16 14241, i16 2575, i16 12213, i16 3593, i16 9270, i16 7067, i16 -8387, i16 -13018, i16 20073, i16 32717, i16 -5473, i16 4635, i16 7582, i16 22644, i16 13358, i16 13869, i16 -9038, i16 -19218, i16 23547, i16 -23306, i16 30285, i16 -18591, i16 32206, i16 21115, i16 -8898, i16 24177, i16 5015, i16 -22795, i16 -18072, i16 0, i16 -16084, i16 16480, i16 -7393, i16 31176, i16 -18707, i16 -11074, i16 -29370, i16 26585, i16 29259, i16 -27426, i16 -26412, i16 -20248, i16 -31414, i16 -17557, i16 -15062, i16 20453, i16 -4842, i16 -31035, i16 -25897, i16 26197, i16 4500, i16 -30001, i16 -5872, i16 1030, i16 -383, i16 -24336, i16 30788, i16 9658, i16 19427, i16 -23821, i16 24062, i16 -32576, i16 1418, i16 16301, i16 8636, i16 28744, i16 -3836, i16 25567, i16 30657, i16 -20619, i16 16995, i16 8240, i16 -6886, i16 -754, i16 -16531, i16 -32436, i16 6164, i16 9781, i16 -15569, i16 -16671, i16 13730, i16 -30516, i16 11833, i16 -27817, i16 22002, i16 -894, i16 31303, i16 -14164, i16 -17689, i16 12843, i16 -6507, i16 -16224, i16 6552, i16 -24879, i16 -23681, i16 17510, i16 21630, i16 15275, i16 2947, i16 -29494, i16 -14551, i16 27603, i16 10300, i16 -22663, i16 -17182, i16 5661, i16 -21130, i16 -9413, i16 25686, i16 29774, i16 5150, i16 -27941, i16 3082, i16 18540, i16 -18204, i16 -24739, i16 -17042, i16 17391, i16 -15194, i16 14760, i16 12708, i16 -11465, i16 -3445, i16 -10958, i16 -29885, i16 28249, i16 -9545, i16 396, i16 -20124, i16 -25390, i16 18912, i16 -10060, i16 -21254, i16 -3321, i16 -12507, i16 -13649, i16 -2930, i16 18409, i16 4120, i16 28629, i16 -3960, i16 19055, i16 23666, i16 14372, i16 22513, i16 29639, i16 -26799, i16 -13533, i16 -24196, i16 -5988, i16 15905, i16 -26915, i16 25052, i16 3462, i16 3973, i16 -8048, i16 31810, i16 29124, i16 -13142, i16 -28456, i16 1541, i16 -2303, i16 7186, i16 -15709, i16 27231, i16 -20743, i16 27088, i16 6033, i16 -26280, i16 14887, i16 10169, i16 -9928, i16 -5357, i16 11187, i16 8755, i16 -11589, i16 -22160, i16 1929, i16 13223, i16 11702, i16 15394, i16 5522, i16 -14048, i16 -30903, i16 -21761, i16 20600, i16 -23174, i16 911, i16 23032, i16 2432, i16 6679, i16 26074, i16 -10447, i16 -31546, i16 -12104, i16 -32061, i16 10672, i16 23159, i16 7697, i16 31691, i16 -22276, i16 28118, i16 11322], [256 x i16] [i16 -23098, i16 -31496, i16 -26130, i16 -29194, i16 3583, i16 -16938, i16 -20002, i16 21649, i16 20576, i16 770, i16 -22066, i16 32086, i16 6631, i16 25269, i16 -6579, i16 -25876, i16 17807, i16 -25313, i16 16521, i16 -30726, i16 5615, i16 -5198, i16 -13938, i16 3067, i16 -5055, i16 26547, i16 -673, i16 -5563, i16 -16605, i16 -2221, i16 -26908, i16 23451, i16 -15755, i16 7393, i16 -20931, i16 27212, i16 23148, i16 16766, i16 757, i16 20355, i16 23656, i16 -2991, i16 13521, i16 2297, i16 -27678, i16 29611, i16 21346, i16 16170, i16 3080, i16 21141, i16 25926, i16 24221, i16 10288, i16 -24265, i16 3850, i16 -19153, i16 2318, i16 13860, i16 -25829, i16 15839, i16 9933, i16 26958, i16 -12929, i16 -24598, i16 6930, i16 -25059, i16 29784, i16 11828, i16 11574, i16 -19748, i16 -4428, i16 -1189, i16 -2396, i16 19830, i16 25015, i16 -12675, i16 31570, i16 16093, i16 29022, i16 -26861, i16 -2650, i16 26809, i16 0, i16 11457, i16 24640, i16 8163, i16 -14215, i16 -4682, i16 -16684, i16 18061, i16 -9881, i16 19314, i16 -8556, i16 -11112, i16 -5968, i16 19077, i16 27579, i16 10949, i16 -6833, i16 5869, i16 -14970, i16 -10342, i16 21862, i16 -27631, i16 -12406, i16 4329, i16 1540, i16 -32258, i16 -3936, i16 17528, i16 -17883, i16 -7349, i16 -3166, i16 -419, i16 -16256, i16 -30203, i16 -21185, i16 -17375, i16 18544, i16 1265, i16 -8349, i16 -16009, i16 30127, i16 25410, i16 12320, i16 6885, i16 3837, i16 28095, i16 19585, i16 5144, i16 13606, i16 12227, i16 -7746, i16 -24011, i16 -13176, i16 14638, i16 22419, i16 -3499, i16 -32004, i16 18298, i16 -21304, i16 -6214, i16 11058, i16 -27162, i16 -24384, i16 -26599, i16 -11874, i16 32675, i16 26180, i16 32340, i16 -21701, i16 -31989, i16 -13684, i16 10695, i16 -11413, i16 15400, i16 31143, i16 -7492, i16 7446, i16 30381, i16 15323, i16 22116, i16 20084, i16 7700, i16 -9326, i16 2572, i16 27720, i16 -6984, i16 23967, i16 28349, i16 -4285, i16 -22844, i16 -22471, i16 -23503, i16 14291, i16 -29710, i16 13013, i16 17291, i16 22894, i16 -18470, i16 -29695, i16 25777, i16 -11620, i16 -8119, i16 -19240, i16 -1364, i16 2035, i16 9679, i16 -20534, i16 -28940, i16 -5817, i16 6160, i16 -10897, i16 -30480, i16 28490, i16 29276, i16 9272, i16 -3753, i16 -14477, i16 20887, i16 9163, i16 31905, i16 -25368, i16 8510, i16 -8810, i16 -9119, i16 -31219, i16 -31473, i16 -28448, i16 17020, i16 -15247, i16 -21812, i16 -10096, i16 1286, i16 503, i16 4636, i16 -23614, i16 24426, i16 -1618, i16 -12183, i16 -28393, i16 22681, i16 10042, i16 -18137, i16 14553, i16 5099, i16 -19669, i16 13090, i16 -17454, i16 28841, i16 -30457, i16 -22733, i16 -18899, i16 8764, i16 -28139, i16 8393, i16 18823, i16 -86, i16 30800, i16 31397, i16 -28925, i16 -1959, i16 -32759, i16 5914, i16 -9627, i16 12759, i16 -14716, i16 -18224, i16 -15486, i16 -20439, i16 30554, i16 4382, i16 -13445, i16 -856, i16 -10643, i16 14892]], [256 x i8] zeroinitializer }, align 32
@aes_decipher.message = internal global { [2048 x i8], [512 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 5]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 5]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"_security_type_str\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 12, i32 27 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 558, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 559, i32 16 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 560, i32 16 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 575, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 589, i32 6 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1309, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"no_gkey_bc_cnt\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1310, i32 16 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"no_gkey_mc_cnt\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1311, i32 16 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1326, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1578, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1585, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 13, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 14, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 15, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 16, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 17, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 18, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 19, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 20, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 21, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [6 x i8] c"Sbox1\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 273, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@___asan_gen_.99 = private constant [49 x i8] c"../drivers/staging/rtl8723bs/core/rtw_security.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1079, i32 12 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @_security_type_str, ptr @rtw_tkip_decrypt.start, ptr @rtw_tkip_decrypt.no_gkey_bc_cnt, ptr @rtw_tkip_decrypt.no_gkey_mc_cnt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rtw_aes_decrypt.start, ptr @rtw_aes_decrypt.no_gkey_bc_cnt, ptr @rtw_aes_decrypt.no_gkey_mc_cnt, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @Sbox1, ptr @aes_decipher.message], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_security_type_str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_tkip_decrypt.start to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_tkip_decrypt.no_gkey_bc_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_tkip_decrypt.no_gkey_mc_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_aes_decrypt.start to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_aes_decrypt.no_gkey_bc_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_aes_decrypt.no_gkey_mc_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Sbox1 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_decipher.message to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @security_type_str(i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %value)
  %cmp = icmp ult i8 %value, 9
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %value to i32
  %arrayidx = getelementptr [9 x ptr], ptr @_security_type_str, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.then ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_wep_encrypt(ptr noundef %padapter, ptr nocapture noundef readonly %pxmitframe) local_unnamed_addr #1 align 64 {
entry:
  %crc = alloca %union.anon.132, align 4
  %wepkey = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc) #12
  %0 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %crc, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wepkey) #12
  %1 = getelementptr inbounds [16 x i8], ptr %wepkey, i32 0, i32 3
  %xmit_arc4_ctx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 25
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 5
  %2 = call ptr @memset(ptr %wepkey, i32 255, i32 16)
  %3 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf_addr, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %encrypt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 11
  %5 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %encrypt, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %if.end.cleanup_crit_edge [
    i8 1, label %if.end.if.then8_crit_edge
    i8 5, label %if.end.if.then8_crit_edge127
  ]

if.end.if.then8_crit_edge127:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end.if.then8_crit_edge127
  %dot11PrivacyKeyIndex = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 2
  %8 = ptrtoint ptr %dot11PrivacyKeyIndex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dot11PrivacyKeyIndex, align 8
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 4, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %nr_frags = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 10
  %12 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nr_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp10123.not = icmp eq i8 %13, 0
  br i1 %cmp10123.not, label %if.then8.cleanup_crit_edge, label %for.body.lr.ph

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then8
  %conv9122 = zext i8 %13 to i32
  %add.ptr = getelementptr i8, ptr %4, i32 40
  %hdrlen = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 7
  %iv_len = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 12
  %frag_len = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 16
  %icv_len46 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 13
  %add52 = add i32 %11, 3
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv9126 = phi i32 [ %conv9122, %for.body.lr.ph ], [ %conv9, %for.inc.for.body_crit_edge ]
  %pframe.0125 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %pframe.1, %for.inc.for.body_crit_edge ]
  %curfragnum.0124 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hdrlen, align 2
  %conv12 = zext i16 %15 to i32
  %add.ptr13 = getelementptr i8, ptr %pframe.0125, i32 %conv12
  %16 = call ptr @memcpy(ptr %wepkey, ptr %add.ptr13, i32 3)
  %17 = ptrtoint ptr %dot11PrivacyKeyIndex to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dot11PrivacyKeyIndex, align 8
  %arrayidx17 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 3, i32 %18
  %19 = call ptr @memcpy(ptr %1, ptr %arrayidx17, i32 %11)
  %20 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %iv_len, align 2
  %conv19 = zext i8 %21 to i32
  %add.ptr20 = getelementptr i8, ptr %pframe.0125, i32 %conv19
  %add.ptr23 = getelementptr i8, ptr %add.ptr20, i32 %conv12
  %add = add nuw nsw i32 %curfragnum.0124, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv9126)
  %cmp26 = icmp eq i32 %add, %conv9126
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %last_txcmdsz, align 4
  %24 = ptrtoint ptr %icv_len46 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %icv_len46, align 1
  %conv34 = zext i8 %25 to i32
  %26 = add nuw nsw i32 %conv19, %conv12
  %27 = add nuw nsw i32 %26, %conv34
  %sub35 = sub i32 %23, %27
  %call = call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr23, i32 noundef %sub35) #15
  %neg = xor i32 %call, -1
  %28 = call i32 @llvm.bswap.i32(i32 %neg)
  %29 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %crc, align 4
  %call37 = call i32 @arc4_setkey(ptr noundef %xmit_arc4_ctx, ptr noundef nonnull %wepkey, i32 noundef %add52) #12
  call void @arc4_crypt(ptr noundef %xmit_arc4_ctx, ptr noundef %add.ptr23, ptr noundef %add.ptr23, i32 noundef %sub35) #12
  %add.ptr38 = getelementptr i8, ptr %add.ptr23, i32 %sub35
  call void @arc4_crypt(ptr noundef %xmit_arc4_ctx, ptr noundef %add.ptr38, ptr noundef nonnull %crc, i32 noundef 4) #12
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %frag_len, align 8
  %32 = ptrtoint ptr %icv_len46 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %icv_len46, align 1
  %conv47 = zext i8 %33 to i32
  %34 = add nuw nsw i32 %conv19, %conv12
  %35 = add nuw nsw i32 %34, %conv47
  %sub48 = sub i32 %31, %35
  %call49 = call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr23, i32 noundef %sub48) #15
  %neg50 = xor i32 %call49, -1
  %36 = call i32 @llvm.bswap.i32(i32 %neg50)
  %37 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %crc, align 4
  %call53 = call i32 @arc4_setkey(ptr noundef %xmit_arc4_ctx, ptr noundef nonnull %wepkey, i32 noundef %add52) #12
  call void @arc4_crypt(ptr noundef %xmit_arc4_ctx, ptr noundef %add.ptr23, ptr noundef %add.ptr23, i32 noundef %sub48) #12
  %add.ptr54 = getelementptr i8, ptr %add.ptr23, i32 %sub48
  call void @arc4_crypt(ptr noundef %xmit_arc4_ctx, ptr noundef %add.ptr54, ptr noundef nonnull %crc, i32 noundef 4) #12
  %38 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %frag_len, align 8
  %add.ptr57 = getelementptr i8, ptr %pframe.0125, i32 %39
  %40 = ptrtoint ptr %add.ptr57 to i32
  %sub58 = add i32 %40, -1
  %or = or i32 %sub58, 3
  %add59 = add i32 %or, 1
  %41 = inttoptr i32 %add59 to ptr
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then28
  %pframe.1 = phi ptr [ %pframe.0125, %if.then28 ], [ %41, %if.else ]
  %42 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nr_frags, align 4
  %conv9 = zext i8 %43 to i32
  %cmp10 = icmp ult i32 %add, %conv9
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wepkey) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arc4_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arc4_crypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_wep_decrypt(ptr noundef %padapter, ptr nocapture noundef readonly %precvframe) local_unnamed_addr #1 align 64 {
entry:
  %wepkey = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wepkey) #12
  %encrypt = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 17
  %0 = getelementptr inbounds i8, ptr %wepkey, i32 3
  %1 = call ptr @memset(ptr %0, i32 255, i32 13)
  %2 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %encrypt, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %3, label %entry.if.end_crit_edge [
    i8 1, label %entry.if.then_crit_edge
    i8 5, label %entry.if.then_crit_edge43
  ]

entry.if.then_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge43
  %5 = getelementptr inbounds [16 x i8], ptr %wepkey, i32 0, i32 3
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 9
  %6 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_data, align 4
  %recv_arc4_ctx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 26
  %hdrlen = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 4
  %8 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hdrlen, align 1
  %conv6 = zext i8 %9 to i32
  %add.ptr = getelementptr i8, ptr %7, i32 %conv6
  %key_index = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 29
  %10 = ptrtoint ptr %key_index to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %key_index, align 1
  %idxprom = zext i8 %11 to i32
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 4, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = call ptr @memcpy(ptr %wepkey, ptr %add.ptr, i32 3)
  %arrayidx10 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 3, i32 %idxprom
  %15 = call ptr @memcpy(ptr %5, ptr %arrayidx10, i32 %13)
  %len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 7
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %iv_len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 18
  %18 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %iv_len, align 4
  %conv14 = zext i8 %19 to i32
  %20 = add nuw nsw i32 %conv6, %conv14
  %sub15 = sub i32 %17, %20
  %add.ptr18 = getelementptr i8, ptr %7, i32 %conv14
  %add.ptr21 = getelementptr i8, ptr %add.ptr18, i32 %conv6
  %add = add i32 %13, 3
  %call = call i32 @arc4_setkey(ptr noundef %recv_arc4_ctx, ptr noundef nonnull %wepkey, i32 noundef %add) #12
  call void @arc4_crypt(ptr noundef %recv_arc4_ctx, ptr noundef %add.ptr21, ptr noundef %add.ptr21, i32 noundef %sub15) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wepkey) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_secmicsetkey(ptr nocapture noundef %pmicdata, ptr nocapture noundef readonly %key) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %incdec.ptr.i = getelementptr i8, ptr %key, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key, align 1
  %conv.i = zext i8 %1 to i32
  %incdec.ptr.1.i = getelementptr i8, ptr %key, i32 2
  %2 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %incdec.ptr.i, align 1
  %conv.1.i = zext i8 %3 to i32
  %shl.1.i = shl nuw nsw i32 %conv.1.i, 8
  %or.1.i = or i32 %shl.1.i, %conv.i
  %incdec.ptr.2.i = getelementptr i8, ptr %key, i32 3
  %4 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr.1.i, align 1
  %conv.2.i = zext i8 %5 to i32
  %shl.2.i = shl nuw nsw i32 %conv.2.i, 16
  %or.2.i = or i32 %or.1.i, %shl.2.i
  %6 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr.2.i, align 1
  %conv.3.i = zext i8 %7 to i32
  %shl.3.i = shl nuw i32 %conv.3.i, 24
  %or.3.i = or i32 %or.2.i, %shl.3.i
  %8 = ptrtoint ptr %pmicdata to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.3.i, ptr %pmicdata, align 4
  %add.ptr = getelementptr i8, ptr %key, i32 4
  %incdec.ptr.i5 = getelementptr i8, ptr %key, i32 5
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr, align 1
  %conv.i6 = zext i8 %10 to i32
  %incdec.ptr.1.i7 = getelementptr i8, ptr %key, i32 6
  %11 = ptrtoint ptr %incdec.ptr.i5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr.i5, align 1
  %conv.1.i8 = zext i8 %12 to i32
  %shl.1.i9 = shl nuw nsw i32 %conv.1.i8, 8
  %or.1.i10 = or i32 %shl.1.i9, %conv.i6
  %incdec.ptr.2.i11 = getelementptr i8, ptr %key, i32 7
  %13 = ptrtoint ptr %incdec.ptr.1.i7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr.1.i7, align 1
  %conv.2.i12 = zext i8 %14 to i32
  %shl.2.i13 = shl nuw nsw i32 %conv.2.i12, 16
  %or.2.i14 = or i32 %or.1.i10, %shl.2.i13
  %15 = ptrtoint ptr %incdec.ptr.2.i11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr.2.i11, align 1
  %conv.3.i15 = zext i8 %16 to i32
  %shl.3.i16 = shl nuw i32 %conv.3.i15, 24
  %or.3.i17 = or i32 %or.2.i14, %shl.3.i16
  %K1 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 1
  %17 = ptrtoint ptr %K1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.3.i17, ptr %K1, align 4
  %L.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %18 = ptrtoint ptr %L.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.3.i, ptr %L.i, align 4
  %R.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  %19 = ptrtoint ptr %R.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.3.i17, ptr %R.i, align 4
  %nBytesInM.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 5
  %20 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %nBytesInM.i, align 4
  %M.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 4
  %21 = ptrtoint ptr %M.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %M.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_secmicappendbyte(ptr nocapture noundef %pmicdata, i8 noundef zeroext %b) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %b to i32
  %nBytesInM = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 5
  %0 = ptrtoint ptr %nBytesInM to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nBytesInM, align 4
  %mul = shl i32 %1, 3
  %shl = shl i32 %conv, %mul
  %M = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 4
  %2 = ptrtoint ptr %M to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %M, align 4
  %or = or i32 %shl, %3
  store i32 %or, ptr %M, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %nBytesInM, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp = icmp ugt i32 %inc, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %L = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %4 = ptrtoint ptr %L to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %L, align 4
  %xor = xor i32 %5, %or
  %or8 = tail call i32 @llvm.fshl.i32(i32 %xor, i32 %xor, i32 17)
  %R = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  %6 = ptrtoint ptr %R to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %R, align 4
  %xor9 = xor i32 %7, %or8
  %add = add i32 %xor9, %xor
  %and13 = lshr i32 %add, 8
  %shr14 = and i32 %and13, 16711935
  %and16 = shl i32 %add, 8
  %shl17 = and i32 %and16, -16711936
  %or18 = or i32 %shr14, %shl17
  %xor20 = xor i32 %or18, %xor9
  %add23 = add i32 %xor20, %add
  %or29 = tail call i32 @llvm.fshl.i32(i32 %add23, i32 %add23, i32 3)
  %xor31 = xor i32 %or29, %xor20
  %add34 = add i32 %xor31, %add23
  %or40 = tail call i32 @llvm.fshl.i32(i32 %add34, i32 %add34, i32 30)
  %xor42 = xor i32 %or40, %xor31
  %8 = ptrtoint ptr %R to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %xor42, ptr %R, align 4
  %add45 = add i32 %xor42, %add34
  %9 = ptrtoint ptr %L to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add45, ptr %L, align 4
  %10 = ptrtoint ptr %M to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %M, align 4
  %11 = ptrtoint ptr %nBytesInM to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %nBytesInM, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_secmicappend(ptr nocapture noundef %pmicdata, ptr nocapture noundef readonly %src, i32 noundef %nbytes) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes)
  %cmp.not2 = icmp eq i32 %nbytes, 0
  br i1 %cmp.not2, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %nBytesInM.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 5
  %M.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 4
  %L.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %R.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %rtw_secmicappendbyte.exit.while.body_crit_edge, %while.body.lr.ph
  %nbytes.addr.04 = phi i32 [ %nbytes, %while.body.lr.ph ], [ %dec, %rtw_secmicappendbyte.exit.while.body_crit_edge ]
  %src.addr.03 = phi ptr [ %src, %while.body.lr.ph ], [ %incdec.ptr, %rtw_secmicappendbyte.exit.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %src.addr.03, i32 1
  %0 = ptrtoint ptr %src.addr.03 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %src.addr.03, align 1
  %conv.i = zext i8 %1 to i32
  %2 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nBytesInM.i, align 4
  %mul.i = shl i32 %3, 3
  %shl.i = shl i32 %conv.i, %mul.i
  %4 = ptrtoint ptr %M.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %M.i, align 4
  %or.i = or i32 %shl.i, %5
  store i32 %or.i, ptr %M.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %nBytesInM.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i)
  %cmp.i = icmp ugt i32 %inc.i, 3
  br i1 %cmp.i, label %if.then.i, label %while.body.rtw_secmicappendbyte.exit_crit_edge

while.body.rtw_secmicappendbyte.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtw_secmicappendbyte.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %L.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %L.i, align 4
  %xor.i = xor i32 %7, %or.i
  %or8.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 17) #12
  %8 = ptrtoint ptr %R.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %R.i, align 4
  %xor9.i = xor i32 %or8.i, %9
  %add.i = add i32 %xor9.i, %xor.i
  %and13.i = lshr i32 %add.i, 8
  %shr14.i = and i32 %and13.i, 16711935
  %and16.i = shl i32 %add.i, 8
  %shl17.i = and i32 %and16.i, -16711936
  %or18.i = or i32 %shr14.i, %shl17.i
  %xor20.i = xor i32 %or18.i, %xor9.i
  %add23.i = add i32 %xor20.i, %add.i
  %or29.i = tail call i32 @llvm.fshl.i32(i32 %add23.i, i32 %add23.i, i32 3) #12
  %xor31.i = xor i32 %or29.i, %xor20.i
  %add34.i = add i32 %xor31.i, %add23.i
  %or40.i = tail call i32 @llvm.fshl.i32(i32 %add34.i, i32 %add34.i, i32 30) #12
  %xor42.i = xor i32 %or40.i, %xor31.i
  %10 = ptrtoint ptr %R.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %xor42.i, ptr %R.i, align 4
  %add45.i = add i32 %xor42.i, %add34.i
  %11 = ptrtoint ptr %L.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add45.i, ptr %L.i, align 4
  %12 = ptrtoint ptr %M.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %M.i, align 4
  %13 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %nBytesInM.i, align 4
  br label %rtw_secmicappendbyte.exit

rtw_secmicappendbyte.exit:                        ; preds = %if.then.i, %while.body.rtw_secmicappendbyte.exit_crit_edge
  %dec = add i32 %nbytes.addr.04, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %rtw_secmicappendbyte.exit.while.end_crit_edge, label %rtw_secmicappendbyte.exit.while.body_crit_edge

rtw_secmicappendbyte.exit.while.body_crit_edge:   ; preds = %rtw_secmicappendbyte.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

rtw_secmicappendbyte.exit.while.end_crit_edge:    ; preds = %rtw_secmicappendbyte.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %rtw_secmicappendbyte.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_secgetmic(ptr noundef %pmicdata, ptr nocapture noundef writeonly %dst) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nBytesInM.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 5
  %0 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nBytesInM.i, align 4
  %mul.i = shl i32 %1, 3
  %shl.i = shl i32 90, %mul.i
  %M.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 4
  %2 = ptrtoint ptr %M.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %M.i, align 4
  %or.i = or i32 %shl.i, %3
  store i32 %or.i, ptr %M.i, align 4
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr %nBytesInM.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i)
  %cmp.i = icmp ugt i32 %inc.i, 3
  br i1 %cmp.i, label %if.then.i, label %entry.rtw_secmicappendbyte.exit_crit_edge

entry.rtw_secmicappendbyte.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtw_secmicappendbyte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %L.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %4 = ptrtoint ptr %L.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %L.i, align 4
  %xor.i = xor i32 %5, %or.i
  %or8.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 17) #12
  %R.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  %6 = ptrtoint ptr %R.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %R.i, align 4
  %xor9.i = xor i32 %or8.i, %7
  %add.i = add i32 %xor9.i, %xor.i
  %and13.i = lshr i32 %add.i, 8
  %shr14.i = and i32 %and13.i, 16711935
  %and16.i = shl i32 %add.i, 8
  %shl17.i = and i32 %and16.i, -16711936
  %or18.i = or i32 %shr14.i, %shl17.i
  %xor20.i = xor i32 %or18.i, %xor9.i
  %add23.i = add i32 %xor20.i, %add.i
  %or29.i = tail call i32 @llvm.fshl.i32(i32 %add23.i, i32 %add23.i, i32 3) #12
  %xor31.i = xor i32 %or29.i, %xor20.i
  %add34.i = add i32 %xor31.i, %add23.i
  %or40.i = tail call i32 @llvm.fshl.i32(i32 %add34.i, i32 %add34.i, i32 30) #12
  %xor42.i = xor i32 %or40.i, %xor31.i
  %8 = ptrtoint ptr %R.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %xor42.i, ptr %R.i, align 4
  %add45.i = add i32 %xor42.i, %add34.i
  %9 = ptrtoint ptr %L.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add45.i, ptr %L.i, align 4
  %10 = ptrtoint ptr %M.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %M.i, align 4
  %11 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %nBytesInM.i, align 4
  br label %rtw_secmicappendbyte.exit

rtw_secmicappendbyte.exit:                        ; preds = %if.then.i, %entry.rtw_secmicappendbyte.exit_crit_edge
  %12 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nBytesInM.i, align 4
  %14 = ptrtoint ptr %M.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %M.i, align 4
  %inc.i14 = add i32 %13, 1
  store i32 %inc.i14, ptr %nBytesInM.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i14)
  %cmp.i15 = icmp ugt i32 %inc.i14, 3
  br i1 %cmp.i15, label %if.then.i35, label %rtw_secmicappendbyte.exit.rtw_secmicappendbyte.exit36_crit_edge

rtw_secmicappendbyte.exit.rtw_secmicappendbyte.exit36_crit_edge: ; preds = %rtw_secmicappendbyte.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtw_secmicappendbyte.exit36

if.then.i35:                                      ; preds = %rtw_secmicappendbyte.exit
  call void @__sanitizer_cov_trace_pc() #14
  %L.i16 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %16 = ptrtoint ptr %L.i16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %L.i16, align 4
  %xor.i17 = xor i32 %17, %15
  %or8.i18 = tail call i32 @llvm.fshl.i32(i32 %xor.i17, i32 %xor.i17, i32 17) #12
  %R.i19 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  %18 = ptrtoint ptr %R.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %R.i19, align 4
  %xor9.i20 = xor i32 %or8.i18, %19
  %add.i21 = add i32 %xor9.i20, %xor.i17
  %and13.i22 = lshr i32 %add.i21, 8
  %shr14.i23 = and i32 %and13.i22, 16711935
  %and16.i24 = shl i32 %add.i21, 8
  %shl17.i25 = and i32 %and16.i24, -16711936
  %or18.i26 = or i32 %shr14.i23, %shl17.i25
  %xor20.i27 = xor i32 %or18.i26, %xor9.i20
  %add23.i28 = add i32 %xor20.i27, %add.i21
  %or29.i29 = tail call i32 @llvm.fshl.i32(i32 %add23.i28, i32 %add23.i28, i32 3) #12
  %xor31.i30 = xor i32 %or29.i29, %xor20.i27
  %add34.i31 = add i32 %xor31.i30, %add23.i28
  %or40.i32 = tail call i32 @llvm.fshl.i32(i32 %add34.i31, i32 %add34.i31, i32 30) #12
  %xor42.i33 = xor i32 %or40.i32, %xor31.i30
  %20 = ptrtoint ptr %R.i19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %xor42.i33, ptr %R.i19, align 4
  %add45.i34 = add i32 %xor42.i33, %add34.i31
  %21 = ptrtoint ptr %L.i16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add45.i34, ptr %L.i16, align 4
  %22 = ptrtoint ptr %M.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %M.i, align 4
  %23 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %nBytesInM.i, align 4
  br label %rtw_secmicappendbyte.exit36

rtw_secmicappendbyte.exit36:                      ; preds = %if.then.i35, %rtw_secmicappendbyte.exit.rtw_secmicappendbyte.exit36_crit_edge
  %24 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nBytesInM.i, align 4
  %26 = ptrtoint ptr %M.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %M.i, align 4
  %inc.i40 = add i32 %25, 1
  store i32 %inc.i40, ptr %nBytesInM.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i40)
  %cmp.i41 = icmp ugt i32 %inc.i40, 3
  br i1 %cmp.i41, label %if.then.i61, label %rtw_secmicappendbyte.exit36.rtw_secmicappendbyte.exit62_crit_edge

rtw_secmicappendbyte.exit36.rtw_secmicappendbyte.exit62_crit_edge: ; preds = %rtw_secmicappendbyte.exit36
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtw_secmicappendbyte.exit62

if.then.i61:                                      ; preds = %rtw_secmicappendbyte.exit36
  call void @__sanitizer_cov_trace_pc() #14
  %L.i42 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %28 = ptrtoint ptr %L.i42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %L.i42, align 4
  %xor.i43 = xor i32 %29, %27
  %or8.i44 = tail call i32 @llvm.fshl.i32(i32 %xor.i43, i32 %xor.i43, i32 17) #12
  %R.i45 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  %30 = ptrtoint ptr %R.i45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %R.i45, align 4
  %xor9.i46 = xor i32 %or8.i44, %31
  %add.i47 = add i32 %xor9.i46, %xor.i43
  %and13.i48 = lshr i32 %add.i47, 8
  %shr14.i49 = and i32 %and13.i48, 16711935
  %and16.i50 = shl i32 %add.i47, 8
  %shl17.i51 = and i32 %and16.i50, -16711936
  %or18.i52 = or i32 %shr14.i49, %shl17.i51
  %xor20.i53 = xor i32 %or18.i52, %xor9.i46
  %add23.i54 = add i32 %xor20.i53, %add.i47
  %or29.i55 = tail call i32 @llvm.fshl.i32(i32 %add23.i54, i32 %add23.i54, i32 3) #12
  %xor31.i56 = xor i32 %or29.i55, %xor20.i53
  %add34.i57 = add i32 %xor31.i56, %add23.i54
  %or40.i58 = tail call i32 @llvm.fshl.i32(i32 %add34.i57, i32 %add34.i57, i32 30) #12
  %xor42.i59 = xor i32 %or40.i58, %xor31.i56
  %32 = ptrtoint ptr %R.i45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %xor42.i59, ptr %R.i45, align 4
  %add45.i60 = add i32 %xor42.i59, %add34.i57
  %33 = ptrtoint ptr %L.i42 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add45.i60, ptr %L.i42, align 4
  %34 = ptrtoint ptr %M.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %M.i, align 4
  %35 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %nBytesInM.i, align 4
  br label %rtw_secmicappendbyte.exit62

rtw_secmicappendbyte.exit62:                      ; preds = %if.then.i61, %rtw_secmicappendbyte.exit36.rtw_secmicappendbyte.exit62_crit_edge
  %36 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nBytesInM.i, align 4
  %38 = ptrtoint ptr %M.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %M.i, align 4
  %inc.i66 = add i32 %37, 1
  store i32 %inc.i66, ptr %nBytesInM.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i66)
  %cmp.i67 = icmp ugt i32 %inc.i66, 3
  br i1 %cmp.i67, label %if.then.i87, label %rtw_secmicappendbyte.exit62.rtw_secmicappendbyte.exit88_crit_edge

rtw_secmicappendbyte.exit62.rtw_secmicappendbyte.exit88_crit_edge: ; preds = %rtw_secmicappendbyte.exit62
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtw_secmicappendbyte.exit88

if.then.i87:                                      ; preds = %rtw_secmicappendbyte.exit62
  call void @__sanitizer_cov_trace_pc() #14
  %L.i68 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %40 = ptrtoint ptr %L.i68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %L.i68, align 4
  %xor.i69 = xor i32 %41, %39
  %or8.i70 = tail call i32 @llvm.fshl.i32(i32 %xor.i69, i32 %xor.i69, i32 17) #12
  %R.i71 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  %42 = ptrtoint ptr %R.i71 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %R.i71, align 4
  %xor9.i72 = xor i32 %or8.i70, %43
  %add.i73 = add i32 %xor9.i72, %xor.i69
  %and13.i74 = lshr i32 %add.i73, 8
  %shr14.i75 = and i32 %and13.i74, 16711935
  %and16.i76 = shl i32 %add.i73, 8
  %shl17.i77 = and i32 %and16.i76, -16711936
  %or18.i78 = or i32 %shr14.i75, %shl17.i77
  %xor20.i79 = xor i32 %or18.i78, %xor9.i72
  %add23.i80 = add i32 %xor20.i79, %add.i73
  %or29.i81 = tail call i32 @llvm.fshl.i32(i32 %add23.i80, i32 %add23.i80, i32 3) #12
  %xor31.i82 = xor i32 %or29.i81, %xor20.i79
  %add34.i83 = add i32 %xor31.i82, %add23.i80
  %or40.i84 = tail call i32 @llvm.fshl.i32(i32 %add34.i83, i32 %add34.i83, i32 30) #12
  %xor42.i85 = xor i32 %or40.i84, %xor31.i82
  %44 = ptrtoint ptr %R.i71 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %xor42.i85, ptr %R.i71, align 4
  %add45.i86 = add i32 %xor42.i85, %add34.i83
  %45 = ptrtoint ptr %L.i68 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add45.i86, ptr %L.i68, align 4
  %46 = ptrtoint ptr %M.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %M.i, align 4
  %47 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %nBytesInM.i, align 4
  br label %rtw_secmicappendbyte.exit88

rtw_secmicappendbyte.exit88:                      ; preds = %if.then.i87, %rtw_secmicappendbyte.exit62.rtw_secmicappendbyte.exit88_crit_edge
  %48 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nBytesInM.i, align 4
  %inc.i92 = add i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i92)
  %cmp.i93 = icmp ugt i32 %inc.i92, 3
  br i1 %cmp.i93, label %rtw_secmicappendbyte.exit114.thread, label %rtw_secmicappendbyte.exit114

rtw_secmicappendbyte.exit114.thread:              ; preds = %rtw_secmicappendbyte.exit88
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %M.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %M.i, align 4
  %L.i94 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %52 = ptrtoint ptr %L.i94 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %L.i94, align 4
  %xor.i95 = xor i32 %53, %51
  %or8.i96 = tail call i32 @llvm.fshl.i32(i32 %xor.i95, i32 %xor.i95, i32 17) #12
  %R.i97 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  %54 = ptrtoint ptr %R.i97 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %R.i97, align 4
  %xor9.i98 = xor i32 %or8.i96, %55
  %add.i99 = add i32 %xor9.i98, %xor.i95
  %and13.i100 = lshr i32 %add.i99, 8
  %shr14.i101 = and i32 %and13.i100, 16711935
  %and16.i102 = shl i32 %add.i99, 8
  %shl17.i103 = and i32 %and16.i102, -16711936
  %or18.i104 = or i32 %shr14.i101, %shl17.i103
  %xor20.i105 = xor i32 %or18.i104, %xor9.i98
  %add23.i106 = add i32 %xor20.i105, %add.i99
  %or29.i107 = tail call i32 @llvm.fshl.i32(i32 %add23.i106, i32 %add23.i106, i32 3) #12
  %xor31.i108 = xor i32 %or29.i107, %xor20.i105
  %add34.i109 = add i32 %xor31.i108, %add23.i106
  %or40.i110 = tail call i32 @llvm.fshl.i32(i32 %add34.i109, i32 %add34.i109, i32 30) #12
  %xor42.i111 = xor i32 %or40.i110, %xor31.i108
  %56 = ptrtoint ptr %R.i97 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %xor42.i111, ptr %R.i97, align 4
  %add45.i112 = add i32 %xor42.i111, %add34.i109
  %57 = ptrtoint ptr %L.i94 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add45.i112, ptr %L.i94, align 4
  br label %while.end

rtw_secmicappendbyte.exit114:                     ; preds = %rtw_secmicappendbyte.exit88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i92)
  %cmp.not157 = icmp eq i32 %inc.i92, 0
  br i1 %cmp.not157, label %rtw_secmicappendbyte.exit114.while.end_crit_edge, label %while.cond.while.end_crit_edge

rtw_secmicappendbyte.exit114.while.end_crit_edge: ; preds = %rtw_secmicappendbyte.exit114
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.cond.while.end_crit_edge:                   ; preds = %rtw_secmicappendbyte.exit114
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %M.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %M.i.promoted = load i32, ptr %M.i, align 4
  %R.i123 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  %L.i120 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %59 = ptrtoint ptr %L.i120 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %L.i120, align 4
  %xor.i121 = xor i32 %60, %M.i.promoted
  %or8.i122 = tail call i32 @llvm.fshl.i32(i32 %xor.i121, i32 %xor.i121, i32 17) #12
  %61 = ptrtoint ptr %R.i123 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %R.i123, align 4
  %xor9.i124 = xor i32 %or8.i122, %62
  %add.i125 = add i32 %xor9.i124, %xor.i121
  %and13.i126 = lshr i32 %add.i125, 8
  %shr14.i127 = and i32 %and13.i126, 16711935
  %and16.i128 = shl i32 %add.i125, 8
  %shl17.i129 = and i32 %and16.i128, -16711936
  %or18.i130 = or i32 %shr14.i127, %shl17.i129
  %xor20.i131 = xor i32 %or18.i130, %xor9.i124
  %add23.i132 = add i32 %xor20.i131, %add.i125
  %or29.i133 = tail call i32 @llvm.fshl.i32(i32 %add23.i132, i32 %add23.i132, i32 3) #12
  %xor31.i134 = xor i32 %or29.i133, %xor20.i131
  %add34.i135 = add i32 %xor31.i134, %add23.i132
  %or40.i136 = tail call i32 @llvm.fshl.i32(i32 %add34.i135, i32 %add34.i135, i32 30) #12
  %xor42.i137 = xor i32 %or40.i136, %xor31.i134
  %63 = ptrtoint ptr %R.i123 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %xor42.i137, ptr %R.i123, align 4
  %add45.i138 = add i32 %xor42.i137, %add34.i135
  %64 = ptrtoint ptr %L.i120 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add45.i138, ptr %L.i120, align 4
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %rtw_secmicappendbyte.exit114.while.end_crit_edge, %rtw_secmicappendbyte.exit114.thread
  %L = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %65 = ptrtoint ptr %L to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %L, align 4
  %conv.i = trunc i32 %66 to i8
  %incdec.ptr.i = getelementptr i8, ptr %dst, i32 1
  %67 = ptrtoint ptr %dst to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv.i, ptr %dst, align 1
  %shr.i = lshr i32 %66, 8
  %conv.1.i = trunc i32 %shr.i to i8
  %incdec.ptr.1.i = getelementptr i8, ptr %dst, i32 2
  %68 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv.1.i, ptr %incdec.ptr.i, align 1
  %shr.1.i = lshr i32 %66, 16
  %conv.2.i = trunc i32 %shr.1.i to i8
  %incdec.ptr.2.i = getelementptr i8, ptr %dst, i32 3
  %69 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv.2.i, ptr %incdec.ptr.1.i, align 1
  %shr.2.i = lshr i32 %66, 24
  %conv.3.i = trunc i32 %shr.2.i to i8
  %70 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv.3.i, ptr %incdec.ptr.2.i, align 1
  %add.ptr = getelementptr i8, ptr %dst, i32 4
  %R = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  %71 = ptrtoint ptr %R to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %R, align 4
  %conv.i141 = trunc i32 %72 to i8
  %incdec.ptr.i142 = getelementptr i8, ptr %dst, i32 5
  %73 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv.i141, ptr %add.ptr, align 1
  %shr.i143 = lshr i32 %72, 8
  %conv.1.i144 = trunc i32 %shr.i143 to i8
  %incdec.ptr.1.i145 = getelementptr i8, ptr %dst, i32 6
  %74 = ptrtoint ptr %incdec.ptr.i142 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv.1.i144, ptr %incdec.ptr.i142, align 1
  %shr.1.i146 = lshr i32 %72, 16
  %conv.2.i147 = trunc i32 %shr.1.i146 to i8
  %incdec.ptr.2.i148 = getelementptr i8, ptr %dst, i32 7
  %75 = ptrtoint ptr %incdec.ptr.1.i145 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv.2.i147, ptr %incdec.ptr.1.i145, align 1
  %shr.2.i149 = lshr i32 %72, 24
  %conv.3.i150 = trunc i32 %shr.2.i149 to i8
  %76 = ptrtoint ptr %incdec.ptr.2.i148 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv.3.i150, ptr %incdec.ptr.2.i148, align 1
  %77 = ptrtoint ptr %pmicdata to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pmicdata, align 4
  store i32 %78, ptr %L, align 4
  %K1.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 1
  %79 = ptrtoint ptr %K1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %K1.i, align 4
  store i32 %80, ptr %R, align 4
  %81 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %nBytesInM.i, align 4
  %82 = ptrtoint ptr %M.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %M.i, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_seccalctkipmic(ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %header, ptr nocapture noundef readonly %data, i32 noundef %data_len, ptr nocapture noundef writeonly %mic_code, i8 noundef zeroext %pri) local_unnamed_addr #8 align 64 {
entry:
  %micdata = alloca %struct.mic_data, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %micdata) #12
  %0 = getelementptr inbounds %struct.mic_data, ptr %micdata, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mic_data, ptr %micdata, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mic_data, ptr %micdata, i32 0, i32 3
  %3 = getelementptr inbounds %struct.mic_data, ptr %micdata, i32 0, i32 4
  %4 = getelementptr inbounds %struct.mic_data, ptr %micdata, i32 0, i32 5
  %incdec.ptr.i.i = getelementptr i8, ptr %key, i32 1
  %5 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %key, align 1
  %conv.i.i = zext i8 %6 to i32
  %incdec.ptr.1.i.i = getelementptr i8, ptr %key, i32 2
  %7 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr.i.i, align 1
  %conv.1.i.i = zext i8 %8 to i32
  %shl.1.i.i = shl nuw nsw i32 %conv.1.i.i, 8
  %or.1.i.i = or i32 %shl.1.i.i, %conv.i.i
  %incdec.ptr.2.i.i = getelementptr i8, ptr %key, i32 3
  %9 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr.1.i.i, align 1
  %conv.2.i.i = zext i8 %10 to i32
  %shl.2.i.i = shl nuw nsw i32 %conv.2.i.i, 16
  %or.2.i.i = or i32 %or.1.i.i, %shl.2.i.i
  %11 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr.2.i.i, align 1
  %conv.3.i.i = zext i8 %12 to i32
  %shl.3.i.i = shl nuw i32 %conv.3.i.i, 24
  %or.3.i.i = or i32 %or.2.i.i, %shl.3.i.i
  %13 = ptrtoint ptr %micdata to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.3.i.i, ptr %micdata, align 4
  %add.ptr.i = getelementptr i8, ptr %key, i32 4
  %incdec.ptr.i5.i = getelementptr i8, ptr %key, i32 5
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i, align 1
  %conv.i6.i = zext i8 %15 to i32
  %incdec.ptr.1.i7.i = getelementptr i8, ptr %key, i32 6
  %16 = ptrtoint ptr %incdec.ptr.i5.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.i5.i, align 1
  %conv.1.i8.i = zext i8 %17 to i32
  %shl.1.i9.i = shl nuw nsw i32 %conv.1.i8.i, 8
  %or.1.i10.i = or i32 %shl.1.i9.i, %conv.i6.i
  %incdec.ptr.2.i11.i = getelementptr i8, ptr %key, i32 7
  %18 = ptrtoint ptr %incdec.ptr.1.i7.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr.1.i7.i, align 1
  %conv.2.i12.i = zext i8 %19 to i32
  %shl.2.i13.i = shl nuw nsw i32 %conv.2.i12.i, 16
  %or.2.i14.i = or i32 %or.1.i10.i, %shl.2.i13.i
  %20 = ptrtoint ptr %incdec.ptr.2.i11.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr.2.i11.i, align 1
  %conv.3.i15.i = zext i8 %21 to i32
  %shl.3.i16.i = shl nuw i32 %conv.3.i15.i, 24
  %or.3.i17.i = or i32 %or.2.i14.i, %shl.3.i16.i
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.3.i17.i, ptr %0, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.3.i.i, ptr %1, align 4
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.3.i17.i, ptr %2, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %4, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %3, align 4
  %arrayidx1 = getelementptr i8, ptr %header, i32 1
  %27 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1, align 1
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not = icmp eq i8 %29, 0
  br i1 %tobool.not, label %if.else10, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %header, i32 16
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.promoted = load i32, ptr %4, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.promoted291 = load i32, ptr %3, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.promoted293 = load i32, ptr %1, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.promoted294 = load i32, ptr %2, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %rtw_secmicappendbyte.exit.i.while.body.i_crit_edge, %if.then
  %add45.i.i393 = phi i32 [ %.promoted293, %if.then ], [ %add45.i.i394, %rtw_secmicappendbyte.exit.i.while.body.i_crit_edge ]
  %xor42.i.i390 = phi i32 [ %.promoted294, %if.then ], [ %xor42.i.i391, %rtw_secmicappendbyte.exit.i.while.body.i_crit_edge ]
  %34 = phi i32 [ %.promoted294, %if.then ], [ %40, %rtw_secmicappendbyte.exit.i.while.body.i_crit_edge ]
  %35 = phi i32 [ %.promoted293, %if.then ], [ %41, %rtw_secmicappendbyte.exit.i.while.body.i_crit_edge ]
  %36 = phi i32 [ %.promoted291, %if.then ], [ %42, %rtw_secmicappendbyte.exit.i.while.body.i_crit_edge ]
  %37 = phi i32 [ %.promoted, %if.then ], [ %43, %rtw_secmicappendbyte.exit.i.while.body.i_crit_edge ]
  %nbytes.addr.04.i = phi i32 [ 6, %if.then ], [ %dec.i, %rtw_secmicappendbyte.exit.i.while.body.i_crit_edge ]
  %src.addr.03.i = phi ptr [ %arrayidx2, %if.then ], [ %incdec.ptr.i, %rtw_secmicappendbyte.exit.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %src.addr.03.i, i32 1
  %38 = ptrtoint ptr %src.addr.03.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %src.addr.03.i, align 1
  %conv.i.i35 = zext i8 %39 to i32
  %mul.i.i = shl i32 %37, 3
  %shl.i.i = shl i32 %conv.i.i35, %mul.i.i
  %or.i.i = or i32 %shl.i.i, %36
  %inc.i.i = add i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i)
  %cmp.i.i = icmp ugt i32 %inc.i.i, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.i.rtw_secmicappendbyte.exit.i_crit_edge

while.body.i.rtw_secmicappendbyte.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtw_secmicappendbyte.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %xor.i.i = xor i32 %35, %or.i.i
  %or8.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i, i32 %xor.i.i, i32 17) #12
  %xor9.i.i = xor i32 %or8.i.i, %34
  %add.i.i = add i32 %xor9.i.i, %xor.i.i
  %and13.i.i = lshr i32 %add.i.i, 8
  %shr14.i.i = and i32 %and13.i.i, 16711935
  %and16.i.i = shl i32 %add.i.i, 8
  %shl17.i.i = and i32 %and16.i.i, -16711936
  %or18.i.i = or i32 %shr14.i.i, %shl17.i.i
  %xor20.i.i = xor i32 %or18.i.i, %xor9.i.i
  %add23.i.i = add i32 %xor20.i.i, %add.i.i
  %or29.i.i = tail call i32 @llvm.fshl.i32(i32 %add23.i.i, i32 %add23.i.i, i32 3) #12
  %xor31.i.i = xor i32 %or29.i.i, %xor20.i.i
  %add34.i.i = add i32 %xor31.i.i, %add23.i.i
  %or40.i.i = tail call i32 @llvm.fshl.i32(i32 %add34.i.i, i32 %add34.i.i, i32 30) #12
  %xor42.i.i = xor i32 %or40.i.i, %xor31.i.i
  %add45.i.i = add i32 %xor42.i.i, %add34.i.i
  br label %rtw_secmicappendbyte.exit.i

rtw_secmicappendbyte.exit.i:                      ; preds = %if.then.i.i, %while.body.i.rtw_secmicappendbyte.exit.i_crit_edge
  %add45.i.i394 = phi i32 [ %add45.i.i, %if.then.i.i ], [ %add45.i.i393, %while.body.i.rtw_secmicappendbyte.exit.i_crit_edge ]
  %xor42.i.i391 = phi i32 [ %xor42.i.i, %if.then.i.i ], [ %xor42.i.i390, %while.body.i.rtw_secmicappendbyte.exit.i_crit_edge ]
  %40 = phi i32 [ %xor42.i.i, %if.then.i.i ], [ %34, %while.body.i.rtw_secmicappendbyte.exit.i_crit_edge ]
  %41 = phi i32 [ %add45.i.i, %if.then.i.i ], [ %35, %while.body.i.rtw_secmicappendbyte.exit.i_crit_edge ]
  %42 = phi i32 [ 0, %if.then.i.i ], [ %or.i.i, %while.body.i.rtw_secmicappendbyte.exit.i_crit_edge ]
  %43 = phi i32 [ 0, %if.then.i.i ], [ %inc.i.i, %while.body.i.rtw_secmicappendbyte.exit.i_crit_edge ]
  %dec.i = add nsw i32 %nbytes.addr.04.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %rtw_secmicappend.exit, label %rtw_secmicappendbyte.exit.i.while.body.i_crit_edge

rtw_secmicappendbyte.exit.i.while.body.i_crit_edge: ; preds = %rtw_secmicappendbyte.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

rtw_secmicappend.exit:                            ; preds = %rtw_secmicappendbyte.exit.i
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %xor42.i.i391, ptr %2, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add45.i.i394, ptr %1, align 4
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %4, align 4
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %42, ptr %3, align 4
  %48 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool6.not = icmp eq i8 %48, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %rtw_secmicappend.exit
  %arrayidx8 = getelementptr i8, ptr %header, i32 24
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.promoted295 = load i32, ptr %4, align 4
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.promoted297 = load i32, ptr %3, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.promoted299 = load i32, ptr %1, align 4
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.promoted300 = load i32, ptr %2, align 4
  br label %while.body.i49

while.body.i49:                                   ; preds = %rtw_secmicappendbyte.exit.i70.while.body.i49_crit_edge, %if.then7
  %add45.i.i66399 = phi i32 [ %.promoted299, %if.then7 ], [ %add45.i.i66400, %rtw_secmicappendbyte.exit.i70.while.body.i49_crit_edge ]
  %xor42.i.i65396 = phi i32 [ %.promoted300, %if.then7 ], [ %xor42.i.i65397, %rtw_secmicappendbyte.exit.i70.while.body.i49_crit_edge ]
  %53 = phi i32 [ %.promoted300, %if.then7 ], [ %59, %rtw_secmicappendbyte.exit.i70.while.body.i49_crit_edge ]
  %54 = phi i32 [ %.promoted299, %if.then7 ], [ %60, %rtw_secmicappendbyte.exit.i70.while.body.i49_crit_edge ]
  %55 = phi i32 [ %.promoted297, %if.then7 ], [ %61, %rtw_secmicappendbyte.exit.i70.while.body.i49_crit_edge ]
  %56 = phi i32 [ %.promoted295, %if.then7 ], [ %62, %rtw_secmicappendbyte.exit.i70.while.body.i49_crit_edge ]
  %nbytes.addr.04.i40 = phi i32 [ 6, %if.then7 ], [ %dec.i68, %rtw_secmicappendbyte.exit.i70.while.body.i49_crit_edge ]
  %src.addr.03.i41 = phi ptr [ %arrayidx8, %if.then7 ], [ %incdec.ptr.i42, %rtw_secmicappendbyte.exit.i70.while.body.i49_crit_edge ]
  %incdec.ptr.i42 = getelementptr i8, ptr %src.addr.03.i41, i32 1
  %57 = ptrtoint ptr %src.addr.03.i41 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %src.addr.03.i41, align 1
  %conv.i.i43 = zext i8 %58 to i32
  %mul.i.i44 = shl i32 %56, 3
  %shl.i.i45 = shl i32 %conv.i.i43, %mul.i.i44
  %or.i.i46 = or i32 %shl.i.i45, %55
  %inc.i.i47 = add i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i47)
  %cmp.i.i48 = icmp ugt i32 %inc.i.i47, 3
  br i1 %cmp.i.i48, label %if.then.i.i67, label %while.body.i49.rtw_secmicappendbyte.exit.i70_crit_edge

while.body.i49.rtw_secmicappendbyte.exit.i70_crit_edge: ; preds = %while.body.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtw_secmicappendbyte.exit.i70

if.then.i.i67:                                    ; preds = %while.body.i49
  call void @__sanitizer_cov_trace_pc() #14
  %xor.i.i50 = xor i32 %54, %or.i.i46
  %or8.i.i51 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i50, i32 %xor.i.i50, i32 17) #12
  %xor9.i.i52 = xor i32 %or8.i.i51, %53
  %add.i.i53 = add i32 %xor9.i.i52, %xor.i.i50
  %and13.i.i54 = lshr i32 %add.i.i53, 8
  %shr14.i.i55 = and i32 %and13.i.i54, 16711935
  %and16.i.i56 = shl i32 %add.i.i53, 8
  %shl17.i.i57 = and i32 %and16.i.i56, -16711936
  %or18.i.i58 = or i32 %shr14.i.i55, %shl17.i.i57
  %xor20.i.i59 = xor i32 %or18.i.i58, %xor9.i.i52
  %add23.i.i60 = add i32 %xor20.i.i59, %add.i.i53
  %or29.i.i61 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i60, i32 %add23.i.i60, i32 3) #12
  %xor31.i.i62 = xor i32 %or29.i.i61, %xor20.i.i59
  %add34.i.i63 = add i32 %xor31.i.i62, %add23.i.i60
  %or40.i.i64 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i63, i32 %add34.i.i63, i32 30) #12
  %xor42.i.i65 = xor i32 %or40.i.i64, %xor31.i.i62
  %add45.i.i66 = add i32 %xor42.i.i65, %add34.i.i63
  br label %rtw_secmicappendbyte.exit.i70

rtw_secmicappendbyte.exit.i70:                    ; preds = %if.then.i.i67, %while.body.i49.rtw_secmicappendbyte.exit.i70_crit_edge
  %add45.i.i66400 = phi i32 [ %add45.i.i66, %if.then.i.i67 ], [ %add45.i.i66399, %while.body.i49.rtw_secmicappendbyte.exit.i70_crit_edge ]
  %xor42.i.i65397 = phi i32 [ %xor42.i.i65, %if.then.i.i67 ], [ %xor42.i.i65396, %while.body.i49.rtw_secmicappendbyte.exit.i70_crit_edge ]
  %59 = phi i32 [ %xor42.i.i65, %if.then.i.i67 ], [ %53, %while.body.i49.rtw_secmicappendbyte.exit.i70_crit_edge ]
  %60 = phi i32 [ %add45.i.i66, %if.then.i.i67 ], [ %54, %while.body.i49.rtw_secmicappendbyte.exit.i70_crit_edge ]
  %61 = phi i32 [ 0, %if.then.i.i67 ], [ %or.i.i46, %while.body.i49.rtw_secmicappendbyte.exit.i70_crit_edge ]
  %62 = phi i32 [ 0, %if.then.i.i67 ], [ %inc.i.i47, %while.body.i49.rtw_secmicappendbyte.exit.i70_crit_edge ]
  %dec.i68 = add nsw i32 %nbytes.addr.04.i40, -1
  %cmp.not.i69 = icmp eq i32 %dec.i68, 0
  br i1 %cmp.not.i69, label %if.end21.loopexit290, label %rtw_secmicappendbyte.exit.i70.while.body.i49_crit_edge

rtw_secmicappendbyte.exit.i70.while.body.i49_crit_edge: ; preds = %rtw_secmicappendbyte.exit.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i49

if.else:                                          ; preds = %rtw_secmicappend.exit
  %arrayidx9 = getelementptr i8, ptr %header, i32 10
  %63 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.promoted301 = load i32, ptr %4, align 4
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.promoted303 = load i32, ptr %3, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.promoted305 = load i32, ptr %1, align 4
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.promoted306 = load i32, ptr %2, align 4
  br label %while.body.i85

while.body.i85:                                   ; preds = %rtw_secmicappendbyte.exit.i106.while.body.i85_crit_edge, %if.else
  %add45.i.i102405 = phi i32 [ %.promoted305, %if.else ], [ %add45.i.i102406, %rtw_secmicappendbyte.exit.i106.while.body.i85_crit_edge ]
  %xor42.i.i101402 = phi i32 [ %.promoted306, %if.else ], [ %xor42.i.i101403, %rtw_secmicappendbyte.exit.i106.while.body.i85_crit_edge ]
  %67 = phi i32 [ %.promoted306, %if.else ], [ %73, %rtw_secmicappendbyte.exit.i106.while.body.i85_crit_edge ]
  %68 = phi i32 [ %.promoted305, %if.else ], [ %74, %rtw_secmicappendbyte.exit.i106.while.body.i85_crit_edge ]
  %69 = phi i32 [ %.promoted303, %if.else ], [ %75, %rtw_secmicappendbyte.exit.i106.while.body.i85_crit_edge ]
  %70 = phi i32 [ %.promoted301, %if.else ], [ %76, %rtw_secmicappendbyte.exit.i106.while.body.i85_crit_edge ]
  %nbytes.addr.04.i76 = phi i32 [ 6, %if.else ], [ %dec.i104, %rtw_secmicappendbyte.exit.i106.while.body.i85_crit_edge ]
  %src.addr.03.i77 = phi ptr [ %arrayidx9, %if.else ], [ %incdec.ptr.i78, %rtw_secmicappendbyte.exit.i106.while.body.i85_crit_edge ]
  %incdec.ptr.i78 = getelementptr i8, ptr %src.addr.03.i77, i32 1
  %71 = ptrtoint ptr %src.addr.03.i77 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %src.addr.03.i77, align 1
  %conv.i.i79 = zext i8 %72 to i32
  %mul.i.i80 = shl i32 %70, 3
  %shl.i.i81 = shl i32 %conv.i.i79, %mul.i.i80
  %or.i.i82 = or i32 %shl.i.i81, %69
  %inc.i.i83 = add i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i83)
  %cmp.i.i84 = icmp ugt i32 %inc.i.i83, 3
  br i1 %cmp.i.i84, label %if.then.i.i103, label %while.body.i85.rtw_secmicappendbyte.exit.i106_crit_edge

while.body.i85.rtw_secmicappendbyte.exit.i106_crit_edge: ; preds = %while.body.i85
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtw_secmicappendbyte.exit.i106

if.then.i.i103:                                   ; preds = %while.body.i85
  call void @__sanitizer_cov_trace_pc() #14
  %xor.i.i86 = xor i32 %68, %or.i.i82
  %or8.i.i87 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i86, i32 %xor.i.i86, i32 17) #12
  %xor9.i.i88 = xor i32 %or8.i.i87, %67
  %add.i.i89 = add i32 %xor9.i.i88, %xor.i.i86
  %and13.i.i90 = lshr i32 %add.i.i89, 8
  %shr14.i.i91 = and i32 %and13.i.i90, 16711935
  %and16.i.i92 = shl i32 %add.i.i89, 8
  %shl17.i.i93 = and i32 %and16.i.i92, -16711936
  %or18.i.i94 = or i32 %shr14.i.i91, %shl17.i.i93
  %xor20.i.i95 = xor i32 %or18.i.i94, %xor9.i.i88
  %add23.i.i96 = add i32 %xor20.i.i95, %add.i.i89
  %or29.i.i97 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i96, i32 %add23.i.i96, i32 3) #12
  %xor31.i.i98 = xor i32 %or29.i.i97, %xor20.i.i95
  %add34.i.i99 = add i32 %xor31.i.i98, %add23.i.i96
  %or40.i.i100 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i99, i32 %add34.i.i99, i32 30) #12
  %xor42.i.i101 = xor i32 %or40.i.i100, %xor31.i.i98
  %add45.i.i102 = add i32 %xor42.i.i101, %add34.i.i99
  br label %rtw_secmicappendbyte.exit.i106

rtw_secmicappendbyte.exit.i106:                   ; preds = %if.then.i.i103, %while.body.i85.rtw_secmicappendbyte.exit.i106_crit_edge
  %add45.i.i102406 = phi i32 [ %add45.i.i102, %if.then.i.i103 ], [ %add45.i.i102405, %while.body.i85.rtw_secmicappendbyte.exit.i106_crit_edge ]
  %xor42.i.i101403 = phi i32 [ %xor42.i.i101, %if.then.i.i103 ], [ %xor42.i.i101402, %while.body.i85.rtw_secmicappendbyte.exit.i106_crit_edge ]
  %73 = phi i32 [ %xor42.i.i101, %if.then.i.i103 ], [ %67, %while.body.i85.rtw_secmicappendbyte.exit.i106_crit_edge ]
  %74 = phi i32 [ %add45.i.i102, %if.then.i.i103 ], [ %68, %while.body.i85.rtw_secmicappendbyte.exit.i106_crit_edge ]
  %75 = phi i32 [ 0, %if.then.i.i103 ], [ %or.i.i82, %while.body.i85.rtw_secmicappendbyte.exit.i106_crit_edge ]
  %76 = phi i32 [ 0, %if.then.i.i103 ], [ %inc.i.i83, %while.body.i85.rtw_secmicappendbyte.exit.i106_crit_edge ]
  %dec.i104 = add nsw i32 %nbytes.addr.04.i76, -1
  %cmp.not.i105 = icmp eq i32 %dec.i104, 0
  br i1 %cmp.not.i105, label %if.end21.loopexit289, label %rtw_secmicappendbyte.exit.i106.while.body.i85_crit_edge

rtw_secmicappendbyte.exit.i106.while.body.i85_crit_edge: ; preds = %rtw_secmicappendbyte.exit.i106
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i85

if.else10:                                        ; preds = %entry
  %arrayidx11 = getelementptr i8, ptr %header, i32 4
  %77 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.promoted307 = load i32, ptr %4, align 4
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %.promoted309 = load i32, ptr %3, align 4
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.promoted311 = load i32, ptr %1, align 4
  %80 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.promoted312 = load i32, ptr %2, align 4
  %.promoted461 = load i32, ptr %1, align 1
  br label %while.body.i121

while.body.i121:                                  ; preds = %rtw_secmicappendbyte.exit.i142.while.body.i121_crit_edge, %if.else10
  %add45.i.i138462 = phi i32 [ %.promoted461, %if.else10 ], [ %add45.i.i138463, %rtw_secmicappendbyte.exit.i142.while.body.i121_crit_edge ]
  %xor42.i.i137408 = phi i32 [ %.promoted312, %if.else10 ], [ %xor42.i.i137409, %rtw_secmicappendbyte.exit.i142.while.body.i121_crit_edge ]
  %81 = phi i32 [ %.promoted312, %if.else10 ], [ %87, %rtw_secmicappendbyte.exit.i142.while.body.i121_crit_edge ]
  %82 = phi i32 [ %.promoted311, %if.else10 ], [ %88, %rtw_secmicappendbyte.exit.i142.while.body.i121_crit_edge ]
  %83 = phi i32 [ %.promoted309, %if.else10 ], [ %89, %rtw_secmicappendbyte.exit.i142.while.body.i121_crit_edge ]
  %84 = phi i32 [ %.promoted307, %if.else10 ], [ %90, %rtw_secmicappendbyte.exit.i142.while.body.i121_crit_edge ]
  %nbytes.addr.04.i112 = phi i32 [ 6, %if.else10 ], [ %dec.i140, %rtw_secmicappendbyte.exit.i142.while.body.i121_crit_edge ]
  %src.addr.03.i113 = phi ptr [ %arrayidx11, %if.else10 ], [ %incdec.ptr.i114, %rtw_secmicappendbyte.exit.i142.while.body.i121_crit_edge ]
  %incdec.ptr.i114 = getelementptr i8, ptr %src.addr.03.i113, i32 1
  %85 = ptrtoint ptr %src.addr.03.i113 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %src.addr.03.i113, align 1
  %conv.i.i115 = zext i8 %86 to i32
  %mul.i.i116 = shl i32 %84, 3
  %shl.i.i117 = shl i32 %conv.i.i115, %mul.i.i116
  %or.i.i118 = or i32 %shl.i.i117, %83
  %inc.i.i119 = add i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i119)
  %cmp.i.i120 = icmp ugt i32 %inc.i.i119, 3
  br i1 %cmp.i.i120, label %if.then.i.i139, label %while.body.i121.rtw_secmicappendbyte.exit.i142_crit_edge

while.body.i121.rtw_secmicappendbyte.exit.i142_crit_edge: ; preds = %while.body.i121
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtw_secmicappendbyte.exit.i142

if.then.i.i139:                                   ; preds = %while.body.i121
  call void @__sanitizer_cov_trace_pc() #14
  %xor.i.i122 = xor i32 %82, %or.i.i118
  %or8.i.i123 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i122, i32 %xor.i.i122, i32 17) #12
  %xor9.i.i124 = xor i32 %or8.i.i123, %81
  %add.i.i125 = add i32 %xor9.i.i124, %xor.i.i122
  %and13.i.i126 = lshr i32 %add.i.i125, 8
  %shr14.i.i127 = and i32 %and13.i.i126, 16711935
  %and16.i.i128 = shl i32 %add.i.i125, 8
  %shl17.i.i129 = and i32 %and16.i.i128, -16711936
  %or18.i.i130 = or i32 %shr14.i.i127, %shl17.i.i129
  %xor20.i.i131 = xor i32 %or18.i.i130, %xor9.i.i124
  %add23.i.i132 = add i32 %xor20.i.i131, %add.i.i125
  %or29.i.i133 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i132, i32 %add23.i.i132, i32 3) #12
  %xor31.i.i134 = xor i32 %or29.i.i133, %xor20.i.i131
  %add34.i.i135 = add i32 %xor31.i.i134, %add23.i.i132
  %or40.i.i136 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i135, i32 %add34.i.i135, i32 30) #12
  %xor42.i.i137 = xor i32 %or40.i.i136, %xor31.i.i134
  %add45.i.i138 = add i32 %xor42.i.i137, %add34.i.i135
  br label %rtw_secmicappendbyte.exit.i142

rtw_secmicappendbyte.exit.i142:                   ; preds = %if.then.i.i139, %while.body.i121.rtw_secmicappendbyte.exit.i142_crit_edge
  %add45.i.i138463 = phi i32 [ %add45.i.i138, %if.then.i.i139 ], [ %add45.i.i138462, %while.body.i121.rtw_secmicappendbyte.exit.i142_crit_edge ]
  %xor42.i.i137409 = phi i32 [ %xor42.i.i137, %if.then.i.i139 ], [ %xor42.i.i137408, %while.body.i121.rtw_secmicappendbyte.exit.i142_crit_edge ]
  %87 = phi i32 [ %xor42.i.i137, %if.then.i.i139 ], [ %81, %while.body.i121.rtw_secmicappendbyte.exit.i142_crit_edge ]
  %88 = phi i32 [ %add45.i.i138, %if.then.i.i139 ], [ %82, %while.body.i121.rtw_secmicappendbyte.exit.i142_crit_edge ]
  %89 = phi i32 [ 0, %if.then.i.i139 ], [ %or.i.i118, %while.body.i121.rtw_secmicappendbyte.exit.i142_crit_edge ]
  %90 = phi i32 [ 0, %if.then.i.i139 ], [ %inc.i.i119, %while.body.i121.rtw_secmicappendbyte.exit.i142_crit_edge ]
  %dec.i140 = add nsw i32 %nbytes.addr.04.i112, -1
  %cmp.not.i141 = icmp eq i32 %dec.i140, 0
  br i1 %cmp.not.i141, label %rtw_secmicappend.exit143, label %rtw_secmicappendbyte.exit.i142.while.body.i121_crit_edge

rtw_secmicappendbyte.exit.i142.while.body.i121_crit_edge: ; preds = %rtw_secmicappendbyte.exit.i142
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i121

rtw_secmicappend.exit143:                         ; preds = %rtw_secmicappendbyte.exit.i142
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 %add45.i.i138463, ptr %1, align 1
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %xor42.i.i137409, ptr %2, align 4
  %93 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %90, ptr %4, align 4
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %89, ptr %3, align 4
  %95 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool15.not = icmp eq i8 %95, 0
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %rtw_secmicappend.exit143
  %arrayidx17 = getelementptr i8, ptr %header, i32 16
  %96 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %96)
  %.promoted313 = load i32, ptr %4, align 4
  %97 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.promoted315 = load i32, ptr %3, align 4
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %.promoted317 = load i32, ptr %1, align 4
  %99 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %99)
  %.promoted318 = load i32, ptr %2, align 4
  %.promoted464 = load i32, ptr %2, align 1
  %.promoted467 = load i32, ptr %1, align 1
  br label %while.body.i157

while.body.i157:                                  ; preds = %rtw_secmicappendbyte.exit.i178.while.body.i157_crit_edge, %if.then16
  %add45.i.i174468 = phi i32 [ %.promoted467, %if.then16 ], [ %add45.i.i174469, %rtw_secmicappendbyte.exit.i178.while.body.i157_crit_edge ]
  %xor42.i.i173465 = phi i32 [ %.promoted464, %if.then16 ], [ %xor42.i.i173466, %rtw_secmicappendbyte.exit.i178.while.body.i157_crit_edge ]
  %100 = phi i32 [ %.promoted318, %if.then16 ], [ %106, %rtw_secmicappendbyte.exit.i178.while.body.i157_crit_edge ]
  %101 = phi i32 [ %.promoted317, %if.then16 ], [ %107, %rtw_secmicappendbyte.exit.i178.while.body.i157_crit_edge ]
  %102 = phi i32 [ %.promoted315, %if.then16 ], [ %108, %rtw_secmicappendbyte.exit.i178.while.body.i157_crit_edge ]
  %103 = phi i32 [ %.promoted313, %if.then16 ], [ %109, %rtw_secmicappendbyte.exit.i178.while.body.i157_crit_edge ]
  %nbytes.addr.04.i148 = phi i32 [ 6, %if.then16 ], [ %dec.i176, %rtw_secmicappendbyte.exit.i178.while.body.i157_crit_edge ]
  %src.addr.03.i149 = phi ptr [ %arrayidx17, %if.then16 ], [ %incdec.ptr.i150, %rtw_secmicappendbyte.exit.i178.while.body.i157_crit_edge ]
  %incdec.ptr.i150 = getelementptr i8, ptr %src.addr.03.i149, i32 1
  %104 = ptrtoint ptr %src.addr.03.i149 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %src.addr.03.i149, align 1
  %conv.i.i151 = zext i8 %105 to i32
  %mul.i.i152 = shl i32 %103, 3
  %shl.i.i153 = shl i32 %conv.i.i151, %mul.i.i152
  %or.i.i154 = or i32 %shl.i.i153, %102
  %inc.i.i155 = add i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i155)
  %cmp.i.i156 = icmp ugt i32 %inc.i.i155, 3
  br i1 %cmp.i.i156, label %if.then.i.i175, label %while.body.i157.rtw_secmicappendbyte.exit.i178_crit_edge

while.body.i157.rtw_secmicappendbyte.exit.i178_crit_edge: ; preds = %while.body.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtw_secmicappendbyte.exit.i178

if.then.i.i175:                                   ; preds = %while.body.i157
  call void @__sanitizer_cov_trace_pc() #14
  %xor.i.i158 = xor i32 %101, %or.i.i154
  %or8.i.i159 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i158, i32 %xor.i.i158, i32 17) #12
  %xor9.i.i160 = xor i32 %or8.i.i159, %100
  %add.i.i161 = add i32 %xor9.i.i160, %xor.i.i158
  %and13.i.i162 = lshr i32 %add.i.i161, 8
  %shr14.i.i163 = and i32 %and13.i.i162, 16711935
  %and16.i.i164 = shl i32 %add.i.i161, 8
  %shl17.i.i165 = and i32 %and16.i.i164, -16711936
  %or18.i.i166 = or i32 %shr14.i.i163, %shl17.i.i165
  %xor20.i.i167 = xor i32 %or18.i.i166, %xor9.i.i160
  %add23.i.i168 = add i32 %xor20.i.i167, %add.i.i161
  %or29.i.i169 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i168, i32 %add23.i.i168, i32 3) #12
  %xor31.i.i170 = xor i32 %or29.i.i169, %xor20.i.i167
  %add34.i.i171 = add i32 %xor31.i.i170, %add23.i.i168
  %or40.i.i172 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i171, i32 %add34.i.i171, i32 30) #12
  %xor42.i.i173 = xor i32 %or40.i.i172, %xor31.i.i170
  %add45.i.i174 = add i32 %xor42.i.i173, %add34.i.i171
  br label %rtw_secmicappendbyte.exit.i178

rtw_secmicappendbyte.exit.i178:                   ; preds = %if.then.i.i175, %while.body.i157.rtw_secmicappendbyte.exit.i178_crit_edge
  %add45.i.i174469 = phi i32 [ %add45.i.i174, %if.then.i.i175 ], [ %add45.i.i174468, %while.body.i157.rtw_secmicappendbyte.exit.i178_crit_edge ]
  %xor42.i.i173466 = phi i32 [ %xor42.i.i173, %if.then.i.i175 ], [ %xor42.i.i173465, %while.body.i157.rtw_secmicappendbyte.exit.i178_crit_edge ]
  %106 = phi i32 [ %xor42.i.i173, %if.then.i.i175 ], [ %100, %while.body.i157.rtw_secmicappendbyte.exit.i178_crit_edge ]
  %107 = phi i32 [ %add45.i.i174, %if.then.i.i175 ], [ %101, %while.body.i157.rtw_secmicappendbyte.exit.i178_crit_edge ]
  %108 = phi i32 [ 0, %if.then.i.i175 ], [ %or.i.i154, %while.body.i157.rtw_secmicappendbyte.exit.i178_crit_edge ]
  %109 = phi i32 [ 0, %if.then.i.i175 ], [ %inc.i.i155, %while.body.i157.rtw_secmicappendbyte.exit.i178_crit_edge ]
  %dec.i176 = add nsw i32 %nbytes.addr.04.i148, -1
  %cmp.not.i177 = icmp eq i32 %dec.i176, 0
  br i1 %cmp.not.i177, label %if.end21.loopexit288, label %rtw_secmicappendbyte.exit.i178.while.body.i157_crit_edge

rtw_secmicappendbyte.exit.i178.while.body.i157_crit_edge: ; preds = %rtw_secmicappendbyte.exit.i178
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i157

if.else18:                                        ; preds = %rtw_secmicappend.exit143
  %arrayidx19 = getelementptr i8, ptr %header, i32 10
  %110 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %110)
  %.promoted319 = load i32, ptr %4, align 4
  %111 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %.promoted321 = load i32, ptr %3, align 4
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %.promoted323 = load i32, ptr %1, align 4
  %113 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %.promoted325 = load i32, ptr %2, align 4
  br label %while.body.i193

while.body.i193:                                  ; preds = %rtw_secmicappendbyte.exit.i214.while.body.i193_crit_edge, %if.else18
  %114 = phi i32 [ %.promoted325, %if.else18 ], [ %120, %rtw_secmicappendbyte.exit.i214.while.body.i193_crit_edge ]
  %115 = phi i32 [ %.promoted323, %if.else18 ], [ %121, %rtw_secmicappendbyte.exit.i214.while.body.i193_crit_edge ]
  %116 = phi i32 [ %.promoted321, %if.else18 ], [ %122, %rtw_secmicappendbyte.exit.i214.while.body.i193_crit_edge ]
  %117 = phi i32 [ %.promoted319, %if.else18 ], [ %123, %rtw_secmicappendbyte.exit.i214.while.body.i193_crit_edge ]
  %nbytes.addr.04.i184 = phi i32 [ 6, %if.else18 ], [ %dec.i212, %rtw_secmicappendbyte.exit.i214.while.body.i193_crit_edge ]
  %src.addr.03.i185 = phi ptr [ %arrayidx19, %if.else18 ], [ %incdec.ptr.i186, %rtw_secmicappendbyte.exit.i214.while.body.i193_crit_edge ]
  %incdec.ptr.i186 = getelementptr i8, ptr %src.addr.03.i185, i32 1
  %118 = ptrtoint ptr %src.addr.03.i185 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %src.addr.03.i185, align 1
  %conv.i.i187 = zext i8 %119 to i32
  %mul.i.i188 = shl i32 %117, 3
  %shl.i.i189 = shl i32 %conv.i.i187, %mul.i.i188
  %or.i.i190 = or i32 %shl.i.i189, %116
  %inc.i.i191 = add i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i191)
  %cmp.i.i192 = icmp ugt i32 %inc.i.i191, 3
  br i1 %cmp.i.i192, label %if.then.i.i211, label %while.body.i193.rtw_secmicappendbyte.exit.i214_crit_edge

while.body.i193.rtw_secmicappendbyte.exit.i214_crit_edge: ; preds = %while.body.i193
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtw_secmicappendbyte.exit.i214

if.then.i.i211:                                   ; preds = %while.body.i193
  call void @__sanitizer_cov_trace_pc() #14
  %xor.i.i194 = xor i32 %115, %or.i.i190
  %or8.i.i195 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i194, i32 %xor.i.i194, i32 17) #12
  %xor9.i.i196 = xor i32 %or8.i.i195, %114
  %add.i.i197 = add i32 %xor9.i.i196, %xor.i.i194
  %and13.i.i198 = lshr i32 %add.i.i197, 8
  %shr14.i.i199 = and i32 %and13.i.i198, 16711935
  %and16.i.i200 = shl i32 %add.i.i197, 8
  %shl17.i.i201 = and i32 %and16.i.i200, -16711936
  %or18.i.i202 = or i32 %shr14.i.i199, %shl17.i.i201
  %xor20.i.i203 = xor i32 %or18.i.i202, %xor9.i.i196
  %add23.i.i204 = add i32 %xor20.i.i203, %add.i.i197
  %or29.i.i205 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i204, i32 %add23.i.i204, i32 3) #12
  %xor31.i.i206 = xor i32 %or29.i.i205, %xor20.i.i203
  %add34.i.i207 = add i32 %xor31.i.i206, %add23.i.i204
  %or40.i.i208 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i207, i32 %add34.i.i207, i32 30) #12
  %xor42.i.i209 = xor i32 %or40.i.i208, %xor31.i.i206
  %add45.i.i210 = add i32 %xor42.i.i209, %add34.i.i207
  br label %rtw_secmicappendbyte.exit.i214

rtw_secmicappendbyte.exit.i214:                   ; preds = %if.then.i.i211, %while.body.i193.rtw_secmicappendbyte.exit.i214_crit_edge
  %120 = phi i32 [ %xor42.i.i209, %if.then.i.i211 ], [ %114, %while.body.i193.rtw_secmicappendbyte.exit.i214_crit_edge ]
  %121 = phi i32 [ %add45.i.i210, %if.then.i.i211 ], [ %115, %while.body.i193.rtw_secmicappendbyte.exit.i214_crit_edge ]
  %122 = phi i32 [ 0, %if.then.i.i211 ], [ %or.i.i190, %while.body.i193.rtw_secmicappendbyte.exit.i214_crit_edge ]
  %123 = phi i32 [ 0, %if.then.i.i211 ], [ %inc.i.i191, %while.body.i193.rtw_secmicappendbyte.exit.i214_crit_edge ]
  %dec.i212 = add nsw i32 %nbytes.addr.04.i184, -1
  %cmp.not.i213 = icmp eq i32 %dec.i212, 0
  br i1 %cmp.not.i213, label %if.end21.loopexit, label %rtw_secmicappendbyte.exit.i214.while.body.i193_crit_edge

rtw_secmicappendbyte.exit.i214.while.body.i193_crit_edge: ; preds = %rtw_secmicappendbyte.exit.i214
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i193

if.end21.loopexit:                                ; preds = %rtw_secmicappendbyte.exit.i214
  call void @__sanitizer_cov_trace_pc() #14
  %124 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %4, align 4
  %125 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %122, ptr %3, align 4
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %121, ptr %1, align 4
  %127 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %120, ptr %2, align 4
  br label %if.end21

if.end21.loopexit288:                             ; preds = %rtw_secmicappendbyte.exit.i178
  call void @__sanitizer_cov_trace_pc() #14
  %128 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %128, i32 4)
  store i32 %xor42.i.i173466, ptr %2, align 1
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 %add45.i.i174469, ptr %1, align 1
  %130 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %109, ptr %4, align 4
  %131 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %108, ptr %3, align 4
  br label %if.end21

if.end21.loopexit289:                             ; preds = %rtw_secmicappendbyte.exit.i106
  call void @__sanitizer_cov_trace_pc() #14
  %132 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %xor42.i.i101403, ptr %2, align 4
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %add45.i.i102406, ptr %1, align 4
  %134 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %76, ptr %4, align 4
  %135 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %75, ptr %3, align 4
  br label %if.end21

if.end21.loopexit290:                             ; preds = %rtw_secmicappendbyte.exit.i70
  call void @__sanitizer_cov_trace_pc() #14
  %136 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %xor42.i.i65397, ptr %2, align 4
  %137 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %add45.i.i66400, ptr %1, align 4
  %138 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %62, ptr %4, align 4
  %139 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %61, ptr %3, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21.loopexit290, %if.end21.loopexit289, %if.end21.loopexit288, %if.end21.loopexit
  %140 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %140)
  %.promoted327 = load i32, ptr %4, align 4
  %141 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %141)
  %.promoted329 = load i32, ptr %3, align 4
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %.promoted331 = load i32, ptr %1, align 4
  %143 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %143)
  %.promoted333 = load i32, ptr %2, align 4
  %conv.i.i223 = zext i8 %pri to i32
  %mul.i.i224 = shl i32 %.promoted327, 3
  %shl.i.i225 = shl i32 %conv.i.i223, %mul.i.i224
  %or.i.i226 = or i32 %shl.i.i225, %.promoted329
  %144 = add i32 %.promoted327, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %144)
  %cmp.i.i228 = icmp ult i32 %144, -4
  br i1 %cmp.i.i228, label %rtw_secmicappendbyte.exit.i250.thread, label %rtw_secmicappendbyte.exit.i250

rtw_secmicappendbyte.exit.i250.thread:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %xor.i.i230 = xor i32 %.promoted331, %or.i.i226
  %or8.i.i231 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i230, i32 %xor.i.i230, i32 17) #12
  %xor9.i.i232 = xor i32 %or8.i.i231, %.promoted333
  %add.i.i233 = add i32 %xor9.i.i232, %xor.i.i230
  %and13.i.i234 = lshr i32 %add.i.i233, 8
  %shr14.i.i235 = and i32 %and13.i.i234, 16711935
  %and16.i.i236 = shl i32 %add.i.i233, 8
  %shl17.i.i237 = and i32 %and16.i.i236, -16711936
  %or18.i.i238 = or i32 %shr14.i.i235, %shl17.i.i237
  %xor20.i.i239 = xor i32 %or18.i.i238, %xor9.i.i232
  %add23.i.i240 = add i32 %xor20.i.i239, %add.i.i233
  %or29.i.i241 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i240, i32 %add23.i.i240, i32 3) #12
  %xor31.i.i242 = xor i32 %or29.i.i241, %xor20.i.i239
  %add34.i.i243 = add i32 %xor31.i.i242, %add23.i.i240
  %or40.i.i244 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i243, i32 %add34.i.i243, i32 30) #12
  %xor42.i.i245 = xor i32 %or40.i.i244, %xor31.i.i242
  %add45.i.i246 = add i32 %xor42.i.i245, %add34.i.i243
  br label %rtw_secmicappendbyte.exit.i250.2

rtw_secmicappendbyte.exit.i250:                   ; preds = %if.end21
  %145 = add i32 %.promoted327, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %145)
  %cmp.i.i228.1 = icmp ult i32 %145, -4
  br i1 %cmp.i.i228.1, label %if.then.i.i247.1, label %rtw_secmicappendbyte.exit.i250.1

if.then.i.i247.1:                                 ; preds = %rtw_secmicappendbyte.exit.i250
  call void @__sanitizer_cov_trace_pc() #14
  %xor.i.i230.1 = xor i32 %.promoted331, %or.i.i226
  %or8.i.i231.1 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i230.1, i32 %xor.i.i230.1, i32 17) #12
  %xor9.i.i232.1 = xor i32 %or8.i.i231.1, %.promoted333
  %add.i.i233.1 = add i32 %xor9.i.i232.1, %xor.i.i230.1
  %and13.i.i234.1 = lshr i32 %add.i.i233.1, 8
  %shr14.i.i235.1 = and i32 %and13.i.i234.1, 16711935
  %and16.i.i236.1 = shl i32 %add.i.i233.1, 8
  %shl17.i.i237.1 = and i32 %and16.i.i236.1, -16711936
  %or18.i.i238.1 = or i32 %shr14.i.i235.1, %shl17.i.i237.1
  %xor20.i.i239.1 = xor i32 %or18.i.i238.1, %xor9.i.i232.1
  %add23.i.i240.1 = add i32 %xor20.i.i239.1, %add.i.i233.1
  %or29.i.i241.1 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i240.1, i32 %add23.i.i240.1, i32 3) #12
  %xor31.i.i242.1 = xor i32 %or29.i.i241.1, %xor20.i.i239.1
  %add34.i.i243.1 = add i32 %xor31.i.i242.1, %add23.i.i240.1
  %or40.i.i244.1 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i243.1, i32 %add34.i.i243.1, i32 30) #12
  %xor42.i.i245.1 = xor i32 %or40.i.i244.1, %xor31.i.i242.1
  %add45.i.i246.1 = add i32 %xor42.i.i245.1, %add34.i.i243.1
  br label %rtw_secmicappendbyte.exit.i250.2

rtw_secmicappendbyte.exit.i250.1:                 ; preds = %rtw_secmicappendbyte.exit.i250
  %inc.i.i227.2 = add i32 %.promoted327, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i227.2)
  %cmp.i.i228.2 = icmp ugt i32 %inc.i.i227.2, 3
  br i1 %cmp.i.i228.2, label %rtw_secmicappendbyte.exit.i250.2.thread, label %rtw_secmicappendbyte.exit.i250.1.rtw_secmicappendbyte.exit.i250.2_crit_edge

rtw_secmicappendbyte.exit.i250.1.rtw_secmicappendbyte.exit.i250.2_crit_edge: ; preds = %rtw_secmicappendbyte.exit.i250.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtw_secmicappendbyte.exit.i250.2

rtw_secmicappendbyte.exit.i250.2.thread:          ; preds = %rtw_secmicappendbyte.exit.i250.1
  call void @__sanitizer_cov_trace_pc() #14
  %xor.i.i230.2 = xor i32 %.promoted331, %or.i.i226
  %or8.i.i231.2 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i230.2, i32 %xor.i.i230.2, i32 17) #12
  %xor9.i.i232.2 = xor i32 %or8.i.i231.2, %.promoted333
  %add.i.i233.2 = add i32 %xor9.i.i232.2, %xor.i.i230.2
  %and13.i.i234.2 = lshr i32 %add.i.i233.2, 8
  %shr14.i.i235.2 = and i32 %and13.i.i234.2, 16711935
  %and16.i.i236.2 = shl i32 %add.i.i233.2, 8
  %shl17.i.i237.2 = and i32 %and16.i.i236.2, -16711936
  %or18.i.i238.2 = or i32 %shr14.i.i235.2, %shl17.i.i237.2
  %xor20.i.i239.2 = xor i32 %or18.i.i238.2, %xor9.i.i232.2
  %add23.i.i240.2 = add i32 %xor20.i.i239.2, %add.i.i233.2
  %or29.i.i241.2 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i240.2, i32 %add23.i.i240.2, i32 3) #12
  %xor31.i.i242.2 = xor i32 %or29.i.i241.2, %xor20.i.i239.2
  %add34.i.i243.2 = add i32 %xor31.i.i242.2, %add23.i.i240.2
  %or40.i.i244.2 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i243.2, i32 %add34.i.i243.2, i32 30) #12
  %xor42.i.i245.2 = xor i32 %or40.i.i244.2, %xor31.i.i242.2
  %add45.i.i246.2 = add i32 %xor42.i.i245.2, %add34.i.i243.2
  br label %rtw_secmicappendbyte.exit.i250.3

rtw_secmicappendbyte.exit.i250.2:                 ; preds = %rtw_secmicappendbyte.exit.i250.1.rtw_secmicappendbyte.exit.i250.2_crit_edge, %if.then.i.i247.1, %rtw_secmicappendbyte.exit.i250.thread
  %146 = phi i32 [ %.promoted333, %rtw_secmicappendbyte.exit.i250.1.rtw_secmicappendbyte.exit.i250.2_crit_edge ], [ %xor42.i.i245, %rtw_secmicappendbyte.exit.i250.thread ], [ %xor42.i.i245.1, %if.then.i.i247.1 ]
  %147 = phi i32 [ %.promoted331, %rtw_secmicappendbyte.exit.i250.1.rtw_secmicappendbyte.exit.i250.2_crit_edge ], [ %add45.i.i246, %rtw_secmicappendbyte.exit.i250.thread ], [ %add45.i.i246.1, %if.then.i.i247.1 ]
  %148 = phi i32 [ %or.i.i226, %rtw_secmicappendbyte.exit.i250.1.rtw_secmicappendbyte.exit.i250.2_crit_edge ], [ 0, %rtw_secmicappendbyte.exit.i250.thread ], [ 0, %if.then.i.i247.1 ]
  %149 = phi i32 [ %inc.i.i227.2, %rtw_secmicappendbyte.exit.i250.1.rtw_secmicappendbyte.exit.i250.2_crit_edge ], [ 2, %rtw_secmicappendbyte.exit.i250.thread ], [ 1, %if.then.i.i247.1 ]
  %inc.i.i227.3 = add nuw nsw i32 %149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %149)
  %cmp.i.i228.3 = icmp ugt i32 %149, 2
  br i1 %cmp.i.i228.3, label %if.then.i.i247.3, label %rtw_secmicappendbyte.exit.i250.2.rtw_secmicappendbyte.exit.i250.3_crit_edge

rtw_secmicappendbyte.exit.i250.2.rtw_secmicappendbyte.exit.i250.3_crit_edge: ; preds = %rtw_secmicappendbyte.exit.i250.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtw_secmicappendbyte.exit.i250.3

if.then.i.i247.3:                                 ; preds = %rtw_secmicappendbyte.exit.i250.2
  call void @__sanitizer_cov_trace_pc() #14
  %xor.i.i230.3 = xor i32 %147, %148
  %or8.i.i231.3 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i230.3, i32 %xor.i.i230.3, i32 17) #12
  %xor9.i.i232.3 = xor i32 %or8.i.i231.3, %146
  %add.i.i233.3 = add i32 %xor9.i.i232.3, %xor.i.i230.3
  %and13.i.i234.3 = lshr i32 %add.i.i233.3, 8
  %shr14.i.i235.3 = and i32 %and13.i.i234.3, 16711935
  %and16.i.i236.3 = shl i32 %add.i.i233.3, 8
  %shl17.i.i237.3 = and i32 %and16.i.i236.3, -16711936
  %or18.i.i238.3 = or i32 %shr14.i.i235.3, %shl17.i.i237.3
  %xor20.i.i239.3 = xor i32 %or18.i.i238.3, %xor9.i.i232.3
  %add23.i.i240.3 = add i32 %xor20.i.i239.3, %add.i.i233.3
  %or29.i.i241.3 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i240.3, i32 %add23.i.i240.3, i32 3) #12
  %xor31.i.i242.3 = xor i32 %or29.i.i241.3, %xor20.i.i239.3
  %add34.i.i243.3 = add i32 %xor31.i.i242.3, %add23.i.i240.3
  %or40.i.i244.3 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i243.3, i32 %add34.i.i243.3, i32 30) #12
  %xor42.i.i245.3 = xor i32 %or40.i.i244.3, %xor31.i.i242.3
  %add45.i.i246.3 = add i32 %xor42.i.i245.3, %add34.i.i243.3
  br label %rtw_secmicappendbyte.exit.i250.3

rtw_secmicappendbyte.exit.i250.3:                 ; preds = %if.then.i.i247.3, %rtw_secmicappendbyte.exit.i250.2.rtw_secmicappendbyte.exit.i250.3_crit_edge, %rtw_secmicappendbyte.exit.i250.2.thread
  %150 = phi i32 [ %xor42.i.i245.3, %if.then.i.i247.3 ], [ %146, %rtw_secmicappendbyte.exit.i250.2.rtw_secmicappendbyte.exit.i250.3_crit_edge ], [ %xor42.i.i245.2, %rtw_secmicappendbyte.exit.i250.2.thread ]
  %151 = phi i32 [ %add45.i.i246.3, %if.then.i.i247.3 ], [ %147, %rtw_secmicappendbyte.exit.i250.2.rtw_secmicappendbyte.exit.i250.3_crit_edge ], [ %add45.i.i246.2, %rtw_secmicappendbyte.exit.i250.2.thread ]
  %152 = phi i32 [ 0, %if.then.i.i247.3 ], [ %148, %rtw_secmicappendbyte.exit.i250.2.rtw_secmicappendbyte.exit.i250.3_crit_edge ], [ 0, %rtw_secmicappendbyte.exit.i250.2.thread ]
  %153 = phi i32 [ 0, %if.then.i.i247.3 ], [ %inc.i.i227.3, %rtw_secmicappendbyte.exit.i250.2.rtw_secmicappendbyte.exit.i250.3_crit_edge ], [ 1, %rtw_secmicappendbyte.exit.i250.2.thread ]
  %154 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %4, align 4
  %155 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %152, ptr %3, align 4
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %151, ptr %1, align 4
  %157 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %150, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len)
  %cmp.not2.i = icmp eq i32 %data_len, 0
  br i1 %cmp.not2.i, label %rtw_secmicappendbyte.exit.i250.3.rtw_secmicappend.exit287_crit_edge, label %while.body.i265.preheader

rtw_secmicappendbyte.exit.i250.3.rtw_secmicappend.exit287_crit_edge: ; preds = %rtw_secmicappendbyte.exit.i250.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtw_secmicappend.exit287

while.body.i265.preheader:                        ; preds = %rtw_secmicappendbyte.exit.i250.3
  %158 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %158)
  %.promoted335 = load i32, ptr %4, align 4
  %159 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %159)
  %.promoted337 = load i32, ptr %3, align 4
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %.promoted339 = load i32, ptr %1, align 4
  %161 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %161)
  %.promoted341 = load i32, ptr %2, align 4
  br label %while.body.i265

while.body.i265:                                  ; preds = %rtw_secmicappendbyte.exit.i286.while.body.i265_crit_edge, %while.body.i265.preheader
  %162 = phi i32 [ %168, %rtw_secmicappendbyte.exit.i286.while.body.i265_crit_edge ], [ %.promoted341, %while.body.i265.preheader ]
  %163 = phi i32 [ %169, %rtw_secmicappendbyte.exit.i286.while.body.i265_crit_edge ], [ %.promoted339, %while.body.i265.preheader ]
  %164 = phi i32 [ %170, %rtw_secmicappendbyte.exit.i286.while.body.i265_crit_edge ], [ %.promoted337, %while.body.i265.preheader ]
  %165 = phi i32 [ %171, %rtw_secmicappendbyte.exit.i286.while.body.i265_crit_edge ], [ %.promoted335, %while.body.i265.preheader ]
  %nbytes.addr.04.i256 = phi i32 [ %dec.i284, %rtw_secmicappendbyte.exit.i286.while.body.i265_crit_edge ], [ %data_len, %while.body.i265.preheader ]
  %src.addr.03.i257 = phi ptr [ %incdec.ptr.i258, %rtw_secmicappendbyte.exit.i286.while.body.i265_crit_edge ], [ %data, %while.body.i265.preheader ]
  %incdec.ptr.i258 = getelementptr i8, ptr %src.addr.03.i257, i32 1
  %166 = ptrtoint ptr %src.addr.03.i257 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %src.addr.03.i257, align 1
  %conv.i.i259 = zext i8 %167 to i32
  %mul.i.i260 = shl i32 %165, 3
  %shl.i.i261 = shl i32 %conv.i.i259, %mul.i.i260
  %or.i.i262 = or i32 %shl.i.i261, %164
  %inc.i.i263 = add i32 %165, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i263)
  %cmp.i.i264 = icmp ugt i32 %inc.i.i263, 3
  br i1 %cmp.i.i264, label %if.then.i.i283, label %while.body.i265.rtw_secmicappendbyte.exit.i286_crit_edge

while.body.i265.rtw_secmicappendbyte.exit.i286_crit_edge: ; preds = %while.body.i265
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtw_secmicappendbyte.exit.i286

if.then.i.i283:                                   ; preds = %while.body.i265
  call void @__sanitizer_cov_trace_pc() #14
  %xor.i.i266 = xor i32 %163, %or.i.i262
  %or8.i.i267 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i266, i32 %xor.i.i266, i32 17) #12
  %xor9.i.i268 = xor i32 %or8.i.i267, %162
  %add.i.i269 = add i32 %xor9.i.i268, %xor.i.i266
  %and13.i.i270 = lshr i32 %add.i.i269, 8
  %shr14.i.i271 = and i32 %and13.i.i270, 16711935
  %and16.i.i272 = shl i32 %add.i.i269, 8
  %shl17.i.i273 = and i32 %and16.i.i272, -16711936
  %or18.i.i274 = or i32 %shr14.i.i271, %shl17.i.i273
  %xor20.i.i275 = xor i32 %or18.i.i274, %xor9.i.i268
  %add23.i.i276 = add i32 %xor20.i.i275, %add.i.i269
  %or29.i.i277 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i276, i32 %add23.i.i276, i32 3) #12
  %xor31.i.i278 = xor i32 %or29.i.i277, %xor20.i.i275
  %add34.i.i279 = add i32 %xor31.i.i278, %add23.i.i276
  %or40.i.i280 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i279, i32 %add34.i.i279, i32 30) #12
  %xor42.i.i281 = xor i32 %or40.i.i280, %xor31.i.i278
  %add45.i.i282 = add i32 %xor42.i.i281, %add34.i.i279
  br label %rtw_secmicappendbyte.exit.i286

rtw_secmicappendbyte.exit.i286:                   ; preds = %if.then.i.i283, %while.body.i265.rtw_secmicappendbyte.exit.i286_crit_edge
  %168 = phi i32 [ %xor42.i.i281, %if.then.i.i283 ], [ %162, %while.body.i265.rtw_secmicappendbyte.exit.i286_crit_edge ]
  %169 = phi i32 [ %add45.i.i282, %if.then.i.i283 ], [ %163, %while.body.i265.rtw_secmicappendbyte.exit.i286_crit_edge ]
  %170 = phi i32 [ 0, %if.then.i.i283 ], [ %or.i.i262, %while.body.i265.rtw_secmicappendbyte.exit.i286_crit_edge ]
  %171 = phi i32 [ 0, %if.then.i.i283 ], [ %inc.i.i263, %while.body.i265.rtw_secmicappendbyte.exit.i286_crit_edge ]
  %dec.i284 = add i32 %nbytes.addr.04.i256, -1
  %cmp.not.i285 = icmp eq i32 %dec.i284, 0
  br i1 %cmp.not.i285, label %rtw_secmicappend.exit287.loopexit, label %rtw_secmicappendbyte.exit.i286.while.body.i265_crit_edge

rtw_secmicappendbyte.exit.i286.while.body.i265_crit_edge: ; preds = %rtw_secmicappendbyte.exit.i286
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i265

rtw_secmicappend.exit287.loopexit:                ; preds = %rtw_secmicappendbyte.exit.i286
  call void @__sanitizer_cov_trace_pc() #14
  %172 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %4, align 4
  %173 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %170, ptr %3, align 4
  %174 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %169, ptr %1, align 4
  %175 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %168, ptr %2, align 4
  br label %rtw_secmicappend.exit287

rtw_secmicappend.exit287:                         ; preds = %rtw_secmicappend.exit287.loopexit, %rtw_secmicappendbyte.exit.i250.3.rtw_secmicappend.exit287_crit_edge
  call void @rtw_secgetmic(ptr noundef nonnull %micdata, ptr noundef %mic_code)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %micdata) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_tkip_encrypt(ptr noundef %padapter, ptr nocapture noundef readonly %pxmitframe) local_unnamed_addr #1 align 64 {
entry:
  %rc4key = alloca [16 x i8], align 1
  %ttkey = alloca [16 x i8], align 1
  %crc = alloca %union.anon.134, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rc4key) #12
  %0 = call ptr @memset(ptr %rc4key, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ttkey) #12
  %1 = call ptr @memset(ptr %ttkey, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc) #12
  %2 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %crc, align 4, !annotation !66
  %xmit_arc4_ctx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 25
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 5
  %3 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf_addr, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %4, i32 40
  %encrypt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 11
  %5 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %encrypt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp = icmp eq i8 %6, 2
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %7 = ptrtoint ptr %ra to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ra, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %dot118021XGrpKeyid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 7
  %10 = ptrtoint ptr %dot118021XGrpKeyid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dot118021XGrpKeyid, align 4
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 8, i32 %11
  br label %if.end9

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %dot118021x_UncstKey = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 49
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %prwskey.0 = phi ptr [ %arrayidx, %if.then6 ], [ %dot118021x_UncstKey, %if.else ]
  %nr_frags = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 10
  %12 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nr_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp11176.not = icmp eq i8 %13, 0
  br i1 %cmp11176.not, label %if.end9.cleanup_crit_edge, label %for.body.lr.ph

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end9
  %conv10175 = zext i8 %13 to i32
  %hdrlen = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 7
  %iv_len = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 12
  %ta = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 22
  %frag_len = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 16
  %icv_len56 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 13
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv10179 = phi i32 [ %conv10175, %for.body.lr.ph ], [ %conv10, %for.inc.for.body_crit_edge ]
  %pframe.0178 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %pframe.1, %for.inc.for.body_crit_edge ]
  %curfragnum.0177 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hdrlen, align 2
  %conv13 = zext i16 %15 to i32
  %add.ptr14 = getelementptr i8, ptr %pframe.0178, i32 %conv13
  %16 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %iv_len, align 2
  %conv15 = zext i8 %17 to i32
  %add.ptr16 = getelementptr i8, ptr %pframe.0178, i32 %conv15
  %add.ptr19 = getelementptr i8, ptr %add.ptr16, i32 %conv13
  %arrayidx20 = getelementptr i8, ptr %add.ptr14, i32 2
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx20, align 1
  %20 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr14, align 1
  %arrayidx22 = getelementptr i8, ptr %add.ptr14, i32 4
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx22, align 1
  %arrayidx23 = getelementptr i8, ptr %add.ptr14, i32 5
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx23, align 1
  %arrayidx24 = getelementptr i8, ptr %add.ptr14, i32 6
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx24, align 1
  %arrayidx25 = getelementptr i8, ptr %add.ptr14, i32 7
  %28 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx25, align 1
  %dot11txpn.sroa.10.0.insert.ext = zext i8 %19 to i64
  %dot11txpn.sroa.9.0.insert.ext = zext i8 %21 to i64
  %dot11txpn.sroa.9.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.9.0.insert.ext, 8
  %dot11txpn.sroa.9.0.insert.insert = or i64 %dot11txpn.sroa.9.0.insert.shift, %dot11txpn.sroa.10.0.insert.ext
  %dot11txpn.sroa.8.0.insert.ext = zext i8 %23 to i64
  %dot11txpn.sroa.8.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.8.0.insert.ext, 16
  %dot11txpn.sroa.8.0.insert.insert = or i64 %dot11txpn.sroa.9.0.insert.insert, %dot11txpn.sroa.8.0.insert.shift
  %dot11txpn.sroa.7.0.insert.ext = zext i8 %25 to i64
  %dot11txpn.sroa.7.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.7.0.insert.ext, 24
  %dot11txpn.sroa.7.0.insert.insert = or i64 %dot11txpn.sroa.8.0.insert.insert, %dot11txpn.sroa.7.0.insert.shift
  %dot11txpn.sroa.6.0.insert.ext = zext i8 %27 to i64
  %dot11txpn.sroa.6.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.6.0.insert.ext, 32
  %dot11txpn.sroa.5.0.insert.ext = zext i8 %29 to i64
  %dot11txpn.sroa.5.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.5.0.insert.ext, 40
  %dot11txpn.sroa.5.0.insert.mask = or i64 %dot11txpn.sroa.7.0.insert.insert, %dot11txpn.sroa.6.0.insert.shift
  %dot11txpn.sroa.0.0.insert.mask = or i64 %dot11txpn.sroa.5.0.insert.mask, %dot11txpn.sroa.5.0.insert.shift
  %conv26 = trunc i64 %dot11txpn.sroa.9.0.insert.insert to i16
  %dot11txpn.sroa.0.0.insert.insert = lshr i64 %dot11txpn.sroa.0.0.insert.mask, 16
  %conv27 = trunc i64 %dot11txpn.sroa.0.0.insert.insert to i32
  call fastcc void @phase1(ptr noundef nonnull %ttkey, ptr noundef %prwskey.0, ptr noundef %ta, i32 noundef %conv27)
  call fastcc void @phase2(ptr noundef nonnull %rc4key, ptr noundef %prwskey.0, ptr noundef nonnull %ttkey, i16 noundef zeroext %conv26)
  %add = add nuw nsw i32 %curfragnum.0177, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv10179)
  %cmp34 = icmp eq i32 %add, %conv10179
  br i1 %cmp34, label %if.then36, label %if.else49

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last_txcmdsz, align 4
  %32 = ptrtoint ptr %icv_len56 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %icv_len56, align 1
  %conv42 = zext i8 %33 to i32
  %34 = add nuw nsw i32 %conv15, %conv13
  %35 = add nuw nsw i32 %34, %conv42
  %sub43 = sub i32 %31, %35
  %call44 = call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr19, i32 noundef %sub43) #15
  %neg = xor i32 %call44, -1
  %36 = call i32 @llvm.bswap.i32(i32 %neg)
  %37 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %crc, align 4
  %call46 = call i32 @arc4_setkey(ptr noundef %xmit_arc4_ctx, ptr noundef nonnull %rc4key, i32 noundef 16) #12
  call void @arc4_crypt(ptr noundef %xmit_arc4_ctx, ptr noundef %add.ptr19, ptr noundef %add.ptr19, i32 noundef %sub43) #12
  %add.ptr47 = getelementptr i8, ptr %add.ptr19, i32 %sub43
  call void @arc4_crypt(ptr noundef %xmit_arc4_ctx, ptr noundef %add.ptr47, ptr noundef nonnull %crc, i32 noundef 4) #12
  br label %for.inc

if.else49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %frag_len, align 8
  %40 = ptrtoint ptr %icv_len56 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %icv_len56, align 1
  %conv57 = zext i8 %41 to i32
  %42 = add nuw nsw i32 %conv15, %conv13
  %43 = add nuw nsw i32 %42, %conv57
  %sub58 = sub i32 %39, %43
  %call59 = call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr19, i32 noundef %sub58) #15
  %neg60 = xor i32 %call59, -1
  %44 = call i32 @llvm.bswap.i32(i32 %neg60)
  %45 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %crc, align 4
  %call62 = call i32 @arc4_setkey(ptr noundef %xmit_arc4_ctx, ptr noundef nonnull %rc4key, i32 noundef 16) #12
  call void @arc4_crypt(ptr noundef %xmit_arc4_ctx, ptr noundef %add.ptr19, ptr noundef %add.ptr19, i32 noundef %sub58) #12
  %add.ptr63 = getelementptr i8, ptr %add.ptr19, i32 %sub58
  call void @arc4_crypt(ptr noundef %xmit_arc4_ctx, ptr noundef %add.ptr63, ptr noundef nonnull %crc, i32 noundef 4) #12
  %46 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %frag_len, align 8
  %add.ptr66 = getelementptr i8, ptr %pframe.0178, i32 %47
  %48 = ptrtoint ptr %add.ptr66 to i32
  %sub67 = add i32 %48, -1
  %or = or i32 %sub67, 3
  %add68 = add i32 %or, 1
  %49 = inttoptr i32 %add68 to ptr
  br label %for.inc

for.inc:                                          ; preds = %if.else49, %if.then36
  %pframe.1 = phi ptr [ %pframe.0178, %if.then36 ], [ %49, %if.else49 ]
  %50 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %nr_frags, align 4
  %conv10 = zext i8 %51 to i32
  %cmp11 = icmp ult i32 %add, %conv10
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end9.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ttkey) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rc4key) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phase1(ptr nocapture noundef %p1k, ptr nocapture noundef readonly %tk, ptr nocapture noundef readonly %ta, i32 noundef %iv32) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %iv32 to i16
  %0 = ptrtoint ptr %p1k to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %p1k, align 2
  %shr = lshr i32 %iv32, 16
  %conv2 = trunc i32 %shr to i16
  %arrayidx3 = getelementptr i16, ptr %p1k, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv2, ptr %arrayidx3, align 2
  %2 = ptrtoint ptr %ta to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ta, align 1
  %conv5 = zext i8 %3 to i16
  %arrayidx6 = getelementptr i8, ptr %ta, i32 1
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 1
  %conv8 = zext i8 %5 to i16
  %shl = shl nuw i16 %conv8, 8
  %xor350 = or i16 %shl, %conv5
  %arrayidx10 = getelementptr i16, ptr %p1k, i32 2
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %xor350, ptr %arrayidx10, align 2
  %arrayidx11 = getelementptr i8, ptr %ta, i32 2
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %8 to i16
  %arrayidx13 = getelementptr i8, ptr %ta, i32 3
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx13, align 1
  %conv15 = zext i8 %10 to i16
  %shl16 = shl nuw i16 %conv15, 8
  %xor17351 = or i16 %shl16, %conv12
  %arrayidx19 = getelementptr i16, ptr %p1k, i32 3
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %xor17351, ptr %arrayidx19, align 2
  %arrayidx20 = getelementptr i8, ptr %ta, i32 4
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %13 to i16
  %arrayidx22 = getelementptr i8, ptr %ta, i32 5
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx22, align 1
  %conv24 = zext i8 %15 to i16
  %shl25 = shl nuw i16 %conv24, 8
  %xor26352 = or i16 %shl25, %conv21
  %arrayidx28 = getelementptr i16, ptr %p1k, i32 4
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %xor26352, ptr %arrayidx28, align 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0363 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx28, align 2
  %conv31 = zext i16 %18 to i32
  %and32 = shl nuw i32 %i.0363, 1
  %mul = and i32 %and32, 2
  %arrayidx33 = getelementptr i8, ptr %tk, i32 %mul
  %19 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %20 to i32
  %add38 = or i32 %mul, 1
  %arrayidx39 = getelementptr i8, ptr %tk, i32 %add38
  %21 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx39, align 1
  %conv41 = zext i8 %22 to i32
  %shl42 = shl nuw nsw i32 %conv41, 8
  %xor43353 = or i32 %shl42, %conv34
  %xor44 = xor i32 %xor43353, %conv31
  %idxprom = and i32 %xor44, 255
  %arrayidx47 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx47, align 2
  %25 = lshr i32 %xor44, 8
  %arrayidx70 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %25
  %26 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx70, align 2
  %xor72354 = xor i16 %27, %24
  %28 = ptrtoint ptr %p1k to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %p1k, align 2
  %add75 = add i16 %29, %xor72354
  store i16 %add75, ptr %p1k, align 2
  %conv78 = zext i16 %add75 to i32
  %mul81 = or i32 %mul, 4
  %arrayidx82 = getelementptr i8, ptr %tk, i32 %mul81
  %30 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %31 to i32
  %add87 = or i32 %mul, 5
  %arrayidx88 = getelementptr i8, ptr %tk, i32 %add87
  %32 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx88, align 1
  %conv90 = zext i8 %33 to i32
  %shl91 = shl nuw nsw i32 %conv90, 8
  %xor92355 = or i32 %shl91, %conv83
  %xor93 = xor i32 %xor92355, %conv78
  %idxprom96 = and i32 %xor93, 255
  %arrayidx97 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom96
  %34 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx97, align 2
  %36 = lshr i32 %xor93, 8
  %arrayidx120 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %36
  %37 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx120, align 2
  %xor122356 = xor i16 %38, %35
  %39 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx3, align 2
  %add125 = add i16 %40, %xor122356
  store i16 %add125, ptr %arrayidx3, align 2
  %conv128 = zext i16 %add125 to i32
  %mul131 = or i32 %mul, 8
  %arrayidx132 = getelementptr i8, ptr %tk, i32 %mul131
  %41 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %42 to i32
  %add137 = or i32 %mul, 9
  %arrayidx138 = getelementptr i8, ptr %tk, i32 %add137
  %43 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx138, align 1
  %conv140 = zext i8 %44 to i32
  %shl141 = shl nuw nsw i32 %conv140, 8
  %xor142357 = or i32 %shl141, %conv133
  %xor143 = xor i32 %xor142357, %conv128
  %idxprom146 = and i32 %xor143, 255
  %arrayidx147 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom146
  %45 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx147, align 2
  %47 = lshr i32 %xor143, 8
  %arrayidx170 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %47
  %48 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx170, align 2
  %xor172358 = xor i16 %49, %46
  %50 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx10, align 2
  %add175 = add i16 %51, %xor172358
  store i16 %add175, ptr %arrayidx10, align 2
  %conv178 = zext i16 %add175 to i32
  %mul181 = or i32 %mul, 12
  %arrayidx182 = getelementptr i8, ptr %tk, i32 %mul181
  %52 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx182, align 1
  %conv183 = zext i8 %53 to i32
  %add187 = or i32 %mul, 13
  %arrayidx188 = getelementptr i8, ptr %tk, i32 %add187
  %54 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx188, align 1
  %conv190 = zext i8 %55 to i32
  %shl191 = shl nuw nsw i32 %conv190, 8
  %xor192359 = or i32 %shl191, %conv183
  %xor193 = xor i32 %xor192359, %conv178
  %idxprom196 = and i32 %xor193, 255
  %arrayidx197 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom196
  %56 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx197, align 2
  %58 = lshr i32 %xor193, 8
  %arrayidx220 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %58
  %59 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx220, align 2
  %xor222360 = xor i16 %60, %57
  %61 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx19, align 2
  %add225 = add i16 %62, %xor222360
  store i16 %add225, ptr %arrayidx19, align 2
  %conv228 = zext i16 %add225 to i32
  %63 = load i8, ptr %arrayidx33, align 1
  %conv233 = zext i8 %63 to i32
  %64 = load i8, ptr %arrayidx39, align 1
  %conv240 = zext i8 %64 to i32
  %shl241 = shl nuw nsw i32 %conv240, 8
  %xor242361 = or i32 %shl241, %conv233
  %xor243 = xor i32 %xor242361, %conv228
  %idxprom246 = and i32 %xor243, 255
  %arrayidx247 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom246
  %65 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx247, align 2
  %67 = lshr i32 %xor243, 8
  %arrayidx270 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %67
  %68 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx270, align 2
  %xor272362 = xor i16 %69, %66
  %70 = trunc i32 %i.0363 to i16
  %add275 = add i16 %18, %70
  %conv282 = add i16 %add275, %xor272362
  store i16 %conv282, ptr %arrayidx28, align 2
  %inc = add nuw nsw i32 %i.0363, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phase2(ptr nocapture noundef writeonly %rc4key, ptr nocapture noundef readonly %tk, ptr nocapture noundef readonly %p1k, i16 noundef zeroext %iv16) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p1k to i32
  call void @__asan_load2_noabort(i32 %0)
  %PPK.sroa.0.0.copyload = load i16, ptr %p1k, align 2
  %PPK.sroa.8.0.p1k.sroa_idx = getelementptr inbounds i8, ptr %p1k, i32 2
  %1 = ptrtoint ptr %PPK.sroa.8.0.p1k.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %1)
  %PPK.sroa.8.0.copyload = load i16, ptr %PPK.sroa.8.0.p1k.sroa_idx, align 2
  %PPK.sroa.13.0.p1k.sroa_idx = getelementptr inbounds i8, ptr %p1k, i32 4
  %2 = ptrtoint ptr %PPK.sroa.13.0.p1k.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %PPK.sroa.13.0.copyload = load i16, ptr %PPK.sroa.13.0.p1k.sroa_idx, align 2
  %PPK.sroa.18.0.p1k.sroa_idx = getelementptr inbounds i8, ptr %p1k, i32 6
  %3 = ptrtoint ptr %PPK.sroa.18.0.p1k.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %3)
  %PPK.sroa.18.0.copyload = load i16, ptr %PPK.sroa.18.0.p1k.sroa_idx, align 2
  %PPK.sroa.23.0.p1k.sroa_idx = getelementptr i8, ptr %p1k, i32 8
  %4 = ptrtoint ptr %PPK.sroa.23.0.p1k.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %PPK.sroa.23.0.copyload = load i16, ptr %PPK.sroa.23.0.p1k.sroa_idx, align 2
  %add = add i16 %PPK.sroa.23.0.copyload, %iv16
  %conv7 = zext i16 %add to i32
  %5 = ptrtoint ptr %tk to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tk, align 1
  %conv9 = zext i8 %6 to i32
  %arrayidx10 = getelementptr i8, ptr %tk, i32 1
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx10, align 1
  %conv12 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv12, 8
  %xor430 = or i32 %shl, %conv9
  %xor13 = xor i32 %xor430, %conv7
  %idxprom = and i32 %xor13, 255
  %arrayidx15 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx15, align 2
  %11 = lshr i32 %xor13, 8
  %arrayidx30 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %11
  %12 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx30, align 2
  %xor32431 = xor i16 %13, %10
  %add35 = add i16 %PPK.sroa.0.0.copyload, %xor32431
  %conv38 = zext i16 %add35 to i32
  %arrayidx39 = getelementptr i8, ptr %tk, i32 2
  %14 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %15 to i32
  %arrayidx41 = getelementptr i8, ptr %tk, i32 3
  %16 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx41, align 1
  %conv43 = zext i8 %17 to i32
  %shl44 = shl nuw nsw i32 %conv43, 8
  %xor45432 = or i32 %shl44, %conv40
  %xor46 = xor i32 %xor45432, %conv38
  %idxprom49 = and i32 %xor46, 255
  %arrayidx50 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom49
  %18 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx50, align 2
  %20 = lshr i32 %xor46, 8
  %arrayidx66 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %20
  %21 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx66, align 2
  %xor68433 = xor i16 %22, %19
  %add71 = add i16 %PPK.sroa.8.0.copyload, %xor68433
  %conv74 = zext i16 %add71 to i32
  %arrayidx75 = getelementptr i8, ptr %tk, i32 4
  %23 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %24 to i32
  %arrayidx77 = getelementptr i8, ptr %tk, i32 5
  %25 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx77, align 1
  %conv79 = zext i8 %26 to i32
  %shl80 = shl nuw nsw i32 %conv79, 8
  %xor81434 = or i32 %shl80, %conv76
  %xor82 = xor i32 %xor81434, %conv74
  %idxprom85 = and i32 %xor82, 255
  %arrayidx86 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom85
  %27 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx86, align 2
  %29 = lshr i32 %xor82, 8
  %arrayidx102 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %29
  %30 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx102, align 2
  %xor104435 = xor i16 %31, %28
  %add107 = add i16 %PPK.sroa.13.0.copyload, %xor104435
  %conv110 = zext i16 %add107 to i32
  %arrayidx111 = getelementptr i8, ptr %tk, i32 6
  %32 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %33 to i32
  %arrayidx113 = getelementptr i8, ptr %tk, i32 7
  %34 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx113, align 1
  %conv115 = zext i8 %35 to i32
  %shl116 = shl nuw nsw i32 %conv115, 8
  %xor117436 = or i32 %shl116, %conv112
  %xor118 = xor i32 %xor117436, %conv110
  %idxprom121 = and i32 %xor118, 255
  %arrayidx122 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom121
  %36 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx122, align 2
  %38 = lshr i32 %xor118, 8
  %arrayidx138 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %38
  %39 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx138, align 2
  %xor140437 = xor i16 %40, %37
  %add143 = add i16 %PPK.sroa.18.0.copyload, %xor140437
  %conv146 = zext i16 %add143 to i32
  %arrayidx147 = getelementptr i8, ptr %tk, i32 8
  %41 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx147, align 1
  %conv148 = zext i8 %42 to i32
  %arrayidx149 = getelementptr i8, ptr %tk, i32 9
  %43 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx149, align 1
  %conv151 = zext i8 %44 to i32
  %shl152 = shl nuw nsw i32 %conv151, 8
  %xor153438 = or i32 %shl152, %conv148
  %xor154 = xor i32 %xor153438, %conv146
  %idxprom157 = and i32 %xor154, 255
  %arrayidx158 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom157
  %45 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx158, align 2
  %47 = lshr i32 %xor154, 8
  %arrayidx174 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %47
  %48 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx174, align 2
  %xor176439 = xor i16 %49, %46
  %add179 = add i16 %PPK.sroa.23.0.copyload, %xor176439
  %conv182 = zext i16 %add179 to i32
  %arrayidx183 = getelementptr i8, ptr %tk, i32 10
  %50 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx183, align 1
  %conv184 = zext i8 %51 to i32
  %arrayidx185 = getelementptr i8, ptr %tk, i32 11
  %52 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx185, align 1
  %conv187 = zext i8 %53 to i32
  %shl188 = shl nuw nsw i32 %conv187, 8
  %xor189440 = or i32 %shl188, %conv184
  %xor190 = xor i32 %xor189440, %conv182
  %idxprom193 = and i32 %xor190, 255
  %arrayidx194 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom193
  %54 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx194, align 2
  %56 = lshr i32 %xor190, 8
  %arrayidx210 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %56
  %57 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx210, align 2
  %xor212441 = xor i16 %58, %55
  %add215 = add i16 %xor212441, %add
  %conv218 = zext i16 %add215 to i32
  %arrayidx219 = getelementptr i8, ptr %tk, i32 12
  %59 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx219, align 1
  %conv220 = zext i8 %60 to i32
  %arrayidx221 = getelementptr i8, ptr %tk, i32 13
  %61 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx221, align 1
  %conv223 = zext i8 %62 to i32
  %shl224 = shl nuw nsw i32 %conv223, 8
  %xor225442 = or i32 %shl224, %conv220
  %xor226 = xor i32 %xor225442, %conv218
  %63 = lshr i32 %xor226, 1
  %and239 = shl nuw nsw i32 %xor226, 15
  %xor241443 = or i32 %63, %and239
  %64 = trunc i32 %xor241443 to i16
  %conv245 = add i16 %add35, %64
  %conv247 = zext i16 %conv245 to i32
  %arrayidx248 = getelementptr i8, ptr %tk, i32 14
  %65 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx248, align 1
  %conv249 = zext i8 %66 to i32
  %arrayidx250 = getelementptr i8, ptr %tk, i32 15
  %67 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx250, align 1
  %conv252 = zext i8 %68 to i32
  %shl253 = shl nuw nsw i32 %conv252, 8
  %xor254444 = or i32 %shl253, %conv249
  %xor255 = xor i32 %xor254444, %conv247
  %69 = lshr i32 %xor255, 1
  %and268 = shl nuw nsw i32 %xor255, 15
  %xor270445 = or i32 %69, %and268
  %70 = trunc i32 %xor270445 to i16
  %conv274 = add i16 %add71, %70
  %xor283446 = tail call i16 @llvm.fshl.i16(i16 %conv274, i16 %conv274, i16 15)
  %add286 = add i16 %xor283446, %add107
  %xor296447 = tail call i16 @llvm.fshl.i16(i16 %add286, i16 %add286, i16 15)
  %add299 = add i16 %xor296447, %add143
  %xor309448 = tail call i16 @llvm.fshl.i16(i16 %add299, i16 %add299, i16 15)
  %add312 = add i16 %xor309448, %add179
  %xor322449 = tail call i16 @llvm.fshl.i16(i16 %add312, i16 %add312, i16 15)
  %add325 = add i16 %xor322449, %add215
  %71 = lshr i16 %iv16, 8
  %conv330 = trunc i16 %71 to i8
  %72 = ptrtoint ptr %rc4key to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv330, ptr %rc4key, align 1
  %73 = and i8 %conv330, 95
  %conv338 = or i8 %73, 32
  %arrayidx339 = getelementptr i8, ptr %rc4key, i32 1
  %74 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv338, ptr %arrayidx339, align 1
  %conv342 = trunc i16 %iv16 to i8
  %arrayidx343 = getelementptr i8, ptr %rc4key, i32 2
  %75 = ptrtoint ptr %arrayidx343 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv342, ptr %arrayidx343, align 1
  %76 = ptrtoint ptr %tk to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %tk, align 1
  %conv347 = zext i8 %77 to i16
  %78 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx10, align 1
  %conv350 = zext i8 %79 to i16
  %shl351 = shl nuw i16 %conv350, 8
  %xor352450 = or i16 %shl351, %conv347
  %xor353 = xor i16 %add325, %xor352450
  %80 = lshr i16 %xor353, 1
  %conv356 = trunc i16 %80 to i8
  %arrayidx357 = getelementptr i8, ptr %rc4key, i32 3
  %81 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv356, ptr %arrayidx357, align 1
  %conv365 = trunc i16 %conv245 to i8
  %arrayidx367 = getelementptr i8, ptr %rc4key, i32 4
  %82 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv365, ptr %arrayidx367, align 1
  %83 = lshr i16 %conv245, 8
  %conv372 = trunc i16 %83 to i8
  %arrayidx375 = getelementptr i8, ptr %rc4key, i32 5
  %84 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv372, ptr %arrayidx375, align 1
  %conv365.1 = trunc i16 %conv274 to i8
  %arrayidx367.1 = getelementptr i8, ptr %rc4key, i32 6
  %85 = ptrtoint ptr %arrayidx367.1 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv365.1, ptr %arrayidx367.1, align 1
  %86 = lshr i16 %conv274, 8
  %conv372.1 = trunc i16 %86 to i8
  %arrayidx375.1 = getelementptr i8, ptr %rc4key, i32 7
  %87 = ptrtoint ptr %arrayidx375.1 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv372.1, ptr %arrayidx375.1, align 1
  %conv365.2 = trunc i16 %add286 to i8
  %arrayidx367.2 = getelementptr i8, ptr %rc4key, i32 8
  %88 = ptrtoint ptr %arrayidx367.2 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv365.2, ptr %arrayidx367.2, align 1
  %89 = lshr i16 %add286, 8
  %conv372.2 = trunc i16 %89 to i8
  %arrayidx375.2 = getelementptr i8, ptr %rc4key, i32 9
  %90 = ptrtoint ptr %arrayidx375.2 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv372.2, ptr %arrayidx375.2, align 1
  %conv365.3 = trunc i16 %add299 to i8
  %arrayidx367.3 = getelementptr i8, ptr %rc4key, i32 10
  %91 = ptrtoint ptr %arrayidx367.3 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv365.3, ptr %arrayidx367.3, align 1
  %92 = lshr i16 %add299, 8
  %conv372.3 = trunc i16 %92 to i8
  %arrayidx375.3 = getelementptr i8, ptr %rc4key, i32 11
  %93 = ptrtoint ptr %arrayidx375.3 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv372.3, ptr %arrayidx375.3, align 1
  %conv365.4 = trunc i16 %add312 to i8
  %arrayidx367.4 = getelementptr i8, ptr %rc4key, i32 12
  %94 = ptrtoint ptr %arrayidx367.4 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv365.4, ptr %arrayidx367.4, align 1
  %95 = lshr i16 %add312, 8
  %conv372.4 = trunc i16 %95 to i8
  %arrayidx375.4 = getelementptr i8, ptr %rc4key, i32 13
  %96 = ptrtoint ptr %arrayidx375.4 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv372.4, ptr %arrayidx375.4, align 1
  %conv365.5 = trunc i16 %add325 to i8
  %arrayidx367.5 = getelementptr i8, ptr %rc4key, i32 14
  %97 = ptrtoint ptr %arrayidx367.5 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv365.5, ptr %arrayidx367.5, align 1
  %98 = lshr i16 %add325, 8
  %conv372.5 = trunc i16 %98 to i8
  %arrayidx375.5 = getelementptr i8, ptr %rc4key, i32 15
  %99 = ptrtoint ptr %arrayidx375.5 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv372.5, ptr %arrayidx375.5, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_tkip_decrypt(ptr noundef %padapter, ptr noundef %precvframe) local_unnamed_addr #1 align 64 {
entry:
  %rc4key = alloca [16 x i8], align 1
  %ttkey = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rc4key) #12
  %0 = call ptr @memset(ptr %rc4key, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ttkey) #12
  %recv_arc4_ctx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 26
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 9
  %1 = call ptr @memset(ptr %ttkey, i32 255, i32 16)
  %2 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_data, align 4
  %encrypt = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 17
  %4 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %encrypt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp eq i8 %5, 2
  br i1 %cmp, label %if.then, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then:                                          ; preds = %entry
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %ta = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 25
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ta) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.exit_crit_edge, label %if.then2

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then2:                                         ; preds = %if.then
  %ra = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26
  %6 = ptrtoint ptr %ra to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ra, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.else69, label %if.then5

if.then5:                                         ; preds = %if.then2
  %binstallGrpkey = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 27
  %9 = ptrtoint ptr %binstallGrpkey to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %binstallGrpkey, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %if.then7, label %if.end38

if.then7:                                         ; preds = %if.then5
  %11 = load i32, ptr @rtw_tkip_decrypt.start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8 = icmp eq i32 %11, 0
  br i1 %cmp8, label %if.then10, label %if.then7.if.end_crit_edge

if.then7.if.end_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  store i32 %12, ptr @rtw_tkip_decrypt.start, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then7.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.i = icmp eq i8 %7, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true.i:                                  ; preds = %if.end
  %arrayidx2.i = getelementptr %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26, i32 1
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp4.i = icmp eq i8 %14, -1
  br i1 %cmp4.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %arrayidx7.i = getelementptr %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26, i32 2
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp9.i = icmp eq i8 %16, -1
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true6.i.if.else_crit_edge

land.lhs.true6.i.if.else_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true11.i:                                ; preds = %land.lhs.true6.i
  %arrayidx12.i = getelementptr %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26, i32 3
  %17 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp14.i = icmp eq i8 %18, -1
  br i1 %cmp14.i, label %land.lhs.true16.i, label %land.lhs.true11.i.if.else_crit_edge

land.lhs.true11.i.if.else_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true16.i:                                ; preds = %land.lhs.true11.i
  %arrayidx17.i = getelementptr %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26, i32 4
  %19 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp19.i = icmp eq i8 %20, -1
  br i1 %cmp19.i, label %is_broadcast_mac_addr.exit, label %land.lhs.true16.i.if.else_crit_edge

land.lhs.true16.i.if.else_crit_edge:              ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

is_broadcast_mac_addr.exit:                       ; preds = %land.lhs.true16.i
  %arrayidx21.i = getelementptr %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26, i32 5
  %21 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %cmp23.i.not = icmp eq i8 %22, -1
  br i1 %cmp23.i.not, label %is_broadcast_mac_addr.exit.if.end17_crit_edge, label %is_broadcast_mac_addr.exit.if.else_crit_edge

is_broadcast_mac_addr.exit.if.else_crit_edge:     ; preds = %is_broadcast_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

is_broadcast_mac_addr.exit.if.end17_crit_edge:    ; preds = %is_broadcast_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.else:                                          ; preds = %is_broadcast_mac_addr.exit.if.else_crit_edge, %land.lhs.true16.i.if.else_crit_edge, %land.lhs.true11.i.if.else_crit_edge, %land.lhs.true6.i.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %if.end.if.else_crit_edge
  br label %if.end17

if.end17:                                         ; preds = %if.else, %is_broadcast_mac_addr.exit.if.end17_crit_edge
  %rtw_tkip_decrypt.no_gkey_mc_cnt.sink221 = phi ptr [ @rtw_tkip_decrypt.no_gkey_mc_cnt, %if.else ], [ @rtw_tkip_decrypt.no_gkey_bc_cnt, %is_broadcast_mac_addr.exit.if.end17_crit_edge ]
  %23 = ptrtoint ptr %rtw_tkip_decrypt.no_gkey_mc_cnt.sink221 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rtw_tkip_decrypt.no_gkey_mc_cnt.sink221, align 4
  %inc16 = add i32 %24, 1
  store i32 %inc16, ptr %rtw_tkip_decrypt.no_gkey_mc_cnt.sink221, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %26 = load i32, ptr @rtw_tkip_decrypt.start, align 4
  %sub = sub i32 %25, %26
  %call18 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call18)
  %cmp19 = icmp ugt i32 %call18, 1000
  br i1 %cmp19, label %if.then21, label %if.end17.exit_crit_edge

if.end17.exit_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then21:                                        ; preds = %if.end17
  %27 = load i32, ptr @rtw_tkip_decrypt.no_gkey_bc_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool22.not = icmp eq i32 %27, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %if.then21.do.body25_crit_edge

if.then21.do.body25_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

lor.lhs.false:                                    ; preds = %if.then21
  %28 = load i32, ptr @rtw_tkip_decrypt.no_gkey_mc_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool23.not = icmp eq i32 %28, 0
  br i1 %tobool23.not, label %lor.lhs.false.if.end36_crit_edge, label %lor.lhs.false.do.body25_crit_edge

lor.lhs.false.do.body25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.body25:                                        ; preds = %lor.lhs.false.do.body25_crit_edge, %if.then21.do.body25_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_tkip_decrypt.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_tkip_decrypt, %if.then30)) #12
          to label %if.end36 [label %if.then30], !srcloc !67

if.then30:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %29 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pnetdev, align 8
  %31 = load i32, ptr @rtw_tkip_decrypt.no_gkey_bc_cnt, align 4
  %32 = load i32, ptr @rtw_tkip_decrypt.no_gkey_mc_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_tkip_decrypt.__UNIQUE_ID_ddebug345, ptr noundef %30, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %30, i32 noundef %31, i32 noundef %32) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %do.body25, %lor.lhs.false.if.end36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  store i32 %33, ptr @rtw_tkip_decrypt.start, align 4
  store i32 0, ptr @rtw_tkip_decrypt.no_gkey_bc_cnt, align 4
  store i32 0, ptr @rtw_tkip_decrypt.no_gkey_mc_cnt, align 4
  br label %exit

if.end38:                                         ; preds = %if.then5
  %34 = load i32, ptr @rtw_tkip_decrypt.no_gkey_bc_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool39.not = icmp eq i32 %34, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %if.end38.do.body44_crit_edge

if.end38.do.body44_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

lor.lhs.false40:                                  ; preds = %if.end38
  %35 = load i32, ptr @rtw_tkip_decrypt.no_gkey_mc_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool41.not = icmp eq i32 %35, 0
  br i1 %tobool41.not, label %lor.lhs.false40.if.end66_crit_edge, label %lor.lhs.false40.do.body44_crit_edge

lor.lhs.false40.do.body44_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

lor.lhs.false40.if.end66_crit_edge:               ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

do.body44:                                        ; preds = %lor.lhs.false40.do.body44_crit_edge, %if.end38.do.body44_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_tkip_decrypt.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_tkip_decrypt, %if.then56)) #12
          to label %if.end66 [label %if.then56], !srcloc !67

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  %pnetdev57 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %36 = ptrtoint ptr %pnetdev57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pnetdev57, align 8
  %38 = load i32, ptr @rtw_tkip_decrypt.no_gkey_bc_cnt, align 4
  %39 = load i32, ptr @rtw_tkip_decrypt.no_gkey_mc_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_tkip_decrypt.__UNIQUE_ID_ddebug346, ptr noundef %37, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %37, i32 noundef %38, i32 noundef %39) #12
  br label %if.end66

if.end66:                                         ; preds = %if.then56, %do.body44, %lor.lhs.false40.if.end66_crit_edge
  store i32 0, ptr @rtw_tkip_decrypt.start, align 4
  store i32 0, ptr @rtw_tkip_decrypt.no_gkey_bc_cnt, align 4
  store i32 0, ptr @rtw_tkip_decrypt.no_gkey_mc_cnt, align 4
  %key_index = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 29
  %40 = ptrtoint ptr %key_index to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %key_index, align 1
  %idxprom = zext i8 %41 to i32
  %arrayidx67 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 8, i32 %idxprom
  br label %if.end71

if.else69:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %dot118021x_UncstKey = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 17
  br label %if.end71

if.end71:                                         ; preds = %if.else69, %if.end66
  %prwskey.0 = phi ptr [ %arrayidx67, %if.end66 ], [ %dot118021x_UncstKey, %if.else69 ]
  %hdrlen = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 4
  %42 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %hdrlen, align 1
  %conv72 = zext i8 %43 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv72
  %iv_len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 18
  %44 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %iv_len, align 4
  %conv73 = zext i8 %45 to i32
  %add.ptr74 = getelementptr i8, ptr %3, i32 %conv73
  %add.ptr77 = getelementptr i8, ptr %add.ptr74, i32 %conv72
  %len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 7
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  %48 = add nuw nsw i32 %conv73, %conv72
  %sub83 = sub i32 %47, %48
  %arrayidx85 = getelementptr i8, ptr %add.ptr, i32 2
  %49 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx85, align 1
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr, align 1
  %arrayidx87 = getelementptr i8, ptr %add.ptr, i32 4
  %53 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx87, align 1
  %arrayidx88 = getelementptr i8, ptr %add.ptr, i32 5
  %55 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx88, align 1
  %arrayidx89 = getelementptr i8, ptr %add.ptr, i32 6
  %57 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx89, align 1
  %arrayidx90 = getelementptr i8, ptr %add.ptr, i32 7
  %59 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx90, align 1
  %dot11txpn.sroa.10.0.insert.ext = zext i8 %50 to i64
  %dot11txpn.sroa.9.0.insert.ext = zext i8 %52 to i64
  %dot11txpn.sroa.9.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.9.0.insert.ext, 8
  %dot11txpn.sroa.9.0.insert.insert = or i64 %dot11txpn.sroa.9.0.insert.shift, %dot11txpn.sroa.10.0.insert.ext
  %dot11txpn.sroa.8.0.insert.ext = zext i8 %54 to i64
  %dot11txpn.sroa.8.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.8.0.insert.ext, 16
  %dot11txpn.sroa.8.0.insert.insert = or i64 %dot11txpn.sroa.9.0.insert.insert, %dot11txpn.sroa.8.0.insert.shift
  %dot11txpn.sroa.7.0.insert.ext = zext i8 %56 to i64
  %dot11txpn.sroa.7.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.7.0.insert.ext, 24
  %dot11txpn.sroa.7.0.insert.insert = or i64 %dot11txpn.sroa.8.0.insert.insert, %dot11txpn.sroa.7.0.insert.shift
  %dot11txpn.sroa.6.0.insert.ext = zext i8 %58 to i64
  %dot11txpn.sroa.6.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.6.0.insert.ext, 32
  %dot11txpn.sroa.5.0.insert.ext = zext i8 %60 to i64
  %dot11txpn.sroa.5.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.5.0.insert.ext, 40
  %dot11txpn.sroa.5.0.insert.mask = or i64 %dot11txpn.sroa.7.0.insert.insert, %dot11txpn.sroa.6.0.insert.shift
  %dot11txpn.sroa.0.0.insert.mask = or i64 %dot11txpn.sroa.5.0.insert.mask, %dot11txpn.sroa.5.0.insert.shift
  %conv93 = trunc i64 %dot11txpn.sroa.9.0.insert.insert to i16
  %dot11txpn.sroa.0.0.insert.insert = lshr i64 %dot11txpn.sroa.0.0.insert.mask, 16
  %conv94 = trunc i64 %dot11txpn.sroa.0.0.insert.insert to i32
  call fastcc void @phase1(ptr noundef nonnull %ttkey, ptr noundef %prwskey.0, ptr noundef %ta, i32 noundef %conv94)
  call fastcc void @phase2(ptr noundef nonnull %rc4key, ptr noundef %prwskey.0, ptr noundef nonnull %ttkey, i16 noundef zeroext %conv93)
  %call101 = call i32 @arc4_setkey(ptr noundef %recv_arc4_ctx, ptr noundef nonnull %rc4key, i32 noundef 16) #12
  call void @arc4_crypt(ptr noundef %recv_arc4_ctx, ptr noundef %add.ptr77, ptr noundef %add.ptr77, i32 noundef %sub83) #12
  %sub102 = add i32 %sub83, -4
  %call103 = call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr77, i32 noundef %sub102) #15
  %neg = xor i32 %call103, -1
  %crc.sroa.0.0.extract.shift = lshr i32 %neg, 24
  %crc.sroa.5.0.extract.shift = lshr i32 %neg, 16
  %sub107 = add i32 %sub83, -1
  %arrayidx108 = getelementptr i8, ptr %add.ptr77, i32 %sub107
  %61 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx108, align 1
  %63 = trunc i32 %neg to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %63)
  %cmp110.not = icmp eq i8 %62, %63
  br i1 %cmp110.not, label %lor.lhs.false112, label %if.end71.if.then136_crit_edge

if.end71.if.then136_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then136

lor.lhs.false112:                                 ; preds = %if.end71
  %crc.sroa.7.0.extract.shift = lshr i32 %neg, 8
  %sub115 = add i32 %sub83, -2
  %arrayidx116 = getelementptr i8, ptr %add.ptr77, i32 %sub115
  %64 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx116, align 1
  %66 = trunc i32 %crc.sroa.7.0.extract.shift to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %66)
  %cmp118.not = icmp eq i8 %65, %66
  br i1 %cmp118.not, label %lor.lhs.false120, label %lor.lhs.false112.if.then136_crit_edge

lor.lhs.false112.if.then136_crit_edge:            ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then136

lor.lhs.false120:                                 ; preds = %lor.lhs.false112
  %sub123 = add i32 %sub83, -3
  %arrayidx124 = getelementptr i8, ptr %add.ptr77, i32 %sub123
  %67 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx124, align 1
  %69 = trunc i32 %crc.sroa.5.0.extract.shift to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %69)
  %cmp126.not = icmp eq i8 %68, %69
  br i1 %cmp126.not, label %lor.lhs.false128, label %lor.lhs.false120.if.then136_crit_edge

lor.lhs.false120.if.then136_crit_edge:            ; preds = %lor.lhs.false120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then136

lor.lhs.false128:                                 ; preds = %lor.lhs.false120
  %arrayidx132 = getelementptr i8, ptr %add.ptr77, i32 %sub102
  %70 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %71 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %crc.sroa.0.0.extract.shift, i32 %conv133)
  %cmp134.not = icmp eq i32 %crc.sroa.0.0.extract.shift, %conv133
  br i1 %cmp134.not, label %lor.lhs.false128.exit_crit_edge, label %lor.lhs.false128.if.then136_crit_edge

lor.lhs.false128.if.then136_crit_edge:            ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then136

lor.lhs.false128.exit_crit_edge:                  ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then136:                                       ; preds = %lor.lhs.false128.if.then136_crit_edge, %lor.lhs.false120.if.then136_crit_edge, %lor.lhs.false112.if.then136_crit_edge, %if.end71.if.then136_crit_edge
  br label %exit

exit:                                             ; preds = %if.then136, %lor.lhs.false128.exit_crit_edge, %if.end36, %if.end17.exit_crit_edge, %if.then.exit_crit_edge, %entry.exit_crit_edge
  %res.0 = phi i32 [ 0, %if.then136 ], [ 1, %lor.lhs.false128.exit_crit_edge ], [ 0, %if.end36 ], [ 0, %if.end17.exit_crit_edge ], [ 1, %entry.exit_crit_edge ], [ 0, %if.then.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ttkey) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rc4key) #12
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_aes_encrypt(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 5
  %0 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf_addr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %encrypt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 11
  %2 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %encrypt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp eq i8 %3, 4
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %4 = ptrtoint ptr %ra to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ra, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %dot118021XGrpKeyid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 7
  %7 = ptrtoint ptr %dot118021XGrpKeyid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dot118021XGrpKeyid, align 4
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 8, i32 %8
  br label %if.end9

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %dot118021x_UncstKey = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 49
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %prwskey.0 = phi ptr [ %arrayidx, %if.then6 ], [ %dot118021x_UncstKey, %if.else ]
  %nr_frags = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 10
  %9 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nr_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp1182.not = icmp eq i8 %10, 0
  br i1 %cmp1182.not, label %if.end9.cleanup_crit_edge, label %for.body.lr.ph

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end9
  %conv1081 = zext i8 %10 to i32
  %frag_len = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 16
  %hdrlen27 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 7
  %iv_len30 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 12
  %icv_len33 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 13
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv1085 = phi i32 [ %conv1081, %for.body.lr.ph ], [ %conv10, %for.inc.for.body_crit_edge ]
  %pframe.084 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %pframe.1, %for.inc.for.body_crit_edge ]
  %curfragnum.083 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %curfragnum.083, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv1085)
  %cmp15 = icmp eq i32 %add, %conv1085
  br i1 %cmp15, label %if.then17, label %if.else26

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last_txcmdsz, align 4
  %13 = ptrtoint ptr %hdrlen27 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hdrlen27, align 2
  %conv18 = zext i16 %14 to i32
  %15 = ptrtoint ptr %iv_len30 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %iv_len30, align 2
  %conv19 = zext i8 %16 to i32
  %17 = ptrtoint ptr %icv_len33 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %icv_len33, align 1
  %conv21 = zext i8 %18 to i32
  %19 = add nuw nsw i32 %conv18, %conv19
  %20 = add nuw nsw i32 %19, %conv21
  %sub22 = sub i32 %12, %20
  tail call fastcc void @aes_cipher(ptr noundef %prwskey.0, i32 noundef %conv18, ptr noundef %pframe.084, i32 noundef %sub22)
  br label %for.inc

if.else26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frag_len, align 8
  %23 = ptrtoint ptr %hdrlen27 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hdrlen27, align 2
  %conv28 = zext i16 %24 to i32
  %25 = ptrtoint ptr %iv_len30 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %iv_len30, align 2
  %conv31 = zext i8 %26 to i32
  %27 = ptrtoint ptr %icv_len33 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %icv_len33, align 1
  %conv34 = zext i8 %28 to i32
  %29 = add nuw nsw i32 %conv28, %conv31
  %30 = add nuw nsw i32 %29, %conv34
  %sub35 = sub i32 %22, %30
  tail call fastcc void @aes_cipher(ptr noundef %prwskey.0, i32 noundef %conv28, ptr noundef %pframe.084, i32 noundef %sub35)
  %31 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %frag_len, align 8
  %add.ptr40 = getelementptr i8, ptr %pframe.084, i32 %32
  %33 = ptrtoint ptr %add.ptr40 to i32
  %sub41 = add i32 %33, -1
  %or = or i32 %sub41, 3
  %add42 = add i32 %or, 1
  %34 = inttoptr i32 %add42 to ptr
  br label %for.inc

for.inc:                                          ; preds = %if.else26, %if.then17
  %pframe.1 = phi ptr [ %pframe.084, %if.then17 ], [ %34, %if.else26 ]
  %35 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nr_frags, align 4
  %conv10 = zext i8 %36 to i32
  %cmp11 = icmp ult i32 %add, %conv10
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end9.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aes_cipher(ptr noundef %key, i32 noundef %hdrlen, ptr noundef %pframe, i32 noundef %plen) unnamed_addr #1 align 64 {
entry:
  %ctx.i451 = alloca %struct.crypto_aes_ctx, align 4
  %ctx.i347 = alloca %struct.crypto_aes_ctx, align 4
  %ctx.i240 = alloca %struct.crypto_aes_ctx, align 4
  %ctx.i213 = alloca %struct.crypto_aes_ctx, align 4
  %ctx.i150 = alloca %struct.crypto_aes_ctx, align 4
  %ctx.i87 = alloca %struct.crypto_aes_ctx, align 4
  %ctx.i24 = alloca %struct.crypto_aes_ctx, align 4
  %ctx.i = alloca %struct.crypto_aes_ctx, align 4
  %mic_iv = alloca [16 x i8], align 1
  %ctr_preload = alloca [16 x i8], align 1
  %chain_buffer = alloca [16 x i8], align 8
  %aes_out = alloca [16 x i8], align 1
  %padded_buffer = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mic_iv) #12
  %0 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 7
  %7 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 8
  %8 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 9
  %9 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 10
  %10 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 11
  %11 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 12
  %12 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 13
  %13 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 14
  %14 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctr_preload) #12
  %15 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 1
  %16 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 2
  %17 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 3
  %18 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 4
  %19 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 5
  %20 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 6
  %21 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 7
  %22 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 8
  %23 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 9
  %24 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 10
  %25 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 11
  %26 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 12
  %27 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 13
  %28 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 14
  %29 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %chain_buffer) #12
  %30 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 1
  %31 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 2
  %32 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 3
  %33 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 4
  %34 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 5
  %35 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 6
  %36 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 7
  %37 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 8
  %38 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 9
  %39 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 10
  %40 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 11
  %41 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 12
  %42 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 13
  %43 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 14
  %44 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %aes_out) #12
  %45 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 1
  %46 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 2
  %47 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 3
  %48 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 4
  %49 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 5
  %50 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 6
  %51 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 7
  %52 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 8
  %53 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 9
  %54 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 10
  %55 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 11
  %56 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 12
  %57 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 13
  %58 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 14
  %59 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %padded_buffer)
  %padded_buffer.1..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 1
  %padded_buffer.2..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 2
  %padded_buffer.3..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 3
  %padded_buffer.4..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 4
  %padded_buffer.5..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 5
  %padded_buffer.6..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 6
  %padded_buffer.7..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 7
  %padded_buffer.8..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 8
  %padded_buffer.9..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 9
  %padded_buffer.10..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 10
  %padded_buffer.11..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 11
  %padded_buffer.12..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 12
  %padded_buffer.13..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 13
  %padded_buffer.14..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 14
  %padded_buffer.15..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 15
  %60 = ptrtoint ptr %pframe to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %pframe, align 2
  %62 = tail call i16 @llvm.bswap.i16(i16 %61)
  %conv = zext i16 %62 to i32
  %and = and i32 %conv, 12
  %63 = getelementptr inbounds i8, ptr %mic_iv, i32 1
  %64 = call ptr @memset(ptr %63, i32 0, i32 15)
  %65 = call ptr @memset(ptr %ctr_preload, i32 0, i32 16)
  %66 = call ptr @memset(ptr %chain_buffer, i32 0, i32 16)
  %67 = call ptr @memset(ptr %aes_out, i32 0, i32 16)
  %68 = call ptr @memset(ptr %padded_buffer, i32 0, i32 16)
  %69 = add i32 %hdrlen, -24
  %switch.and = and i32 %69, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %70 = and i32 %conv, 204
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %70)
  %71 = icmp eq i32 %70, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %hdrlen)
  %cmp42.not = icmp eq i32 %hdrlen, 26
  %add45 = add i32 %hdrlen, 2
  %spec.select = select i1 %cmp42.not, i32 26, i32 %add45
  %hdrlen.addr.1 = select i1 %71, i32 %spec.select, i32 %hdrlen
  %arrayidx = getelementptr i8, ptr %pframe, i32 %hdrlen.addr.1
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx, align 1
  %add51 = add i32 %hdrlen.addr.1, 1
  %arrayidx52 = getelementptr i8, ptr %pframe, i32 %add51
  %74 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx52, align 1
  %add54 = add i32 %hdrlen.addr.1, 4
  %arrayidx55 = getelementptr i8, ptr %pframe, i32 %add54
  %76 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx55, align 1
  %add57 = add i32 %hdrlen.addr.1, 5
  %arrayidx58 = getelementptr i8, ptr %pframe, i32 %add57
  %78 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx58, align 1
  %add60 = add i32 %hdrlen.addr.1, 6
  %arrayidx61 = getelementptr i8, ptr %pframe, i32 %add60
  %80 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx61, align 1
  %add63 = add i32 %hdrlen.addr.1, 7
  %arrayidx64 = getelementptr i8, ptr %pframe, i32 %add63
  %82 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx64, align 1
  %84 = ptrtoint ptr %mic_iv to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 89, ptr %mic_iv, align 1
  %tobool.not.i = xor i1 %71, true
  %or.cond.i = or i1 %switch.selectcmp, %tobool.not.i
  br i1 %or.cond.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx2.i = getelementptr i8, ptr %pframe, i32 30
  %85 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx2.i, align 1
  %87 = and i8 %86, 15
  %88 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %0, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %or.cond64.i = and i1 %switch.selectcmp, %71
  br i1 %or.cond64.i, label %if.then8.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx9.i = getelementptr i8, ptr %pframe, i32 24
  %89 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx9.i, align 1
  %91 = and i8 %90, 15
  %92 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %0, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %if.end.i.if.end14.i_crit_edge
  br i1 %71, label %if.end14.i.if.end18.i_crit_edge, label %if.then16.i

if.end14.i.if.end18.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %0, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end14.i.if.end18.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.i = icmp eq i32 %and, 0
  br i1 %cmp.i, label %if.then20.i, label %if.end18.i.construct_mic_iv.exit_crit_edge

if.end18.i.construct_mic_iv.exit_crit_edge:       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %construct_mic_iv.exit

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %0, align 1
  %96 = or i8 %95, 16
  store i8 %96, ptr %0, align 1
  br label %construct_mic_iv.exit

construct_mic_iv.exit:                            ; preds = %if.then20.i, %if.end18.i.construct_mic_iv.exit_crit_edge
  %arrayidx27.i = getelementptr i8, ptr %pframe, i32 10
  %97 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx27.i, align 1
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %1, align 1
  %arrayidx27.1.i = getelementptr i8, ptr %pframe, i32 11
  %100 = ptrtoint ptr %arrayidx27.1.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx27.1.i, align 1
  %102 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %2, align 1
  %arrayidx27.2.i = getelementptr i8, ptr %pframe, i32 12
  %103 = ptrtoint ptr %arrayidx27.2.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx27.2.i, align 1
  %105 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %3, align 1
  %arrayidx27.3.i = getelementptr i8, ptr %pframe, i32 13
  %106 = ptrtoint ptr %arrayidx27.3.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx27.3.i, align 1
  %108 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %4, align 1
  %arrayidx27.4.i = getelementptr i8, ptr %pframe, i32 14
  %109 = ptrtoint ptr %arrayidx27.4.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx27.4.i, align 1
  %111 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %5, align 1
  %arrayidx27.5.i = getelementptr i8, ptr %pframe, i32 15
  %112 = ptrtoint ptr %arrayidx27.5.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx27.5.i, align 1
  %114 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %6, align 1
  %115 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %83, ptr %7, align 1
  %116 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %81, ptr %8, align 1
  %117 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %79, ptr %9, align 1
  %118 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %77, ptr %10, align 1
  %119 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %75, ptr %11, align 1
  %120 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %73, ptr %12, align 1
  %div63.i = lshr i32 %plen, 8
  %conv38.i = trunc i32 %div63.i to i8
  %121 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv38.i, ptr %13, align 1
  %conv40.i = trunc i32 %plen to i8
  %122 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv40.i, ptr %14, align 1
  %sub.i = add i32 %hdrlen.addr.1, -2
  %div.i = sdiv i32 %sub.i, 256
  %conv.i = trunc i32 %div.i to i8
  %conv2.i = trunc i32 %sub.i to i8
  %123 = ptrtoint ptr %pframe to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %pframe, align 1
  %125 = and i8 %124, -49
  %.sink.i = select i1 %cmp.i, i8 %124, i8 %125
  %arrayidx11.i = getelementptr i8, ptr %pframe, i32 1
  %126 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx11.i, align 1
  %128 = and i8 %127, -57
  %arrayidx16.i = getelementptr i8, ptr %pframe, i32 4
  %129 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx16.i, align 1
  %arrayidx18.i = getelementptr i8, ptr %pframe, i32 5
  %131 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx18.i, align 1
  %arrayidx20.i = getelementptr i8, ptr %pframe, i32 6
  %133 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx20.i, align 1
  %arrayidx22.i = getelementptr i8, ptr %pframe, i32 7
  %135 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx22.i, align 1
  %arrayidx24.i = getelementptr i8, ptr %pframe, i32 8
  %137 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx24.i, align 1
  %arrayidx26.i = getelementptr i8, ptr %pframe, i32 9
  %139 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx26.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %pframe, i32 16
  %141 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx1.i, align 1
  %arrayidx3.i10 = getelementptr i8, ptr %pframe, i32 17
  %143 = ptrtoint ptr %arrayidx3.i10 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx3.i10, align 1
  %arrayidx5.i = getelementptr i8, ptr %pframe, i32 18
  %145 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx5.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %pframe, i32 19
  %147 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx7.i, align 1
  %arrayidx9.i12 = getelementptr i8, ptr %pframe, i32 20
  %149 = ptrtoint ptr %arrayidx9.i12 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx9.i12, align 1
  %arrayidx11.i13 = getelementptr i8, ptr %pframe, i32 21
  %151 = ptrtoint ptr %arrayidx11.i13 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx11.i13, align 1
  %or.cond.i17 = or i1 %switch.selectcmp, %71
  br i1 %or.cond.i17, label %construct_mic_iv.exit.if.end.i20_crit_edge, label %for.body18.preheader.i

construct_mic_iv.exit.if.end.i20_crit_edge:       ; preds = %construct_mic_iv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i20

for.body18.preheader.i:                           ; preds = %construct_mic_iv.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx19.i18 = getelementptr i8, ptr %pframe, i32 24
  %153 = ptrtoint ptr %arrayidx19.i18 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx19.i18, align 1
  %arrayidx19.1.i = getelementptr i8, ptr %pframe, i32 25
  %155 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx19.1.i, align 1
  %arrayidx19.2.i = getelementptr i8, ptr %pframe, i32 26
  %157 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx19.2.i, align 1
  %arrayidx19.3.i = getelementptr i8, ptr %pframe, i32 27
  %159 = ptrtoint ptr %arrayidx19.3.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx19.3.i, align 1
  %arrayidx19.4.i = getelementptr i8, ptr %pframe, i32 28
  %161 = ptrtoint ptr %arrayidx19.4.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx19.4.i, align 1
  %arrayidx19.5.i = getelementptr i8, ptr %pframe, i32 29
  %163 = ptrtoint ptr %arrayidx19.5.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx19.5.i, align 1
  br label %if.end.i20

if.end.i20:                                       ; preds = %for.body18.preheader.i, %construct_mic_iv.exit.if.end.i20_crit_edge
  %mic_header2.sroa.28.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i20_crit_edge ], [ %154, %for.body18.preheader.i ]
  %mic_header2.sroa.33.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i20_crit_edge ], [ %156, %for.body18.preheader.i ]
  %mic_header2.sroa.38.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i20_crit_edge ], [ %158, %for.body18.preheader.i ]
  %mic_header2.sroa.42.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i20_crit_edge ], [ %160, %for.body18.preheader.i ]
  %mic_header2.sroa.46.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i20_crit_edge ], [ %162, %for.body18.preheader.i ]
  %mic_header2.sroa.50.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i20_crit_edge ], [ %164, %for.body18.preheader.i ]
  br i1 %or.cond64.i, label %if.then28.i, label %if.end.i20.if.end37.i_crit_edge

if.end.i20.if.end37.i_crit_edge:                  ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

if.then28.i:                                      ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx29.i21 = getelementptr i8, ptr %pframe, i32 24
  %165 = ptrtoint ptr %arrayidx29.i21 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx29.i21, align 1
  %167 = and i8 %166, 15
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then28.i, %if.end.i20.if.end37.i_crit_edge
  %mic_header2.sroa.28.1 = phi i8 [ %167, %if.then28.i ], [ %mic_header2.sroa.28.0, %if.end.i20.if.end37.i_crit_edge ]
  %mic_header2.sroa.33.1 = phi i8 [ 0, %if.then28.i ], [ %mic_header2.sroa.33.0, %if.end.i20.if.end37.i_crit_edge ]
  br i1 %or.cond.i, label %if.end37.i.construct_mic_header2.exit_crit_edge, label %for.body45.preheader.i

if.end37.i.construct_mic_header2.exit_crit_edge:  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %construct_mic_header2.exit

for.body45.preheader.i:                           ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx47.i = getelementptr i8, ptr %pframe, i32 24
  %168 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx47.i, align 1
  %arrayidx47.1.i = getelementptr i8, ptr %pframe, i32 25
  %170 = ptrtoint ptr %arrayidx47.1.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx47.1.i, align 1
  %arrayidx47.2.i = getelementptr i8, ptr %pframe, i32 26
  %172 = ptrtoint ptr %arrayidx47.2.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx47.2.i, align 1
  %arrayidx47.3.i = getelementptr i8, ptr %pframe, i32 27
  %174 = ptrtoint ptr %arrayidx47.3.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx47.3.i, align 1
  %arrayidx47.4.i = getelementptr i8, ptr %pframe, i32 28
  %176 = ptrtoint ptr %arrayidx47.4.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx47.4.i, align 1
  %arrayidx47.5.i = getelementptr i8, ptr %pframe, i32 29
  %178 = ptrtoint ptr %arrayidx47.5.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx47.5.i, align 1
  %arrayidx53.i = getelementptr i8, ptr %pframe, i32 30
  %180 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx53.i, align 1
  %182 = and i8 %181, 15
  br label %construct_mic_header2.exit

construct_mic_header2.exit:                       ; preds = %for.body45.preheader.i, %if.end37.i.construct_mic_header2.exit_crit_edge
  %mic_header2.sroa.28.2 = phi i8 [ %mic_header2.sroa.28.1, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %169, %for.body45.preheader.i ]
  %mic_header2.sroa.33.2 = phi i8 [ %mic_header2.sroa.33.1, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %171, %for.body45.preheader.i ]
  %mic_header2.sroa.38.1 = phi i8 [ %mic_header2.sroa.38.0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %173, %for.body45.preheader.i ]
  %mic_header2.sroa.42.1 = phi i8 [ %mic_header2.sroa.42.0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %175, %for.body45.preheader.i ]
  %mic_header2.sroa.46.1 = phi i8 [ %mic_header2.sroa.46.0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %177, %for.body45.preheader.i ]
  %mic_header2.sroa.50.1 = phi i8 [ %mic_header2.sroa.50.0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %179, %for.body45.preheader.i ]
  %mic_header2.sroa.54.0 = phi i8 [ 0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %182, %for.body45.preheader.i ]
  %rem = and i32 %plen, 15
  %div1 = lshr i32 %plen, 4
  %add70 = add i32 %hdrlen.addr.1, 8
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i) #12
  %183 = call ptr @memset(ptr %ctx.i, i32 255, i32 484)
  %call.i = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i, ptr noundef %key, i32 noundef 16) #12
  call void @aes_encrypt(ptr noundef nonnull %ctx.i, ptr noundef nonnull %aes_out, ptr noundef nonnull %mic_iv) #12
  %184 = call ptr @memset(ptr %ctx.i, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i) #12, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i) #12
  %185 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %aes_out, align 1
  %xor9.i = xor i8 %186, %conv.i
  %187 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %xor9.i, ptr %chain_buffer, align 8
  %188 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %45, align 1
  %xor9.1.i = xor i8 %189, %conv2.i
  %190 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %xor9.1.i, ptr %30, align 1
  %191 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %46, align 1
  %xor9.2.i = xor i8 %192, %.sink.i
  %193 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %xor9.2.i, ptr %31, align 2
  %194 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %47, align 1
  %xor9.3.i = xor i8 %195, %128
  %196 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %xor9.3.i, ptr %32, align 1
  %197 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %48, align 1
  %xor9.4.i = xor i8 %198, %130
  %199 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %xor9.4.i, ptr %33, align 4
  %200 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %49, align 1
  %xor9.5.i = xor i8 %201, %132
  %202 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %xor9.5.i, ptr %34, align 1
  %203 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %50, align 1
  %xor9.6.i = xor i8 %204, %134
  %205 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %xor9.6.i, ptr %35, align 2
  %206 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %51, align 1
  %xor9.7.i = xor i8 %207, %136
  %208 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %xor9.7.i, ptr %36, align 1
  %209 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %52, align 1
  %xor9.8.i = xor i8 %210, %138
  %211 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %xor9.8.i, ptr %37, align 8
  %212 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %53, align 1
  %xor9.9.i = xor i8 %213, %140
  %214 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %xor9.9.i, ptr %38, align 1
  %215 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %54, align 1
  %xor9.10.i = xor i8 %216, %98
  %217 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %xor9.10.i, ptr %39, align 2
  %218 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %55, align 1
  %xor9.11.i = xor i8 %219, %101
  %220 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %xor9.11.i, ptr %40, align 1
  %221 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %56, align 1
  %xor9.12.i = xor i8 %222, %104
  %223 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %xor9.12.i, ptr %41, align 4
  %224 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %57, align 1
  %xor9.13.i = xor i8 %225, %107
  %226 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %xor9.13.i, ptr %42, align 1
  %227 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %58, align 1
  %xor9.14.i = xor i8 %228, %110
  %229 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %xor9.14.i, ptr %43, align 2
  %230 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %59, align 1
  %xor9.15.i = xor i8 %231, %113
  %232 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %xor9.15.i, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i24) #12
  %233 = call ptr @memset(ptr %ctx.i24, i32 255, i32 484)
  %call.i25 = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i24, ptr noundef %key, i32 noundef 16) #12
  call void @aes_encrypt(ptr noundef nonnull %ctx.i24, ptr noundef nonnull %aes_out, ptr noundef nonnull %chain_buffer) #12
  %234 = call ptr @memset(ptr %ctx.i24, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i24) #12, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i24) #12
  %235 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %aes_out, align 1
  %xor9.i26 = xor i8 %236, %142
  %237 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %xor9.i26, ptr %chain_buffer, align 8
  %238 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %45, align 1
  %xor9.1.i29 = xor i8 %239, %144
  %240 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %xor9.1.i29, ptr %30, align 1
  %241 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %46, align 1
  %xor9.2.i33 = xor i8 %242, %146
  %243 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %xor9.2.i33, ptr %31, align 2
  %244 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %47, align 1
  %xor9.3.i37 = xor i8 %245, %148
  %246 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %xor9.3.i37, ptr %32, align 1
  %247 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %48, align 1
  %xor9.4.i41 = xor i8 %248, %150
  %249 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %xor9.4.i41, ptr %33, align 4
  %250 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %49, align 1
  %xor9.5.i45 = xor i8 %251, %152
  %252 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %xor9.5.i45, ptr %34, align 1
  %253 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %50, align 1
  %255 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %254, ptr %35, align 2
  %256 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %51, align 1
  %258 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %257, ptr %36, align 1
  %259 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %52, align 1
  %xor9.8.i57 = xor i8 %260, %mic_header2.sroa.28.2
  %261 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %xor9.8.i57, ptr %37, align 8
  %262 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %53, align 1
  %xor9.9.i61 = xor i8 %263, %mic_header2.sroa.33.2
  %264 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %xor9.9.i61, ptr %38, align 1
  %265 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %54, align 1
  %xor9.10.i65 = xor i8 %266, %mic_header2.sroa.38.1
  %267 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %xor9.10.i65, ptr %39, align 2
  %268 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %55, align 1
  %xor9.11.i69 = xor i8 %269, %mic_header2.sroa.42.1
  %270 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %xor9.11.i69, ptr %40, align 1
  %271 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %56, align 1
  %xor9.12.i73 = xor i8 %272, %mic_header2.sroa.46.1
  %273 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %xor9.12.i73, ptr %41, align 4
  %274 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %57, align 1
  %xor9.13.i77 = xor i8 %275, %mic_header2.sroa.50.1
  %276 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %xor9.13.i77, ptr %42, align 1
  %277 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %58, align 1
  %xor9.14.i81 = xor i8 %278, %mic_header2.sroa.54.0
  %279 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %xor9.14.i81, ptr %43, align 2
  %280 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %59, align 1
  %282 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %281, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i87) #12
  %283 = call ptr @memset(ptr %ctx.i87, i32 255, i32 484)
  %call.i88 = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i87, ptr noundef %key, i32 noundef 16) #12
  call void @aes_encrypt(ptr noundef nonnull %ctx.i87, ptr noundef nonnull %aes_out, ptr noundef nonnull %chain_buffer) #12
  %284 = call ptr @memset(ptr %ctx.i87, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i87) #12, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i87) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %plen)
  %cmp83549.not = icmp ult i32 %plen, 16
  br i1 %cmp83549.not, label %construct_mic_header2.exit.for.end_crit_edge, label %for.body.preheader

construct_mic_header2.exit.for.end_crit_edge:     ; preds = %construct_mic_header2.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %construct_mic_header2.exit
  %umax = call i32 @llvm.umax.i32(i32 %div1, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %payload_index.0551 = phi i32 [ %add88, %for.body.for.body_crit_edge ], [ %add70, %for.body.preheader ]
  %i.0550 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx86 = getelementptr i8, ptr %pframe, i32 %payload_index.0551
  %285 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %aes_out, align 1
  %287 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %arrayidx86, align 1
  %xor9.i89 = xor i8 %288, %286
  %289 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 %xor9.i89, ptr %chain_buffer, align 8
  %290 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %45, align 1
  %arrayidx1.1.i91 = getelementptr i8, ptr %arrayidx86, i32 1
  %292 = ptrtoint ptr %arrayidx1.1.i91 to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %arrayidx1.1.i91, align 1
  %xor9.1.i92 = xor i8 %293, %291
  %294 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %xor9.1.i92, ptr %30, align 1
  %295 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %46, align 1
  %arrayidx1.2.i95 = getelementptr i8, ptr %arrayidx86, i32 2
  %297 = ptrtoint ptr %arrayidx1.2.i95 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %arrayidx1.2.i95, align 1
  %xor9.2.i96 = xor i8 %298, %296
  %299 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 %xor9.2.i96, ptr %31, align 2
  %300 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %47, align 1
  %arrayidx1.3.i99 = getelementptr i8, ptr %arrayidx86, i32 3
  %302 = ptrtoint ptr %arrayidx1.3.i99 to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %arrayidx1.3.i99, align 1
  %xor9.3.i100 = xor i8 %303, %301
  %304 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %xor9.3.i100, ptr %32, align 1
  %305 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %48, align 1
  %arrayidx1.4.i103 = getelementptr i8, ptr %arrayidx86, i32 4
  %307 = ptrtoint ptr %arrayidx1.4.i103 to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx1.4.i103, align 1
  %xor9.4.i104 = xor i8 %308, %306
  %309 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %xor9.4.i104, ptr %33, align 4
  %310 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %49, align 1
  %arrayidx1.5.i107 = getelementptr i8, ptr %arrayidx86, i32 5
  %312 = ptrtoint ptr %arrayidx1.5.i107 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx1.5.i107, align 1
  %xor9.5.i108 = xor i8 %313, %311
  %314 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %xor9.5.i108, ptr %34, align 1
  %315 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %50, align 1
  %arrayidx1.6.i111 = getelementptr i8, ptr %arrayidx86, i32 6
  %317 = ptrtoint ptr %arrayidx1.6.i111 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %arrayidx1.6.i111, align 1
  %xor9.6.i112 = xor i8 %318, %316
  %319 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 %xor9.6.i112, ptr %35, align 2
  %320 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %51, align 1
  %arrayidx1.7.i115 = getelementptr i8, ptr %arrayidx86, i32 7
  %322 = ptrtoint ptr %arrayidx1.7.i115 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx1.7.i115, align 1
  %xor9.7.i116 = xor i8 %323, %321
  %324 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %xor9.7.i116, ptr %36, align 1
  %325 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %52, align 1
  %arrayidx1.8.i119 = getelementptr i8, ptr %arrayidx86, i32 8
  %327 = ptrtoint ptr %arrayidx1.8.i119 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %arrayidx1.8.i119, align 1
  %xor9.8.i120 = xor i8 %328, %326
  %329 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 %xor9.8.i120, ptr %37, align 8
  %330 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %53, align 1
  %arrayidx1.9.i123 = getelementptr i8, ptr %arrayidx86, i32 9
  %332 = ptrtoint ptr %arrayidx1.9.i123 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %arrayidx1.9.i123, align 1
  %xor9.9.i124 = xor i8 %333, %331
  %334 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 %xor9.9.i124, ptr %38, align 1
  %335 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %54, align 1
  %arrayidx1.10.i127 = getelementptr i8, ptr %arrayidx86, i32 10
  %337 = ptrtoint ptr %arrayidx1.10.i127 to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx1.10.i127, align 1
  %xor9.10.i128 = xor i8 %338, %336
  %339 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %xor9.10.i128, ptr %39, align 2
  %340 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %55, align 1
  %arrayidx1.11.i131 = getelementptr i8, ptr %arrayidx86, i32 11
  %342 = ptrtoint ptr %arrayidx1.11.i131 to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %arrayidx1.11.i131, align 1
  %xor9.11.i132 = xor i8 %343, %341
  %344 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 %xor9.11.i132, ptr %40, align 1
  %345 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %56, align 1
  %arrayidx1.12.i135 = getelementptr i8, ptr %arrayidx86, i32 12
  %347 = ptrtoint ptr %arrayidx1.12.i135 to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %arrayidx1.12.i135, align 1
  %xor9.12.i136 = xor i8 %348, %346
  %349 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 %xor9.12.i136, ptr %41, align 4
  %350 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %57, align 1
  %arrayidx1.13.i139 = getelementptr i8, ptr %arrayidx86, i32 13
  %352 = ptrtoint ptr %arrayidx1.13.i139 to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %arrayidx1.13.i139, align 1
  %xor9.13.i140 = xor i8 %353, %351
  %354 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %xor9.13.i140, ptr %42, align 1
  %355 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %58, align 1
  %arrayidx1.14.i143 = getelementptr i8, ptr %arrayidx86, i32 14
  %357 = ptrtoint ptr %arrayidx1.14.i143 to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %arrayidx1.14.i143, align 1
  %xor9.14.i144 = xor i8 %358, %356
  %359 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 %xor9.14.i144, ptr %43, align 2
  %360 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %59, align 1
  %arrayidx1.15.i147 = getelementptr i8, ptr %arrayidx86, i32 15
  %362 = ptrtoint ptr %arrayidx1.15.i147 to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %arrayidx1.15.i147, align 1
  %xor9.15.i148 = xor i8 %363, %361
  %364 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 %xor9.15.i148, ptr %44, align 1
  %add88 = add i32 %payload_index.0551, 16
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i150) #12
  %365 = call ptr @memset(ptr %ctx.i150, i32 255, i32 484)
  %call.i151 = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i150, ptr noundef %key, i32 noundef 16) #12
  call void @aes_encrypt(ptr noundef nonnull %ctx.i150, ptr noundef nonnull %aes_out, ptr noundef nonnull %chain_buffer) #12
  %366 = call ptr @memset(ptr %ctx.i150, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i150) #12, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i150) #12
  %inc = add nuw nsw i32 %i.0550, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %construct_mic_header2.exit.for.end_crit_edge
  %payload_index.0.lcssa = phi i32 [ %add70, %construct_mic_header2.exit.for.end_crit_edge ], [ %add88, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp91.not = icmp eq i32 %rem, 0
  br i1 %cmp91.not, label %for.end.if.end117_crit_edge, label %for.end111

for.end.if.end117_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117

for.end111:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %uglygep = getelementptr i8, ptr %pframe, i32 %payload_index.0.lcssa
  %367 = sub nuw nsw i32 16, %rem
  %368 = getelementptr i8, ptr %padded_buffer, i32 %rem
  %369 = call ptr @memset(ptr %368, i32 0, i32 %367)
  %370 = call ptr @memcpy(ptr %padded_buffer, ptr %uglygep, i32 %rem)
  %371 = add i32 %payload_index.0.lcssa, %rem
  %372 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %aes_out, align 1
  %374 = ptrtoint ptr %padded_buffer to i32
  call void @__asan_load1_noabort(i32 %374)
  %padded_buffer.0. = load i8, ptr %padded_buffer, align 8
  %xor9.i152 = xor i8 %padded_buffer.0., %373
  %375 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 %xor9.i152, ptr %chain_buffer, align 8
  %376 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %45, align 1
  %378 = ptrtoint ptr %padded_buffer.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %378)
  %padded_buffer.1. = load i8, ptr %padded_buffer.1..sroa_idx, align 1
  %xor9.1.i155 = xor i8 %padded_buffer.1., %377
  %379 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 %xor9.1.i155, ptr %30, align 1
  %380 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %46, align 1
  %382 = ptrtoint ptr %padded_buffer.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %382)
  %padded_buffer.2. = load i8, ptr %padded_buffer.2..sroa_idx, align 2
  %xor9.2.i159 = xor i8 %padded_buffer.2., %381
  %383 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 %xor9.2.i159, ptr %31, align 2
  %384 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %47, align 1
  %386 = ptrtoint ptr %padded_buffer.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %386)
  %padded_buffer.3. = load i8, ptr %padded_buffer.3..sroa_idx, align 1
  %xor9.3.i163 = xor i8 %padded_buffer.3., %385
  %387 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 %xor9.3.i163, ptr %32, align 1
  %388 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %48, align 1
  %390 = ptrtoint ptr %padded_buffer.4..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %390)
  %padded_buffer.4. = load i8, ptr %padded_buffer.4..sroa_idx, align 4
  %xor9.4.i167 = xor i8 %padded_buffer.4., %389
  %391 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 %xor9.4.i167, ptr %33, align 4
  %392 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %49, align 1
  %394 = ptrtoint ptr %padded_buffer.5..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %394)
  %padded_buffer.5. = load i8, ptr %padded_buffer.5..sroa_idx, align 1
  %xor9.5.i171 = xor i8 %padded_buffer.5., %393
  %395 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 %xor9.5.i171, ptr %34, align 1
  %396 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %50, align 1
  %398 = ptrtoint ptr %padded_buffer.6..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %398)
  %padded_buffer.6. = load i8, ptr %padded_buffer.6..sroa_idx, align 2
  %xor9.6.i175 = xor i8 %padded_buffer.6., %397
  %399 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %399)
  store i8 %xor9.6.i175, ptr %35, align 2
  %400 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %51, align 1
  %402 = ptrtoint ptr %padded_buffer.7..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %402)
  %padded_buffer.7. = load i8, ptr %padded_buffer.7..sroa_idx, align 1
  %xor9.7.i179 = xor i8 %padded_buffer.7., %401
  %403 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 %xor9.7.i179, ptr %36, align 1
  %404 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %52, align 1
  %406 = ptrtoint ptr %padded_buffer.8..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %406)
  %padded_buffer.8. = load i8, ptr %padded_buffer.8..sroa_idx, align 8
  %xor9.8.i183 = xor i8 %padded_buffer.8., %405
  %407 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 %xor9.8.i183, ptr %37, align 8
  %408 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %53, align 1
  %410 = ptrtoint ptr %padded_buffer.9..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %410)
  %padded_buffer.9. = load i8, ptr %padded_buffer.9..sroa_idx, align 1
  %xor9.9.i187 = xor i8 %padded_buffer.9., %409
  %411 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 %xor9.9.i187, ptr %38, align 1
  %412 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %54, align 1
  %414 = ptrtoint ptr %padded_buffer.10..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %414)
  %padded_buffer.10. = load i8, ptr %padded_buffer.10..sroa_idx, align 2
  %xor9.10.i191 = xor i8 %padded_buffer.10., %413
  %415 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 %xor9.10.i191, ptr %39, align 2
  %416 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %55, align 1
  %418 = ptrtoint ptr %padded_buffer.11..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %418)
  %padded_buffer.11. = load i8, ptr %padded_buffer.11..sroa_idx, align 1
  %xor9.11.i195 = xor i8 %padded_buffer.11., %417
  %419 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 %xor9.11.i195, ptr %40, align 1
  %420 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %56, align 1
  %422 = ptrtoint ptr %padded_buffer.12..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %422)
  %padded_buffer.12. = load i8, ptr %padded_buffer.12..sroa_idx, align 4
  %xor9.12.i199 = xor i8 %padded_buffer.12., %421
  %423 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 %xor9.12.i199, ptr %41, align 4
  %424 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %57, align 1
  %426 = ptrtoint ptr %padded_buffer.13..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %426)
  %padded_buffer.13. = load i8, ptr %padded_buffer.13..sroa_idx, align 1
  %xor9.13.i203 = xor i8 %padded_buffer.13., %425
  %427 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 %xor9.13.i203, ptr %42, align 1
  %428 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %58, align 1
  %430 = ptrtoint ptr %padded_buffer.14..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %430)
  %padded_buffer.14. = load i8, ptr %padded_buffer.14..sroa_idx, align 2
  %xor9.14.i207 = xor i8 %padded_buffer.14., %429
  %431 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 %xor9.14.i207, ptr %43, align 2
  %432 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %59, align 1
  %434 = ptrtoint ptr %padded_buffer.15..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %434)
  %padded_buffer.15. = load i8, ptr %padded_buffer.15..sroa_idx, align 1
  %xor9.15.i211 = xor i8 %padded_buffer.15., %433
  %435 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 %xor9.15.i211, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i213) #12
  %436 = call ptr @memset(ptr %ctx.i213, i32 255, i32 484)
  %call.i214 = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i213, ptr noundef %key, i32 noundef 16) #12
  call void @aes_encrypt(ptr noundef nonnull %ctx.i213, ptr noundef nonnull %aes_out, ptr noundef nonnull %chain_buffer) #12
  %437 = call ptr @memset(ptr %ctx.i213, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i213) #12, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i213) #12
  br label %if.end117

if.end117:                                        ; preds = %for.end111, %for.end.if.end117_crit_edge
  %payload_index.2 = phi i32 [ %371, %for.end111 ], [ %payload_index.0.lcssa, %for.end.if.end117_crit_edge ]
  %438 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %438)
  %mic.sroa.0.0.copyload = load i8, ptr %aes_out, align 1
  %439 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %439)
  %mic.sroa.5.0.copyload = load i8, ptr %45, align 1
  %440 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %440)
  %mic.sroa.6.0.copyload = load i8, ptr %46, align 1
  %441 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %441)
  %mic.sroa.7.0.copyload = load i8, ptr %47, align 1
  %442 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %442)
  %mic.sroa.8.0.copyload = load i8, ptr %48, align 1
  %443 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %443)
  %mic.sroa.9.0.copyload = load i8, ptr %49, align 1
  %444 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %444)
  %mic.sroa.10.0.copyload = load i8, ptr %50, align 1
  %445 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %445)
  %mic.sroa.11.0.copyload = load i8, ptr %51, align 1
  %uglygep576 = getelementptr i8, ptr %pframe, i32 %payload_index.2
  %446 = ptrtoint ptr %uglygep576 to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 %mic.sroa.0.0.copyload, ptr %uglygep576, align 1
  %mic.sroa.5.0.uglygep576.sroa_idx = getelementptr inbounds i8, ptr %uglygep576, i32 1
  %447 = ptrtoint ptr %mic.sroa.5.0.uglygep576.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 %mic.sroa.5.0.copyload, ptr %mic.sroa.5.0.uglygep576.sroa_idx, align 1
  %mic.sroa.6.0.uglygep576.sroa_idx = getelementptr inbounds i8, ptr %uglygep576, i32 2
  %448 = ptrtoint ptr %mic.sroa.6.0.uglygep576.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 %mic.sroa.6.0.copyload, ptr %mic.sroa.6.0.uglygep576.sroa_idx, align 1
  %mic.sroa.7.0.uglygep576.sroa_idx = getelementptr inbounds i8, ptr %uglygep576, i32 3
  %449 = ptrtoint ptr %mic.sroa.7.0.uglygep576.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 %mic.sroa.7.0.copyload, ptr %mic.sroa.7.0.uglygep576.sroa_idx, align 1
  %mic.sroa.8.0.uglygep576.sroa_idx = getelementptr inbounds i8, ptr %uglygep576, i32 4
  %450 = ptrtoint ptr %mic.sroa.8.0.uglygep576.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 %mic.sroa.8.0.copyload, ptr %mic.sroa.8.0.uglygep576.sroa_idx, align 1
  %mic.sroa.9.0.uglygep576.sroa_idx = getelementptr inbounds i8, ptr %uglygep576, i32 5
  %451 = ptrtoint ptr %mic.sroa.9.0.uglygep576.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 %mic.sroa.9.0.copyload, ptr %mic.sroa.9.0.uglygep576.sroa_idx, align 1
  %mic.sroa.10.0.uglygep576.sroa_idx = getelementptr inbounds i8, ptr %uglygep576, i32 6
  %452 = ptrtoint ptr %mic.sroa.10.0.uglygep576.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %452)
  store i8 %mic.sroa.10.0.copyload, ptr %mic.sroa.10.0.uglygep576.sroa_idx, align 1
  %mic.sroa.11.0.uglygep576.sroa_idx = getelementptr inbounds i8, ptr %uglygep576, i32 7
  %453 = ptrtoint ptr %mic.sroa.11.0.uglygep576.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 %mic.sroa.11.0.copyload, ptr %mic.sroa.11.0.uglygep576.sroa_idx, align 1
  br i1 %cmp83549.not, label %if.end117.for.end162_crit_edge, label %for.body141.lr.ph

if.end117.for.end162_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end162

for.body141.lr.ph:                                ; preds = %if.end117
  %arrayidx3.i217 = getelementptr i8, ptr %pframe, i32 30
  %arrayidx10.i222 = getelementptr i8, ptr %pframe, i32 24
  %umax578 = call i32 @llvm.umax.i32(i32 %div1, i32 1)
  br label %for.body141

for.body141:                                      ; preds = %construct_ctr_preload.exit.for.body141_crit_edge, %for.body141.lr.ph
  %payload_index.3563 = phi i32 [ %add70, %for.body141.lr.ph ], [ %576, %construct_ctr_preload.exit.for.body141_crit_edge ]
  %i.1562 = phi i32 [ 0, %for.body141.lr.ph ], [ %add144, %construct_ctr_preload.exit.for.body141_crit_edge ]
  %add144 = add nuw nsw i32 %i.1562, 1
  %454 = call ptr @memset(ptr %15, i32 0, i32 15)
  %455 = ptrtoint ptr %ctr_preload to i32
  call void @__asan_store1_noabort(i32 %455)
  store i8 1, ptr %ctr_preload, align 1
  br i1 %or.cond.i, label %for.body141.if.end.i221_crit_edge, label %if.then.i219

for.body141.if.end.i221_crit_edge:                ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i221

if.then.i219:                                     ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #14
  %456 = ptrtoint ptr %arrayidx3.i217 to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %arrayidx3.i217, align 1
  %458 = and i8 %457, 15
  %459 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %459)
  store i8 %458, ptr %15, align 1
  br label %if.end.i221

if.end.i221:                                      ; preds = %if.then.i219, %for.body141.if.end.i221_crit_edge
  br i1 %or.cond64.i, label %if.then9.i, label %if.end.i221.if.end15.i_crit_edge

if.end.i221.if.end15.i_crit_edge:                 ; preds = %if.end.i221
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.then9.i:                                       ; preds = %if.end.i221
  call void @__sanitizer_cov_trace_pc() #14
  %460 = ptrtoint ptr %arrayidx10.i222 to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %arrayidx10.i222, align 1
  %462 = and i8 %461, 15
  %463 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %463)
  store i8 %462, ptr %15, align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then9.i, %if.end.i221.if.end15.i_crit_edge
  br i1 %cmp.i, label %if.then18.i, label %if.end15.i.construct_ctr_preload.exit_crit_edge

if.end15.i.construct_ctr_preload.exit_crit_edge:  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %construct_ctr_preload.exit

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %464 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %15, align 1
  %466 = or i8 %465, 16
  store i8 %466, ptr %15, align 1
  br label %construct_ctr_preload.exit

construct_ctr_preload.exit:                       ; preds = %if.then18.i, %if.end15.i.construct_ctr_preload.exit_crit_edge
  %467 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %arrayidx27.i, align 1
  %469 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %469)
  store i8 %468, ptr %16, align 1
  %470 = ptrtoint ptr %arrayidx27.1.i to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %arrayidx27.1.i, align 1
  %472 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %472)
  store i8 %471, ptr %17, align 1
  %473 = ptrtoint ptr %arrayidx27.2.i to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %arrayidx27.2.i, align 1
  %475 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %475)
  store i8 %474, ptr %18, align 1
  %476 = ptrtoint ptr %arrayidx27.3.i to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %arrayidx27.3.i, align 1
  %478 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %478)
  store i8 %477, ptr %19, align 1
  %479 = ptrtoint ptr %arrayidx27.4.i to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %arrayidx27.4.i, align 1
  %481 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 %480, ptr %20, align 1
  %482 = ptrtoint ptr %arrayidx27.5.i to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %arrayidx27.5.i, align 1
  %484 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 %483, ptr %21, align 1
  %485 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 %83, ptr %22, align 1
  %486 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %486)
  store i8 %81, ptr %23, align 1
  %487 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 %79, ptr %24, align 1
  %488 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %488)
  store i8 %77, ptr %25, align 1
  %489 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %489)
  store i8 %75, ptr %26, align 1
  %490 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %490)
  store i8 %73, ptr %27, align 1
  %div.i239.udiv627 = lshr i32 %add144, 8
  %conv41.i = trunc i32 %div.i239.udiv627 to i8
  %491 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %491)
  store i8 %conv41.i, ptr %28, align 1
  %conv43.i = trunc i32 %add144 to i8
  %492 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %492)
  store i8 %conv43.i, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i240) #12
  %493 = call ptr @memset(ptr %ctx.i240, i32 255, i32 484)
  %call.i241 = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i240, ptr noundef %key, i32 noundef 16) #12
  call void @aes_encrypt(ptr noundef nonnull %ctx.i240, ptr noundef nonnull %aes_out, ptr noundef nonnull %ctr_preload) #12
  %494 = call ptr @memset(ptr %ctx.i240, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i240) #12, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i240) #12
  %arrayidx148 = getelementptr i8, ptr %pframe, i32 %payload_index.3563
  %495 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %aes_out, align 1
  %497 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %arrayidx148, align 1
  %xor9.i242 = xor i8 %498, %496
  %499 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 %xor9.i242, ptr %chain_buffer, align 8
  %500 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %45, align 1
  %arrayidx1.1.i244 = getelementptr i8, ptr %arrayidx148, i32 1
  %502 = ptrtoint ptr %arrayidx1.1.i244 to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %arrayidx1.1.i244, align 1
  %xor9.1.i245 = xor i8 %503, %501
  %504 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 %xor9.1.i245, ptr %30, align 1
  %505 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %46, align 1
  %arrayidx1.2.i248 = getelementptr i8, ptr %arrayidx148, i32 2
  %507 = ptrtoint ptr %arrayidx1.2.i248 to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %arrayidx1.2.i248, align 1
  %xor9.2.i249 = xor i8 %508, %506
  %509 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %509)
  store i8 %xor9.2.i249, ptr %31, align 2
  %510 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %47, align 1
  %arrayidx1.3.i252 = getelementptr i8, ptr %arrayidx148, i32 3
  %512 = ptrtoint ptr %arrayidx1.3.i252 to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %arrayidx1.3.i252, align 1
  %xor9.3.i253 = xor i8 %513, %511
  %514 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 %xor9.3.i253, ptr %32, align 1
  %515 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %48, align 1
  %arrayidx1.4.i256 = getelementptr i8, ptr %arrayidx148, i32 4
  %517 = ptrtoint ptr %arrayidx1.4.i256 to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %arrayidx1.4.i256, align 1
  %xor9.4.i257 = xor i8 %518, %516
  %519 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %519)
  store i8 %xor9.4.i257, ptr %33, align 4
  %520 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %520)
  %521 = load i8, ptr %49, align 1
  %arrayidx1.5.i260 = getelementptr i8, ptr %arrayidx148, i32 5
  %522 = ptrtoint ptr %arrayidx1.5.i260 to i32
  call void @__asan_load1_noabort(i32 %522)
  %523 = load i8, ptr %arrayidx1.5.i260, align 1
  %xor9.5.i261 = xor i8 %523, %521
  %524 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %524)
  store i8 %xor9.5.i261, ptr %34, align 1
  %525 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %525)
  %526 = load i8, ptr %50, align 1
  %arrayidx1.6.i264 = getelementptr i8, ptr %arrayidx148, i32 6
  %527 = ptrtoint ptr %arrayidx1.6.i264 to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %arrayidx1.6.i264, align 1
  %xor9.6.i265 = xor i8 %528, %526
  %529 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %529)
  store i8 %xor9.6.i265, ptr %35, align 2
  %530 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %51, align 1
  %arrayidx1.7.i268 = getelementptr i8, ptr %arrayidx148, i32 7
  %532 = ptrtoint ptr %arrayidx1.7.i268 to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %arrayidx1.7.i268, align 1
  %xor9.7.i269 = xor i8 %533, %531
  %534 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 %xor9.7.i269, ptr %36, align 1
  %535 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %535)
  %536 = load i8, ptr %52, align 1
  %arrayidx1.8.i272 = getelementptr i8, ptr %arrayidx148, i32 8
  %537 = ptrtoint ptr %arrayidx1.8.i272 to i32
  call void @__asan_load1_noabort(i32 %537)
  %538 = load i8, ptr %arrayidx1.8.i272, align 1
  %xor9.8.i273 = xor i8 %538, %536
  %539 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %539)
  store i8 %xor9.8.i273, ptr %37, align 8
  %540 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %540)
  %541 = load i8, ptr %53, align 1
  %arrayidx1.9.i276 = getelementptr i8, ptr %arrayidx148, i32 9
  %542 = ptrtoint ptr %arrayidx1.9.i276 to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %arrayidx1.9.i276, align 1
  %xor9.9.i277 = xor i8 %543, %541
  %544 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %544)
  store i8 %xor9.9.i277, ptr %38, align 1
  %545 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %545)
  %546 = load i8, ptr %54, align 1
  %arrayidx1.10.i280 = getelementptr i8, ptr %arrayidx148, i32 10
  %547 = ptrtoint ptr %arrayidx1.10.i280 to i32
  call void @__asan_load1_noabort(i32 %547)
  %548 = load i8, ptr %arrayidx1.10.i280, align 1
  %xor9.10.i281 = xor i8 %548, %546
  %549 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %549)
  store i8 %xor9.10.i281, ptr %39, align 2
  %550 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %55, align 1
  %arrayidx1.11.i284 = getelementptr i8, ptr %arrayidx148, i32 11
  %552 = ptrtoint ptr %arrayidx1.11.i284 to i32
  call void @__asan_load1_noabort(i32 %552)
  %553 = load i8, ptr %arrayidx1.11.i284, align 1
  %xor9.11.i285 = xor i8 %553, %551
  %554 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %554)
  store i8 %xor9.11.i285, ptr %40, align 1
  %555 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %555)
  %556 = load i8, ptr %56, align 1
  %arrayidx1.12.i288 = getelementptr i8, ptr %arrayidx148, i32 12
  %557 = ptrtoint ptr %arrayidx1.12.i288 to i32
  call void @__asan_load1_noabort(i32 %557)
  %558 = load i8, ptr %arrayidx1.12.i288, align 1
  %xor9.12.i289 = xor i8 %558, %556
  %559 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %559)
  store i8 %xor9.12.i289, ptr %41, align 4
  %560 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %57, align 1
  %arrayidx1.13.i292 = getelementptr i8, ptr %arrayidx148, i32 13
  %562 = ptrtoint ptr %arrayidx1.13.i292 to i32
  call void @__asan_load1_noabort(i32 %562)
  %563 = load i8, ptr %arrayidx1.13.i292, align 1
  %xor9.13.i293 = xor i8 %563, %561
  %564 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %564)
  store i8 %xor9.13.i293, ptr %42, align 1
  %565 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %565)
  %566 = load i8, ptr %58, align 1
  %arrayidx1.14.i296 = getelementptr i8, ptr %arrayidx148, i32 14
  %567 = ptrtoint ptr %arrayidx1.14.i296 to i32
  call void @__asan_load1_noabort(i32 %567)
  %568 = load i8, ptr %arrayidx1.14.i296, align 1
  %xor9.14.i297 = xor i8 %568, %566
  %569 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %569)
  store i8 %xor9.14.i297, ptr %43, align 2
  %570 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %59, align 1
  %arrayidx1.15.i300 = getelementptr i8, ptr %arrayidx148, i32 15
  %572 = ptrtoint ptr %arrayidx1.15.i300 to i32
  call void @__asan_load1_noabort(i32 %572)
  %573 = load i8, ptr %arrayidx1.15.i300, align 1
  %xor9.15.i301 = xor i8 %573, %571
  %574 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %574)
  store i8 %xor9.15.i301, ptr %44, align 1
  %575 = call ptr @memcpy(ptr %arrayidx148, ptr %chain_buffer, i32 16)
  %576 = add i32 %payload_index.3563, 16
  %exitcond579.not = icmp eq i32 %add144, %umax578
  br i1 %exitcond579.not, label %construct_ctr_preload.exit.for.end162_crit_edge, label %construct_ctr_preload.exit.for.body141_crit_edge

construct_ctr_preload.exit.for.body141_crit_edge: ; preds = %construct_ctr_preload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body141

construct_ctr_preload.exit.for.end162_crit_edge:  ; preds = %construct_ctr_preload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end162

for.end162:                                       ; preds = %construct_ctr_preload.exit.for.end162_crit_edge, %if.end117.for.end162_crit_edge
  %payload_index.3.lcssa = phi i32 [ %add70, %if.end117.for.end162_crit_edge ], [ %576, %construct_ctr_preload.exit.for.end162_crit_edge ]
  br i1 %cmp91.not, label %for.end162.if.end202_crit_edge, label %if.then165

for.end162.if.end202_crit_edge:                   ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end202

if.then165:                                       ; preds = %for.end162
  %add168 = add nuw nsw i32 %div1, 1
  %577 = call ptr @memset(ptr %15, i32 0, i32 15)
  %578 = ptrtoint ptr %ctr_preload to i32
  call void @__asan_store1_noabort(i32 %578)
  store i8 1, ptr %ctr_preload, align 1
  br i1 %or.cond.i, label %if.then165.if.end.i310_crit_edge, label %if.then.i307

if.then165.if.end.i310_crit_edge:                 ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i310

if.then.i307:                                     ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx3.i305 = getelementptr i8, ptr %pframe, i32 30
  %579 = ptrtoint ptr %arrayidx3.i305 to i32
  call void @__asan_load1_noabort(i32 %579)
  %580 = load i8, ptr %arrayidx3.i305, align 1
  %581 = and i8 %580, 15
  %582 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %582)
  store i8 %581, ptr %15, align 1
  br label %if.end.i310

if.end.i310:                                      ; preds = %if.then.i307, %if.then165.if.end.i310_crit_edge
  br i1 %or.cond64.i, label %if.then9.i313, label %if.end.i310.if.end15.i315_crit_edge

if.end.i310.if.end15.i315_crit_edge:              ; preds = %if.end.i310
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i315

if.then9.i313:                                    ; preds = %if.end.i310
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx10.i311 = getelementptr i8, ptr %pframe, i32 24
  %583 = ptrtoint ptr %arrayidx10.i311 to i32
  call void @__asan_load1_noabort(i32 %583)
  %584 = load i8, ptr %arrayidx10.i311, align 1
  %585 = and i8 %584, 15
  %586 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %586)
  store i8 %585, ptr %15, align 1
  br label %if.end15.i315

if.end15.i315:                                    ; preds = %if.then9.i313, %if.end.i310.if.end15.i315_crit_edge
  br i1 %cmp.i, label %if.then18.i317, label %if.end15.i315.for.body195.preheader_crit_edge

if.end15.i315.for.body195.preheader_crit_edge:    ; preds = %if.end15.i315
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body195.preheader

if.then18.i317:                                   ; preds = %if.end15.i315
  call void @__sanitizer_cov_trace_pc() #14
  %587 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %15, align 1
  %589 = or i8 %588, 16
  store i8 %589, ptr %15, align 1
  br label %for.body195.preheader

for.body195.preheader:                            ; preds = %if.then18.i317, %if.end15.i315.for.body195.preheader_crit_edge
  %590 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %590)
  %591 = load i8, ptr %arrayidx27.i, align 1
  %592 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %592)
  store i8 %591, ptr %16, align 1
  %593 = ptrtoint ptr %arrayidx27.1.i to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %arrayidx27.1.i, align 1
  %595 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %595)
  store i8 %594, ptr %17, align 1
  %596 = ptrtoint ptr %arrayidx27.2.i to i32
  call void @__asan_load1_noabort(i32 %596)
  %597 = load i8, ptr %arrayidx27.2.i, align 1
  %598 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %598)
  store i8 %597, ptr %18, align 1
  %599 = ptrtoint ptr %arrayidx27.3.i to i32
  call void @__asan_load1_noabort(i32 %599)
  %600 = load i8, ptr %arrayidx27.3.i, align 1
  %601 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %601)
  store i8 %600, ptr %19, align 1
  %602 = ptrtoint ptr %arrayidx27.4.i to i32
  call void @__asan_load1_noabort(i32 %602)
  %603 = load i8, ptr %arrayidx27.4.i, align 1
  %604 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 %603, ptr %20, align 1
  %605 = ptrtoint ptr %arrayidx27.5.i to i32
  call void @__asan_load1_noabort(i32 %605)
  %606 = load i8, ptr %arrayidx27.5.i, align 1
  %607 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %607)
  store i8 %606, ptr %21, align 1
  %608 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %608)
  store i8 %83, ptr %22, align 1
  %609 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %609)
  store i8 %81, ptr %23, align 1
  %610 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %610)
  store i8 %79, ptr %24, align 1
  %611 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %611)
  store i8 %77, ptr %25, align 1
  %612 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %612)
  store i8 %75, ptr %26, align 1
  %613 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %613)
  store i8 %73, ptr %27, align 1
  %div.i341548 = lshr i32 %add168, 8
  %conv41.i342 = trunc i32 %div.i341548 to i8
  %614 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %614)
  store i8 %conv41.i342, ptr %28, align 1
  %conv43.i344 = trunc i32 %add168 to i8
  %615 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %615)
  store i8 %conv43.i344, ptr %29, align 1
  %uglygep580 = getelementptr i8, ptr %pframe, i32 %payload_index.3.lcssa
  %616 = sub nuw nsw i32 16, %rem
  %617 = getelementptr i8, ptr %padded_buffer, i32 %rem
  %618 = call ptr @memset(ptr %617, i32 0, i32 %616)
  %619 = call ptr @memcpy(ptr %padded_buffer, ptr %uglygep580, i32 %rem)
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i347) #12
  %620 = call ptr @memset(ptr %ctx.i347, i32 255, i32 484)
  %call.i348 = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i347, ptr noundef %key, i32 noundef 16) #12
  call void @aes_encrypt(ptr noundef nonnull %ctx.i347, ptr noundef nonnull %aes_out, ptr noundef nonnull %ctr_preload) #12
  %621 = call ptr @memset(ptr %ctx.i347, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i347) #12, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i347) #12
  %622 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %622)
  %623 = load i8, ptr %aes_out, align 1
  %624 = ptrtoint ptr %padded_buffer to i32
  call void @__asan_load1_noabort(i32 %624)
  %padded_buffer.0.595 = load i8, ptr %padded_buffer, align 8
  %xor9.i349 = xor i8 %padded_buffer.0.595, %623
  %625 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %625)
  store i8 %xor9.i349, ptr %chain_buffer, align 8
  %626 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %626)
  %627 = load i8, ptr %45, align 1
  %628 = ptrtoint ptr %padded_buffer.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %628)
  %padded_buffer.1.597 = load i8, ptr %padded_buffer.1..sroa_idx, align 1
  %xor9.1.i352 = xor i8 %padded_buffer.1.597, %627
  %629 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %629)
  store i8 %xor9.1.i352, ptr %30, align 1
  %630 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %630)
  %631 = load i8, ptr %46, align 1
  %632 = ptrtoint ptr %padded_buffer.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %632)
  %padded_buffer.2.599 = load i8, ptr %padded_buffer.2..sroa_idx, align 2
  %xor9.2.i356 = xor i8 %padded_buffer.2.599, %631
  %633 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %633)
  store i8 %xor9.2.i356, ptr %31, align 2
  %634 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %634)
  %635 = load i8, ptr %47, align 1
  %636 = ptrtoint ptr %padded_buffer.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %636)
  %padded_buffer.3.601 = load i8, ptr %padded_buffer.3..sroa_idx, align 1
  %xor9.3.i360 = xor i8 %padded_buffer.3.601, %635
  %637 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %637)
  store i8 %xor9.3.i360, ptr %32, align 1
  %638 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %638)
  %639 = load i8, ptr %48, align 1
  %640 = ptrtoint ptr %padded_buffer.4..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %640)
  %padded_buffer.4.603 = load i8, ptr %padded_buffer.4..sroa_idx, align 4
  %xor9.4.i364 = xor i8 %padded_buffer.4.603, %639
  %641 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %641)
  store i8 %xor9.4.i364, ptr %33, align 4
  %642 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %642)
  %643 = load i8, ptr %49, align 1
  %644 = ptrtoint ptr %padded_buffer.5..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %644)
  %padded_buffer.5.605 = load i8, ptr %padded_buffer.5..sroa_idx, align 1
  %xor9.5.i368 = xor i8 %padded_buffer.5.605, %643
  %645 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %645)
  store i8 %xor9.5.i368, ptr %34, align 1
  %646 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %646)
  %647 = load i8, ptr %50, align 1
  %648 = ptrtoint ptr %padded_buffer.6..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %648)
  %padded_buffer.6.607 = load i8, ptr %padded_buffer.6..sroa_idx, align 2
  %xor9.6.i372 = xor i8 %padded_buffer.6.607, %647
  %649 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %649)
  store i8 %xor9.6.i372, ptr %35, align 2
  %650 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %650)
  %651 = load i8, ptr %51, align 1
  %652 = ptrtoint ptr %padded_buffer.7..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %652)
  %padded_buffer.7.609 = load i8, ptr %padded_buffer.7..sroa_idx, align 1
  %xor9.7.i376 = xor i8 %padded_buffer.7.609, %651
  %653 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %653)
  store i8 %xor9.7.i376, ptr %36, align 1
  %654 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %654)
  %655 = load i8, ptr %52, align 1
  %656 = ptrtoint ptr %padded_buffer.8..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %656)
  %padded_buffer.8.611 = load i8, ptr %padded_buffer.8..sroa_idx, align 8
  %xor9.8.i380 = xor i8 %padded_buffer.8.611, %655
  %657 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %657)
  store i8 %xor9.8.i380, ptr %37, align 8
  %658 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %658)
  %659 = load i8, ptr %53, align 1
  %660 = ptrtoint ptr %padded_buffer.9..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %660)
  %padded_buffer.9.613 = load i8, ptr %padded_buffer.9..sroa_idx, align 1
  %xor9.9.i384 = xor i8 %padded_buffer.9.613, %659
  %661 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %661)
  store i8 %xor9.9.i384, ptr %38, align 1
  %662 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %662)
  %663 = load i8, ptr %54, align 1
  %664 = ptrtoint ptr %padded_buffer.10..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %664)
  %padded_buffer.10.615 = load i8, ptr %padded_buffer.10..sroa_idx, align 2
  %xor9.10.i388 = xor i8 %padded_buffer.10.615, %663
  %665 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %665)
  store i8 %xor9.10.i388, ptr %39, align 2
  %666 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %666)
  %667 = load i8, ptr %55, align 1
  %668 = ptrtoint ptr %padded_buffer.11..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %668)
  %padded_buffer.11.617 = load i8, ptr %padded_buffer.11..sroa_idx, align 1
  %xor9.11.i392 = xor i8 %padded_buffer.11.617, %667
  %669 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %669)
  store i8 %xor9.11.i392, ptr %40, align 1
  %670 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %670)
  %671 = load i8, ptr %56, align 1
  %672 = ptrtoint ptr %padded_buffer.12..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %672)
  %padded_buffer.12.619 = load i8, ptr %padded_buffer.12..sroa_idx, align 4
  %xor9.12.i396 = xor i8 %padded_buffer.12.619, %671
  %673 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %673)
  store i8 %xor9.12.i396, ptr %41, align 4
  %674 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %674)
  %675 = load i8, ptr %57, align 1
  %676 = ptrtoint ptr %padded_buffer.13..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %676)
  %padded_buffer.13.621 = load i8, ptr %padded_buffer.13..sroa_idx, align 1
  %xor9.13.i400 = xor i8 %padded_buffer.13.621, %675
  %677 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %677)
  store i8 %xor9.13.i400, ptr %42, align 1
  %678 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %678)
  %679 = load i8, ptr %58, align 1
  %680 = ptrtoint ptr %padded_buffer.14..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %680)
  %padded_buffer.14.623 = load i8, ptr %padded_buffer.14..sroa_idx, align 2
  %xor9.14.i404 = xor i8 %padded_buffer.14.623, %679
  %681 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %681)
  store i8 %xor9.14.i404, ptr %43, align 2
  %682 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %682)
  %683 = load i8, ptr %59, align 1
  %684 = ptrtoint ptr %padded_buffer.15..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %684)
  %padded_buffer.15.625 = load i8, ptr %padded_buffer.15..sroa_idx, align 1
  %xor9.15.i408 = xor i8 %padded_buffer.15.625, %683
  %685 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %685)
  store i8 %xor9.15.i408, ptr %44, align 1
  %uglygep582 = getelementptr i8, ptr %pframe, i32 %payload_index.3.lcssa
  %686 = call ptr @memcpy(ptr %uglygep582, ptr %chain_buffer, i32 %rem)
  %687 = add i32 %payload_index.3.lcssa, %rem
  br label %if.end202

if.end202:                                        ; preds = %for.body195.preheader, %for.end162.if.end202_crit_edge
  %payload_index.6 = phi i32 [ %payload_index.3.lcssa, %for.end162.if.end202_crit_edge ], [ %687, %for.body195.preheader ]
  %688 = call ptr @memset(ptr %15, i32 0, i32 15)
  %689 = ptrtoint ptr %ctr_preload to i32
  call void @__asan_store1_noabort(i32 %689)
  store i8 1, ptr %ctr_preload, align 1
  br i1 %or.cond.i, label %if.end202.if.end.i417_crit_edge, label %if.then.i414

if.end202.if.end.i417_crit_edge:                  ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i417

if.then.i414:                                     ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx3.i412 = getelementptr i8, ptr %pframe, i32 30
  %690 = ptrtoint ptr %arrayidx3.i412 to i32
  call void @__asan_load1_noabort(i32 %690)
  %691 = load i8, ptr %arrayidx3.i412, align 1
  %692 = and i8 %691, 15
  %693 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %693)
  store i8 %692, ptr %15, align 1
  br label %if.end.i417

if.end.i417:                                      ; preds = %if.then.i414, %if.end202.if.end.i417_crit_edge
  br i1 %or.cond64.i, label %if.then9.i420, label %if.end.i417.if.end15.i422_crit_edge

if.end.i417.if.end15.i422_crit_edge:              ; preds = %if.end.i417
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i422

if.then9.i420:                                    ; preds = %if.end.i417
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx10.i418 = getelementptr i8, ptr %pframe, i32 24
  %694 = ptrtoint ptr %arrayidx10.i418 to i32
  call void @__asan_load1_noabort(i32 %694)
  %695 = load i8, ptr %arrayidx10.i418, align 1
  %696 = and i8 %695, 15
  %697 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %697)
  store i8 %696, ptr %15, align 1
  br label %if.end15.i422

if.end15.i422:                                    ; preds = %if.then9.i420, %if.end.i417.if.end15.i422_crit_edge
  br i1 %cmp.i, label %if.then18.i424, label %if.end15.i422.construct_ctr_preload.exit450_crit_edge

if.end15.i422.construct_ctr_preload.exit450_crit_edge: ; preds = %if.end15.i422
  call void @__sanitizer_cov_trace_pc() #14
  br label %construct_ctr_preload.exit450

if.then18.i424:                                   ; preds = %if.end15.i422
  call void @__sanitizer_cov_trace_pc() #14
  %698 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %698)
  %699 = load i8, ptr %15, align 1
  %700 = or i8 %699, 16
  store i8 %700, ptr %15, align 1
  br label %construct_ctr_preload.exit450

construct_ctr_preload.exit450:                    ; preds = %if.then18.i424, %if.end15.i422.construct_ctr_preload.exit450_crit_edge
  %701 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %701)
  %702 = load i8, ptr %arrayidx27.i, align 1
  %703 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %703)
  store i8 %702, ptr %16, align 1
  %704 = ptrtoint ptr %arrayidx27.1.i to i32
  call void @__asan_load1_noabort(i32 %704)
  %705 = load i8, ptr %arrayidx27.1.i, align 1
  %706 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %706)
  store i8 %705, ptr %17, align 1
  %707 = ptrtoint ptr %arrayidx27.2.i to i32
  call void @__asan_load1_noabort(i32 %707)
  %708 = load i8, ptr %arrayidx27.2.i, align 1
  %709 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %709)
  store i8 %708, ptr %18, align 1
  %710 = ptrtoint ptr %arrayidx27.3.i to i32
  call void @__asan_load1_noabort(i32 %710)
  %711 = load i8, ptr %arrayidx27.3.i, align 1
  %712 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %712)
  store i8 %711, ptr %19, align 1
  %713 = ptrtoint ptr %arrayidx27.4.i to i32
  call void @__asan_load1_noabort(i32 %713)
  %714 = load i8, ptr %arrayidx27.4.i, align 1
  %715 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %715)
  store i8 %714, ptr %20, align 1
  %716 = ptrtoint ptr %arrayidx27.5.i to i32
  call void @__asan_load1_noabort(i32 %716)
  %717 = load i8, ptr %arrayidx27.5.i, align 1
  %718 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %718)
  store i8 %717, ptr %21, align 1
  %719 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %719)
  store i8 %83, ptr %22, align 1
  %720 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %720)
  store i8 %81, ptr %23, align 1
  %721 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %721)
  store i8 %79, ptr %24, align 1
  %722 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %722)
  store i8 %77, ptr %25, align 1
  %723 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %723)
  store i8 %75, ptr %26, align 1
  %724 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %724)
  store i8 %73, ptr %27, align 1
  %725 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %725)
  store i8 0, ptr %28, align 1
  %726 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %726)
  store i8 0, ptr %29, align 1
  %727 = getelementptr inbounds i8, ptr %padded_buffer, i32 8
  %728 = ptrtoint ptr %727 to i32
  call void @__asan_store8_noabort(i32 %728)
  store i64 0, ptr %727, align 8
  %729 = add i32 %hdrlen.addr.1, %plen
  %730 = add i32 %729, 8
  %uglygep585 = getelementptr i8, ptr %pframe, i32 %730
  %731 = ptrtoint ptr %uglygep585 to i32
  call void @__asan_loadN_noabort(i32 %731, i32 8)
  %732 = load i64, ptr %uglygep585, align 1
  %733 = ptrtoint ptr %padded_buffer to i32
  call void @__asan_store8_noabort(i32 %733)
  store i64 %732, ptr %padded_buffer, align 8
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i451) #12
  %734 = call ptr @memset(ptr %ctx.i451, i32 255, i32 484)
  %call.i452 = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i451, ptr noundef %key, i32 noundef 16) #12
  call void @aes_encrypt(ptr noundef nonnull %ctx.i451, ptr noundef nonnull %aes_out, ptr noundef nonnull %ctr_preload) #12
  %735 = call ptr @memset(ptr %ctx.i451, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i451) #12, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i451) #12
  %736 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %736)
  %737 = load i8, ptr %aes_out, align 1
  %738 = ptrtoint ptr %padded_buffer to i32
  call void @__asan_load1_noabort(i32 %738)
  %padded_buffer.0.596 = load i8, ptr %padded_buffer, align 8
  %xor9.i453 = xor i8 %padded_buffer.0.596, %737
  %739 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %739)
  store i8 %xor9.i453, ptr %chain_buffer, align 8
  %740 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %740)
  %741 = load i8, ptr %45, align 1
  %742 = ptrtoint ptr %padded_buffer.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %742)
  %padded_buffer.1.598 = load i8, ptr %padded_buffer.1..sroa_idx, align 1
  %xor9.1.i456 = xor i8 %padded_buffer.1.598, %741
  %743 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %743)
  store i8 %xor9.1.i456, ptr %30, align 1
  %744 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %744)
  %745 = load i8, ptr %46, align 1
  %746 = ptrtoint ptr %padded_buffer.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %746)
  %padded_buffer.2.600 = load i8, ptr %padded_buffer.2..sroa_idx, align 2
  %xor9.2.i460 = xor i8 %padded_buffer.2.600, %745
  %747 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %747)
  store i8 %xor9.2.i460, ptr %31, align 2
  %748 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %748)
  %749 = load i8, ptr %47, align 1
  %750 = ptrtoint ptr %padded_buffer.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %750)
  %padded_buffer.3.602 = load i8, ptr %padded_buffer.3..sroa_idx, align 1
  %xor9.3.i464 = xor i8 %padded_buffer.3.602, %749
  %751 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %751)
  store i8 %xor9.3.i464, ptr %32, align 1
  %752 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %752)
  %753 = load i8, ptr %48, align 1
  %754 = ptrtoint ptr %padded_buffer.4..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %754)
  %padded_buffer.4.604 = load i8, ptr %padded_buffer.4..sroa_idx, align 4
  %xor9.4.i468 = xor i8 %padded_buffer.4.604, %753
  %755 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %755)
  store i8 %xor9.4.i468, ptr %33, align 4
  %756 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %756)
  %757 = load i8, ptr %49, align 1
  %758 = ptrtoint ptr %padded_buffer.5..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %758)
  %padded_buffer.5.606 = load i8, ptr %padded_buffer.5..sroa_idx, align 1
  %xor9.5.i472 = xor i8 %padded_buffer.5.606, %757
  %759 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %759)
  store i8 %xor9.5.i472, ptr %34, align 1
  %760 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %760)
  %761 = load i8, ptr %50, align 1
  %762 = ptrtoint ptr %padded_buffer.6..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %762)
  %padded_buffer.6.608 = load i8, ptr %padded_buffer.6..sroa_idx, align 2
  %xor9.6.i476 = xor i8 %padded_buffer.6.608, %761
  %763 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %763)
  store i8 %xor9.6.i476, ptr %35, align 2
  %764 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %764)
  %765 = load i8, ptr %51, align 1
  %766 = ptrtoint ptr %padded_buffer.7..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %766)
  %padded_buffer.7.610 = load i8, ptr %padded_buffer.7..sroa_idx, align 1
  %xor9.7.i480 = xor i8 %padded_buffer.7.610, %765
  %767 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %767)
  store i8 %xor9.7.i480, ptr %36, align 1
  %uglygep586 = getelementptr i8, ptr %pframe, i32 %payload_index.6
  %768 = load i64, ptr %chain_buffer, align 8
  %769 = ptrtoint ptr %uglygep586 to i32
  call void @__asan_storeN_noabort(i32 %769, i32 8)
  store i64 %768, ptr %uglygep586, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %padded_buffer)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %aes_out) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %chain_buffer) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctr_preload) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mic_iv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_aes_decrypt(ptr noundef %padapter, ptr noundef %precvframe) local_unnamed_addr #1 align 64 {
entry:
  %ctx.i1164.i = alloca %struct.crypto_aes_ctx, align 4
  %ctx.i1068.i = alloca %struct.crypto_aes_ctx, align 4
  %ctx.i969.i = alloca %struct.crypto_aes_ctx, align 4
  %ctx.i931.i = alloca %struct.crypto_aes_ctx, align 4
  %ctx.i868.i = alloca %struct.crypto_aes_ctx, align 4
  %ctx.i805.i = alloca %struct.crypto_aes_ctx, align 4
  %ctx.i742.i = alloca %struct.crypto_aes_ctx, align 4
  %ctx.i679.i = alloca %struct.crypto_aes_ctx, align 4
  %ctx.i584.i = alloca %struct.crypto_aes_ctx, align 4
  %ctx.i.i = alloca %struct.crypto_aes_ctx, align 4
  %mic_iv.i = alloca [16 x i8], align 1
  %ctr_preload.i = alloca [16 x i8], align 1
  %chain_buffer.i = alloca [16 x i8], align 8
  %aes_out.i = alloca [16 x i8], align 1
  %padded_buffer.i = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 9
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_data, align 4
  %encrypt = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 17
  %2 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %encrypt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp eq i8 %3, 4
  br i1 %cmp, label %if.then, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then:                                          ; preds = %entry
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %ta = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 25
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ta) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.exit_crit_edge, label %if.then2

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then2:                                         ; preds = %if.then
  %ra = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26
  %4 = ptrtoint ptr %ra to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ra, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.else75, label %if.then5

if.then5:                                         ; preds = %if.then2
  %binstallGrpkey = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 27
  %7 = ptrtoint ptr %binstallGrpkey to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %binstallGrpkey, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %if.then7, label %if.end38

if.then7:                                         ; preds = %if.then5
  %9 = load i32, ptr @rtw_aes_decrypt.start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp eq i32 %9, 0
  br i1 %cmp8, label %if.then10, label %if.then7.if.end_crit_edge

if.then7.if.end_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  store i32 %10, ptr @rtw_aes_decrypt.start, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then7.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp.i = icmp eq i8 %5, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true.i:                                  ; preds = %if.end
  %arrayidx2.i = getelementptr %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26, i32 1
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp4.i = icmp eq i8 %12, -1
  br i1 %cmp4.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %arrayidx7.i = getelementptr %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26, i32 2
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp9.i = icmp eq i8 %14, -1
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true6.i.if.else_crit_edge

land.lhs.true6.i.if.else_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true11.i:                                ; preds = %land.lhs.true6.i
  %arrayidx12.i = getelementptr %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26, i32 3
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp14.i = icmp eq i8 %16, -1
  br i1 %cmp14.i, label %land.lhs.true16.i, label %land.lhs.true11.i.if.else_crit_edge

land.lhs.true11.i.if.else_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true16.i:                                ; preds = %land.lhs.true11.i
  %arrayidx17.i = getelementptr %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26, i32 4
  %17 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp19.i = icmp eq i8 %18, -1
  br i1 %cmp19.i, label %is_broadcast_mac_addr.exit, label %land.lhs.true16.i.if.else_crit_edge

land.lhs.true16.i.if.else_crit_edge:              ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

is_broadcast_mac_addr.exit:                       ; preds = %land.lhs.true16.i
  %arrayidx21.i = getelementptr %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 26, i32 5
  %19 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp23.i.not = icmp eq i8 %20, -1
  br i1 %cmp23.i.not, label %is_broadcast_mac_addr.exit.if.end17_crit_edge, label %is_broadcast_mac_addr.exit.if.else_crit_edge

is_broadcast_mac_addr.exit.if.else_crit_edge:     ; preds = %is_broadcast_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

is_broadcast_mac_addr.exit.if.end17_crit_edge:    ; preds = %is_broadcast_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.else:                                          ; preds = %is_broadcast_mac_addr.exit.if.else_crit_edge, %land.lhs.true16.i.if.else_crit_edge, %land.lhs.true11.i.if.else_crit_edge, %land.lhs.true6.i.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %if.end.if.else_crit_edge
  br label %if.end17

if.end17:                                         ; preds = %if.else, %is_broadcast_mac_addr.exit.if.end17_crit_edge
  %rtw_aes_decrypt.no_gkey_mc_cnt.sink116 = phi ptr [ @rtw_aes_decrypt.no_gkey_mc_cnt, %if.else ], [ @rtw_aes_decrypt.no_gkey_bc_cnt, %is_broadcast_mac_addr.exit.if.end17_crit_edge ]
  %21 = ptrtoint ptr %rtw_aes_decrypt.no_gkey_mc_cnt.sink116 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rtw_aes_decrypt.no_gkey_mc_cnt.sink116, align 4
  %inc16 = add i32 %22, 1
  store i32 %inc16, ptr %rtw_aes_decrypt.no_gkey_mc_cnt.sink116, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = load i32, ptr @rtw_aes_decrypt.start, align 4
  %sub = sub i32 %23, %24
  %call18 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call18)
  %cmp19 = icmp ugt i32 %call18, 1000
  br i1 %cmp19, label %if.then21, label %if.end17.exit_crit_edge

if.end17.exit_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then21:                                        ; preds = %if.end17
  %25 = load i32, ptr @rtw_aes_decrypt.no_gkey_bc_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool22.not = icmp eq i32 %25, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %if.then21.do.body25_crit_edge

if.then21.do.body25_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

lor.lhs.false:                                    ; preds = %if.then21
  %26 = load i32, ptr @rtw_aes_decrypt.no_gkey_mc_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool23.not = icmp eq i32 %26, 0
  br i1 %tobool23.not, label %lor.lhs.false.if.end36_crit_edge, label %lor.lhs.false.do.body25_crit_edge

lor.lhs.false.do.body25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.body25:                                        ; preds = %lor.lhs.false.do.body25_crit_edge, %if.then21.do.body25_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_aes_decrypt.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_aes_decrypt, %if.then30)) #12
          to label %if.end36 [label %if.then30], !srcloc !67

if.then30:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %27 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pnetdev, align 8
  %29 = load i32, ptr @rtw_aes_decrypt.no_gkey_bc_cnt, align 4
  %30 = load i32, ptr @rtw_aes_decrypt.no_gkey_mc_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_aes_decrypt.__UNIQUE_ID_ddebug347, ptr noundef %28, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %29, i32 noundef %30) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %do.body25, %lor.lhs.false.if.end36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  store i32 %31, ptr @rtw_aes_decrypt.start, align 4
  store i32 0, ptr @rtw_aes_decrypt.no_gkey_bc_cnt, align 4
  store i32 0, ptr @rtw_aes_decrypt.no_gkey_mc_cnt, align 4
  br label %exit

if.end38:                                         ; preds = %if.then5
  %32 = load i32, ptr @rtw_aes_decrypt.no_gkey_bc_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool39.not = icmp eq i32 %32, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %if.end38.do.body44_crit_edge

if.end38.do.body44_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

lor.lhs.false40:                                  ; preds = %if.end38
  %33 = load i32, ptr @rtw_aes_decrypt.no_gkey_mc_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool41.not = icmp eq i32 %33, 0
  br i1 %tobool41.not, label %lor.lhs.false40.if.end66_crit_edge, label %lor.lhs.false40.do.body44_crit_edge

lor.lhs.false40.do.body44_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

lor.lhs.false40.if.end66_crit_edge:               ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

do.body44:                                        ; preds = %lor.lhs.false40.do.body44_crit_edge, %if.end38.do.body44_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_aes_decrypt.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_aes_decrypt, %if.then56)) #12
          to label %if.end66 [label %if.then56], !srcloc !67

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  %pnetdev57 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %34 = ptrtoint ptr %pnetdev57 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pnetdev57, align 8
  %36 = load i32, ptr @rtw_aes_decrypt.no_gkey_bc_cnt, align 4
  %37 = load i32, ptr @rtw_aes_decrypt.no_gkey_mc_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_aes_decrypt.__UNIQUE_ID_ddebug348, ptr noundef %35, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %35, i32 noundef %36, i32 noundef %37) #12
  br label %if.end66

if.end66:                                         ; preds = %if.then56, %do.body44, %lor.lhs.false40.if.end66_crit_edge
  store i32 0, ptr @rtw_aes_decrypt.start, align 4
  store i32 0, ptr @rtw_aes_decrypt.no_gkey_bc_cnt, align 4
  store i32 0, ptr @rtw_aes_decrypt.no_gkey_mc_cnt, align 4
  %key_index = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 29
  %38 = ptrtoint ptr %key_index to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %key_index, align 1
  %idxprom = zext i8 %39 to i32
  %arrayidx67 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 8, i32 %idxprom
  %dot118021XGrpKeyid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 7
  %40 = ptrtoint ptr %dot118021XGrpKeyid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dot118021XGrpKeyid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %idxprom)
  %cmp71.not = icmp eq i32 %41, %idxprom
  br i1 %cmp71.not, label %if.end66.if.end77_crit_edge, label %if.end66.exit_crit_edge

if.end66.exit_crit_edge:                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end66.if.end77_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.else75:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %dot118021x_UncstKey = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 17
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.end66.if.end77_crit_edge
  %prwskey.0 = phi ptr [ %arrayidx67, %if.end66.if.end77_crit_edge ], [ %dot118021x_UncstKey, %if.else75 ]
  %len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 7
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  %hdrlen = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 4
  %44 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %hdrlen, align 1
  %conv78 = zext i8 %45 to i32
  %iv_len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6, i32 18
  %46 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %iv_len, align 4
  %conv80 = zext i8 %47 to i32
  %48 = add nuw nsw i32 %conv78, %conv80
  %sub81 = sub i32 %43, %48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mic_iv.i) #12
  %49 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 1
  %50 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 2
  %51 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 3
  %52 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 4
  %53 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 5
  %54 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 6
  %55 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 7
  %56 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 8
  %57 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 9
  %58 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 10
  %59 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 11
  %60 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 12
  %61 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 13
  %62 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 14
  %63 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctr_preload.i) #12
  %64 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 1
  %65 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 2
  %66 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 3
  %67 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 4
  %68 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 5
  %69 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 6
  %70 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 7
  %71 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 8
  %72 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 9
  %73 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 10
  %74 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 11
  %75 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 12
  %76 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 13
  %77 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 14
  %78 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %chain_buffer.i) #12
  %79 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 1
  %80 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 2
  %81 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 3
  %82 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 4
  %83 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 5
  %84 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 6
  %85 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 7
  %86 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 8
  %87 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 9
  %88 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 10
  %89 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 11
  %90 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 12
  %91 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 13
  %92 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 14
  %93 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %aes_out.i) #12
  %94 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 1
  %95 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 2
  %96 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 3
  %97 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 4
  %98 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 5
  %99 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 6
  %100 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 7
  %101 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 8
  %102 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 9
  %103 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 10
  %104 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 11
  %105 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 12
  %106 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 13
  %107 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 14
  %108 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %padded_buffer.i) #12
  %padded_buffer.1..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 1
  %padded_buffer.2..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 2
  %padded_buffer.3..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 3
  %padded_buffer.4..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 4
  %padded_buffer.5..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 5
  %padded_buffer.6..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 6
  %padded_buffer.7..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 7
  %padded_buffer.8..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 8
  %padded_buffer.9..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 9
  %padded_buffer.10..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 10
  %padded_buffer.11..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 11
  %padded_buffer.12..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 12
  %padded_buffer.13..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 13
  %padded_buffer.14..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 14
  %padded_buffer.15..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 15
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %1, align 2
  %111 = tail call i16 @llvm.bswap.i16(i16 %110) #12
  %conv.i = zext i16 %111 to i32
  %and.i = and i32 %conv.i, 12
  %112 = call ptr @memset(ptr %mic_iv.i, i32 0, i32 16)
  %113 = call ptr @memset(ptr %ctr_preload.i, i32 0, i32 16)
  %114 = call ptr @memset(ptr %chain_buffer.i, i32 0, i32 16)
  %115 = call ptr @memset(ptr %aes_out.i, i32 0, i32 16)
  %116 = call ptr @memset(ptr %padded_buffer.i, i32 0, i32 16)
  %sub.i = add i32 %sub81, -8
  %div538.i = lshr i32 %sub.i, 4
  %rem.i = and i32 %sub.i, 15
  %arrayidx.i = getelementptr i8, ptr %1, i32 %conv78
  %117 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i, align 1
  %add.i = add nuw nsw i32 %conv78, 1
  %arrayidx11.i = getelementptr i8, ptr %1, i32 %add.i
  %119 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx11.i, align 1
  %add13.i = add nuw nsw i32 %conv78, 4
  %arrayidx14.i = getelementptr i8, ptr %1, i32 %add13.i
  %121 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx14.i, align 1
  %add16.i = add nuw nsw i32 %conv78, 5
  %arrayidx17.i109 = getelementptr i8, ptr %1, i32 %add16.i
  %123 = ptrtoint ptr %arrayidx17.i109 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx17.i109, align 1
  %add19.i = add nuw nsw i32 %conv78, 6
  %arrayidx20.i = getelementptr i8, ptr %1, i32 %add19.i
  %125 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx20.i, align 1
  %add22.i = add nuw nsw i32 %conv78, 7
  %arrayidx23.i = getelementptr i8, ptr %1, i32 %add22.i
  %127 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx23.i, align 1
  %129 = add nsw i32 %conv78, -24
  %switch.and.i = and i32 %129, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %130 = and i32 %conv.i, 204
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %130)
  %131 = icmp eq i32 %130, 136
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %45)
  %cmp59.not.i = icmp eq i8 %45, 26
  %add62.i = add nuw nsw i32 %conv78, 2
  %spec.select.i = select i1 %cmp59.not.i, i32 26, i32 %add62.i
  %hdrlen.addr.1.i = select i1 %131, i32 %spec.select.i, i32 %conv78
  %add67.i = add nuw nsw i32 %hdrlen.addr.1.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i)
  %cmp681277.not.i = icmp ult i32 %sub.i, 16
  br i1 %cmp681277.not.i, label %if.end77.for.end87.i_crit_edge, label %for.body.lr.ph.i

if.end77.for.end87.i_crit_edge:                   ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end87.i

for.body.lr.ph.i:                                 ; preds = %if.end77
  %tobool.not.i.i = xor i1 %131, true
  %or.cond.i.i = or i1 %switch.selectcmp.i, %tobool.not.i.i
  %arrayidx3.i.i = getelementptr i8, ptr %1, i32 30
  %or.cond68.i.i = and i1 %switch.selectcmp.i, %131
  %arrayidx10.i.i = getelementptr i8, ptr %1, i32 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp16.i.i = icmp eq i32 %and.i, 0
  %arrayidx27.i.i = getelementptr i8, ptr %1, i32 10
  %arrayidx27.1.i.i = getelementptr i8, ptr %1, i32 11
  %arrayidx27.2.i.i = getelementptr i8, ptr %1, i32 12
  %arrayidx27.3.i.i = getelementptr i8, ptr %1, i32 13
  %arrayidx27.4.i.i = getelementptr i8, ptr %1, i32 14
  %arrayidx27.5.i.i = getelementptr i8, ptr %1, i32 15
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div538.i, i32 1) #12
  br label %for.body.i

for.body.i:                                       ; preds = %construct_ctr_preload.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %payload_index.01279.i = phi i32 [ %add67.i, %for.body.lr.ph.i ], [ %254, %construct_ctr_preload.exit.i.for.body.i_crit_edge ]
  %i.01278.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add72.i, %construct_ctr_preload.exit.i.for.body.i_crit_edge ]
  %add72.i = add nuw nsw i32 %i.01278.i, 1
  %132 = call ptr @memset(ptr %64, i32 0, i32 15)
  %133 = ptrtoint ptr %ctr_preload.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %ctr_preload.i, align 1
  br i1 %or.cond.i.i, label %for.body.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %134 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx3.i.i, align 1
  %136 = and i8 %135, 15
  %137 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %64, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.if.end.i.i_crit_edge
  br i1 %or.cond68.i.i, label %if.then9.i.i, label %if.end.i.i.if.end15.i.i_crit_edge

if.end.i.i.if.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %138 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx10.i.i, align 1
  %140 = and i8 %139, 15
  %141 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %64, align 1
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then9.i.i, %if.end.i.i.if.end15.i.i_crit_edge
  br i1 %cmp16.i.i, label %if.then18.i.i, label %if.end15.i.i.construct_ctr_preload.exit.i_crit_edge

if.end15.i.i.construct_ctr_preload.exit.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %construct_ctr_preload.exit.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %142 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %64, align 1
  %144 = or i8 %143, 16
  store i8 %144, ptr %64, align 1
  br label %construct_ctr_preload.exit.i

construct_ctr_preload.exit.i:                     ; preds = %if.then18.i.i, %if.end15.i.i.construct_ctr_preload.exit.i_crit_edge
  %145 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx27.i.i, align 1
  %147 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %65, align 1
  %148 = ptrtoint ptr %arrayidx27.1.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx27.1.i.i, align 1
  %150 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %66, align 1
  %151 = ptrtoint ptr %arrayidx27.2.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx27.2.i.i, align 1
  %153 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %67, align 1
  %154 = ptrtoint ptr %arrayidx27.3.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx27.3.i.i, align 1
  %156 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %68, align 1
  %157 = ptrtoint ptr %arrayidx27.4.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx27.4.i.i, align 1
  %159 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %69, align 1
  %160 = ptrtoint ptr %arrayidx27.5.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx27.5.i.i, align 1
  %162 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %70, align 1
  %163 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %128, ptr %71, align 1
  %164 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %126, ptr %72, align 1
  %165 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %124, ptr %73, align 1
  %166 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %122, ptr %74, align 1
  %167 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %120, ptr %75, align 1
  %168 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %118, ptr %76, align 1
  %div.i.udiv1391.i = lshr i32 %add72.i, 8
  %conv41.i.i = trunc i32 %div.i.udiv1391.i to i8
  %169 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv41.i.i, ptr %77, align 1
  %conv43.i.i = trunc i32 %add72.i to i8
  %170 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv43.i.i, ptr %78, align 1
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i.i) #12
  %171 = call ptr @memset(ptr %ctx.i.i, i32 255, i32 484)
  %call.i.i = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i.i, ptr noundef %prwskey.0, i32 noundef 16) #12
  call void @aes_encrypt(ptr noundef nonnull %ctx.i.i, ptr noundef nonnull %aes_out.i, ptr noundef nonnull %ctr_preload.i) #12
  %172 = call ptr @memset(ptr %ctx.i.i, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i.i) #12, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i.i) #12
  %arrayidx76.i = getelementptr i8, ptr %1, i32 %payload_index.01279.i
  %173 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %aes_out.i, align 1
  %175 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx76.i, align 1
  %xor9.i.i = xor i8 %176, %174
  %177 = ptrtoint ptr %chain_buffer.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %xor9.i.i, ptr %chain_buffer.i, align 8
  %178 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %94, align 1
  %arrayidx1.1.i.i = getelementptr i8, ptr %arrayidx76.i, i32 1
  %180 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx1.1.i.i, align 1
  %xor9.1.i.i = xor i8 %181, %179
  %182 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %xor9.1.i.i, ptr %79, align 1
  %183 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %95, align 1
  %arrayidx1.2.i.i = getelementptr i8, ptr %arrayidx76.i, i32 2
  %185 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx1.2.i.i, align 1
  %xor9.2.i.i = xor i8 %186, %184
  %187 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %xor9.2.i.i, ptr %80, align 2
  %188 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %96, align 1
  %arrayidx1.3.i.i = getelementptr i8, ptr %arrayidx76.i, i32 3
  %190 = ptrtoint ptr %arrayidx1.3.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx1.3.i.i, align 1
  %xor9.3.i.i = xor i8 %191, %189
  %192 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %xor9.3.i.i, ptr %81, align 1
  %193 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %97, align 1
  %arrayidx1.4.i.i = getelementptr i8, ptr %arrayidx76.i, i32 4
  %195 = ptrtoint ptr %arrayidx1.4.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx1.4.i.i, align 1
  %xor9.4.i.i = xor i8 %196, %194
  %197 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %xor9.4.i.i, ptr %82, align 4
  %198 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %98, align 1
  %arrayidx1.5.i.i = getelementptr i8, ptr %arrayidx76.i, i32 5
  %200 = ptrtoint ptr %arrayidx1.5.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx1.5.i.i, align 1
  %xor9.5.i.i = xor i8 %201, %199
  %202 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %xor9.5.i.i, ptr %83, align 1
  %203 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %99, align 1
  %arrayidx1.6.i.i = getelementptr i8, ptr %arrayidx76.i, i32 6
  %205 = ptrtoint ptr %arrayidx1.6.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx1.6.i.i, align 1
  %xor9.6.i.i = xor i8 %206, %204
  %207 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %xor9.6.i.i, ptr %84, align 2
  %208 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %100, align 1
  %arrayidx1.7.i.i = getelementptr i8, ptr %arrayidx76.i, i32 7
  %210 = ptrtoint ptr %arrayidx1.7.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx1.7.i.i, align 1
  %xor9.7.i.i = xor i8 %211, %209
  %212 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %xor9.7.i.i, ptr %85, align 1
  %213 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %101, align 1
  %arrayidx1.8.i.i = getelementptr i8, ptr %arrayidx76.i, i32 8
  %215 = ptrtoint ptr %arrayidx1.8.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx1.8.i.i, align 1
  %xor9.8.i.i = xor i8 %216, %214
  %217 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %xor9.8.i.i, ptr %86, align 8
  %218 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %102, align 1
  %arrayidx1.9.i.i = getelementptr i8, ptr %arrayidx76.i, i32 9
  %220 = ptrtoint ptr %arrayidx1.9.i.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx1.9.i.i, align 1
  %xor9.9.i.i = xor i8 %221, %219
  %222 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %xor9.9.i.i, ptr %87, align 1
  %223 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %103, align 1
  %arrayidx1.10.i.i = getelementptr i8, ptr %arrayidx76.i, i32 10
  %225 = ptrtoint ptr %arrayidx1.10.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx1.10.i.i, align 1
  %xor9.10.i.i = xor i8 %226, %224
  %227 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %xor9.10.i.i, ptr %88, align 2
  %228 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %104, align 1
  %arrayidx1.11.i.i = getelementptr i8, ptr %arrayidx76.i, i32 11
  %230 = ptrtoint ptr %arrayidx1.11.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx1.11.i.i, align 1
  %xor9.11.i.i = xor i8 %231, %229
  %232 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %xor9.11.i.i, ptr %89, align 1
  %233 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %105, align 1
  %arrayidx1.12.i.i = getelementptr i8, ptr %arrayidx76.i, i32 12
  %235 = ptrtoint ptr %arrayidx1.12.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx1.12.i.i, align 1
  %xor9.12.i.i = xor i8 %236, %234
  %237 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %xor9.12.i.i, ptr %90, align 4
  %238 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %106, align 1
  %arrayidx1.13.i.i = getelementptr i8, ptr %arrayidx76.i, i32 13
  %240 = ptrtoint ptr %arrayidx1.13.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx1.13.i.i, align 1
  %xor9.13.i.i = xor i8 %241, %239
  %242 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %xor9.13.i.i, ptr %91, align 1
  %243 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %107, align 1
  %arrayidx1.14.i.i = getelementptr i8, ptr %arrayidx76.i, i32 14
  %245 = ptrtoint ptr %arrayidx1.14.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx1.14.i.i, align 1
  %xor9.14.i.i = xor i8 %246, %244
  %247 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %xor9.14.i.i, ptr %92, align 2
  %248 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %108, align 1
  %arrayidx1.15.i.i = getelementptr i8, ptr %arrayidx76.i, i32 15
  %250 = ptrtoint ptr %arrayidx1.15.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx1.15.i.i, align 1
  %xor9.15.i.i = xor i8 %251, %249
  %252 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %xor9.15.i.i, ptr %93, align 1
  %253 = call ptr @memcpy(ptr %arrayidx76.i, ptr %chain_buffer.i, i32 16)
  %254 = add i32 %payload_index.01279.i, 16
  %exitcond.not.i = icmp eq i32 %add72.i, %umax.i
  br i1 %exitcond.not.i, label %construct_ctr_preload.exit.i.for.end87.i_crit_edge, label %construct_ctr_preload.exit.i.for.body.i_crit_edge

construct_ctr_preload.exit.i.for.body.i_crit_edge: ; preds = %construct_ctr_preload.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

construct_ctr_preload.exit.i.for.end87.i_crit_edge: ; preds = %construct_ctr_preload.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end87.i

for.end87.i:                                      ; preds = %construct_ctr_preload.exit.i.for.end87.i_crit_edge, %if.end77.for.end87.i_crit_edge
  %payload_index.0.lcssa.i = phi i32 [ %add67.i, %if.end77.for.end87.i_crit_edge ], [ %254, %construct_ctr_preload.exit.i.for.end87.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp88.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp88.not.i, label %for.end87.i.if.end127.i_crit_edge, label %if.then90.i

for.end87.i.if.end127.i_crit_edge:                ; preds = %for.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127.i

if.then90.i:                                      ; preds = %for.end87.i
  %add93.i = add nuw nsw i32 %div538.i, 1
  %255 = call ptr @memset(ptr %64, i32 0, i32 15)
  %256 = ptrtoint ptr %ctr_preload.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 1, ptr %ctr_preload.i, align 1
  %tobool.not.i540.i = xor i1 %131, true
  %or.cond.i541.i = or i1 %switch.selectcmp.i, %tobool.not.i540.i
  br i1 %or.cond.i541.i, label %if.then90.i.if.end.i547.i_crit_edge, label %if.then.i544.i

if.then90.i.if.end.i547.i_crit_edge:              ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i547.i

if.then.i544.i:                                   ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx3.i542.i = getelementptr i8, ptr %1, i32 30
  %257 = ptrtoint ptr %arrayidx3.i542.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx3.i542.i, align 1
  %259 = and i8 %258, 15
  %260 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %259, ptr %64, align 1
  br label %if.end.i547.i

if.end.i547.i:                                    ; preds = %if.then.i544.i, %if.then90.i.if.end.i547.i_crit_edge
  %or.cond68.i546.i = and i1 %switch.selectcmp.i, %131
  br i1 %or.cond68.i546.i, label %if.then9.i550.i, label %if.end.i547.i.if.end15.i552.i_crit_edge

if.end.i547.i.if.end15.i552.i_crit_edge:          ; preds = %if.end.i547.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i552.i

if.then9.i550.i:                                  ; preds = %if.end.i547.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx10.i548.i = getelementptr i8, ptr %1, i32 24
  %261 = ptrtoint ptr %arrayidx10.i548.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx10.i548.i, align 1
  %263 = and i8 %262, 15
  %264 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %263, ptr %64, align 1
  br label %if.end15.i552.i

if.end15.i552.i:                                  ; preds = %if.then9.i550.i, %if.end.i547.i.if.end15.i552.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp16.i551.i = icmp eq i32 %and.i, 0
  br i1 %cmp16.i551.i, label %if.then18.i554.i, label %if.end15.i552.i.for.body120.preheader.i_crit_edge

if.end15.i552.i.for.body120.preheader.i_crit_edge: ; preds = %if.end15.i552.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body120.preheader.i

if.then18.i554.i:                                 ; preds = %if.end15.i552.i
  call void @__sanitizer_cov_trace_pc() #14
  %265 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %64, align 1
  %267 = or i8 %266, 16
  store i8 %267, ptr %64, align 1
  br label %for.body120.preheader.i

for.body120.preheader.i:                          ; preds = %if.then18.i554.i, %if.end15.i552.i.for.body120.preheader.i_crit_edge
  %arrayidx27.i555.i = getelementptr i8, ptr %1, i32 10
  %268 = ptrtoint ptr %arrayidx27.i555.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx27.i555.i, align 1
  %270 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %269, ptr %65, align 1
  %arrayidx27.1.i557.i = getelementptr i8, ptr %1, i32 11
  %271 = ptrtoint ptr %arrayidx27.1.i557.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx27.1.i557.i, align 1
  %273 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %272, ptr %66, align 1
  %arrayidx27.2.i559.i = getelementptr i8, ptr %1, i32 12
  %274 = ptrtoint ptr %arrayidx27.2.i559.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx27.2.i559.i, align 1
  %276 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %275, ptr %67, align 1
  %arrayidx27.3.i561.i = getelementptr i8, ptr %1, i32 13
  %277 = ptrtoint ptr %arrayidx27.3.i561.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx27.3.i561.i, align 1
  %279 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %278, ptr %68, align 1
  %arrayidx27.4.i563.i = getelementptr i8, ptr %1, i32 14
  %280 = ptrtoint ptr %arrayidx27.4.i563.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %arrayidx27.4.i563.i, align 1
  %282 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %281, ptr %69, align 1
  %arrayidx27.5.i565.i = getelementptr i8, ptr %1, i32 15
  %283 = ptrtoint ptr %arrayidx27.5.i565.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %arrayidx27.5.i565.i, align 1
  %285 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %284, ptr %70, align 1
  %286 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 %128, ptr %71, align 1
  %287 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 %126, ptr %72, align 1
  %288 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %124, ptr %73, align 1
  %289 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 %122, ptr %74, align 1
  %290 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %120, ptr %75, align 1
  %291 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 %118, ptr %76, align 1
  %div.i5781273.i = lshr i32 %add93.i, 8
  %conv41.i579.i = trunc i32 %div.i5781273.i to i8
  %292 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %conv41.i579.i, ptr %77, align 1
  %conv43.i581.i = trunc i32 %add93.i to i8
  %293 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %conv43.i581.i, ptr %78, align 1
  %uglygep1316.i = getelementptr i8, ptr %1, i32 %payload_index.0.lcssa.i
  %294 = sub nuw nsw i32 16, %rem.i
  %295 = getelementptr i8, ptr %padded_buffer.i, i32 %rem.i
  %296 = call ptr @memset(ptr %295, i32 0, i32 %294)
  %297 = call ptr @memcpy(ptr %padded_buffer.i, ptr %uglygep1316.i, i32 %rem.i)
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i584.i) #12
  %298 = call ptr @memset(ptr %ctx.i584.i, i32 255, i32 484)
  %call.i585.i = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i584.i, ptr noundef %prwskey.0, i32 noundef 16) #12
  call void @aes_encrypt(ptr noundef nonnull %ctx.i584.i, ptr noundef nonnull %aes_out.i, ptr noundef nonnull %ctr_preload.i) #12
  %299 = call ptr @memset(ptr %ctx.i584.i, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i584.i) #12, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i584.i) #12
  %300 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %aes_out.i, align 1
  %302 = ptrtoint ptr %padded_buffer.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %padded_buffer.0..i = load i8, ptr %padded_buffer.i, align 8
  %xor9.i586.i = xor i8 %padded_buffer.0..i, %301
  %303 = ptrtoint ptr %chain_buffer.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %xor9.i586.i, ptr %chain_buffer.i, align 8
  %304 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %94, align 1
  %306 = ptrtoint ptr %padded_buffer.1..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %padded_buffer.1..i = load i8, ptr %padded_buffer.1..sroa_idx.i, align 1
  %xor9.1.i589.i = xor i8 %padded_buffer.1..i, %305
  %307 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %xor9.1.i589.i, ptr %79, align 1
  %308 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %95, align 1
  %310 = ptrtoint ptr %padded_buffer.2..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %padded_buffer.2..i = load i8, ptr %padded_buffer.2..sroa_idx.i, align 2
  %xor9.2.i593.i = xor i8 %padded_buffer.2..i, %309
  %311 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %xor9.2.i593.i, ptr %80, align 2
  %312 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %96, align 1
  %314 = ptrtoint ptr %padded_buffer.3..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %padded_buffer.3..i = load i8, ptr %padded_buffer.3..sroa_idx.i, align 1
  %xor9.3.i597.i = xor i8 %padded_buffer.3..i, %313
  %315 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 %xor9.3.i597.i, ptr %81, align 1
  %316 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %97, align 1
  %318 = ptrtoint ptr %padded_buffer.4..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %padded_buffer.4..i = load i8, ptr %padded_buffer.4..sroa_idx.i, align 4
  %xor9.4.i601.i = xor i8 %padded_buffer.4..i, %317
  %319 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 %xor9.4.i601.i, ptr %82, align 4
  %320 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %98, align 1
  %322 = ptrtoint ptr %padded_buffer.5..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %padded_buffer.5..i = load i8, ptr %padded_buffer.5..sroa_idx.i, align 1
  %xor9.5.i605.i = xor i8 %padded_buffer.5..i, %321
  %323 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 %xor9.5.i605.i, ptr %83, align 1
  %324 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %99, align 1
  %326 = ptrtoint ptr %padded_buffer.6..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %padded_buffer.6..i = load i8, ptr %padded_buffer.6..sroa_idx.i, align 2
  %xor9.6.i609.i = xor i8 %padded_buffer.6..i, %325
  %327 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 %xor9.6.i609.i, ptr %84, align 2
  %328 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %100, align 1
  %330 = ptrtoint ptr %padded_buffer.7..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %padded_buffer.7..i = load i8, ptr %padded_buffer.7..sroa_idx.i, align 1
  %xor9.7.i613.i = xor i8 %padded_buffer.7..i, %329
  %331 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 %xor9.7.i613.i, ptr %85, align 1
  %332 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %101, align 1
  %334 = ptrtoint ptr %padded_buffer.8..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %padded_buffer.8..i = load i8, ptr %padded_buffer.8..sroa_idx.i, align 8
  %xor9.8.i617.i = xor i8 %padded_buffer.8..i, %333
  %335 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 %xor9.8.i617.i, ptr %86, align 8
  %336 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %102, align 1
  %338 = ptrtoint ptr %padded_buffer.9..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %padded_buffer.9..i = load i8, ptr %padded_buffer.9..sroa_idx.i, align 1
  %xor9.9.i621.i = xor i8 %padded_buffer.9..i, %337
  %339 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %xor9.9.i621.i, ptr %87, align 1
  %340 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %103, align 1
  %342 = ptrtoint ptr %padded_buffer.10..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %padded_buffer.10..i = load i8, ptr %padded_buffer.10..sroa_idx.i, align 2
  %xor9.10.i625.i = xor i8 %padded_buffer.10..i, %341
  %343 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 %xor9.10.i625.i, ptr %88, align 2
  %344 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %104, align 1
  %346 = ptrtoint ptr %padded_buffer.11..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %padded_buffer.11..i = load i8, ptr %padded_buffer.11..sroa_idx.i, align 1
  %xor9.11.i629.i = xor i8 %padded_buffer.11..i, %345
  %347 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 %xor9.11.i629.i, ptr %89, align 1
  %348 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %105, align 1
  %350 = ptrtoint ptr %padded_buffer.12..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %padded_buffer.12..i = load i8, ptr %padded_buffer.12..sroa_idx.i, align 4
  %xor9.12.i633.i = xor i8 %padded_buffer.12..i, %349
  %351 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 %xor9.12.i633.i, ptr %90, align 4
  %352 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %106, align 1
  %354 = ptrtoint ptr %padded_buffer.13..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %padded_buffer.13..i = load i8, ptr %padded_buffer.13..sroa_idx.i, align 1
  %xor9.13.i637.i = xor i8 %padded_buffer.13..i, %353
  %355 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 %xor9.13.i637.i, ptr %91, align 1
  %356 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %107, align 1
  %358 = ptrtoint ptr %padded_buffer.14..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %padded_buffer.14..i = load i8, ptr %padded_buffer.14..sroa_idx.i, align 2
  %xor9.14.i641.i = xor i8 %padded_buffer.14..i, %357
  %359 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 %xor9.14.i641.i, ptr %92, align 2
  %360 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %108, align 1
  %362 = ptrtoint ptr %padded_buffer.15..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %padded_buffer.15..i = load i8, ptr %padded_buffer.15..sroa_idx.i, align 1
  %xor9.15.i645.i = xor i8 %padded_buffer.15..i, %361
  %363 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 %xor9.15.i645.i, ptr %93, align 1
  %364 = call ptr @memcpy(ptr %uglygep1316.i, ptr %chain_buffer.i, i32 %rem.i)
  br label %if.end127.i

if.end127.i:                                      ; preds = %for.body120.preheader.i, %for.end87.i.if.end127.i_crit_edge
  %add128.i = add i32 %hdrlen.addr.1.i, %sub81
  %add129.i = add i32 %add128.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %add129.i)
  %cmp130.i = icmp ult i32 %add129.i, 2049
  br i1 %cmp130.i, label %if.then132.i, label %if.end127.i.if.end135.i_crit_edge

if.end127.i.if.end135.i_crit_edge:                ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135.i

if.then132.i:                                     ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #14
  %365 = call ptr @memcpy(ptr @aes_decipher.message, ptr %1, i32 %add129.i)
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.then132.i, %if.end127.i.if.end135.i_crit_edge
  %arrayidx136.i = getelementptr i8, ptr %1, i32 %hdrlen.addr.1.i
  %366 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %arrayidx136.i, align 1
  %add138.i = add nuw nsw i32 %hdrlen.addr.1.i, 1
  %arrayidx139.i = getelementptr i8, ptr %1, i32 %add138.i
  %368 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %arrayidx139.i, align 1
  %add141.i = add nuw nsw i32 %hdrlen.addr.1.i, 4
  %arrayidx142.i = getelementptr i8, ptr %1, i32 %add141.i
  %370 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %arrayidx142.i, align 1
  %add144.i = add nuw nsw i32 %hdrlen.addr.1.i, 5
  %arrayidx145.i = getelementptr i8, ptr %1, i32 %add144.i
  %372 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %arrayidx145.i, align 1
  %add147.i = add nuw nsw i32 %hdrlen.addr.1.i, 6
  %arrayidx148.i = getelementptr i8, ptr %1, i32 %add147.i
  %374 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %arrayidx148.i, align 1
  %add150.i = add nuw nsw i32 %hdrlen.addr.1.i, 7
  %arrayidx151.i = getelementptr i8, ptr %1, i32 %add150.i
  %376 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %arrayidx151.i, align 1
  %378 = ptrtoint ptr %mic_iv.i to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 89, ptr %mic_iv.i, align 1
  %tobool.not.i647.i = xor i1 %131, true
  %or.cond.i648.i = or i1 %switch.selectcmp.i, %tobool.not.i647.i
  br i1 %or.cond.i648.i, label %if.end135.i.if.end.i651.i_crit_edge, label %if.then.i649.i

if.end135.i.if.end.i651.i_crit_edge:              ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i651.i

if.then.i649.i:                                   ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #14
  %379 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 30), align 1
  %380 = and i8 %379, 15
  %381 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 %380, ptr %49, align 1
  br label %if.end.i651.i

if.end.i651.i:                                    ; preds = %if.then.i649.i, %if.end135.i.if.end.i651.i_crit_edge
  %or.cond64.i.i = and i1 %switch.selectcmp.i, %131
  br i1 %or.cond64.i.i, label %if.then8.i.i, label %if.end.i651.i.if.end14.i.i_crit_edge

if.end.i651.i.if.end14.i.i_crit_edge:             ; preds = %if.end.i651.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i.i

if.then8.i.i:                                     ; preds = %if.end.i651.i
  call void @__sanitizer_cov_trace_pc() #14
  %382 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %383 = and i8 %382, 15
  %384 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 %383, ptr %49, align 1
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then8.i.i, %if.end.i651.i.if.end14.i.i_crit_edge
  br i1 %131, label %if.end14.i.i.if.end18.i.i_crit_edge, label %if.then16.i.i

if.end14.i.i.if.end18.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i.i

if.then16.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %385 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 0, ptr %49, align 1
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then16.i.i, %if.end14.i.i.if.end18.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i.i, label %if.then20.i.i, label %if.end18.i.i.construct_mic_iv.exit.i_crit_edge

if.end18.i.i.construct_mic_iv.exit.i_crit_edge:   ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %construct_mic_iv.exit.i

if.then20.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %386 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %49, align 1
  %388 = or i8 %387, 16
  store i8 %388, ptr %49, align 1
  br label %construct_mic_iv.exit.i

construct_mic_iv.exit.i:                          ; preds = %if.then20.i.i, %if.end18.i.i.construct_mic_iv.exit.i_crit_edge
  %389 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 10), align 1
  %390 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 %389, ptr %50, align 1
  %391 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 11), align 1
  %392 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 %391, ptr %51, align 1
  %393 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 12), align 1
  %394 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 %393, ptr %52, align 1
  %395 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 13), align 1
  %396 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %396)
  store i8 %395, ptr %53, align 1
  %397 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 14), align 1
  %398 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 %397, ptr %54, align 1
  %399 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 15), align 1
  %400 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 %399, ptr %55, align 1
  %401 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 %377, ptr %56, align 1
  %402 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 %375, ptr %57, align 1
  %403 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 %373, ptr %58, align 1
  %404 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 %371, ptr %59, align 1
  %405 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 %369, ptr %60, align 1
  %406 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 %367, ptr %61, align 1
  %div63.i.i = lshr i32 %sub.i, 8
  %conv38.i.i = trunc i32 %div63.i.i to i8
  %407 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 %conv38.i.i, ptr %62, align 1
  %conv40.i.i = trunc i32 %sub.i to i8
  %408 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 %conv40.i.i, ptr %63, align 1
  %409 = trunc i32 %hdrlen.addr.1.i to i8
  %conv2.i.i = add i8 %409, -2
  %410 = load i8, ptr @aes_decipher.message, align 1
  %411 = and i8 %410, -49
  %.sink.i.i = select i1 %cmp.i.i, i8 %410, i8 %411
  %412 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 1), align 1
  %413 = and i8 %412, -57
  %414 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 4), align 1
  %415 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 5), align 1
  %416 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 6), align 1
  %417 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 7), align 1
  %418 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 8), align 1
  %419 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 9), align 1
  %420 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 16), align 1
  %421 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 17), align 1
  %422 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 18), align 1
  %423 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 19), align 1
  %424 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 20), align 1
  %425 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 21), align 1
  %or.cond.i674.i = or i1 %switch.selectcmp.i, %131
  br i1 %or.cond.i674.i, label %construct_mic_iv.exit.i.if.end.i676.i_crit_edge, label %for.body18.preheader.i.i

construct_mic_iv.exit.i.if.end.i676.i_crit_edge:  ; preds = %construct_mic_iv.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i676.i

for.body18.preheader.i.i:                         ; preds = %construct_mic_iv.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %426 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %427 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 25), align 1
  %428 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 26), align 1
  %429 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 27), align 1
  %430 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 28), align 1
  %431 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 29), align 1
  br label %if.end.i676.i

if.end.i676.i:                                    ; preds = %for.body18.preheader.i.i, %construct_mic_iv.exit.i.if.end.i676.i_crit_edge
  %mic_header2.sroa.28.0.i = phi i8 [ 0, %construct_mic_iv.exit.i.if.end.i676.i_crit_edge ], [ %426, %for.body18.preheader.i.i ]
  %mic_header2.sroa.33.0.i = phi i8 [ 0, %construct_mic_iv.exit.i.if.end.i676.i_crit_edge ], [ %427, %for.body18.preheader.i.i ]
  %mic_header2.sroa.38.0.i = phi i8 [ 0, %construct_mic_iv.exit.i.if.end.i676.i_crit_edge ], [ %428, %for.body18.preheader.i.i ]
  %mic_header2.sroa.42.0.i = phi i8 [ 0, %construct_mic_iv.exit.i.if.end.i676.i_crit_edge ], [ %429, %for.body18.preheader.i.i ]
  %mic_header2.sroa.46.0.i = phi i8 [ 0, %construct_mic_iv.exit.i.if.end.i676.i_crit_edge ], [ %430, %for.body18.preheader.i.i ]
  %mic_header2.sroa.50.0.i = phi i8 [ 0, %construct_mic_iv.exit.i.if.end.i676.i_crit_edge ], [ %431, %for.body18.preheader.i.i ]
  br i1 %or.cond64.i.i, label %if.then28.i.i, label %if.end.i676.i.if.end37.i.i_crit_edge

if.end.i676.i.if.end37.i.i_crit_edge:             ; preds = %if.end.i676.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i.i

if.then28.i.i:                                    ; preds = %if.end.i676.i
  call void @__sanitizer_cov_trace_pc() #14
  %432 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %433 = and i8 %432, 15
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then28.i.i, %if.end.i676.i.if.end37.i.i_crit_edge
  %mic_header2.sroa.28.1.i = phi i8 [ %433, %if.then28.i.i ], [ %mic_header2.sroa.28.0.i, %if.end.i676.i.if.end37.i.i_crit_edge ]
  %mic_header2.sroa.33.1.i = phi i8 [ 0, %if.then28.i.i ], [ %mic_header2.sroa.33.0.i, %if.end.i676.i.if.end37.i.i_crit_edge ]
  br i1 %or.cond.i648.i, label %if.end37.i.i.construct_mic_header2.exit.i_crit_edge, label %for.body45.preheader.i.i

if.end37.i.i.construct_mic_header2.exit.i_crit_edge: ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %construct_mic_header2.exit.i

for.body45.preheader.i.i:                         ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %434 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %435 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 25), align 1
  %436 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 26), align 1
  %437 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 27), align 1
  %438 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 28), align 1
  %439 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 29), align 1
  %440 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 30), align 1
  %441 = and i8 %440, 15
  br label %construct_mic_header2.exit.i

construct_mic_header2.exit.i:                     ; preds = %for.body45.preheader.i.i, %if.end37.i.i.construct_mic_header2.exit.i_crit_edge
  %mic_header2.sroa.28.2.i = phi i8 [ %mic_header2.sroa.28.1.i, %if.end37.i.i.construct_mic_header2.exit.i_crit_edge ], [ %434, %for.body45.preheader.i.i ]
  %mic_header2.sroa.33.2.i = phi i8 [ %mic_header2.sroa.33.1.i, %if.end37.i.i.construct_mic_header2.exit.i_crit_edge ], [ %435, %for.body45.preheader.i.i ]
  %mic_header2.sroa.38.1.i = phi i8 [ %mic_header2.sroa.38.0.i, %if.end37.i.i.construct_mic_header2.exit.i_crit_edge ], [ %436, %for.body45.preheader.i.i ]
  %mic_header2.sroa.42.1.i = phi i8 [ %mic_header2.sroa.42.0.i, %if.end37.i.i.construct_mic_header2.exit.i_crit_edge ], [ %437, %for.body45.preheader.i.i ]
  %mic_header2.sroa.46.1.i = phi i8 [ %mic_header2.sroa.46.0.i, %if.end37.i.i.construct_mic_header2.exit.i_crit_edge ], [ %438, %for.body45.preheader.i.i ]
  %mic_header2.sroa.50.1.i = phi i8 [ %mic_header2.sroa.50.0.i, %if.end37.i.i.construct_mic_header2.exit.i_crit_edge ], [ %439, %for.body45.preheader.i.i ]
  %mic_header2.sroa.54.0.i = phi i8 [ 0, %if.end37.i.i.construct_mic_header2.exit.i_crit_edge ], [ %441, %for.body45.preheader.i.i ]
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i679.i) #12
  %442 = call ptr @memset(ptr %ctx.i679.i, i32 255, i32 484)
  %call.i680.i = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i679.i, ptr noundef %prwskey.0, i32 noundef 16) #12
  call void @aes_encrypt(ptr noundef nonnull %ctx.i679.i, ptr noundef nonnull %aes_out.i, ptr noundef nonnull %mic_iv.i) #12
  %443 = call ptr @memset(ptr %ctx.i679.i, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i679.i) #12, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i679.i) #12
  %444 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %aes_out.i, align 1
  %446 = ptrtoint ptr %chain_buffer.i to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 %445, ptr %chain_buffer.i, align 8
  %447 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %94, align 1
  %xor9.1.i684.i = xor i8 %448, %conv2.i.i
  %449 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 %xor9.1.i684.i, ptr %79, align 1
  %450 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %95, align 1
  %xor9.2.i688.i = xor i8 %451, %.sink.i.i
  %452 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %452)
  store i8 %xor9.2.i688.i, ptr %80, align 2
  %453 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %96, align 1
  %xor9.3.i692.i = xor i8 %454, %413
  %455 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %455)
  store i8 %xor9.3.i692.i, ptr %81, align 1
  %456 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %97, align 1
  %xor9.4.i696.i = xor i8 %457, %414
  %458 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %458)
  store i8 %xor9.4.i696.i, ptr %82, align 4
  %459 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %98, align 1
  %xor9.5.i700.i = xor i8 %460, %415
  %461 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %461)
  store i8 %xor9.5.i700.i, ptr %83, align 1
  %462 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %99, align 1
  %xor9.6.i704.i = xor i8 %463, %416
  %464 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %464)
  store i8 %xor9.6.i704.i, ptr %84, align 2
  %465 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %465)
  %466 = load i8, ptr %100, align 1
  %xor9.7.i708.i = xor i8 %466, %417
  %467 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 %xor9.7.i708.i, ptr %85, align 1
  %468 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %101, align 1
  %xor9.8.i712.i = xor i8 %469, %418
  %470 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 %xor9.8.i712.i, ptr %86, align 8
  %471 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %102, align 1
  %xor9.9.i716.i = xor i8 %472, %419
  %473 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 %xor9.9.i716.i, ptr %87, align 1
  %474 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %103, align 1
  %xor9.10.i720.i = xor i8 %475, %389
  %476 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %476)
  store i8 %xor9.10.i720.i, ptr %88, align 2
  %477 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %104, align 1
  %xor9.11.i724.i = xor i8 %478, %391
  %479 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 %xor9.11.i724.i, ptr %89, align 1
  %480 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %105, align 1
  %xor9.12.i728.i = xor i8 %481, %393
  %482 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %482)
  store i8 %xor9.12.i728.i, ptr %90, align 4
  %483 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %106, align 1
  %xor9.13.i732.i = xor i8 %484, %395
  %485 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 %xor9.13.i732.i, ptr %91, align 1
  %486 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %107, align 1
  %xor9.14.i736.i = xor i8 %487, %397
  %488 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %488)
  store i8 %xor9.14.i736.i, ptr %92, align 2
  %489 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %108, align 1
  %xor9.15.i740.i = xor i8 %490, %399
  %491 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %491)
  store i8 %xor9.15.i740.i, ptr %93, align 1
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i742.i) #12
  %492 = call ptr @memset(ptr %ctx.i742.i, i32 255, i32 484)
  %call.i743.i = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i742.i, ptr noundef %prwskey.0, i32 noundef 16) #12
  call void @aes_encrypt(ptr noundef nonnull %ctx.i742.i, ptr noundef nonnull %aes_out.i, ptr noundef nonnull %chain_buffer.i) #12
  %493 = call ptr @memset(ptr %ctx.i742.i, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i742.i) #12, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i742.i) #12
  %494 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %aes_out.i, align 1
  %xor9.i744.i = xor i8 %495, %420
  %496 = ptrtoint ptr %chain_buffer.i to i32
  call void @__asan_store1_noabort(i32 %496)
  store i8 %xor9.i744.i, ptr %chain_buffer.i, align 8
  %497 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %94, align 1
  %xor9.1.i747.i = xor i8 %498, %421
  %499 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 %xor9.1.i747.i, ptr %79, align 1
  %500 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %95, align 1
  %xor9.2.i751.i = xor i8 %501, %422
  %502 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %502)
  store i8 %xor9.2.i751.i, ptr %80, align 2
  %503 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %96, align 1
  %xor9.3.i755.i = xor i8 %504, %423
  %505 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %505)
  store i8 %xor9.3.i755.i, ptr %81, align 1
  %506 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %506)
  %507 = load i8, ptr %97, align 1
  %xor9.4.i759.i = xor i8 %507, %424
  %508 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %508)
  store i8 %xor9.4.i759.i, ptr %82, align 4
  %509 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %98, align 1
  %xor9.5.i763.i = xor i8 %510, %425
  %511 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %511)
  store i8 %xor9.5.i763.i, ptr %83, align 1
  %512 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %99, align 1
  %514 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 %513, ptr %84, align 2
  %515 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %100, align 1
  %517 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %517)
  store i8 %516, ptr %85, align 1
  %518 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %518)
  %519 = load i8, ptr %101, align 1
  %xor9.8.i775.i = xor i8 %519, %mic_header2.sroa.28.2.i
  %520 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %520)
  store i8 %xor9.8.i775.i, ptr %86, align 8
  %521 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %102, align 1
  %xor9.9.i779.i = xor i8 %522, %mic_header2.sroa.33.2.i
  %523 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %523)
  store i8 %xor9.9.i779.i, ptr %87, align 1
  %524 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %103, align 1
  %xor9.10.i783.i = xor i8 %525, %mic_header2.sroa.38.1.i
  %526 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 %xor9.10.i783.i, ptr %88, align 2
  %527 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %104, align 1
  %xor9.11.i787.i = xor i8 %528, %mic_header2.sroa.42.1.i
  %529 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %529)
  store i8 %xor9.11.i787.i, ptr %89, align 1
  %530 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %105, align 1
  %xor9.12.i791.i = xor i8 %531, %mic_header2.sroa.46.1.i
  %532 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %532)
  store i8 %xor9.12.i791.i, ptr %90, align 4
  %533 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %533)
  %534 = load i8, ptr %106, align 1
  %xor9.13.i795.i = xor i8 %534, %mic_header2.sroa.50.1.i
  %535 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %535)
  store i8 %xor9.13.i795.i, ptr %91, align 1
  %536 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %536)
  %537 = load i8, ptr %107, align 1
  %xor9.14.i799.i = xor i8 %537, %mic_header2.sroa.54.0.i
  %538 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %538)
  store i8 %xor9.14.i799.i, ptr %92, align 2
  %539 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %539)
  %540 = load i8, ptr %108, align 1
  %541 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %541)
  store i8 %540, ptr %93, align 1
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i805.i) #12
  %542 = call ptr @memset(ptr %ctx.i805.i, i32 255, i32 484)
  %call.i806.i = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i805.i, ptr noundef %prwskey.0, i32 noundef 16) #12
  call void @aes_encrypt(ptr noundef nonnull %ctx.i805.i, ptr noundef nonnull %aes_out.i, ptr noundef nonnull %chain_buffer.i) #12
  %543 = call ptr @memset(ptr %ctx.i805.i, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i805.i) #12, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i805.i) #12
  br i1 %cmp681277.not.i, label %construct_mic_header2.exit.i.for.end187.i_crit_edge, label %for.body178.preheader.i

construct_mic_header2.exit.i.for.end187.i_crit_edge: ; preds = %construct_mic_header2.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end187.i

for.body178.preheader.i:                          ; preds = %construct_mic_header2.exit.i
  %umax1320.i = call i32 @llvm.umax.i32(i32 %div538.i, i32 1) #12
  br label %for.body178.i

for.body178.i:                                    ; preds = %for.body178.i.for.body178.i_crit_edge, %for.body178.preheader.i
  %payload_index.31288.i = phi i32 [ %add182.i, %for.body178.i.for.body178.i_crit_edge ], [ %add67.i, %for.body178.preheader.i ]
  %i.11287.i = phi i32 [ %inc186.i, %for.body178.i.for.body178.i_crit_edge ], [ 0, %for.body178.preheader.i ]
  %arrayidx180.i = getelementptr [2048 x i8], ptr @aes_decipher.message, i32 0, i32 %payload_index.31288.i
  %544 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %544)
  %545 = load i8, ptr %aes_out.i, align 1
  %546 = ptrtoint ptr %arrayidx180.i to i32
  call void @__asan_load1_noabort(i32 %546)
  %547 = load i8, ptr %arrayidx180.i, align 1
  %xor9.i807.i = xor i8 %547, %545
  %548 = ptrtoint ptr %chain_buffer.i to i32
  call void @__asan_store1_noabort(i32 %548)
  store i8 %xor9.i807.i, ptr %chain_buffer.i, align 8
  %549 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %549)
  %550 = load i8, ptr %94, align 1
  %arrayidx1.1.i809.i = getelementptr i8, ptr %arrayidx180.i, i32 1
  %551 = ptrtoint ptr %arrayidx1.1.i809.i to i32
  call void @__asan_load1_noabort(i32 %551)
  %552 = load i8, ptr %arrayidx1.1.i809.i, align 1
  %xor9.1.i810.i = xor i8 %552, %550
  %553 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %553)
  store i8 %xor9.1.i810.i, ptr %79, align 1
  %554 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %95, align 1
  %arrayidx1.2.i813.i = getelementptr i8, ptr %arrayidx180.i, i32 2
  %556 = ptrtoint ptr %arrayidx1.2.i813.i to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %arrayidx1.2.i813.i, align 1
  %xor9.2.i814.i = xor i8 %557, %555
  %558 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %558)
  store i8 %xor9.2.i814.i, ptr %80, align 2
  %559 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %559)
  %560 = load i8, ptr %96, align 1
  %arrayidx1.3.i817.i = getelementptr i8, ptr %arrayidx180.i, i32 3
  %561 = ptrtoint ptr %arrayidx1.3.i817.i to i32
  call void @__asan_load1_noabort(i32 %561)
  %562 = load i8, ptr %arrayidx1.3.i817.i, align 1
  %xor9.3.i818.i = xor i8 %562, %560
  %563 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %563)
  store i8 %xor9.3.i818.i, ptr %81, align 1
  %564 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %564)
  %565 = load i8, ptr %97, align 1
  %arrayidx1.4.i821.i = getelementptr i8, ptr %arrayidx180.i, i32 4
  %566 = ptrtoint ptr %arrayidx1.4.i821.i to i32
  call void @__asan_load1_noabort(i32 %566)
  %567 = load i8, ptr %arrayidx1.4.i821.i, align 1
  %xor9.4.i822.i = xor i8 %567, %565
  %568 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %568)
  store i8 %xor9.4.i822.i, ptr %82, align 4
  %569 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %569)
  %570 = load i8, ptr %98, align 1
  %arrayidx1.5.i825.i = getelementptr i8, ptr %arrayidx180.i, i32 5
  %571 = ptrtoint ptr %arrayidx1.5.i825.i to i32
  call void @__asan_load1_noabort(i32 %571)
  %572 = load i8, ptr %arrayidx1.5.i825.i, align 1
  %xor9.5.i826.i = xor i8 %572, %570
  %573 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %573)
  store i8 %xor9.5.i826.i, ptr %83, align 1
  %574 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %99, align 1
  %arrayidx1.6.i829.i = getelementptr i8, ptr %arrayidx180.i, i32 6
  %576 = ptrtoint ptr %arrayidx1.6.i829.i to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %arrayidx1.6.i829.i, align 1
  %xor9.6.i830.i = xor i8 %577, %575
  %578 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %578)
  store i8 %xor9.6.i830.i, ptr %84, align 2
  %579 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %579)
  %580 = load i8, ptr %100, align 1
  %arrayidx1.7.i833.i = getelementptr i8, ptr %arrayidx180.i, i32 7
  %581 = ptrtoint ptr %arrayidx1.7.i833.i to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %arrayidx1.7.i833.i, align 1
  %xor9.7.i834.i = xor i8 %582, %580
  %583 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %583)
  store i8 %xor9.7.i834.i, ptr %85, align 1
  %584 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %101, align 1
  %arrayidx1.8.i837.i = getelementptr i8, ptr %arrayidx180.i, i32 8
  %586 = ptrtoint ptr %arrayidx1.8.i837.i to i32
  call void @__asan_load1_noabort(i32 %586)
  %587 = load i8, ptr %arrayidx1.8.i837.i, align 1
  %xor9.8.i838.i = xor i8 %587, %585
  %588 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %588)
  store i8 %xor9.8.i838.i, ptr %86, align 8
  %589 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %589)
  %590 = load i8, ptr %102, align 1
  %arrayidx1.9.i841.i = getelementptr i8, ptr %arrayidx180.i, i32 9
  %591 = ptrtoint ptr %arrayidx1.9.i841.i to i32
  call void @__asan_load1_noabort(i32 %591)
  %592 = load i8, ptr %arrayidx1.9.i841.i, align 1
  %xor9.9.i842.i = xor i8 %592, %590
  %593 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %593)
  store i8 %xor9.9.i842.i, ptr %87, align 1
  %594 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %594)
  %595 = load i8, ptr %103, align 1
  %arrayidx1.10.i845.i = getelementptr i8, ptr %arrayidx180.i, i32 10
  %596 = ptrtoint ptr %arrayidx1.10.i845.i to i32
  call void @__asan_load1_noabort(i32 %596)
  %597 = load i8, ptr %arrayidx1.10.i845.i, align 1
  %xor9.10.i846.i = xor i8 %597, %595
  %598 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %598)
  store i8 %xor9.10.i846.i, ptr %88, align 2
  %599 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %599)
  %600 = load i8, ptr %104, align 1
  %arrayidx1.11.i849.i = getelementptr i8, ptr %arrayidx180.i, i32 11
  %601 = ptrtoint ptr %arrayidx1.11.i849.i to i32
  call void @__asan_load1_noabort(i32 %601)
  %602 = load i8, ptr %arrayidx1.11.i849.i, align 1
  %xor9.11.i850.i = xor i8 %602, %600
  %603 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %603)
  store i8 %xor9.11.i850.i, ptr %89, align 1
  %604 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %105, align 1
  %arrayidx1.12.i853.i = getelementptr i8, ptr %arrayidx180.i, i32 12
  %606 = ptrtoint ptr %arrayidx1.12.i853.i to i32
  call void @__asan_load1_noabort(i32 %606)
  %607 = load i8, ptr %arrayidx1.12.i853.i, align 1
  %xor9.12.i854.i = xor i8 %607, %605
  %608 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %608)
  store i8 %xor9.12.i854.i, ptr %90, align 4
  %609 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %609)
  %610 = load i8, ptr %106, align 1
  %arrayidx1.13.i857.i = getelementptr i8, ptr %arrayidx180.i, i32 13
  %611 = ptrtoint ptr %arrayidx1.13.i857.i to i32
  call void @__asan_load1_noabort(i32 %611)
  %612 = load i8, ptr %arrayidx1.13.i857.i, align 1
  %xor9.13.i858.i = xor i8 %612, %610
  %613 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %613)
  store i8 %xor9.13.i858.i, ptr %91, align 1
  %614 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %614)
  %615 = load i8, ptr %107, align 1
  %arrayidx1.14.i861.i = getelementptr i8, ptr %arrayidx180.i, i32 14
  %616 = ptrtoint ptr %arrayidx1.14.i861.i to i32
  call void @__asan_load1_noabort(i32 %616)
  %617 = load i8, ptr %arrayidx1.14.i861.i, align 1
  %xor9.14.i862.i = xor i8 %617, %615
  %618 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %618)
  store i8 %xor9.14.i862.i, ptr %92, align 2
  %619 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %619)
  %620 = load i8, ptr %108, align 1
  %arrayidx1.15.i865.i = getelementptr i8, ptr %arrayidx180.i, i32 15
  %621 = ptrtoint ptr %arrayidx1.15.i865.i to i32
  call void @__asan_load1_noabort(i32 %621)
  %622 = load i8, ptr %arrayidx1.15.i865.i, align 1
  %xor9.15.i866.i = xor i8 %622, %620
  %623 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %623)
  store i8 %xor9.15.i866.i, ptr %93, align 1
  %add182.i = add i32 %payload_index.31288.i, 16
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i868.i) #12
  %624 = call ptr @memset(ptr %ctx.i868.i, i32 255, i32 484)
  %call.i869.i = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i868.i, ptr noundef %prwskey.0, i32 noundef 16) #12
  call void @aes_encrypt(ptr noundef nonnull %ctx.i868.i, ptr noundef nonnull %aes_out.i, ptr noundef nonnull %chain_buffer.i) #12
  %625 = call ptr @memset(ptr %ctx.i868.i, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i868.i) #12, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i868.i) #12
  %inc186.i = add nuw nsw i32 %i.11287.i, 1
  %exitcond1321.not.i = icmp eq i32 %inc186.i, %umax1320.i
  br i1 %exitcond1321.not.i, label %for.body178.i.for.end187.i_crit_edge, label %for.body178.i.for.body178.i_crit_edge

for.body178.i.for.body178.i_crit_edge:            ; preds = %for.body178.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body178.i

for.body178.i.for.end187.i_crit_edge:             ; preds = %for.body178.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end187.i

for.end187.i:                                     ; preds = %for.body178.i.for.end187.i_crit_edge, %construct_mic_header2.exit.i.for.end187.i_crit_edge
  %payload_index.3.lcssa.i = phi i32 [ %add67.i, %construct_mic_header2.exit.i.for.end187.i_crit_edge ], [ %add182.i, %for.body178.i.for.end187.i_crit_edge ]
  br i1 %cmp88.not.i, label %for.end187.i.if.end214.i_crit_edge, label %for.end208.i

for.end187.i.if.end214.i_crit_edge:               ; preds = %for.end187.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end214.i

for.end208.i:                                     ; preds = %for.end187.i
  call void @__sanitizer_cov_trace_pc() #14
  %uglygep1322.i = getelementptr i8, ptr @aes_decipher.message, i32 %payload_index.3.lcssa.i
  %626 = sub nuw nsw i32 16, %rem.i
  %627 = getelementptr i8, ptr %padded_buffer.i, i32 %rem.i
  %628 = call ptr @memset(ptr %627, i32 0, i32 %626)
  %629 = call ptr @memcpy(ptr %padded_buffer.i, ptr %uglygep1322.i, i32 %rem.i)
  %630 = add i32 %payload_index.3.lcssa.i, %rem.i
  %631 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %631)
  %632 = load i8, ptr %aes_out.i, align 1
  %633 = ptrtoint ptr %padded_buffer.i to i32
  call void @__asan_load1_noabort(i32 %633)
  %padded_buffer.0.1343.i = load i8, ptr %padded_buffer.i, align 8
  %xor9.i870.i = xor i8 %padded_buffer.0.1343.i, %632
  %634 = ptrtoint ptr %chain_buffer.i to i32
  call void @__asan_store1_noabort(i32 %634)
  store i8 %xor9.i870.i, ptr %chain_buffer.i, align 8
  %635 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %635)
  %636 = load i8, ptr %94, align 1
  %637 = ptrtoint ptr %padded_buffer.1..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %637)
  %padded_buffer.1.1346.i = load i8, ptr %padded_buffer.1..sroa_idx.i, align 1
  %xor9.1.i873.i = xor i8 %padded_buffer.1.1346.i, %636
  %638 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %638)
  store i8 %xor9.1.i873.i, ptr %79, align 1
  %639 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %639)
  %640 = load i8, ptr %95, align 1
  %641 = ptrtoint ptr %padded_buffer.2..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %641)
  %padded_buffer.2.1349.i = load i8, ptr %padded_buffer.2..sroa_idx.i, align 2
  %xor9.2.i877.i = xor i8 %padded_buffer.2.1349.i, %640
  %642 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %642)
  store i8 %xor9.2.i877.i, ptr %80, align 2
  %643 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %643)
  %644 = load i8, ptr %96, align 1
  %645 = ptrtoint ptr %padded_buffer.3..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %645)
  %padded_buffer.3.1352.i = load i8, ptr %padded_buffer.3..sroa_idx.i, align 1
  %xor9.3.i881.i = xor i8 %padded_buffer.3.1352.i, %644
  %646 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %646)
  store i8 %xor9.3.i881.i, ptr %81, align 1
  %647 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %647)
  %648 = load i8, ptr %97, align 1
  %649 = ptrtoint ptr %padded_buffer.4..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %649)
  %padded_buffer.4.1355.i = load i8, ptr %padded_buffer.4..sroa_idx.i, align 4
  %xor9.4.i885.i = xor i8 %padded_buffer.4.1355.i, %648
  %650 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %650)
  store i8 %xor9.4.i885.i, ptr %82, align 4
  %651 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %651)
  %652 = load i8, ptr %98, align 1
  %653 = ptrtoint ptr %padded_buffer.5..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %653)
  %padded_buffer.5.1358.i = load i8, ptr %padded_buffer.5..sroa_idx.i, align 1
  %xor9.5.i889.i = xor i8 %padded_buffer.5.1358.i, %652
  %654 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %654)
  store i8 %xor9.5.i889.i, ptr %83, align 1
  %655 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %655)
  %656 = load i8, ptr %99, align 1
  %657 = ptrtoint ptr %padded_buffer.6..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %657)
  %padded_buffer.6.1361.i = load i8, ptr %padded_buffer.6..sroa_idx.i, align 2
  %xor9.6.i893.i = xor i8 %padded_buffer.6.1361.i, %656
  %658 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %658)
  store i8 %xor9.6.i893.i, ptr %84, align 2
  %659 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %659)
  %660 = load i8, ptr %100, align 1
  %661 = ptrtoint ptr %padded_buffer.7..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %661)
  %padded_buffer.7.1364.i = load i8, ptr %padded_buffer.7..sroa_idx.i, align 1
  %xor9.7.i897.i = xor i8 %padded_buffer.7.1364.i, %660
  %662 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %662)
  store i8 %xor9.7.i897.i, ptr %85, align 1
  %663 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %663)
  %664 = load i8, ptr %101, align 1
  %665 = ptrtoint ptr %padded_buffer.8..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %665)
  %padded_buffer.8.1367.i = load i8, ptr %padded_buffer.8..sroa_idx.i, align 8
  %xor9.8.i901.i = xor i8 %padded_buffer.8.1367.i, %664
  %666 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %666)
  store i8 %xor9.8.i901.i, ptr %86, align 8
  %667 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %667)
  %668 = load i8, ptr %102, align 1
  %669 = ptrtoint ptr %padded_buffer.9..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %669)
  %padded_buffer.9.1370.i = load i8, ptr %padded_buffer.9..sroa_idx.i, align 1
  %xor9.9.i905.i = xor i8 %padded_buffer.9.1370.i, %668
  %670 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %670)
  store i8 %xor9.9.i905.i, ptr %87, align 1
  %671 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %671)
  %672 = load i8, ptr %103, align 1
  %673 = ptrtoint ptr %padded_buffer.10..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %673)
  %padded_buffer.10.1373.i = load i8, ptr %padded_buffer.10..sroa_idx.i, align 2
  %xor9.10.i909.i = xor i8 %padded_buffer.10.1373.i, %672
  %674 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %674)
  store i8 %xor9.10.i909.i, ptr %88, align 2
  %675 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %675)
  %676 = load i8, ptr %104, align 1
  %677 = ptrtoint ptr %padded_buffer.11..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %677)
  %padded_buffer.11.1376.i = load i8, ptr %padded_buffer.11..sroa_idx.i, align 1
  %xor9.11.i913.i = xor i8 %padded_buffer.11.1376.i, %676
  %678 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %678)
  store i8 %xor9.11.i913.i, ptr %89, align 1
  %679 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %679)
  %680 = load i8, ptr %105, align 1
  %681 = ptrtoint ptr %padded_buffer.12..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %681)
  %padded_buffer.12.1379.i = load i8, ptr %padded_buffer.12..sroa_idx.i, align 4
  %xor9.12.i917.i = xor i8 %padded_buffer.12.1379.i, %680
  %682 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %682)
  store i8 %xor9.12.i917.i, ptr %90, align 4
  %683 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %683)
  %684 = load i8, ptr %106, align 1
  %685 = ptrtoint ptr %padded_buffer.13..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %685)
  %padded_buffer.13.1382.i = load i8, ptr %padded_buffer.13..sroa_idx.i, align 1
  %xor9.13.i921.i = xor i8 %padded_buffer.13.1382.i, %684
  %686 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %686)
  store i8 %xor9.13.i921.i, ptr %91, align 1
  %687 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %687)
  %688 = load i8, ptr %107, align 1
  %689 = ptrtoint ptr %padded_buffer.14..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %689)
  %padded_buffer.14.1385.i = load i8, ptr %padded_buffer.14..sroa_idx.i, align 2
  %xor9.14.i925.i = xor i8 %padded_buffer.14.1385.i, %688
  %690 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %690)
  store i8 %xor9.14.i925.i, ptr %92, align 2
  %691 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %691)
  %692 = load i8, ptr %108, align 1
  %693 = ptrtoint ptr %padded_buffer.15..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %693)
  %padded_buffer.15.1388.i = load i8, ptr %padded_buffer.15..sroa_idx.i, align 1
  %xor9.15.i929.i = xor i8 %padded_buffer.15.1388.i, %692
  %694 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %694)
  store i8 %xor9.15.i929.i, ptr %93, align 1
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i931.i) #12
  %695 = call ptr @memset(ptr %ctx.i931.i, i32 255, i32 484)
  %call.i932.i = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i931.i, ptr noundef %prwskey.0, i32 noundef 16) #12
  call void @aes_encrypt(ptr noundef nonnull %ctx.i931.i, ptr noundef nonnull %aes_out.i, ptr noundef nonnull %chain_buffer.i) #12
  %696 = call ptr @memset(ptr %ctx.i931.i, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i931.i) #12, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i931.i) #12
  br label %if.end214.i

if.end214.i:                                      ; preds = %for.end208.i, %for.end187.i.if.end214.i_crit_edge
  %payload_index.5.i = phi i32 [ %630, %for.end208.i ], [ %payload_index.3.lcssa.i, %for.end187.i.if.end214.i_crit_edge ]
  %697 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %697)
  %mic.sroa.0.0.copyload.i = load i8, ptr %aes_out.i, align 1
  %698 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %698)
  %mic.sroa.5.0.copyload.i = load i8, ptr %94, align 1
  %699 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %699)
  %mic.sroa.6.0.copyload.i = load i8, ptr %95, align 1
  %700 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %700)
  %mic.sroa.7.0.copyload.i = load i8, ptr %96, align 1
  %701 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %701)
  %mic.sroa.8.0.copyload.i = load i8, ptr %97, align 1
  %702 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %702)
  %mic.sroa.9.0.copyload.i = load i8, ptr %98, align 1
  %703 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %703)
  %mic.sroa.10.0.copyload.i = load i8, ptr %99, align 1
  %704 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %704)
  %mic.sroa.11.0.copyload.i = load i8, ptr %100, align 1
  %uglygep1323.i = getelementptr i8, ptr @aes_decipher.message, i32 %payload_index.5.i
  %705 = ptrtoint ptr %uglygep1323.i to i32
  call void @__asan_store1_noabort(i32 %705)
  store i8 %mic.sroa.0.0.copyload.i, ptr %uglygep1323.i, align 1
  %mic.sroa.5.0.uglygep1323.sroa_idx.i = getelementptr inbounds i8, ptr %uglygep1323.i, i32 1
  %706 = ptrtoint ptr %mic.sroa.5.0.uglygep1323.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %706)
  store i8 %mic.sroa.5.0.copyload.i, ptr %mic.sroa.5.0.uglygep1323.sroa_idx.i, align 1
  %mic.sroa.6.0.uglygep1323.sroa_idx.i = getelementptr inbounds i8, ptr %uglygep1323.i, i32 2
  %707 = ptrtoint ptr %mic.sroa.6.0.uglygep1323.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %707)
  store i8 %mic.sroa.6.0.copyload.i, ptr %mic.sroa.6.0.uglygep1323.sroa_idx.i, align 1
  %mic.sroa.7.0.uglygep1323.sroa_idx.i = getelementptr inbounds i8, ptr %uglygep1323.i, i32 3
  %708 = ptrtoint ptr %mic.sroa.7.0.uglygep1323.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %708)
  store i8 %mic.sroa.7.0.copyload.i, ptr %mic.sroa.7.0.uglygep1323.sroa_idx.i, align 1
  %mic.sroa.8.0.uglygep1323.sroa_idx.i = getelementptr inbounds i8, ptr %uglygep1323.i, i32 4
  %709 = ptrtoint ptr %mic.sroa.8.0.uglygep1323.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %709)
  store i8 %mic.sroa.8.0.copyload.i, ptr %mic.sroa.8.0.uglygep1323.sroa_idx.i, align 1
  %mic.sroa.9.0.uglygep1323.sroa_idx.i = getelementptr inbounds i8, ptr %uglygep1323.i, i32 5
  %710 = ptrtoint ptr %mic.sroa.9.0.uglygep1323.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %710)
  store i8 %mic.sroa.9.0.copyload.i, ptr %mic.sroa.9.0.uglygep1323.sroa_idx.i, align 1
  %mic.sroa.10.0.uglygep1323.sroa_idx.i = getelementptr inbounds i8, ptr %uglygep1323.i, i32 6
  %711 = ptrtoint ptr %mic.sroa.10.0.uglygep1323.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %711)
  store i8 %mic.sroa.10.0.copyload.i, ptr %mic.sroa.10.0.uglygep1323.sroa_idx.i, align 1
  %mic.sroa.11.0.uglygep1323.sroa_idx.i = getelementptr inbounds i8, ptr %uglygep1323.i, i32 7
  %712 = ptrtoint ptr %mic.sroa.11.0.uglygep1323.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %712)
  store i8 %mic.sroa.11.0.copyload.i, ptr %mic.sroa.11.0.uglygep1323.sroa_idx.i, align 1
  br i1 %cmp681277.not.i, label %if.end214.i.for.end259.i_crit_edge, label %for.body238.lr.ph.i

if.end214.i.for.end259.i_crit_edge:               ; preds = %if.end214.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end259.i

for.body238.lr.ph.i:                              ; preds = %if.end214.i
  %umax1325.i = call i32 @llvm.umax.i32(i32 %div538.i, i32 1) #12
  br label %for.body238.i

for.body238.i:                                    ; preds = %construct_ctr_preload.exit968.i.for.body238.i_crit_edge, %for.body238.lr.ph.i
  %payload_index.61301.i = phi i32 [ %add67.i, %for.body238.lr.ph.i ], [ %827, %construct_ctr_preload.exit968.i.for.body238.i_crit_edge ]
  %i.21300.i = phi i32 [ 0, %for.body238.lr.ph.i ], [ %add241.i, %construct_ctr_preload.exit968.i.for.body238.i_crit_edge ]
  %add241.i = add nuw nsw i32 %i.21300.i, 1
  %713 = call ptr @memset(ptr %64, i32 0, i32 15)
  %714 = ptrtoint ptr %ctr_preload.i to i32
  call void @__asan_store1_noabort(i32 %714)
  store i8 1, ptr %ctr_preload.i, align 1
  br i1 %or.cond.i648.i, label %for.body238.i.if.end.i939.i_crit_edge, label %if.then.i936.i

for.body238.i.if.end.i939.i_crit_edge:            ; preds = %for.body238.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i939.i

if.then.i936.i:                                   ; preds = %for.body238.i
  call void @__sanitizer_cov_trace_pc() #14
  %715 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 30), align 1
  %716 = and i8 %715, 15
  %717 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %717)
  store i8 %716, ptr %64, align 1
  br label %if.end.i939.i

if.end.i939.i:                                    ; preds = %if.then.i936.i, %for.body238.i.if.end.i939.i_crit_edge
  br i1 %or.cond64.i.i, label %if.then9.i941.i, label %if.end.i939.i.if.end15.i943.i_crit_edge

if.end.i939.i.if.end15.i943.i_crit_edge:          ; preds = %if.end.i939.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i943.i

if.then9.i941.i:                                  ; preds = %if.end.i939.i
  call void @__sanitizer_cov_trace_pc() #14
  %718 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %719 = and i8 %718, 15
  %720 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %720)
  store i8 %719, ptr %64, align 1
  br label %if.end15.i943.i

if.end15.i943.i:                                  ; preds = %if.then9.i941.i, %if.end.i939.i.if.end15.i943.i_crit_edge
  br i1 %cmp.i.i, label %if.then18.i945.i, label %if.end15.i943.i.construct_ctr_preload.exit968.i_crit_edge

if.end15.i943.i.construct_ctr_preload.exit968.i_crit_edge: ; preds = %if.end15.i943.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %construct_ctr_preload.exit968.i

if.then18.i945.i:                                 ; preds = %if.end15.i943.i
  call void @__sanitizer_cov_trace_pc() #14
  %721 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %721)
  %722 = load i8, ptr %64, align 1
  %723 = or i8 %722, 16
  store i8 %723, ptr %64, align 1
  br label %construct_ctr_preload.exit968.i

construct_ctr_preload.exit968.i:                  ; preds = %if.then18.i945.i, %if.end15.i943.i.construct_ctr_preload.exit968.i_crit_edge
  %724 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 10), align 1
  %725 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %725)
  store i8 %724, ptr %65, align 1
  %726 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 11), align 1
  %727 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %727)
  store i8 %726, ptr %66, align 1
  %728 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 12), align 1
  %729 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %729)
  store i8 %728, ptr %67, align 1
  %730 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 13), align 1
  %731 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %731)
  store i8 %730, ptr %68, align 1
  %732 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 14), align 1
  %733 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %733)
  store i8 %732, ptr %69, align 1
  %734 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 15), align 1
  %735 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %735)
  store i8 %734, ptr %70, align 1
  %736 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %736)
  store i8 %377, ptr %71, align 1
  %737 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %737)
  store i8 %375, ptr %72, align 1
  %738 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %738)
  store i8 %373, ptr %73, align 1
  %739 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %739)
  store i8 %371, ptr %74, align 1
  %740 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %740)
  store i8 %369, ptr %75, align 1
  %741 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %741)
  store i8 %367, ptr %76, align 1
  %div.i963.udiv1392.i = lshr i32 %add241.i, 8
  %conv41.i964.i = trunc i32 %div.i963.udiv1392.i to i8
  %742 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %742)
  store i8 %conv41.i964.i, ptr %77, align 1
  %conv43.i966.i = trunc i32 %add241.i to i8
  %743 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %743)
  store i8 %conv43.i966.i, ptr %78, align 1
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i969.i) #12
  %744 = call ptr @memset(ptr %ctx.i969.i, i32 255, i32 484)
  %call.i970.i = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i969.i, ptr noundef %prwskey.0, i32 noundef 16) #12
  call void @aes_encrypt(ptr noundef nonnull %ctx.i969.i, ptr noundef nonnull %aes_out.i, ptr noundef nonnull %ctr_preload.i) #12
  %745 = call ptr @memset(ptr %ctx.i969.i, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i969.i) #12, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i969.i) #12
  %arrayidx245.i = getelementptr [2048 x i8], ptr @aes_decipher.message, i32 0, i32 %payload_index.61301.i
  %746 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %746)
  %747 = load i8, ptr %aes_out.i, align 1
  %748 = ptrtoint ptr %arrayidx245.i to i32
  call void @__asan_load1_noabort(i32 %748)
  %749 = load i8, ptr %arrayidx245.i, align 1
  %xor9.i971.i = xor i8 %749, %747
  %750 = ptrtoint ptr %chain_buffer.i to i32
  call void @__asan_store1_noabort(i32 %750)
  store i8 %xor9.i971.i, ptr %chain_buffer.i, align 8
  %751 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %751)
  %752 = load i8, ptr %94, align 1
  %arrayidx1.1.i973.i = getelementptr i8, ptr %arrayidx245.i, i32 1
  %753 = ptrtoint ptr %arrayidx1.1.i973.i to i32
  call void @__asan_load1_noabort(i32 %753)
  %754 = load i8, ptr %arrayidx1.1.i973.i, align 1
  %xor9.1.i974.i = xor i8 %754, %752
  %755 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %755)
  store i8 %xor9.1.i974.i, ptr %79, align 1
  %756 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %756)
  %757 = load i8, ptr %95, align 1
  %arrayidx1.2.i977.i = getelementptr i8, ptr %arrayidx245.i, i32 2
  %758 = ptrtoint ptr %arrayidx1.2.i977.i to i32
  call void @__asan_load1_noabort(i32 %758)
  %759 = load i8, ptr %arrayidx1.2.i977.i, align 1
  %xor9.2.i978.i = xor i8 %759, %757
  %760 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %760)
  store i8 %xor9.2.i978.i, ptr %80, align 2
  %761 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %761)
  %762 = load i8, ptr %96, align 1
  %arrayidx1.3.i981.i = getelementptr i8, ptr %arrayidx245.i, i32 3
  %763 = ptrtoint ptr %arrayidx1.3.i981.i to i32
  call void @__asan_load1_noabort(i32 %763)
  %764 = load i8, ptr %arrayidx1.3.i981.i, align 1
  %xor9.3.i982.i = xor i8 %764, %762
  %765 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %765)
  store i8 %xor9.3.i982.i, ptr %81, align 1
  %766 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %766)
  %767 = load i8, ptr %97, align 1
  %arrayidx1.4.i985.i = getelementptr i8, ptr %arrayidx245.i, i32 4
  %768 = ptrtoint ptr %arrayidx1.4.i985.i to i32
  call void @__asan_load1_noabort(i32 %768)
  %769 = load i8, ptr %arrayidx1.4.i985.i, align 1
  %xor9.4.i986.i = xor i8 %769, %767
  %770 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %770)
  store i8 %xor9.4.i986.i, ptr %82, align 4
  %771 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %771)
  %772 = load i8, ptr %98, align 1
  %arrayidx1.5.i989.i = getelementptr i8, ptr %arrayidx245.i, i32 5
  %773 = ptrtoint ptr %arrayidx1.5.i989.i to i32
  call void @__asan_load1_noabort(i32 %773)
  %774 = load i8, ptr %arrayidx1.5.i989.i, align 1
  %xor9.5.i990.i = xor i8 %774, %772
  %775 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %775)
  store i8 %xor9.5.i990.i, ptr %83, align 1
  %776 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %776)
  %777 = load i8, ptr %99, align 1
  %arrayidx1.6.i993.i = getelementptr i8, ptr %arrayidx245.i, i32 6
  %778 = ptrtoint ptr %arrayidx1.6.i993.i to i32
  call void @__asan_load1_noabort(i32 %778)
  %779 = load i8, ptr %arrayidx1.6.i993.i, align 1
  %xor9.6.i994.i = xor i8 %779, %777
  %780 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %780)
  store i8 %xor9.6.i994.i, ptr %84, align 2
  %781 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %781)
  %782 = load i8, ptr %100, align 1
  %arrayidx1.7.i997.i = getelementptr i8, ptr %arrayidx245.i, i32 7
  %783 = ptrtoint ptr %arrayidx1.7.i997.i to i32
  call void @__asan_load1_noabort(i32 %783)
  %784 = load i8, ptr %arrayidx1.7.i997.i, align 1
  %xor9.7.i998.i = xor i8 %784, %782
  %785 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %785)
  store i8 %xor9.7.i998.i, ptr %85, align 1
  %786 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %786)
  %787 = load i8, ptr %101, align 1
  %arrayidx1.8.i1001.i = getelementptr i8, ptr %arrayidx245.i, i32 8
  %788 = ptrtoint ptr %arrayidx1.8.i1001.i to i32
  call void @__asan_load1_noabort(i32 %788)
  %789 = load i8, ptr %arrayidx1.8.i1001.i, align 1
  %xor9.8.i1002.i = xor i8 %789, %787
  %790 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %790)
  store i8 %xor9.8.i1002.i, ptr %86, align 8
  %791 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %791)
  %792 = load i8, ptr %102, align 1
  %arrayidx1.9.i1005.i = getelementptr i8, ptr %arrayidx245.i, i32 9
  %793 = ptrtoint ptr %arrayidx1.9.i1005.i to i32
  call void @__asan_load1_noabort(i32 %793)
  %794 = load i8, ptr %arrayidx1.9.i1005.i, align 1
  %xor9.9.i1006.i = xor i8 %794, %792
  %795 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %795)
  store i8 %xor9.9.i1006.i, ptr %87, align 1
  %796 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %796)
  %797 = load i8, ptr %103, align 1
  %arrayidx1.10.i1009.i = getelementptr i8, ptr %arrayidx245.i, i32 10
  %798 = ptrtoint ptr %arrayidx1.10.i1009.i to i32
  call void @__asan_load1_noabort(i32 %798)
  %799 = load i8, ptr %arrayidx1.10.i1009.i, align 1
  %xor9.10.i1010.i = xor i8 %799, %797
  %800 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %800)
  store i8 %xor9.10.i1010.i, ptr %88, align 2
  %801 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %801)
  %802 = load i8, ptr %104, align 1
  %arrayidx1.11.i1013.i = getelementptr i8, ptr %arrayidx245.i, i32 11
  %803 = ptrtoint ptr %arrayidx1.11.i1013.i to i32
  call void @__asan_load1_noabort(i32 %803)
  %804 = load i8, ptr %arrayidx1.11.i1013.i, align 1
  %xor9.11.i1014.i = xor i8 %804, %802
  %805 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %805)
  store i8 %xor9.11.i1014.i, ptr %89, align 1
  %806 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %806)
  %807 = load i8, ptr %105, align 1
  %arrayidx1.12.i1017.i = getelementptr i8, ptr %arrayidx245.i, i32 12
  %808 = ptrtoint ptr %arrayidx1.12.i1017.i to i32
  call void @__asan_load1_noabort(i32 %808)
  %809 = load i8, ptr %arrayidx1.12.i1017.i, align 1
  %xor9.12.i1018.i = xor i8 %809, %807
  %810 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %810)
  store i8 %xor9.12.i1018.i, ptr %90, align 4
  %811 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %811)
  %812 = load i8, ptr %106, align 1
  %arrayidx1.13.i1021.i = getelementptr i8, ptr %arrayidx245.i, i32 13
  %813 = ptrtoint ptr %arrayidx1.13.i1021.i to i32
  call void @__asan_load1_noabort(i32 %813)
  %814 = load i8, ptr %arrayidx1.13.i1021.i, align 1
  %xor9.13.i1022.i = xor i8 %814, %812
  %815 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %815)
  store i8 %xor9.13.i1022.i, ptr %91, align 1
  %816 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %816)
  %817 = load i8, ptr %107, align 1
  %arrayidx1.14.i1025.i = getelementptr i8, ptr %arrayidx245.i, i32 14
  %818 = ptrtoint ptr %arrayidx1.14.i1025.i to i32
  call void @__asan_load1_noabort(i32 %818)
  %819 = load i8, ptr %arrayidx1.14.i1025.i, align 1
  %xor9.14.i1026.i = xor i8 %819, %817
  %820 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %820)
  store i8 %xor9.14.i1026.i, ptr %92, align 2
  %821 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %821)
  %822 = load i8, ptr %108, align 1
  %arrayidx1.15.i1029.i = getelementptr i8, ptr %arrayidx245.i, i32 15
  %823 = ptrtoint ptr %arrayidx1.15.i1029.i to i32
  call void @__asan_load1_noabort(i32 %823)
  %824 = load i8, ptr %arrayidx1.15.i1029.i, align 1
  %xor9.15.i1030.i = xor i8 %824, %822
  %825 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %825)
  store i8 %xor9.15.i1030.i, ptr %93, align 1
  %826 = call ptr @memcpy(ptr %arrayidx245.i, ptr %chain_buffer.i, i32 16)
  %827 = add i32 %payload_index.61301.i, 16
  %exitcond1326.not.i = icmp eq i32 %add241.i, %umax1325.i
  br i1 %exitcond1326.not.i, label %construct_ctr_preload.exit968.i.for.end259.i_crit_edge, label %construct_ctr_preload.exit968.i.for.body238.i_crit_edge

construct_ctr_preload.exit968.i.for.body238.i_crit_edge: ; preds = %construct_ctr_preload.exit968.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body238.i

construct_ctr_preload.exit968.i.for.end259.i_crit_edge: ; preds = %construct_ctr_preload.exit968.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end259.i

for.end259.i:                                     ; preds = %construct_ctr_preload.exit968.i.for.end259.i_crit_edge, %if.end214.i.for.end259.i_crit_edge
  %payload_index.6.lcssa.i = phi i32 [ %add67.i, %if.end214.i.for.end259.i_crit_edge ], [ %827, %construct_ctr_preload.exit968.i.for.end259.i_crit_edge ]
  br i1 %cmp88.not.i, label %for.end259.i.if.end299.i_crit_edge, label %if.then262.i

for.end259.i.if.end299.i_crit_edge:               ; preds = %for.end259.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end299.i

if.then262.i:                                     ; preds = %for.end259.i
  %add265.i = add nuw nsw i32 %div538.i, 1
  %828 = call ptr @memset(ptr %64, i32 0, i32 15)
  %829 = ptrtoint ptr %ctr_preload.i to i32
  call void @__asan_store1_noabort(i32 %829)
  store i8 1, ptr %ctr_preload.i, align 1
  br i1 %or.cond.i648.i, label %if.then262.i.if.end.i1038.i_crit_edge, label %if.then.i1035.i

if.then262.i.if.end.i1038.i_crit_edge:            ; preds = %if.then262.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i1038.i

if.then.i1035.i:                                  ; preds = %if.then262.i
  call void @__sanitizer_cov_trace_pc() #14
  %830 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 30), align 1
  %831 = and i8 %830, 15
  %832 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %832)
  store i8 %831, ptr %64, align 1
  br label %if.end.i1038.i

if.end.i1038.i:                                   ; preds = %if.then.i1035.i, %if.then262.i.if.end.i1038.i_crit_edge
  br i1 %or.cond64.i.i, label %if.then9.i1040.i, label %if.end.i1038.i.if.end15.i1042.i_crit_edge

if.end.i1038.i.if.end15.i1042.i_crit_edge:        ; preds = %if.end.i1038.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i1042.i

if.then9.i1040.i:                                 ; preds = %if.end.i1038.i
  call void @__sanitizer_cov_trace_pc() #14
  %833 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %834 = and i8 %833, 15
  %835 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %835)
  store i8 %834, ptr %64, align 1
  br label %if.end15.i1042.i

if.end15.i1042.i:                                 ; preds = %if.then9.i1040.i, %if.end.i1038.i.if.end15.i1042.i_crit_edge
  br i1 %cmp.i.i, label %if.then18.i1044.i, label %if.end15.i1042.i.for.body292.preheader.i_crit_edge

if.end15.i1042.i.for.body292.preheader.i_crit_edge: ; preds = %if.end15.i1042.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body292.preheader.i

if.then18.i1044.i:                                ; preds = %if.end15.i1042.i
  call void @__sanitizer_cov_trace_pc() #14
  %836 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %836)
  %837 = load i8, ptr %64, align 1
  %838 = or i8 %837, 16
  store i8 %838, ptr %64, align 1
  br label %for.body292.preheader.i

for.body292.preheader.i:                          ; preds = %if.then18.i1044.i, %if.end15.i1042.i.for.body292.preheader.i_crit_edge
  %839 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 10), align 1
  %840 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %840)
  store i8 %839, ptr %65, align 1
  %841 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 11), align 1
  %842 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %842)
  store i8 %841, ptr %66, align 1
  %843 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 12), align 1
  %844 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %844)
  store i8 %843, ptr %67, align 1
  %845 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 13), align 1
  %846 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %846)
  store i8 %845, ptr %68, align 1
  %847 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 14), align 1
  %848 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %848)
  store i8 %847, ptr %69, align 1
  %849 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 15), align 1
  %850 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %850)
  store i8 %849, ptr %70, align 1
  %851 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %851)
  store i8 %377, ptr %71, align 1
  %852 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %852)
  store i8 %375, ptr %72, align 1
  %853 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %853)
  store i8 %373, ptr %73, align 1
  %854 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %854)
  store i8 %371, ptr %74, align 1
  %855 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %855)
  store i8 %369, ptr %75, align 1
  %856 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %856)
  store i8 %367, ptr %76, align 1
  %div.i10621274.i = lshr i32 %add265.i, 8
  %conv41.i1063.i = trunc i32 %div.i10621274.i to i8
  %857 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %857)
  store i8 %conv41.i1063.i, ptr %77, align 1
  %conv43.i1065.i = trunc i32 %add265.i to i8
  %858 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %858)
  store i8 %conv43.i1065.i, ptr %78, align 1
  %uglygep1327.i = getelementptr i8, ptr @aes_decipher.message, i32 %payload_index.6.lcssa.i
  %859 = sub nuw nsw i32 16, %rem.i
  %860 = getelementptr i8, ptr %padded_buffer.i, i32 %rem.i
  %861 = call ptr @memset(ptr %860, i32 0, i32 %859)
  %862 = call ptr @memcpy(ptr %padded_buffer.i, ptr %uglygep1327.i, i32 %rem.i)
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i1068.i) #12
  %863 = call ptr @memset(ptr %ctx.i1068.i, i32 255, i32 484)
  %call.i1069.i = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i1068.i, ptr noundef %prwskey.0, i32 noundef 16) #12
  call void @aes_encrypt(ptr noundef nonnull %ctx.i1068.i, ptr noundef nonnull %aes_out.i, ptr noundef nonnull %ctr_preload.i) #12
  %864 = call ptr @memset(ptr %ctx.i1068.i, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i1068.i) #12, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i1068.i) #12
  %865 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %865)
  %866 = load i8, ptr %aes_out.i, align 1
  %867 = ptrtoint ptr %padded_buffer.i to i32
  call void @__asan_load1_noabort(i32 %867)
  %padded_buffer.0.1344.i = load i8, ptr %padded_buffer.i, align 8
  %xor9.i1070.i = xor i8 %padded_buffer.0.1344.i, %866
  %868 = ptrtoint ptr %chain_buffer.i to i32
  call void @__asan_store1_noabort(i32 %868)
  store i8 %xor9.i1070.i, ptr %chain_buffer.i, align 8
  %869 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %869)
  %870 = load i8, ptr %94, align 1
  %871 = ptrtoint ptr %padded_buffer.1..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %871)
  %padded_buffer.1.1347.i = load i8, ptr %padded_buffer.1..sroa_idx.i, align 1
  %xor9.1.i1073.i = xor i8 %padded_buffer.1.1347.i, %870
  %872 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %872)
  store i8 %xor9.1.i1073.i, ptr %79, align 1
  %873 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %873)
  %874 = load i8, ptr %95, align 1
  %875 = ptrtoint ptr %padded_buffer.2..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %875)
  %padded_buffer.2.1350.i = load i8, ptr %padded_buffer.2..sroa_idx.i, align 2
  %xor9.2.i1077.i = xor i8 %padded_buffer.2.1350.i, %874
  %876 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %876)
  store i8 %xor9.2.i1077.i, ptr %80, align 2
  %877 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %877)
  %878 = load i8, ptr %96, align 1
  %879 = ptrtoint ptr %padded_buffer.3..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %879)
  %padded_buffer.3.1353.i = load i8, ptr %padded_buffer.3..sroa_idx.i, align 1
  %xor9.3.i1081.i = xor i8 %padded_buffer.3.1353.i, %878
  %880 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %880)
  store i8 %xor9.3.i1081.i, ptr %81, align 1
  %881 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %881)
  %882 = load i8, ptr %97, align 1
  %883 = ptrtoint ptr %padded_buffer.4..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %883)
  %padded_buffer.4.1356.i = load i8, ptr %padded_buffer.4..sroa_idx.i, align 4
  %xor9.4.i1085.i = xor i8 %padded_buffer.4.1356.i, %882
  %884 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %884)
  store i8 %xor9.4.i1085.i, ptr %82, align 4
  %885 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %885)
  %886 = load i8, ptr %98, align 1
  %887 = ptrtoint ptr %padded_buffer.5..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %887)
  %padded_buffer.5.1359.i = load i8, ptr %padded_buffer.5..sroa_idx.i, align 1
  %xor9.5.i1089.i = xor i8 %padded_buffer.5.1359.i, %886
  %888 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %888)
  store i8 %xor9.5.i1089.i, ptr %83, align 1
  %889 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %889)
  %890 = load i8, ptr %99, align 1
  %891 = ptrtoint ptr %padded_buffer.6..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %891)
  %padded_buffer.6.1362.i = load i8, ptr %padded_buffer.6..sroa_idx.i, align 2
  %xor9.6.i1093.i = xor i8 %padded_buffer.6.1362.i, %890
  %892 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %892)
  store i8 %xor9.6.i1093.i, ptr %84, align 2
  %893 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %893)
  %894 = load i8, ptr %100, align 1
  %895 = ptrtoint ptr %padded_buffer.7..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %895)
  %padded_buffer.7.1365.i = load i8, ptr %padded_buffer.7..sroa_idx.i, align 1
  %xor9.7.i1097.i = xor i8 %padded_buffer.7.1365.i, %894
  %896 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %896)
  store i8 %xor9.7.i1097.i, ptr %85, align 1
  %897 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %897)
  %898 = load i8, ptr %101, align 1
  %899 = ptrtoint ptr %padded_buffer.8..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %899)
  %padded_buffer.8.1368.i = load i8, ptr %padded_buffer.8..sroa_idx.i, align 8
  %xor9.8.i1101.i = xor i8 %padded_buffer.8.1368.i, %898
  %900 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %900)
  store i8 %xor9.8.i1101.i, ptr %86, align 8
  %901 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %901)
  %902 = load i8, ptr %102, align 1
  %903 = ptrtoint ptr %padded_buffer.9..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %903)
  %padded_buffer.9.1371.i = load i8, ptr %padded_buffer.9..sroa_idx.i, align 1
  %xor9.9.i1105.i = xor i8 %padded_buffer.9.1371.i, %902
  %904 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %904)
  store i8 %xor9.9.i1105.i, ptr %87, align 1
  %905 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %905)
  %906 = load i8, ptr %103, align 1
  %907 = ptrtoint ptr %padded_buffer.10..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %907)
  %padded_buffer.10.1374.i = load i8, ptr %padded_buffer.10..sroa_idx.i, align 2
  %xor9.10.i1109.i = xor i8 %padded_buffer.10.1374.i, %906
  %908 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %908)
  store i8 %xor9.10.i1109.i, ptr %88, align 2
  %909 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %909)
  %910 = load i8, ptr %104, align 1
  %911 = ptrtoint ptr %padded_buffer.11..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %911)
  %padded_buffer.11.1377.i = load i8, ptr %padded_buffer.11..sroa_idx.i, align 1
  %xor9.11.i1113.i = xor i8 %padded_buffer.11.1377.i, %910
  %912 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %912)
  store i8 %xor9.11.i1113.i, ptr %89, align 1
  %913 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %913)
  %914 = load i8, ptr %105, align 1
  %915 = ptrtoint ptr %padded_buffer.12..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %915)
  %padded_buffer.12.1380.i = load i8, ptr %padded_buffer.12..sroa_idx.i, align 4
  %xor9.12.i1117.i = xor i8 %padded_buffer.12.1380.i, %914
  %916 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %916)
  store i8 %xor9.12.i1117.i, ptr %90, align 4
  %917 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %917)
  %918 = load i8, ptr %106, align 1
  %919 = ptrtoint ptr %padded_buffer.13..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %919)
  %padded_buffer.13.1383.i = load i8, ptr %padded_buffer.13..sroa_idx.i, align 1
  %xor9.13.i1121.i = xor i8 %padded_buffer.13.1383.i, %918
  %920 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %920)
  store i8 %xor9.13.i1121.i, ptr %91, align 1
  %921 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %921)
  %922 = load i8, ptr %107, align 1
  %923 = ptrtoint ptr %padded_buffer.14..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %923)
  %padded_buffer.14.1386.i = load i8, ptr %padded_buffer.14..sroa_idx.i, align 2
  %xor9.14.i1125.i = xor i8 %padded_buffer.14.1386.i, %922
  %924 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %924)
  store i8 %xor9.14.i1125.i, ptr %92, align 2
  %925 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %925)
  %926 = load i8, ptr %108, align 1
  %927 = ptrtoint ptr %padded_buffer.15..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %927)
  %padded_buffer.15.1389.i = load i8, ptr %padded_buffer.15..sroa_idx.i, align 1
  %xor9.15.i1129.i = xor i8 %padded_buffer.15.1389.i, %926
  %928 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %928)
  store i8 %xor9.15.i1129.i, ptr %93, align 1
  %929 = call ptr @memcpy(ptr %uglygep1327.i, ptr %chain_buffer.i, i32 %rem.i)
  %930 = add i32 %payload_index.6.lcssa.i, %rem.i
  br label %if.end299.i

if.end299.i:                                      ; preds = %for.body292.preheader.i, %for.end259.i.if.end299.i_crit_edge
  %payload_index.9.i = phi i32 [ %payload_index.6.lcssa.i, %for.end259.i.if.end299.i_crit_edge ], [ %930, %for.body292.preheader.i ]
  %931 = call ptr @memset(ptr %64, i32 0, i32 15)
  %932 = ptrtoint ptr %ctr_preload.i to i32
  call void @__asan_store1_noabort(i32 %932)
  store i8 1, ptr %ctr_preload.i, align 1
  br i1 %or.cond.i648.i, label %if.end299.i.if.end.i1137.i_crit_edge, label %if.then.i1134.i

if.end299.i.if.end.i1137.i_crit_edge:             ; preds = %if.end299.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i1137.i

if.then.i1134.i:                                  ; preds = %if.end299.i
  call void @__sanitizer_cov_trace_pc() #14
  %933 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 30), align 1
  %934 = and i8 %933, 15
  %935 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %935)
  store i8 %934, ptr %64, align 1
  br label %if.end.i1137.i

if.end.i1137.i:                                   ; preds = %if.then.i1134.i, %if.end299.i.if.end.i1137.i_crit_edge
  br i1 %or.cond64.i.i, label %if.then9.i1139.i, label %if.end.i1137.i.if.end15.i1141.i_crit_edge

if.end.i1137.i.if.end15.i1141.i_crit_edge:        ; preds = %if.end.i1137.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i1141.i

if.then9.i1139.i:                                 ; preds = %if.end.i1137.i
  call void @__sanitizer_cov_trace_pc() #14
  %936 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %937 = and i8 %936, 15
  %938 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %938)
  store i8 %937, ptr %64, align 1
  br label %if.end15.i1141.i

if.end15.i1141.i:                                 ; preds = %if.then9.i1139.i, %if.end.i1137.i.if.end15.i1141.i_crit_edge
  br i1 %cmp.i.i, label %if.then18.i1143.i, label %if.end15.i1141.i.aes_decipher.exit_crit_edge

if.end15.i1141.i.aes_decipher.exit_crit_edge:     ; preds = %if.end15.i1141.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aes_decipher.exit

if.then18.i1143.i:                                ; preds = %if.end15.i1141.i
  call void @__sanitizer_cov_trace_pc() #14
  %939 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %939)
  %940 = load i8, ptr %64, align 1
  %941 = or i8 %940, 16
  store i8 %941, ptr %64, align 1
  br label %aes_decipher.exit

aes_decipher.exit:                                ; preds = %if.then18.i1143.i, %if.end15.i1141.i.aes_decipher.exit_crit_edge
  %942 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 10), align 1
  %943 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %943)
  store i8 %942, ptr %65, align 1
  %944 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 11), align 1
  %945 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %945)
  store i8 %944, ptr %66, align 1
  %946 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 12), align 1
  %947 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %947)
  store i8 %946, ptr %67, align 1
  %948 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 13), align 1
  %949 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %949)
  store i8 %948, ptr %68, align 1
  %950 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 14), align 1
  %951 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %951)
  store i8 %950, ptr %69, align 1
  %952 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 15), align 1
  %953 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %953)
  store i8 %952, ptr %70, align 1
  %954 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %954)
  store i8 %377, ptr %71, align 1
  %955 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %955)
  store i8 %375, ptr %72, align 1
  %956 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %956)
  store i8 %373, ptr %73, align 1
  %957 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %957)
  store i8 %371, ptr %74, align 1
  %958 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %958)
  store i8 %369, ptr %75, align 1
  %959 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %959)
  store i8 %367, ptr %76, align 1
  %960 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %960)
  store i8 0, ptr %77, align 1
  %961 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %961)
  store i8 0, ptr %78, align 1
  %962 = ptrtoint ptr %padded_buffer.8..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %962)
  store i64 0, ptr %padded_buffer.8..sroa_idx.i, align 8
  %uglygep1332.i = getelementptr i8, ptr @aes_decipher.message, i32 %add128.i
  %963 = ptrtoint ptr %uglygep1332.i to i32
  call void @__asan_loadN_noabort(i32 %963, i32 8)
  %964 = load i64, ptr %uglygep1332.i, align 1
  %965 = ptrtoint ptr %padded_buffer.i to i32
  call void @__asan_store8_noabort(i32 %965)
  store i64 %964, ptr %padded_buffer.i, align 8
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i1164.i) #12
  %966 = call ptr @memset(ptr %ctx.i1164.i, i32 255, i32 484)
  %call.i1165.i = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i1164.i, ptr noundef %prwskey.0, i32 noundef 16) #12
  call void @aes_encrypt(ptr noundef nonnull %ctx.i1164.i, ptr noundef nonnull %aes_out.i, ptr noundef nonnull %ctr_preload.i) #12
  %967 = call ptr @memset(ptr %ctx.i1164.i, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i1164.i) #12, !srcloc !68
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i1164.i) #12
  %968 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %968)
  %969 = load i8, ptr %aes_out.i, align 1
  %970 = ptrtoint ptr %padded_buffer.i to i32
  call void @__asan_load1_noabort(i32 %970)
  %padded_buffer.0.1345.i = load i8, ptr %padded_buffer.i, align 8
  %xor9.i1166.i = xor i8 %padded_buffer.0.1345.i, %969
  %971 = ptrtoint ptr %chain_buffer.i to i32
  call void @__asan_store1_noabort(i32 %971)
  store i8 %xor9.i1166.i, ptr %chain_buffer.i, align 8
  %972 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %972)
  %973 = load i8, ptr %94, align 1
  %974 = ptrtoint ptr %padded_buffer.1..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %974)
  %padded_buffer.1.1348.i = load i8, ptr %padded_buffer.1..sroa_idx.i, align 1
  %xor9.1.i1169.i = xor i8 %padded_buffer.1.1348.i, %973
  %975 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %975)
  store i8 %xor9.1.i1169.i, ptr %79, align 1
  %976 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %976)
  %977 = load i8, ptr %95, align 1
  %978 = ptrtoint ptr %padded_buffer.2..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %978)
  %padded_buffer.2.1351.i = load i8, ptr %padded_buffer.2..sroa_idx.i, align 2
  %xor9.2.i1173.i = xor i8 %padded_buffer.2.1351.i, %977
  %979 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %979)
  store i8 %xor9.2.i1173.i, ptr %80, align 2
  %980 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %980)
  %981 = load i8, ptr %96, align 1
  %982 = ptrtoint ptr %padded_buffer.3..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %982)
  %padded_buffer.3.1354.i = load i8, ptr %padded_buffer.3..sroa_idx.i, align 1
  %xor9.3.i1177.i = xor i8 %padded_buffer.3.1354.i, %981
  %983 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %983)
  store i8 %xor9.3.i1177.i, ptr %81, align 1
  %984 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %984)
  %985 = load i8, ptr %97, align 1
  %986 = ptrtoint ptr %padded_buffer.4..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %986)
  %padded_buffer.4.1357.i = load i8, ptr %padded_buffer.4..sroa_idx.i, align 4
  %xor9.4.i1181.i = xor i8 %padded_buffer.4.1357.i, %985
  %987 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %987)
  store i8 %xor9.4.i1181.i, ptr %82, align 4
  %988 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %988)
  %989 = load i8, ptr %98, align 1
  %990 = ptrtoint ptr %padded_buffer.5..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %990)
  %padded_buffer.5.1360.i = load i8, ptr %padded_buffer.5..sroa_idx.i, align 1
  %xor9.5.i1185.i = xor i8 %padded_buffer.5.1360.i, %989
  %991 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %991)
  store i8 %xor9.5.i1185.i, ptr %83, align 1
  %992 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %992)
  %993 = load i8, ptr %99, align 1
  %994 = ptrtoint ptr %padded_buffer.6..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %994)
  %padded_buffer.6.1363.i = load i8, ptr %padded_buffer.6..sroa_idx.i, align 2
  %xor9.6.i1189.i = xor i8 %padded_buffer.6.1363.i, %993
  %995 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %995)
  store i8 %xor9.6.i1189.i, ptr %84, align 2
  %996 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %996)
  %997 = load i8, ptr %100, align 1
  %998 = ptrtoint ptr %padded_buffer.7..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %998)
  %padded_buffer.7.1366.i = load i8, ptr %padded_buffer.7..sroa_idx.i, align 1
  %xor9.7.i1193.i = xor i8 %padded_buffer.7.1366.i, %997
  %999 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %999)
  store i8 %xor9.7.i1193.i, ptr %85, align 1
  %uglygep1333.i = getelementptr i8, ptr @aes_decipher.message, i32 %payload_index.9.i
  %1000 = load i64, ptr %chain_buffer.i, align 8
  %1001 = ptrtoint ptr %uglygep1333.i to i32
  call void @__asan_storeN_noabort(i32 %1001, i32 8)
  store i64 %1000, ptr %uglygep1333.i, align 1
  %arrayidx346.i = getelementptr i8, ptr %1, i32 %add128.i
  %1002 = ptrtoint ptr %arrayidx346.i to i32
  call void @__asan_load1_noabort(i32 %1002)
  %1003 = load i8, ptr %arrayidx346.i, align 1
  %1004 = ptrtoint ptr %uglygep1332.i to i32
  call void @__asan_load1_noabort(i32 %1004)
  %1005 = load i8, ptr %uglygep1332.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1003, i8 %1005)
  %cmp354.not.i = icmp eq i8 %1003, %1005
  %add345.1.i = add i32 %add128.i, 1
  %arrayidx346.1.i = getelementptr i8, ptr %1, i32 %add345.1.i
  %1006 = ptrtoint ptr %arrayidx346.1.i to i32
  call void @__asan_load1_noabort(i32 %1006)
  %1007 = load i8, ptr %arrayidx346.1.i, align 1
  %arrayidx352.1.i = getelementptr [2048 x i8], ptr @aes_decipher.message, i32 0, i32 %add345.1.i
  %1008 = ptrtoint ptr %arrayidx352.1.i to i32
  call void @__asan_load1_noabort(i32 %1008)
  %1009 = load i8, ptr %arrayidx352.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1007, i8 %1009)
  %cmp354.not.1.i = icmp eq i8 %1007, %1009
  %add345.2.i = add i32 %add128.i, 2
  %arrayidx346.2.i = getelementptr i8, ptr %1, i32 %add345.2.i
  %1010 = ptrtoint ptr %arrayidx346.2.i to i32
  call void @__asan_load1_noabort(i32 %1010)
  %1011 = load i8, ptr %arrayidx346.2.i, align 1
  %arrayidx352.2.i = getelementptr [2048 x i8], ptr @aes_decipher.message, i32 0, i32 %add345.2.i
  %1012 = ptrtoint ptr %arrayidx352.2.i to i32
  call void @__asan_load1_noabort(i32 %1012)
  %1013 = load i8, ptr %arrayidx352.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1011, i8 %1013)
  %cmp354.not.2.i = icmp eq i8 %1011, %1013
  %add345.3.i = add i32 %add128.i, 3
  %arrayidx346.3.i = getelementptr i8, ptr %1, i32 %add345.3.i
  %1014 = ptrtoint ptr %arrayidx346.3.i to i32
  call void @__asan_load1_noabort(i32 %1014)
  %1015 = load i8, ptr %arrayidx346.3.i, align 1
  %arrayidx352.3.i = getelementptr [2048 x i8], ptr @aes_decipher.message, i32 0, i32 %add345.3.i
  %1016 = ptrtoint ptr %arrayidx352.3.i to i32
  call void @__asan_load1_noabort(i32 %1016)
  %1017 = load i8, ptr %arrayidx352.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1015, i8 %1017)
  %cmp354.not.3.i = icmp eq i8 %1015, %1017
  %add345.4.i = add i32 %add128.i, 4
  %arrayidx346.4.i = getelementptr i8, ptr %1, i32 %add345.4.i
  %1018 = ptrtoint ptr %arrayidx346.4.i to i32
  call void @__asan_load1_noabort(i32 %1018)
  %1019 = load i8, ptr %arrayidx346.4.i, align 1
  %arrayidx352.4.i = getelementptr [2048 x i8], ptr @aes_decipher.message, i32 0, i32 %add345.4.i
  %1020 = ptrtoint ptr %arrayidx352.4.i to i32
  call void @__asan_load1_noabort(i32 %1020)
  %1021 = load i8, ptr %arrayidx352.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1019, i8 %1021)
  %cmp354.not.4.i = icmp eq i8 %1019, %1021
  %add345.5.i = add i32 %add128.i, 5
  %arrayidx346.5.i = getelementptr i8, ptr %1, i32 %add345.5.i
  %1022 = ptrtoint ptr %arrayidx346.5.i to i32
  call void @__asan_load1_noabort(i32 %1022)
  %1023 = load i8, ptr %arrayidx346.5.i, align 1
  %arrayidx352.5.i = getelementptr [2048 x i8], ptr @aes_decipher.message, i32 0, i32 %add345.5.i
  %1024 = ptrtoint ptr %arrayidx352.5.i to i32
  call void @__asan_load1_noabort(i32 %1024)
  %1025 = load i8, ptr %arrayidx352.5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1023, i8 %1025)
  %cmp354.not.5.i = icmp eq i8 %1023, %1025
  %add345.6.i = add i32 %add128.i, 6
  %arrayidx346.6.i = getelementptr i8, ptr %1, i32 %add345.6.i
  %1026 = ptrtoint ptr %arrayidx346.6.i to i32
  call void @__asan_load1_noabort(i32 %1026)
  %1027 = load i8, ptr %arrayidx346.6.i, align 1
  %arrayidx352.6.i = getelementptr [2048 x i8], ptr @aes_decipher.message, i32 0, i32 %add345.6.i
  %1028 = ptrtoint ptr %arrayidx352.6.i to i32
  call void @__asan_load1_noabort(i32 %1028)
  %1029 = load i8, ptr %arrayidx352.6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1027, i8 %1029)
  %cmp354.not.6.i = icmp eq i8 %1027, %1029
  %add345.7.i = add i32 %add128.i, 7
  %arrayidx346.7.i = getelementptr i8, ptr %1, i32 %add345.7.i
  %1030 = ptrtoint ptr %arrayidx346.7.i to i32
  call void @__asan_load1_noabort(i32 %1030)
  %1031 = load i8, ptr %arrayidx346.7.i, align 1
  %arrayidx352.7.i = getelementptr [2048 x i8], ptr @aes_decipher.message, i32 0, i32 %add345.7.i
  %1032 = ptrtoint ptr %arrayidx352.7.i to i32
  call void @__asan_load1_noabort(i32 %1032)
  %1033 = load i8, ptr %arrayidx352.7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1031, i8 %1033)
  %cmp354.not.7.i = icmp eq i8 %1031, %1033
  %1034 = select i1 %cmp354.not.7.i, i1 %cmp354.not.6.i, i1 false
  %1035 = select i1 %1034, i1 %cmp354.not.5.i, i1 false
  %1036 = select i1 %1035, i1 %cmp354.not.4.i, i1 false
  %1037 = select i1 %1036, i1 %cmp354.not.3.i, i1 false
  %1038 = select i1 %1037, i1 %cmp354.not.2.i, i1 false
  %1039 = select i1 %1038, i1 %cmp354.not.1.i, i1 false
  %narrow.i = select i1 %1039, i1 %cmp354.not.i, i1 false
  %spec.select539.7.i = zext i1 %narrow.i to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %padded_buffer.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %aes_out.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %chain_buffer.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctr_preload.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mic_iv.i) #12
  br label %exit

exit:                                             ; preds = %aes_decipher.exit, %if.end66.exit_crit_edge, %if.end36, %if.end17.exit_crit_edge, %if.then.exit_crit_edge, %entry.exit_crit_edge
  %res.0 = phi i32 [ %spec.select539.7.i, %aes_decipher.exit ], [ 0, %if.end36 ], [ 0, %if.end17.exit_crit_edge ], [ 1, %entry.exit_crit_edge ], [ 0, %if.end66.exit_crit_edge ], [ 0, %if.then.exit_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_BIP_verify(ptr noundef %padapter, ptr nocapture noundef readonly %precvframe) local_unnamed_addr #1 align 64 {
entry:
  %len = alloca i32, align 4
  %mic = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %attrib = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #12
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mic) #12
  %1 = call ptr @memset(ptr %mic, i32 255, i32 16)
  %2 = ptrtoint ptr %attrib to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %attrib, align 4
  %conv = zext i16 %3 to i32
  %add = add nsw i32 %conv, -4
  %call = tail call ptr @_rtw_zmalloc(i32 noundef %add) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup56_crit_edge, label %if.end

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup56

if.end:                                           ; preds = %entry
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 9
  %4 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_data, align 4
  %add.ptr = getelementptr i8, ptr %call, i32 20
  %add.ptr1 = getelementptr i8, ptr %5, i32 24
  %6 = ptrtoint ptr %attrib to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %attrib, align 4
  %conv3 = zext i16 %7 to i32
  %sub4 = add nsw i32 %conv3, -24
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr1, i32 %sub4)
  %9 = load i16, ptr %attrib, align 4
  %conv7 = zext i16 %9 to i32
  %sub8 = add nsw i32 %conv7, -24
  %call9 = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 76, ptr noundef nonnull %len, i32 noundef %sub8) #12
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end.BIP_exit_crit_edge, label %if.then11

if.end.BIP_exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %BIP_exit

if.then11:                                        ; preds = %if.end
  %add.ptr12 = getelementptr i8, ptr %call9, i32 4
  %10 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 6)
  %le_tmp64.0.copyload = load i48, ptr %add.ptr12, align 1
  %le_tmp64.0.insert.ext = zext i48 %le_tmp64.0.copyload to i64
  %le_tmp64.0.insert.shift = shl nuw i64 %le_tmp64.0.insert.ext, 16
  %le_tmp64.0.insert.insert = or i64 %le_tmp64.0.insert.shift, 65535
  %11 = call i64 @llvm.bswap.i64(i64 %le_tmp64.0.insert.insert)
  %mgnt_80211w_IPN_rx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 6
  %12 = ptrtoint ptr %mgnt_80211w_IPN_rx to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %mgnt_80211w_IPN_rx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp.not = icmp ugt i64 %11, %13
  br i1 %cmp.not, label %if.end15, label %if.then11.BIP_exit_crit_edge

if.then11.BIP_exit_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %BIP_exit

if.end15:                                         ; preds = %if.then11
  %add.ptr16 = getelementptr i8, ptr %call9, i32 2
  %14 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %le_tmp.0.copyload = load i16, ptr %add.ptr16, align 1
  %15 = call i16 @llvm.bswap.i16(i16 %le_tmp.0.copyload)
  %conv17 = zext i16 %15 to i32
  %dot11wBIPKeyid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 13
  %16 = ptrtoint ptr %dot11wBIPKeyid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dot11wBIPKeyid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv17)
  %cmp18.not = icmp eq i32 %17, %conv17
  br i1 %cmp18.not, label %if.end21, label %if.end15.BIP_exit_crit_edge

if.end15.BIP_exit_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %BIP_exit

if.end21:                                         ; preds = %if.end15
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %add.ptr23 = getelementptr i8, ptr %add.ptr16, i32 %19
  %add.ptr24 = getelementptr i8, ptr %add.ptr23, i32 -8
  %20 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 0, ptr %add.ptr24, align 1
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %5, align 2
  %23 = and i16 %22, -57
  %24 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %call, align 2
  %add.ptr33 = getelementptr i8, ptr %call, i32 2
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 2
  %25 = call ptr @memcpy(ptr %add.ptr33, ptr %addr1, i32 18)
  %26 = ptrtoint ptr %dot11wBIPKeyid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dot11wBIPKeyid, align 8
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 14, i32 %27
  %call39 = call i32 @omac1_aes_128(ptr noundef %arrayidx, ptr noundef nonnull %call, i32 noundef %add, ptr noundef nonnull %mic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end21.BIP_exit_crit_edge

if.end21.BIP_exit_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %BIP_exit

if.end42:                                         ; preds = %if.end21
  %28 = ptrtoint ptr %attrib to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %attrib, align 4
  %conv45 = zext i16 %29 to i32
  %add.ptr46 = getelementptr i8, ptr %5, i32 %conv45
  %add.ptr47 = getelementptr i8, ptr %add.ptr46, i32 -8
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %mic, ptr noundef dereferenceable(8) %add.ptr47, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool49.not = icmp eq i32 %bcmp, 0
  br i1 %tobool49.not, label %if.then50, label %if.end42.BIP_exit_crit_edge

if.end42.BIP_exit_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %BIP_exit

if.then50:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %mgnt_80211w_IPN_rx to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %11, ptr %mgnt_80211w_IPN_rx, align 8
  br label %BIP_exit

BIP_exit:                                         ; preds = %if.then50, %if.end42.BIP_exit_crit_edge, %if.end21.BIP_exit_crit_edge, %if.end15.BIP_exit_crit_edge, %if.then11.BIP_exit_crit_edge, %if.end.BIP_exit_crit_edge
  %res.2 = phi i32 [ 0, %if.then11.BIP_exit_crit_edge ], [ 0, %if.end15.BIP_exit_crit_edge ], [ 0, %if.end21.BIP_exit_crit_edge ], [ 0, %if.end42.BIP_exit_crit_edge ], [ 1, %if.then50 ], [ 2, %if.end.BIP_exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call) #12
  br label %cleanup56

cleanup56:                                        ; preds = %BIP_exit, %entry.cleanup56_crit_edge
  %retval.0 = phi i32 [ %res.2, %BIP_exit ], [ 0, %entry.cleanup56_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mic) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_zmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_ie(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omac1_aes_128(ptr noundef %key, ptr noundef %data, i32 noundef %data_len, ptr noundef %mac) local_unnamed_addr #1 align 64 {
entry:
  %ctx.i = alloca %struct.crypto_aes_ctx, align 4
  %cbc.i = alloca [16 x i8], align 1
  %pad.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %ctx.i) #12
  %0 = call ptr @memset(ptr %ctx.i, i32 255, i32 484)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cbc.i) #12
  %1 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 1
  %2 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 2
  %3 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 3
  %4 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 4
  %5 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 5
  %6 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 6
  %7 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 7
  %8 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 8
  %9 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 9
  %10 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 10
  %11 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 11
  %12 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 12
  %13 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 13
  %14 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 14
  %15 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 15
  %16 = call ptr @memset(ptr %cbc.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pad.i) #12
  %17 = getelementptr inbounds [16 x i8], ptr %pad.i, i32 0, i32 1
  %18 = getelementptr inbounds [16 x i8], ptr %pad.i, i32 0, i32 2
  %19 = getelementptr inbounds [16 x i8], ptr %pad.i, i32 0, i32 3
  %20 = getelementptr inbounds [16 x i8], ptr %pad.i, i32 0, i32 4
  %21 = getelementptr inbounds [16 x i8], ptr %pad.i, i32 0, i32 5
  %22 = getelementptr inbounds [16 x i8], ptr %pad.i, i32 0, i32 6
  %23 = getelementptr inbounds [16 x i8], ptr %pad.i, i32 0, i32 7
  %24 = getelementptr inbounds [16 x i8], ptr %pad.i, i32 0, i32 8
  %25 = getelementptr inbounds [16 x i8], ptr %pad.i, i32 0, i32 9
  %26 = getelementptr inbounds [16 x i8], ptr %pad.i, i32 0, i32 10
  %27 = getelementptr inbounds [16 x i8], ptr %pad.i, i32 0, i32 11
  %28 = getelementptr inbounds [16 x i8], ptr %pad.i, i32 0, i32 12
  %29 = getelementptr inbounds [16 x i8], ptr %pad.i, i32 0, i32 13
  %30 = getelementptr inbounds [16 x i8], ptr %pad.i, i32 0, i32 14
  %31 = getelementptr inbounds [16 x i8], ptr %pad.i, i32 0, i32 15
  %32 = call ptr @memset(ptr %pad.i, i32 255, i32 16)
  %call.i = call i32 @aes_expandkey(ptr noundef nonnull %ctx.i, ptr noundef %key, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.omac1_aes_128_vector.exit_crit_edge

entry.omac1_aes_128_vector.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %omac1_aes_128_vector.exit

if.end.i:                                         ; preds = %entry
  %33 = call ptr @memset(ptr %cbc.i, i32 0, i32 16)
  %add.ptr.i = getelementptr i8, ptr %data, i32 %data_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %data_len)
  %cmp321.i = icmp ugt i32 %data_len, 15
  br i1 %cmp321.i, label %for.cond4.preheader.i.preheader, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

for.cond4.preheader.i.preheader:                  ; preds = %if.end.i
  %arrayidx7.i.1 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 1
  %arrayidx7.i.2 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 2
  %arrayidx7.i.3 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 3
  %arrayidx7.i.4 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 4
  %arrayidx7.i.5 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 5
  %arrayidx7.i.6 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 6
  %arrayidx7.i.7 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 7
  %arrayidx7.i.8 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 8
  %arrayidx7.i.9 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 9
  %arrayidx7.i.10 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 10
  %arrayidx7.i.11 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 11
  %arrayidx7.i.12 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 12
  %arrayidx7.i.13 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 13
  %arrayidx7.i.14 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 14
  %arrayidx7.i.15 = getelementptr inbounds [16 x i8], ptr %cbc.i, i32 0, i32 15
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %if.end26.i.for.cond4.preheader.i_crit_edge, %for.cond4.preheader.i.preheader
  %left.025.i = phi i32 [ %sub.i, %if.end26.i.for.cond4.preheader.i_crit_edge ], [ %data_len, %for.cond4.preheader.i.preheader ]
  %pos.022.i = phi ptr [ %spec.select.15, %if.end26.i.for.cond4.preheader.i_crit_edge ], [ %data, %for.cond4.preheader.i.preheader ]
  %incdec.ptr.i = getelementptr i8, ptr %pos.022.i, i32 1
  %34 = ptrtoint ptr %pos.022.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pos.022.i, align 1
  %36 = ptrtoint ptr %cbc.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cbc.i, align 1
  %xor3.i = xor i8 %37, %35
  store i8 %xor3.i, ptr %cbc.i, align 1
  %cmp10.not.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  %spec.select = select i1 %cmp10.not.i, ptr %incdec.ptr.i, ptr %data
  %incdec.ptr.i.1 = getelementptr i8, ptr %spec.select, i32 1
  %38 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %spec.select, align 1
  %40 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx7.i.1, align 1
  %xor3.i.1 = xor i8 %41, %39
  store i8 %xor3.i.1, ptr %arrayidx7.i.1, align 1
  %cmp10.not.i.1 = icmp ult ptr %incdec.ptr.i.1, %add.ptr.i
  %spec.select.1 = select i1 %cmp10.not.i.1, ptr %incdec.ptr.i.1, ptr %data
  %incdec.ptr.i.2 = getelementptr i8, ptr %spec.select.1, i32 1
  %42 = ptrtoint ptr %spec.select.1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %spec.select.1, align 1
  %44 = ptrtoint ptr %arrayidx7.i.2 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx7.i.2, align 1
  %xor3.i.2 = xor i8 %45, %43
  store i8 %xor3.i.2, ptr %arrayidx7.i.2, align 1
  %cmp10.not.i.2 = icmp ult ptr %incdec.ptr.i.2, %add.ptr.i
  %spec.select.2 = select i1 %cmp10.not.i.2, ptr %incdec.ptr.i.2, ptr %data
  %incdec.ptr.i.3 = getelementptr i8, ptr %spec.select.2, i32 1
  %46 = ptrtoint ptr %spec.select.2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %spec.select.2, align 1
  %48 = ptrtoint ptr %arrayidx7.i.3 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx7.i.3, align 1
  %xor3.i.3 = xor i8 %49, %47
  store i8 %xor3.i.3, ptr %arrayidx7.i.3, align 1
  %cmp10.not.i.3 = icmp ult ptr %incdec.ptr.i.3, %add.ptr.i
  %spec.select.3 = select i1 %cmp10.not.i.3, ptr %incdec.ptr.i.3, ptr %data
  %incdec.ptr.i.4 = getelementptr i8, ptr %spec.select.3, i32 1
  %50 = ptrtoint ptr %spec.select.3 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %spec.select.3, align 1
  %52 = ptrtoint ptr %arrayidx7.i.4 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx7.i.4, align 1
  %xor3.i.4 = xor i8 %53, %51
  store i8 %xor3.i.4, ptr %arrayidx7.i.4, align 1
  %cmp10.not.i.4 = icmp ult ptr %incdec.ptr.i.4, %add.ptr.i
  %spec.select.4 = select i1 %cmp10.not.i.4, ptr %incdec.ptr.i.4, ptr %data
  %incdec.ptr.i.5 = getelementptr i8, ptr %spec.select.4, i32 1
  %54 = ptrtoint ptr %spec.select.4 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %spec.select.4, align 1
  %56 = ptrtoint ptr %arrayidx7.i.5 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx7.i.5, align 1
  %xor3.i.5 = xor i8 %57, %55
  store i8 %xor3.i.5, ptr %arrayidx7.i.5, align 1
  %cmp10.not.i.5 = icmp ult ptr %incdec.ptr.i.5, %add.ptr.i
  %spec.select.5 = select i1 %cmp10.not.i.5, ptr %incdec.ptr.i.5, ptr %data
  %incdec.ptr.i.6 = getelementptr i8, ptr %spec.select.5, i32 1
  %58 = ptrtoint ptr %spec.select.5 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %spec.select.5, align 1
  %60 = ptrtoint ptr %arrayidx7.i.6 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx7.i.6, align 1
  %xor3.i.6 = xor i8 %61, %59
  store i8 %xor3.i.6, ptr %arrayidx7.i.6, align 1
  %cmp10.not.i.6 = icmp ult ptr %incdec.ptr.i.6, %add.ptr.i
  %spec.select.6 = select i1 %cmp10.not.i.6, ptr %incdec.ptr.i.6, ptr %data
  %incdec.ptr.i.7 = getelementptr i8, ptr %spec.select.6, i32 1
  %62 = ptrtoint ptr %spec.select.6 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %spec.select.6, align 1
  %64 = ptrtoint ptr %arrayidx7.i.7 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx7.i.7, align 1
  %xor3.i.7 = xor i8 %65, %63
  store i8 %xor3.i.7, ptr %arrayidx7.i.7, align 1
  %cmp10.not.i.7 = icmp ult ptr %incdec.ptr.i.7, %add.ptr.i
  %spec.select.7 = select i1 %cmp10.not.i.7, ptr %incdec.ptr.i.7, ptr %data
  %incdec.ptr.i.8 = getelementptr i8, ptr %spec.select.7, i32 1
  %66 = ptrtoint ptr %spec.select.7 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %spec.select.7, align 1
  %68 = ptrtoint ptr %arrayidx7.i.8 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx7.i.8, align 1
  %xor3.i.8 = xor i8 %69, %67
  store i8 %xor3.i.8, ptr %arrayidx7.i.8, align 1
  %cmp10.not.i.8 = icmp ult ptr %incdec.ptr.i.8, %add.ptr.i
  %spec.select.8 = select i1 %cmp10.not.i.8, ptr %incdec.ptr.i.8, ptr %data
  %incdec.ptr.i.9 = getelementptr i8, ptr %spec.select.8, i32 1
  %70 = ptrtoint ptr %spec.select.8 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %spec.select.8, align 1
  %72 = ptrtoint ptr %arrayidx7.i.9 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx7.i.9, align 1
  %xor3.i.9 = xor i8 %73, %71
  store i8 %xor3.i.9, ptr %arrayidx7.i.9, align 1
  %cmp10.not.i.9 = icmp ult ptr %incdec.ptr.i.9, %add.ptr.i
  %spec.select.9 = select i1 %cmp10.not.i.9, ptr %incdec.ptr.i.9, ptr %data
  %incdec.ptr.i.10 = getelementptr i8, ptr %spec.select.9, i32 1
  %74 = ptrtoint ptr %spec.select.9 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %spec.select.9, align 1
  %76 = ptrtoint ptr %arrayidx7.i.10 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx7.i.10, align 1
  %xor3.i.10 = xor i8 %77, %75
  store i8 %xor3.i.10, ptr %arrayidx7.i.10, align 1
  %cmp10.not.i.10 = icmp ult ptr %incdec.ptr.i.10, %add.ptr.i
  %spec.select.10 = select i1 %cmp10.not.i.10, ptr %incdec.ptr.i.10, ptr %data
  %incdec.ptr.i.11 = getelementptr i8, ptr %spec.select.10, i32 1
  %78 = ptrtoint ptr %spec.select.10 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %spec.select.10, align 1
  %80 = ptrtoint ptr %arrayidx7.i.11 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx7.i.11, align 1
  %xor3.i.11 = xor i8 %81, %79
  store i8 %xor3.i.11, ptr %arrayidx7.i.11, align 1
  %cmp10.not.i.11 = icmp ult ptr %incdec.ptr.i.11, %add.ptr.i
  %spec.select.11 = select i1 %cmp10.not.i.11, ptr %incdec.ptr.i.11, ptr %data
  %incdec.ptr.i.12 = getelementptr i8, ptr %spec.select.11, i32 1
  %82 = ptrtoint ptr %spec.select.11 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %spec.select.11, align 1
  %84 = ptrtoint ptr %arrayidx7.i.12 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx7.i.12, align 1
  %xor3.i.12 = xor i8 %85, %83
  store i8 %xor3.i.12, ptr %arrayidx7.i.12, align 1
  %cmp10.not.i.12 = icmp ult ptr %incdec.ptr.i.12, %add.ptr.i
  %spec.select.12 = select i1 %cmp10.not.i.12, ptr %incdec.ptr.i.12, ptr %data
  %incdec.ptr.i.13 = getelementptr i8, ptr %spec.select.12, i32 1
  %86 = ptrtoint ptr %spec.select.12 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %spec.select.12, align 1
  %88 = ptrtoint ptr %arrayidx7.i.13 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx7.i.13, align 1
  %xor3.i.13 = xor i8 %89, %87
  store i8 %xor3.i.13, ptr %arrayidx7.i.13, align 1
  %cmp10.not.i.13 = icmp ult ptr %incdec.ptr.i.13, %add.ptr.i
  %spec.select.13 = select i1 %cmp10.not.i.13, ptr %incdec.ptr.i.13, ptr %data
  %incdec.ptr.i.14 = getelementptr i8, ptr %spec.select.13, i32 1
  %90 = ptrtoint ptr %spec.select.13 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %spec.select.13, align 1
  %92 = ptrtoint ptr %arrayidx7.i.14 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx7.i.14, align 1
  %xor3.i.14 = xor i8 %93, %91
  store i8 %xor3.i.14, ptr %arrayidx7.i.14, align 1
  %cmp10.not.i.14 = icmp ult ptr %incdec.ptr.i.14, %add.ptr.i
  %spec.select.14 = select i1 %cmp10.not.i.14, ptr %incdec.ptr.i.14, ptr %data
  %incdec.ptr.i.15 = getelementptr i8, ptr %spec.select.14, i32 1
  %94 = ptrtoint ptr %spec.select.14 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %spec.select.14, align 1
  %96 = ptrtoint ptr %arrayidx7.i.15 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx7.i.15, align 1
  %xor3.i.15 = xor i8 %97, %95
  store i8 %xor3.i.15, ptr %arrayidx7.i.15, align 1
  %cmp10.not.i.15 = icmp ult ptr %incdec.ptr.i.15, %add.ptr.i
  %spec.select.15 = select i1 %cmp10.not.i.15, ptr %incdec.ptr.i.15, ptr %data
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %left.025.i)
  %cmp21.i = icmp ugt i32 %left.025.i, 16
  br i1 %cmp21.i, label %if.then23.i, label %for.cond4.preheader.i.if.end26.i_crit_edge

for.cond4.preheader.i.if.end26.i_crit_edge:       ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then23.i:                                      ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @aes_encrypt(ptr noundef nonnull %ctx.i, ptr noundef nonnull %cbc.i, ptr noundef nonnull %cbc.i) #12
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %for.cond4.preheader.i.if.end26.i_crit_edge
  %sub.i = add i32 %left.025.i, -16
  %cmp3.i = icmp ugt i32 %sub.i, 15
  br i1 %cmp3.i, label %if.end26.i.for.cond4.preheader.i_crit_edge, label %if.end26.i.while.end.i_crit_edge

if.end26.i.while.end.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end26.i.for.cond4.preheader.i_crit_edge:       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond4.preheader.i

while.end.i:                                      ; preds = %if.end26.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %pos.0.lcssa.i = phi ptr [ %data, %if.end.i.while.end.i_crit_edge ], [ %spec.select.15, %if.end26.i.while.end.i_crit_edge ]
  %left.0.lcssa.i = phi i32 [ %data_len, %if.end.i.while.end.i_crit_edge ], [ %sub.i, %if.end26.i.while.end.i_crit_edge ]
  %98 = call ptr @memset(ptr %pad.i, i32 0, i32 16)
  call void @aes_encrypt(ptr noundef nonnull %ctx.i, ptr noundef nonnull %pad.i, ptr noundef nonnull %pad.i) #12
  %99 = ptrtoint ptr %pad.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %pad.i, align 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %while.end.i
  %i.025.i.i = phi i32 [ 0, %while.end.i ], [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx2.i.i = getelementptr i8, ptr %pad.i, i32 %i.025.i.i
  %101 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx2.i.i, align 1
  %add.i.i = add nuw nsw i32 %i.025.i.i, 1
  %arrayidx4.i.i = getelementptr i8, ptr %pad.i, i32 %add.i.i
  %103 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx4.i.i, align 1
  %or.i.i = call i8 @llvm.fshl.i8(i8 %102, i8 %104, i8 1) #12
  %105 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %or.i.i, ptr %arrayidx2.i.i, align 1
  %exitcond.not.i.i = icmp eq i32 %add.i.i, 15
  br i1 %exitcond.not.i.i, label %gf_mulx.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

gf_mulx.exit.i:                                   ; preds = %for.body.i.i
  %106 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %31, align 1
  %shl10.i.i = shl i8 %107, 1
  %108 = xor i8 %shl10.i.i, -121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not24.i.i = icmp slt i8 %100, 0
  %spec.select.i.i = select i1 %tobool.not24.i.i, i8 %108, i8 %shl10.i.i
  %109 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %spec.select.i.i, ptr %31, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left.0.lcssa.i)
  %tobool31.not.i = icmp ne i32 %left.0.lcssa.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len)
  %cmp32.i = icmp eq i32 %data_len, 0
  %or.cond.i = or i1 %cmp32.i, %tobool31.not.i
  br i1 %or.cond.i, label %for.cond35.preheader.i, label %gf_mulx.exit.i.if.end61.i_crit_edge

gf_mulx.exit.i.if.end61.i_crit_edge:              ; preds = %gf_mulx.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61.i

for.cond35.preheader.i:                           ; preds = %gf_mulx.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left.0.lcssa.i)
  %cmp3629.not.i = icmp eq i32 %left.0.lcssa.i, 0
  br i1 %cmp3629.not.i, label %for.cond35.preheader.i.for.end55.i_crit_edge, label %for.cond35.preheader.i.for.body38.i_crit_edge

for.cond35.preheader.i.for.body38.i_crit_edge:    ; preds = %for.cond35.preheader.i
  br label %for.body38.i

for.cond35.preheader.i.for.end55.i_crit_edge:     ; preds = %for.cond35.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end55.i

for.body38.i:                                     ; preds = %for.body38.i.for.body38.i_crit_edge, %for.cond35.preheader.i.for.body38.i_crit_edge
  %i.132.i = phi i32 [ %inc54.i, %for.body38.i.for.body38.i_crit_edge ], [ 0, %for.cond35.preheader.i.for.body38.i_crit_edge ]
  %pos.330.i = phi ptr [ %spec.select3, %for.body38.i.for.body38.i_crit_edge ], [ %pos.0.lcssa.i, %for.cond35.preheader.i.for.body38.i_crit_edge ]
  %incdec.ptr39.i = getelementptr i8, ptr %pos.330.i, i32 1
  %110 = ptrtoint ptr %pos.330.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %pos.330.i, align 1
  %arrayidx41.i = getelementptr [16 x i8], ptr %cbc.i, i32 0, i32 %i.132.i
  %112 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx41.i, align 1
  %xor432.i = xor i8 %113, %111
  store i8 %xor432.i, ptr %arrayidx41.i, align 1
  %cmp45.not.i = icmp ult ptr %incdec.ptr39.i, %add.ptr.i
  %spec.select3 = select i1 %cmp45.not.i, ptr %incdec.ptr39.i, ptr %data
  %inc54.i = add nuw i32 %i.132.i, 1
  %exitcond35.not.i = icmp eq i32 %inc54.i, %left.0.lcssa.i
  br i1 %exitcond35.not.i, label %for.body38.i.for.end55.i_crit_edge, label %for.body38.i.for.body38.i_crit_edge

for.body38.i.for.body38.i_crit_edge:              ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body38.i

for.body38.i.for.end55.i_crit_edge:               ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end55.i

for.end55.i:                                      ; preds = %for.body38.i.for.end55.i_crit_edge, %for.cond35.preheader.i.for.end55.i_crit_edge
  %arrayidx56.i = getelementptr [16 x i8], ptr %cbc.i, i32 0, i32 %left.0.lcssa.i
  %114 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx56.i, align 1
  %116 = xor i8 %115, -128
  store i8 %116, ptr %arrayidx56.i, align 1
  %117 = ptrtoint ptr %pad.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %pad.i, align 1
  br label %for.body.i10.i

for.body.i10.i:                                   ; preds = %for.body.i10.i.for.body.i10.i_crit_edge, %for.end55.i
  %i.025.i4.i = phi i32 [ 0, %for.end55.i ], [ %add.i6.i, %for.body.i10.i.for.body.i10.i_crit_edge ]
  %arrayidx2.i5.i = getelementptr i8, ptr %pad.i, i32 %i.025.i4.i
  %119 = ptrtoint ptr %arrayidx2.i5.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx2.i5.i, align 1
  %add.i6.i = add nuw nsw i32 %i.025.i4.i, 1
  %arrayidx4.i7.i = getelementptr i8, ptr %pad.i, i32 %add.i6.i
  %121 = ptrtoint ptr %arrayidx4.i7.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx4.i7.i, align 1
  %or.i8.i = call i8 @llvm.fshl.i8(i8 %120, i8 %122, i8 1) #12
  %123 = ptrtoint ptr %arrayidx2.i5.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %or.i8.i, ptr %arrayidx2.i5.i, align 1
  %exitcond.not.i9.i = icmp eq i32 %add.i6.i, 15
  br i1 %exitcond.not.i9.i, label %gf_mulx.exit15.i, label %for.body.i10.i.for.body.i10.i_crit_edge

for.body.i10.i.for.body.i10.i_crit_edge:          ; preds = %for.body.i10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i10.i

gf_mulx.exit15.i:                                 ; preds = %for.body.i10.i
  call void @__sanitizer_cov_trace_pc() #14
  %124 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %31, align 1
  %shl10.i12.i = shl i8 %125, 1
  %126 = xor i8 %shl10.i12.i, -121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not24.i13.i = icmp slt i8 %118, 0
  %spec.select.i14.i = select i1 %tobool.not24.i13.i, i8 %126, i8 %shl10.i12.i
  %127 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %spec.select.i14.i, ptr %31, align 1
  br label %if.end61.i

if.end61.i:                                       ; preds = %gf_mulx.exit15.i, %gf_mulx.exit.i.if.end61.i_crit_edge
  %128 = ptrtoint ptr %cbc.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %cbc.i, align 1
  %130 = ptrtoint ptr %pad.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %pad.i, align 1
  %xor701.i = xor i8 %131, %129
  store i8 %xor701.i, ptr %pad.i, align 1
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %1, align 1
  %134 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %17, align 1
  %xor701.1.i = xor i8 %135, %133
  store i8 %xor701.1.i, ptr %17, align 1
  %136 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %2, align 1
  %138 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %18, align 1
  %xor701.2.i = xor i8 %139, %137
  store i8 %xor701.2.i, ptr %18, align 1
  %140 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %3, align 1
  %142 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %19, align 1
  %xor701.3.i = xor i8 %143, %141
  store i8 %xor701.3.i, ptr %19, align 1
  %144 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %4, align 1
  %146 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %20, align 1
  %xor701.4.i = xor i8 %147, %145
  store i8 %xor701.4.i, ptr %20, align 1
  %148 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %5, align 1
  %150 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %21, align 1
  %xor701.5.i = xor i8 %151, %149
  store i8 %xor701.5.i, ptr %21, align 1
  %152 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %6, align 1
  %154 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %22, align 1
  %xor701.6.i = xor i8 %155, %153
  store i8 %xor701.6.i, ptr %22, align 1
  %156 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %7, align 1
  %158 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %23, align 1
  %xor701.7.i = xor i8 %159, %157
  store i8 %xor701.7.i, ptr %23, align 1
  %160 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %8, align 1
  %162 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %24, align 1
  %xor701.8.i = xor i8 %163, %161
  store i8 %xor701.8.i, ptr %24, align 1
  %164 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %9, align 1
  %166 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %25, align 1
  %xor701.9.i = xor i8 %167, %165
  store i8 %xor701.9.i, ptr %25, align 1
  %168 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %10, align 1
  %170 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %26, align 1
  %xor701.10.i = xor i8 %171, %169
  store i8 %xor701.10.i, ptr %26, align 1
  %172 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %11, align 1
  %174 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %27, align 1
  %xor701.11.i = xor i8 %175, %173
  store i8 %xor701.11.i, ptr %27, align 1
  %176 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %12, align 1
  %178 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %28, align 1
  %xor701.12.i = xor i8 %179, %177
  store i8 %xor701.12.i, ptr %28, align 1
  %180 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %13, align 1
  %182 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %29, align 1
  %xor701.13.i = xor i8 %183, %181
  store i8 %xor701.13.i, ptr %29, align 1
  %184 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %14, align 1
  %186 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %30, align 1
  %xor701.14.i = xor i8 %187, %185
  store i8 %xor701.14.i, ptr %30, align 1
  %188 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %15, align 1
  %190 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %31, align 1
  %xor701.15.i = xor i8 %191, %189
  store i8 %xor701.15.i, ptr %31, align 1
  call void @aes_encrypt(ptr noundef nonnull %ctx.i, ptr noundef nonnull %pad.i, ptr noundef %mac) #12
  %192 = call ptr @memset(ptr %ctx.i, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ctx.i) #12, !srcloc !68
  br label %omac1_aes_128_vector.exit

omac1_aes_128_vector.exit:                        ; preds = %if.end61.i, %entry.omac1_aes_128_vector.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end61.i ], [ -1, %entry.omac1_aes_128_vector.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pad.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cbc.i) #12
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %ctx.i) #12
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_sec_restore_wep_key(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %securitypriv1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %1, label %entry.if.end11_crit_edge [
    i32 1, label %entry.if.then_crit_edge
    i32 5, label %entry.if.then_crit_edge32
  ]

entry.if.then_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge32
  %key_mask = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 5
  %dot11PrivacyKeyIndex = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 2
  %3 = ptrtoint ptr %key_mask to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %key_mask, align 4
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then.for.inc_crit_edge, label %if.then5

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %dot11PrivacyKeyIndex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dot11PrivacyKeyIndex, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6 = icmp eq i32 %7, 0
  %. = zext i1 %cmp6 to i8
  %call9 = tail call i32 @rtw_set_key(ptr noundef %adapter, ptr noundef %securitypriv1, i32 noundef 0, i8 noundef zeroext %., i1 noundef zeroext false) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.then.for.inc_crit_edge
  %8 = ptrtoint ptr %key_mask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %key_mask, align 4
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.1 = icmp eq i8 %10, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then5.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then5.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %dot11PrivacyKeyIndex to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dot11PrivacyKeyIndex, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp6.1 = icmp eq i32 %12, 1
  %.29 = zext i1 %cmp6.1 to i8
  %call.1 = tail call i32 @rtw_set_key(ptr noundef %adapter, ptr noundef %securitypriv1, i32 noundef 1, i8 noundef zeroext %.29, i1 noundef zeroext false) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then5.1, %for.inc.for.inc.1_crit_edge
  %13 = ptrtoint ptr %key_mask to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %key_mask, align 4
  %15 = and i8 %14, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.2 = icmp eq i8 %15, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then5.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then5.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %dot11PrivacyKeyIndex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dot11PrivacyKeyIndex, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp6.2 = icmp eq i32 %17, 2
  %.30 = zext i1 %cmp6.2 to i8
  %call.2 = tail call i32 @rtw_set_key(ptr noundef %adapter, ptr noundef %securitypriv1, i32 noundef 2, i8 noundef zeroext %.30, i1 noundef zeroext false) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then5.2, %for.inc.1.for.inc.2_crit_edge
  %18 = ptrtoint ptr %key_mask to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %key_mask, align 4
  %20 = and i8 %19, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.3 = icmp eq i8 %20, 0
  br i1 %tobool.not.3, label %for.inc.2.if.end11_crit_edge, label %if.then5.3

for.inc.2.if.end11_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then5.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %dot11PrivacyKeyIndex to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dot11PrivacyKeyIndex, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp6.3 = icmp eq i32 %22, 3
  %.31 = zext i1 %cmp6.3 to i8
  %call9.3 = tail call i32 @rtw_set_key(ptr noundef %adapter, ptr noundef %securitypriv1, i32 noundef 3, i8 noundef zeroext %.31, i1 noundef zeroext false) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then5.3, %for.inc.2.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_set_key(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_handle_tkip_countermeasure(ptr nocapture noundef %adapter, ptr noundef %caller) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %btkip_countermeasure = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 45
  %0 = ptrtoint ptr %btkip_countermeasure to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btkip_countermeasure, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end39_crit_edge, label %if.then

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %btkip_countermeasure_time = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12, i32 47
  %3 = ptrtoint ptr %btkip_countermeasure_time to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %btkip_countermeasure_time, align 4
  %sub = sub i32 %2, %4
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000, i32 %call)
  %cmp = icmp ugt i32 %call, 60000
  br i1 %cmp, label %do.body3, label %do.body15

do.body3:                                         ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_handle_tkip_countermeasure.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_handle_tkip_countermeasure, %if.then8)) #12
          to label %do.end11 [label %if.then8], !srcloc !67

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %5 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pnetdev, align 8
  %div = udiv i32 %call, 1000
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_handle_tkip_countermeasure.__UNIQUE_ID_ddebug349, ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef %caller, ptr noundef %6, i32 noundef %div) #12
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body3
  %7 = ptrtoint ptr %btkip_countermeasure to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %btkip_countermeasure, align 8
  %8 = ptrtoint ptr %btkip_countermeasure_time to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %btkip_countermeasure_time, align 4
  br label %if.end39

do.body15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_handle_tkip_countermeasure.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_handle_tkip_countermeasure, %if.then27)) #12
          to label %if.end39 [label %if.then27], !srcloc !67

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  %pnetdev28 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %9 = ptrtoint ptr %pnetdev28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pnetdev28, align 8
  %div32.lhs.trunc = trunc i32 %call to i16
  %div3255 = udiv i16 %div32.lhs.trunc, 1000
  %div32.zext = zext i16 %div3255 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_handle_tkip_countermeasure.__UNIQUE_ID_ddebug350, ptr noundef %10, ptr noundef nonnull @.str.8, ptr noundef %caller, ptr noundef %10, i32 noundef %div32.zext) #12
  br label %if.end39

if.end39:                                         ; preds = %if.then27, %do.body15, %do.end11, %entry.if.end39_crit_edge
  %status.1 = phi i8 [ 1, %entry.if.end39_crit_edge ], [ 1, %do.end11 ], [ 0, %if.then27 ], [ 0, %do.body15 ]
  ret i8 %status.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aes_expandkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @aes_encrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !17, !19, !21, !23, !24, !26, !28, !29, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @rtw_tkip_decrypt.start, !1, !"start", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 558, i32 26}
!2 = !{ptr @rtw_tkip_decrypt.no_gkey_bc_cnt, !3, !"no_gkey_bc_cnt", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 559, i32 16}
!4 = !{ptr @rtw_tkip_decrypt.no_gkey_mc_cnt, !5, !"no_gkey_mc_cnt", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 560, i32 16}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 575, i32 8}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rtw_tkip_decrypt.__UNIQUE_ID_ddebug345, !7, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 589, i32 6}
!14 = !{ptr @rtw_tkip_decrypt.__UNIQUE_ID_ddebug346, !13, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!15 = !{ptr @rtw_aes_decrypt.start, !16, !"start", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 1309, i32 26}
!17 = !{ptr @rtw_aes_decrypt.no_gkey_bc_cnt, !18, !"no_gkey_bc_cnt", i1 false, i1 false}
!18 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 1310, i32 16}
!19 = !{ptr @rtw_aes_decrypt.no_gkey_mc_cnt, !20, !"no_gkey_mc_cnt", i1 false, i1 false}
!20 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 1311, i32 16}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 1326, i32 8}
!23 = !{ptr @rtw_aes_decrypt.__UNIQUE_ID_ddebug347, !22, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!24 = !{ptr @rtw_aes_decrypt.__UNIQUE_ID_ddebug348, !25, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 1341, i32 6}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 1578, i32 4}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rtw_handle_tkip_countermeasure.__UNIQUE_ID_ddebug349, !27, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 1585, i32 4}
!32 = !{ptr @rtw_handle_tkip_countermeasure.__UNIQUE_ID_ddebug350, !31, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 13, i32 2}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 14, i32 2}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 15, i32 2}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 16, i32 2}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 17, i32 2}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 18, i32 2}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 19, i32 2}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 20, i32 2}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 21, i32 2}
!51 = !{ptr @_security_type_str, !52, !"_security_type_str", i1 false, i1 false}
!52 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 12, i32 27}
!53 = !{ptr @Sbox1, !54, !"Sbox1", i1 false, i1 false}
!54 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 273, i32 29}
!55 = !{ptr @aes_decipher.message, !56, !"message", i1 false, i1 false}
!56 = !{!"../drivers/staging/rtl8723bs/core/rtw_security.c", i32 1079, i32 12}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
!67 = !{i64 2148848731, i64 2148848736, i64 2148848749, i64 2148848793, i64 2148848827, i64 2148848848}
!68 = !{i64 2149198352}
