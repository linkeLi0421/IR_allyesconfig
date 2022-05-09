; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/core/rtw_br_ext.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/core/rtw_br_ext.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.led_priv, ptr, %struct.wifidirect_info, %struct.hal_data_8188e, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, i32, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, %struct.spinlock, [16 x ptr], i32, [6 x i8], [6 x i8], [4 x i8], ptr, [6 x i8], [4 x i8], %struct.br_ext_info, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i8, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect, %struct.timer_list, i8, i8, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.HT_caps_element = type { %union.anon.127 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i8, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.io_priv = type { ptr, %struct.intf_hdl }
%struct.intf_hdl = type { ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.semaphore, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, i32, ptr, i8, i8, i8, i64, i64, i64, i64, i64, ptr, i8, [4 x i8], %struct.semaphore, i8, %struct.tasklet_struct, i32, i32, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i16, i32, %struct.mutex, %struct.submit_ctx }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.130, i32 }
%union.anon.130 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, i32, i32, i32, i32, %struct.semaphore, i8, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, i8, i8, i8, [2 x i32], [2 x i8], i32, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.br_ext_info = type { i32, i32, i32, i32, [6 x i8], i32 }
%struct.nat25_network_db_entry = type { ptr, ptr, %struct.atomic_t, [6 x i8], i32, [17 x i8] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pppoe_tag = type { i16, i16, [0 x i8] }
%struct.pppoe_hdr = type { i8, i8, i16, i16, [0 x %struct.pppoe_tag] }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.dhcpMessage = type { i8, i8, i8, i8, i32, i16, i16, i32, i32, i32, i32, [16 x i8], [64 x i8], [128 x i8], i32, [308 x i8] }

@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@nat25_db_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016R8188EU: NAT25: malformed IP packet !\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nat25_db_handle\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/r8188eu/core/rtw_br_ext.c\00", [54 x i8] zeroinitializer }, align 32
@nat25_db_handle._entry_ptr = internal global ptr @nat25_db_handle._entry, section ".printk_index", align 4
@nat25_db_handle._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016R8188EU: NAT25: Insert IP, SA =%08x, DA =%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@nat25_db_handle._entry_ptr.5 = internal global ptr @nat25_db_handle._entry.3, section ".printk_index", align 4
@nat25_db_handle._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016R8188EU: NAT25: arp protocol unknown (%4x)!\0A\00", [49 x i8] zeroinitializer }, align 32
@nat25_db_handle._entry_ptr.8 = internal global ptr @nat25_db_handle._entry.6, section ".printk_index", align 4
@nat25_db_handle._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016R8188EU: NAT25: Insert ARP, MAC =%02x%02x%02x%02x%02x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@nat25_db_handle._entry_ptr.11 = internal global ptr @nat25_db_handle._entry.9, section ".printk_index", align 4
@nat25_db_handle._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016R8188EU: SID tag length too long!\0A\00", [59 x i8] zeroinitializer }, align 32
@nat25_db_handle._entry_ptr.14 = internal global ptr @nat25_db_handle._entry.12, section ".printk_index", align 4
@nat25_db_handle._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016R8188EU: call skb_pull_and_merge() failed in PADI/R packet!\0A\00", [33 x i8] zeroinitializer }, align 32
@nat25_db_handle._entry_ptr.17 = internal global ptr @nat25_db_handle._entry.15, section ".printk_index", align 4
@nat25_db_handle._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016R8188EU: NAT25: Insert PPPoE, forward %s packet\0A\00", [45 x i8] zeroinitializer }, align 32
@nat25_db_handle._entry_ptr.20 = internal global ptr @nat25_db_handle._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PADI\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PADR\00", [27 x i8] zeroinitializer }, align 32
@nat25_db_handle._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\016R8188EU: Discard PPPoE packet due to another PPPoE connection is in progress!\0A\00", [47 x i8] zeroinitializer }, align 32
@nat25_db_handle._entry_ptr.25 = internal global ptr @nat25_db_handle._entry.23, section ".printk_index", align 4
@nat25_db_handle._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016R8188EU: NAT25: Insert PPPoE, insert session packet to %s\0A\00", [35 x i8] zeroinitializer }, align 32
@nat25_db_handle._entry_ptr.28 = internal global ptr @nat25_db_handle._entry.26, section ".printk_index", align 4
@nat25_db_handle._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016R8188EU: NAT25: malformed IPv6 packet !\0A\00", [53 x i8] zeroinitializer }, align 32
@nat25_db_handle._entry_ptr.31 = internal global ptr @nat25_db_handle._entry.29, section ".printk_index", align 4
@nat25_db_handle._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\016R8188EU: NAT25: Insert IP, SA =%4x:%4x:%4x:%4x:%4x:%4x:%4x:%4x, DA =%4x:%4x:%4x:%4x:%4x:%4x:%4x:%4x\0A\00", [57 x i8] zeroinitializer }, align 32
@nat25_db_handle._entry_ptr.34 = internal global ptr @nat25_db_handle._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [17 x i8], [47 x i8] } zeroinitializer, align 32
@dhcp_flag_bcast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016R8188EU: DHCP: change flag of DHCP request to broadcast.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dhcp_flag_bcast\00", [16 x i8] zeroinitializer }, align 32
@dhcp_flag_bcast._entry_ptr = internal global ptr @dhcp_flag_bcast._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__nat25_add_pppoe_tag._entry = internal constant %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 75, ptr null, ptr null }, align 1
@.str.38 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016R8188EU: skb_tailroom() failed in add SID tag!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__nat25_add_pppoe_tag\00", [42 x i8] zeroinitializer }, align 32
@__nat25_add_pppoe_tag._entry_ptr = internal global ptr @__nat25_add_pppoe_tag._entry, section ".printk_index", align 4
@update_nd_link_layer_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"\016R8188EU: Router Solicitation, replace MAC From: %02x:%02x:%02x:%02x:%02x:%02x, To: %02x:%02x:%02x:%02x:%02x:%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"update_nd_link_layer_addr\00", [38 x i8] zeroinitializer }, align 32
@update_nd_link_layer_addr._entry_ptr = internal global ptr @update_nd_link_layer_addr._entry, section ".printk_index", align 4
@update_nd_link_layer_addr._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"\016R8188EU: Router Advertisement, replace MAC From: %02x:%02x:%02x:%02x:%02x:%02x, To: %02x:%02x:%02x:%02x:%02x:%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@update_nd_link_layer_addr._entry_ptr.44 = internal global ptr @update_nd_link_layer_addr._entry.42, section ".printk_index", align 4
@update_nd_link_layer_addr._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"\016R8188EU: Neighbor Solicitation, replace MAC From: %02x:%02x:%02x:%02x:%02x:%02x, To: %02x:%02x:%02x:%02x:%02x:%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@update_nd_link_layer_addr._entry_ptr.47 = internal global ptr @update_nd_link_layer_addr._entry.45, section ".printk_index", align 4
@update_nd_link_layer_addr._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [119 x i8], [41 x i8] } { [119 x i8] c"\016R8188EU: Neighbor Advertisement, replace MAC From: %02x:%02x:%02x:%02x:%02x:%02x, To: %02x:%02x:%02x:%02x:%02x:%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@update_nd_link_layer_addr._entry_ptr.50 = internal global ptr @update_nd_link_layer_addr._entry.48, section ".printk_index", align 4
@update_nd_link_layer_addr._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\016R8188EU: Redirect,  replace MAC From: %02x:%02x:%02x:%02x:%02x:%02x, To: %02x:%02x:%02x:%02x:%02x:%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@update_nd_link_layer_addr._entry_ptr.53 = internal global ptr @update_nd_link_layer_addr._entry.51, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 16, i64 2048, i64 2054, i64 34525, i64 34915, i64 34916, i64 34958, i64 58030, i64 58031]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 25]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [7 x i64] [i64 5, i64 8, i64 133, i64 134, i64 135, i64 136, i64 137]
@__sancov_gen_cov_switch_values.59 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 408, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 421, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 440, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 448, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 488, i32 9 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 496, i32 9 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 514, i32 7 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 519, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 532, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 580, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 590, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 597, i32 28 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 672, i32 8 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 75, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 166, i32 5 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 177, i32 5 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 188, i32 5 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 199, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private constant [45 x i8] c"../drivers/staging/r8188eu/core/rtw_br_ext.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 210, i32 5 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__nat25_add_pppoe_tag._entry, ptr @__nat25_add_pppoe_tag._entry_ptr, ptr @dhcp_flag_bcast._entry, ptr @dhcp_flag_bcast._entry_ptr, ptr @nat25_db_handle._entry, ptr @nat25_db_handle._entry.12, ptr @nat25_db_handle._entry.15, ptr @nat25_db_handle._entry.18, ptr @nat25_db_handle._entry.23, ptr @nat25_db_handle._entry.26, ptr @nat25_db_handle._entry.29, ptr @nat25_db_handle._entry.3, ptr @nat25_db_handle._entry.32, ptr @nat25_db_handle._entry.6, ptr @nat25_db_handle._entry.9, ptr @nat25_db_handle._entry_ptr, ptr @nat25_db_handle._entry_ptr.11, ptr @nat25_db_handle._entry_ptr.14, ptr @nat25_db_handle._entry_ptr.17, ptr @nat25_db_handle._entry_ptr.20, ptr @nat25_db_handle._entry_ptr.25, ptr @nat25_db_handle._entry_ptr.28, ptr @nat25_db_handle._entry_ptr.31, ptr @nat25_db_handle._entry_ptr.34, ptr @nat25_db_handle._entry_ptr.5, ptr @nat25_db_handle._entry_ptr.8, ptr @update_nd_link_layer_addr._entry, ptr @update_nd_link_layer_addr._entry.42, ptr @update_nd_link_layer_addr._entry.45, ptr @update_nd_link_layer_addr._entry.48, ptr @update_nd_link_layer_addr._entry.51, ptr @update_nd_link_layer_addr._entry_ptr, ptr @update_nd_link_layer_addr._entry_ptr.44, ptr @update_nd_link_layer_addr._entry_ptr.47, ptr @update_nd_link_layer_addr._entry_ptr.50, ptr @update_nd_link_layer_addr._entry_ptr.53, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat25_db_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat25_db_handle._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat25_db_handle._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat25_db_handle._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat25_db_handle._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat25_db_handle._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat25_db_handle._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat25_db_handle._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat25_db_handle._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat25_db_handle._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat25_db_handle._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dhcp_flag_bcast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_nd_link_layer_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_nd_link_layer_addr._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_nd_link_layer_addr._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_nd_link_layer_addr._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_nd_link_layer_addr._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nat25_db_cleanup(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %br_ext_lock = getelementptr inbounds %struct.adapter, ptr %priv, i32 0, i32 53
  tail call void @_raw_spin_lock_bh(ptr noundef %br_ext_lock) #10
  %scdb_entry = getelementptr inbounds %struct.adapter, ptr %priv, i32 0, i32 59
  %scdb_mac = getelementptr inbounds %struct.adapter, ptr %priv, i32 0, i32 57
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %while.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %priv, i32 0, i32 54, i32 %i.019
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not17 = icmp eq ptr %1, null
  br i1 %tobool.not17, label %for.body.while.end_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %__network_hash_unlink.exit.while.body_crit_edge, %for.body.while.body_crit_edge
  %f.018 = phi ptr [ %3, %__network_hash_unlink.exit.while.body_crit_edge ], [ %1, %for.body.while.body_crit_edge ]
  %2 = ptrtoint ptr %f.018 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f.018, align 4
  %4 = ptrtoint ptr %scdb_entry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scdb_entry, align 8
  %cmp1 = icmp eq ptr %5, %f.018
  br i1 %cmp1, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = call ptr @memset(ptr %scdb_mac, i32 0, i32 14)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %7 = ptrtoint ptr %f.018 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f.018, align 4
  %pprev_hash.i = getelementptr inbounds %struct.nat25_network_db_entry, ptr %f.018, i32 0, i32 1
  %9 = ptrtoint ptr %pprev_hash.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev_hash.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %10, align 4
  %12 = load ptr, ptr %f.018, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.__network_hash_unlink.exit_crit_edge, label %if.then.i

if.end.__network_hash_unlink.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__network_hash_unlink.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %pprev_hash.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pprev_hash.i, align 4
  %pprev_hash4.i = getelementptr inbounds %struct.nat25_network_db_entry, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %pprev_hash4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %pprev_hash4.i, align 4
  br label %__network_hash_unlink.exit

__network_hash_unlink.exit:                       ; preds = %if.then.i, %if.end.__network_hash_unlink.exit_crit_edge
  %16 = ptrtoint ptr %f.018 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %f.018, align 4
  %17 = ptrtoint ptr %pprev_hash.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pprev_hash.i, align 4
  tail call void @kfree(ptr noundef nonnull %f.018) #10
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %__network_hash_unlink.exit.while.end_crit_edge, label %__network_hash_unlink.exit.while.body_crit_edge

__network_hash_unlink.exit.while.body_crit_edge:  ; preds = %__network_hash_unlink.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

__network_hash_unlink.exit.while.end_crit_edge:   ; preds = %__network_hash_unlink.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %__network_hash_unlink.exit.while.end_crit_edge, %for.body.while.end_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %br_ext_lock) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nat25_db_expire(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %br_ext_lock = getelementptr inbounds %struct.adapter, ptr %priv, i32 0, i32 53
  tail call void @_raw_spin_lock_bh(ptr noundef %br_ext_lock) #10
  %scdb_entry = getelementptr inbounds %struct.adapter, ptr %priv, i32 0, i32 59
  %scdb_mac = getelementptr inbounds %struct.adapter, ptr %priv, i32 0, i32 57
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %inc, %while.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %priv, i32 0, i32 54, i32 %i.028
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not26 = icmp eq ptr %1, null
  br i1 %tobool.not26, label %for.body.while.end_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end9.while.body_crit_edge, %for.body.while.body_crit_edge
  %f.027 = phi ptr [ %3, %if.end9.while.body_crit_edge ], [ %1, %for.body.while.body_crit_edge ]
  %2 = ptrtoint ptr %f.027 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f.027, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %ageing_timer.i = getelementptr inbounds %struct.nat25_network_db_entry, ptr %f.027, i32 0, i32 4
  %5 = ptrtoint ptr %ageing_timer.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ageing_timer.i, align 4
  %7 = sub i32 29999, %4
  %8 = add i32 %7, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool1.not = icmp sgt i32 %8, -1
  br i1 %tobool1.not, label %while.body.if.end9_crit_edge, label %if.then

while.body.if.end9_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %while.body
  %use_count = getelementptr inbounds %struct.nat25_network_db_entry, ptr %f.027, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %use_count, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_count, ptr %use_count, i32 1, ptr elementtype(i32) %use_count) #10, !srcloc !91
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then3, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then3:                                         ; preds = %if.then
  %10 = ptrtoint ptr %scdb_entry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scdb_entry, align 8
  %cmp4 = icmp eq ptr %11, %f.027
  br i1 %cmp4, label %if.then5, label %if.then3.if.end_crit_edge

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %12 = call ptr @memset(ptr %scdb_mac, i32 0, i32 14)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3.if.end_crit_edge
  %13 = ptrtoint ptr %f.027 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %f.027, align 4
  %pprev_hash.i = getelementptr inbounds %struct.nat25_network_db_entry, ptr %f.027, i32 0, i32 1
  %15 = ptrtoint ptr %pprev_hash.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pprev_hash.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %16, align 4
  %18 = load ptr, ptr %f.027, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.__network_hash_unlink.exit_crit_edge, label %if.then.i

if.end.__network_hash_unlink.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__network_hash_unlink.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %pprev_hash.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pprev_hash.i, align 4
  %pprev_hash4.i = getelementptr inbounds %struct.nat25_network_db_entry, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %pprev_hash4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %pprev_hash4.i, align 4
  br label %__network_hash_unlink.exit

__network_hash_unlink.exit:                       ; preds = %if.then.i, %if.end.__network_hash_unlink.exit_crit_edge
  %22 = ptrtoint ptr %f.027 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %f.027, align 4
  %23 = ptrtoint ptr %pprev_hash.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %pprev_hash.i, align 4
  tail call void @kfree(ptr noundef nonnull %f.027) #10
  br label %if.end9

if.end9:                                          ; preds = %__network_hash_unlink.exit, %if.then.if.end9_crit_edge, %while.body.if.end9_crit_edge
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end9.while.end_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end9.while.end_crit_edge, %for.body.while.end_crit_edge
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %br_ext_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nat25_db_handle(ptr noundef %priv, ptr noundef %skb, i32 noundef %method) local_unnamed_addr #0 align 64 {
entry:
  %networkAddr = alloca [17 x i8], align 1
  %tag_buf = alloca [40 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %networkAddr) #10
  %0 = getelementptr inbounds [17 x i8], ptr %networkAddr, i32 0, i32 1
  %1 = getelementptr inbounds [17 x i8], ptr %networkAddr, i32 0, i32 3
  %2 = getelementptr inbounds [17 x i8], ptr %networkAddr, i32 0, i32 7
  %tobool.not = icmp eq ptr %skb, null
  %3 = add i32 %method, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %3)
  %4 = icmp ult i32 %3, -3
  %or.cond = or i1 %tobool.not, %4
  %5 = call ptr @memset(ptr %networkAddr, i32 255, i32 17)
  br i1 %or.cond, label %entry.cleanup483_crit_edge, label %if.end3

entry.cleanup483_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

if.end3:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 12
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %if.end3.cleanup483_crit_edge [
    i16 2048, label %if.then6
    i16 2054, label %if.then50
    i16 -30621, label %if.end3.if.then117_crit_edge
    i16 -30620, label %if.end3.if.then117_crit_edge623
    i16 -30578, label %if.then307
    i16 -7506, label %if.end3.if.then319_crit_edge
    i16 -7505, label %if.end3.if.then319_crit_edge624
    i16 -31011, label %if.then327
  ]

if.end3.if.then319_crit_edge624:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then319

if.end3.if.then319_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then319

if.end3.if.then117_crit_edge623:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then117

if.end3.if.then117_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then117

if.end3.cleanup483_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

if.then6:                                         ; preds = %if.end3
  %add.ptr8 = getelementptr i8, ptr %7, i32 14
  %11 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %add.ptr8, align 4
  %bf.clear = shl i8 %bf.load, 2
  %12 = and i8 %bf.clear, 60
  %shl = zext i8 %12 to i32
  %add.ptr10 = getelementptr i8, ptr %add.ptr8, i32 %shl
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %add.ptr13 = getelementptr i8, ptr %add.ptr8, i32 %14
  %cmp14.not = icmp ult ptr %add.ptr10, %add.ptr13
  br i1 %cmp14.not, label %if.end25, label %do.body

do.body:                                          ; preds = %if.then6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %15 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp17 = icmp ugt i32 %15, 4
  br i1 %cmp17, label %do.end, label %do.body.cleanup483_crit_edge

do.body.cleanup483_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup483

if.end25:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %method)
  %cond618 = icmp eq i32 %method, 2
  br i1 %cond618, label %sw.bb26, label %if.end25.cleanup483_crit_edge

if.end25.cleanup483_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

sw.bb26:                                          ; preds = %if.end25
  %saddr = getelementptr i8, ptr %7, i32 26
  %16 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp27 = icmp eq i32 %17, 0
  br i1 %cmp27, label %sw.bb26.cleanup483_crit_edge, label %if.end30

sw.bb26.cleanup483_crit_edge:                     ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

if.end30:                                         ; preds = %sw.bb26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %18 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp33 = icmp ugt i32 %18, 4
  br i1 %cmp33, label %do.end38, label %if.end30.do.end43_crit_edge

if.end30.do.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %daddr = getelementptr i8, ptr %7, i32 30
  %19 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %daddr, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %17, i32 noundef %20) #13
  br label %do.end43

do.end43:                                         ; preds = %do.end38, %if.end30.do.end43_crit_edge
  %21 = call ptr @memset(ptr %0, i32 0, i32 16)
  %22 = ptrtoint ptr %networkAddr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %networkAddr, align 1
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %17, ptr %2, align 1
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %add.ptr45 = getelementptr i8, ptr %25, i32 6
  call fastcc void @__nat25_db_network_insert(ptr noundef %priv, ptr noundef %add.ptr45, ptr noundef nonnull %networkAddr)
  br label %cleanup483

if.then50:                                        ; preds = %if.end3
  %add.ptr53 = getelementptr i8, ptr %7, i32 22
  %ar_pro = getelementptr i8, ptr %7, i32 16
  %26 = ptrtoint ptr %ar_pro to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ar_pro, align 2
  %conv54 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %27)
  %cmp55.not = icmp eq i16 %27, 2048
  br i1 %cmp55.not, label %if.end72, label %do.body58

do.body58:                                        ; preds = %if.then50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %28 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp59 = icmp ugt i32 %28, 4
  br i1 %cmp59, label %do.end64, label %do.body58.cleanup483_crit_edge

do.body58.cleanup483_crit_edge:                   ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

do.end64:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv54) #13
  br label %cleanup483

if.end72:                                         ; preds = %if.then50
  %29 = zext i32 %method to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %method, label %sw.default105 [
    i32 1, label %if.end72.cleanup483_crit_edge
    i32 2, label %do.body75
  ]

if.end72.cleanup483_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

do.body75:                                        ; preds = %if.end72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %30 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp76 = icmp ugt i32 %30, 4
  br i1 %cmp76, label %do.end81, label %do.body75.do.end97_crit_edge

do.body75.do.end97_crit_edge:                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end97

do.end81:                                         ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr53, align 1
  %conv83 = zext i8 %32 to i32
  %arrayidx84 = getelementptr i8, ptr %7, i32 23
  %33 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %34 to i32
  %arrayidx86 = getelementptr i8, ptr %7, i32 24
  %35 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %36 to i32
  %arrayidx88 = getelementptr i8, ptr %7, i32 25
  %37 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %38 to i32
  %arrayidx90 = getelementptr i8, ptr %7, i32 26
  %39 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %40 to i32
  %arrayidx92 = getelementptr i8, ptr %7, i32 27
  %41 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %42 to i32
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv83, i32 noundef %conv85, i32 noundef %conv87, i32 noundef %conv89, i32 noundef %conv91, i32 noundef %conv93) #13
  br label %do.end97

do.end97:                                         ; preds = %do.end81, %do.body75.do.end97_crit_edge
  %mac_addr = getelementptr inbounds %struct.adapter, ptr %priv, i32 0, i32 15, i32 4
  %43 = call ptr @memcpy(ptr %add.ptr53, ptr %mac_addr, i32 6)
  %ar_hln = getelementptr i8, ptr %7, i32 18
  %44 = ptrtoint ptr %ar_hln to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ar_hln, align 2
  %conv99 = zext i8 %45 to i32
  %add.ptr100 = getelementptr i8, ptr %add.ptr53, i32 %conv99
  %46 = call ptr @memset(ptr %0, i32 0, i32 16)
  %47 = ptrtoint ptr %networkAddr to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %networkAddr, align 1
  %48 = ptrtoint ptr %add.ptr100 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %add.ptr100, align 1
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %2, align 1
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  %add.ptr103 = getelementptr i8, ptr %52, i32 6
  call fastcc void @__nat25_db_network_insert(ptr noundef %priv, ptr noundef %add.ptr103, ptr noundef nonnull %networkAddr)
  br label %cleanup483

sw.default105:                                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

if.then117:                                       ; preds = %if.end3.if.then117_crit_edge, %if.end3.if.then117_crit_edge623
  %add.ptr119 = getelementptr i8, ptr %7, i32 14
  %53 = zext i32 %method to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %method, label %if.then117.cleanup483_crit_edge [
    i32 1, label %sw.bb120
    i32 2, label %sw.bb126
  ]

if.then117.cleanup483_crit_edge:                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

sw.bb120:                                         ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #12
  %sid = getelementptr i8, ptr %7, i32 16
  %54 = ptrtoint ptr %sid to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %sid, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %cmp122 = icmp ne i16 %55, 0
  %. = zext i1 %cmp122 to i32
  br label %cleanup483

sw.bb126:                                         ; preds = %if.then117
  %sid127 = getelementptr i8, ptr %7, i32 16
  %56 = ptrtoint ptr %sid127 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %sid127, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp129 = icmp eq i16 %57, 0
  br i1 %cmp129, label %if.then131, label %do.body264

if.then131:                                       ; preds = %sw.bb126
  %code = getelementptr i8, ptr %7, i32 15
  %58 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %code, align 1
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %59, label %if.then131.cleanup483_crit_edge [
    i8 9, label %if.then131.if.then140_crit_edge
    i8 25, label %if.then131.if.then140_crit_edge625
  ]

if.then131.if.then140_crit_edge625:               ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then140

if.then131.if.then140_crit_edge:                  ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then140

if.then131.cleanup483_crit_edge:                  ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

if.then140:                                       ; preds = %if.then131.if.then140_crit_edge, %if.then131.if.then140_crit_edge625
  %addPPPoETag = getelementptr inbounds %struct.adapter, ptr %priv, i32 0, i32 62, i32 3
  %61 = ptrtoint ptr %addPPPoETag to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %addPPPoETag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool141.not = icmp eq i32 %62, 0
  br i1 %tobool141.not, label %if.else229, label %if.then142

if.then142:                                       ; preds = %if.then140
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tag_buf) #10
  %63 = getelementptr inbounds i8, ptr %tag_buf, i32 12
  %64 = call ptr @memset(ptr %63, i32 255, i32 28)
  %call144 = tail call fastcc ptr @__nat25_find_pppoe_tag(ptr noundef %add.ptr119)
  %tobool145.not = icmp eq ptr %call144, null
  br i1 %tobool145.not, label %if.then142.if.end193_crit_edge, label %if.then146

if.then142.if.end193_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

if.then146:                                       ; preds = %if.then142
  %tag_len = getelementptr inbounds %struct.pppoe_tag, ptr %call144, i32 0, i32 1
  %65 = ptrtoint ptr %tag_len to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %tag_len, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 28, i16 %66)
  %cmp150 = icmp ugt i16 %66, 28
  br i1 %cmp150, label %do.body153, label %if.end165

do.body153:                                       ; preds = %if.then146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %67 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %67)
  %cmp154 = icmp ugt i32 %67, 4
  br i1 %cmp154, label %do.end159, label %cleanup301.critedge607

do.end159:                                        ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #12
  %call161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tag_buf) #10
  br label %cleanup483

if.end165:                                        ; preds = %if.then146
  %conv147 = zext i16 %66 to i32
  %add = add nuw nsw i32 %conv147, 4
  %add.ptr168 = getelementptr inbounds %struct.pppoe_tag, ptr %tag_buf, i32 3
  %tag_data169 = getelementptr inbounds %struct.pppoe_tag, ptr %call144, i32 0, i32 2
  %68 = call ptr @memcpy(ptr %add.ptr168, ptr %tag_data169, i32 %conv147)
  %call172 = tail call fastcc i32 @skb_pull_and_merge(ptr noundef nonnull %skb, ptr noundef nonnull %call144, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %cmp173 = icmp slt i32 %call172, 0
  br i1 %cmp173, label %do.body176, label %if.end188

do.body176:                                       ; preds = %if.end165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %69 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %69)
  %cmp177 = icmp ugt i32 %69, 4
  br i1 %cmp177, label %do.end182, label %cleanup301.critedge609

do.end182:                                        ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #12
  %call184 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tag_buf) #10
  br label %cleanup483

if.end188:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  %length = getelementptr i8, ptr %7, i32 18
  %70 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %length, align 1
  %sub = sub nuw nsw i16 -4, %66
  %sub190 = add i16 %sub, %71
  store i16 %sub190, ptr %length, align 1
  %phi.bo = add nuw nsw i16 %66, 8
  br label %if.end193

if.end193:                                        ; preds = %if.end188, %if.then142.if.end193_crit_edge
  %old_tag_len.0 = phi i16 [ %phi.bo, %if.end188 ], [ 8, %if.then142.if.end193_crit_edge ]
  %72 = ptrtoint ptr %tag_buf to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 272, ptr %tag_buf, align 2
  %tag_len196 = getelementptr inbounds %struct.pppoe_tag, ptr %tag_buf, i32 0, i32 1
  %73 = ptrtoint ptr %tag_len196 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %old_tag_len.0, ptr %tag_len196, align 2
  %tag_data197 = getelementptr inbounds %struct.pppoe_tag, ptr %tag_buf, i32 0, i32 2
  %74 = ptrtoint ptr %tag_data197 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 -32378, ptr %tag_data197, align 2
  %add.ptr201 = getelementptr inbounds %struct.pppoe_tag, ptr %tag_buf, i32 1, i32 1
  %75 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data, align 4
  %add.ptr203 = getelementptr i8, ptr %76, i32 6
  %77 = call ptr @memcpy(ptr %add.ptr201, ptr %add.ptr203, i32 6)
  %call204 = call fastcc i32 @__nat25_add_pppoe_tag(ptr noundef nonnull %skb, ptr noundef nonnull %tag_buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %cmp205 = icmp slt i32 %call204, 0
  br i1 %cmp205, label %cleanup301.critedge610, label %do.body209

do.body209:                                       ; preds = %if.end193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %78 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %78)
  %cmp210 = icmp ugt i32 %78, 4
  br i1 %cmp210, label %do.end215, label %do.body209.cleanup225_crit_edge

do.body209.cleanup225_crit_edge:                  ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup225

do.end215:                                        ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %80)
  %cmp219 = icmp eq i8 %80, 9
  %cond = select i1 %cmp219, ptr @.str.21, ptr @.str.22
  %call221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull %cond) #13
  br label %cleanup225

cleanup225:                                       ; preds = %do.end215, %do.body209.cleanup225_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tag_buf) #10
  br label %cleanup483

if.else229:                                       ; preds = %if.then140
  %pppoe_connection_in_progress = getelementptr inbounds %struct.adapter, ptr %priv, i32 0, i32 55
  %81 = ptrtoint ptr %pppoe_connection_in_progress to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pppoe_connection_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool230.not = icmp eq i32 %82, 0
  br i1 %tobool230.not, label %if.then253, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else229
  %add.ptr232 = getelementptr i8, ptr %7, i32 6
  %pppoe_addr = getelementptr inbounds %struct.adapter, ptr %priv, i32 0, i32 56
  %bcmp606 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr232, ptr noundef dereferenceable(6) %pppoe_addr, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp606)
  %tobool235.not = icmp eq i32 %bcmp606, 0
  br i1 %tobool235.not, label %land.lhs.true.if.end258_crit_edge, label %do.body237

land.lhs.true.if.end258_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end258

do.body237:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %83 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %83)
  %cmp238 = icmp ugt i32 %83, 4
  br i1 %cmp238, label %do.end243, label %do.body237.cleanup483_crit_edge

do.body237.cleanup483_crit_edge:                  ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

do.end243:                                        ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #12
  %call245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #13
  br label %cleanup483

if.then253:                                       ; preds = %if.else229
  call void @__sanitizer_cov_trace_pc() #12
  %pppoe_addr254 = getelementptr inbounds %struct.adapter, ptr %priv, i32 0, i32 56
  %add.ptr257 = getelementptr i8, ptr %7, i32 6
  %84 = call ptr @memcpy(ptr %pppoe_addr254, ptr %add.ptr257, i32 6)
  br label %if.end258

if.end258:                                        ; preds = %if.then253, %land.lhs.true.if.end258_crit_edge
  %85 = ptrtoint ptr %pppoe_connection_in_progress to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 5, ptr %pppoe_connection_in_progress, align 4
  br label %cleanup483

do.body264:                                       ; preds = %sw.bb126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %86 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %86)
  %cmp265 = icmp ugt i32 %86, 4
  br i1 %cmp265, label %do.end270, label %do.body264.do.end276_crit_edge

do.body264.do.end276_crit_edge:                   ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end276

do.end270:                                        ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #12
  %87 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %call273 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %89) #13
  br label %do.end276

do.end276:                                        ; preds = %do.end270, %do.body264.do.end276_crit_edge
  %90 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data, align 4
  %92 = call ptr @memset(ptr %0, i32 0, i32 16)
  %93 = ptrtoint ptr %networkAddr to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 5, ptr %networkAddr, align 1
  %94 = ptrtoint ptr %sid127 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %sid127, align 1
  %96 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 2)
  store i16 %95, ptr %0, align 1
  %97 = call ptr @memcpy(ptr %1, ptr %91, i32 6)
  %add.ptr281 = getelementptr i8, ptr %91, i32 6
  call fastcc void @__nat25_db_network_insert(ptr noundef %priv, ptr noundef %add.ptr281, ptr noundef nonnull %networkAddr)
  %addPPPoETag284 = getelementptr inbounds %struct.adapter, ptr %priv, i32 0, i32 62, i32 3
  %98 = ptrtoint ptr %addPPPoETag284 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %addPPPoETag284, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool285.not = icmp eq i32 %99, 0
  br i1 %tobool285.not, label %land.lhs.true286, label %do.end276.cleanup483_crit_edge

do.end276.cleanup483_crit_edge:                   ; preds = %do.end276
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

land.lhs.true286:                                 ; preds = %do.end276
  %pppoe_connection_in_progress287 = getelementptr inbounds %struct.adapter, ptr %priv, i32 0, i32 55
  %100 = ptrtoint ptr %pppoe_connection_in_progress287 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pppoe_connection_in_progress287, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool288.not = icmp eq i32 %101, 0
  br i1 %tobool288.not, label %land.lhs.true286.cleanup483_crit_edge, label %land.lhs.true289

land.lhs.true286.cleanup483_crit_edge:            ; preds = %land.lhs.true286
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

land.lhs.true289:                                 ; preds = %land.lhs.true286
  %102 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data, align 4
  %add.ptr291 = getelementptr i8, ptr %103, i32 6
  %pppoe_addr292 = getelementptr inbounds %struct.adapter, ptr %priv, i32 0, i32 56
  %bcmp605 = call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr291, ptr noundef dereferenceable(6) %pppoe_addr292, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp605)
  %tobool295.not = icmp eq i32 %bcmp605, 0
  br i1 %tobool295.not, label %if.then296, label %land.lhs.true289.cleanup483_crit_edge

land.lhs.true289.cleanup483_crit_edge:            ; preds = %land.lhs.true289
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

if.then296:                                       ; preds = %land.lhs.true289
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %pppoe_connection_in_progress287 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %pppoe_connection_in_progress287, align 4
  br label %cleanup483

cleanup301.critedge607:                           ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tag_buf) #10
  br label %cleanup483

cleanup301.critedge609:                           ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tag_buf) #10
  br label %cleanup483

cleanup301.critedge610:                           ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tag_buf) #10
  br label %cleanup483

if.then307:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %method)
  %switch.selectcmp = icmp ne i32 %method, 2
  %switch.select612 = sext i1 %switch.selectcmp to i32
  br label %cleanup483

if.then319:                                       ; preds = %if.end3.if.then319_crit_edge, %if.end3.if.then319_crit_edge624
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %method)
  %switch.selectcmp613 = icmp ne i32 %method, 2
  %switch.select616 = sext i1 %switch.selectcmp613 to i32
  br label %cleanup483

if.then327:                                       ; preds = %if.end3
  %len331 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %105 = ptrtoint ptr %len331 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %len331, align 4
  %sub332 = add i32 %106, -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %sub332)
  %cmp333 = icmp ult i32 %sub332, 41
  br i1 %cmp333, label %do.body336, label %if.end348

do.body336:                                       ; preds = %if.then327
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %107 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %107)
  %cmp337 = icmp ugt i32 %107, 4
  br i1 %cmp337, label %do.end342, label %do.body336.cleanup483_crit_edge

do.body336.cleanup483_crit_edge:                  ; preds = %do.body336
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

do.end342:                                        ; preds = %do.body336
  call void @__sanitizer_cov_trace_pc() #12
  %call344 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #13
  br label %cleanup483

if.end348:                                        ; preds = %if.then327
  %108 = zext i32 %method to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %method, label %if.end348.cleanup483_crit_edge [
    i32 1, label %sw.bb349
    i32 2, label %do.body357
  ]

if.end348.cleanup483_crit_edge:                   ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

sw.bb349:                                         ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %7, align 1
  %111 = and i8 %110, 1
  %sext = add nsw i8 %111, -1
  %.617 = sext i8 %sext to i32
  br label %cleanup483

do.body357:                                       ; preds = %if.end348
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %112 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %112)
  %cmp358 = icmp ugt i32 %112, 4
  br i1 %cmp358, label %do.end363, label %do.body357.do.end431_crit_edge

do.body357.do.end431_crit_edge:                   ; preds = %do.body357
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end431

do.end363:                                        ; preds = %do.body357
  call void @__sanitizer_cov_trace_pc() #12
  %saddr365 = getelementptr i8, ptr %7, i32 22
  %113 = ptrtoint ptr %saddr365 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %saddr365, align 4
  %conv367 = zext i16 %114 to i32
  %arrayidx370 = getelementptr i8, ptr %7, i32 24
  %115 = ptrtoint ptr %arrayidx370 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx370, align 2
  %conv371 = zext i16 %116 to i32
  %arrayidx374 = getelementptr i8, ptr %7, i32 26
  %117 = ptrtoint ptr %arrayidx374 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %arrayidx374, align 4
  %conv375 = zext i16 %118 to i32
  %arrayidx378 = getelementptr i8, ptr %7, i32 28
  %119 = ptrtoint ptr %arrayidx378 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx378, align 2
  %conv379 = zext i16 %120 to i32
  %arrayidx382 = getelementptr i8, ptr %7, i32 30
  %121 = ptrtoint ptr %arrayidx382 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx382, align 4
  %conv383 = zext i16 %122 to i32
  %arrayidx386 = getelementptr i8, ptr %7, i32 32
  %123 = ptrtoint ptr %arrayidx386 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx386, align 2
  %conv387 = zext i16 %124 to i32
  %arrayidx390 = getelementptr i8, ptr %7, i32 34
  %125 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx390, align 4
  %conv391 = zext i16 %126 to i32
  %arrayidx394 = getelementptr i8, ptr %7, i32 36
  %127 = ptrtoint ptr %arrayidx394 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx394, align 2
  %conv395 = zext i16 %128 to i32
  %daddr396 = getelementptr i8, ptr %7, i32 38
  %129 = ptrtoint ptr %daddr396 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %daddr396, align 4
  %conv399 = zext i16 %130 to i32
  %arrayidx402 = getelementptr i8, ptr %7, i32 40
  %131 = ptrtoint ptr %arrayidx402 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx402, align 2
  %conv403 = zext i16 %132 to i32
  %arrayidx406 = getelementptr i8, ptr %7, i32 42
  %133 = ptrtoint ptr %arrayidx406 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx406, align 4
  %conv407 = zext i16 %134 to i32
  %arrayidx410 = getelementptr i8, ptr %7, i32 44
  %135 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx410, align 2
  %conv411 = zext i16 %136 to i32
  %arrayidx414 = getelementptr i8, ptr %7, i32 46
  %137 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx414, align 4
  %conv415 = zext i16 %138 to i32
  %arrayidx418 = getelementptr i8, ptr %7, i32 48
  %139 = ptrtoint ptr %arrayidx418 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %arrayidx418, align 2
  %conv419 = zext i16 %140 to i32
  %arrayidx422 = getelementptr i8, ptr %7, i32 50
  %141 = ptrtoint ptr %arrayidx422 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %arrayidx422, align 4
  %conv423 = zext i16 %142 to i32
  %arrayidx426 = getelementptr i8, ptr %7, i32 52
  %143 = ptrtoint ptr %arrayidx426 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %arrayidx426, align 2
  %conv427 = zext i16 %144 to i32
  %call428 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv367, i32 noundef %conv371, i32 noundef %conv375, i32 noundef %conv379, i32 noundef %conv383, i32 noundef %conv387, i32 noundef %conv391, i32 noundef %conv395, i32 noundef %conv399, i32 noundef %conv403, i32 noundef %conv407, i32 noundef %conv411, i32 noundef %conv415, i32 noundef %conv419, i32 noundef %conv423, i32 noundef %conv427) #13
  br label %do.end431

do.end431:                                        ; preds = %do.end363, %do.body357.do.end431_crit_edge
  %saddr432 = getelementptr i8, ptr %7, i32 22
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %saddr432, ptr noundef nonnull dereferenceable(16) @.str.35, i32 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool434.not = icmp eq i32 %bcmp, 0
  br i1 %tobool434.not, label %do.end431.cleanup483_crit_edge, label %if.then435

do.end431.cleanup483_crit_edge:                   ; preds = %do.end431
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

if.then435:                                       ; preds = %do.end431
  %145 = call ptr @memset(ptr %0, i32 0, i32 16)
  %146 = ptrtoint ptr %networkAddr to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 2, ptr %networkAddr, align 1
  %147 = call ptr @memcpy(ptr %0, ptr %saddr432, i32 16)
  %148 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %data, align 4
  %add.ptr439 = getelementptr i8, ptr %149, i32 6
  call fastcc void @__nat25_db_network_insert(ptr noundef %priv, ptr noundef %add.ptr439, ptr noundef nonnull %networkAddr)
  %nexthdr = getelementptr i8, ptr %7, i32 20
  %150 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %nexthdr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %151)
  %cmp442 = icmp eq i8 %151, 58
  br i1 %cmp442, label %land.lhs.true444, label %if.then435.cleanup483_crit_edge

if.then435.cleanup483_crit_edge:                  ; preds = %if.then435
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

land.lhs.true444:                                 ; preds = %if.then435
  %152 = ptrtoint ptr %len331 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %len331, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 58, i32 %153)
  %cmp446 = icmp ugt i32 %153, 58
  br i1 %cmp446, label %if.then448, label %land.lhs.true444.cleanup483_crit_edge

land.lhs.true444.cleanup483_crit_edge:            ; preds = %land.lhs.true444
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

if.then448:                                       ; preds = %land.lhs.true444
  %154 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %data, align 4
  %add.ptr451 = getelementptr i8, ptr %155, i32 54
  %sub454 = add i32 %153, -54
  %mac_addr456 = getelementptr inbounds %struct.adapter, ptr %priv, i32 0, i32 15, i32 4
  %call458 = call fastcc i32 @update_nd_link_layer_addr(ptr noundef %add.ptr451, i32 noundef %sub454, ptr noundef %mac_addr456)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call458)
  %tobool459.not = icmp eq i32 %call458, 0
  br i1 %tobool459.not, label %if.then448.cleanup483_crit_edge, label %if.then460

if.then448.cleanup483_crit_edge:                  ; preds = %if.then448
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup483

if.then460:                                       ; preds = %if.then448
  call void @__sanitizer_cov_trace_pc() #12
  %156 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %data, align 4
  %add.ptr463 = getelementptr i8, ptr %157, i32 54
  %icmp6_cksum = getelementptr i8, ptr %157, i32 56
  %158 = ptrtoint ptr %icmp6_cksum to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 0, ptr %icmp6_cksum, align 2
  %daddr465 = getelementptr i8, ptr %7, i32 38
  %payload_len = getelementptr i8, ptr %7, i32 18
  %159 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %payload_len, align 4
  %conv466 = zext i16 %160 to i32
  %call469 = call i32 @csum_partial(ptr noundef %add.ptr463, i32 noundef %conv466, i32 noundef 0) #10
  %call.i = call i32 @__csum_ipv6_magic(ptr noundef %saddr432, ptr noundef %daddr465, i32 noundef %conv466, i32 noundef 58, i32 noundef %call469) #10
  %161 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i) #15, !srcloc !93
  %neg.i.i = xor i32 %161, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i.i = trunc i32 %shr.i.i to i16
  %162 = ptrtoint ptr %icmp6_cksum to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %conv.i.i, ptr %icmp6_cksum, align 2
  br label %cleanup483

cleanup483:                                       ; preds = %if.then460, %if.then448.cleanup483_crit_edge, %land.lhs.true444.cleanup483_crit_edge, %if.then435.cleanup483_crit_edge, %do.end431.cleanup483_crit_edge, %sw.bb349, %if.end348.cleanup483_crit_edge, %do.end342, %do.body336.cleanup483_crit_edge, %if.then319, %if.then307, %cleanup301.critedge610, %cleanup301.critedge609, %cleanup301.critedge607, %if.then296, %land.lhs.true289.cleanup483_crit_edge, %land.lhs.true286.cleanup483_crit_edge, %do.end276.cleanup483_crit_edge, %if.end258, %do.end243, %do.body237.cleanup483_crit_edge, %cleanup225, %do.end182, %do.end159, %if.then131.cleanup483_crit_edge, %sw.bb120, %if.then117.cleanup483_crit_edge, %sw.default105, %do.end97, %if.end72.cleanup483_crit_edge, %do.end64, %do.body58.cleanup483_crit_edge, %do.end43, %sw.bb26.cleanup483_crit_edge, %if.end25.cleanup483_crit_edge, %do.end, %do.body.cleanup483_crit_edge, %if.end3.cleanup483_crit_edge, %entry.cleanup483_crit_edge
  %retval.5 = phi i32 [ -1, %entry.cleanup483_crit_edge ], [ 0, %do.end43 ], [ -1, %do.end ], [ -1, %do.body.cleanup483_crit_edge ], [ 0, %sw.bb26.cleanup483_crit_edge ], [ -1, %if.end25.cleanup483_crit_edge ], [ -1, %sw.default105 ], [ 0, %do.end97 ], [ -1, %do.end64 ], [ -1, %do.body58.cleanup483_crit_edge ], [ 0, %if.end72.cleanup483_crit_edge ], [ %., %sw.bb120 ], [ -1, %do.end159 ], [ -1, %cleanup301.critedge607 ], [ -1, %do.end182 ], [ -1, %cleanup301.critedge609 ], [ -1, %cleanup301.critedge610 ], [ -2, %do.end243 ], [ -2, %do.body237.cleanup483_crit_edge ], [ -1, %if.then131.cleanup483_crit_edge ], [ 0, %cleanup225 ], [ 0, %do.end276.cleanup483_crit_edge ], [ 0, %land.lhs.true286.cleanup483_crit_edge ], [ 0, %land.lhs.true289.cleanup483_crit_edge ], [ 0, %if.then296 ], [ 0, %if.end258 ], [ -1, %if.then117.cleanup483_crit_edge ], [ %switch.select612, %if.then307 ], [ %switch.select616, %if.then319 ], [ -1, %do.end342 ], [ -1, %do.body336.cleanup483_crit_edge ], [ %.617, %sw.bb349 ], [ 0, %if.then435.cleanup483_crit_edge ], [ 0, %land.lhs.true444.cleanup483_crit_edge ], [ 0, %if.then460 ], [ 0, %if.then448.cleanup483_crit_edge ], [ 0, %do.end431.cleanup483_crit_edge ], [ -1, %if.end348.cleanup483_crit_edge ], [ -1, %if.end3.cleanup483_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %networkAddr) #10
  ret i32 %retval.5
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__nat25_db_network_insert(ptr noundef %priv, ptr nocapture noundef readonly %macAddr, ptr noundef %networkAddr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %br_ext_lock = getelementptr inbounds %struct.adapter, ptr %priv, i32 0, i32 53
  tail call void @_raw_spin_lock_bh(ptr noundef %br_ext_lock) #10
  %call = tail call fastcc i32 @__nat25_network_hash(ptr noundef %networkAddr)
  %arrayidx = getelementptr %struct.adapter, ptr %priv, i32 0, i32 54, i32 %call
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %db.0.in = phi ptr [ %arrayidx, %entry ], [ %db.0, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %db.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %db.0 = load ptr, ptr %db.0.in, align 4
  %tobool.not = icmp eq ptr %db.0, null
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %networkAddr1 = getelementptr inbounds %struct.nat25_network_db_entry, ptr %db.0, i32 0, i32 5
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(17) %networkAddr1, ptr noundef dereferenceable(17) %networkAddr, i32 17) #14
  %tobool3.not = icmp eq i32 %bcmp, 0
  br i1 %tobool3.not, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %macAddr4 = getelementptr inbounds %struct.nat25_network_db_entry, ptr %db.0, i32 0, i32 3
  %1 = call ptr @memcpy(ptr %macAddr4, ptr %macAddr, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %ageing_timer = getelementptr inbounds %struct.nat25_network_db_entry, ptr %db.0, i32 0, i32 4
  %3 = ptrtoint ptr %ageing_timer to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %ageing_timer, align 4
  br label %cleanup

while.end:                                        ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2592, i32 noundef 44) #16
  %tobool8.not = icmp eq ptr %call7.i, null
  br i1 %tobool8.not, label %while.end.cleanup_crit_edge, label %if.end11

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %while.end
  %networkAddr12 = getelementptr inbounds %struct.nat25_network_db_entry, ptr %call7.i, i32 0, i32 5
  %5 = call ptr @memcpy(ptr %networkAddr12, ptr %networkAddr, i32 17)
  %macAddr14 = getelementptr inbounds %struct.nat25_network_db_entry, ptr %call7.i, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %macAddr14, ptr %macAddr, i32 6)
  %use_count = getelementptr inbounds %struct.nat25_network_db_entry, ptr %call7.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count, i32 noundef 4) #10
  %7 = ptrtoint ptr %use_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %use_count, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %ageing_timer16 = getelementptr inbounds %struct.nat25_network_db_entry, ptr %call7.i, i32 0, i32 4
  %9 = ptrtoint ptr %ageing_timer16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %ageing_timer16, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %call7.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end11.__network_hash_link.exit_crit_edge, label %if.then.i

if.end11.__network_hash_link.exit_crit_edge:      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %__network_hash_link.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %pprev_hash.i = getelementptr inbounds %struct.nat25_network_db_entry, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %pprev_hash.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i, ptr %pprev_hash.i, align 4
  br label %__network_hash_link.exit

__network_hash_link.exit:                         ; preds = %if.then.i, %if.end11.__network_hash_link.exit_crit_edge
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i, ptr %arrayidx, align 4
  %pprev_hash8.i = getelementptr inbounds %struct.nat25_network_db_entry, ptr %call7.i, i32 0, i32 1
  %15 = ptrtoint ptr %pprev_hash8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx, ptr %pprev_hash8.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %__network_hash_link.exit, %while.end.cleanup_crit_edge, %if.then
  tail call void @_raw_spin_unlock_bh(ptr noundef %br_ext_lock) #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__nat25_find_pppoe_tag(ptr noundef %ph) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tag = getelementptr inbounds %struct.pppoe_hdr, ptr %ph, i32 0, i32 4
  %sub.ptr.rhs.cast = ptrtoint ptr %tag to i32
  %length = getelementptr inbounds %struct.pppoe_hdr, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %length, align 1
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp2.not = icmp eq i16 %1, 0
  br i1 %cmp2.not, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %cur_ptr.03 = phi ptr [ %add.ptr18, %if.end.while.body_crit_edge ], [ %tag, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %cur_ptr.03 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cur_ptr.03, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %arrayidx3 = getelementptr i8, ptr %cur_ptr.03, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %add = or i32 %shl, %conv4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %add)
  %cmp15 = icmp eq i32 %add, 272
  br i1 %cmp15, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %while.body
  %arrayidx9 = getelementptr i8, ptr %cur_ptr.03, i32 3
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  %arrayidx6 = getelementptr i8, ptr %cur_ptr.03, i32 2
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  %shl8 = shl nuw nsw i32 %conv7, 8
  %conv10 = zext i8 %7 to i32
  %add11 = or i32 %shl8, %conv10
  %add.ptr = getelementptr i8, ptr %cur_ptr.03, i32 4
  %add.ptr18 = getelementptr i8, ptr %add.ptr, i32 %add11
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr18 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i32 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %cur_ptr.03, %while.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skb_pull_and_merge(ptr noundef %skb, ptr noundef %src, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %src, i32 %len
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  %cmp = icmp ugt ptr %add.ptr, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %len)
  %cmp2 = icmp ult i32 %3, %len
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %1 to i32
  %5 = ptrtoint ptr %src to i32
  %add = add i32 %5, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %4)
  %cmp4 = icmp ugt i32 %add, %4
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %sub = sub i32 %4, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp7 = icmp sgt i32 %sub, 0
  br i1 %cmp7, label %if.then8, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %6 = call ptr @memmove(ptr %src, ptr %add.ptr, i32 %sub)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %7 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len1, align 4
  %sub12 = sub i32 %8, %len
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub12) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__nat25_add_pppoe_tag(ptr noundef %skb, ptr nocapture noundef readonly %tag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tag_len = getelementptr inbounds %struct.pppoe_tag, ptr %tag, i32 0, i32 1
  %2 = ptrtoint ptr %tag_len to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %tag_len, align 1
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

skb_tailroom.exit:                                ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %add)
  %cmp = icmp slt i32 %sub.ptr.sub.i, %add
  br i1 %cmp, label %skb_tailroom.exit.do.body_crit_edge, label %if.end9

skb_tailroom.exit.do.body_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %skb_tailroom.exit.do.body_crit_edge, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %10 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp2 = icmp ugt i32 %10, 4
  br i1 %cmp2, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #13
  br label %cleanup

if.end9:                                          ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %add) #10
  %tag11 = getelementptr i8, ptr %1, i32 20
  %add.ptr12 = getelementptr i8, ptr %tag11, i32 %add
  %length = getelementptr i8, ptr %1, i32 18
  %11 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %length, align 1
  %conv15 = zext i16 %12 to i32
  %13 = call ptr @memmove(ptr %add.ptr12, ptr %tag11, i32 %conv15)
  %14 = load i16, ptr %length, align 1
  %15 = trunc i32 %add to i16
  %conv19 = add i16 %14, %15
  store i16 %conv19, ptr %length, align 1
  %16 = call ptr @memcpy(ptr %tag11, ptr %tag, i32 %add)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end9 ], [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_nd_link_layer_addr(ptr noundef %data, i32 noundef %len, ptr noundef readonly %replace_mac) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 -123, label %if.then
    i8 -122, label %if.then43
    i8 -121, label %if.then95
    i8 -120, label %if.then147
    i8 -119, label %if.then199
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %3 = icmp sgt i32 %len, 8
  br i1 %3, label %while.body.i.preheader, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i.preheader:                           ; preds = %if.then
  %sub = add nsw i32 %len, -8
  %arrayidx = getelementptr i8, ptr %data, i32 8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.i.preheader
  %data.addr.06.i = phi ptr [ %add.ptr19.i, %if.end.i.while.body.i_crit_edge ], [ %arrayidx, %while.body.i.preheader ]
  %len.addr.04.i = phi i32 [ %sub.i, %if.end.i.while.body.i_crit_edge ], [ %sub, %while.body.i.preheader ]
  %4 = ptrtoint ptr %data.addr.06.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data.addr.06.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp2.i = icmp eq i8 %5, 1
  br i1 %cmp2.i, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %add.ptr.i = getelementptr i8, ptr %data.addr.06.i, i32 1
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp6.i = icmp eq i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %len.addr.04.i)
  %cmp10.i = icmp ugt i32 %len.addr.04.i, 7
  %or.cond.i = select i1 %cmp6.i, i1 %cmp10.i, i1 false
  br i1 %or.cond.i, label %scan_tlv.exit, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %add.ptr13.i = getelementptr i8, ptr %data.addr.06.i, i32 1
  %8 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr13.i, align 1
  %conv14.i = zext i8 %9 to i32
  %mul15.i = shl nuw nsw i32 %conv14.i, 3
  %sub.i = sub nsw i32 %len.addr.04.i, %mul15.i
  %add.ptr19.i = getelementptr i8, ptr %data.addr.06.i, i32 %mul15.i
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

scan_tlv.exit:                                    ; preds = %land.lhs.true.i
  %add.ptr12.i = getelementptr i8, ptr %data.addr.06.i, i32 2
  %tobool.not = icmp eq ptr %add.ptr12.i, null
  br i1 %tobool.not, label %scan_tlv.exit.cleanup_crit_edge, label %do.body

scan_tlv.exit.cleanup_crit_edge:                  ; preds = %scan_tlv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %scan_tlv.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %10 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp6 = icmp ugt i32 %10, 4
  br i1 %cmp6, label %do.body.cleanup.sink.split.sink.split_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body.cleanup.sink.split.sink.split_crit_edge:  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

if.then43:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %11 = icmp sgt i32 %len, 16
  br i1 %11, label %while.body.i347.preheader, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i347.preheader:                        ; preds = %if.then43
  %sub48 = add nsw i32 %len, -16
  %arrayidx47 = getelementptr i8, ptr %data, i32 16
  br label %while.body.i347

while.body.i347:                                  ; preds = %if.end.i361.while.body.i347_crit_edge, %while.body.i347.preheader
  %data.addr.06.i344 = phi ptr [ %add.ptr19.i359, %if.end.i361.while.body.i347_crit_edge ], [ %arrayidx47, %while.body.i347.preheader ]
  %len.addr.04.i345 = phi i32 [ %sub.i358, %if.end.i361.while.body.i347_crit_edge ], [ %sub48, %while.body.i347.preheader ]
  %12 = ptrtoint ptr %data.addr.06.i344 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data.addr.06.i344, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp2.i346 = icmp eq i8 %13, 1
  br i1 %cmp2.i346, label %land.lhs.true.i352, label %while.body.i347.if.end.i361_crit_edge

while.body.i347.if.end.i361_crit_edge:            ; preds = %while.body.i347
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i361

land.lhs.true.i352:                               ; preds = %while.body.i347
  %add.ptr.i348 = getelementptr i8, ptr %data.addr.06.i344, i32 1
  %14 = ptrtoint ptr %add.ptr.i348 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i348, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp6.i349 = icmp eq i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %len.addr.04.i345)
  %cmp10.i350 = icmp ugt i32 %len.addr.04.i345, 7
  %or.cond.i351 = select i1 %cmp6.i349, i1 %cmp10.i350, i1 false
  br i1 %or.cond.i351, label %scan_tlv.exit363, label %land.lhs.true.i352.if.end.i361_crit_edge

land.lhs.true.i352.if.end.i361_crit_edge:         ; preds = %land.lhs.true.i352
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i361

if.end.i361:                                      ; preds = %land.lhs.true.i352.if.end.i361_crit_edge, %while.body.i347.if.end.i361_crit_edge
  %add.ptr13.i355 = getelementptr i8, ptr %data.addr.06.i344, i32 1
  %16 = ptrtoint ptr %add.ptr13.i355 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr13.i355, align 1
  %conv14.i356 = zext i8 %17 to i32
  %mul15.i357 = shl nuw nsw i32 %conv14.i356, 3
  %sub.i358 = sub nsw i32 %len.addr.04.i345, %mul15.i357
  %add.ptr19.i359 = getelementptr i8, ptr %data.addr.06.i344, i32 %mul15.i357
  %cmp.i360 = icmp sgt i32 %sub.i358, 0
  br i1 %cmp.i360, label %if.end.i361.while.body.i347_crit_edge, label %if.end.i361.cleanup_crit_edge

if.end.i361.cleanup_crit_edge:                    ; preds = %if.end.i361
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i361.while.body.i347_crit_edge:            ; preds = %if.end.i361
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i347

scan_tlv.exit363:                                 ; preds = %land.lhs.true.i352
  %add.ptr12.i353 = getelementptr i8, ptr %data.addr.06.i344, i32 2
  %tobool50.not = icmp eq ptr %add.ptr12.i353, null
  br i1 %tobool50.not, label %scan_tlv.exit363.cleanup_crit_edge, label %do.body52

scan_tlv.exit363.cleanup_crit_edge:               ; preds = %scan_tlv.exit363
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body52:                                        ; preds = %scan_tlv.exit363
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %18 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp53 = icmp ugt i32 %18, 4
  br i1 %cmp53, label %do.body52.cleanup.sink.split.sink.split_crit_edge, label %do.body52.cleanup.sink.split_crit_edge

do.body52.cleanup.sink.split_crit_edge:           ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body52.cleanup.sink.split.sink.split_crit_edge: ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

if.then95:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %len)
  %19 = icmp sgt i32 %len, 24
  br i1 %19, label %while.body.i368.preheader, label %if.then95.cleanup_crit_edge

if.then95.cleanup_crit_edge:                      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i368.preheader:                        ; preds = %if.then95
  %sub100 = add nsw i32 %len, -24
  %arrayidx99 = getelementptr i8, ptr %data, i32 24
  br label %while.body.i368

while.body.i368:                                  ; preds = %if.end.i382.while.body.i368_crit_edge, %while.body.i368.preheader
  %data.addr.06.i365 = phi ptr [ %add.ptr19.i380, %if.end.i382.while.body.i368_crit_edge ], [ %arrayidx99, %while.body.i368.preheader ]
  %len.addr.04.i366 = phi i32 [ %sub.i379, %if.end.i382.while.body.i368_crit_edge ], [ %sub100, %while.body.i368.preheader ]
  %20 = ptrtoint ptr %data.addr.06.i365 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data.addr.06.i365, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp2.i367 = icmp eq i8 %21, 1
  br i1 %cmp2.i367, label %land.lhs.true.i373, label %while.body.i368.if.end.i382_crit_edge

while.body.i368.if.end.i382_crit_edge:            ; preds = %while.body.i368
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i382

land.lhs.true.i373:                               ; preds = %while.body.i368
  %add.ptr.i369 = getelementptr i8, ptr %data.addr.06.i365, i32 1
  %22 = ptrtoint ptr %add.ptr.i369 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr.i369, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp6.i370 = icmp eq i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %len.addr.04.i366)
  %cmp10.i371 = icmp ugt i32 %len.addr.04.i366, 7
  %or.cond.i372 = select i1 %cmp6.i370, i1 %cmp10.i371, i1 false
  br i1 %or.cond.i372, label %scan_tlv.exit384, label %land.lhs.true.i373.if.end.i382_crit_edge

land.lhs.true.i373.if.end.i382_crit_edge:         ; preds = %land.lhs.true.i373
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i382

if.end.i382:                                      ; preds = %land.lhs.true.i373.if.end.i382_crit_edge, %while.body.i368.if.end.i382_crit_edge
  %add.ptr13.i376 = getelementptr i8, ptr %data.addr.06.i365, i32 1
  %24 = ptrtoint ptr %add.ptr13.i376 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr13.i376, align 1
  %conv14.i377 = zext i8 %25 to i32
  %mul15.i378 = shl nuw nsw i32 %conv14.i377, 3
  %sub.i379 = sub nsw i32 %len.addr.04.i366, %mul15.i378
  %add.ptr19.i380 = getelementptr i8, ptr %data.addr.06.i365, i32 %mul15.i378
  %cmp.i381 = icmp sgt i32 %sub.i379, 0
  br i1 %cmp.i381, label %if.end.i382.while.body.i368_crit_edge, label %if.end.i382.cleanup_crit_edge

if.end.i382.cleanup_crit_edge:                    ; preds = %if.end.i382
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i382.while.body.i368_crit_edge:            ; preds = %if.end.i382
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i368

scan_tlv.exit384:                                 ; preds = %land.lhs.true.i373
  %add.ptr12.i374 = getelementptr i8, ptr %data.addr.06.i365, i32 2
  %tobool102.not = icmp eq ptr %add.ptr12.i374, null
  br i1 %tobool102.not, label %scan_tlv.exit384.cleanup_crit_edge, label %do.body104

scan_tlv.exit384.cleanup_crit_edge:               ; preds = %scan_tlv.exit384
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body104:                                       ; preds = %scan_tlv.exit384
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %26 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp105 = icmp ugt i32 %26, 4
  br i1 %cmp105, label %do.body104.cleanup.sink.split.sink.split_crit_edge, label %do.body104.cleanup.sink.split_crit_edge

do.body104.cleanup.sink.split_crit_edge:          ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body104.cleanup.sink.split.sink.split_crit_edge: ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

if.then147:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %len)
  %27 = icmp sgt i32 %len, 24
  br i1 %27, label %while.body.i389.preheader, label %if.then147.cleanup_crit_edge

if.then147.cleanup_crit_edge:                     ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i389.preheader:                        ; preds = %if.then147
  %sub152 = add nsw i32 %len, -24
  %arrayidx151 = getelementptr i8, ptr %data, i32 24
  br label %while.body.i389

while.body.i389:                                  ; preds = %if.end.i403.while.body.i389_crit_edge, %while.body.i389.preheader
  %data.addr.06.i386 = phi ptr [ %add.ptr19.i401, %if.end.i403.while.body.i389_crit_edge ], [ %arrayidx151, %while.body.i389.preheader ]
  %len.addr.04.i387 = phi i32 [ %sub.i400, %if.end.i403.while.body.i389_crit_edge ], [ %sub152, %while.body.i389.preheader ]
  %28 = ptrtoint ptr %data.addr.06.i386 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %data.addr.06.i386, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp2.i388 = icmp eq i8 %29, 2
  br i1 %cmp2.i388, label %land.lhs.true.i394, label %while.body.i389.if.end.i403_crit_edge

while.body.i389.if.end.i403_crit_edge:            ; preds = %while.body.i389
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i403

land.lhs.true.i394:                               ; preds = %while.body.i389
  %add.ptr.i390 = getelementptr i8, ptr %data.addr.06.i386, i32 1
  %30 = ptrtoint ptr %add.ptr.i390 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr.i390, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp6.i391 = icmp eq i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %len.addr.04.i387)
  %cmp10.i392 = icmp ugt i32 %len.addr.04.i387, 7
  %or.cond.i393 = select i1 %cmp6.i391, i1 %cmp10.i392, i1 false
  br i1 %or.cond.i393, label %scan_tlv.exit405, label %land.lhs.true.i394.if.end.i403_crit_edge

land.lhs.true.i394.if.end.i403_crit_edge:         ; preds = %land.lhs.true.i394
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i403

if.end.i403:                                      ; preds = %land.lhs.true.i394.if.end.i403_crit_edge, %while.body.i389.if.end.i403_crit_edge
  %add.ptr13.i397 = getelementptr i8, ptr %data.addr.06.i386, i32 1
  %32 = ptrtoint ptr %add.ptr13.i397 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr13.i397, align 1
  %conv14.i398 = zext i8 %33 to i32
  %mul15.i399 = shl nuw nsw i32 %conv14.i398, 3
  %sub.i400 = sub nsw i32 %len.addr.04.i387, %mul15.i399
  %add.ptr19.i401 = getelementptr i8, ptr %data.addr.06.i386, i32 %mul15.i399
  %cmp.i402 = icmp sgt i32 %sub.i400, 0
  br i1 %cmp.i402, label %if.end.i403.while.body.i389_crit_edge, label %if.end.i403.cleanup_crit_edge

if.end.i403.cleanup_crit_edge:                    ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i403.while.body.i389_crit_edge:            ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i389

scan_tlv.exit405:                                 ; preds = %land.lhs.true.i394
  %add.ptr12.i395 = getelementptr i8, ptr %data.addr.06.i386, i32 2
  %tobool154.not = icmp eq ptr %add.ptr12.i395, null
  br i1 %tobool154.not, label %scan_tlv.exit405.cleanup_crit_edge, label %do.body156

scan_tlv.exit405.cleanup_crit_edge:               ; preds = %scan_tlv.exit405
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body156:                                       ; preds = %scan_tlv.exit405
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %34 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp157 = icmp ugt i32 %34, 4
  br i1 %cmp157, label %do.body156.cleanup.sink.split.sink.split_crit_edge, label %do.body156.cleanup.sink.split_crit_edge

do.body156.cleanup.sink.split_crit_edge:          ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body156.cleanup.sink.split.sink.split_crit_edge: ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

if.then199:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %len)
  %35 = icmp sgt i32 %len, 40
  br i1 %35, label %while.body.i410.preheader, label %if.then199.cleanup_crit_edge

if.then199.cleanup_crit_edge:                     ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i410.preheader:                        ; preds = %if.then199
  %sub204 = add nsw i32 %len, -40
  %arrayidx203 = getelementptr i8, ptr %data, i32 40
  br label %while.body.i410

while.body.i410:                                  ; preds = %if.end.i424.while.body.i410_crit_edge, %while.body.i410.preheader
  %data.addr.06.i407 = phi ptr [ %add.ptr19.i422, %if.end.i424.while.body.i410_crit_edge ], [ %arrayidx203, %while.body.i410.preheader ]
  %len.addr.04.i408 = phi i32 [ %sub.i421, %if.end.i424.while.body.i410_crit_edge ], [ %sub204, %while.body.i410.preheader ]
  %36 = ptrtoint ptr %data.addr.06.i407 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data.addr.06.i407, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %37)
  %cmp2.i409 = icmp eq i8 %37, 2
  br i1 %cmp2.i409, label %land.lhs.true.i415, label %while.body.i410.if.end.i424_crit_edge

while.body.i410.if.end.i424_crit_edge:            ; preds = %while.body.i410
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i424

land.lhs.true.i415:                               ; preds = %while.body.i410
  %add.ptr.i411 = getelementptr i8, ptr %data.addr.06.i407, i32 1
  %38 = ptrtoint ptr %add.ptr.i411 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr.i411, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp6.i412 = icmp eq i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %len.addr.04.i408)
  %cmp10.i413 = icmp ugt i32 %len.addr.04.i408, 7
  %or.cond.i414 = select i1 %cmp6.i412, i1 %cmp10.i413, i1 false
  br i1 %or.cond.i414, label %scan_tlv.exit426, label %land.lhs.true.i415.if.end.i424_crit_edge

land.lhs.true.i415.if.end.i424_crit_edge:         ; preds = %land.lhs.true.i415
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i424

if.end.i424:                                      ; preds = %land.lhs.true.i415.if.end.i424_crit_edge, %while.body.i410.if.end.i424_crit_edge
  %add.ptr13.i418 = getelementptr i8, ptr %data.addr.06.i407, i32 1
  %40 = ptrtoint ptr %add.ptr13.i418 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr13.i418, align 1
  %conv14.i419 = zext i8 %41 to i32
  %mul15.i420 = shl nuw nsw i32 %conv14.i419, 3
  %sub.i421 = sub nsw i32 %len.addr.04.i408, %mul15.i420
  %add.ptr19.i422 = getelementptr i8, ptr %data.addr.06.i407, i32 %mul15.i420
  %cmp.i423 = icmp sgt i32 %sub.i421, 0
  br i1 %cmp.i423, label %if.end.i424.while.body.i410_crit_edge, label %if.end.i424.cleanup_crit_edge

if.end.i424.cleanup_crit_edge:                    ; preds = %if.end.i424
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i424.while.body.i410_crit_edge:            ; preds = %if.end.i424
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i410

scan_tlv.exit426:                                 ; preds = %land.lhs.true.i415
  %add.ptr12.i416 = getelementptr i8, ptr %data.addr.06.i407, i32 2
  %tobool206.not = icmp eq ptr %add.ptr12.i416, null
  br i1 %tobool206.not, label %scan_tlv.exit426.cleanup_crit_edge, label %do.body208

scan_tlv.exit426.cleanup_crit_edge:               ; preds = %scan_tlv.exit426
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body208:                                       ; preds = %scan_tlv.exit426
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %42 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp209 = icmp ugt i32 %42, 4
  br i1 %cmp209, label %do.body208.cleanup.sink.split.sink.split_crit_edge, label %do.body208.cleanup.sink.split_crit_edge

do.body208.cleanup.sink.split_crit_edge:          ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body208.cleanup.sink.split.sink.split_crit_edge: ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %do.body208.cleanup.sink.split.sink.split_crit_edge, %do.body156.cleanup.sink.split.sink.split_crit_edge, %do.body104.cleanup.sink.split.sink.split_crit_edge, %do.body52.cleanup.sink.split.sink.split_crit_edge, %do.body.cleanup.sink.split.sink.split_crit_edge
  %add.ptr12.i416.sink472 = phi ptr [ %add.ptr12.i, %do.body.cleanup.sink.split.sink.split_crit_edge ], [ %add.ptr12.i353, %do.body52.cleanup.sink.split.sink.split_crit_edge ], [ %add.ptr12.i374, %do.body104.cleanup.sink.split.sink.split_crit_edge ], [ %add.ptr12.i395, %do.body156.cleanup.sink.split.sink.split_crit_edge ], [ %add.ptr12.i416, %do.body208.cleanup.sink.split.sink.split_crit_edge ]
  %data.addr.06.i407.lcssa.sink471 = phi ptr [ %data.addr.06.i, %do.body.cleanup.sink.split.sink.split_crit_edge ], [ %data.addr.06.i344, %do.body52.cleanup.sink.split.sink.split_crit_edge ], [ %data.addr.06.i365, %do.body104.cleanup.sink.split.sink.split_crit_edge ], [ %data.addr.06.i386, %do.body156.cleanup.sink.split.sink.split_crit_edge ], [ %data.addr.06.i407, %do.body208.cleanup.sink.split.sink.split_crit_edge ]
  %.str.52.sink = phi ptr [ @.str.40, %do.body.cleanup.sink.split.sink.split_crit_edge ], [ @.str.43, %do.body52.cleanup.sink.split.sink.split_crit_edge ], [ @.str.46, %do.body104.cleanup.sink.split.sink.split_crit_edge ], [ @.str.49, %do.body156.cleanup.sink.split.sink.split_crit_edge ], [ @.str.52, %do.body208.cleanup.sink.split.sink.split_crit_edge ]
  %43 = ptrtoint ptr %add.ptr12.i416.sink472 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr12.i416.sink472, align 1
  %conv217 = zext i8 %44 to i32
  %arrayidx218 = getelementptr i8, ptr %data.addr.06.i407.lcssa.sink471, i32 3
  %45 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx218, align 1
  %conv219 = zext i8 %46 to i32
  %arrayidx220 = getelementptr i8, ptr %data.addr.06.i407.lcssa.sink471, i32 4
  %47 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx220, align 1
  %conv221 = zext i8 %48 to i32
  %arrayidx222 = getelementptr i8, ptr %data.addr.06.i407.lcssa.sink471, i32 5
  %49 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx222, align 1
  %conv223 = zext i8 %50 to i32
  %arrayidx224 = getelementptr i8, ptr %data.addr.06.i407.lcssa.sink471, i32 6
  %51 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx224, align 1
  %conv225 = zext i8 %52 to i32
  %arrayidx226 = getelementptr i8, ptr %data.addr.06.i407.lcssa.sink471, i32 7
  %53 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx226, align 1
  %conv227 = zext i8 %54 to i32
  %55 = ptrtoint ptr %replace_mac to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %replace_mac, align 1
  %conv229 = zext i8 %56 to i32
  %arrayidx230 = getelementptr i8, ptr %replace_mac, i32 1
  %57 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx230, align 1
  %conv231 = zext i8 %58 to i32
  %arrayidx232 = getelementptr i8, ptr %replace_mac, i32 2
  %59 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx232, align 1
  %conv233 = zext i8 %60 to i32
  %arrayidx234 = getelementptr i8, ptr %replace_mac, i32 3
  %61 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx234, align 1
  %conv235 = zext i8 %62 to i32
  %arrayidx236 = getelementptr i8, ptr %replace_mac, i32 4
  %63 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx236, align 1
  %conv237 = zext i8 %64 to i32
  %arrayidx238 = getelementptr i8, ptr %replace_mac, i32 5
  %65 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx238, align 1
  %conv239 = zext i8 %66 to i32
  %call240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.52.sink, i32 noundef %conv217, i32 noundef %conv219, i32 noundef %conv221, i32 noundef %conv223, i32 noundef %conv225, i32 noundef %conv227, i32 noundef %conv229, i32 noundef %conv231, i32 noundef %conv233, i32 noundef %conv235, i32 noundef %conv237, i32 noundef %conv239) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %do.body208.cleanup.sink.split_crit_edge, %do.body156.cleanup.sink.split_crit_edge, %do.body104.cleanup.sink.split_crit_edge, %do.body52.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %add.ptr12.i416.sink = phi ptr [ %add.ptr12.i, %do.body.cleanup.sink.split_crit_edge ], [ %add.ptr12.i353, %do.body52.cleanup.sink.split_crit_edge ], [ %add.ptr12.i374, %do.body104.cleanup.sink.split_crit_edge ], [ %add.ptr12.i395, %do.body156.cleanup.sink.split_crit_edge ], [ %add.ptr12.i416, %do.body208.cleanup.sink.split_crit_edge ], [ %add.ptr12.i416.sink472, %cleanup.sink.split.sink.split ]
  %67 = call ptr @memcpy(ptr %add.ptr12.i416.sink, ptr %replace_mac, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %scan_tlv.exit426.cleanup_crit_edge, %if.end.i424.cleanup_crit_edge, %if.then199.cleanup_crit_edge, %scan_tlv.exit405.cleanup_crit_edge, %if.end.i403.cleanup_crit_edge, %if.then147.cleanup_crit_edge, %scan_tlv.exit384.cleanup_crit_edge, %if.end.i382.cleanup_crit_edge, %if.then95.cleanup_crit_edge, %scan_tlv.exit363.cleanup_crit_edge, %if.end.i361.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %scan_tlv.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %scan_tlv.exit363.cleanup_crit_edge ], [ 0, %if.then43.cleanup_crit_edge ], [ 0, %scan_tlv.exit405.cleanup_crit_edge ], [ 0, %if.then147.cleanup_crit_edge ], [ 0, %if.then199.cleanup_crit_edge ], [ 0, %scan_tlv.exit426.cleanup_crit_edge ], [ 0, %if.then95.cleanup_crit_edge ], [ 0, %scan_tlv.exit384.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %scan_tlv.exit.cleanup_crit_edge ], [ 1, %cleanup.sink.split ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end.i361.cleanup_crit_edge ], [ 0, %if.end.i382.cleanup_crit_edge ], [ 0, %if.end.i403.cleanup_crit_edge ], [ 0, %if.end.i424.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dhcp_flag_bcast(ptr nocapture noundef readonly %priv, ptr noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.if.end55_crit_edge, label %if.end

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.end:                                           ; preds = %entry
  %dhcp_bcst_disable = getelementptr inbounds %struct.adapter, ptr %priv, i32 0, i32 62, i32 2
  %0 = ptrtoint ptr %dhcp_bcst_disable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dhcp_bcst_disable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end55_crit_edge

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then2:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %5)
  %cmp = icmp eq i16 %5, 2048
  br i1 %cmp, label %if.then4, label %if.then2.if.end55_crit_edge

if.then2.if.end55_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then4:                                         ; preds = %if.then2
  %protocol7 = getelementptr i8, ptr %3, i32 23
  %6 = ptrtoint ptr %protocol7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %protocol7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %7)
  %cmp9 = icmp eq i8 %7, 17
  br i1 %cmp9, label %if.then11, label %if.then4.if.end55_crit_edge

if.then4.if.end55_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then11:                                        ; preds = %if.then4
  %add.ptr6 = getelementptr i8, ptr %3, i32 14
  %8 = ptrtoint ptr %add.ptr6 to i32
  %9 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %add.ptr6, align 4
  %bf.clear = shl i8 %bf.load, 2
  %10 = and i8 %bf.clear, 60
  %shl = zext i8 %10 to i32
  %add = add i32 %shl, %8
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 68, i16 %13)
  %cmp14 = icmp eq i16 %13, 68
  br i1 %cmp14, label %land.lhs.true, label %if.then11.if.end55_crit_edge

if.then11.if.end55_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

land.lhs.true:                                    ; preds = %if.then11
  %dest = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dest, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 67, i16 %15)
  %cmp17 = icmp eq i16 %15, 67
  br i1 %cmp17, label %if.then19, label %land.lhs.true.if.end55_crit_edge

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then19:                                        ; preds = %land.lhs.true
  %add20 = add i32 %add, 8
  %16 = inttoptr i32 %add20 to ptr
  %cookie21 = getelementptr inbounds %struct.dhcpMessage, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %cookie21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cookie21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1669485411, i32 %18)
  %cmp22 = icmp eq i32 %18, 1669485411
  br i1 %cmp22, label %if.then24, label %if.then19.if.end55_crit_edge

if.then19.if.end55_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then24:                                        ; preds = %if.then19
  %flags = getelementptr inbounds %struct.dhcpMessage, ptr %16, i32 0, i32 6
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %tobool26.not = icmp sgt i16 %20, -1
  br i1 %tobool26.not, label %if.then27, label %if.then24.if.end55_crit_edge

if.then24.if.end55_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then27:                                        ; preds = %if.then24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %21 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp28 = icmp ugt i32 %21, 4
  br i1 %cmp28, label %do.end, label %if.then27.do.end34_crit_edge

if.then27.do.end34_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

do.end:                                           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #13
  br label %do.end34

do.end34:                                         ; preds = %do.end, %if.then27.do.end34_crit_edge
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags, align 2
  %24 = or i16 %23, -32768
  store i16 %24, ptr %flags, align 2
  %check = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 3
  %25 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %check, align 2
  %27 = xor i16 %26, -1
  %and39 = zext i16 %27 to i32
  %conv41 = zext i16 %24 to i32
  %add42 = add nuw nsw i32 %and39, %conv41
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add42)
  %tobool43.not71 = icmp ult i32 %add42, 65536
  %phi.bo = and i32 %add42, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %phi.bo)
  %tobool43.not.not.peel = icmp eq i32 %phi.bo, 65535
  %sum.072.lcssa = select i1 %tobool43.not.not.peel, i32 0, i32 %phi.bo
  %add46.le = add nuw nsw i32 %sum.072.lcssa, 1
  %sum.0.lcssa = select i1 %tobool43.not71, i32 %add42, i32 %add46.le
  %28 = trunc i32 %sum.0.lcssa to i16
  %conv48 = xor i16 %28, -1
  %29 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv48, ptr %check, align 2
  br label %if.end55

if.end55:                                         ; preds = %do.end34, %if.then24.if.end55_crit_edge, %if.then19.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge, %if.then11.if.end55_crit_edge, %if.then4.if.end55_crit_edge, %if.then2.if.end55_crit_edge, %if.end.if.end55_crit_edge, %entry.if.end55_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scdb_findEntry(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %ipAddr) local_unnamed_addr #5 align 64 {
entry:
  %networkAddr = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %networkAddr) #10
  %0 = getelementptr inbounds [17 x i8], ptr %networkAddr, i32 0, i32 1
  %1 = getelementptr inbounds [17 x i8], ptr %networkAddr, i32 0, i32 7
  %2 = call ptr @memset(ptr %0, i32 0, i32 16)
  %3 = ptrtoint ptr %networkAddr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %networkAddr, align 1
  %4 = ptrtoint ptr %ipAddr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %ipAddr, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %1, align 1
  %call = call fastcc i32 @__nat25_network_hash(ptr noundef nonnull %networkAddr)
  %arrayidx = getelementptr %struct.adapter, ptr %priv, i32 0, i32 54, i32 %call
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %db.0.in = phi ptr [ %arrayidx, %entry ], [ %db.0, %while.body.while.cond_crit_edge ]
  %7 = ptrtoint ptr %db.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %db.0 = load ptr, ptr %db.0.in, align 4
  %tobool.not = icmp eq ptr %db.0, null
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %networkAddr2 = getelementptr inbounds %struct.nat25_network_db_entry, ptr %db.0, i32 0, i32 5
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(17) %networkAddr2, ptr noundef nonnull dereferenceable(17) %networkAddr, i32 17) #14
  %tobool6.not = icmp eq i32 %bcmp, 0
  br i1 %tobool6.not, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %networkAddr) #10
  ret ptr %db.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__nat25_network_hash(ptr noundef readonly %networkAddr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %networkAddr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %networkAddr, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %1, label %for.body.preheader [
    i8 1, label %if.then
    i8 3, label %if.then16
    i8 4, label %if.then53
    i8 5, label %if.then69
    i8 2, label %if.then103
  ]

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %networkAddr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %networkAddr, align 1
  %arrayidx157.1 = getelementptr i8, ptr %networkAddr, i32 1
  %5 = ptrtoint ptr %arrayidx157.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx157.1, align 1
  %xor159.1249 = xor i8 %4, %6
  %arrayidx157.2 = getelementptr i8, ptr %networkAddr, i32 2
  %7 = ptrtoint ptr %arrayidx157.2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx157.2, align 1
  %xor159.2250 = xor i8 %xor159.1249, %8
  %arrayidx157.3 = getelementptr i8, ptr %networkAddr, i32 3
  %9 = ptrtoint ptr %arrayidx157.3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx157.3, align 1
  %xor159.3251 = xor i8 %xor159.2250, %10
  %arrayidx157.4 = getelementptr i8, ptr %networkAddr, i32 4
  %11 = ptrtoint ptr %arrayidx157.4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx157.4, align 1
  %xor159.4252 = xor i8 %xor159.3251, %12
  %arrayidx157.5 = getelementptr i8, ptr %networkAddr, i32 5
  %13 = ptrtoint ptr %arrayidx157.5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx157.5, align 1
  %xor159.5253 = xor i8 %xor159.4252, %14
  %arrayidx157.6 = getelementptr i8, ptr %networkAddr, i32 6
  %15 = ptrtoint ptr %arrayidx157.6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx157.6, align 1
  %xor159.6254 = xor i8 %xor159.5253, %16
  %arrayidx157.7 = getelementptr i8, ptr %networkAddr, i32 7
  %17 = ptrtoint ptr %arrayidx157.7 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx157.7, align 1
  %xor159.7255 = xor i8 %xor159.6254, %18
  %arrayidx157.8 = getelementptr i8, ptr %networkAddr, i32 8
  %19 = ptrtoint ptr %arrayidx157.8 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx157.8, align 1
  %xor159.8256 = xor i8 %xor159.7255, %20
  %arrayidx157.9 = getelementptr i8, ptr %networkAddr, i32 9
  %21 = ptrtoint ptr %arrayidx157.9 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx157.9, align 1
  %xor159.9257 = xor i8 %xor159.8256, %22
  %arrayidx157.10 = getelementptr i8, ptr %networkAddr, i32 10
  %23 = ptrtoint ptr %arrayidx157.10 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx157.10, align 1
  %xor159.10258 = xor i8 %xor159.9257, %24
  %arrayidx157.11 = getelementptr i8, ptr %networkAddr, i32 11
  %25 = ptrtoint ptr %arrayidx157.11 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx157.11, align 1
  %xor159.11259 = xor i8 %xor159.10258, %26
  %arrayidx157.12 = getelementptr i8, ptr %networkAddr, i32 12
  %27 = ptrtoint ptr %arrayidx157.12 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx157.12, align 1
  %xor159.12260 = xor i8 %xor159.11259, %28
  %arrayidx157.13 = getelementptr i8, ptr %networkAddr, i32 13
  %29 = ptrtoint ptr %arrayidx157.13 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx157.13, align 1
  %xor159.13261 = xor i8 %xor159.12260, %30
  %arrayidx157.14 = getelementptr i8, ptr %networkAddr, i32 14
  %31 = ptrtoint ptr %arrayidx157.14 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx157.14, align 1
  %xor159.14262 = xor i8 %xor159.13261, %32
  %arrayidx157.15 = getelementptr i8, ptr %networkAddr, i32 15
  %33 = ptrtoint ptr %arrayidx157.15 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx157.15, align 1
  %xor159.15263 = xor i8 %xor159.14262, %34
  %arrayidx157.16 = getelementptr i8, ptr %networkAddr, i32 16
  %35 = ptrtoint ptr %arrayidx157.16 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx157.16, align 1
  %xor159.16264 = xor i8 %xor159.15263, %36
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx2 = getelementptr i8, ptr %networkAddr, i32 7
  %37 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx2, align 1
  %arrayidx4 = getelementptr i8, ptr %networkAddr, i32 8
  %39 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx4, align 1
  %xor244 = xor i8 %40, %38
  %arrayidx6 = getelementptr i8, ptr %networkAddr, i32 9
  %41 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx6, align 1
  %xor8245 = xor i8 %xor244, %42
  %arrayidx9 = getelementptr i8, ptr %networkAddr, i32 10
  %43 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx9, align 1
  %xor11246 = xor i8 %xor8245, %44
  br label %return

if.then16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx18 = getelementptr i8, ptr %networkAddr, i32 1
  %45 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx18, align 1
  %arrayidx20 = getelementptr i8, ptr %networkAddr, i32 2
  %47 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx20, align 1
  %xor22235 = xor i8 %48, %46
  %arrayidx23 = getelementptr i8, ptr %networkAddr, i32 3
  %49 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx23, align 1
  %xor25236 = xor i8 %xor22235, %50
  %arrayidx26 = getelementptr i8, ptr %networkAddr, i32 4
  %51 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx26, align 1
  %xor28237 = xor i8 %xor25236, %52
  %arrayidx29 = getelementptr i8, ptr %networkAddr, i32 5
  %53 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx29, align 1
  %xor31238 = xor i8 %xor28237, %54
  %arrayidx32 = getelementptr i8, ptr %networkAddr, i32 6
  %55 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx32, align 1
  %xor34239 = xor i8 %xor31238, %56
  %arrayidx35 = getelementptr i8, ptr %networkAddr, i32 7
  %57 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx35, align 1
  %xor37240 = xor i8 %xor34239, %58
  %arrayidx38 = getelementptr i8, ptr %networkAddr, i32 8
  %59 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx38, align 1
  %xor40241 = xor i8 %xor37240, %60
  %arrayidx41 = getelementptr i8, ptr %networkAddr, i32 9
  %61 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx41, align 1
  %xor43242 = xor i8 %xor40241, %62
  %arrayidx44 = getelementptr i8, ptr %networkAddr, i32 10
  %63 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx44, align 1
  %xor46243 = xor i8 %xor43242, %64
  br label %return

if.then53:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx55 = getelementptr i8, ptr %networkAddr, i32 1
  %65 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx55, align 1
  %arrayidx57 = getelementptr i8, ptr %networkAddr, i32 2
  %67 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx57, align 1
  %xor59233 = xor i8 %68, %66
  %arrayidx60 = getelementptr i8, ptr %networkAddr, i32 3
  %69 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx60, align 1
  %xor62234 = xor i8 %xor59233, %70
  br label %return

if.then69:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx73 = getelementptr i8, ptr %networkAddr, i32 1
  %71 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx73, align 1
  %arrayidx76 = getelementptr i8, ptr %networkAddr, i32 2
  %73 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx76, align 1
  %arrayidx79 = getelementptr i8, ptr %networkAddr, i32 3
  %75 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx79, align 1
  %arrayidx82 = getelementptr i8, ptr %networkAddr, i32 4
  %77 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx82, align 1
  %arrayidx85 = getelementptr i8, ptr %networkAddr, i32 5
  %79 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx85, align 1
  %arrayidx88 = getelementptr i8, ptr %networkAddr, i32 6
  %81 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx88, align 1
  %arrayidx91 = getelementptr i8, ptr %networkAddr, i32 7
  %83 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx91, align 1
  %arrayidx94 = getelementptr i8, ptr %networkAddr, i32 8
  %85 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx94, align 1
  %87 = xor i8 %72, %74
  %88 = xor i8 %87, %76
  %89 = xor i8 %88, %78
  %90 = xor i8 %89, %80
  %91 = xor i8 %90, %82
  %92 = xor i8 %91, %84
  %93 = xor i8 %92, %86
  %xor96232 = xor i8 %93, 5
  br label %return

if.then103:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx105 = getelementptr i8, ptr %networkAddr, i32 1
  %94 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx105, align 1
  %arrayidx107 = getelementptr i8, ptr %networkAddr, i32 2
  %96 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx107, align 1
  %xor109211 = xor i8 %97, %95
  %arrayidx110 = getelementptr i8, ptr %networkAddr, i32 3
  %98 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx110, align 1
  %xor112212 = xor i8 %xor109211, %99
  %arrayidx113 = getelementptr i8, ptr %networkAddr, i32 4
  %100 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx113, align 1
  %xor115213 = xor i8 %xor112212, %101
  %arrayidx116 = getelementptr i8, ptr %networkAddr, i32 5
  %102 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx116, align 1
  %xor118214 = xor i8 %xor115213, %103
  %arrayidx119 = getelementptr i8, ptr %networkAddr, i32 6
  %104 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx119, align 1
  %xor121215 = xor i8 %xor118214, %105
  %arrayidx122 = getelementptr i8, ptr %networkAddr, i32 7
  %106 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx122, align 1
  %xor124216 = xor i8 %xor121215, %107
  %arrayidx125 = getelementptr i8, ptr %networkAddr, i32 8
  %108 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx125, align 1
  %xor127217 = xor i8 %xor124216, %109
  %arrayidx128 = getelementptr i8, ptr %networkAddr, i32 9
  %110 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx128, align 1
  %xor130218 = xor i8 %xor127217, %111
  %arrayidx131 = getelementptr i8, ptr %networkAddr, i32 10
  %112 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx131, align 1
  %xor133219 = xor i8 %xor130218, %113
  %arrayidx134 = getelementptr i8, ptr %networkAddr, i32 11
  %114 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx134, align 1
  %xor136220 = xor i8 %xor133219, %115
  %arrayidx137 = getelementptr i8, ptr %networkAddr, i32 12
  %116 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx137, align 1
  %xor139221 = xor i8 %xor136220, %117
  %arrayidx140 = getelementptr i8, ptr %networkAddr, i32 13
  %118 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx140, align 1
  %xor142222 = xor i8 %xor139221, %119
  %arrayidx143 = getelementptr i8, ptr %networkAddr, i32 14
  %120 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx143, align 1
  %xor145223 = xor i8 %xor142222, %121
  %arrayidx146 = getelementptr i8, ptr %networkAddr, i32 15
  %122 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx146, align 1
  %xor148224 = xor i8 %xor145223, %123
  %arrayidx149 = getelementptr i8, ptr %networkAddr, i32 16
  %124 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx149, align 1
  %xor151225 = xor i8 %xor148224, %125
  br label %return

return:                                           ; preds = %if.then103, %if.then69, %if.then53, %if.then16, %if.then, %for.body.preheader
  %retval.0.in.in = phi i8 [ %xor11246, %if.then ], [ %xor46243, %if.then16 ], [ %xor62234, %if.then53 ], [ %xor96232, %if.then69 ], [ %xor151225, %if.then103 ], [ %xor159.16264, %for.body.preheader ]
  %126 = and i8 %retval.0.in.in, 15
  %retval.0 = zext i8 %126 to i32
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 408, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nat25_db_handle._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nat25_db_handle._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 421, i32 4}
!8 = !{ptr @nat25_db_handle._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nat25_db_handle._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 440, i32 4}
!12 = !{ptr @nat25_db_handle._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nat25_db_handle._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 448, i32 4}
!16 = !{ptr @nat25_db_handle._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nat25_db_handle._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 488, i32 9}
!20 = !{ptr @nat25_db_handle._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nat25_db_handle._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 496, i32 9}
!24 = !{ptr @nat25_db_handle._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @nat25_db_handle._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 514, i32 7}
!28 = !{ptr @nat25_db_handle._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @nat25_db_handle._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.22, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 519, i32 8}
!34 = !{ptr @nat25_db_handle._entry.23, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @nat25_db_handle._entry_ptr.25, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.27, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 532, i32 5}
!38 = !{ptr @nat25_db_handle._entry.26, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @nat25_db_handle._entry_ptr.28, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.30, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 580, i32 4}
!42 = !{ptr @nat25_db_handle._entry.29, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @nat25_db_handle._entry_ptr.31, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.33, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 590, i32 4}
!46 = !{ptr @nat25_db_handle._entry.32, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @nat25_db_handle._entry_ptr.34, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.35, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 597, i32 28}
!50 = !{ptr @.str.36, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 672, i32 8}
!52 = !{ptr @.str.37, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @dhcp_flag_bcast._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @dhcp_flag_bcast._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.38, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 75, i32 3}
!57 = !{ptr @.str.39, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__nat25_add_pppoe_tag._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @__nat25_add_pppoe_tag._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.40, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 166, i32 5}
!62 = !{ptr @.str.41, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @update_nd_link_layer_addr._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @update_nd_link_layer_addr._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.43, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 177, i32 5}
!67 = !{ptr @update_nd_link_layer_addr._entry.42, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @update_nd_link_layer_addr._entry_ptr.44, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.46, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 188, i32 5}
!71 = !{ptr @update_nd_link_layer_addr._entry.45, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @update_nd_link_layer_addr._entry_ptr.47, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.49, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 199, i32 5}
!75 = !{ptr @update_nd_link_layer_addr._entry.48, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @update_nd_link_layer_addr._entry_ptr.50, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.52, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/r8188eu/core/rtw_br_ext.c", i32 210, i32 5}
!79 = !{ptr @update_nd_link_layer_addr._entry.51, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @update_nd_link_layer_addr._entry_ptr.53, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 2148458274}
!91 = !{i64 2148373007, i64 2148373039, i64 2148373068, i64 2148373102, i64 2148373133, i64 2148373156}
!92 = !{i64 2148458503}
!93 = !{i64 6470301}
