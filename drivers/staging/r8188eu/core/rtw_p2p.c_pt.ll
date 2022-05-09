; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/core/rtw_p2p.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/core/rtw_p2p.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wifidirect_info = type { ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.tx_provdisc_req_info, %struct.rx_provdisc_req_info, %struct.tx_invite_req_info, [10 x %struct.profile_info], %struct.tx_invite_resp_info, %struct.tx_nego_req_info, %struct.group_id_info, %struct.scan_limit_info, %struct.scan_limit_info, i32, i32, i32, [6 x i8], [6 x i8], [4 x i8], i8, i8, i8, [8 x i8], [7 x i8], i8, [6 x i8], [6 x i8], i8, [32 x i8], i8, i8, i8, i8, i16, i8, [32 x i8], i8, [32 x i8], i8, i8, i8, i32, i16, i32, [100 x i8], i32, i32, i8, i8, i8, i8, [2 x i8], [2 x i32], [2 x i32], [2 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tx_provdisc_req_info = type { i16, [2 x i16], %struct.ndis_802_11_ssid, [6 x i8], [6 x i8], i8 }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.rx_provdisc_req_info = type { [6 x i8], [4 x i8] }
%struct.tx_invite_req_info = type { i8, i8, [32 x i8], i8, [6 x i8], [6 x i8], i8, i8 }
%struct.profile_info = type { i8, [32 x i8], [6 x i8] }
%struct.tx_invite_resp_info = type { i8 }
%struct.tx_nego_req_info = type { [2 x i16], [6 x i8], i8 }
%struct.group_id_info = type { [6 x i8], [32 x i8] }
%struct.scan_limit_info = type { i8, [2 x i8] }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.led_priv, ptr, %struct.wifidirect_info, %struct.hal_data_8188e, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, i32, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, %struct.spinlock, [16 x ptr], i32, [6 x i8], [6 x i8], [4 x i8], ptr, [6 x i8], [4 x i8], %struct.br_ext_info, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i8, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect, %struct.timer_list, i8, i8, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [6 x i8], i8, i16, [8 x i8], i8, [32 x i8], i16, [32 x i8], i8, i8, %struct.rssi_sta, i8, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%struct.drvextra_cmd_parm = type { i32, i32, ptr }
%struct.cmd_obj = type { ptr, i16, i8, ptr, i32, ptr, i32, %struct.list_head }

@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@process_assoc_req_p2p_ie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016R8188EU: [%s] P2P IE not Found!!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"process_assoc_req_p2p_ie\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/staging/r8188eu/core/rtw_p2p.c\00", [57 x i8] zeroinitializer }, align 32
@process_assoc_req_p2p_ie._entry_ptr = internal global ptr @process_assoc_req_p2p_ie._entry, section ".printk_index", align 4
@process_assoc_req_p2p_ie._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016R8188EU: [%s] P2P IE Found!!\0A\00", [32 x i8] zeroinitializer }, align 32
@process_assoc_req_p2p_ie._entry_ptr.5 = internal global ptr @process_assoc_req_p2p_ie._entry.3, section ".printk_index", align 4
@process_assoc_req_p2p_ie._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016R8188EU: [%s] Got P2P Capability Attr!!\0A\00", [53 x i8] zeroinitializer }, align 32
@process_assoc_req_p2p_ie._entry_ptr.8 = internal global ptr @process_assoc_req_p2p_ie._entry.6, section ".printk_index", align 4
@process_assoc_req_p2p_ie._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016R8188EU: [%s] Got P2P DEVICE INFO Attr!!\0A\00", [52 x i8] zeroinitializer }, align 32
@process_assoc_req_p2p_ie._entry_ptr.11 = internal global ptr @process_assoc_req_p2p_ie._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lab\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pbc\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pad\00", [28 x i8] zeroinitializer }, align 32
@process_p2p_provdisc_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016R8188EU: [%s] config method = %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"process_p2p_provdisc_req\00", [39 x i8] zeroinitializer }, align 32
@process_p2p_provdisc_req._entry_ptr = internal global ptr @process_p2p_provdisc_req._entry, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"000\00", [28 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1086, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016R8188EU: [%s] WPS IE not Found!!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"process_p2p_group_negotation_req\00", [63 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_req._entry_ptr = internal global ptr @process_p2p_group_negotation_req._entry, section ".printk_index", align 4
@process_p2p_group_negotation_req._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.20, ptr @.str.2, i32 1104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_req._entry_ptr.22 = internal global ptr @process_p2p_group_negotation_req._entry.21, section ".printk_index", align 4
@process_p2p_group_negotation_req._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.2, i32 1122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016R8188EU: [%s] GO Intent = %d, tie = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_req._entry_ptr.25 = internal global ptr @process_p2p_group_negotation_req._entry.23, section ".printk_index", align 4
@process_p2p_group_negotation_req._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.2, i32 1160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016R8188EU: [%s] No common channel in channel list!\0A\00", [44 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_req._entry_ptr.28 = internal global ptr @process_p2p_group_negotation_req._entry.26, section ".printk_index", align 4
@process_p2p_group_negotation_req._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.20, ptr @.str.2, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016R8188EU: [%s] Change op ch to %02x as peer's\0A\00", [48 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_req._entry_ptr.31 = internal global ptr @process_p2p_group_negotation_req._entry.29, section ".printk_index", align 4
@process_p2p_group_negotation_req._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.20, ptr @.str.2, i32 1185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016R8188EU: [%s] Change op ch to %02x\0A\00", [58 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_req._entry_ptr.34 = internal global ptr @process_p2p_group_negotation_req._entry.32, section ".printk_index", align 4
@process_p2p_group_negotation_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.35, ptr @.str.2, i32 1213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"process_p2p_group_negotation_resp\00", [62 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_resp._entry_ptr = internal global ptr @process_p2p_group_negotation_resp._entry, section ".printk_index", align 4
@process_p2p_group_negotation_resp._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 1236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016R8188EU: [%s] Status = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_resp._entry_ptr.38 = internal global ptr @process_p2p_group_negotation_resp._entry.36, section ".printk_index", align 4
@process_p2p_group_negotation_resp._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.35, ptr @.str.2, i32 1262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_resp._entry_ptr.40 = internal global ptr @process_p2p_group_negotation_resp._entry.39, section ".printk_index", align 4
@process_p2p_group_negotation_resp._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.35, ptr @.str.2, i32 1300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016R8188EU: [%s] Peer's operating channel = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_resp._entry_ptr.43 = internal global ptr @process_p2p_group_negotation_resp._entry.41, section ".printk_index", align 4
@process_p2p_group_negotation_resp._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.35, ptr @.str.2, i32 1306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016R8188EU: [%s] channel list attribute found, len = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_resp._entry_ptr.46 = internal global ptr @process_p2p_group_negotation_resp._entry.44, section ".printk_index", align 4
@process_p2p_group_negotation_resp._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.35, ptr @.str.2, i32 1312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_resp._entry_ptr.48 = internal global ptr @process_p2p_group_negotation_resp._entry.47, section ".printk_index", align 4
@process_p2p_group_negotation_resp._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.35, ptr @.str.2, i32 1333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_resp._entry_ptr.50 = internal global ptr @process_p2p_group_negotation_resp._entry.49, section ".printk_index", align 4
@process_p2p_group_negotation_resp._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.35, ptr @.str.2, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_resp._entry_ptr.52 = internal global ptr @process_p2p_group_negotation_resp._entry.51, section ".printk_index", align 4
@process_p2p_group_negotation_resp._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.35, ptr @.str.2, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016R8188EU: [%s] channel list attribute not found!\0A\00", [45 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_resp._entry_ptr.55 = internal global ptr @process_p2p_group_negotation_resp._entry.53, section ".printk_index", align 4
@process_p2p_group_negotation_confirm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.56, ptr @.str.2, i32 1379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"process_p2p_group_negotation_confirm\00", [59 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_confirm._entry_ptr = internal global ptr @process_p2p_group_negotation_confirm._entry, section ".printk_index", align 4
@process_p2p_group_negotation_confirm._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 1413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016R8188EU: [%s] Ssid = %s, ssidlen = %zu\0A\00", [54 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_confirm._entry_ptr.59 = internal global ptr @process_p2p_group_negotation_confirm._entry.57, section ".printk_index", align 4
@process_p2p_group_negotation_confirm._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.56, ptr @.str.2, i32 1420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@process_p2p_group_negotation_confirm._entry_ptr.61 = internal global ptr @process_p2p_group_negotation_confirm._entry.60, section ".printk_index", align 4
@p2p_ps_wk_hdl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 1658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016R8188EU: %s(): Enter CTW, change SmartPS\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"p2p_ps_wk_hdl\00", [18 x i8] zeroinitializer }, align 32
@p2p_ps_wk_hdl._entry_ptr = internal global ptr @p2p_ps_wk_hdl._entry, section ".printk_index", align 4
@rtw_init_wifidirect_timers.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(&pwdinfo->find_phase_timer)\00", [35 x i8] zeroinitializer }, align 32
@rtw_init_wifidirect_timers.__key.65 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(&pwdinfo->restore_p2p_state_timer)\00", [60 x i8] zeroinitializer }, align 32
@rtw_init_wifidirect_timers.__key.67 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(&pwdinfo->pre_tx_scan_timer)\00", [34 x i8] zeroinitializer }, align 32
@rtw_init_wifidirect_timers.__key.69 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(&pwdinfo->reset_ch_sitesurvey)\00", [32 x i8] zeroinitializer }, align 32
@rtw_init_wifidirect_timers.__key.71 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(&pwdinfo->reset_ch_sitesurvey2)\00", [63 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DIRECT-\00", [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__func__.rtw_p2p_enable = private unnamed_addr constant [15 x i8] c"rtw_p2p_enable\00", align 1
@go_add_group_info_attr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016R8188EU: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"go_add_group_info_attr\00", [41 x i8] zeroinitializer }, align 32
@go_add_group_info_attr._entry_ptr = internal global ptr @go_add_group_info_attr._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@issue_group_disc_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016R8188EU: [%s]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"issue_group_disc_req\00", [43 x i8] zeroinitializer }, align 32
@issue_group_disc_req._entry_ptr = internal global ptr @issue_group_disc_req._entry, section ".printk_index", align 4
@issue_p2p_devdisc_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.78, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"issue_p2p_devdisc_resp\00", [41 x i8] zeroinitializer }, align 32
@issue_p2p_devdisc_resp._entry_ptr = internal global ptr @issue_p2p_devdisc_resp._entry, section ".printk_index", align 4
@issue_p2p_presence_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.79, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"issue_p2p_presence_resp\00", [40 x i8] zeroinitializer }, align 32
@issue_p2p_presence_resp._entry_ptr = internal global ptr @issue_p2p_presence_resp._entry, section ".printk_index", align 4
@pre_tx_scan_timer_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 1783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016R8188EU: [%s] p2p_state is %d, ignore!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pre_tx_scan_timer_process\00", [38 x i8] zeroinitializer }, align 32
@pre_tx_scan_timer_process._entry_ptr = internal global ptr @pre_tx_scan_timer_process._entry, section ".printk_index", align 4
@reset_ch_sitesurvey_timer_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016R8188EU: [%s] In\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reset_ch_sitesurvey_timer_process\00", [62 x i8] zeroinitializer }, align 32
@reset_ch_sitesurvey_timer_process._entry_ptr = internal global ptr @reset_ch_sitesurvey_timer_process._entry, section ".printk_index", align 4
@reset_ch_sitesurvey_timer_process2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.84, ptr @.str.2, i32 1742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"reset_ch_sitesurvey_timer_process2\00", [61 x i8] zeroinitializer }, align 32
@reset_ch_sitesurvey_timer_process2._entry_ptr = internal global ptr @reset_ch_sitesurvey_timer_process2._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.86 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 16, i64 4, i64 8, i64 128, i64 256]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.92 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 11]
@__sancov_gen_cov_switch_values.94 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 9, i64 15]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 830, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 833, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 839, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 848, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 992, i32 79 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 995, i32 79 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 998, i32 79 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1001, i32 79 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1007, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1074, i32 82 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1086, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1104, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1122, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1160, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1181, i32 7 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1185, i32 7 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1213, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1236, i32 5 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1262, i32 5 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1300, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1306, i32 5 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1312, i32 6 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1333, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1337, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1342, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1379, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1413, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1420, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1658, i32 6 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1815, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1816, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1817, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1818, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1819, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1876, i32 37 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 33, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 126, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 185, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 332, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1783, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1728, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.339 = private constant [42 x i8] c"../drivers/staging/r8188eu/core/rtw_p2p.c\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1742, i32 2 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @go_add_group_info_attr._entry, ptr @go_add_group_info_attr._entry_ptr, ptr @issue_group_disc_req._entry, ptr @issue_group_disc_req._entry_ptr, ptr @issue_p2p_devdisc_resp._entry, ptr @issue_p2p_devdisc_resp._entry_ptr, ptr @issue_p2p_presence_resp._entry, ptr @issue_p2p_presence_resp._entry_ptr, ptr @p2p_ps_wk_hdl._entry, ptr @p2p_ps_wk_hdl._entry_ptr, ptr @pre_tx_scan_timer_process._entry, ptr @pre_tx_scan_timer_process._entry_ptr, ptr @process_assoc_req_p2p_ie._entry, ptr @process_assoc_req_p2p_ie._entry.3, ptr @process_assoc_req_p2p_ie._entry.6, ptr @process_assoc_req_p2p_ie._entry.9, ptr @process_assoc_req_p2p_ie._entry_ptr, ptr @process_assoc_req_p2p_ie._entry_ptr.11, ptr @process_assoc_req_p2p_ie._entry_ptr.5, ptr @process_assoc_req_p2p_ie._entry_ptr.8, ptr @process_p2p_group_negotation_confirm._entry, ptr @process_p2p_group_negotation_confirm._entry.57, ptr @process_p2p_group_negotation_confirm._entry.60, ptr @process_p2p_group_negotation_confirm._entry_ptr, ptr @process_p2p_group_negotation_confirm._entry_ptr.59, ptr @process_p2p_group_negotation_confirm._entry_ptr.61, ptr @process_p2p_group_negotation_req._entry, ptr @process_p2p_group_negotation_req._entry.21, ptr @process_p2p_group_negotation_req._entry.23, ptr @process_p2p_group_negotation_req._entry.26, ptr @process_p2p_group_negotation_req._entry.29, ptr @process_p2p_group_negotation_req._entry.32, ptr @process_p2p_group_negotation_req._entry_ptr, ptr @process_p2p_group_negotation_req._entry_ptr.22, ptr @process_p2p_group_negotation_req._entry_ptr.25, ptr @process_p2p_group_negotation_req._entry_ptr.28, ptr @process_p2p_group_negotation_req._entry_ptr.31, ptr @process_p2p_group_negotation_req._entry_ptr.34, ptr @process_p2p_group_negotation_resp._entry, ptr @process_p2p_group_negotation_resp._entry.36, ptr @process_p2p_group_negotation_resp._entry.39, ptr @process_p2p_group_negotation_resp._entry.41, ptr @process_p2p_group_negotation_resp._entry.44, ptr @process_p2p_group_negotation_resp._entry.47, ptr @process_p2p_group_negotation_resp._entry.49, ptr @process_p2p_group_negotation_resp._entry.51, ptr @process_p2p_group_negotation_resp._entry.53, ptr @process_p2p_group_negotation_resp._entry_ptr, ptr @process_p2p_group_negotation_resp._entry_ptr.38, ptr @process_p2p_group_negotation_resp._entry_ptr.40, ptr @process_p2p_group_negotation_resp._entry_ptr.43, ptr @process_p2p_group_negotation_resp._entry_ptr.46, ptr @process_p2p_group_negotation_resp._entry_ptr.48, ptr @process_p2p_group_negotation_resp._entry_ptr.50, ptr @process_p2p_group_negotation_resp._entry_ptr.52, ptr @process_p2p_group_negotation_resp._entry_ptr.55, ptr @process_p2p_provdisc_req._entry, ptr @process_p2p_provdisc_req._entry_ptr, ptr @reset_ch_sitesurvey_timer_process._entry, ptr @reset_ch_sitesurvey_timer_process._entry_ptr, ptr @reset_ch_sitesurvey_timer_process2._entry, ptr @reset_ch_sitesurvey_timer_process2._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.42, ptr @.str.45, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.62, ptr @.str.63, ptr @rtw_init_wifidirect_timers.__key, ptr @.str.64, ptr @rtw_init_wifidirect_timers.__key.65, ptr @.str.66, ptr @rtw_init_wifidirect_timers.__key.67, ptr @.str.68, ptr @rtw_init_wifidirect_timers.__key.69, ptr @.str.70, ptr @rtw_init_wifidirect_timers.__key.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_assoc_req_p2p_ie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_assoc_req_p2p_ie._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_assoc_req_p2p_ie._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_assoc_req_p2p_ie._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_provdisc_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_group_negotation_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_group_negotation_req._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_group_negotation_req._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_group_negotation_req._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_group_negotation_req._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_group_negotation_req._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_group_negotation_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_group_negotation_resp._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_group_negotation_resp._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_group_negotation_resp._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_group_negotation_resp._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_group_negotation_resp._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_group_negotation_resp._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_group_negotation_resp._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_group_negotation_resp._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_group_negotation_confirm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_group_negotation_confirm._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_p2p_group_negotation_confirm._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2p_ps_wk_hdl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_wifidirect_timers.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_wifidirect_timers.__key.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_wifidirect_timers.__key.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_wifidirect_timers.__key.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_wifidirect_timers.__key.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go_add_group_info_attr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @issue_group_disc_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @issue_p2p_devdisc_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @issue_p2p_presence_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pre_tx_scan_timer_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_ch_sitesurvey_timer_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_ch_sitesurvey_timer_process2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @build_beacon_p2p_ie(ptr noundef %pwdinfo, ptr noundef %pbuf) local_unnamed_addr #0 align 64 {
entry:
  %p2pie = alloca [256 x i8], align 1
  %len = alloca i32, align 4
  %le_tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %p2pie) #13
  %0 = getelementptr inbounds i8, ptr %p2pie, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 252)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #13
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %le_tmp) #13
  %3 = ptrtoint ptr %p2pie to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 80, ptr %p2pie, align 1
  %arrayidx2 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 111, ptr %arrayidx2, align 1
  %arrayidx4 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -102, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 9, ptr %arrayidx6, align 1
  %p2p_state.i = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 17
  %7 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %8)
  %cmp.i = icmp eq i32 %8, 13
  %spec.select = select i1 %cmp.i, i16 18722, i16 2338
  %9 = tail call i16 @llvm.bswap.i16(i16 %spec.select)
  %10 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %le_tmp, align 2
  %arrayidx11 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 4
  %call12 = call i32 @rtw_set_p2p_attr_content(ptr noundef %arrayidx11, i8 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %le_tmp) #13
  %add = add i32 %call12, 4
  %arrayidx13 = getelementptr [256 x i8], ptr %p2pie, i32 0, i32 %add
  %device_addr = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 18
  %call14 = call i32 @rtw_set_p2p_attr_content(ptr noundef %arrayidx13, i8 noundef zeroext 3, i16 noundef zeroext 6, ptr noundef %device_addr) #13
  %add15 = add i32 %add, %call14
  %call17 = call ptr @rtw_set_ie(ptr noundef %pbuf, i32 noundef 221, i32 noundef %add15, ptr noundef nonnull %p2pie, ptr noundef nonnull %len) #13
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %le_tmp) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %p2pie) #13
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_set_p2p_attr_content(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_set_ie(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @build_probe_resp_p2p_ie(ptr nocapture noundef readonly %pwdinfo, ptr noundef %pbuf) local_unnamed_addr #0 align 64 {
entry:
  %p2pie = alloca [256 x i8], align 1
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %p2pie) #13
  %0 = getelementptr inbounds i8, ptr %p2pie, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 248)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #13
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %len, align 4
  %3 = ptrtoint ptr %p2pie to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 80, ptr %p2pie, align 1
  %arrayidx2 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 111, ptr %arrayidx2, align 1
  %arrayidx4 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -102, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 9, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 4
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %arrayidx8, align 1
  %add.ptr = getelementptr inbounds i8, ptr %p2pie, i32 5
  %arrayidx9 = getelementptr inbounds i8, ptr %p2pie, i32 6
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx9, align 1
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %add.ptr, align 1
  %arrayidx14 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 7
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 39, ptr %arrayidx14, align 1
  %role1.i = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 15
  %11 = ptrtoint ptr %role1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %role1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.i = icmp eq i32 %12, 3
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx15 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 8
  %p2p_state.i = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 17
  %13 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %14)
  %cmp.i263 = icmp eq i32 %14, 13
  %spec.store.select = select i1 %cmp.i263, i8 73, i8 9
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.store.select, ptr %arrayidx15, align 1
  br label %if.end31

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i265 = icmp eq i32 %12, 1
  br i1 %cmp.i265, label %if.then22, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then22:                                        ; preds = %if.else
  %persistent_supported = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 41
  %16 = ptrtoint ptr %persistent_supported to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %persistent_supported, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  %arrayidx28 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 8
  br i1 %tobool.not, label %if.else26, label %if.then23

if.then23:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %arrayidx28, align 1
  br label %if.end31

if.else26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 8, ptr %arrayidx28, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.else26, %if.then23, %if.else.if.end31_crit_edge, %if.then
  %p2pielen.0 = phi i32 [ 9, %if.then23 ], [ 9, %if.else26 ], [ 8, %if.else.if.end31_crit_edge ], [ 9, %if.then ]
  %inc32 = add nuw nsw i32 %p2pielen.0, 1
  %arrayidx33 = getelementptr [256 x i8], ptr %p2pie, i32 0, i32 %p2pielen.0
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 8, ptr %arrayidx33, align 1
  %add.ptr36 = getelementptr i8, ptr %p2pie, i32 %inc32
  %arrayidx37 = getelementptr i8, ptr %add.ptr36, i32 1
  %21 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx37, align 1
  %22 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %add.ptr36, align 1
  %add43 = add nuw nsw i32 %p2pielen.0, 3
  %add.ptr46 = getelementptr i8, ptr %p2pie, i32 %add43
  %arrayidx47 = getelementptr i8, ptr %add.ptr46, i32 1
  %23 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %arrayidx47, align 1
  %24 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %add.ptr46, align 1
  %add53 = add nuw nsw i32 %p2pielen.0, 5
  %add.ptr56 = getelementptr i8, ptr %p2pie, i32 %add53
  %arrayidx57 = getelementptr i8, ptr %add.ptr56, i32 1
  %25 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %arrayidx57, align 1
  %26 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %add.ptr56, align 1
  %add63 = add nuw nsw i32 %p2pielen.0, 7
  %inc64 = add nuw nsw i32 %p2pielen.0, 8
  %arrayidx65 = getelementptr [256 x i8], ptr %p2pie, i32 0, i32 %add63
  %27 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 13, ptr %arrayidx65, align 1
  %device_name_len = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 31
  %28 = ptrtoint ptr %device_name_len to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %device_name_len, align 4
  %conv67 = zext i8 %29 to i16
  %add68 = add nuw nsw i16 %conv67, 21
  %30 = lshr i16 %add68, 8
  %conv71 = trunc i16 %30 to i8
  %add.ptr73 = getelementptr i8, ptr %p2pie, i32 %inc64
  %arrayidx74 = getelementptr i8, ptr %add.ptr73, i32 1
  %31 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv71, ptr %arrayidx74, align 1
  %32 = add i8 %29, 21
  %33 = ptrtoint ptr %add.ptr73 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %add.ptr73, align 1
  %add86 = add nuw nsw i32 %p2pielen.0, 10
  %add.ptr88 = getelementptr i8, ptr %p2pie, i32 %add86
  %device_addr = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 18
  %34 = call ptr @memcpy(ptr %add.ptr88, ptr %device_addr, i32 6)
  %add90 = or i32 %p2pielen.0, 16
  %supported_wps_cm = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 44
  %35 = ptrtoint ptr %supported_wps_cm to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %supported_wps_cm, align 4
  %37 = lshr i16 %36, 8
  %conv94 = trunc i16 %37 to i8
  %add.ptr96 = getelementptr i8, ptr %p2pie, i32 %add90
  %38 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv94, ptr %add.ptr96, align 1
  %conv101 = trunc i16 %36 to i8
  %arrayidx104 = getelementptr i8, ptr %add.ptr96, i32 1
  %39 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv101, ptr %arrayidx104, align 1
  %add107 = or i32 %p2pielen.0, 18
  %add.ptr110 = getelementptr i8, ptr %p2pie, i32 %add107
  %40 = ptrtoint ptr %add.ptr110 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %add.ptr110, align 1
  %arrayidx114 = getelementptr i8, ptr %add.ptr110, i32 1
  %41 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 8, ptr %arrayidx114, align 1
  %add117 = or i32 %p2pielen.0, 20
  %add.ptr120 = getelementptr i8, ptr %p2pie, i32 %add117
  %42 = ptrtoint ptr %add.ptr120 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %add.ptr120, align 1
  %arrayidx124 = getelementptr i8, ptr %add.ptr120, i32 1
  %43 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 80, ptr %arrayidx124, align 1
  %arrayidx127 = getelementptr i8, ptr %add.ptr120, i32 2
  %44 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -14, ptr %arrayidx127, align 1
  %arrayidx130 = getelementptr i8, ptr %add.ptr120, i32 3
  %45 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 4, ptr %arrayidx130, align 1
  %add133 = add nuw nsw i32 %p2pielen.0, 24
  %add.ptr136 = getelementptr i8, ptr %p2pie, i32 %add133
  %46 = ptrtoint ptr %add.ptr136 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %add.ptr136, align 1
  %arrayidx140 = getelementptr i8, ptr %add.ptr136, i32 1
  %47 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 5, ptr %arrayidx140, align 1
  %add143 = add nuw nsw i32 %p2pielen.0, 26
  %inc144 = add nuw nsw i32 %p2pielen.0, 27
  %arrayidx145 = getelementptr [256 x i8], ptr %p2pie, i32 0, i32 %add143
  %48 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx145, align 1
  %add.ptr148 = getelementptr i8, ptr %p2pie, i32 %inc144
  %49 = ptrtoint ptr %add.ptr148 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 16, ptr %add.ptr148, align 1
  %arrayidx152 = getelementptr i8, ptr %add.ptr148, i32 1
  %50 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 17, ptr %arrayidx152, align 1
  %add155 = add nuw nsw i32 %p2pielen.0, 29
  %add.ptr163 = getelementptr i8, ptr %p2pie, i32 %add155
  %51 = ptrtoint ptr %add.ptr163 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %add.ptr163, align 1
  %arrayidx172 = getelementptr i8, ptr %add.ptr163, i32 1
  %52 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %29, ptr %arrayidx172, align 1
  %add175 = add nuw nsw i32 %p2pielen.0, 31
  %add.ptr177 = getelementptr i8, ptr %p2pie, i32 %add175
  %device_name = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 30
  %conv180 = zext i8 %29 to i32
  %53 = call ptr @memcpy(ptr %add.ptr177, ptr %device_name, i32 %conv180)
  %add183 = add nuw nsw i32 %add175, %conv180
  br i1 %cmp.i, label %if.then185, label %if.end31.if.end190_crit_edge

if.end31.if.end190_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end190

if.then185:                                       ; preds = %if.end31
  %add.ptr187 = getelementptr i8, ptr %p2pie, i32 %add183
  %54 = ptrtoint ptr %pwdinfo to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pwdinfo, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %56 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %56)
  %cmp.i268 = icmp ugt i32 %56, 4
  br i1 %cmp.i268, label %do.end.i, label %if.then185.do.end4.i_crit_edge

if.then185.do.end4.i_crit_edge:                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75) #16
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then185.do.end4.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 256) #17
  %asoc_list_lock.i = getelementptr inbounds %struct.adapter, ptr %55, i32 0, i32 11, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock.i) #13
  %asoc_list.i = getelementptr inbounds %struct.adapter, ptr %55, i32 0, i32 11, i32 10
  %58 = ptrtoint ptr %asoc_list.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %asoc_list.i, align 4
  %cmp6.not131.i = icmp eq ptr %asoc_list.i, %59
  br i1 %cmp6.not131.i, label %while.end.thread.i, label %do.end4.i.while.body.i_crit_edge

do.end4.i.while.body.i_crit_edge:                 ; preds = %do.end4.i
  br label %while.body.i

while.end.thread.i:                               ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock.i) #13
  br label %go_add_group_info_attr.exit

while.body.i:                                     ; preds = %if.end70.i.while.body.i_crit_edge, %do.end4.i.while.body.i_crit_edge
  %plist.0135.i = phi ptr [ %61, %if.end70.i.while.body.i_crit_edge ], [ %59, %do.end4.i.while.body.i_crit_edge ]
  %attr_len.0134.i = phi i16 [ %attr_len.1.i, %if.end70.i.while.body.i_crit_edge ], [ 0, %do.end4.i.while.body.i_crit_edge ]
  %pcur.0133.i = phi ptr [ %pcur.2.i, %if.end70.i.while.body.i_crit_edge ], [ %call7.i.i.i, %do.end4.i.while.body.i_crit_edge ]
  %pstart.0132.i = phi ptr [ %pstart.1.i, %if.end70.i.while.body.i_crit_edge ], [ %call7.i.i.i, %do.end4.i.while.body.i_crit_edge ]
  %60 = ptrtoint ptr %plist.0135.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %plist.0135.i, align 4
  %is_p2p_device.i = getelementptr i8, ptr %plist.0135.i, i32 244
  %62 = ptrtoint ptr %is_p2p_device.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %is_p2p_device.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i = icmp eq i8 %63, 0
  br i1 %tobool.not.i, label %while.body.i.if.end70.i_crit_edge, label %if.then9.i

while.body.i.if.end70.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70.i

if.then9.i:                                       ; preds = %while.body.i
  %incdec.ptr.i = getelementptr i8, ptr %pcur.0133.i, i32 1
  %dev_addr.i = getelementptr i8, ptr %plist.0135.i, i32 246
  %64 = call ptr @memcpy(ptr %incdec.ptr.i, ptr %dev_addr.i, i32 6)
  %add.ptr10.i = getelementptr i8, ptr %pcur.0133.i, i32 7
  %hwaddr.i = getelementptr i8, ptr %plist.0135.i, i32 -2216
  %65 = call ptr @memcpy(ptr %add.ptr10.i, ptr %hwaddr.i, i32 6)
  %add.ptr12.i = getelementptr i8, ptr %pcur.0133.i, i32 13
  %dev_cap.i = getelementptr i8, ptr %plist.0135.i, i32 252
  %66 = ptrtoint ptr %dev_cap.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %dev_cap.i, align 8
  %68 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %add.ptr12.i, align 1
  %incdec.ptr13.i = getelementptr i8, ptr %pcur.0133.i, i32 14
  %config_methods.i = getelementptr i8, ptr %plist.0135.i, i32 254
  %69 = ptrtoint ptr %config_methods.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %config_methods.i, align 2
  %71 = lshr i16 %70, 8
  %conv15.i = trunc i16 %71 to i8
  %72 = ptrtoint ptr %incdec.ptr13.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv15.i, ptr %incdec.ptr13.i, align 1
  %73 = load i16, ptr %config_methods.i, align 2
  %conv18.i = trunc i16 %73 to i8
  %arrayidx19.i = getelementptr i8, ptr %pcur.0133.i, i32 15
  %74 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv18.i, ptr %arrayidx19.i, align 1
  %add.ptr22.i = getelementptr i8, ptr %pcur.0133.i, i32 16
  %primary_dev_type.i = getelementptr i8, ptr %plist.0135.i, i32 256
  %75 = ptrtoint ptr %primary_dev_type.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 8)
  %76 = load i64, ptr %primary_dev_type.i, align 4
  %77 = ptrtoint ptr %add.ptr22.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 8)
  store i64 %76, ptr %add.ptr22.i, align 1
  %add.ptr24.i = getelementptr i8, ptr %pcur.0133.i, i32 24
  %num_of_secdev_type.i = getelementptr i8, ptr %plist.0135.i, i32 264
  %78 = ptrtoint ptr %num_of_secdev_type.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %num_of_secdev_type.i, align 4
  %80 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %add.ptr24.i, align 1
  %incdec.ptr25.i = getelementptr i8, ptr %pcur.0133.i, i32 25
  %secdev_types_list.i = getelementptr i8, ptr %plist.0135.i, i32 265
  %81 = load i8, ptr %num_of_secdev_type.i, align 4
  %conv28.i = zext i8 %81 to i32
  %mul.i = shl nuw nsw i32 %conv28.i, 3
  %82 = call ptr @memcpy(ptr %incdec.ptr25.i, ptr %secdev_types_list.i, i32 %mul.i)
  %83 = load i8, ptr %num_of_secdev_type.i, align 4
  %conv30.i = zext i8 %83 to i32
  %mul31.i = shl nuw nsw i32 %conv30.i, 3
  %add.ptr32.i = getelementptr i8, ptr %incdec.ptr25.i, i32 %mul31.i
  %dev_name_len.i = getelementptr i8, ptr %plist.0135.i, i32 298
  %84 = ptrtoint ptr %dev_name_len.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %dev_name_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %cmp34.not.i = icmp eq i16 %85, 0
  br i1 %cmp34.not.i, label %if.then9.i.if.end63.i_crit_edge, label %do.body37.i

if.then9.i.if.end63.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63.i

do.body37.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 16, ptr %add.ptr32.i, align 1
  %arrayidx39.i = getelementptr i8, ptr %add.ptr32.i, i32 1
  %87 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 17, ptr %arrayidx39.i, align 1
  %add.ptr42.i = getelementptr i8, ptr %add.ptr32.i, i32 2
  %88 = ptrtoint ptr %dev_name_len.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %dev_name_len.i, align 2
  %90 = lshr i16 %89, 8
  %conv47.i = trunc i16 %90 to i8
  %91 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv47.i, ptr %add.ptr42.i, align 1
  %92 = load i16, ptr %dev_name_len.i, align 2
  %conv52.i = trunc i16 %92 to i8
  %arrayidx53.i = getelementptr i8, ptr %add.ptr42.i, i32 1
  %93 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv52.i, ptr %arrayidx53.i, align 1
  %add.ptr56.i = getelementptr i8, ptr %add.ptr42.i, i32 2
  %dev_name.i = getelementptr i8, ptr %plist.0135.i, i32 300
  %94 = load i16, ptr %dev_name_len.i, align 2
  %conv59.i = zext i16 %94 to i32
  %95 = call ptr @memcpy(ptr %add.ptr56.i, ptr %dev_name.i, i32 %conv59.i)
  %96 = load i16, ptr %dev_name_len.i, align 2
  %conv61.i = zext i16 %96 to i32
  %add.ptr62.i = getelementptr i8, ptr %add.ptr56.i, i32 %conv61.i
  br label %if.end63.i

if.end63.i:                                       ; preds = %do.body37.i, %if.then9.i.if.end63.i_crit_edge
  %pcur.1.i = phi ptr [ %add.ptr62.i, %do.body37.i ], [ %add.ptr32.i, %if.then9.i.if.end63.i_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pcur.1.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %pstart.0132.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %97 = trunc i32 %sub.ptr.sub.i to i8
  %conv66.i = add i8 %97, -1
  %98 = ptrtoint ptr %pstart.0132.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv66.i, ptr %pstart.0132.i, align 1
  %99 = trunc i32 %sub.ptr.sub.i to i16
  %100 = and i16 %99, 255
  %conv69.i = add i16 %100, %attr_len.0134.i
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.end63.i, %while.body.i.if.end70.i_crit_edge
  %pstart.1.i = phi ptr [ %pcur.1.i, %if.end63.i ], [ %pstart.0132.i, %while.body.i.if.end70.i_crit_edge ]
  %pcur.2.i = phi ptr [ %pcur.1.i, %if.end63.i ], [ %pcur.0133.i, %while.body.i.if.end70.i_crit_edge ]
  %attr_len.1.i = phi i16 [ %conv69.i, %if.end63.i ], [ %attr_len.0134.i, %while.body.i.if.end70.i_crit_edge ]
  %cmp6.not.i = icmp eq ptr %asoc_list.i, %61
  br i1 %cmp6.not.i, label %while.end.i, label %if.end70.i.while.body.i_crit_edge

if.end70.i.while.body.i_crit_edge:                ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %if.end70.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %attr_len.1.i)
  %cmp73.not.i = icmp eq i16 %attr_len.1.i, 0
  br i1 %cmp73.not.i, label %while.end.i.go_add_group_info_attr.exit_crit_edge, label %if.then75.i

while.end.i.go_add_group_info_attr.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %go_add_group_info_attr.exit

if.then75.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call76.i = call i32 @rtw_set_p2p_attr_content(ptr noundef %add.ptr187, i8 noundef zeroext 14, i16 noundef zeroext %attr_len.1.i, ptr noundef %call7.i.i.i) #13
  br label %go_add_group_info_attr.exit

go_add_group_info_attr.exit:                      ; preds = %if.then75.i, %while.end.i.go_add_group_info_attr.exit_crit_edge, %while.end.thread.i
  %len.0.i = phi i32 [ %call76.i, %if.then75.i ], [ 0, %while.end.i.go_add_group_info_attr.exit_crit_edge ], [ 0, %while.end.thread.i ]
  call void @kfree(ptr noundef %call7.i.i.i) #13
  %add189 = add i32 %len.0.i, %add183
  br label %if.end190

if.end190:                                        ; preds = %go_add_group_info_attr.exit, %if.end31.if.end190_crit_edge
  %p2pielen.1 = phi i32 [ %add189, %go_add_group_info_attr.exit ], [ %add183, %if.end31.if.end190_crit_edge ]
  %call192 = call ptr @rtw_set_ie(ptr noundef %pbuf, i32 noundef 221, i32 noundef %p2pielen.1, ptr noundef nonnull %p2pie, ptr noundef nonnull %len) #13
  %101 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %len, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %p2pie) #13
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @build_prov_disc_request_p2p_ie(ptr nocapture noundef readonly %pwdinfo, ptr noundef %pbuf, ptr nocapture noundef readonly %pssid, i8 noundef zeroext %ussidlen, ptr nocapture noundef readonly %pdev_raddr) local_unnamed_addr #0 align 64 {
entry:
  %p2pie = alloca [256 x i8], align 1
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %p2pie) #13
  %0 = getelementptr inbounds i8, ptr %p2pie, i32 28
  %1 = call ptr @memset(ptr %0, i32 0, i32 228)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #13
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %len, align 4
  %3 = ptrtoint ptr %p2pie to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 80, ptr %p2pie, align 1
  %arrayidx2 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 111, ptr %arrayidx2, align 1
  %arrayidx4 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -102, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 9, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 4
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %arrayidx8, align 1
  %add.ptr = getelementptr inbounds i8, ptr %p2pie, i32 5
  %arrayidx9 = getelementptr inbounds i8, ptr %p2pie, i32 6
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx9, align 1
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %add.ptr, align 1
  %arrayidx14 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 7
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 39, ptr %arrayidx14, align 1
  %persistent_supported = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 41
  %11 = ptrtoint ptr %persistent_supported to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %persistent_supported, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %spec.select = select i1 %tobool.not, i8 8, i8 10
  %13 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.select, ptr %13, align 1
  %arrayidx20 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 9
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 13, ptr %arrayidx20, align 1
  %device_name_len = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 31
  %16 = ptrtoint ptr %device_name_len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %device_name_len, align 4
  %conv = zext i8 %17 to i16
  %add22 = add nuw nsw i16 %conv, 21
  %18 = lshr i16 %add22, 8
  %conv25 = trunc i16 %18 to i8
  %add.ptr27 = getelementptr inbounds i8, ptr %p2pie, i32 10
  %arrayidx28 = getelementptr inbounds i8, ptr %p2pie, i32 11
  %19 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv25, ptr %arrayidx28, align 1
  %20 = add i8 %17, 21
  %21 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %add.ptr27, align 1
  %add.ptr42 = getelementptr inbounds i8, ptr %p2pie, i32 12
  %device_addr = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 18
  %22 = call ptr @memcpy(ptr %add.ptr42, ptr %device_addr, i32 6)
  %ui_got_wps_info = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 43
  %23 = ptrtoint ptr %ui_got_wps_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ui_got_wps_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp = icmp eq i32 %24, 3
  %.sink243 = select i1 %cmp, i8 -128, i8 8
  %25 = getelementptr inbounds i8, ptr %p2pie, i32 18
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %25, align 1
  %27 = getelementptr inbounds i8, ptr %p2pie, i32 19
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.sink243, ptr %27, align 1
  %add.ptr70 = getelementptr inbounds i8, ptr %p2pie, i32 20
  %29 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %add.ptr70, align 1
  %arrayidx74 = getelementptr inbounds i8, ptr %p2pie, i32 21
  %30 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 8, ptr %arrayidx74, align 1
  %add.ptr80 = getelementptr inbounds i8, ptr %p2pie, i32 22
  %31 = ptrtoint ptr %add.ptr80 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %add.ptr80, align 1
  %arrayidx84 = getelementptr inbounds i8, ptr %p2pie, i32 23
  %32 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 80, ptr %arrayidx84, align 1
  %arrayidx87 = getelementptr inbounds i8, ptr %p2pie, i32 24
  %33 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -14, ptr %arrayidx87, align 1
  %arrayidx90 = getelementptr inbounds i8, ptr %p2pie, i32 25
  %34 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 4, ptr %arrayidx90, align 1
  %add.ptr96 = getelementptr inbounds i8, ptr %p2pie, i32 26
  %35 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %add.ptr96, align 1
  %arrayidx100 = getelementptr inbounds i8, ptr %p2pie, i32 27
  %36 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 5, ptr %arrayidx100, align 1
  %arrayidx105 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 28
  %37 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx105, align 1
  %add.ptr108 = getelementptr inbounds i8, ptr %p2pie, i32 29
  %38 = ptrtoint ptr %add.ptr108 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 16, ptr %add.ptr108, align 1
  %arrayidx112 = getelementptr inbounds i8, ptr %p2pie, i32 30
  %39 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 17, ptr %arrayidx112, align 1
  %add.ptr123 = getelementptr inbounds i8, ptr %p2pie, i32 31
  %40 = ptrtoint ptr %add.ptr123 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %add.ptr123, align 1
  %arrayidx132 = getelementptr inbounds i8, ptr %p2pie, i32 32
  %41 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %17, ptr %arrayidx132, align 1
  %add.ptr137 = getelementptr inbounds i8, ptr %p2pie, i32 33
  %device_name = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 30
  %conv140 = zext i8 %17 to i32
  %42 = call ptr @memcpy(ptr %add.ptr137, ptr %device_name, i32 %conv140)
  %add143 = add nuw nsw i32 %conv140, 33
  %role1.i = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 15
  %43 = ptrtoint ptr %role1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %role1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp.i = icmp eq i32 %44, 2
  br i1 %cmp.i, label %if.then144, label %entry.if.end177_crit_edge

entry.if.end177_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end177

if.then144:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %inc145 = add nuw nsw i32 %conv140, 34
  %arrayidx146 = getelementptr [256 x i8], ptr %p2pie, i32 0, i32 %add143
  %45 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 15, ptr %arrayidx146, align 1
  %conv148 = zext i8 %ussidlen to i32
  %conv150 = add nuw nsw i32 %conv148, 6
  %46 = lshr i32 %conv150, 8
  %conv153 = trunc i32 %46 to i8
  %add.ptr155 = getelementptr i8, ptr %p2pie, i32 %inc145
  %arrayidx156 = getelementptr i8, ptr %add.ptr155, i32 1
  %47 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv153, ptr %arrayidx156, align 1
  %conv162 = trunc i32 %conv150 to i8
  %48 = ptrtoint ptr %add.ptr155 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv162, ptr %add.ptr155, align 1
  %add168 = add nuw nsw i32 %conv140, 36
  %add.ptr170 = getelementptr i8, ptr %p2pie, i32 %add168
  %49 = call ptr @memcpy(ptr %add.ptr170, ptr %pdev_raddr, i32 6)
  %add171 = add nuw nsw i32 %conv140, 42
  %add.ptr173 = getelementptr i8, ptr %p2pie, i32 %add171
  %50 = call ptr @memcpy(ptr %add.ptr173, ptr %pssid, i32 %conv148)
  %add176 = add nuw nsw i32 %add171, %conv148
  br label %if.end177

if.end177:                                        ; preds = %if.then144, %entry.if.end177_crit_edge
  %p2pielen.1 = phi i32 [ %add176, %if.then144 ], [ %add143, %entry.if.end177_crit_edge ]
  %call179 = call ptr @rtw_set_ie(ptr noundef %pbuf, i32 noundef 221, i32 noundef %p2pielen.1, ptr noundef nonnull %p2pie, ptr noundef nonnull %len) #13
  %51 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %p2pie) #13
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @build_assoc_resp_p2p_ie(ptr nocapture noundef readnone %pwdinfo, ptr noundef %pbuf, i8 noundef zeroext %status_code) local_unnamed_addr #0 align 64 {
entry:
  %status_code.addr = alloca i8, align 1
  %p2pie = alloca [256 x i8], align 1
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %status_code.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %status_code, ptr %status_code.addr, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %p2pie) #13
  %1 = getelementptr inbounds i8, ptr %p2pie, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 252)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #13
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %len, align 4
  %4 = ptrtoint ptr %p2pie to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 80, ptr %p2pie, align 1
  %arrayidx2 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 111, ptr %arrayidx2, align 1
  %arrayidx4 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -102, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 9, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr inbounds [256 x i8], ptr %p2pie, i32 0, i32 4
  %call = call i32 @rtw_set_p2p_attr_content(ptr noundef %arrayidx7, i8 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %status_code.addr) #13
  %add = add i32 %call, 4
  %call8 = call ptr @rtw_set_ie(ptr noundef %pbuf, i32 noundef 221, i32 noundef %add, ptr noundef nonnull %p2pie, ptr noundef nonnull %len) #13
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %p2pie) #13
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @process_probe_req_p2p_ie(ptr nocapture noundef readonly %pwdinfo, ptr noundef %pframe, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %p2pielen = alloca i32, align 4
  %ssid_len = alloca i32, align 4
  %rate_cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p2pielen) #13
  %0 = ptrtoint ptr %p2pielen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %p2pielen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ssid_len) #13
  %1 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ssid_len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate_cnt) #13
  %2 = ptrtoint ptr %rate_cnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rate_cnt, align 4
  %add.ptr = getelementptr i8, ptr %pframe, i32 24
  %sub = add i32 %len, -24
  %call = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull %rate_cnt, i32 noundef %sub) #13
  %3 = ptrtoint ptr %rate_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rate_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp = icmp slt i32 %4, 5
  br i1 %cmp, label %for.cond.preheader, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp395 = icmp sgt i32 %4, 0
  br i1 %cmp395, label %for.body, label %for.cond.preheader.cleanup69_crit_edge

for.cond.preheader.cleanup69_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup69

for.body:                                         ; preds = %for.cond.preheader
  %add.ptr4 = getelementptr i8, ptr %call, i32 2
  %5 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr4, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %if.then28 [
    i8 2, label %for.body.for.inc_crit_edge
    i8 4, label %for.body.for.inc_crit_edge100
    i8 11, label %for.body.for.inc_crit_edge101
    i8 22, label %for.body.for.inc_crit_edge102
  ]

for.body.for.inc_crit_edge102:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.for.inc_crit_edge101:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.for.inc_crit_edge100:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge100, %for.body.for.inc_crit_edge101, %for.body.for.inc_crit_edge102
  %g_rate.1 = phi i32 [ 1, %if.then28 ], [ 0, %for.body.for.inc_crit_edge ], [ 0, %for.body.for.inc_crit_edge100 ], [ 0, %for.body.for.inc_crit_edge101 ], [ 0, %for.body.for.inc_crit_edge102 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %exitcond.not = icmp eq i32 %4, 1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.body.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %add.ptr5.1 = getelementptr i8, ptr %call, i32 3
  %8 = ptrtoint ptr %add.ptr5.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr5.1, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %9, label %if.then28.1 [
    i8 2, label %for.body.1.for.inc.1_crit_edge
    i8 4, label %for.body.1.for.inc.1_crit_edge103
    i8 11, label %for.body.1.for.inc.1_crit_edge104
    i8 22, label %for.body.1.for.inc.1_crit_edge105
  ]

for.body.1.for.inc.1_crit_edge105:                ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

for.body.1.for.inc.1_crit_edge104:                ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

for.body.1.for.inc.1_crit_edge103:                ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then28.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then28.1, %for.body.1.for.inc.1_crit_edge, %for.body.1.for.inc.1_crit_edge103, %for.body.1.for.inc.1_crit_edge104, %for.body.1.for.inc.1_crit_edge105
  %g_rate.1.1 = phi i32 [ 1, %if.then28.1 ], [ %g_rate.1, %for.body.1.for.inc.1_crit_edge ], [ %g_rate.1, %for.body.1.for.inc.1_crit_edge103 ], [ %g_rate.1, %for.body.1.for.inc.1_crit_edge104 ], [ %g_rate.1, %for.body.1.for.inc.1_crit_edge105 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %exitcond.not.1 = icmp eq i32 %4, 2
  br i1 %exitcond.not.1, label %for.inc.1.for.end_crit_edge, label %for.body.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %add.ptr5.2 = getelementptr i8, ptr %call, i32 4
  %11 = ptrtoint ptr %add.ptr5.2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr5.2, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %12, label %if.then28.2 [
    i8 2, label %for.body.2.for.inc.2_crit_edge
    i8 4, label %for.body.2.for.inc.2_crit_edge106
    i8 11, label %for.body.2.for.inc.2_crit_edge107
    i8 22, label %for.body.2.for.inc.2_crit_edge108
  ]

for.body.2.for.inc.2_crit_edge108:                ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

for.body.2.for.inc.2_crit_edge107:                ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

for.body.2.for.inc.2_crit_edge106:                ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then28.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then28.2, %for.body.2.for.inc.2_crit_edge, %for.body.2.for.inc.2_crit_edge106, %for.body.2.for.inc.2_crit_edge107, %for.body.2.for.inc.2_crit_edge108
  %g_rate.1.2 = phi i32 [ 1, %if.then28.2 ], [ %g_rate.1.1, %for.body.2.for.inc.2_crit_edge ], [ %g_rate.1.1, %for.body.2.for.inc.2_crit_edge106 ], [ %g_rate.1.1, %for.body.2.for.inc.2_crit_edge107 ], [ %g_rate.1.1, %for.body.2.for.inc.2_crit_edge108 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %exitcond.not.2 = icmp eq i32 %4, 3
  br i1 %exitcond.not.2, label %for.inc.2.for.end_crit_edge, label %for.body.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.3:                                       ; preds = %for.inc.2
  %add.ptr5.3 = getelementptr i8, ptr %call, i32 5
  %14 = ptrtoint ptr %add.ptr5.3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr5.3, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %15, label %if.then28.3 [
    i8 2, label %for.body.3.for.end_crit_edge
    i8 4, label %for.body.3.for.end_crit_edge109
    i8 11, label %for.body.3.for.end_crit_edge110
    i8 22, label %for.body.3.for.end_crit_edge111
  ]

for.body.3.for.end_crit_edge111:                  ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.3.for.end_crit_edge110:                  ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.3.for.end_crit_edge109:                  ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then28.3:                                      ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.then28.3, %for.body.3.for.end_crit_edge, %for.body.3.for.end_crit_edge109, %for.body.3.for.end_crit_edge110, %for.body.3.for.end_crit_edge111, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge
  %g_rate.1.lcssa = phi i32 [ %g_rate.1, %for.inc.for.end_crit_edge ], [ %g_rate.1.1, %for.inc.1.for.end_crit_edge ], [ %g_rate.1.2, %for.inc.2.for.end_crit_edge ], [ 1, %if.then28.3 ], [ %g_rate.1.2, %for.body.3.for.end_crit_edge ], [ %g_rate.1.2, %for.body.3.for.end_crit_edge109 ], [ %g_rate.1.2, %for.body.3.for.end_crit_edge110 ], [ %g_rate.1.2, %for.body.3.for.end_crit_edge111 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %g_rate.1.lcssa)
  %cmp29 = icmp eq i32 %g_rate.1.lcssa, 0
  br i1 %cmp29, label %for.end.cleanup69_crit_edge, label %for.end.if.end34_crit_edge

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

for.end.cleanup69_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup69

if.end34:                                         ; preds = %for.end.if.end34_crit_edge, %entry.if.end34_crit_edge
  %call39 = call ptr @rtw_get_ie(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %ssid_len, i32 noundef %sub) #13
  %17 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ssid_len, align 4
  %and40 = and i32 %18, 255
  store i32 %and40, ptr %ssid_len, align 4
  %role1.i = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 15
  %19 = ptrtoint ptr %role1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %role1.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %20, label %if.end34.cleanup69_crit_edge [
    i32 1, label %if.end34.if.then45_crit_edge
    i32 3, label %if.end34.if.then45_crit_edge112
  ]

if.end34.if.then45_crit_edge112:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45

if.end34.if.then45_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then45

if.end34.cleanup69_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup69

if.then45:                                        ; preds = %if.end34.if.then45_crit_edge, %if.end34.if.then45_crit_edge112
  %call50 = call ptr @rtw_get_p2p_ie(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef null, ptr noundef nonnull %p2pielen) #13
  %tobool.not = icmp eq ptr %call50, null
  %tobool52.not = icmp eq ptr %call39, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool52.not
  br i1 %or.cond, label %if.then45.cleanup69_crit_edge, label %land.lhs.true53

if.then45.cleanup69_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup69

land.lhs.true53:                                  ; preds = %if.then45
  %add.ptr54 = getelementptr i8, ptr %call39, i32 2
  %p2p_wildcard_ssid = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 25
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(7) %add.ptr54, ptr noundef dereferenceable(7) %p2p_wildcard_ssid, i32 7) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool56.not = icmp eq i32 %bcmp, 0
  br i1 %tobool56.not, label %land.lhs.true53.cleanup69_crit_edge, label %land.lhs.true60.critedge

land.lhs.true53.cleanup69_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup69

land.lhs.true60.critedge:                         ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ssid_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp61 = icmp eq i32 %23, 0
  %spec.select = zext i1 %cmp61 to i32
  br label %cleanup69

cleanup69:                                        ; preds = %land.lhs.true60.critedge, %land.lhs.true53.cleanup69_crit_edge, %if.then45.cleanup69_crit_edge, %if.end34.cleanup69_crit_edge, %for.end.cleanup69_crit_edge, %for.cond.preheader.cleanup69_crit_edge
  %retval.1 = phi i32 [ 0, %for.end.cleanup69_crit_edge ], [ 0, %if.then45.cleanup69_crit_edge ], [ 1, %land.lhs.true53.cleanup69_crit_edge ], [ %spec.select, %land.lhs.true60.critedge ], [ 0, %if.end34.cleanup69_crit_edge ], [ 0, %for.cond.preheader.cleanup69_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate_cnt) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ssid_len) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p2pielen) #13
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_ie(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_p2p_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @process_assoc_req_p2p_ie(ptr nocapture noundef readonly %pwdinfo, ptr noundef %pframe, i32 noundef %len, ptr nocapture noundef writeonly %psta) local_unnamed_addr #0 align 64 {
entry:
  %attr_contentlen = alloca i32, align 4
  %p2p_ielen = alloca i32, align 4
  %le_tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr_contentlen) #13
  %0 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %attr_contentlen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p2p_ielen) #13
  %1 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %p2p_ielen, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %le_tmp) #13
  %2 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %le_tmp, align 2, !annotation !165
  %role1.i = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 15
  %3 = ptrtoint ptr %role1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %role1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.i = icmp eq i32 %4, 3
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %pframe to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pframe, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %6)
  %cmp = icmp ult i16 %6, 1024
  %..neg182 = select i1 %cmp, i32 -4, i32 -10
  %. = select i1 %cmp, i32 4, i32 10
  %add.ptr = getelementptr i8, ptr %pframe, i32 24
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 %.
  %sub = add i32 %len, -24
  %sub9 = add i32 %sub, %..neg182
  %call10 = call ptr @rtw_get_p2p_ie(ptr noundef %add.ptr7, i32 noundef %sub9, ptr noundef null, ptr noundef nonnull %p2p_ielen) #13
  %tobool.not = icmp eq ptr %call10, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %7 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp12 = icmp ugt i32 %7, 4
  br i1 %tobool.not, label %do.body, label %do.body21

do.body:                                          ; preds = %if.end
  br i1 %cmp12, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #16
  br label %cleanup

do.body21:                                        ; preds = %if.end
  br i1 %cmp12, label %do.end27, label %do.body21.while.body.lr.ph_crit_edge

do.body21.while.body.lr.ph_crit_edge:             ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph

do.end27:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #16
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %do.end27, %do.body21.while.body.lr.ph_crit_edge
  %dev_cap = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 68
  %dev_addr = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 67
  %config_methods = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 69
  %primary_dev_type = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 70
  %num_of_secdev_type85 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 71
  %secdev_types_list = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 72
  %dev_name_len96 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 73
  %dev_name = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 74
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr7 to i32
  %sub.ptr.sub.neg = add i32 %sub9, %sub.ptr.rhs.cast
  br label %while.body

while.body:                                       ; preds = %if.end118.while.body_crit_edge, %while.body.lr.ph
  %p2p_ie.0180 = phi ptr [ %call10, %while.body.lr.ph ], [ %call121, %if.end118.while.body_crit_edge ]
  %8 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p2p_ielen, align 4
  %call35 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %p2p_ie.0180, i32 noundef %9, i8 noundef zeroext 2, ptr noundef nonnull %le_tmp, ptr noundef nonnull %attr_contentlen) #13
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %while.body.if.end53_crit_edge, label %do.body38

while.body.if.end53_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

do.body38:                                        ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %10 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp39 = icmp ugt i32 %10, 4
  br i1 %cmp39, label %do.end44, label %do.body38.do.end49_crit_edge

do.body38.do.end49_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end49

do.end44:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #15
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #16
  br label %do.end49

do.end49:                                         ; preds = %do.end44, %do.body38.do.end49_crit_edge
  %11 = ptrtoint ptr %le_tmp to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %le_tmp, align 2
  %13 = lshr i16 %12, 8
  %conv52 = trunc i16 %13 to i8
  %14 = ptrtoint ptr %dev_cap to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv52, ptr %dev_cap, align 8
  br label %if.end53

if.end53:                                         ; preds = %do.end49, %while.body.if.end53_crit_edge
  %15 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p2p_ielen, align 4
  %call54 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %p2p_ie.0180, i32 noundef %16, i8 noundef zeroext 13, ptr noundef null, ptr noundef nonnull %attr_contentlen) #13
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %if.end53.if.end118_crit_edge, label %do.body57

if.end53.if.end118_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end118

do.body57:                                        ; preds = %if.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %17 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp58 = icmp ugt i32 %17, 4
  br i1 %cmp58, label %do.end63, label %do.body57.if.end8.i.i_crit_edge

do.body57.if.end8.i.i_crit_edge:                  ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

do.end63:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #15
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1) #16
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end63, %do.body57.if.end8.i.i_crit_edge
  %18 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %attr_contentlen, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #19
  %tobool70.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool70.not, label %if.end8.i.i.if.end118_crit_edge, label %if.then71

if.end8.i.i.if.end118_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end118

if.then71:                                        ; preds = %if.end8.i.i
  %20 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %p2p_ielen, align 4
  %call72 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %p2p_ie.0180, i32 noundef %21, i8 noundef zeroext 13, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %attr_contentlen) #13
  %22 = call ptr @memcpy(ptr %dev_addr, ptr %call9.i.i, i32 6)
  %add.ptr73 = getelementptr i8, ptr %call9.i.i, i32 6
  %23 = ptrtoint ptr %add.ptr73 to i32
  call void @__asan_load2_noabort(i32 %23)
  %be_tmp.0.copyload = load i16, ptr %add.ptr73, align 2
  %24 = ptrtoint ptr %config_methods to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %be_tmp.0.copyload, ptr %config_methods, align 2
  %add.ptr74 = getelementptr i8, ptr %call9.i.i, i32 8
  %25 = ptrtoint ptr %add.ptr74 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %add.ptr74, align 8
  %27 = ptrtoint ptr %primary_dev_type to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %primary_dev_type, align 4
  %add.ptr76 = getelementptr i8, ptr %call9.i.i, i32 16
  %28 = ptrtoint ptr %add.ptr76 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr76, align 16
  %add.ptr77 = getelementptr i8, ptr %call9.i.i, i32 17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp79 = icmp eq i8 %29, 0
  br i1 %cmp79, label %if.then81, label %if.else83

if.then81:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %num_of_secdev_type85 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %num_of_secdev_type85, align 4
  br label %if.end95

if.else83:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  %conv78 = zext i8 %29 to i32
  %31 = ptrtoint ptr %num_of_secdev_type85 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %29, ptr %num_of_secdev_type85, align 4
  %mul = shl nuw nsw i32 %conv78, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %29)
  %cmp87 = icmp ugt i8 %29, 4
  %spec.select = select i1 %cmp87, i32 32, i32 %mul
  %32 = call ptr @memcpy(ptr %secdev_types_list, ptr %add.ptr77, i32 %spec.select)
  %add.ptr94 = getelementptr i8, ptr %add.ptr77, i32 %mul
  br label %if.end95

if.end95:                                         ; preds = %if.else83, %if.then81
  %pattr_content.0 = phi ptr [ %add.ptr77, %if.then81 ], [ %add.ptr94, %if.else83 ]
  %33 = ptrtoint ptr %dev_name_len96 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %dev_name_len96, align 2
  %34 = ptrtoint ptr %pattr_content.0 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %pattr_content.0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4113, i16 %35)
  %cmp98 = icmp eq i16 %35, 4113
  br i1 %cmp98, label %if.then100, label %if.end95.if.end116_crit_edge

if.end95.if.end116_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end116

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr101 = getelementptr i8, ptr %pattr_content.0, i32 2
  %36 = ptrtoint ptr %add.ptr101 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr101, align 2
  %38 = call i16 @llvm.umin.i16(i16 %37, i16 32)
  %39 = ptrtoint ptr %dev_name_len96 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %dev_name_len96, align 2
  %add.ptr113 = getelementptr i8, ptr %pattr_content.0, i32 4
  %conv115 = zext i16 %38 to i32
  %40 = call ptr @memcpy(ptr %dev_name, ptr %add.ptr113, i32 %conv115)
  br label %if.end116

if.end116:                                        ; preds = %if.then100, %if.end95.if.end116_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %if.end118

if.end118:                                        ; preds = %if.end116, %if.end8.i.i.if.end118_crit_edge, %if.end53.if.end118_crit_edge
  %41 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %p2p_ielen, align 4
  %add.ptr119 = getelementptr i8, ptr %p2p_ie.0180, i32 %42
  %sub.ptr.lhs.cast = ptrtoint ptr %p2p_ie.0180 to i32
  %43 = add i32 %42, %sub.ptr.lhs.cast
  %sub120 = sub i32 %sub.ptr.sub.neg, %43
  %call121 = call ptr @rtw_get_p2p_ie(ptr noundef %add.ptr119, i32 noundef %sub120, ptr noundef null, ptr noundef nonnull %p2p_ielen) #13
  %tobool34.not = icmp eq ptr %call121, null
  br i1 %tobool34.not, label %if.end118.cleanup_crit_edge, label %if.end118.while.body_crit_edge

if.end118.while.body_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end118.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 5, %entry.cleanup_crit_edge ], [ 4, %do.body.cleanup_crit_edge ], [ 4, %do.end ], [ 0, %if.end118.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %le_tmp) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p2p_ielen) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr_contentlen) #13
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_p2p_attr_content(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @process_p2p_devdisc_req(ptr nocapture noundef readonly %pwdinfo, ptr noundef %pframe, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %status.addr.i = alloca i8, align 1
  %dialogToken.addr.i = alloca i8, align 1
  %category.i = alloca i8, align 1
  %action.i = alloca i8, align 1
  %p2poui.i = alloca i32, align 4
  %oui_subtype.i = alloca i8, align 1
  %p2pie.i = alloca [8 x i8], align 8
  %p2p_ielen = alloca i32, align 4
  %groupid = alloca [38 x i8], align 1
  %dev_addr = alloca [6 x i8], align 1
  %attr_contentlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pwdinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwdinfo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p2p_ielen) #13
  %2 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %p2p_ielen, align 4
  %arrayidx = getelementptr i8, ptr %pframe, i32 31
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %add.ptr2 = getelementptr i8, ptr %pframe, i32 32
  %sub = add i32 %len, -8
  %call = call ptr @rtw_get_p2p_ie(ptr noundef %add.ptr2, i32 noundef %sub, ptr noundef null, ptr noundef nonnull %p2p_ielen) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end42_crit_edge, label %if.then

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %groupid) #13
  %5 = call ptr @memset(ptr %groupid, i32 0, i32 38)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %dev_addr) #13
  %6 = call ptr @memset(ptr %dev_addr, i32 0, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr_contentlen) #13
  %7 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %attr_contentlen, align 4
  %8 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p2p_ielen, align 4
  %call3 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %call, i32 noundef %9, i8 noundef zeroext 15, ptr noundef nonnull %groupid, ptr noundef nonnull %attr_contentlen) #13
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then.if.end41_crit_edge, label %if.then5

if.then.if.end41_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then5:                                         ; preds = %if.then
  %device_addr = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 18
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %device_addr, ptr noundef nonnull dereferenceable(6) %groupid, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool9.not = icmp eq i32 %bcmp, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.then5.if.end41_crit_edge

if.then5.if.end41_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

land.lhs.true:                                    ; preds = %if.then5
  %p2p_group_ssid = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 39
  %add.ptr12 = getelementptr inbounds i8, ptr %groupid, i32 6
  %p2p_group_ssid_len = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 40
  %10 = ptrtoint ptr %p2p_group_ssid_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %p2p_group_ssid_len, align 4
  %conv = zext i8 %11 to i32
  %bcmp64 = call i32 @bcmp(ptr %p2p_group_ssid, ptr %add.ptr12, i32 %conv) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp64)
  %tobool14.not = icmp eq i32 %bcmp64, 0
  br i1 %tobool14.not, label %if.then15, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then15:                                        ; preds = %land.lhs.true
  %12 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %attr_contentlen, align 4
  %13 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %p2p_ielen, align 4
  %call17 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %call, i32 noundef %14, i8 noundef zeroext 3, ptr noundef nonnull %dev_addr, ptr noundef nonnull %attr_contentlen) #13
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then15.if.end41_crit_edge, label %if.then19

if.then15.if.end41_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then19:                                        ; preds = %if.then15
  %asoc_list_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11, i32 9
  call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #13
  %asoc_list = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11, i32 10
  %15 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %asoc_list, align 4
  %cmp.not68 = icmp eq ptr %asoc_list, %16
  br i1 %cmp.not68, label %if.then19.while.end_crit_edge, label %if.then19.while.body_crit_edge

if.then19.while.body_crit_edge:                   ; preds = %if.then19
  br label %while.body

if.then19.while.end_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %if.else.while.body_crit_edge, %if.then19.while.body_crit_edge
  %plist.069 = phi ptr [ %18, %if.else.while.body_crit_edge ], [ %16, %if.then19.while.body_crit_edge ]
  %17 = ptrtoint ptr %plist.069 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %plist.069, align 4
  %is_p2p_device = getelementptr i8, ptr %plist.069, i32 244
  %19 = ptrtoint ptr %is_p2p_device to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_p2p_device, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool24.not = icmp eq i8 %20, 0
  br i1 %tobool24.not, label %while.body.if.else_crit_edge, label %land.lhs.true25

while.body.if.else_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true25:                                  ; preds = %while.body
  %dev_cap = getelementptr i8, ptr %plist.069, i32 252
  %21 = ptrtoint ptr %dev_cap to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dev_cap, align 8
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool27.not = icmp eq i8 %23, 0
  br i1 %tobool27.not, label %land.lhs.true25.if.else_crit_edge, label %land.lhs.true28

land.lhs.true25.if.else_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %dev_addr29 = getelementptr i8, ptr %plist.069, i32 246
  %bcmp65 = call i32 @bcmp(ptr noundef dereferenceable(6) %dev_addr29, ptr noundef nonnull dereferenceable(6) %dev_addr, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp65)
  %tobool33.not = icmp eq i32 %bcmp65, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true28.if.else_crit_edge

land.lhs.true28.if.else_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then34:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #15
  %hwaddr = getelementptr i8, ptr %plist.069, i32 -2216
  call fastcc void @issue_group_disc_req(ptr noundef %pwdinfo, ptr noundef %hwaddr)
  br label %while.end

if.else:                                          ; preds = %land.lhs.true28.if.else_crit_edge, %land.lhs.true25.if.else_crit_edge, %while.body.if.else_crit_edge
  %cmp.not = icmp eq ptr %asoc_list, %18
  br i1 %cmp.not, label %if.else.while.end_crit_edge, label %if.else.while.body_crit_edge

if.else.while.body_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.else.while.end_crit_edge, %if.then34, %if.then19.while.end_crit_edge
  %status.1 = phi i8 [ 0, %if.then34 ], [ 8, %if.then19.while.end_crit_edge ], [ 1, %if.else.while.end_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #13
  br label %if.end41

if.end41:                                         ; preds = %while.end, %if.then15.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.then5.if.end41_crit_edge, %if.then.if.end41_crit_edge
  %status.2 = phi i8 [ %status.1, %while.end ], [ 8, %if.then.if.end41_crit_edge ], [ 4, %if.then15.if.end41_crit_edge ], [ 4, %land.lhs.true.if.end41_crit_edge ], [ 4, %if.then5.if.end41_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr_contentlen) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %dev_addr) #13
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %groupid) #13
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %entry.if.end42_crit_edge
  %status.3 = phi i8 [ %status.2, %if.end41 ], [ 8, %entry.if.end42_crit_edge ]
  %24 = ptrtoint ptr %pframe to i32
  %add = add i32 %24, 10
  %25 = inttoptr i32 %add to ptr
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dialogToken.addr.i)
  %26 = ptrtoint ptr %status.addr.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %status.3, ptr %status.addr.i, align 1
  %27 = ptrtoint ptr %dialogToken.addr.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %4, ptr %dialogToken.addr.i, align 1
  %28 = ptrtoint ptr %pwdinfo to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pwdinfo, align 4
  %xmitpriv.i = getelementptr inbounds %struct.adapter, ptr %29, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %category.i) #13
  %30 = ptrtoint ptr %category.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 4, ptr %category.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %action.i) #13
  %31 = ptrtoint ptr %action.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 9, ptr %action.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p2poui.i) #13
  %32 = ptrtoint ptr %p2poui.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1349491209, ptr %p2poui.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %oui_subtype.i) #13
  %33 = ptrtoint ptr %oui_subtype.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 6, ptr %oui_subtype.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p2pie.i) #13
  %34 = ptrtoint ptr %p2pie.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 5796020608894500864, ptr %p2pie.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %35 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp.i = icmp ugt i32 %35, 4
  br i1 %cmp.i, label %do.end.i, label %if.end42.do.end4.i_crit_edge

if.end42.do.end4.i_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.78) #16
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end42.do.end4.i_crit_edge
  %call5.i = call ptr @alloc_mgtxmitframe(ptr noundef %xmitpriv.i) #13
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %do.end4.i.issue_p2p_devdisc_resp.exit_crit_edge, label %if.end7.i

do.end4.i.issue_p2p_devdisc_resp.exit_crit_edge:  ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %issue_p2p_devdisc_resp.exit

if.end7.i:                                        ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %attrib.i = getelementptr inbounds %struct.xmit_frame, ptr %call5.i, i32 0, i32 1
  call void @update_mgntframe_attrib(ptr noundef %29, ptr noundef %attrib.i) #13
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %call5.i, i32 0, i32 5
  %36 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf_addr.i, align 4
  %38 = call ptr @memset(ptr %37, i32 0, i32 104)
  %39 = load ptr, ptr %buf_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 40
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %add.ptr.i, align 2
  %addr1.i = getelementptr i8, ptr %39, i32 44
  %41 = call ptr @memcpy(ptr %addr1.i, ptr %25, i32 6)
  %addr2.i = getelementptr i8, ptr %39, i32 50
  %device_addr.i = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 18
  %42 = call ptr @memcpy(ptr %addr2.i, ptr %device_addr.i, i32 6)
  %addr3.i = getelementptr i8, ptr %39, i32 56
  %43 = call ptr @memcpy(ptr %addr3.i, ptr %device_addr.i, i32 6)
  %44 = ptrtoint ptr %add.ptr.i to i32
  %add.i = add i32 %44, 22
  %45 = inttoptr i32 %add.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %45, align 2
  %48 = and i16 %47, 3840
  %mgnt_seq.i = getelementptr inbounds %struct.adapter, ptr %29, i32 0, i32 5, i32 3
  %49 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %mgnt_seq.i, align 4
  %shl.i = shl i16 %50, 4
  %51 = call i16 @llvm.bswap.i16(i16 %shl.i) #13
  %or110.i = or i16 %51, %48
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %or110.i, ptr %45, align 2
  %53 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %mgnt_seq.i, align 4
  %inc.i = add i16 %54, 1
  store i16 %inc.i, ptr %mgnt_seq.i, align 4
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr.i, align 2
  %57 = and i16 %56, 1023
  %58 = or i16 %57, -12288
  store i16 %58, ptr %add.ptr.i, align 2
  %add.ptr33.i = getelementptr i8, ptr %39, i32 64
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call5.i, i32 0, i32 1, i32 8
  %59 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 24, ptr %pktlen.i, align 4
  %call35.i = call ptr @rtw_set_fixed_ie(ptr noundef %add.ptr33.i, i32 noundef 1, ptr noundef nonnull %category.i, ptr noundef %pktlen.i) #13
  %call37.i = call ptr @rtw_set_fixed_ie(ptr noundef %call35.i, i32 noundef 1, ptr noundef nonnull %action.i, ptr noundef %pktlen.i) #13
  %call39.i = call ptr @rtw_set_fixed_ie(ptr noundef %call37.i, i32 noundef 4, ptr noundef nonnull %p2poui.i, ptr noundef %pktlen.i) #13
  %call41.i = call ptr @rtw_set_fixed_ie(ptr noundef %call39.i, i32 noundef 1, ptr noundef nonnull %oui_subtype.i, ptr noundef %pktlen.i) #13
  %call43.i = call ptr @rtw_set_fixed_ie(ptr noundef %call41.i, i32 noundef 1, ptr noundef nonnull %dialogToken.addr.i, ptr noundef %pktlen.i) #13
  %arrayidx51.i = getelementptr inbounds [8 x i8], ptr %p2pie.i, i32 0, i32 4
  %call52.i = call i32 @rtw_set_p2p_attr_content(ptr noundef %arrayidx51.i, i8 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %status.addr.i) #13
  %add53.i = add i32 %call52.i, 4
  %call56.i = call ptr @rtw_set_ie(ptr noundef %call43.i, i32 noundef 221, i32 noundef %add53.i, ptr noundef nonnull %p2pie.i, ptr noundef %pktlen.i) #13
  %60 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pktlen.i, align 4
  %last_txcmdsz.i = getelementptr inbounds %struct.xmit_frame, ptr %call5.i, i32 0, i32 1, i32 9
  %62 = ptrtoint ptr %last_txcmdsz.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %last_txcmdsz.i, align 4
  call void @dump_mgntframe(ptr noundef %29, ptr noundef nonnull %call5.i) #13
  br label %issue_p2p_devdisc_resp.exit

issue_p2p_devdisc_resp.exit:                      ; preds = %if.end7.i, %do.end4.i.issue_p2p_devdisc_resp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p2pie.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %oui_subtype.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p2poui.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %action.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %category.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.addr.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dialogToken.addr.i)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status.3)
  %cmp44 = icmp eq i8 %status.3, 0
  %cond = zext i1 %cmp44 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p2p_ielen) #13
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @issue_group_disc_req(ptr nocapture noundef readonly %pwdinfo, ptr nocapture noundef readonly %da) unnamed_addr #0 align 64 {
entry:
  %category = alloca i8, align 1
  %p2poui = alloca i32, align 4
  %oui_subtype = alloca i8, align 1
  %dialogToken = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pwdinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwdinfo, align 4
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %category) #13
  %2 = ptrtoint ptr %category to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 127, ptr %category, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p2poui) #13
  %3 = ptrtoint ptr %p2poui to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1349491209, ptr %p2poui, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %oui_subtype) #13
  %4 = ptrtoint ptr %oui_subtype to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %oui_subtype, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dialogToken) #13
  %5 = ptrtoint ptr %dialogToken to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %dialogToken, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %6 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp ugt i32 %6, 4
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #16
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call ptr @alloc_mgtxmitframe(ptr noundef %xmitpriv) #13
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #15
  %attrib = getelementptr inbounds %struct.xmit_frame, ptr %call5, i32 0, i32 1
  tail call void @update_mgntframe_attrib(ptr noundef %1, ptr noundef %attrib) #13
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %call5, i32 0, i32 5
  %7 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf_addr, align 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 104)
  %10 = load ptr, ptr %buf_addr, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 40
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %add.ptr, align 2
  %addr1 = getelementptr i8, ptr %10, i32 44
  %12 = call ptr @memcpy(ptr %addr1, ptr %da, i32 6)
  %addr2 = getelementptr i8, ptr %10, i32 50
  %interface_addr = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 19
  %13 = call ptr @memcpy(ptr %addr2, ptr %interface_addr, i32 6)
  %addr3 = getelementptr i8, ptr %10, i32 56
  %14 = call ptr @memcpy(ptr %addr3, ptr %interface_addr, i32 6)
  %15 = ptrtoint ptr %add.ptr to i32
  %add = add i32 %15, 22
  %16 = inttoptr i32 %add to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 2
  %19 = and i16 %18, 3840
  %mgnt_seq = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %mgnt_seq to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mgnt_seq, align 4
  %shl = shl i16 %21, 4
  %22 = tail call i16 @llvm.bswap.i16(i16 %shl)
  %or83 = or i16 %22, %19
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %or83, ptr %16, align 2
  %24 = ptrtoint ptr %mgnt_seq to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mgnt_seq, align 4
  %inc = add i16 %25, 1
  store i16 %inc, ptr %mgnt_seq, align 4
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr, align 2
  %28 = and i16 %27, 1023
  %29 = or i16 %28, -12288
  store i16 %29, ptr %add.ptr, align 2
  %add.ptr33 = getelementptr i8, ptr %10, i32 64
  %pktlen = getelementptr inbounds %struct.xmit_frame, ptr %call5, i32 0, i32 1, i32 8
  %30 = ptrtoint ptr %pktlen to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 24, ptr %pktlen, align 4
  %call35 = call ptr @rtw_set_fixed_ie(ptr noundef %add.ptr33, i32 noundef 1, ptr noundef nonnull %category, ptr noundef %pktlen) #13
  %call37 = call ptr @rtw_set_fixed_ie(ptr noundef %call35, i32 noundef 4, ptr noundef nonnull %p2poui, ptr noundef %pktlen) #13
  %call39 = call ptr @rtw_set_fixed_ie(ptr noundef %call37, i32 noundef 1, ptr noundef nonnull %oui_subtype, ptr noundef %pktlen) #13
  %call41 = call ptr @rtw_set_fixed_ie(ptr noundef %call39, i32 noundef 1, ptr noundef nonnull %dialogToken, ptr noundef %pktlen) #13
  %31 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pktlen, align 4
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %call5, i32 0, i32 1, i32 9
  %33 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %last_txcmdsz, align 4
  call void @dump_mgntframe(ptr noundef %1, ptr noundef nonnull %call5) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end4.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dialogToken) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %oui_subtype) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p2poui) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %category) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @process_p2p_devdisc_resp(ptr nocapture noundef readnone %pwdinfo, ptr nocapture noundef readnone %pframe, i32 noundef %len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @process_p2p_provdisc_req(ptr noundef %pwdinfo, ptr noundef %pframe, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %category.i = alloca i8, align 1
  %action.i = alloca i8, align 1
  %dialogToken.i = alloca i8, align 1
  %p2poui.i = alloca i32, align 4
  %oui_subtype.i = alloca i8, align 1
  %wpsie.i = alloca [100 x i8], align 1
  %wps_ielen = alloca i32, align 4
  %attr_contentlen = alloca i32, align 4
  %be_tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wps_ielen) #13
  %0 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %wps_ielen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr_contentlen) #13
  %1 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %attr_contentlen, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %be_tmp) #13
  %2 = ptrtoint ptr %be_tmp to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %be_tmp, align 2, !annotation !165
  %add.ptr1 = getelementptr i8, ptr %pframe, i32 32
  %sub = add i32 %len, -8
  %call = call ptr @rtw_get_wps_ie(ptr noundef %add.ptr1, i32 noundef %sub, ptr noundef null, ptr noundef nonnull %wps_ielen) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wps_ielen, align 4
  %call2 = call ptr @rtw_get_wps_attr_content(ptr noundef nonnull %call, i32 noundef %4, i16 noundef zeroext 4104, ptr noundef nonnull %be_tmp, ptr noundef nonnull %attr_contentlen) #13
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then.do.body_crit_edge, label %if.then4

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then4:                                         ; preds = %if.then
  %5 = ptrtoint ptr %be_tmp to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %be_tmp, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.89)
  switch i16 %6, label %if.then4.sw.epilog_crit_edge [
    i16 8, label %sw.bb
    i16 4, label %sw.bb5
    i16 128, label %sw.bb9
    i16 256, label %sw.bb13
  ]

if.then4.sw.epilog_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %strconfig_method_desc_of_prov_disc_req = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 7, i32 1
  %8 = call ptr @memcpy(ptr %strconfig_method_desc_of_prov_disc_req, ptr @.str.12, i32 3)
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %strconfig_method_desc_of_prov_disc_req7 = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 7, i32 1
  %9 = call ptr @memcpy(ptr %strconfig_method_desc_of_prov_disc_req7, ptr @.str.13, i32 3)
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %strconfig_method_desc_of_prov_disc_req11 = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 7, i32 1
  %10 = call ptr @memcpy(ptr %strconfig_method_desc_of_prov_disc_req11, ptr @.str.14, i32 3)
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %strconfig_method_desc_of_prov_disc_req15 = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 7, i32 1
  %11 = call ptr @memcpy(ptr %strconfig_method_desc_of_prov_disc_req15, ptr @.str.15, i32 3)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb, %if.then4.sw.epilog_crit_edge
  %12 = ptrtoint ptr %pwdinfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pwdinfo, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %category.i) #13
  %14 = ptrtoint ptr %category.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %category.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %action.i) #13
  %15 = ptrtoint ptr %action.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 9, ptr %action.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dialogToken.i) #13
  %arrayidx.i = getelementptr i8, ptr %pframe, i32 31
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %18 = ptrtoint ptr %dialogToken.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %dialogToken.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p2poui.i) #13
  %19 = ptrtoint ptr %p2poui.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1349491209, ptr %p2poui.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %oui_subtype.i) #13
  %20 = ptrtoint ptr %oui_subtype.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 8, ptr %oui_subtype.i, align 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %wpsie.i) #13
  %21 = getelementptr inbounds i8, ptr %wpsie.i, i32 10
  %22 = call ptr @memset(ptr %21, i32 0, i32 90)
  %xmitpriv.i = getelementptr inbounds %struct.adapter, ptr %13, i32 0, i32 9
  %call.i = call ptr @alloc_mgtxmitframe(ptr noundef %xmitpriv.i) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.epilog.issue_p2p_provision_resp.exit_crit_edge, label %if.end.i

sw.epilog.issue_p2p_provision_resp.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %issue_p2p_provision_resp.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %pframe to i32
  %add = add i32 %23, 10
  %24 = inttoptr i32 %add to ptr
  %attrib.i = getelementptr inbounds %struct.xmit_frame, ptr %call.i, i32 0, i32 1
  call void @update_mgntframe_attrib(ptr noundef %13, ptr noundef %attrib.i) #13
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf_addr.i, align 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 104)
  %28 = load ptr, ptr %buf_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 40
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %add.ptr.i, align 2
  %addr1.i = getelementptr i8, ptr %28, i32 44
  %30 = call ptr @memcpy(ptr %addr1.i, ptr %24, i32 6)
  %addr2.i = getelementptr i8, ptr %28, i32 50
  %mac_addr.i.i = getelementptr inbounds %struct.adapter, ptr %13, i32 0, i32 15, i32 4
  %31 = call ptr @memcpy(ptr %addr2.i, ptr %mac_addr.i.i, i32 6)
  %addr3.i = getelementptr i8, ptr %28, i32 56
  %32 = call ptr @memcpy(ptr %addr3.i, ptr %mac_addr.i.i, i32 6)
  %33 = ptrtoint ptr %add.ptr.i to i32
  %add.i = add i32 %33, 22
  %34 = inttoptr i32 %add.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 2
  %37 = and i16 %36, 3840
  %mgnt_seq.i = getelementptr inbounds %struct.adapter, ptr %13, i32 0, i32 5, i32 3
  %38 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %mgnt_seq.i, align 4
  %shl.i = shl i16 %39, 4
  %40 = call i16 @llvm.bswap.i16(i16 %shl.i) #13
  %or155.i = or i16 %40, %37
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %or155.i, ptr %34, align 2
  %42 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mgnt_seq.i, align 4
  %inc.i = add i16 %43, 1
  store i16 %inc.i, ptr %mgnt_seq.i, align 4
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr.i, align 2
  %46 = and i16 %45, 1023
  %47 = or i16 %46, -12288
  store i16 %47, ptr %add.ptr.i, align 2
  %add.ptr24.i = getelementptr i8, ptr %28, i32 64
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call.i, i32 0, i32 1, i32 8
  %48 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 24, ptr %pktlen.i, align 4
  %call26.i = call ptr @rtw_set_fixed_ie(ptr noundef %add.ptr24.i, i32 noundef 1, ptr noundef nonnull %category.i, ptr noundef %pktlen.i) #13
  %call28.i = call ptr @rtw_set_fixed_ie(ptr noundef %call26.i, i32 noundef 1, ptr noundef nonnull %action.i, ptr noundef %pktlen.i) #13
  %call30.i = call ptr @rtw_set_fixed_ie(ptr noundef %call28.i, i32 noundef 4, ptr noundef nonnull %p2poui.i, ptr noundef %pktlen.i) #13
  %call32.i = call ptr @rtw_set_fixed_ie(ptr noundef %call30.i, i32 noundef 1, ptr noundef nonnull %oui_subtype.i, ptr noundef %pktlen.i) #13
  %call34.i = call ptr @rtw_set_fixed_ie(ptr noundef %call32.i, i32 noundef 1, ptr noundef nonnull %dialogToken.i, ptr noundef %pktlen.i) #13
  %49 = ptrtoint ptr %wpsie.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %wpsie.i, align 1
  %arrayidx37.i = getelementptr inbounds [100 x i8], ptr %wpsie.i, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 80, ptr %arrayidx37.i, align 1
  %arrayidx38.i = getelementptr inbounds [100 x i8], ptr %wpsie.i, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -14, ptr %arrayidx38.i, align 1
  %arrayidx39.i = getelementptr inbounds [100 x i8], ptr %wpsie.i, i32 0, i32 3
  %52 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 4, ptr %arrayidx39.i, align 1
  %add.ptr48.i = getelementptr inbounds i8, ptr %wpsie.i, i32 4
  %53 = ptrtoint ptr %add.ptr48.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 16, ptr %add.ptr48.i, align 1
  %arrayidx53.i = getelementptr inbounds i8, ptr %wpsie.i, i32 5
  %54 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 8, ptr %arrayidx53.i, align 1
  %add.ptr62.i = getelementptr inbounds i8, ptr %wpsie.i, i32 6
  %55 = ptrtoint ptr %add.ptr62.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %add.ptr62.i, align 1
  %arrayidx67.i = getelementptr inbounds i8, ptr %wpsie.i, i32 7
  %56 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 2, ptr %arrayidx67.i, align 1
  %57 = lshr i16 %6, 8
  %conv75.i = trunc i16 %57 to i8
  %add.ptr78.i = getelementptr inbounds i8, ptr %wpsie.i, i32 8
  %58 = ptrtoint ptr %add.ptr78.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv75.i, ptr %add.ptr78.i, align 1
  %conv82.i = trunc i16 %6 to i8
  %arrayidx86.i = getelementptr inbounds i8, ptr %wpsie.i, i32 9
  %59 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv82.i, ptr %arrayidx86.i, align 1
  %call95.i = call ptr @rtw_set_ie(ptr noundef %call34.i, i32 noundef 221, i32 noundef 10, ptr noundef nonnull %wpsie.i, ptr noundef %pktlen.i) #13
  %60 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pktlen.i, align 4
  %last_txcmdsz.i = getelementptr inbounds %struct.xmit_frame, ptr %call.i, i32 0, i32 1, i32 9
  %62 = ptrtoint ptr %last_txcmdsz.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %last_txcmdsz.i, align 4
  call void @dump_mgntframe(ptr noundef %13, ptr noundef nonnull %call.i) #13
  br label %issue_p2p_provision_resp.exit

issue_p2p_provision_resp.exit:                    ; preds = %if.end.i, %sw.epilog.issue_p2p_provision_resp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %wpsie.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %oui_subtype.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p2poui.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dialogToken.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %action.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %category.i) #13
  br label %do.body

do.body:                                          ; preds = %issue_p2p_provision_resp.exit, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %63 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %63)
  %cmp = icmp ugt i32 %63, 4
  br i1 %cmp, label %do.end, label %do.body.do.end27_crit_edge

do.body.do.end27_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end27

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %strconfig_method_desc_of_prov_disc_req22 = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 7, i32 1
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef %strconfig_method_desc_of_prov_disc_req22) #16
  br label %do.end27

do.end27:                                         ; preds = %do.end, %do.body.do.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %be_tmp) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr_contentlen) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wps_ielen) #13
  ret i8 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_wps_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_wps_attr_content(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @process_p2p_provdisc_resp(ptr nocapture noundef readnone %pwdinfo, ptr nocapture noundef readnone %pframe) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @process_p2p_group_negotation_req(ptr noundef %pwdinfo, ptr noundef %pframe, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %p2p_ielen = alloca i32, align 4
  %wps_ielen = alloca i32, align 4
  %wps_devicepassword_id_len = alloca i32, align 4
  %be_tmp = alloca i16, align 2
  %attr_content = alloca i8, align 1
  %attr_contentlen = alloca i32, align 4
  %ch_content = alloca [50 x i8], align 1
  %ch_cnt = alloca i32, align 4
  %peer_ch_list = alloca [50 x i8], align 1
  %ch_list_inclusioned = alloca [50 x i8], align 1
  %operatingch_info = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pwdinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwdinfo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p2p_ielen) #13
  %2 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %p2p_ielen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wps_ielen) #13
  %3 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wps_ielen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wps_devicepassword_id_len) #13
  %4 = ptrtoint ptr %wps_devicepassword_id_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wps_devicepassword_id_len, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %be_tmp) #13
  %5 = ptrtoint ptr %be_tmp to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %be_tmp, align 2, !annotation !165
  %add.ptr = getelementptr i8, ptr %pframe, i32 8
  %sub = add i32 %len, -8
  %call = call ptr @rtw_get_wps_ie(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef null, ptr noundef nonnull %wps_ielen) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %strconfig_method_desc_of_prov_disc_req = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 7, i32 1
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(3) %strconfig_method_desc_of_prov_disc_req, ptr noundef nonnull dereferenceable(3) @.str.18, i32 3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool3.not = icmp eq i32 %bcmp, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end33_crit_edge

if.then.if.end33_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then4:                                         ; preds = %if.then
  %6 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wps_ielen, align 4
  %call5 = call ptr @rtw_get_wps_attr_content(ptr noundef nonnull %call, i32 noundef %7, i16 noundef zeroext 4114, ptr noundef nonnull %be_tmp, ptr noundef nonnull %wps_devicepassword_id_len) #13
  %8 = ptrtoint ptr %be_tmp to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %be_tmp, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.90)
  switch i16 %9, label %if.else18 [
    i16 1, label %if.then7
    i16 5, label %if.then14
  ]

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %11 = call ptr @memcpy(ptr %strconfig_method_desc_of_prov_disc_req, ptr @.str.12, i32 3)
  br label %if.end33

if.then14:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %12 = call ptr @memcpy(ptr %strconfig_method_desc_of_prov_disc_req, ptr @.str.15, i32 3)
  br label %if.end33

if.else18:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %13 = call ptr @memcpy(ptr %strconfig_method_desc_of_prov_disc_req, ptr @.str.14, i32 3)
  br label %if.end33

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %14 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp25 = icmp ugt i32 %14, 4
  br i1 %cmp25, label %do.end, label %do.body.do.end32_crit_edge

do.body.do.end32_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end32

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #16
  br label %do.end32

do.end32:                                         ; preds = %do.end, %do.body.do.end32_crit_edge
  %p2p_state.i = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 17
  %15 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 11
  br i1 %cmp.not.i, label %do.end32.cleanup216_crit_edge, label %if.then.i

do.end32.cleanup216_crit_edge:                    ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup216

if.then.i:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 11, ptr %p2p_state.i, align 4
  br label %cleanup216

if.end33:                                         ; preds = %if.else18, %if.then14, %if.then7, %if.then.if.end33_crit_edge
  %ui_got_wps_info = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 43
  %18 = ptrtoint ptr %ui_got_wps_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ui_got_wps_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp34 = icmp eq i32 %19, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  %p2p_state.i281 = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 17
  %20 = ptrtoint ptr %p2p_state.i281 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %p2p_state.i281, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %21)
  %cmp.not.i282 = icmp eq i32 %21, 22
  br i1 %cmp.not.i282, label %if.then36.cleanup216_crit_edge, label %if.then.i283

if.then36.cleanup216_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup216

if.then.i283:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %p2p_state.i281 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 22, ptr %p2p_state.i281, align 4
  br label %cleanup216

if.end37:                                         ; preds = %if.end33
  %call40 = call ptr @rtw_get_p2p_ie(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef null, ptr noundef nonnull %p2p_ielen) #13
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %do.body43, label %while.body.lr.ph

do.body43:                                        ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %23 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp44 = icmp ugt i32 %23, 4
  br i1 %cmp44, label %do.end49, label %do.body43.do.end54_crit_edge

do.body43.do.end54_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end54

do.end49:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #16
  br label %do.end54

do.end54:                                         ; preds = %do.end49, %do.body43.do.end54_crit_edge
  %p2p_state.i285 = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 17
  %24 = ptrtoint ptr %p2p_state.i285 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %p2p_state.i285, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %25)
  %cmp.not.i286 = icmp eq i32 %25, 11
  br i1 %cmp.not.i286, label %do.end54.cleanup216_crit_edge, label %if.then.i287

do.end54.cleanup216_crit_edge:                    ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup216

if.then.i287:                                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %p2p_state.i285 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 11, ptr %p2p_state.i285, align 4
  br label %cleanup216

while.body.lr.ph:                                 ; preds = %if.end37
  %p2p_state.i289 = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 17
  %peer_intent = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 29
  %intent = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 26
  %role1.i307 = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 15
  %groupid_info = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 12
  %device_addr = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 18
  %ssid = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 12, i32 1
  %nego_ssid = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 37
  %nego_ssidlen = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 38
  %p2p_peer_interface_addr = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 27
  %add.ptr.i = getelementptr inbounds i8, ptr %ch_content, i32 3
  %max_chan_nums.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 11
  %operating_channel = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 22
  %arrayidx = getelementptr inbounds [5 x i8], ptr %operatingch_info, i32 0, i32 4
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.neg = add i32 %sub, %sub.ptr.rhs.cast
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %result.1363 = phi i8 [ 0, %while.body.lr.ph ], [ %result.3, %cleanup.while.body_crit_edge ]
  %p2p_ie.0361 = phi ptr [ %call40, %while.body.lr.ph ], [ %call208, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %attr_content) #13
  %27 = ptrtoint ptr %attr_content to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %attr_content, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr_contentlen) #13
  %28 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %attr_contentlen, align 4
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %ch_content) #13
  %29 = call ptr @memset(ptr %ch_content, i32 0, i32 50)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ch_cnt) #13
  %30 = ptrtoint ptr %ch_cnt to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %ch_cnt, align 4
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %peer_ch_list) #13
  %31 = call ptr @memset(ptr %peer_ch_list, i32 0, i32 50)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %ch_list_inclusioned) #13
  %32 = call ptr @memset(ptr %ch_list_inclusioned, i32 0, i32 50)
  %33 = ptrtoint ptr %p2p_state.i289 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %p2p_state.i289, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %34)
  %cmp.not.i290 = icmp eq i32 %34, 9
  br i1 %cmp.not.i290, label %while.body._rtw_p2p_set_state.exit292_crit_edge, label %if.then.i291

while.body._rtw_p2p_set_state.exit292_crit_edge:  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_state.exit292

if.then.i291:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %p2p_state.i289 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 9, ptr %p2p_state.i289, align 4
  br label %_rtw_p2p_set_state.exit292

_rtw_p2p_set_state.exit292:                       ; preds = %if.then.i291, %while.body._rtw_p2p_set_state.exit292_crit_edge
  %36 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %p2p_ielen, align 4
  %call57 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %p2p_ie.0361, i32 noundef %37, i8 noundef zeroext 4, ptr noundef nonnull %attr_content, ptr noundef nonnull %attr_contentlen) #13
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %_rtw_p2p_set_state.exit292.if.end115_crit_edge, label %do.body60

_rtw_p2p_set_state.exit292.if.end115_crit_edge:   ; preds = %_rtw_p2p_set_state.exit292
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end115

do.body60:                                        ; preds = %_rtw_p2p_set_state.exit292
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %38 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp61 = icmp ugt i32 %38, 4
  br i1 %cmp61, label %do.end66, label %do.body60.do.end73_crit_edge

do.body60.do.end73_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end73

do.end66:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %attr_content to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %attr_content, align 1
  %conv68 = zext i8 %40 to i32
  %41 = lshr i32 %conv68, 1
  %and = and i32 %conv68, 1
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.20, i32 noundef %41, i32 noundef %and) #16
  br label %do.end73

do.end73:                                         ; preds = %do.end66, %do.body60.do.end73_crit_edge
  %42 = ptrtoint ptr %attr_content to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %attr_content, align 1
  %44 = ptrtoint ptr %peer_intent to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %peer_intent, align 1
  %45 = ptrtoint ptr %intent to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %intent, align 2
  %47 = lshr i8 %43, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %47)
  %cmp78 = icmp eq i8 %46, %47
  br i1 %cmp78, label %if.then80, label %if.else94

if.then80:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %46)
  %cmp83 = icmp eq i8 %46, 15
  br i1 %cmp83, label %if.then85, label %if.else86

if.then85:                                        ; preds = %if.then80
  %48 = ptrtoint ptr %role1.i307 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %role1.i307, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp.not.i293 = icmp eq i32 %49, 1
  br i1 %cmp.not.i293, label %if.then85.if.end115_crit_edge, label %if.then.i294

if.then85.if.end115_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end115

if.then.i294:                                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %role1.i307 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %role1.i307, align 4
  br label %if.end115

if.else86:                                        ; preds = %if.then80
  %51 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool89.not = icmp eq i8 %51, 0
  %52 = ptrtoint ptr %role1.i307 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %role1.i307, align 4
  br i1 %tobool89.not, label %if.else91, label %if.then90

if.then90:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp.not.i296 = icmp eq i32 %53, 2
  br i1 %cmp.not.i296, label %if.then90.if.end115_crit_edge, label %if.then.i297

if.then90.if.end115_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end115

if.then.i297:                                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %role1.i307 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %role1.i307, align 4
  br label %if.end115

if.else91:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %53)
  %cmp.not.i300 = icmp eq i32 %53, 3
  br i1 %cmp.not.i300, label %if.else91.if.then107_crit_edge, label %if.else91.if.then107.sink.split_crit_edge

if.else91.if.then107.sink.split_crit_edge:        ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then107.sink.split

if.else91.if.then107_crit_edge:                   ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then107

if.else94:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %47)
  %cmp100 = icmp ugt i8 %46, %47
  %55 = ptrtoint ptr %role1.i307 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %role1.i307, align 4
  br i1 %cmp100, label %if.then102, label %if.else103

if.then102:                                       ; preds = %if.else94
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %56)
  %cmp.not.i304 = icmp eq i32 %56, 3
  br i1 %cmp.not.i304, label %if.then102.if.then107_crit_edge, label %if.then102.if.then107.sink.split_crit_edge

if.then102.if.then107.sink.split_crit_edge:       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then107.sink.split

if.then102.if.then107_crit_edge:                  ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then107

if.else103:                                       ; preds = %if.else94
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp.not.i308 = icmp eq i32 %56, 2
  br i1 %cmp.not.i308, label %if.else103.if.end115_crit_edge, label %if.then.i309

if.else103.if.end115_crit_edge:                   ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end115

if.then.i309:                                     ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %role1.i307 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %role1.i307, align 4
  br label %if.end115

if.then107.sink.split:                            ; preds = %if.then102.if.then107.sink.split_crit_edge, %if.else91.if.then107.sink.split_crit_edge
  %58 = ptrtoint ptr %role1.i307 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 3, ptr %role1.i307, align 4
  br label %if.then107

if.then107:                                       ; preds = %if.then107.sink.split, %if.then102.if.then107_crit_edge, %if.else91.if.then107_crit_edge
  %59 = call ptr @memcpy(ptr %groupid_info, ptr %device_addr, i32 6)
  %60 = ptrtoint ptr %nego_ssidlen to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %nego_ssidlen, align 1
  %conv113 = zext i8 %61 to i32
  %62 = call ptr @memcpy(ptr %ssid, ptr %nego_ssid, i32 %conv113)
  br label %if.end115

if.end115:                                        ; preds = %if.then107, %if.then.i309, %if.else103.if.end115_crit_edge, %if.then.i297, %if.then90.if.end115_crit_edge, %if.then.i294, %if.then85.if.end115_crit_edge, %_rtw_p2p_set_state.exit292.if.end115_crit_edge
  %result.3 = phi i8 [ %result.1363, %if.then107 ], [ %result.1363, %_rtw_p2p_set_state.exit292.if.end115_crit_edge ], [ %result.1363, %if.then.i309 ], [ %result.1363, %if.else103.if.end115_crit_edge ], [ %result.1363, %if.then.i297 ], [ %result.1363, %if.then90.if.end115_crit_edge ], [ 9, %if.then.i294 ], [ 9, %if.then85.if.end115_crit_edge ]
  %63 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %attr_contentlen, align 4
  %64 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %p2p_ielen, align 4
  %call117 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %p2p_ie.0361, i32 noundef %65, i8 noundef zeroext 9, ptr noundef %p2p_peer_interface_addr, ptr noundef nonnull %attr_contentlen) #13
  %tobool118.not = icmp eq ptr %call117, null
  br i1 %tobool118.not, label %if.end115.if.end126_crit_edge, label %if.then119

if.end115.if.end126_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126

if.then119:                                       ; preds = %if.end115
  %66 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %attr_contentlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %67)
  %cmp120.not = icmp eq i32 %67, 6
  br i1 %cmp120.not, label %if.then119.if.end126_crit_edge, label %if.then122

if.then119.if.end126_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126

if.then122:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #15
  %68 = call ptr @memset(ptr %p2p_peer_interface_addr, i32 0, i32 6)
  br label %if.end126

if.end126:                                        ; preds = %if.then122, %if.then119.if.end126_crit_edge, %if.end115.if.end126_crit_edge
  %69 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %p2p_ielen, align 4
  %call128 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %p2p_ie.0361, i32 noundef %70, i8 noundef zeroext 11, ptr noundef nonnull %ch_content, ptr noundef nonnull %ch_cnt) #13
  %tobool129.not = icmp eq ptr %call128, null
  br i1 %tobool129.not, label %if.end126.cleanup_crit_edge, label %if.then130

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then130:                                       ; preds = %if.end126
  %71 = ptrtoint ptr %ch_cnt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ch_cnt, align 4
  %conv132 = trunc i32 %72 to i8
  %sub.i = add i8 %conv132, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sub.i)
  %cmp.not4.i = icmp eq i8 %sub.i, 0
  br i1 %cmp.not4.i, label %if.then130.do.body142_crit_edge, label %if.then130.while.body.i_crit_edge

if.then130.while.body.i_crit_edge:                ; preds = %if.then130
  br label %while.body.i

if.then130.do.body142_crit_edge:                  ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body142

while.body.i:                                     ; preds = %for.end.i.while.body.i_crit_edge, %if.then130.while.body.i_crit_edge
  %ch_no.08.i = phi i8 [ %add25.i, %for.end.i.while.body.i_crit_edge ], [ 0, %if.then130.while.body.i_crit_edge ]
  %j.07.i = phi i8 [ %j.1.lcssa.i, %for.end.i.while.body.i_crit_edge ], [ 0, %if.then130.while.body.i_crit_edge ]
  %ch_content.addr.06.i = phi ptr [ %add.ptr17.i, %for.end.i.while.body.i_crit_edge ], [ %add.ptr.i, %if.then130.while.body.i_crit_edge ]
  %ch_cnt.addr.05.i = phi i8 [ %conv22.i, %for.end.i.while.body.i_crit_edge ], [ %sub.i, %if.then130.while.body.i_crit_edge ]
  %add.ptr4.i = getelementptr i8, ptr %ch_content.addr.06.i, i32 1
  %73 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %add.ptr4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp101.not.i = icmp eq i8 %74, 0
  br i1 %cmp101.not.i, label %while.body.i.for.end.i_crit_edge, label %for.body.lr.ph.i

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %while.body.i
  %add.ptr12.i = getelementptr i8, ptr %ch_content.addr.06.i, i32 2
  %wide.trip.count.i = zext i8 %74 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %j.13.i = phi i8 [ %j.07.i, %for.body.lr.ph.i ], [ %inc15.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr14.i = getelementptr i8, ptr %add.ptr12.i, i32 %indvars.iv.i
  %75 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %add.ptr14.i, align 1
  %idxprom.i = zext i8 %j.13.i to i32
  %arrayidx.i = getelementptr i8, ptr %peer_ch_list, i32 %idxprom.i
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %inc15.i = add i8 %j.13.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %while.body.i.for.end.i_crit_edge
  %conv9.pre-phi.i = phi i32 [ 0, %while.body.i.for.end.i_crit_edge ], [ %wide.trip.count.i, %for.body.i.for.end.i_crit_edge ]
  %j.1.lcssa.i = phi i8 [ %j.07.i, %while.body.i.for.end.i_crit_edge ], [ %inc15.i, %for.body.i.for.end.i_crit_edge ]
  %add.i = add nuw nsw i32 %conv9.pre-phi.i, 1
  %add.ptr17.i = getelementptr i8, ptr %add.ptr4.i, i32 %add.i
  %78 = trunc i32 %add.i to i8
  %79 = xor i8 %78, -1
  %conv22.i = add i8 %ch_cnt.addr.05.i, %79
  %add25.i = add i8 %74, %ch_no.08.i
  %cmp.not.i312 = icmp eq i8 %conv22.i, 0
  br i1 %cmp.not.i312, label %rtw_p2p_get_peer_ch_list.exit, label %for.end.i.while.body.i_crit_edge

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

rtw_p2p_get_peer_ch_list.exit:                    ; preds = %for.end.i
  %conv.i = zext i8 %add25.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add25.i)
  %cmp29.not.i = icmp eq i8 %add25.i, 0
  br i1 %cmp29.not.i, label %rtw_p2p_get_peer_ch_list.exit.do.body142_crit_edge, label %for.cond2.preheader.lr.ph.i

rtw_p2p_get_peer_ch_list.exit.do.body142_crit_edge: ; preds = %rtw_p2p_get_peer_ch_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body142

for.cond2.preheader.lr.ph.i:                      ; preds = %rtw_p2p_get_peer_ch_list.exit
  %80 = ptrtoint ptr %max_chan_nums.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %max_chan_nums.i, align 1
  %conv3.i = zext i8 %81 to i32
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc14.i.for.cond2.preheader.i_crit_edge, %for.cond2.preheader.lr.ph.i
  %ch_no.035.i = phi i8 [ 0, %for.cond2.preheader.lr.ph.i ], [ %ch_no.1.i, %for.inc14.i.for.cond2.preheader.i_crit_edge ]
  %temp.033.i = phi i32 [ 0, %for.cond2.preheader.lr.ph.i ], [ %temp.1.i, %for.inc14.i.for.cond2.preheader.i_crit_edge ]
  %i.030.i = phi i32 [ 0, %for.cond2.preheader.lr.ph.i ], [ %inc15.i318, %for.inc14.i.for.cond2.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %temp.033.i, i32 %conv3.i)
  %cmp427.i = icmp slt i32 %temp.033.i, %conv3.i
  br i1 %cmp427.i, label %for.body6.lr.ph.i, label %for.cond2.preheader.i.for.inc14.i_crit_edge

for.cond2.preheader.i.for.inc14.i_crit_edge:      ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc14.i

for.body6.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %add.ptr.i313 = getelementptr i8, ptr %peer_ch_list, i32 %i.030.i
  %82 = ptrtoint ptr %add.ptr.i313 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %add.ptr.i313, align 1
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %j.028.i = phi i32 [ %temp.033.i, %for.body6.lr.ph.i ], [ %inc13.i, %for.inc.i.for.body6.i_crit_edge ]
  %arrayidx.i314 = getelementptr %struct.adapter, ptr %1, i32 0, i32 5, i32 12, i32 %j.028.i
  %84 = ptrtoint ptr %arrayidx.i314 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i314, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %85)
  %cmp9.i = icmp eq i8 %83, %85
  br i1 %cmp9.i, label %if.then.i316, label %for.inc.i

if.then.i316:                                     ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc.i = add i8 %ch_no.035.i, 1
  %idxprom.i315 = zext i8 %ch_no.035.i to i32
  %arrayidx12.i = getelementptr i8, ptr %ch_list_inclusioned, i32 %idxprom.i315
  %86 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %83, ptr %arrayidx12.i, align 1
  br label %for.inc14.i

for.inc.i:                                        ; preds = %for.body6.i
  %inc13.i = add nsw i32 %j.028.i, 1
  %exitcond.not.i317 = icmp eq i32 %inc13.i, %conv3.i
  br i1 %exitcond.not.i317, label %for.inc.i.for.inc14.i_crit_edge, label %for.inc.i.for.body6.i_crit_edge

for.inc.i.for.body6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body6.i

for.inc.i.for.inc14.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc14.i

for.inc14.i:                                      ; preds = %for.inc.i.for.inc14.i_crit_edge, %if.then.i316, %for.cond2.preheader.i.for.inc14.i_crit_edge
  %temp.1.i = phi i32 [ %j.028.i, %if.then.i316 ], [ %temp.033.i, %for.cond2.preheader.i.for.inc14.i_crit_edge ], [ %temp.033.i, %for.inc.i.for.inc14.i_crit_edge ]
  %ch_no.1.i = phi i8 [ %inc.i, %if.then.i316 ], [ %ch_no.035.i, %for.cond2.preheader.i.for.inc14.i_crit_edge ], [ %ch_no.035.i, %for.inc.i.for.inc14.i_crit_edge ]
  %inc15.i318 = add nuw nsw i32 %i.030.i, 1
  %exitcond37.not.i = icmp eq i32 %inc15.i318, %conv.i
  br i1 %exitcond37.not.i, label %rtw_p2p_ch_inclusion.exit, label %for.inc14.i.for.cond2.preheader.i_crit_edge

for.inc14.i.for.cond2.preheader.i_crit_edge:      ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond2.preheader.i

rtw_p2p_ch_inclusion.exit:                        ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ch_no.1.i)
  %cmp139 = icmp eq i8 %ch_no.1.i, 0
  br i1 %cmp139, label %rtw_p2p_ch_inclusion.exit.do.body142_crit_edge, label %if.end154

rtw_p2p_ch_inclusion.exit.do.body142_crit_edge:   ; preds = %rtw_p2p_ch_inclusion.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body142

do.body142:                                       ; preds = %rtw_p2p_ch_inclusion.exit.do.body142_crit_edge, %rtw_p2p_get_peer_ch_list.exit.do.body142_crit_edge, %if.then130.do.body142_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %87 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %87)
  %cmp143 = icmp ugt i32 %87, 4
  br i1 %cmp143, label %do.end148, label %do.body142.do.end153_crit_edge

do.body142.do.end153_crit_edge:                   ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end153

do.end148:                                        ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #15
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.20) #16
  br label %do.end153

do.end153:                                        ; preds = %do.end148, %do.body142.do.end153_crit_edge
  %88 = ptrtoint ptr %p2p_state.i289 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %p2p_state.i289, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %89)
  %cmp.not.i321 = icmp eq i32 %89, 11
  br i1 %cmp.not.i321, label %do.end153.cleanup.thread_crit_edge, label %if.then.i322

do.end153.cleanup.thread_crit_edge:               ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.then.i322:                                     ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #15
  %90 = ptrtoint ptr %p2p_state.i289 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 11, ptr %p2p_state.i289, align 4
  br label %cleanup.thread

if.end154:                                        ; preds = %rtw_p2p_ch_inclusion.exit
  %91 = ptrtoint ptr %role1.i307 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %role1.i307, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %92)
  %cmp.i325 = icmp eq i32 %92, 3
  br i1 %cmp.i325, label %if.then156, label %if.end154.cleanup_crit_edge

if.end154.cleanup_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then156:                                       ; preds = %if.end154
  %93 = ptrtoint ptr %operating_channel to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %operating_channel, align 1
  %conv.i326 = zext i8 %ch_no.1.i to i32
  br label %for.body.i330

for.cond.i:                                       ; preds = %for.body.i330
  %inc.i327 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i328 = icmp eq i32 %inc.i327, %conv.i326
  br i1 %exitcond.not.i328, label %if.then160, label %for.cond.i.for.body.i330_crit_edge

for.cond.i.for.body.i330_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i330

for.body.i330:                                    ; preds = %for.cond.i.for.body.i330_crit_edge, %if.then156
  %i.09.i = phi i32 [ %inc.i327, %for.cond.i.for.body.i330_crit_edge ], [ 0, %if.then156 ]
  %arrayidx.i329 = getelementptr i8, ptr %ch_list_inclusioned, i32 %i.09.i
  %95 = ptrtoint ptr %arrayidx.i329 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i329, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %96, i8 %94)
  %cmp4.i = icmp eq i8 %96, %94
  br i1 %cmp4.i, label %for.body.i330.cleanup_crit_edge, label %for.cond.i

for.body.i330.cleanup_crit_edge:                  ; preds = %for.body.i330
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then160:                                       ; preds = %for.cond.i
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %operatingch_info) #13
  %97 = call ptr @memset(ptr %operatingch_info, i32 0, i32 5)
  %98 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %attr_contentlen, align 4
  %99 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %p2p_ielen, align 4
  %call162 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %p2p_ie.0361, i32 noundef %100, i8 noundef zeroext 17, ptr noundef nonnull %operatingch_info, ptr noundef nonnull %attr_contentlen) #13
  %tobool163.not = icmp eq ptr %call162, null
  br i1 %tobool163.not, label %if.then160.if.end165_crit_edge, label %if.then164

if.then160.if.end165_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end165

if.then164:                                       ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx, align 1
  br label %if.end165

if.end165:                                        ; preds = %if.then164, %if.then160.if.end165_crit_edge
  %peer_operating_ch.0 = phi i8 [ %102, %if.then164 ], [ 0, %if.then160.if.end165_crit_edge ]
  br label %for.body.i340

for.cond.i336:                                    ; preds = %for.body.i340
  %inc.i334 = add nuw nsw i32 %i.09.i337, 1
  %exitcond.not.i335 = icmp eq i32 %inc.i334, %conv.i326
  br i1 %exitcond.not.i335, label %if.else185, label %for.cond.i336.for.body.i340_crit_edge

for.cond.i336.for.body.i340_crit_edge:            ; preds = %for.cond.i336
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i340

for.body.i340:                                    ; preds = %for.cond.i336.for.body.i340_crit_edge, %if.end165
  %i.09.i337 = phi i32 [ %inc.i334, %for.cond.i336.for.body.i340_crit_edge ], [ 0, %if.end165 ]
  %arrayidx.i338 = getelementptr i8, ptr %ch_list_inclusioned, i32 %i.09.i337
  %103 = ptrtoint ptr %arrayidx.i338 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.i338, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %104, i8 %peer_operating_ch.0)
  %cmp4.i339 = icmp eq i8 %104, %peer_operating_ch.0
  br i1 %cmp4.i339, label %if.then169, label %for.cond.i336

if.then169:                                       ; preds = %for.body.i340
  %105 = ptrtoint ptr %operating_channel to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %peer_operating_ch.0, ptr %operating_channel, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %106 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %106)
  %cmp172 = icmp ugt i32 %106, 4
  br i1 %cmp172, label %if.then169.if.end202.sink.split_crit_edge, label %if.then169.if.end202_crit_edge

if.then169.if.end202_crit_edge:                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end202

if.then169.if.end202.sink.split_crit_edge:        ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end202.sink.split

if.else185:                                       ; preds = %for.cond.i336
  %107 = ptrtoint ptr %ch_list_inclusioned to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %ch_list_inclusioned, align 1
  %109 = ptrtoint ptr %operating_channel to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %operating_channel, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %110 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %110)
  %cmp189 = icmp ugt i32 %110, 4
  br i1 %cmp189, label %if.else185.if.end202.sink.split_crit_edge, label %if.else185.if.end202_crit_edge

if.else185.if.end202_crit_edge:                   ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end202

if.else185.if.end202.sink.split_crit_edge:        ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end202.sink.split

if.end202.sink.split:                             ; preds = %if.else185.if.end202.sink.split_crit_edge, %if.then169.if.end202.sink.split_crit_edge
  %.sink = phi i8 [ %peer_operating_ch.0, %if.then169.if.end202.sink.split_crit_edge ], [ %108, %if.else185.if.end202.sink.split_crit_edge ]
  %.str.33.sink = phi ptr [ @.str.30, %if.then169.if.end202.sink.split_crit_edge ], [ @.str.33, %if.else185.if.end202.sink.split_crit_edge ]
  %conv197 = zext i8 %.sink to i32
  %call198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.33.sink, ptr noundef nonnull @.str.20, i32 noundef %conv197) #16
  br label %if.end202

if.end202:                                        ; preds = %if.end202.sink.split, %if.else185.if.end202_crit_edge, %if.then169.if.end202_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %operatingch_info) #13
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then.i322, %do.end153.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %ch_list_inclusioned) #13
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %peer_ch_list) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ch_cnt) #13
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %ch_content) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr_contentlen) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %attr_content) #13
  br label %cleanup216

cleanup:                                          ; preds = %if.end202, %for.body.i330.cleanup_crit_edge, %if.end154.cleanup_crit_edge, %if.end126.cleanup_crit_edge
  %111 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %p2p_ielen, align 4
  %add.ptr206 = getelementptr i8, ptr %p2p_ie.0361, i32 %112
  %sub.ptr.lhs.cast = ptrtoint ptr %p2p_ie.0361 to i32
  %113 = add i32 %112, %sub.ptr.lhs.cast
  %sub207 = sub i32 %sub.ptr.sub.neg, %113
  %call208 = call ptr @rtw_get_p2p_ie(ptr noundef %add.ptr206, i32 noundef %sub207, ptr noundef null, ptr noundef nonnull %p2p_ielen) #13
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %ch_list_inclusioned) #13
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %peer_ch_list) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ch_cnt) #13
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %ch_content) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr_contentlen) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %attr_content) #13
  %tobool56.not = icmp eq ptr %call208, null
  br i1 %tobool56.not, label %cleanup.cleanup216_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.cleanup216_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup216

cleanup216:                                       ; preds = %cleanup.cleanup216_crit_edge, %cleanup.thread, %if.then.i287, %do.end54.cleanup216_crit_edge, %if.then.i283, %if.then36.cleanup216_crit_edge, %if.then.i, %do.end32.cleanup216_crit_edge
  %retval.0 = phi i8 [ 2, %do.end32.cleanup216_crit_edge ], [ 2, %if.then.i ], [ 1, %if.then36.cleanup216_crit_edge ], [ 1, %if.then.i283 ], [ 7, %cleanup.thread ], [ 2, %if.then.i287 ], [ 2, %do.end54.cleanup216_crit_edge ], [ %result.3, %cleanup.cleanup216_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %be_tmp) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wps_devicepassword_id_len) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wps_ielen) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p2p_ielen) #13
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @process_p2p_group_negotation_resp(ptr noundef %pwdinfo, ptr noundef %pframe, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %p2p_ielen = alloca i32, align 4
  %wps_ielen = alloca i32, align 4
  %attr_content = alloca i8, align 1
  %attr_contentlen = alloca i32, align 4
  %operatingch_info = alloca [5 x i8], align 1
  %groupid = alloca [38 x i8], align 1
  %peer_ch_list = alloca [50 x i8], align 1
  %ch_list_inclusioned = alloca [50 x i8], align 1
  %operatingch_info177 = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pwdinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwdinfo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p2p_ielen) #13
  %2 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %p2p_ielen, align 4, !annotation !165
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wps_ielen) #13
  %3 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %wps_ielen, align 4, !annotation !165
  %add.ptr = getelementptr i8, ptr %pframe, i32 8
  %sub = add i32 %len, -8
  %call = call ptr @rtw_get_wps_ie(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef null, ptr noundef nonnull %wps_ielen) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %4 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp ugt i32 %4, 4
  br i1 %cmp, label %do.end, label %do.body.do.end6_crit_edge

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.35) #16
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %p2p_state.i = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 17
  %5 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 11
  br i1 %cmp.not.i, label %do.end6.if.end7_crit_edge, label %if.then.i

do.end6.if.end7_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 11, ptr %p2p_state.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %do.end6.if.end7_crit_edge, %entry.if.end7_crit_edge
  %result.0 = phi i8 [ 0, %entry.if.end7_crit_edge ], [ 2, %do.end6.if.end7_crit_edge ], [ 2, %if.then.i ]
  %call8 = call ptr @rtw_get_p2p_ie(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef null, ptr noundef nonnull %p2p_ielen) #13
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end7
  %role1.i = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 15
  %8 = ptrtoint ptr %role1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %role1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not.i322 = icmp eq i32 %9, 1
  br i1 %cmp.not.i322, label %if.then10._rtw_p2p_set_role.exit_crit_edge, label %if.then.i323

if.then10._rtw_p2p_set_role.exit_crit_edge:       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_role.exit

if.then.i323:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %role1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %role1.i, align 4
  br label %_rtw_p2p_set_role.exit

_rtw_p2p_set_role.exit:                           ; preds = %if.then.i323, %if.then10._rtw_p2p_set_role.exit_crit_edge
  %p2p_state.i324 = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 17
  %11 = ptrtoint ptr %p2p_state.i324 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %p2p_state.i324, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %12)
  %cmp.not.i325 = icmp eq i32 %12, 11
  br i1 %cmp.not.i325, label %_rtw_p2p_set_role.exit.if.end256_crit_edge, label %if.then.i326

_rtw_p2p_set_role.exit.if.end256_crit_edge:       ; preds = %_rtw_p2p_set_role.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end256

if.then.i326:                                     ; preds = %_rtw_p2p_set_role.exit
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %p2p_state.i324 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 11, ptr %p2p_state.i324, align 4
  br label %if.end256

if.else11:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %attr_content) #13
  %14 = ptrtoint ptr %attr_content to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %attr_content, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr_contentlen) #13
  %15 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %attr_contentlen, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %operatingch_info) #13
  %16 = call ptr @memset(ptr %operatingch_info, i32 0, i32 5)
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %groupid) #13
  %17 = call ptr @memset(ptr %groupid, i32 255, i32 38)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %peer_ch_list) #13
  %18 = call ptr @memset(ptr %peer_ch_list, i32 0, i32 50)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %ch_list_inclusioned) #13
  %19 = call ptr @memset(ptr %ch_list_inclusioned, i32 0, i32 50)
  %p2p_peer_interface_addr = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 27
  %peer_intent = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 29
  %intent = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 26
  %p2p_state.i374 = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 17
  %pre_p2p_state.i378 = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 16
  %role1.i382 = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 15
  %groupid_info = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 12
  %device_addr = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 18
  %ssid = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 12, i32 1
  %nego_ssid = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 37
  %nego_ssidlen = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 38
  %arrayidx = getelementptr inbounds [5 x i8], ptr %operatingch_info, i32 0, i32 4
  %peer_operating_ch = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 33
  %channel_list_attr = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 46
  %channel_list_attr_len = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 45
  %add.ptr.i = getelementptr %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 46, i32 3
  %max_chan_nums.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 11
  %operating_channel = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 22
  %arrayidx183 = getelementptr inbounds [5 x i8], ptr %operatingch_info177, i32 0, i32 4
  %arrayidx250 = getelementptr inbounds [38 x i8], ptr %groupid, i32 0, i32 6
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.neg = add i32 %sub, %sub.ptr.rhs.cast
  br label %while.body

while.body:                                       ; preds = %if.end252.while.body_crit_edge, %if.else11
  %result.1437 = phi i8 [ %result.0, %if.else11 ], [ %result.3, %if.end252.while.body_crit_edge ]
  %p2p_ie.0435 = phi ptr [ %call8, %if.else11 ], [ %call255, %if.end252.while.body_crit_edge ]
  %20 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %p2p_ielen, align 4
  %call13 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %p2p_ie.0435, i32 noundef %21, i8 noundef zeroext 0, ptr noundef nonnull %attr_content, ptr noundef nonnull %attr_contentlen) #13
  %22 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %attr_contentlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp14 = icmp eq i32 %23, 1
  br i1 %cmp14, label %do.body16, label %while.body.if.end39_crit_edge

while.body.if.end39_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

do.body16:                                        ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %24 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp17 = icmp ugt i32 %24, 4
  br i1 %cmp17, label %do.end21, label %do.body16.do.end26_crit_edge

do.body16.do.end26_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end26

do.end21:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %attr_content to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %attr_content, align 1
  %conv = zext i8 %26 to i32
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef %conv) #16
  br label %do.end26

do.end26:                                         ; preds = %do.end21, %do.body16.do.end26_crit_edge
  %27 = ptrtoint ptr %attr_content to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %attr_content, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %28, label %if.else36 [
    i8 0, label %do.end26.if.end39_crit_edge
    i8 1, label %if.then35
  ]

do.end26.if.end39_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then35:                                        ; preds = %do.end26
  %30 = ptrtoint ptr %p2p_state.i374 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %p2p_state.i374, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %31)
  %cmp.not.i329 = icmp eq i32 %31, 21
  br i1 %cmp.not.i329, label %if.then35.if.end37_crit_edge, label %if.then35.if.end37.sink.split_crit_edge

if.then35.if.end37.sink.split_crit_edge:          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.sink.split

if.then35.if.end37_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.else36:                                        ; preds = %do.end26
  %32 = ptrtoint ptr %p2p_state.i374 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %p2p_state.i374, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %33)
  %cmp.not.i333 = icmp eq i32 %33, 11
  br i1 %cmp.not.i333, label %if.else36.if.end37_crit_edge, label %if.else36.if.end37.sink.split_crit_edge

if.else36.if.end37.sink.split_crit_edge:          ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.sink.split

if.else36.if.end37_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.end37.sink.split:                              ; preds = %if.else36.if.end37.sink.split_crit_edge, %if.then35.if.end37.sink.split_crit_edge
  %.sink = phi i32 [ 21, %if.then35.if.end37.sink.split_crit_edge ], [ 11, %if.else36.if.end37.sink.split_crit_edge ]
  %34 = ptrtoint ptr %p2p_state.i374 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %p2p_state.i374, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.else36.if.end37_crit_edge, %if.then35.if.end37_crit_edge
  %35 = ptrtoint ptr %role1.i382 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %role1.i382, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.not.i337 = icmp eq i32 %36, 1
  br i1 %cmp.not.i337, label %if.end37.while.end_crit_edge, label %if.then.i338

if.end37.while.end_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.then.i338:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %role1.i382 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %role1.i382, align 4
  br label %while.end

if.end39:                                         ; preds = %do.end26.if.end39_crit_edge, %while.body.if.end39_crit_edge
  %38 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %attr_contentlen, align 4
  %39 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %p2p_ielen, align 4
  %call40 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %p2p_ie.0435, i32 noundef %40, i8 noundef zeroext 9, ptr noundef %p2p_peer_interface_addr, ptr noundef nonnull %attr_contentlen) #13
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.end39.if.end49_crit_edge, label %if.then42

if.end39.if.end49_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then42:                                        ; preds = %if.end39
  %41 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %attr_contentlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %42)
  %cmp43.not = icmp eq i32 %42, 6
  br i1 %cmp43.not, label %if.then42.if.end49_crit_edge, label %if.then45

if.then42.if.end49_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  %43 = call ptr @memset(ptr %p2p_peer_interface_addr, i32 0, i32 6)
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.then42.if.end49_crit_edge, %if.end39.if.end49_crit_edge
  %44 = ptrtoint ptr %attr_content to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %attr_content, align 1
  %45 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %attr_contentlen, align 4
  %46 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %p2p_ielen, align 4
  %call50 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %p2p_ie.0435, i32 noundef %47, i8 noundef zeroext 4, ptr noundef nonnull %attr_content, ptr noundef nonnull %attr_contentlen) #13
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.end49.if.end108_crit_edge, label %do.body53

if.end49.if.end108_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108

do.body53:                                        ; preds = %if.end49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %48 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp54 = icmp ugt i32 %48, 4
  br i1 %cmp54, label %do.end59, label %do.body53.do.end66_crit_edge

do.body53.do.end66_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end66

do.end59:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %attr_content to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %attr_content, align 1
  %conv61 = zext i8 %50 to i32
  %51 = lshr i32 %conv61, 1
  %and = and i32 %conv61, 1
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.35, i32 noundef %51, i32 noundef %and) #16
  br label %do.end66

do.end66:                                         ; preds = %do.end59, %do.body53.do.end66_crit_edge
  %52 = ptrtoint ptr %attr_content to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %attr_content, align 1
  %54 = ptrtoint ptr %peer_intent to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %peer_intent, align 1
  %55 = ptrtoint ptr %intent to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %intent, align 2
  %57 = lshr i8 %53, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %57)
  %cmp71 = icmp eq i8 %56, %57
  br i1 %cmp71, label %if.then73, label %if.else87

if.then73:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %56)
  %cmp76 = icmp eq i8 %56, 15
  br i1 %cmp76, label %if.then78, label %if.else79

if.then78:                                        ; preds = %if.then73
  %58 = ptrtoint ptr %role1.i382 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %role1.i382, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.not.i341 = icmp eq i32 %59, 1
  br i1 %cmp.not.i341, label %if.then78._rtw_p2p_set_role.exit343_crit_edge, label %if.then.i342

if.then78._rtw_p2p_set_role.exit343_crit_edge:    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_role.exit343

if.then.i342:                                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %role1.i382 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %role1.i382, align 4
  br label %_rtw_p2p_set_role.exit343

_rtw_p2p_set_role.exit343:                        ; preds = %if.then.i342, %if.then78._rtw_p2p_set_role.exit343_crit_edge
  %61 = ptrtoint ptr %p2p_state.i374 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %p2p_state.i374, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %62)
  %cmp.not.i345 = icmp eq i32 %62, 11
  br i1 %cmp.not.i345, label %_rtw_p2p_set_role.exit343.if.end98_crit_edge, label %if.then.i346

_rtw_p2p_set_role.exit343.if.end98_crit_edge:     ; preds = %_rtw_p2p_set_role.exit343
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end98

if.then.i346:                                     ; preds = %_rtw_p2p_set_role.exit343
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %p2p_state.i374 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 11, ptr %p2p_state.i374, align 4
  br label %if.end98

if.else79:                                        ; preds = %if.then73
  %64 = ptrtoint ptr %p2p_state.i374 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %p2p_state.i374, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %65)
  %cmp.not.i349 = icmp eq i32 %65, 10
  br i1 %cmp.not.i349, label %if.else79._rtw_p2p_set_state.exit351_crit_edge, label %if.then.i350

if.else79._rtw_p2p_set_state.exit351_crit_edge:   ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_state.exit351

if.then.i350:                                     ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %p2p_state.i374 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 10, ptr %p2p_state.i374, align 4
  br label %_rtw_p2p_set_state.exit351

_rtw_p2p_set_state.exit351:                       ; preds = %if.then.i350, %if.else79._rtw_p2p_set_state.exit351_crit_edge
  %67 = ptrtoint ptr %pre_p2p_state.i378 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pre_p2p_state.i378, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %68)
  %cmp.not.i352 = icmp eq i32 %68, 10
  br i1 %cmp.not.i352, label %_rtw_p2p_set_state.exit351._rtw_p2p_set_pre_state.exit_crit_edge, label %if.then.i353

_rtw_p2p_set_state.exit351._rtw_p2p_set_pre_state.exit_crit_edge: ; preds = %_rtw_p2p_set_state.exit351
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_pre_state.exit

if.then.i353:                                     ; preds = %_rtw_p2p_set_state.exit351
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %pre_p2p_state.i378 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 10, ptr %pre_p2p_state.i378, align 4
  br label %_rtw_p2p_set_pre_state.exit

_rtw_p2p_set_pre_state.exit:                      ; preds = %if.then.i353, %_rtw_p2p_set_state.exit351._rtw_p2p_set_pre_state.exit_crit_edge
  %70 = and i8 %53, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool82.not = icmp eq i8 %70, 0
  %71 = ptrtoint ptr %role1.i382 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %role1.i382, align 4
  br i1 %tobool82.not, label %if.else84, label %if.then83

if.then83:                                        ; preds = %_rtw_p2p_set_pre_state.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp.not.i355 = icmp eq i32 %72, 2
  br i1 %cmp.not.i355, label %if.then83.if.end108_crit_edge, label %if.then.i356

if.then83.if.end108_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108

if.then.i356:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %role1.i382 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %role1.i382, align 4
  br label %if.end108

if.else84:                                        ; preds = %_rtw_p2p_set_pre_state.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %72)
  %cmp.not.i359 = icmp eq i32 %72, 3
  br i1 %cmp.not.i359, label %if.else84.if.then100_crit_edge, label %if.else84.if.then100.sink.split_crit_edge

if.else84.if.then100.sink.split_crit_edge:        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then100.sink.split

if.else84.if.then100_crit_edge:                   ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then100

if.else87:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %57)
  %cmp93 = icmp ugt i8 %56, %57
  %74 = ptrtoint ptr %p2p_state.i374 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %p2p_state.i374, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %75)
  %cmp.not.i363 = icmp eq i32 %75, 10
  br i1 %cmp93, label %if.then95, label %if.else96

if.then95:                                        ; preds = %if.else87
  br i1 %cmp.not.i363, label %if.then95._rtw_p2p_set_state.exit365_crit_edge, label %if.then.i364

if.then95._rtw_p2p_set_state.exit365_crit_edge:   ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_state.exit365

if.then.i364:                                     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %p2p_state.i374 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 10, ptr %p2p_state.i374, align 4
  br label %_rtw_p2p_set_state.exit365

_rtw_p2p_set_state.exit365:                       ; preds = %if.then.i364, %if.then95._rtw_p2p_set_state.exit365_crit_edge
  %77 = ptrtoint ptr %pre_p2p_state.i378 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pre_p2p_state.i378, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %78)
  %cmp.not.i367 = icmp eq i32 %78, 10
  br i1 %cmp.not.i367, label %_rtw_p2p_set_state.exit365._rtw_p2p_set_pre_state.exit369_crit_edge, label %if.then.i368

_rtw_p2p_set_state.exit365._rtw_p2p_set_pre_state.exit369_crit_edge: ; preds = %_rtw_p2p_set_state.exit365
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_pre_state.exit369

if.then.i368:                                     ; preds = %_rtw_p2p_set_state.exit365
  call void @__sanitizer_cov_trace_pc() #15
  %79 = ptrtoint ptr %pre_p2p_state.i378 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 10, ptr %pre_p2p_state.i378, align 4
  br label %_rtw_p2p_set_pre_state.exit369

_rtw_p2p_set_pre_state.exit369:                   ; preds = %if.then.i368, %_rtw_p2p_set_state.exit365._rtw_p2p_set_pre_state.exit369_crit_edge
  %80 = ptrtoint ptr %role1.i382 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %role1.i382, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %81)
  %cmp.not.i371 = icmp eq i32 %81, 3
  br i1 %cmp.not.i371, label %_rtw_p2p_set_pre_state.exit369.if.then100_crit_edge, label %_rtw_p2p_set_pre_state.exit369.if.then100.sink.split_crit_edge

_rtw_p2p_set_pre_state.exit369.if.then100.sink.split_crit_edge: ; preds = %_rtw_p2p_set_pre_state.exit369
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then100.sink.split

_rtw_p2p_set_pre_state.exit369.if.then100_crit_edge: ; preds = %_rtw_p2p_set_pre_state.exit369
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then100

if.else96:                                        ; preds = %if.else87
  br i1 %cmp.not.i363, label %if.else96._rtw_p2p_set_state.exit377_crit_edge, label %if.then.i376

if.else96._rtw_p2p_set_state.exit377_crit_edge:   ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_state.exit377

if.then.i376:                                     ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %p2p_state.i374 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 10, ptr %p2p_state.i374, align 4
  br label %_rtw_p2p_set_state.exit377

_rtw_p2p_set_state.exit377:                       ; preds = %if.then.i376, %if.else96._rtw_p2p_set_state.exit377_crit_edge
  %83 = ptrtoint ptr %pre_p2p_state.i378 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pre_p2p_state.i378, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %84)
  %cmp.not.i379 = icmp eq i32 %84, 10
  br i1 %cmp.not.i379, label %_rtw_p2p_set_state.exit377._rtw_p2p_set_pre_state.exit381_crit_edge, label %if.then.i380

_rtw_p2p_set_state.exit377._rtw_p2p_set_pre_state.exit381_crit_edge: ; preds = %_rtw_p2p_set_state.exit377
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_pre_state.exit381

if.then.i380:                                     ; preds = %_rtw_p2p_set_state.exit377
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %pre_p2p_state.i378 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 10, ptr %pre_p2p_state.i378, align 4
  br label %_rtw_p2p_set_pre_state.exit381

_rtw_p2p_set_pre_state.exit381:                   ; preds = %if.then.i380, %_rtw_p2p_set_state.exit377._rtw_p2p_set_pre_state.exit381_crit_edge
  %86 = ptrtoint ptr %role1.i382 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %role1.i382, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %87)
  %cmp.not.i383 = icmp eq i32 %87, 2
  br i1 %cmp.not.i383, label %_rtw_p2p_set_pre_state.exit381.if.end108_crit_edge, label %if.then.i384

_rtw_p2p_set_pre_state.exit381.if.end108_crit_edge: ; preds = %_rtw_p2p_set_pre_state.exit381
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108

if.then.i384:                                     ; preds = %_rtw_p2p_set_pre_state.exit381
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %role1.i382 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 2, ptr %role1.i382, align 4
  br label %if.end108

if.end98:                                         ; preds = %if.then.i346, %_rtw_p2p_set_role.exit343.if.end98_crit_edge
  %89 = ptrtoint ptr %role1.i382 to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pr = load i32, ptr %role1.i382, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp.i = icmp eq i32 %.pr, 3
  br i1 %cmp.i, label %if.end98.if.then100_crit_edge, label %if.end98.if.end108_crit_edge

if.end98.if.end108_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108

if.end98.if.then100_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then100

if.then100.sink.split:                            ; preds = %_rtw_p2p_set_pre_state.exit369.if.then100.sink.split_crit_edge, %if.else84.if.then100.sink.split_crit_edge
  %90 = ptrtoint ptr %role1.i382 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 3, ptr %role1.i382, align 4
  br label %if.then100

if.then100:                                       ; preds = %if.then100.sink.split, %if.end98.if.then100_crit_edge, %_rtw_p2p_set_pre_state.exit369.if.then100_crit_edge, %if.else84.if.then100_crit_edge
  %result.2443 = phi i8 [ 9, %if.end98.if.then100_crit_edge ], [ %result.1437, %_rtw_p2p_set_pre_state.exit369.if.then100_crit_edge ], [ %result.1437, %if.else84.if.then100_crit_edge ], [ %result.1437, %if.then100.sink.split ]
  %91 = call ptr @memcpy(ptr %groupid_info, ptr %device_addr, i32 6)
  %92 = ptrtoint ptr %nego_ssidlen to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %nego_ssidlen, align 1
  %conv106 = zext i8 %93 to i32
  %94 = call ptr @memcpy(ptr %ssid, ptr %nego_ssid, i32 %conv106)
  br label %if.end108

if.end108:                                        ; preds = %if.then100, %if.end98.if.end108_crit_edge, %if.then.i384, %_rtw_p2p_set_pre_state.exit381.if.end108_crit_edge, %if.then.i356, %if.then83.if.end108_crit_edge, %if.end49.if.end108_crit_edge
  %result.3 = phi i8 [ %result.2443, %if.then100 ], [ 9, %if.end98.if.end108_crit_edge ], [ %result.1437, %if.end49.if.end108_crit_edge ], [ %result.1437, %if.then.i384 ], [ %result.1437, %_rtw_p2p_set_pre_state.exit381.if.end108_crit_edge ], [ %result.1437, %if.then.i356 ], [ %result.1437, %if.then83.if.end108_crit_edge ]
  %95 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %attr_contentlen, align 4
  %96 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %p2p_ielen, align 4
  %call110 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %p2p_ie.0435, i32 noundef %97, i8 noundef zeroext 17, ptr noundef nonnull %operatingch_info, ptr noundef nonnull %attr_contentlen) #13
  %tobool111.not = icmp eq ptr %call110, null
  br i1 %tobool111.not, label %if.end108.if.end127_crit_edge, label %do.body113

if.end108.if.end127_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127

do.body113:                                       ; preds = %if.end108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %98 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %98)
  %cmp114 = icmp ugt i32 %98, 4
  br i1 %cmp114, label %do.end119, label %do.body113.do.end125_crit_edge

do.body113.do.end125_crit_edge:                   ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end125

do.end119:                                        ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx, align 1
  %conv121 = zext i8 %100 to i32
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.35, i32 noundef %conv121) #16
  br label %do.end125

do.end125:                                        ; preds = %do.end119, %do.body113.do.end125_crit_edge
  %101 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx, align 1
  %103 = ptrtoint ptr %peer_operating_ch to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %peer_operating_ch, align 2
  br label %if.end127

if.end127:                                        ; preds = %do.end125, %if.end108.if.end127_crit_edge
  %104 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %p2p_ielen, align 4
  %call129 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %p2p_ie.0435, i32 noundef %105, i8 noundef zeroext 11, ptr noundef %channel_list_attr, ptr noundef %channel_list_attr_len) #13
  %tobool130.not = icmp eq ptr %call129, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %106 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %106)
  %cmp226 = icmp ugt i32 %106, 4
  br i1 %tobool130.not, label %do.body225, label %do.body132

do.body132:                                       ; preds = %if.end127
  br i1 %cmp226, label %do.end138, label %do.body132.do.end144_crit_edge

do.body132.do.end144_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end144

do.end138:                                        ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %channel_list_attr_len to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %channel_list_attr_len, align 4
  %call141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.35, i32 noundef %108) #16
  br label %do.end144

do.end144:                                        ; preds = %do.end138, %do.body132.do.end144_crit_edge
  %109 = ptrtoint ptr %channel_list_attr_len to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %channel_list_attr_len, align 4
  %conv148 = trunc i32 %110 to i8
  %sub.i = add i8 %conv148, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sub.i)
  %cmp.not4.i = icmp eq i8 %sub.i, 0
  br i1 %cmp.not4.i, label %do.end144.do.body158_crit_edge, label %do.end144.while.body.i_crit_edge

do.end144.while.body.i_crit_edge:                 ; preds = %do.end144
  br label %while.body.i

do.end144.do.body158_crit_edge:                   ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body158

while.body.i:                                     ; preds = %for.end.i.while.body.i_crit_edge, %do.end144.while.body.i_crit_edge
  %ch_no.08.i = phi i8 [ %add25.i, %for.end.i.while.body.i_crit_edge ], [ 0, %do.end144.while.body.i_crit_edge ]
  %j.07.i = phi i8 [ %j.1.lcssa.i, %for.end.i.while.body.i_crit_edge ], [ 0, %do.end144.while.body.i_crit_edge ]
  %ch_content.addr.06.i = phi ptr [ %add.ptr17.i, %for.end.i.while.body.i_crit_edge ], [ %add.ptr.i, %do.end144.while.body.i_crit_edge ]
  %ch_cnt.addr.05.i = phi i8 [ %conv22.i, %for.end.i.while.body.i_crit_edge ], [ %sub.i, %do.end144.while.body.i_crit_edge ]
  %add.ptr4.i = getelementptr i8, ptr %ch_content.addr.06.i, i32 1
  %111 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %add.ptr4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %cmp101.not.i = icmp eq i8 %112, 0
  br i1 %cmp101.not.i, label %while.body.i.for.end.i_crit_edge, label %for.body.lr.ph.i

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %while.body.i
  %add.ptr12.i = getelementptr i8, ptr %ch_content.addr.06.i, i32 2
  %wide.trip.count.i = zext i8 %112 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %j.13.i = phi i8 [ %j.07.i, %for.body.lr.ph.i ], [ %inc15.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr14.i = getelementptr i8, ptr %add.ptr12.i, i32 %indvars.iv.i
  %113 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %add.ptr14.i, align 1
  %idxprom.i = zext i8 %j.13.i to i32
  %arrayidx.i = getelementptr i8, ptr %peer_ch_list, i32 %idxprom.i
  %115 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %arrayidx.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %inc15.i = add i8 %j.13.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %while.body.i.for.end.i_crit_edge
  %conv9.pre-phi.i = phi i32 [ 0, %while.body.i.for.end.i_crit_edge ], [ %wide.trip.count.i, %for.body.i.for.end.i_crit_edge ]
  %j.1.lcssa.i = phi i8 [ %j.07.i, %while.body.i.for.end.i_crit_edge ], [ %inc15.i, %for.body.i.for.end.i_crit_edge ]
  %add.i = add nuw nsw i32 %conv9.pre-phi.i, 1
  %add.ptr17.i = getelementptr i8, ptr %add.ptr4.i, i32 %add.i
  %116 = trunc i32 %add.i to i8
  %117 = xor i8 %116, -1
  %conv22.i = add i8 %ch_cnt.addr.05.i, %117
  %add25.i = add i8 %112, %ch_no.08.i
  %cmp.not.i387 = icmp eq i8 %conv22.i, 0
  br i1 %cmp.not.i387, label %rtw_p2p_get_peer_ch_list.exit, label %for.end.i.while.body.i_crit_edge

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

rtw_p2p_get_peer_ch_list.exit:                    ; preds = %for.end.i
  %conv.i = zext i8 %add25.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add25.i)
  %cmp29.not.i = icmp eq i8 %add25.i, 0
  br i1 %cmp29.not.i, label %rtw_p2p_get_peer_ch_list.exit.do.body158_crit_edge, label %for.cond2.preheader.lr.ph.i

rtw_p2p_get_peer_ch_list.exit.do.body158_crit_edge: ; preds = %rtw_p2p_get_peer_ch_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body158

for.cond2.preheader.lr.ph.i:                      ; preds = %rtw_p2p_get_peer_ch_list.exit
  %118 = ptrtoint ptr %max_chan_nums.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %max_chan_nums.i, align 1
  %conv3.i = zext i8 %119 to i32
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc14.i.for.cond2.preheader.i_crit_edge, %for.cond2.preheader.lr.ph.i
  %ch_no.035.i = phi i8 [ 0, %for.cond2.preheader.lr.ph.i ], [ %ch_no.1.i, %for.inc14.i.for.cond2.preheader.i_crit_edge ]
  %temp.033.i = phi i32 [ 0, %for.cond2.preheader.lr.ph.i ], [ %temp.1.i, %for.inc14.i.for.cond2.preheader.i_crit_edge ]
  %i.030.i = phi i32 [ 0, %for.cond2.preheader.lr.ph.i ], [ %inc15.i393, %for.inc14.i.for.cond2.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %temp.033.i, i32 %conv3.i)
  %cmp427.i = icmp slt i32 %temp.033.i, %conv3.i
  br i1 %cmp427.i, label %for.body6.lr.ph.i, label %for.cond2.preheader.i.for.inc14.i_crit_edge

for.cond2.preheader.i.for.inc14.i_crit_edge:      ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc14.i

for.body6.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %add.ptr.i388 = getelementptr i8, ptr %peer_ch_list, i32 %i.030.i
  %120 = ptrtoint ptr %add.ptr.i388 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %add.ptr.i388, align 1
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %j.028.i = phi i32 [ %temp.033.i, %for.body6.lr.ph.i ], [ %inc13.i, %for.inc.i.for.body6.i_crit_edge ]
  %arrayidx.i389 = getelementptr %struct.adapter, ptr %1, i32 0, i32 5, i32 12, i32 %j.028.i
  %122 = ptrtoint ptr %arrayidx.i389 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx.i389, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %121, i8 %123)
  %cmp9.i = icmp eq i8 %121, %123
  br i1 %cmp9.i, label %if.then.i391, label %for.inc.i

if.then.i391:                                     ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc.i = add i8 %ch_no.035.i, 1
  %idxprom.i390 = zext i8 %ch_no.035.i to i32
  %arrayidx12.i = getelementptr i8, ptr %ch_list_inclusioned, i32 %idxprom.i390
  %124 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %121, ptr %arrayidx12.i, align 1
  br label %for.inc14.i

for.inc.i:                                        ; preds = %for.body6.i
  %inc13.i = add nsw i32 %j.028.i, 1
  %exitcond.not.i392 = icmp eq i32 %inc13.i, %conv3.i
  br i1 %exitcond.not.i392, label %for.inc.i.for.inc14.i_crit_edge, label %for.inc.i.for.body6.i_crit_edge

for.inc.i.for.body6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body6.i

for.inc.i.for.inc14.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc14.i

for.inc14.i:                                      ; preds = %for.inc.i.for.inc14.i_crit_edge, %if.then.i391, %for.cond2.preheader.i.for.inc14.i_crit_edge
  %temp.1.i = phi i32 [ %j.028.i, %if.then.i391 ], [ %temp.033.i, %for.cond2.preheader.i.for.inc14.i_crit_edge ], [ %temp.033.i, %for.inc.i.for.inc14.i_crit_edge ]
  %ch_no.1.i = phi i8 [ %inc.i, %if.then.i391 ], [ %ch_no.035.i, %for.cond2.preheader.i.for.inc14.i_crit_edge ], [ %ch_no.035.i, %for.inc.i.for.inc14.i_crit_edge ]
  %inc15.i393 = add nuw nsw i32 %i.030.i, 1
  %exitcond37.not.i = icmp eq i32 %inc15.i393, %conv.i
  br i1 %exitcond37.not.i, label %rtw_p2p_ch_inclusion.exit, label %for.inc14.i.for.cond2.preheader.i_crit_edge

for.inc14.i.for.cond2.preheader.i_crit_edge:      ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond2.preheader.i

rtw_p2p_ch_inclusion.exit:                        ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ch_no.1.i)
  %cmp155 = icmp eq i8 %ch_no.1.i, 0
  br i1 %cmp155, label %rtw_p2p_ch_inclusion.exit.do.body158_crit_edge, label %if.end170

rtw_p2p_ch_inclusion.exit.do.body158_crit_edge:   ; preds = %rtw_p2p_ch_inclusion.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body158

do.body158:                                       ; preds = %rtw_p2p_ch_inclusion.exit.do.body158_crit_edge, %rtw_p2p_get_peer_ch_list.exit.do.body158_crit_edge, %do.end144.do.body158_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %125 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %125)
  %cmp159 = icmp ugt i32 %125, 4
  br i1 %cmp159, label %do.end164, label %do.body158.do.end169_crit_edge

do.body158.do.end169_crit_edge:                   ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end169

do.end164:                                        ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #15
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.35) #16
  br label %do.end169

do.end169:                                        ; preds = %do.end164, %do.body158.do.end169_crit_edge
  %126 = ptrtoint ptr %p2p_state.i374 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %p2p_state.i374, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %127)
  %cmp.not.i396 = icmp eq i32 %127, 11
  br i1 %cmp.not.i396, label %do.end169.while.end_crit_edge, label %if.then.i397

do.end169.while.end_crit_edge:                    ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.then.i397:                                     ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #15
  %128 = ptrtoint ptr %p2p_state.i374 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 11, ptr %p2p_state.i374, align 4
  br label %while.end

if.end170:                                        ; preds = %rtw_p2p_ch_inclusion.exit
  %129 = ptrtoint ptr %role1.i382 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %role1.i382, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %130)
  %cmp.i400 = icmp eq i32 %130, 3
  br i1 %cmp.i400, label %if.then172, label %if.end170.if.end237_crit_edge

if.end170.if.end237_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end237

if.then172:                                       ; preds = %if.end170
  %131 = ptrtoint ptr %operating_channel to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %operating_channel, align 1
  %conv.i401 = zext i8 %ch_no.1.i to i32
  br label %for.body.i405

for.cond.i:                                       ; preds = %for.body.i405
  %inc.i402 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i403 = icmp eq i32 %inc.i402, %conv.i401
  br i1 %exitcond.not.i403, label %if.then176, label %for.cond.i.for.body.i405_crit_edge

for.cond.i.for.body.i405_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i405

for.body.i405:                                    ; preds = %for.cond.i.for.body.i405_crit_edge, %if.then172
  %i.09.i = phi i32 [ %inc.i402, %for.cond.i.for.body.i405_crit_edge ], [ 0, %if.then172 ]
  %arrayidx.i404 = getelementptr i8, ptr %ch_list_inclusioned, i32 %i.09.i
  %133 = ptrtoint ptr %arrayidx.i404 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.i404, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %134, i8 %132)
  %cmp4.i = icmp eq i8 %134, %132
  br i1 %cmp4.i, label %for.body.i405.if.end237_crit_edge, label %for.cond.i

for.body.i405.if.end237_crit_edge:                ; preds = %for.body.i405
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end237

if.then176:                                       ; preds = %for.cond.i
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %operatingch_info177) #13
  %135 = call ptr @memset(ptr %operatingch_info177, i32 0, i32 5)
  %136 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %attr_contentlen, align 4
  %137 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %p2p_ielen, align 4
  %call180 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %p2p_ie.0435, i32 noundef %138, i8 noundef zeroext 17, ptr noundef nonnull %operatingch_info177, ptr noundef nonnull %attr_contentlen) #13
  %tobool181.not = icmp eq ptr %call180, null
  br i1 %tobool181.not, label %if.then176.if.end184_crit_edge, label %if.then182

if.then176.if.end184_crit_edge:                   ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184

if.then182:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #15
  %139 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx183, align 1
  br label %if.end184

if.end184:                                        ; preds = %if.then182, %if.then176.if.end184_crit_edge
  %peer_operating_ch178.0 = phi i8 [ %140, %if.then182 ], [ 0, %if.then176.if.end184_crit_edge ]
  br label %for.body.i415

for.cond.i411:                                    ; preds = %for.body.i415
  %inc.i409 = add nuw nsw i32 %i.09.i412, 1
  %exitcond.not.i410 = icmp eq i32 %inc.i409, %conv.i401
  br i1 %exitcond.not.i410, label %if.else204, label %for.cond.i411.for.body.i415_crit_edge

for.cond.i411.for.body.i415_crit_edge:            ; preds = %for.cond.i411
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i415

for.body.i415:                                    ; preds = %for.cond.i411.for.body.i415_crit_edge, %if.end184
  %i.09.i412 = phi i32 [ %inc.i409, %for.cond.i411.for.body.i415_crit_edge ], [ 0, %if.end184 ]
  %arrayidx.i413 = getelementptr i8, ptr %ch_list_inclusioned, i32 %i.09.i412
  %141 = ptrtoint ptr %arrayidx.i413 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx.i413, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %142, i8 %peer_operating_ch178.0)
  %cmp4.i414 = icmp eq i8 %142, %peer_operating_ch178.0
  br i1 %cmp4.i414, label %if.then188, label %for.cond.i411

if.then188:                                       ; preds = %for.body.i415
  %143 = ptrtoint ptr %operating_channel to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %peer_operating_ch178.0, ptr %operating_channel, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %144 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %144)
  %cmp191 = icmp ugt i32 %144, 4
  br i1 %cmp191, label %if.then188.if.end221.sink.split_crit_edge, label %if.then188.if.end221_crit_edge

if.then188.if.end221_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end221

if.then188.if.end221.sink.split_crit_edge:        ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end221.sink.split

if.else204:                                       ; preds = %for.cond.i411
  %145 = ptrtoint ptr %ch_list_inclusioned to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %ch_list_inclusioned, align 1
  %147 = ptrtoint ptr %operating_channel to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %operating_channel, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %148 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %148)
  %cmp208 = icmp ugt i32 %148, 4
  br i1 %cmp208, label %if.else204.if.end221.sink.split_crit_edge, label %if.else204.if.end221_crit_edge

if.else204.if.end221_crit_edge:                   ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end221

if.else204.if.end221.sink.split_crit_edge:        ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end221.sink.split

if.end221.sink.split:                             ; preds = %if.else204.if.end221.sink.split_crit_edge, %if.then188.if.end221.sink.split_crit_edge
  %.sink451 = phi i8 [ %peer_operating_ch178.0, %if.then188.if.end221.sink.split_crit_edge ], [ %146, %if.else204.if.end221.sink.split_crit_edge ]
  %.str.33.sink = phi ptr [ @.str.30, %if.then188.if.end221.sink.split_crit_edge ], [ @.str.33, %if.else204.if.end221.sink.split_crit_edge ]
  %conv216 = zext i8 %.sink451 to i32
  %call217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.33.sink, ptr noundef nonnull @.str.35, i32 noundef %conv216) #16
  br label %if.end221

if.end221:                                        ; preds = %if.end221.sink.split, %if.else204.if.end221_crit_edge, %if.then188.if.end221_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %operatingch_info177) #13
  br label %if.end237

do.body225:                                       ; preds = %if.end127
  br i1 %cmp226, label %do.end231, label %do.body225.if.end237_crit_edge

do.body225.if.end237_crit_edge:                   ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end237

do.end231:                                        ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #15
  %call233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.35) #16
  br label %if.end237

if.end237:                                        ; preds = %do.end231, %do.body225.if.end237_crit_edge, %if.end221, %for.body.i405.if.end237_crit_edge, %if.end170.if.end237_crit_edge
  %149 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %attr_contentlen, align 4
  %150 = call ptr @memset(ptr %groupid, i32 0, i32 38)
  %151 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %p2p_ielen, align 4
  %call240 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %p2p_ie.0435, i32 noundef %152, i8 noundef zeroext 15, ptr noundef nonnull %groupid, ptr noundef nonnull %attr_contentlen) #13
  %tobool241.not = icmp eq ptr %call240, null
  br i1 %tobool241.not, label %if.end237.if.end252_crit_edge, label %if.then242

if.end237.if.end252_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end252

if.then242:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #15
  %153 = call ptr @memcpy(ptr %groupid_info, ptr %groupid, i32 6)
  %154 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %attr_contentlen, align 4
  %sub251 = add i32 %155, -6
  %156 = call ptr @memcpy(ptr %ssid, ptr %arrayidx250, i32 %sub251)
  br label %if.end252

if.end252:                                        ; preds = %if.then242, %if.end237.if.end252_crit_edge
  %157 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %p2p_ielen, align 4
  %add.ptr253 = getelementptr i8, ptr %p2p_ie.0435, i32 %158
  %sub.ptr.lhs.cast = ptrtoint ptr %p2p_ie.0435 to i32
  %159 = add i32 %158, %sub.ptr.lhs.cast
  %sub254 = sub i32 %sub.ptr.sub.neg, %159
  %call255 = call ptr @rtw_get_p2p_ie(ptr noundef %add.ptr253, i32 noundef %sub254, ptr noundef null, ptr noundef nonnull %p2p_ielen) #13
  %tobool12.not = icmp eq ptr %call255, null
  br i1 %tobool12.not, label %if.end252.while.end_crit_edge, label %if.end252.while.body_crit_edge

if.end252.while.body_crit_edge:                   ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end252.while.end_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end252.while.end_crit_edge, %if.then.i397, %do.end169.while.end_crit_edge, %if.then.i338, %if.end37.while.end_crit_edge
  %result.4 = phi i8 [ %28, %if.end37.while.end_crit_edge ], [ %28, %if.then.i338 ], [ 7, %do.end169.while.end_crit_edge ], [ 7, %if.then.i397 ], [ %result.3, %if.end252.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %ch_list_inclusioned) #13
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %peer_ch_list) #13
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %groupid) #13
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %operatingch_info) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr_contentlen) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %attr_content) #13
  br label %if.end256

if.end256:                                        ; preds = %while.end, %if.then.i326, %_rtw_p2p_set_role.exit.if.end256_crit_edge
  %result.5 = phi i8 [ %result.4, %while.end ], [ 2, %_rtw_p2p_set_role.exit.if.end256_crit_edge ], [ 2, %if.then.i326 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wps_ielen) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p2p_ielen) #13
  ret i8 %result.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @process_p2p_group_negotation_confirm(ptr noundef %pwdinfo, ptr noundef %pframe, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %p2p_ielen = alloca i32, align 4
  %attr_content = alloca i8, align 1
  %operatingch_info = alloca [5 x i8], align 1
  %groupid = alloca [38 x i8], align 1
  %attr_contentlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p2p_ielen) #13
  %0 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %p2p_ielen, align 4
  %add.ptr = getelementptr i8, ptr %pframe, i32 8
  %sub = add i32 %len, -8
  %call = call ptr @rtw_get_p2p_ie(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef null, ptr noundef nonnull %p2p_ielen) #13
  %tobool.not145 = icmp eq ptr %call, null
  br i1 %tobool.not145, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %negotiation_dialog_token = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 36
  %restore_p2p_state_timer = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 2
  %p2p_state.i = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 17
  %pre_p2p_state.i = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 16
  %intent = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 26
  %peer_intent = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 29
  %role1.i125 = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 15
  %arrayidx = getelementptr inbounds [38 x i8], ptr %groupid, i32 0, i32 6
  %groupid_info = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 12
  %ssid = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 12, i32 1
  %arrayidx74 = getelementptr inbounds [5 x i8], ptr %operatingch_info, i32 0, i32 4
  %peer_operating_ch = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 33
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.neg = add i32 %sub, %sub.ptr.rhs.cast
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %p2p_ie.0146 = phi ptr [ %call, %while.body.lr.ph ], [ %call84, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %attr_content) #13
  %1 = ptrtoint ptr %attr_content to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %attr_content, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %operatingch_info) #13
  %2 = call ptr @memset(ptr %operatingch_info, i32 0, i32 5)
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %groupid) #13
  %3 = call ptr @memset(ptr %groupid, i32 0, i32 38)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr_contentlen) #13
  %4 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %attr_contentlen, align 4
  %5 = ptrtoint ptr %negotiation_dialog_token to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %negotiation_dialog_token, align 2
  %6 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p2p_ielen, align 4
  %call1 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %p2p_ie.0146, i32 noundef %7, i8 noundef zeroext 0, ptr noundef nonnull %attr_content, ptr noundef nonnull %attr_contentlen) #13
  %8 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attr_contentlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %do.body, label %while.body.if.end36_crit_edge

while.body.if.end36_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

do.body:                                          ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %10 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp2 = icmp ugt i32 %10, 4
  br i1 %cmp2, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %attr_content to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %attr_content, align 1
  %conv = zext i8 %12 to i32
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.56, i32 noundef %conv) #16
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %13 = ptrtoint ptr %attr_content to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %attr_content, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp9 = icmp eq i8 %14, 0
  br i1 %cmp9, label %if.then11, label %if.else34

if.then11:                                        ; preds = %do.end7
  %call.i = call i32 @del_timer_sync(ptr noundef %restore_p2p_state_timer) #13
  %15 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 10
  br i1 %cmp.not.i, label %if.then11._rtw_p2p_set_state.exit_crit_edge, label %if.then.i

if.then11._rtw_p2p_set_state.exit_crit_edge:      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_state.exit

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 10, ptr %p2p_state.i, align 4
  br label %_rtw_p2p_set_state.exit

_rtw_p2p_set_state.exit:                          ; preds = %if.then.i, %if.then11._rtw_p2p_set_state.exit_crit_edge
  %18 = ptrtoint ptr %pre_p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pre_p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %19)
  %cmp.not.i117 = icmp eq i32 %19, 10
  br i1 %cmp.not.i117, label %_rtw_p2p_set_state.exit._rtw_p2p_set_pre_state.exit_crit_edge, label %if.then.i118

_rtw_p2p_set_state.exit._rtw_p2p_set_pre_state.exit_crit_edge: ; preds = %_rtw_p2p_set_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_pre_state.exit

if.then.i118:                                     ; preds = %_rtw_p2p_set_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %pre_p2p_state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 10, ptr %pre_p2p_state.i, align 4
  br label %_rtw_p2p_set_pre_state.exit

_rtw_p2p_set_pre_state.exit:                      ; preds = %if.then.i118, %_rtw_p2p_set_state.exit._rtw_p2p_set_pre_state.exit_crit_edge
  %21 = ptrtoint ptr %intent to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %intent, align 2
  %conv12 = zext i8 %22 to i32
  %23 = ptrtoint ptr %peer_intent to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %peer_intent, align 1
  %conv13 = zext i8 %24 to i32
  %25 = lshr i32 %conv13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv12)
  %cmp14 = icmp ult i32 %25, %conv12
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %_rtw_p2p_set_pre_state.exit
  %26 = ptrtoint ptr %role1.i125 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %role1.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp.not.i119 = icmp eq i32 %27, 3
  br i1 %cmp.not.i119, label %if.then16.if.end36_crit_edge, label %if.then16.if.end36.sink.split_crit_edge

if.then16.if.end36.sink.split_crit_edge:          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.sink.split

if.then16.if.end36_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.else:                                          ; preds = %_rtw_p2p_set_pre_state.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv12)
  %cmp22 = icmp ugt i32 %25, %conv12
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else
  %28 = ptrtoint ptr %role1.i125 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %role1.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp.not.i122 = icmp eq i32 %29, 2
  br i1 %cmp.not.i122, label %if.then24.if.end36_crit_edge, label %if.then24.if.end36.sink.split_crit_edge

if.then24.if.end36.sink.split_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.sink.split

if.then24.if.end36_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.else25:                                        ; preds = %if.else
  %and = and i32 %conv13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  %30 = ptrtoint ptr %role1.i125 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %role1.i125, align 4
  br i1 %tobool28.not, label %if.else30, label %if.then29

if.then29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.not.i126 = icmp eq i32 %31, 2
  br i1 %cmp.not.i126, label %if.then29.if.end36_crit_edge, label %if.then29.if.end36.sink.split_crit_edge

if.then29.if.end36.sink.split_crit_edge:          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.sink.split

if.then29.if.end36_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.else30:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp.not.i130 = icmp eq i32 %31, 3
  br i1 %cmp.not.i130, label %if.else30.if.end36_crit_edge, label %if.else30.if.end36.sink.split_crit_edge

if.else30.if.end36.sink.split_crit_edge:          ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.sink.split

if.else30.if.end36_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.else34:                                        ; preds = %do.end7
  %32 = ptrtoint ptr %role1.i125 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %role1.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.not.i134 = icmp eq i32 %33, 1
  br i1 %cmp.not.i134, label %if.else34._rtw_p2p_set_role.exit136_crit_edge, label %if.then.i135

if.else34._rtw_p2p_set_role.exit136_crit_edge:    ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_role.exit136

if.then.i135:                                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %role1.i125 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %role1.i125, align 4
  br label %_rtw_p2p_set_role.exit136

_rtw_p2p_set_role.exit136:                        ; preds = %if.then.i135, %if.else34._rtw_p2p_set_role.exit136_crit_edge
  %35 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %36)
  %cmp.not.i138 = icmp eq i32 %36, 11
  br i1 %cmp.not.i138, label %_rtw_p2p_set_role.exit136.cleanup.thread_crit_edge, label %if.then.i139

_rtw_p2p_set_role.exit136.cleanup.thread_crit_edge: ; preds = %_rtw_p2p_set_role.exit136
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.then.i139:                                     ; preds = %_rtw_p2p_set_role.exit136
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 11, ptr %p2p_state.i, align 4
  br label %cleanup.thread

if.end36.sink.split:                              ; preds = %if.else30.if.end36.sink.split_crit_edge, %if.then29.if.end36.sink.split_crit_edge, %if.then24.if.end36.sink.split_crit_edge, %if.then16.if.end36.sink.split_crit_edge
  %.sink = phi i32 [ 3, %if.then16.if.end36.sink.split_crit_edge ], [ 2, %if.then24.if.end36.sink.split_crit_edge ], [ 2, %if.then29.if.end36.sink.split_crit_edge ], [ 3, %if.else30.if.end36.sink.split_crit_edge ]
  %38 = ptrtoint ptr %role1.i125 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink, ptr %role1.i125, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %if.else30.if.end36_crit_edge, %if.then29.if.end36_crit_edge, %if.then24.if.end36_crit_edge, %if.then16.if.end36_crit_edge, %while.body.if.end36_crit_edge
  %39 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %attr_contentlen, align 4
  %40 = call ptr @memset(ptr %groupid, i32 0, i32 38)
  %41 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %p2p_ielen, align 4
  %call38 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %p2p_ie.0146, i32 noundef %42, i8 noundef zeroext 15, ptr noundef nonnull %groupid, ptr noundef nonnull %attr_contentlen) #13
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end36.if.end61_crit_edge, label %do.body41

if.end36.if.end61_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

do.body41:                                        ; preds = %if.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %43 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp42 = icmp ugt i32 %43, 4
  br i1 %cmp42, label %do.end47, label %do.body41.do.end54_crit_edge

do.body41.do.end54_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end54

do.end47:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #15
  %call50 = call i32 @strlen(ptr noundef %arrayidx) #18
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, ptr noundef %arrayidx, i32 noundef %call50) #16
  br label %do.end54

do.end54:                                         ; preds = %do.end47, %do.body41.do.end54_crit_edge
  %44 = call ptr @memcpy(ptr %groupid_info, ptr %groupid, i32 6)
  %45 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %attr_contentlen, align 4
  %sub60 = add i32 %46, -6
  %47 = call ptr @memcpy(ptr %ssid, ptr %arrayidx, i32 %sub60)
  br label %if.end61

if.end61:                                         ; preds = %do.end54, %if.end36.if.end61_crit_edge
  %48 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %attr_contentlen, align 4
  %49 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %p2p_ielen, align 4
  %call63 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %p2p_ie.0146, i32 noundef %50, i8 noundef zeroext 17, ptr noundef nonnull %operatingch_info, ptr noundef nonnull %attr_contentlen) #13
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %if.end61.cleanup_crit_edge, label %do.body66

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body66:                                        ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %51 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %cmp67 = icmp ugt i32 %51, 4
  br i1 %cmp67, label %do.end72, label %do.body66.do.end79_crit_edge

do.body66.do.end79_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end79

do.end72:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %53 to i32
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.56, i32 noundef %conv75) #16
  br label %do.end79

do.end79:                                         ; preds = %do.end72, %do.body66.do.end79_crit_edge
  %54 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx74, align 1
  %56 = ptrtoint ptr %peer_operating_ch to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %peer_operating_ch, align 2
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then.i139, %_rtw_p2p_set_role.exit136.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr_contentlen) #13
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %groupid) #13
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %operatingch_info) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %attr_content) #13
  br label %while.end

cleanup:                                          ; preds = %do.end79, %if.end61.cleanup_crit_edge
  %57 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %p2p_ielen, align 4
  %add.ptr82 = getelementptr i8, ptr %p2p_ie.0146, i32 %58
  %sub.ptr.lhs.cast = ptrtoint ptr %p2p_ie.0146 to i32
  %59 = add i32 %58, %sub.ptr.lhs.cast
  %sub83 = sub i32 %sub.ptr.sub.neg, %59
  %call84 = call ptr @rtw_get_p2p_ie(ptr noundef %add.ptr82, i32 noundef %sub83, ptr noundef null, ptr noundef nonnull %p2p_ielen) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr_contentlen) #13
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %groupid) #13
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %operatingch_info) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %attr_content) #13
  %tobool.not = icmp eq ptr %call84, null
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %entry.while.end_crit_edge
  %result.3 = phi i8 [ %14, %cleanup.thread ], [ 0, %entry.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p2p_ielen) #13
  ret i8 %result.3
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @process_p2p_presence_req(ptr nocapture noundef readonly %pwdinfo, ptr noundef %pframe, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %status.addr.i = alloca i8, align 1
  %dialogToken.addr.i = alloca i8, align 1
  %category.i = alloca i8, align 1
  %p2poui.i = alloca i32, align 4
  %oui_subtype.i = alloca i8, align 1
  %p2pie.i = alloca [256 x i8], align 1
  %noa_attr_content.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %pframe, i32 30
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = ptrtoint ptr %pframe to i32
  %add = add i32 %2, 10
  %3 = inttoptr i32 %add to ptr
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dialogToken.addr.i)
  %4 = ptrtoint ptr %status.addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %status.addr.i, align 1
  %5 = ptrtoint ptr %dialogToken.addr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %1, ptr %dialogToken.addr.i, align 1
  %6 = ptrtoint ptr %pwdinfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwdinfo, align 4
  %xmitpriv.i = getelementptr inbounds %struct.adapter, ptr %7, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %category.i) #13
  %8 = ptrtoint ptr %category.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 127, ptr %category.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p2poui.i) #13
  %9 = ptrtoint ptr %p2poui.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1349491209, ptr %p2poui.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %oui_subtype.i) #13
  %10 = ptrtoint ptr %oui_subtype.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %oui_subtype.i, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %p2pie.i) #13
  %11 = getelementptr inbounds i8, ptr %p2pie.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 252)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %noa_attr_content.i) #13
  %13 = getelementptr inbounds i8, ptr %noa_attr_content.i, i32 2
  %14 = call ptr @memset(ptr %13, i32 0, i32 30)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %15 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp.i = icmp ugt i32 %15, 4
  br i1 %cmp.i, label %do.end.i, label %entry.do.end4.i_crit_edge

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end4.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.79) #16
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %entry.do.end4.i_crit_edge
  %call5.i = tail call ptr @alloc_mgtxmitframe(ptr noundef %xmitpriv.i) #13
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %do.end4.i.issue_p2p_presence_resp.exit_crit_edge, label %if.end7.i

do.end4.i.issue_p2p_presence_resp.exit_crit_edge: ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %issue_p2p_presence_resp.exit

if.end7.i:                                        ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %attrib.i = getelementptr inbounds %struct.xmit_frame, ptr %call5.i, i32 0, i32 1
  tail call void @update_mgntframe_attrib(ptr noundef %7, ptr noundef %attrib.i) #13
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %call5.i, i32 0, i32 5
  %16 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf_addr.i, align 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 104)
  %19 = load ptr, ptr %buf_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 40
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %add.ptr.i, align 2
  %addr1.i = getelementptr i8, ptr %19, i32 44
  %21 = call ptr @memcpy(ptr %addr1.i, ptr %3, i32 6)
  %addr2.i = getelementptr i8, ptr %19, i32 50
  %interface_addr.i = getelementptr inbounds %struct.wifidirect_info, ptr %pwdinfo, i32 0, i32 19
  %22 = call ptr @memcpy(ptr %addr2.i, ptr %interface_addr.i, i32 6)
  %addr3.i = getelementptr i8, ptr %19, i32 56
  %23 = call ptr @memcpy(ptr %addr3.i, ptr %interface_addr.i, i32 6)
  %24 = ptrtoint ptr %add.ptr.i to i32
  %add.i = add i32 %24, 22
  %25 = inttoptr i32 %add.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 2
  %28 = and i16 %27, 3840
  %mgnt_seq.i = getelementptr inbounds %struct.adapter, ptr %7, i32 0, i32 5, i32 3
  %29 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mgnt_seq.i, align 4
  %shl.i = shl i16 %30, 4
  %31 = tail call i16 @llvm.bswap.i16(i16 %shl.i) #13
  %or1.i = or i16 %31, %28
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %or1.i, ptr %25, align 2
  %33 = ptrtoint ptr %mgnt_seq.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %mgnt_seq.i, align 4
  %inc.i = add i16 %34, 1
  store i16 %inc.i, ptr %mgnt_seq.i, align 4
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i, align 2
  %37 = and i16 %36, 1023
  %38 = or i16 %37, -12288
  store i16 %38, ptr %add.ptr.i, align 2
  %add.ptr33.i = getelementptr i8, ptr %19, i32 64
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call5.i, i32 0, i32 1, i32 8
  %39 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 24, ptr %pktlen.i, align 4
  %call35.i = call ptr @rtw_set_fixed_ie(ptr noundef %add.ptr33.i, i32 noundef 1, ptr noundef nonnull %category.i, ptr noundef %pktlen.i) #13
  %call37.i = call ptr @rtw_set_fixed_ie(ptr noundef %call35.i, i32 noundef 4, ptr noundef nonnull %p2poui.i, ptr noundef %pktlen.i) #13
  %call39.i = call ptr @rtw_set_fixed_ie(ptr noundef %call37.i, i32 noundef 1, ptr noundef nonnull %oui_subtype.i, ptr noundef %pktlen.i) #13
  %call41.i = call ptr @rtw_set_fixed_ie(ptr noundef %call39.i, i32 noundef 1, ptr noundef nonnull %dialogToken.addr.i, ptr noundef %pktlen.i) #13
  %40 = ptrtoint ptr %p2pie.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 80, ptr %p2pie.i, align 1
  %arrayidx44.i = getelementptr inbounds [256 x i8], ptr %p2pie.i, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 111, ptr %arrayidx44.i, align 1
  %arrayidx46.i = getelementptr inbounds [256 x i8], ptr %p2pie.i, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -102, ptr %arrayidx46.i, align 1
  %arrayidx48.i = getelementptr inbounds [256 x i8], ptr %p2pie.i, i32 0, i32 3
  %43 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 9, ptr %arrayidx48.i, align 1
  %call50.i = call i32 @rtw_set_p2p_attr_content(ptr noundef %11, i8 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %status.addr.i) #13
  %add51.i = add i32 %call50.i, 4
  %44 = ptrtoint ptr %noa_attr_content.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %noa_attr_content.i, align 1
  %arrayidx53.i = getelementptr inbounds [32 x i8], ptr %noa_attr_content.i, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx53.i, align 1
  %arrayidx54.i = getelementptr [256 x i8], ptr %p2pie.i, i32 0, i32 %add51.i
  %call56.i = call i32 @rtw_set_p2p_attr_content(ptr noundef %arrayidx54.i, i8 noundef zeroext 12, i16 noundef zeroext 2, ptr noundef nonnull %noa_attr_content.i) #13
  %add57.i = add i32 %call56.i, %add51.i
  %call60.i = call ptr @rtw_set_ie(ptr noundef %call41.i, i32 noundef 221, i32 noundef %add57.i, ptr noundef nonnull %p2pie.i, ptr noundef %pktlen.i) #13
  %46 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pktlen.i, align 4
  %last_txcmdsz.i = getelementptr inbounds %struct.xmit_frame, ptr %call5.i, i32 0, i32 1, i32 9
  %48 = ptrtoint ptr %last_txcmdsz.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %last_txcmdsz.i, align 4
  call void @dump_mgntframe(ptr noundef %7, ptr noundef nonnull %call5.i) #13
  br label %issue_p2p_presence_resp.exit

issue_p2p_presence_resp.exit:                     ; preds = %if.end7.i, %do.end4.i.issue_p2p_presence_resp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %noa_attr_content.i) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %p2pie.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %oui_subtype.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p2poui.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %category.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.addr.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dialogToken.addr.i)
  ret i8 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @p2p_protocol_wk_hdl(ptr noundef %padapter, i32 noundef %intCmdType) local_unnamed_addr #0 align 64 {
entry:
  %val8.i16 = alloca i8, align 1
  %val8.i12 = alloca i8, align 1
  %val8.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %intCmdType to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %intCmdType, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
    i32 3, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %p2p_state.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 17
  %1 = ptrtoint ptr %p2p_state.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %p2p_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp.not.i.i = icmp eq i32 %2, 5
  br i1 %cmp.not.i.i, label %sw.bb.find_phase_handler.exit_crit_edge, label %if.then.i.i

sw.bb.find_phase_handler.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_phase_handler.exit

if.then.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %p2p_state.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %p2p_state.i.i, align 4
  br label %find_phase_handler.exit

find_phase_handler.exit:                          ; preds = %if.then.i.i, %sw.bb.find_phase_handler.exit_crit_edge
  %mlmepriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv.i) #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv.i) #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %p2p_state.i.i9 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 17
  %4 = ptrtoint ptr %p2p_state.i.i9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p2p_state.i.i9, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %5, label %sw.bb1.if.end.i_crit_edge [
    i32 9, label %sw.bb1.if.then.i_crit_edge
    i32 11, label %sw.bb1.if.then.i_crit_edge21
  ]

sw.bb1.if.then.i_crit_edge21:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

sw.bb1.if.then.i_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

sw.bb1.if.end.i_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb1.if.then.i_crit_edge, %sw.bb1.if.then.i_crit_edge21
  %role1.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 15
  %7 = ptrtoint ptr %role1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %role1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not.i.i10 = icmp eq i32 %8, 1
  br i1 %cmp.not.i.i10, label %if.then.i.if.end.i_crit_edge, label %if.then.i.i11

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i.i11:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %role1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %role1.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i11, %if.then.i.if.end.i_crit_edge, %sw.bb1.if.end.i_crit_edge
  %pre_p2p_state.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 16
  %10 = ptrtoint ptr %pre_p2p_state.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pre_p2p_state.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %11)
  %cmp.not.i16.i = icmp eq i32 %5, %11
  br i1 %cmp.not.i16.i, label %if.end.i._rtw_p2p_set_state.exit.i_crit_edge, label %if.then.i17.i

if.end.i._rtw_p2p_set_state.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_state.exit.i

if.then.i17.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %p2p_state.i.i9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %p2p_state.i.i9, align 4
  br label %_rtw_p2p_set_state.exit.i

_rtw_p2p_set_state.exit.i:                        ; preds = %if.then.i17.i, %if.end.i._rtw_p2p_set_state.exit.i_crit_edge
  %role1.i18.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 15
  %13 = ptrtoint ptr %role1.i18.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %role1.i18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i19.i = icmp eq i32 %14, 1
  br i1 %cmp.i19.i, label %if.then4.i, label %_rtw_p2p_set_state.exit.i.sw.epilog_crit_edge

_rtw_p2p_set_state.exit.i.sw.epilog_crit_edge:    ; preds = %_rtw_p2p_set_state.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then4.i:                                       ; preds = %_rtw_p2p_set_state.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %listen_channel.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 21
  %15 = ptrtoint ptr %listen_channel.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %listen_channel.i, align 4
  tail call void @set_channel_bwmode(ptr noundef %padapter, i8 noundef zeroext %16, i8 noundef zeroext 0, i16 noundef zeroext 0) #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val8.i) #13
  %17 = ptrtoint ptr %val8.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %val8.i, align 1
  %peer_channel_num.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 6, i32 1
  %18 = ptrtoint ptr %peer_channel_num.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %peer_channel_num.i, align 2
  %conv.i = trunc i16 %19 to i8
  tail call void @set_channel_bwmode(ptr noundef %padapter, i8 noundef zeroext %conv.i, i8 noundef zeroext 0, i16 noundef zeroext 0) #13
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 12, ptr noundef nonnull %val8.i) #13
  call void @issue_probereq_p2p(ptr noundef %padapter, ptr noundef null) #13
  %pre_tx_scan_timer.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %20, 10
  %call.i.i = call i32 @mod_timer(ptr noundef %pre_tx_scan_timer.i, i32 noundef %add.i.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val8.i) #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val8.i12) #13
  %21 = ptrtoint ptr %val8.i12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %val8.i12, align 1
  %peer_ch.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 8, i32 7
  %22 = ptrtoint ptr %peer_ch.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %peer_ch.i, align 2
  tail call void @set_channel_bwmode(ptr noundef %padapter, i8 noundef zeroext %23, i8 noundef zeroext 0, i16 noundef zeroext 0) #13
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 12, ptr noundef nonnull %val8.i12) #13
  call void @issue_probereq_p2p(ptr noundef %padapter, ptr noundef null) #13
  %pre_tx_scan_timer.i13 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add.i.i14 = add i32 %24, 10
  %call.i.i15 = call i32 @mod_timer(ptr noundef %pre_tx_scan_timer.i13, i32 noundef %add.i.i14) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val8.i12) #13
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val8.i16) #13
  %25 = ptrtoint ptr %val8.i16 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %val8.i16, align 1
  %nego_req_info.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 11
  %26 = ptrtoint ptr %nego_req_info.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %nego_req_info.i, align 2
  %conv.i17 = trunc i16 %27 to i8
  tail call void @set_channel_bwmode(ptr noundef %padapter, i8 noundef zeroext %conv.i17, i8 noundef zeroext 0, i16 noundef zeroext 0) #13
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 12, ptr noundef nonnull %val8.i16) #13
  call void @issue_probereq_p2p(ptr noundef %padapter, ptr noundef null) #13
  %pre_tx_scan_timer.i18 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %add.i.i19 = add i32 %28, 10
  %call.i.i20 = call i32 @mod_timer(ptr noundef %pre_tx_scan_timer.i18, i32 noundef %add.i.i19) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val8.i16) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %if.then4.i, %_rtw_p2p_set_state.exit.i.sw.epilog_crit_edge, %find_phase_handler.exit, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @process_p2p_ps_ie(ptr noundef %padapter, ptr noundef %IEs, i32 noundef %IELength) local_unnamed_addr #0 align 64 {
entry:
  %p2p_ielen = alloca i32, align 4
  %noa_attr = alloca [256 x i8], align 1
  %attr_contentlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p2p_ielen) #13
  %0 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %p2p_ielen, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %noa_attr) #13
  %1 = call ptr @memset(ptr %noa_attr, i32 0, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr_contentlen) #13
  %2 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %attr_contentlen, align 4
  %p2p_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 17
  %3 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %IELength)
  %cmp = icmp ult i32 %IELength, 13
  %or.cond = or i1 %cmp, %cmp.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %IEs, i32 12
  %sub = add i32 %IELength, -12
  %call3 = call ptr @rtw_get_p2p_ie(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef null, ptr noundef nonnull %p2p_ielen) #13
  %tobool.not238 = icmp eq ptr %call3, null
  br i1 %tobool.not238, label %if.end2.cleanup_crit_edge, label %while.body.lr.ph

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end2
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.neg = add i32 %sub, %sub.ptr.rhs.cast
  br label %while.body

while.body:                                       ; preds = %if.end83.while.body_crit_edge, %while.body.lr.ph
  %p2p_ie.0239 = phi ptr [ %call3, %while.body.lr.ph ], [ %call87, %if.end83.while.body_crit_edge ]
  %5 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p2p_ielen, align 4
  %call4 = call ptr @rtw_get_p2p_attr_content(ptr noundef nonnull %p2p_ie.0239, i32 noundef %6, i8 noundef zeroext 12, ptr noundef nonnull %noa_attr, ptr noundef nonnull %attr_contentlen) #13
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end83, label %if.then6

if.then6:                                         ; preds = %while.body
  %7 = ptrtoint ptr %noa_attr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %noa_attr, align 1
  %p2p_ps_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 47
  %9 = ptrtoint ptr %p2p_ps_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %p2p_ps_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %if.then6.if.then12_crit_edge, label %lor.lhs.false

if.then6.if.then12_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.then6
  %noa_index8 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 49
  %11 = ptrtoint ptr %noa_index8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %noa_index8, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %12)
  %cmp10.not = icmp eq i8 %8, %12
  br i1 %cmp10.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.then6.if.then12_crit_edge
  %noa_index13 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 49
  %13 = ptrtoint ptr %noa_index13 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %8, ptr %noa_index13, align 4
  %arrayidx14 = getelementptr inbounds [256 x i8], ptr %noa_attr, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx14, align 1
  %16 = lshr i8 %15, 7
  %opp_ps = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 51
  %17 = ptrtoint ptr %opp_ps to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %opp_ps, align 2
  %18 = and i8 %15, 127
  %ctwindow = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 50
  %19 = ptrtoint ptr %ctwindow to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %ctwindow, align 1
  %20 = ptrtoint ptr %attr_contentlen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %attr_contentlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp20 = icmp ugt i32 %21, 2
  br i1 %cmp20, label %if.then12.while.body27_crit_edge, label %if.end54.thread

if.then12.while.body27_crit_edge:                 ; preds = %if.then12
  br label %while.body27

while.body27:                                     ; preds = %while.body27.while.body27_crit_edge, %if.then12.while.body27_crit_edge
  %conv24245 = phi i32 [ %conv24, %while.body27.while.body27_crit_edge ], [ 2, %if.then12.while.body27_crit_edge ]
  %noa_num.0244 = phi i8 [ %inc, %while.body27.while.body27_crit_edge ], [ 0, %if.then12.while.body27_crit_edge ]
  %noa_offset.0243 = phi i32 [ %add52, %while.body27.while.body27_crit_edge ], [ 2, %if.then12.while.body27_crit_edge ]
  %arrayidx28 = getelementptr [256 x i8], ptr %noa_attr, i32 0, i32 %conv24245
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx28, align 1
  %idxprom29 = zext i8 %noa_num.0244 to i32
  %arrayidx30 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 18, i32 53, i32 %idxprom29
  %24 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx30, align 1
  %conv32 = add nuw nsw i32 %noa_offset.0243, 1
  %arrayidx34 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 18, i32 54, i32 %idxprom29
  %idxprom35 = and i32 %conv32, 255
  %arrayidx36 = getelementptr [256 x i8], ptr %noa_attr, i32 0, i32 %idxprom35
  %25 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %arrayidx36, align 1
  %27 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx34, align 4
  %conv39 = add nuw nsw i32 %noa_offset.0243, 5
  %arrayidx41 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 18, i32 55, i32 %idxprom29
  %idxprom42 = and i32 %conv39, 255
  %arrayidx43 = getelementptr [256 x i8], ptr %noa_attr, i32 0, i32 %idxprom42
  %28 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %arrayidx43, align 1
  %30 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx41, align 4
  %conv46 = add nuw nsw i32 %noa_offset.0243, 9
  %arrayidx48 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 18, i32 56, i32 %idxprom29
  %idxprom49 = and i32 %conv46, 255
  %arrayidx50 = getelementptr [256 x i8], ptr %noa_attr, i32 0, i32 %idxprom49
  %31 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %arrayidx50, align 1
  %33 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx48, align 4
  %add52 = add nuw nsw i32 %idxprom49, 4
  %inc = add i8 %noa_num.0244, 1
  %conv24 = and i32 %add52, 255
  %cmp25 = icmp ult i32 %conv24, %21
  br i1 %cmp25, label %while.body27.while.body27_crit_edge, label %if.end54

while.body27.while.body27_crit_edge:              ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body27

if.end54:                                         ; preds = %while.body27
  %noa_num55 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 52
  %34 = ptrtoint ptr %noa_num55 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %inc, ptr %noa_num55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp58 = icmp eq i8 %16, 1
  br i1 %cmp58, label %if.end54.if.then60_crit_edge, label %if.else

if.end54.if.then60_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then60

if.end54.thread:                                  ; preds = %if.then12
  %noa_num55224 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 52
  %35 = ptrtoint ptr %noa_num55224 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %noa_num55224, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp58225 = icmp eq i8 %16, 1
  br i1 %cmp58225, label %if.end54.thread.if.then60_crit_edge, label %if.end54.thread.if.else73_crit_edge

if.end54.thread.if.else73_crit_edge:              ; preds = %if.end54.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else73

if.end54.thread.if.then60_crit_edge:              ; preds = %if.end54.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then60

if.then60:                                        ; preds = %if.end54.thread.if.then60_crit_edge, %if.end54.if.then60_crit_edge
  %36 = ptrtoint ptr %p2p_ps_mode to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %p2p_ps_mode, align 4
  %bFwCurrentInPSMode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 21
  %37 = ptrtoint ptr %bFwCurrentInPSMode to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bFwCurrentInPSMode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool62.not = icmp eq i8 %38, 0
  br i1 %tobool62.not, label %if.then60.cleanup_crit_edge, label %if.then63

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then63:                                        ; preds = %if.then60
  %cmdpriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %39 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i = icmp eq i32 %40, 0
  br i1 %cmp.i.i, label %if.then63.cleanup_crit_edge, label %if.end.i

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.then63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 2848, i32 noundef 32) #17
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i33.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 2848, i32 noundef 12) #17
  %tobool7.not.i = icmp eq ptr %call7.i.i33.i, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %call7.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 7, ptr %call7.i.i33.i, align 8
  %type_size.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i33.i, i32 0, i32 1
  %44 = ptrtoint ptr %type_size.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %type_size.i, align 4
  %pbuf.i = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i33.i, i32 0, i32 2
  %45 = ptrtoint ptr %pbuf.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %pbuf.i, align 8
  %list.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 7
  %46 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %list.i, ptr %prev.i.i, align 4
  %cmdcode.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %cmdcode.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 57, ptr %cmdcode.i, align 4
  %parmbuf.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %parmbuf.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i33.i, ptr %parmbuf.i, align 8
  %cmdsz.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %cmdsz.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 12, ptr %cmdsz.i, align 4
  %rsp.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 5
  %51 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %rsp.i, align 8
  %rspsz.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i, i32 0, i32 6
  %52 = ptrtoint ptr %rspsz.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %rspsz.i, align 4
  %call10.i = call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv.i, ptr noundef nonnull %call7.i.i.i) #13
  br label %cleanup

if.else:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc)
  %cmp68.not = icmp eq i8 %inc, 0
  br i1 %cmp68.not, label %if.else.if.else73_crit_edge, label %if.then70

if.else.if.else73_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else73

if.then70:                                        ; preds = %if.else
  %53 = ptrtoint ptr %p2p_ps_mode to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %p2p_ps_mode, align 4
  %cmdpriv.i151 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %54 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i.i153 = icmp eq i32 %55, 0
  br i1 %cmp.i.i153, label %if.then70.cleanup_crit_edge, label %if.end.i154

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i154:                                      ; preds = %if.then70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i155 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 2848, i32 noundef 32) #17
  %tobool3.not.i156 = icmp eq ptr %call7.i.i.i155, null
  br i1 %tobool3.not.i156, label %if.end.i154.cleanup_crit_edge, label %if.end5.i159

if.end.i154.cleanup_crit_edge:                    ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5.i159:                                     ; preds = %if.end.i154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i33.i157 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 2848, i32 noundef 12) #17
  %tobool7.not.i158 = icmp eq ptr %call7.i.i33.i157, null
  br i1 %tobool7.not.i158, label %if.then8.i160, label %if.end9.i172

if.then8.i160:                                    ; preds = %if.end5.i159
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i155) #13
  br label %cleanup

if.end9.i172:                                     ; preds = %if.end5.i159
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %call7.i.i33.i157 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 7, ptr %call7.i.i33.i157, align 8
  %type_size.i161 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i33.i157, i32 0, i32 1
  %59 = ptrtoint ptr %type_size.i161 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %type_size.i161, align 4
  %pbuf.i162 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i33.i157, i32 0, i32 2
  %60 = ptrtoint ptr %pbuf.i162 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %pbuf.i162, align 8
  %list.i163 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i155, i32 0, i32 7
  %61 = ptrtoint ptr %list.i163 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %list.i163, ptr %list.i163, align 8
  %prev.i.i164 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i155, i32 0, i32 7, i32 1
  %62 = ptrtoint ptr %prev.i.i164 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %list.i163, ptr %prev.i.i164, align 4
  %cmdcode.i165 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i155, i32 0, i32 1
  %63 = ptrtoint ptr %cmdcode.i165 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 57, ptr %cmdcode.i165, align 4
  %parmbuf.i166 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i155, i32 0, i32 3
  %64 = ptrtoint ptr %parmbuf.i166 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i33.i157, ptr %parmbuf.i166, align 8
  %cmdsz.i167 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i155, i32 0, i32 4
  %65 = ptrtoint ptr %cmdsz.i167 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 12, ptr %cmdsz.i167, align 4
  %rsp.i168 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i155, i32 0, i32 5
  %66 = ptrtoint ptr %rsp.i168 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %rsp.i168, align 8
  %rspsz.i169 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i155, i32 0, i32 6
  %67 = ptrtoint ptr %rspsz.i169 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %rspsz.i169, align 4
  %call10.i170 = call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv.i151, ptr noundef nonnull %call7.i.i.i155) #13
  br label %cleanup

if.else73:                                        ; preds = %if.else.if.else73_crit_edge, %if.end54.thread.if.else73_crit_edge
  br i1 %cmp7, label %if.else73.cleanup_crit_edge, label %if.then77

if.else73.cleanup_crit_edge:                      ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then77:                                        ; preds = %if.else73
  %cmdpriv.i175 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %68 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i.i177 = icmp eq i32 %69, 0
  br i1 %cmp.i.i177, label %if.then77.cleanup_crit_edge, label %if.end.i178

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i178:                                      ; preds = %if.then77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i179 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 2848, i32 noundef 32) #17
  %tobool3.not.i180 = icmp eq ptr %call7.i.i.i179, null
  br i1 %tobool3.not.i180, label %if.end.i178.cleanup_crit_edge, label %if.end5.i183

if.end.i178.cleanup_crit_edge:                    ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5.i183:                                     ; preds = %if.end.i178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %71 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i33.i181 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 2848, i32 noundef 12) #17
  %tobool7.not.i182 = icmp eq ptr %call7.i.i33.i181, null
  br i1 %tobool7.not.i182, label %if.then8.i184, label %if.end9.i196

if.then8.i184:                                    ; preds = %if.end5.i183
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i179) #13
  br label %cleanup

if.end9.i196:                                     ; preds = %if.end5.i183
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %call7.i.i33.i181 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 7, ptr %call7.i.i33.i181, align 8
  %type_size.i185 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i33.i181, i32 0, i32 1
  %73 = ptrtoint ptr %type_size.i185 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %type_size.i185, align 4
  %pbuf.i186 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i33.i181, i32 0, i32 2
  %74 = ptrtoint ptr %pbuf.i186 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %pbuf.i186, align 8
  %list.i187 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i179, i32 0, i32 7
  %75 = ptrtoint ptr %list.i187 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %list.i187, ptr %list.i187, align 8
  %prev.i.i188 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i179, i32 0, i32 7, i32 1
  %76 = ptrtoint ptr %prev.i.i188 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %list.i187, ptr %prev.i.i188, align 4
  %cmdcode.i189 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i179, i32 0, i32 1
  %77 = ptrtoint ptr %cmdcode.i189 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 57, ptr %cmdcode.i189, align 4
  %parmbuf.i190 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i179, i32 0, i32 3
  %78 = ptrtoint ptr %parmbuf.i190 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i.i33.i181, ptr %parmbuf.i190, align 8
  %cmdsz.i191 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i179, i32 0, i32 4
  %79 = ptrtoint ptr %cmdsz.i191 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 12, ptr %cmdsz.i191, align 4
  %rsp.i192 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i179, i32 0, i32 5
  %80 = ptrtoint ptr %rsp.i192 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %rsp.i192, align 8
  %rspsz.i193 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i179, i32 0, i32 6
  %81 = ptrtoint ptr %rspsz.i193 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %rspsz.i193, align 4
  %call10.i194 = call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv.i175, ptr noundef nonnull %call7.i.i.i179) #13
  br label %cleanup

if.end83:                                         ; preds = %while.body
  %82 = ptrtoint ptr %p2p_ielen to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %p2p_ielen, align 4
  %add.ptr84 = getelementptr i8, ptr %p2p_ie.0239, i32 %83
  %sub.ptr.lhs.cast = ptrtoint ptr %p2p_ie.0239 to i32
  %84 = add i32 %83, %sub.ptr.lhs.cast
  %sub86 = sub i32 %sub.ptr.sub.neg, %84
  %call87 = call ptr @rtw_get_p2p_ie(ptr noundef %add.ptr84, i32 noundef %sub86, ptr noundef null, ptr noundef nonnull %p2p_ielen) #13
  %tobool.not = icmp eq ptr %call87, null
  br i1 %tobool.not, label %while.end88, label %if.end83.while.body_crit_edge

if.end83.while.body_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end88:                                      ; preds = %if.end83
  br i1 %tobool.not238, label %while.end88.cleanup_crit_edge, label %if.then90

while.end88.cleanup_crit_edge:                    ; preds = %while.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then90:                                        ; preds = %while.end88
  %p2p_ps_mode91 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 47
  %85 = ptrtoint ptr %p2p_ps_mode91 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %p2p_ps_mode91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp92.not = icmp eq i32 %86, 0
  br i1 %cmp92.not, label %if.then90.cleanup_crit_edge, label %if.then95

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then95:                                        ; preds = %if.then90
  %cmdpriv.i199 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %87 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i.i201 = icmp eq i32 %88, 0
  br i1 %cmp.i.i201, label %if.then95.cleanup_crit_edge, label %if.end.i202

if.then95.cleanup_crit_edge:                      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i202:                                      ; preds = %if.then95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %89 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i203 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 2848, i32 noundef 32) #17
  %tobool3.not.i204 = icmp eq ptr %call7.i.i.i203, null
  br i1 %tobool3.not.i204, label %if.end.i202.cleanup_crit_edge, label %if.end5.i207

if.end.i202.cleanup_crit_edge:                    ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5.i207:                                     ; preds = %if.end.i202
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %90 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i33.i205 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %90, i32 noundef 2848, i32 noundef 12) #17
  %tobool7.not.i206 = icmp eq ptr %call7.i.i33.i205, null
  br i1 %tobool7.not.i206, label %if.then8.i208, label %if.end9.i220

if.then8.i208:                                    ; preds = %if.end5.i207
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i203) #13
  br label %cleanup

if.end9.i220:                                     ; preds = %if.end5.i207
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %call7.i.i33.i205 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 7, ptr %call7.i.i33.i205, align 8
  %type_size.i209 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i33.i205, i32 0, i32 1
  %92 = ptrtoint ptr %type_size.i209 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %type_size.i209, align 4
  %pbuf.i210 = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i33.i205, i32 0, i32 2
  %93 = ptrtoint ptr %pbuf.i210 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %pbuf.i210, align 8
  %list.i211 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i203, i32 0, i32 7
  %94 = ptrtoint ptr %list.i211 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %list.i211, ptr %list.i211, align 8
  %prev.i.i212 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i203, i32 0, i32 7, i32 1
  %95 = ptrtoint ptr %prev.i.i212 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %list.i211, ptr %prev.i.i212, align 4
  %cmdcode.i213 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i203, i32 0, i32 1
  %96 = ptrtoint ptr %cmdcode.i213 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 57, ptr %cmdcode.i213, align 4
  %parmbuf.i214 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i203, i32 0, i32 3
  %97 = ptrtoint ptr %parmbuf.i214 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call7.i.i33.i205, ptr %parmbuf.i214, align 8
  %cmdsz.i215 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i203, i32 0, i32 4
  %98 = ptrtoint ptr %cmdsz.i215 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 12, ptr %cmdsz.i215, align 4
  %rsp.i216 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i203, i32 0, i32 5
  %99 = ptrtoint ptr %rsp.i216 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %rsp.i216, align 8
  %rspsz.i217 = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i.i203, i32 0, i32 6
  %100 = ptrtoint ptr %rspsz.i217 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %rspsz.i217, align 4
  %call10.i218 = call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv.i199, ptr noundef nonnull %call7.i.i.i203) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i220, %if.then8.i208, %if.end.i202.cleanup_crit_edge, %if.then95.cleanup_crit_edge, %if.then90.cleanup_crit_edge, %while.end88.cleanup_crit_edge, %if.end9.i196, %if.then8.i184, %if.end.i178.cleanup_crit_edge, %if.then77.cleanup_crit_edge, %if.else73.cleanup_crit_edge, %if.end9.i172, %if.then8.i160, %if.end.i154.cleanup_crit_edge, %if.then70.cleanup_crit_edge, %if.end9.i, %if.then8.i, %if.end.i.cleanup_crit_edge, %if.then63.cleanup_crit_edge, %if.then60.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr_contentlen) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %noa_attr) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p2p_ielen) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @p2p_ps_wk_cmd(ptr noundef %padapter, i8 noundef zeroext %p2p_ps_state, i8 noundef zeroext %enqueue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %p2p_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 17
  %0 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enqueue)
  %tobool.not = icmp eq i8 %enqueue, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 32) #17
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then1.cleanup_crit_edge, label %if.end5

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.then1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i33 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2848, i32 noundef 12) #17
  %tobool7.not = icmp eq ptr %call7.i.i33, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %call7.i.i33 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 7, ptr %call7.i.i33, align 8
  %conv = zext i8 %p2p_ps_state to i32
  %type_size = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i33, i32 0, i32 1
  %5 = ptrtoint ptr %type_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %type_size, align 4
  %pbuf = getelementptr inbounds %struct.drvextra_cmd_parm, ptr %call7.i.i33, i32 0, i32 2
  %6 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pbuf, align 8
  %list = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i, align 4
  %cmdcode = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %cmdcode to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 57, ptr %cmdcode, align 4
  %parmbuf = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %parmbuf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i33, ptr %parmbuf, align 8
  %cmdsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %cmdsz to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 12, ptr %cmdsz, align 4
  %rsp = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rsp, align 8
  %rspsz = getelementptr inbounds %struct.cmd_obj, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %rspsz to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %rspsz, align 4
  %call10 = tail call i32 @rtw_enqueue_cmd(ptr noundef %cmdpriv, ptr noundef nonnull %call7.i.i) #13
  %conv11 = trunc i32 %call10 to i8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @p2p_ps_wk_hdl(ptr noundef %padapter, i8 noundef zeroext %p2p_ps_state)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end9, %if.then8, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %entry.cleanup_crit_edge ], [ %conv11, %if.end9 ], [ 0, %if.then8 ], [ 1, %if.else ], [ 0, %if.then1.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @p2p_ps_wk_hdl(ptr noundef %padapter, i8 noundef zeroext %p2p_ps_state) local_unnamed_addr #0 align 64 {
entry:
  %p2p_ps_state.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p2p_ps_state.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %p2p_ps_state, ptr %p2p_ps_state.addr, align 1
  %1 = zext i8 %p2p_ps_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %p2p_ps_state, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb10
    i8 2, label %entry.sw.bb40_crit_edge
    i8 3, label %entry.sw.bb40_crit_edge70
    i8 4, label %entry.sw.bb40_crit_edge71
  ]

entry.sw.bb40_crit_edge71:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb40

entry.sw.bb40_crit_edge70:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb40

entry.sw.bb40_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb40

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %p2p_ps_state2 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 48
  %2 = ptrtoint ptr %p2p_ps_state2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %p2p_ps_state2, align 4
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 39, ptr noundef nonnull %p2p_ps_state.addr) #13
  %noa_index = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 49
  %p2p_ps_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 47
  %3 = ptrtoint ptr %p2p_ps_mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %p2p_ps_mode, align 4
  %bFwCurrentInPSMode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 21
  %4 = ptrtoint ptr %noa_index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %noa_index, align 4
  %5 = ptrtoint ptr %bFwCurrentInPSMode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bFwCurrentInPSMode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %smart_ps = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 2
  %7 = ptrtoint ptr %smart_ps to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %smart_ps, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  br i1 %cmp, label %if.then6, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %smart_ps to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %smart_ps, align 1
  %pwr_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 1
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 36, ptr noundef %pwr_mode) #13
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %p2p_ps_mode11 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 47
  %10 = ptrtoint ptr %p2p_ps_mode11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p2p_ps_mode11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp12.not = icmp eq i32 %11, 0
  br i1 %cmp12.not, label %sw.bb10.sw.epilog_crit_edge, label %if.then14

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then14:                                        ; preds = %sw.bb10
  %p2p_ps_state16 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 48
  %12 = ptrtoint ptr %p2p_ps_state16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %p2p_ps_state16, align 4
  %ctwindow17 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 50
  %13 = ptrtoint ptr %ctwindow17 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctwindow17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp19.not = icmp eq i8 %14, 0
  br i1 %cmp19.not, label %if.then14.if.end38_crit_edge, label %if.then21

if.then14.if.end38_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then21:                                        ; preds = %if.then14
  %smart_ps22 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 2
  %15 = ptrtoint ptr %smart_ps22 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %smart_ps22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp24.not = icmp eq i8 %16, 0
  br i1 %cmp24.not, label %if.then21.if.end38_crit_edge, label %if.then26

if.then21.if.end38_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then26:                                        ; preds = %if.then21
  %17 = ptrtoint ptr %smart_ps22 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %smart_ps22, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %18 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp28 = icmp ugt i32 %18, 4
  br i1 %cmp28, label %do.end, label %if.then26.do.end34_crit_edge

if.then26.do.end34_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34

do.end:                                           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63) #16
  br label %do.end34

do.end34:                                         ; preds = %do.end, %if.then26.do.end34_crit_edge
  %pwr_mode36 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 1
  tail call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 36, ptr noundef %pwr_mode36) #13
  br label %if.end38

if.end38:                                         ; preds = %do.end34, %if.then21.if.end38_crit_edge, %if.then14.if.end38_crit_edge
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 39, ptr noundef nonnull %p2p_ps_state.addr) #13
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry.sw.bb40_crit_edge, %entry.sw.bb40_crit_edge70, %entry.sw.bb40_crit_edge71
  %p2p_ps_mode41 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 47
  %19 = ptrtoint ptr %p2p_ps_mode41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %p2p_ps_mode41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp42.not = icmp eq i32 %20, 0
  br i1 %cmp42.not, label %sw.bb40.sw.epilog_crit_edge, label %if.then44

sw.bb40.sw.epilog_crit_edge:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then44:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #15
  %conv45 = zext i8 %p2p_ps_state to i32
  %p2p_ps_state46 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 48
  %21 = ptrtoint ptr %p2p_ps_state46 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv45, ptr %p2p_ps_state46, align 4
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 39, ptr noundef nonnull %p2p_ps_state.addr) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then44, %sw.bb40.sw.epilog_crit_edge, %if.end38, %sw.bb10.sw.epilog_crit_edge, %if.then6, %if.then.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @SetHwReg8188EU(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_enqueue_cmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @reset_global_wifidirect_info(ptr nocapture noundef writeonly %padapter) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %persistent_supported = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 41
  %0 = ptrtoint ptr %persistent_supported to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %persistent_supported, align 1
  %session_available = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 42
  %1 = ptrtoint ptr %session_available to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %session_available, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_init_wifidirect_timers(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %find_phase_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 1
  tail call void @init_timer_key(ptr noundef %find_phase_timer, ptr noundef nonnull @find_phase_timer_process, i32 noundef 0, ptr noundef nonnull @.str.64, ptr noundef nonnull @rtw_init_wifidirect_timers.__key) #13
  %restore_p2p_state_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 2
  tail call void @init_timer_key(ptr noundef %restore_p2p_state_timer, ptr noundef nonnull @restore_p2p_state_timer_process, i32 noundef 0, ptr noundef nonnull @.str.66, ptr noundef nonnull @rtw_init_wifidirect_timers.__key.65) #13
  %pre_tx_scan_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 3
  tail call void @init_timer_key(ptr noundef %pre_tx_scan_timer, ptr noundef nonnull @pre_tx_scan_timer_process, i32 noundef 0, ptr noundef nonnull @.str.68, ptr noundef nonnull @rtw_init_wifidirect_timers.__key.67) #13
  %reset_ch_sitesurvey = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 4
  tail call void @init_timer_key(ptr noundef %reset_ch_sitesurvey, ptr noundef nonnull @reset_ch_sitesurvey_timer_process, i32 noundef 0, ptr noundef nonnull @.str.70, ptr noundef nonnull @rtw_init_wifidirect_timers.__key.69) #13
  %reset_ch_sitesurvey2 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 5
  tail call void @init_timer_key(ptr noundef %reset_ch_sitesurvey2, ptr noundef nonnull @reset_ch_sitesurvey_timer_process2, i32 noundef 0, ptr noundef nonnull @.str.72, ptr noundef nonnull @rtw_init_wifidirect_timers.__key.71) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @find_phase_timer_process(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p2p_state.i = getelementptr i8, ptr %t, i32 816
  %0 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %t, i32 -16876
  %find_phase_state_exchange_cnt = getelementptr i8, ptr %t, i32 903
  %2 = ptrtoint ptr %find_phase_state_exchange_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %find_phase_state_exchange_cnt, align 1
  %inc = add i8 %3, 1
  store i8 %inc, ptr %find_phase_state_exchange_cnt, align 1
  %call2 = tail call zeroext i8 @p2p_protocol_wk_cmd(ptr noundef %add.ptr, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @restore_p2p_state_timer_process(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p2p_state.i = getelementptr i8, ptr %t, i32 768
  %0 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %t, i32 -16924
  %call1 = tail call zeroext i8 @p2p_protocol_wk_cmd(ptr noundef %add.ptr, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pre_tx_scan_timer_process(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -16972
  %mlmepriv = getelementptr i8, ptr %t, i32 -16948
  %p2p_state.i = getelementptr i8, ptr %t, i32 720
  %0 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef %mlmepriv) #13
  %2 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p2p_state.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %3, label %do.body [
    i32 6, label %if.then2
    i32 9, label %if.then7
    i32 15, label %if.then15
  ]

if.then2:                                         ; preds = %if.end
  %benable = getelementptr i8, ptr %t, i32 200
  %5 = ptrtoint ptr %benable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %benable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then2.if.end32_crit_edge, label %if.then3

if.then2.if.end32_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then3:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call zeroext i8 @p2p_protocol_wk_cmd(ptr noundef %add.ptr, i32 noundef 2) #13
  br label %if.end32

if.then7:                                         ; preds = %if.end
  %benable8 = getelementptr i8, ptr %t, i32 664
  %7 = ptrtoint ptr %benable8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %benable8, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  br i1 %tobool9.not, label %if.then7.if.end32_crit_edge, label %if.then10

if.then7.if.end32_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = tail call zeroext i8 @p2p_protocol_wk_cmd(ptr noundef %add.ptr, i32 noundef 3) #13
  br label %if.end32

if.then15:                                        ; preds = %if.end
  %benable16 = getelementptr i8, ptr %t, i32 215
  %9 = ptrtoint ptr %benable16 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %benable16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool17.not = icmp eq i8 %10, 0
  br i1 %tobool17.not, label %if.then15.if.end32_crit_edge, label %if.then18

if.then15.if.end32_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = tail call zeroext i8 @p2p_protocol_wk_cmd(ptr noundef %add.ptr, i32 noundef 4) #13
  br label %if.end32

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %11 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp = icmp ugt i32 %11, 4
  br i1 %cmp, label %do.end, label %do.body.if.end32_crit_edge

do.body.if.end32_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, i32 noundef %3) #16
  br label %if.end32

if.end32:                                         ; preds = %do.end, %do.body.if.end32_crit_edge, %if.then18, %if.then15.if.end32_crit_edge, %if.then10, %if.then7.if.end32_crit_edge, %if.then3, %if.then2.if.end32_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mlmepriv) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @reset_ch_sitesurvey_timer_process(ptr nocapture noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p2p_state.i = getelementptr i8, ptr %t, i32 1552
  %0 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp ugt i32 %2, 4
  br i1 %cmp, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83) #16
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %rx_invitereq_info = getelementptr i8, ptr %t, i32 1536
  %operation_ch = getelementptr i8, ptr %t, i32 1537
  %3 = ptrtoint ptr %operation_ch to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %operation_ch, align 1
  %4 = ptrtoint ptr %rx_invitereq_info to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %rx_invitereq_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @reset_ch_sitesurvey_timer_process2(ptr nocapture noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p2p_state.i = getelementptr i8, ptr %t, i32 1552
  %0 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp ugt i32 %2, 4
  br i1 %cmp, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.84) #16
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %p2p_info = getelementptr i8, ptr %t, i32 1539
  %operation_ch = getelementptr i8, ptr %t, i32 1540
  %3 = ptrtoint ptr %operation_ch to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %operation_ch, align 1
  %4 = ptrtoint ptr %p2p_info to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %p2p_info, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_init_wifidirect_addrs(ptr nocapture noundef writeonly %padapter, ptr noundef readonly %dev_addr, ptr noundef readonly %iface_addr) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_addr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %device_addr = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 18
  %0 = call ptr @memcpy(ptr %device_addr, ptr %dev_addr, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %iface_addr, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %interface_addr = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 19
  %1 = call ptr @memcpy(ptr %interface_addr, ptr %iface_addr, i32 6)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @init_wifidirect_info(ptr noundef %padapter, i32 noundef %role) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wdinfo = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %wdinfo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %padapter, ptr %wdinfo, align 4
  %social_chan = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 20
  %1 = ptrtoint ptr %social_chan to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %social_chan, align 4
  %arrayidx3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 18, i32 20, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 6, ptr %arrayidx3, align 1
  %arrayidx5 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 18, i32 20, i32 2
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 11, ptr %arrayidx5, align 2
  %arrayidx7 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 18, i32 20, i32 3
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx7, align 1
  %listen_channel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 21
  %5 = ptrtoint ptr %listen_channel to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 11, ptr %listen_channel, align 4
  %6 = zext i32 %role to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %role, label %entry.if.end16_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then9
    i32 3, label %if.then13
  ]

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then:                                          ; preds = %entry
  %role1.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 15
  %7 = ptrtoint ptr %role1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %role1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 1
  br i1 %cmp.not.i, label %if.then._rtw_p2p_set_role.exit_crit_edge, label %if.then.i

if.then._rtw_p2p_set_role.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_role.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %role1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %role1.i, align 4
  br label %_rtw_p2p_set_role.exit

_rtw_p2p_set_role.exit:                           ; preds = %if.then.i, %if.then._rtw_p2p_set_role.exit_crit_edge
  %p2p_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 17
  %10 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.not.i119 = icmp eq i32 %11, 2
  br i1 %cmp.not.i119, label %_rtw_p2p_set_role.exit._rtw_p2p_set_state.exit_crit_edge, label %if.then.i120

_rtw_p2p_set_role.exit._rtw_p2p_set_state.exit_crit_edge: ; preds = %_rtw_p2p_set_role.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_state.exit

if.then.i120:                                     ; preds = %_rtw_p2p_set_role.exit
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %p2p_state.i, align 4
  br label %_rtw_p2p_set_state.exit

_rtw_p2p_set_state.exit:                          ; preds = %if.then.i120, %_rtw_p2p_set_role.exit._rtw_p2p_set_state.exit_crit_edge
  %intent = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 26
  %13 = ptrtoint ptr %intent to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %intent, align 2
  %pre_p2p_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 16
  %14 = ptrtoint ptr %pre_p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pre_p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i121 = icmp eq i32 %15, 2
  br i1 %cmp.not.i121, label %_rtw_p2p_set_state.exit.if.end16_crit_edge, label %if.then.i122

_rtw_p2p_set_state.exit.if.end16_crit_edge:       ; preds = %_rtw_p2p_set_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then.i122:                                     ; preds = %_rtw_p2p_set_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %pre_p2p_state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %pre_p2p_state.i, align 4
  br label %if.end16

if.then9:                                         ; preds = %entry
  %role1.i123 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 15
  %17 = ptrtoint ptr %role1.i123 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %role1.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.not.i124 = icmp eq i32 %18, 2
  br i1 %cmp.not.i124, label %if.then9._rtw_p2p_set_role.exit126_crit_edge, label %if.then.i125

if.then9._rtw_p2p_set_role.exit126_crit_edge:     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_role.exit126

if.then.i125:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %role1.i123 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %role1.i123, align 4
  br label %_rtw_p2p_set_role.exit126

_rtw_p2p_set_role.exit126:                        ; preds = %if.then.i125, %if.then9._rtw_p2p_set_role.exit126_crit_edge
  %p2p_state.i127 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 17
  %20 = ptrtoint ptr %p2p_state.i127 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %p2p_state.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %21)
  %cmp.not.i128 = icmp eq i32 %21, 10
  br i1 %cmp.not.i128, label %_rtw_p2p_set_role.exit126._rtw_p2p_set_state.exit130_crit_edge, label %if.then.i129

_rtw_p2p_set_role.exit126._rtw_p2p_set_state.exit130_crit_edge: ; preds = %_rtw_p2p_set_role.exit126
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_state.exit130

if.then.i129:                                     ; preds = %_rtw_p2p_set_role.exit126
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %p2p_state.i127 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 10, ptr %p2p_state.i127, align 4
  br label %_rtw_p2p_set_state.exit130

_rtw_p2p_set_state.exit130:                       ; preds = %if.then.i129, %_rtw_p2p_set_role.exit126._rtw_p2p_set_state.exit130_crit_edge
  %intent10 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 26
  %23 = ptrtoint ptr %intent10 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %intent10, align 2
  %pre_p2p_state.i131 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 16
  %24 = ptrtoint ptr %pre_p2p_state.i131 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pre_p2p_state.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %25)
  %cmp.not.i132 = icmp eq i32 %25, 10
  br i1 %cmp.not.i132, label %_rtw_p2p_set_state.exit130.if.end16_crit_edge, label %if.then.i133

_rtw_p2p_set_state.exit130.if.end16_crit_edge:    ; preds = %_rtw_p2p_set_state.exit130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then.i133:                                     ; preds = %_rtw_p2p_set_state.exit130
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %pre_p2p_state.i131 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 10, ptr %pre_p2p_state.i131, align 4
  br label %if.end16

if.then13:                                        ; preds = %entry
  %role1.i135 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 15
  %27 = ptrtoint ptr %role1.i135 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %role1.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp.not.i136 = icmp eq i32 %28, 3
  br i1 %cmp.not.i136, label %if.then13._rtw_p2p_set_role.exit138_crit_edge, label %if.then.i137

if.then13._rtw_p2p_set_role.exit138_crit_edge:    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_role.exit138

if.then.i137:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %role1.i135 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %role1.i135, align 4
  br label %_rtw_p2p_set_role.exit138

_rtw_p2p_set_role.exit138:                        ; preds = %if.then.i137, %if.then13._rtw_p2p_set_role.exit138_crit_edge
  %p2p_state.i139 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 17
  %30 = ptrtoint ptr %p2p_state.i139 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %p2p_state.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %31)
  %cmp.not.i140 = icmp eq i32 %31, 10
  br i1 %cmp.not.i140, label %_rtw_p2p_set_role.exit138._rtw_p2p_set_state.exit142_crit_edge, label %if.then.i141

_rtw_p2p_set_role.exit138._rtw_p2p_set_state.exit142_crit_edge: ; preds = %_rtw_p2p_set_role.exit138
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_state.exit142

if.then.i141:                                     ; preds = %_rtw_p2p_set_role.exit138
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %p2p_state.i139 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 10, ptr %p2p_state.i139, align 4
  br label %_rtw_p2p_set_state.exit142

_rtw_p2p_set_state.exit142:                       ; preds = %if.then.i141, %_rtw_p2p_set_role.exit138._rtw_p2p_set_state.exit142_crit_edge
  %intent14 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 26
  %33 = ptrtoint ptr %intent14 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 15, ptr %intent14, align 2
  %pre_p2p_state.i143 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 16
  %34 = ptrtoint ptr %pre_p2p_state.i143 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pre_p2p_state.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %35)
  %cmp.not.i144 = icmp eq i32 %35, 10
  br i1 %cmp.not.i144, label %_rtw_p2p_set_state.exit142.if.end16_crit_edge, label %if.then.i145

_rtw_p2p_set_state.exit142.if.end16_crit_edge:    ; preds = %_rtw_p2p_set_state.exit142
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then.i145:                                     ; preds = %_rtw_p2p_set_state.exit142
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %pre_p2p_state.i143 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 10, ptr %pre_p2p_state.i143, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then.i145, %_rtw_p2p_set_state.exit142.if.end16_crit_edge, %if.then.i133, %_rtw_p2p_set_state.exit130.if.end16_crit_edge, %if.then.i122, %_rtw_p2p_set_state.exit.if.end16_crit_edge, %entry.if.end16_crit_edge
  %support_rate = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 24
  %37 = ptrtoint ptr %support_rate to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -116, ptr %support_rate, align 1
  %arrayidx19 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 18, i32 24, i32 1
  %38 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -110, ptr %arrayidx19, align 1
  %arrayidx21 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 18, i32 24, i32 2
  %39 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 24, ptr %arrayidx21, align 1
  %arrayidx23 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 18, i32 24, i32 3
  %40 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 36, ptr %arrayidx23, align 1
  %arrayidx25 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 18, i32 24, i32 4
  %41 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 48, ptr %arrayidx25, align 1
  %arrayidx27 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 18, i32 24, i32 5
  %42 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 72, ptr %arrayidx27, align 1
  %arrayidx29 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 18, i32 24, i32 6
  %43 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 96, ptr %arrayidx29, align 1
  %arrayidx31 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 18, i32 24, i32 7
  %44 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 108, ptr %arrayidx31, align 1
  %p2p_wildcard_ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 25
  %45 = call ptr @memcpy(ptr %p2p_wildcard_ssid, ptr @.str.73, i32 7)
  %device_name = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 30
  %invitereq_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 8
  %46 = call ptr @memset(ptr %invitereq_info, i32 0, i32 49)
  %47 = call ptr @memset(ptr %device_name, i32 0, i32 33)
  %48 = ptrtoint ptr %invitereq_info to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 3, ptr %invitereq_info, align 2
  %profileindex = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 32
  %49 = ptrtoint ptr %profileindex to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %profileindex, align 1
  %profileinfo = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 9
  %find_phase_state_exchange_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 34
  %50 = ptrtoint ptr %find_phase_state_exchange_cnt to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %find_phase_state_exchange_cnt, align 1
  %51 = call ptr @memset(ptr %profileinfo, i32 0, i32 391)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %rem = urem i32 %52, 3
  %53 = trunc i32 %rem to i8
  %conv = add nuw nsw i8 %53, 1
  %listen_dwell = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 23
  %54 = ptrtoint ptr %listen_dwell to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv, ptr %listen_dwell, align 2
  %tx_prov_disc_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 6
  %nego_req_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 11
  %55 = call ptr @memset(ptr %nego_req_info, i32 0, i32 12)
  %device_password_id_for_nego = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 35
  %56 = call ptr @memset(ptr %tx_prov_disc_info, i32 0, i32 60)
  %57 = ptrtoint ptr %device_password_id_for_nego to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 4, ptr %device_password_id_for_nego, align 4
  %negotiation_dialog_token = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 36
  %58 = ptrtoint ptr %negotiation_dialog_token to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %negotiation_dialog_token, align 2
  %nego_ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 37
  %ui_got_wps_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 43
  %59 = ptrtoint ptr %ui_got_wps_info to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %ui_got_wps_info, align 4
  %supported_wps_cm = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 44
  %60 = call ptr @memset(ptr %nego_ssid, i32 0, i32 33)
  %61 = ptrtoint ptr %supported_wps_cm to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 392, ptr %supported_wps_cm, align 4
  %channel_list_attr_len = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 45
  %strconfig_method_desc_of_prov_disc_req = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 7, i32 1
  %62 = ptrtoint ptr %strconfig_method_desc_of_prov_disc_req to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 0, ptr %strconfig_method_desc_of_prov_disc_req, align 2
  %63 = call ptr @memset(ptr %channel_list_attr_len, i32 0, i32 104)
  %64 = call ptr @memset(ptr %strconfig_method_desc_of_prov_disc_req, i32 48, i32 3)
  %groupid_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 12
  %p2p_peer_interface_addr = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 27
  %65 = call ptr @memset(ptr %groupid_info, i32 0, i32 44)
  %66 = call ptr @memset(ptr %p2p_peer_interface_addr, i32 0, i32 12)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_p2p_enable(ptr noundef %padapter, i32 noundef %role) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %role to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %role, label %entry.exit_crit_edge [
    i32 1, label %entry.if.then_crit_edge
    i32 2, label %entry.if.then_crit_edge47
    i32 3, label %entry.if.then_crit_edge48
    i32 0, label %if.then7
  ]

entry.if.then_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge47:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge47, %entry.if.then_crit_edge48
  %call = tail call i32 @_rtw_pwr_wakeup(ptr noundef %padapter, i32 noundef 2000, ptr noundef nonnull @__func__.rtw_p2p_enable) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then.exit_crit_edge, label %if.end

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @update_tx_basic_rate(ptr noundef %padapter, i8 noundef zeroext 10) #13
  tail call void @init_wifidirect_info(ptr noundef %padapter, i32 noundef %role)
  br label %exit

if.then7:                                         ; preds = %entry
  %call8 = tail call i32 @_rtw_pwr_wakeup(ptr noundef %padapter, i32 noundef 2000, ptr noundef nonnull @__func__.rtw_p2p_enable) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then7.exit_crit_edge, label %if.end11

if.then7.exit_crit_edge:                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

if.end11:                                         ; preds = %if.then7
  %p2p_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 17
  %1 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %if.end11.if.end19_crit_edge, label %if.then13

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then13:                                        ; preds = %if.end11
  %find_phase_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 1
  %call.i = tail call i32 @del_timer_sync(ptr noundef %find_phase_timer) #13
  %restore_p2p_state_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 2
  %call.i40 = tail call i32 @del_timer_sync(ptr noundef %restore_p2p_state_timer) #13
  %pre_tx_scan_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 3
  %call.i41 = tail call i32 @del_timer_sync(ptr noundef %pre_tx_scan_timer) #13
  %reset_ch_sitesurvey = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 4
  %call.i42 = tail call i32 @del_timer_sync(ptr noundef %reset_ch_sitesurvey) #13
  %reset_ch_sitesurvey2 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 5
  %call.i43 = tail call i32 @del_timer_sync(ptr noundef %reset_ch_sitesurvey2) #13
  %3 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %if.then13._rtw_p2p_set_state.exit_crit_edge, label %if.then.i

if.then13._rtw_p2p_set_state.exit_crit_edge:      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_state.exit

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %p2p_state.i, align 4
  br label %_rtw_p2p_set_state.exit

_rtw_p2p_set_state.exit:                          ; preds = %if.then.i, %if.then13._rtw_p2p_set_state.exit_crit_edge
  %role1.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 15
  %6 = ptrtoint ptr %role1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %role1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i45 = icmp eq i32 %7, 0
  br i1 %cmp.not.i45, label %_rtw_p2p_set_state.exit._rtw_p2p_set_role.exit_crit_edge, label %if.then.i46

_rtw_p2p_set_state.exit._rtw_p2p_set_role.exit_crit_edge: ; preds = %_rtw_p2p_set_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %_rtw_p2p_set_role.exit

if.then.i46:                                      ; preds = %_rtw_p2p_set_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %role1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %role1.i, align 4
  br label %_rtw_p2p_set_role.exit

_rtw_p2p_set_role.exit:                           ; preds = %if.then.i46, %_rtw_p2p_set_state.exit._rtw_p2p_set_role.exit_crit_edge
  %rx_prov_disc_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 7
  %9 = call ptr @memset(ptr %rx_prov_disc_info, i32 0, i32 10)
  br label %if.end19

if.end19:                                         ; preds = %_rtw_p2p_set_role.exit, %if.end11.if.end19_crit_edge
  %wireless_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 7
  %10 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wireless_mode, align 2
  tail call void @update_tx_basic_rate(ptr noundef %padapter, i8 noundef zeroext %11) #13
  br label %exit

exit:                                             ; preds = %if.end19, %if.then7.exit_crit_edge, %if.end, %if.then.exit_crit_edge, %entry.exit_crit_edge
  %ret.0 = phi i32 [ 1, %if.end ], [ 1, %if.end19 ], [ 0, %if.then.exit_crit_edge ], [ 1, %entry.exit_crit_edge ], [ 0, %if.then7.exit_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_rtw_pwr_wakeup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_tx_basic_rate(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_mgtxmitframe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_mgntframe_attrib(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_set_fixed_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_mgntframe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_channel_bwmode(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @issue_probereq_p2p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @p2p_protocol_wk_cmd(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 830, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @process_assoc_req_p2p_ie._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @process_assoc_req_p2p_ie._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 833, i32 3}
!8 = !{ptr @process_assoc_req_p2p_ie._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @process_assoc_req_p2p_ie._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 839, i32 4}
!12 = !{ptr @process_assoc_req_p2p_ie._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @process_assoc_req_p2p_ie._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 848, i32 4}
!16 = !{ptr @process_assoc_req_p2p_ie._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @process_assoc_req_p2p_ie._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 992, i32 79}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 995, i32 79}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 998, i32 79}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1001, i32 79}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1007, i32 2}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @process_p2p_provdisc_req._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @process_p2p_provdisc_req._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1074, i32 82}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1086, i32 3}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @process_p2p_group_negotation_req._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @process_p2p_group_negotation_req._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @process_p2p_group_negotation_req._entry.21, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1104, i32 3}
!40 = !{ptr @process_p2p_group_negotation_req._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1122, i32 4}
!43 = !{ptr @process_p2p_group_negotation_req._entry.23, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @process_p2p_group_negotation_req._entry_ptr.25, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1160, i32 5}
!47 = !{ptr @process_p2p_group_negotation_req._entry.26, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @process_p2p_group_negotation_req._entry_ptr.28, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1181, i32 7}
!51 = !{ptr @process_p2p_group_negotation_req._entry.29, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @process_p2p_group_negotation_req._entry_ptr.31, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1185, i32 7}
!55 = !{ptr @process_p2p_group_negotation_req._entry.32, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @process_p2p_group_negotation_req._entry_ptr.34, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1213, i32 3}
!59 = !{ptr @process_p2p_group_negotation_resp._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @process_p2p_group_negotation_resp._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1236, i32 5}
!63 = !{ptr @process_p2p_group_negotation_resp._entry.36, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @process_p2p_group_negotation_resp._entry_ptr.38, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @process_p2p_group_negotation_resp._entry.39, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1262, i32 5}
!67 = !{ptr @process_p2p_group_negotation_resp._entry_ptr.40, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1300, i32 5}
!70 = !{ptr @process_p2p_group_negotation_resp._entry.41, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @process_p2p_group_negotation_resp._entry_ptr.43, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.45, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1306, i32 5}
!74 = !{ptr @process_p2p_group_negotation_resp._entry.44, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @process_p2p_group_negotation_resp._entry_ptr.46, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @process_p2p_group_negotation_resp._entry.47, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1312, i32 6}
!78 = !{ptr @process_p2p_group_negotation_resp._entry_ptr.48, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @process_p2p_group_negotation_resp._entry.49, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1333, i32 8}
!81 = !{ptr @process_p2p_group_negotation_resp._entry_ptr.50, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @process_p2p_group_negotation_resp._entry.51, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1337, i32 8}
!84 = !{ptr @process_p2p_group_negotation_resp._entry_ptr.52, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.54, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1342, i32 5}
!87 = !{ptr @process_p2p_group_negotation_resp._entry.53, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @process_p2p_group_negotation_resp._entry_ptr.55, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.56, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1379, i32 4}
!91 = !{ptr @process_p2p_group_negotation_confirm._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @process_p2p_group_negotation_confirm._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.58, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1413, i32 4}
!95 = !{ptr @process_p2p_group_negotation_confirm._entry.57, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @process_p2p_group_negotation_confirm._entry_ptr.59, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @process_p2p_group_negotation_confirm._entry.60, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1420, i32 4}
!99 = !{ptr @process_p2p_group_negotation_confirm._entry_ptr.61, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.62, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1658, i32 6}
!102 = !{ptr @.str.63, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @p2p_ps_wk_hdl._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @p2p_ps_wk_hdl._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @rtw_init_wifidirect_timers.__key, !106, !"__key", i1 false, i1 false}
!106 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1815, i32 2}
!107 = !{ptr @.str.64, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @rtw_init_wifidirect_timers.__key.65, !109, !"__key", i1 false, i1 false}
!109 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1816, i32 2}
!110 = !{ptr @.str.66, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @rtw_init_wifidirect_timers.__key.67, !112, !"__key", i1 false, i1 false}
!112 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1817, i32 2}
!113 = !{ptr @.str.68, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @rtw_init_wifidirect_timers.__key.69, !115, !"__key", i1 false, i1 false}
!115 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1818, i32 2}
!116 = !{ptr @.str.70, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @rtw_init_wifidirect_timers.__key.71, !118, !"__key", i1 false, i1 false}
!118 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1819, i32 2}
!119 = !{ptr @.str.72, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.73, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1876, i32 37}
!122 = !{ptr @__func__.rtw_p2p_enable, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1931, i32 16}
!124 = !{ptr @.str.74, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 33, i32 2}
!126 = !{ptr @.str.75, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @go_add_group_info_attr._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @go_add_group_info_attr._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.76, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 126, i32 2}
!131 = !{ptr @.str.77, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @issue_group_disc_req._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @issue_group_disc_req._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.78, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 185, i32 2}
!136 = !{ptr @issue_p2p_devdisc_resp._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @issue_p2p_devdisc_resp._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.79, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 332, i32 2}
!140 = !{ptr @issue_p2p_presence_resp._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @issue_p2p_presence_resp._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.80, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1783, i32 3}
!144 = !{ptr @.str.81, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @pre_tx_scan_timer_process._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @pre_tx_scan_timer_process._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.82, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1728, i32 2}
!149 = !{ptr @.str.83, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @reset_ch_sitesurvey_timer_process._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @reset_ch_sitesurvey_timer_process._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.84, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/staging/r8188eu/core/rtw_p2p.c", i32 1742, i32 2}
!154 = !{ptr @reset_ch_sitesurvey_timer_process2._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @reset_ch_sitesurvey_timer_process2._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{!"auto-init"}
