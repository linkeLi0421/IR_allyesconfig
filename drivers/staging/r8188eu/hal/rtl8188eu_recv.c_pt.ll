; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/rtl8188eu_recv.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/rtl8188eu_recv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.recv_buf = type { %struct.list_head, %struct.spinlock, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i32, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.led_priv, ptr, %struct.wifidirect_info, %struct.hal_data_8188e, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, i32, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, %struct.spinlock, [16 x ptr], i32, [6 x i8], [6 x i8], [4 x i8], ptr, [6 x i8], [4 x i8], %struct.br_ext_info, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i8, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect, %struct.timer_list, i8, i8, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
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
%struct.br_ext_info = type { i32, i32, i32, i32, [6 x i8], i32 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }

@rtl8188eu_init_recv_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"&((&precvpriv->free_recv_buf_queue)->lock)\00", [53 x i8] zeroinitializer }, align 32
@rtl8188eu_init_recv_priv.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&precvbuf->recvbuf_lock\00", [40 x i8] zeroinitializer }, align 32
@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@rtl8188eu_free_recv_priv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016R8188EU: \014rx_skb_queue not empty\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtl8188eu_free_recv_priv\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/staging/r8188eu/hal/rtl8188eu_recv.c\00", [51 x i8] zeroinitializer }, align 32
@rtl8188eu_free_recv_priv._entry_ptr = internal global ptr @rtl8188eu_free_recv_priv._entry, section ".printk_index", align 4
@rtl8188eu_free_recv_priv._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016R8188EU: \014free_recv_skb_queue not empty, %d\0A\00", [48 x i8] zeroinitializer }, align 32
@rtl8188eu_free_recv_priv._entry_ptr.8 = internal global ptr @rtl8188eu_free_recv_priv._entry.6, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 42, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 58, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 110, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private constant [48 x i8] c"../drivers/staging/r8188eu/hal/rtl8188eu_recv.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 114, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 1984, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @rtl8188eu_free_recv_priv._entry, ptr @rtl8188eu_free_recv_priv._entry.6, ptr @rtl8188eu_free_recv_priv._entry_ptr, ptr @rtl8188eu_free_recv_priv._entry_ptr.8, ptr @rtl8188eu_init_recv_priv.__key, ptr @.str, ptr @rtl8188eu_init_recv_priv.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @skb_queue_head_init.__key, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188eu_init_recv_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188eu_init_recv_priv.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188eu_free_recv_priv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188eu_free_recv_priv._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8188eu_init_recvbuf(ptr nocapture noundef %precvbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_len = getelementptr inbounds %struct.recv_buf, ptr %precvbuf, i32 0, i32 15
  %0 = ptrtoint ptr %transfer_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %transfer_len, align 4
  %len = getelementptr inbounds %struct.recv_buf, ptr %precvbuf, i32 0, i32 6
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %len, align 4
  %ref_cnt = getelementptr inbounds %struct.recv_buf, ptr %precvbuf, i32 0, i32 2
  %2 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ref_cnt, align 4
  %pbuf = getelementptr inbounds %struct.recv_buf, ptr %precvbuf, i32 0, i32 4
  %3 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pbuf, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pdata = getelementptr inbounds %struct.recv_buf, ptr %precvbuf, i32 0, i32 8
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %pdata, align 4
  %phead = getelementptr inbounds %struct.recv_buf, ptr %precvbuf, i32 0, i32 7
  %6 = ptrtoint ptr %phead to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %phead, align 4
  %ptail = getelementptr inbounds %struct.recv_buf, ptr %precvbuf, i32 0, i32 9
  %7 = ptrtoint ptr %ptail to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %ptail, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 15360
  %pend = getelementptr inbounds %struct.recv_buf, ptr %precvbuf, i32 0, i32 10
  %8 = ptrtoint ptr %pend to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %pend, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8188eu_init_recv_priv(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_tasklet = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 20
  %0 = ptrtoint ptr %padapter to i32
  tail call void @tasklet_init(ptr noundef %recv_tasklet, ptr noundef nonnull @rtl8188eu_recv_tasklet, i32 noundef %0) #5
  %free_recv_buf_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 25
  %1 = ptrtoint ptr %free_recv_buf_queue to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %free_recv_buf_queue, ptr %free_recv_buf_queue, align 4
  %prev.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 25, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %free_recv_buf_queue, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 25, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @rtl8188eu_init_recv_priv.__key, i16 noundef signext 3) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 468) #8
  %pallocated_recv_buf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 23
  %4 = ptrtoint ptr %pallocated_recv_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %pallocated_recv_buf, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds i8, ptr %call7.i.i, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 460)
  %precv_buf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 24
  %7 = ptrtoint ptr %precv_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %precv_buf, align 8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i63 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i63 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %prev.i63, align 4
  %recvbuf_lock = getelementptr inbounds %struct.recv_buf, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %recvbuf_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @rtl8188eu_init_recv_priv.__key.1, i16 noundef signext 3) #5
  %alloc_sz = getelementptr inbounds %struct.recv_buf, ptr %call7.i.i, i32 0, i32 13
  %10 = ptrtoint ptr %alloc_sz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 15360, ptr %alloc_sz, align 8
  %call14 = tail call i32 @rtw_os_recvbuf_resource_alloc(ptr noundef %padapter, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.end.for.end_crit_edge, label %if.end17

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end17:                                         ; preds = %if.end
  %ref_cnt = getelementptr inbounds %struct.recv_buf, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ref_cnt, align 4
  %adapter = getelementptr inbounds %struct.recv_buf, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %padapter, ptr %adapter, align 8
  %incdec.ptr = getelementptr %struct.recv_buf, ptr %call7.i.i, i32 1
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %incdec.ptr, ptr %incdec.ptr, align 4
  %prev.i63.1 = getelementptr %struct.recv_buf, ptr %call7.i.i, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i63.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %incdec.ptr, ptr %prev.i63.1, align 8
  %recvbuf_lock.1 = getelementptr %struct.recv_buf, ptr %call7.i.i, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %recvbuf_lock.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @rtl8188eu_init_recv_priv.__key.1, i16 noundef signext 3) #5
  %alloc_sz.1 = getelementptr %struct.recv_buf, ptr %call7.i.i, i32 1, i32 13
  %15 = ptrtoint ptr %alloc_sz.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 15360, ptr %alloc_sz.1, align 4
  %call14.1 = tail call i32 @rtw_os_recvbuf_resource_alloc(ptr noundef %padapter, ptr noundef %incdec.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.1)
  %cmp15.1 = icmp eq i32 %call14.1, 0
  br i1 %cmp15.1, label %if.end17.for.end_crit_edge, label %if.end17.1

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end17.1:                                       ; preds = %if.end17
  %ref_cnt.1 = getelementptr %struct.recv_buf, ptr %call7.i.i, i32 1, i32 2
  %16 = ptrtoint ptr %ref_cnt.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ref_cnt.1, align 8
  %adapter.1 = getelementptr %struct.recv_buf, ptr %call7.i.i, i32 1, i32 3
  %17 = ptrtoint ptr %adapter.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %padapter, ptr %adapter.1, align 4
  %incdec.ptr.1 = getelementptr %struct.recv_buf, ptr %call7.i.i, i32 2
  %18 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %incdec.ptr.1, ptr %incdec.ptr.1, align 8
  %prev.i63.2 = getelementptr %struct.recv_buf, ptr %call7.i.i, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i63.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %incdec.ptr.1, ptr %prev.i63.2, align 4
  %recvbuf_lock.2 = getelementptr %struct.recv_buf, ptr %call7.i.i, i32 2, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %recvbuf_lock.2, ptr noundef nonnull @.str.2, ptr noundef nonnull @rtl8188eu_init_recv_priv.__key.1, i16 noundef signext 3) #5
  %alloc_sz.2 = getelementptr %struct.recv_buf, ptr %call7.i.i, i32 2, i32 13
  %20 = ptrtoint ptr %alloc_sz.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 15360, ptr %alloc_sz.2, align 8
  %call14.2 = tail call i32 @rtw_os_recvbuf_resource_alloc(ptr noundef %padapter, ptr noundef %incdec.ptr.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.2)
  %cmp15.2 = icmp eq i32 %call14.2, 0
  br i1 %cmp15.2, label %if.end17.1.for.end_crit_edge, label %if.end17.2

if.end17.1.for.end_crit_edge:                     ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end17.2:                                       ; preds = %if.end17.1
  %ref_cnt.2 = getelementptr %struct.recv_buf, ptr %call7.i.i, i32 2, i32 2
  %21 = ptrtoint ptr %ref_cnt.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ref_cnt.2, align 4
  %adapter.2 = getelementptr %struct.recv_buf, ptr %call7.i.i, i32 2, i32 3
  %22 = ptrtoint ptr %adapter.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %padapter, ptr %adapter.2, align 8
  %incdec.ptr.2 = getelementptr %struct.recv_buf, ptr %call7.i.i, i32 3
  %23 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %incdec.ptr.2, ptr %incdec.ptr.2, align 4
  %prev.i63.3 = getelementptr %struct.recv_buf, ptr %call7.i.i, i32 3, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i63.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %incdec.ptr.2, ptr %prev.i63.3, align 8
  %recvbuf_lock.3 = getelementptr %struct.recv_buf, ptr %call7.i.i, i32 3, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %recvbuf_lock.3, ptr noundef nonnull @.str.2, ptr noundef nonnull @rtl8188eu_init_recv_priv.__key.1, i16 noundef signext 3) #5
  %alloc_sz.3 = getelementptr %struct.recv_buf, ptr %call7.i.i, i32 3, i32 13
  %25 = ptrtoint ptr %alloc_sz.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 15360, ptr %alloc_sz.3, align 4
  %call14.3 = tail call i32 @rtw_os_recvbuf_resource_alloc(ptr noundef %padapter, ptr noundef %incdec.ptr.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.3)
  %cmp15.3 = icmp eq i32 %call14.3, 0
  br i1 %cmp15.3, label %if.end17.2.for.end_crit_edge, label %if.end17.3

if.end17.2.for.end_crit_edge:                     ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end17.3:                                       ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #7
  %ref_cnt.3 = getelementptr %struct.recv_buf, ptr %call7.i.i, i32 3, i32 2
  %26 = ptrtoint ptr %ref_cnt.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %ref_cnt.3, align 8
  %adapter.3 = getelementptr %struct.recv_buf, ptr %call7.i.i, i32 3, i32 3
  %27 = ptrtoint ptr %adapter.3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %padapter, ptr %adapter.3, align 4
  br label %for.end

for.end:                                          ; preds = %if.end17.3, %if.end17.2.for.end_crit_edge, %if.end17.1.for.end_crit_edge, %if.end17.for.end_crit_edge, %if.end.for.end_crit_edge
  %res.1 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ 0, %if.end17.for.end_crit_edge ], [ 0, %if.end17.1.for.end_crit_edge ], [ 0, %if.end17.2.for.end_crit_edge ], [ %call14.3, %if.end17.3 ]
  %free_recv_buf_queue_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 26
  %28 = ptrtoint ptr %free_recv_buf_queue_cnt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %free_recv_buf_queue_cnt, align 8
  %rx_skb_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 22
  %lock.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 22, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %29 = ptrtoint ptr %rx_skb_queue to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rx_skb_queue, ptr %rx_skb_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 22, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %rx_skb_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 22, i32 1
  %31 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %qlen.i.i, align 4
  %free_recv_skb_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 21
  %lock.i64 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 21, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i64, ptr noundef nonnull @.str.9, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %32 = ptrtoint ptr %free_recv_skb_queue to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %free_recv_skb_queue, ptr %free_recv_skb_queue, align 4
  %prev.i.i65 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 21, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i65 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %free_recv_skb_queue, ptr %prev.i.i65, align 4
  %qlen.i.i66 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 21, i32 1
  %34 = ptrtoint ptr %qlen.i.i66 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %qlen.i.i66, align 4
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  br label %for.body21

for.body21:                                       ; preds = %if.end28.for.body21_crit_edge, %for.end
  %i18.069 = phi i32 [ 0, %for.end ], [ %inc30, %if.end28.for.body21_crit_edge ]
  %35 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pnetdev, align 4
  %call22 = tail call ptr @__netdev_alloc_skb(ptr noundef %36, i32 noundef 15368, i32 noundef 3264) #5
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %for.body21.if.end28_crit_edge, label %if.then24

for.body21.if.end28_crit_edge:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then24:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pnetdev, align 4
  %39 = getelementptr inbounds %struct.anon.44, ptr %call22, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %39, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call22, i32 0, i32 19
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %43 = ptrtoint ptr %42 to i32
  %and = and i32 %43, 7
  %sub26 = sub nuw nsw i32 8, %and
  %add.ptr.i = getelementptr i8, ptr %42, i32 %sub26
  store ptr %add.ptr.i, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call22, i32 0, i32 16
  %44 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %45, i32 %sub26
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  tail call void @skb_queue_tail(ptr noundef %free_recv_skb_queue, ptr noundef nonnull %call22) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %for.body21.if.end28_crit_edge
  %inc30 = add nuw nsw i32 %i18.069, 1
  %exitcond.not = icmp eq i32 %inc30, 8
  br i1 %exitcond.not, label %if.end28.exit_crit_edge, label %if.end28.for.body21_crit_edge

if.end28.for.body21_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body21

if.end28.exit_crit_edge:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

exit:                                             ; preds = %if.end28.exit_crit_edge, %entry.exit_crit_edge
  %res.2 = phi i32 [ 0, %entry.exit_crit_edge ], [ %res.1, %if.end28.exit_crit_edge ]
  ret i32 %res.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188eu_recv_tasklet(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_os_recvbuf_resource_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188eu_free_recv_priv(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %precv_buf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 24
  %0 = ptrtoint ptr %precv_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %precv_buf, align 8
  %call = tail call i32 @rtw_os_recvbuf_resource_free(ptr noundef %padapter, ptr noundef %1) #5
  %incdec.ptr = getelementptr %struct.recv_buf, ptr %1, i32 1
  %call.1 = tail call i32 @rtw_os_recvbuf_resource_free(ptr noundef %padapter, ptr noundef %incdec.ptr) #5
  %incdec.ptr.1 = getelementptr %struct.recv_buf, ptr %1, i32 2
  %call.2 = tail call i32 @rtw_os_recvbuf_resource_free(ptr noundef %padapter, ptr noundef %incdec.ptr.1) #5
  %incdec.ptr.2 = getelementptr %struct.recv_buf, ptr %1, i32 3
  %call.3 = tail call i32 @rtw_os_recvbuf_resource_free(ptr noundef %padapter, ptr noundef %incdec.ptr.2) #5
  %pallocated_recv_buf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 23
  %2 = ptrtoint ptr %pallocated_recv_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pallocated_recv_buf, align 4
  tail call void @kfree(ptr noundef %3) #5
  %rx_skb_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 22
  %qlen.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 22, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %6 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp2 = icmp ugt i32 %6, 4
  br i1 %cmp2, label %do.end, label %do.body.if.end8_crit_edge

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %if.end8

if.end8:                                          ; preds = %do.end, %do.body.if.end8_crit_edge, %entry.if.end8_crit_edge
  tail call void @skb_queue_purge(ptr noundef %rx_skb_queue) #5
  %qlen.i37 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 21, i32 1
  %7 = ptrtoint ptr %qlen.i37 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qlen.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not = icmp eq i32 %8, 0
  br i1 %tobool11.not, label %if.end8.if.end26_crit_edge, label %do.body13

if.end8.if.end26_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.body13:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %9 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp14 = icmp ugt i32 %9, 4
  br i1 %cmp14, label %do.end18, label %do.body13.if.end26_crit_edge

do.body13.if.end26_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %8) #9
  br label %if.end26

if.end26:                                         ; preds = %do.end18, %do.body13.if.end26_crit_edge, %if.end8.if.end26_crit_edge
  %free_recv_skb_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 21
  tail call void @skb_queue_purge(ptr noundef %free_recv_skb_queue) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_os_recvbuf_resource_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @rtl8188eu_init_recv_priv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/hal/rtl8188eu_recv.c", i32 42, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @rtl8188eu_init_recv_priv.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/r8188eu/hal/rtl8188eu_recv.c", i32 58, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/hal/rtl8188eu_recv.c", i32 110, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rtl8188eu_free_recv_priv._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @rtl8188eu_free_recv_priv._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/r8188eu/hal/rtl8188eu_recv.c", i32 114, i32 3}
!14 = !{ptr @rtl8188eu_free_recv_priv._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @rtl8188eu_free_recv_priv._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @skb_queue_head_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
