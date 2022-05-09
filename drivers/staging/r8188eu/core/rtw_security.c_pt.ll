; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/core/rtw_security.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/core/rtw_security.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%union.anon.122 = type { i32 }
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
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.br_ext_info = type { i32, i32, i32, i32, [6 x i8], i32 }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%struct.recv_frame = type { %struct.list_head, ptr, ptr, ptr, i8, i32, %struct.rx_pkt_attrib, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rx_pkt_attrib = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, [2 x i32], %struct.phy_info }
%struct.phy_info = type { i8, i8, [3 x i8], [3 x i8], i8, i8, i8, [3 x i8], [3 x i8] }
%struct.mic_data = type { i32, i32, i32, i32, i32, i32 }
%union.anon.123 = type { i32 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [6 x i8], i8, i16, [8 x i8], i8, [32 x i8], i16, [32 x i8], i8, i8, %struct.rssi_sta, i8, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }

@rtw_tkip_decrypt.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8188eu\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtw_tkip_decrypt\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/staging/r8188eu/core/rtw_security.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"rx bc/mc packets, but didn't install group key!\0A\00", [47 x i8] zeroinitializer }, align 32
@rtw_aes_decrypt.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 1, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw_aes_decrypt\00", [16 x i8] zeroinitializer }, align 32
@rtw_aes_decrypt.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 1, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"not match packet_index=%d, install_index=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@Te0 = dso_local constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 -966564955, i32 -126059388, i32 -294160487, i32 -159679603, i32 -855539, i32 -697603139, i32 -563122255, i32 -1849309868, i32 1613770832, i32 33620227, i32 -832084055, i32 1445669757, i32 -402719207, i32 -1244145822, i32 1303096294, i32 -327780710, i32 -1882535355, i32 528646813, i32 -1983264448, i32 -92439161, i32 -268764651, i32 -1302767125, i32 -1907931191, i32 -68095989, i32 1101901292, i32 -1277897625, i32 1604494077, i32 1169141738, i32 597466303, i32 1403299063, i32 -462261610, i32 -1681866661, i32 1974974402, i32 -503448292, i32 1033081774, i32 1277568618, i32 1815492186, i32 2118074177, i32 -168298750, i32 -2083730353, i32 1748251740, i32 1369810420, i32 -773462732, i32 -101584632, i32 -495881837, i32 -1411852173, i32 1647391059, i32 706024767, i32 134480908, i32 -1782069422, i32 1176707941, i32 -1648114850, i32 806885416, i32 932615841, i32 168101135, i32 798661301, i32 235341577, i32 605164086, i32 461406363, i32 -538779075, i32 -840176858, i32 1311188841, i32 2142417613, i32 -361400929, i32 302582043, i32 495158174, i32 1479289972, i32 874125870, i32 907746093, i32 -596742478, i32 -1269146898, i32 1537253627, i32 -1538108682, i32 1983593293, i32 -1210657183, i32 2108928974, i32 1378429307, i32 -572267714, i32 1580150641, i32 327451799, i32 -1504488459, i32 -1177431704, i32 0, i32 -1041371860, i32 1075847264, i32 -469959649, i32 2041688520, i32 -1235526675, i32 -731223362, i32 -1916023994, i32 1740553945, i32 1916352843, i32 -1807070498, i32 -1739830060, i32 -1336387352, i32 -2049978550, i32 -1143943061, i32 -974131414, i32 1336584933, i32 -302253290, i32 -2042412091, i32 -1706209833, i32 1714631509, i32 293963156, i32 -1975171633, i32 -369493744, i32 67240454, i32 -25198719, i32 -1605349136, i32 2017213508, i32 631218106, i32 1269344483, i32 -1571728909, i32 1571005438, i32 -2143272768, i32 93294474, i32 1066570413, i32 563977660, i32 1882732616, i32 -235539196, i32 1673313503, i32 2008463041, i32 -1344611723, i32 1109467491, i32 537923632, i32 -436207846, i32 -34344178, i32 -1076702611, i32 -2117218996, i32 403442708, i32 638784309, i32 -1007883217, i32 -1101045791, i32 899127202, i32 -2008791860, i32 773265209, i32 -1815821225, i32 1437050866, i32 -58818942, i32 2050833735, i32 -932944724, i32 -1168286233, i32 840505643, i32 -428641387, i32 -1067425632, i32 427917720, i32 -1638969391, i32 -1545806721, i32 1143087718, i32 1412049534, i32 999329963, i32 193497219, i32 -1941551414, i32 -940642775, i32 1807268051, i32 672404540, i32 -1478566279, i32 -1134666014, i32 369822493, i32 -1378100362, i32 -606019525, i32 1681011286, i32 1949973070, i32 336202270, i32 -1840690725, i32 201721354, i32 1210328172, i32 -1201906460, i32 -1614626211, i32 -1110191250, i32 1135389935, i32 -1000185178, i32 965841320, i32 831886756, i32 -739974089, i32 -226920053, i32 -706222286, i32 -1949775805, i32 1849112409, i32 -630362697, i32 26054028, i32 -1311386268, i32 -1672589614, i32 1235855840, i32 -663982924, i32 -1403627782, i32 -202050553, i32 -806688219, i32 -899324497, i32 -193299826, i32 1202630377, i32 268961816, i32 1874508501, i32 -260540280, i32 1243948399, i32 1546530418, i32 941366308, i32 1470539505, i32 1941222599, i32 -1748580783, i32 -873928669, i32 -1579295364, i32 -395021156, i32 1042226977, i32 -1773450275, i32 1639824860, i32 227249030, i32 260737669, i32 -529502064, i32 2084453954, i32 1907733956, i32 -865704278, i32 -1874310952, i32 100860677, i32 -134810111, i32 470683154, i32 -1033805405, i32 1781871967, i32 -1370007559, i32 1773779408, i32 394692241, i32 -1715355304, i32 974986535, i32 664706745, i32 -639508168, i32 -336005101, i32 731420851, i32 571543859, i32 -764843589, i32 -1445340816, i32 126783113, i32 865375399, i32 765172662, i32 1008606754, i32 361203602, i32 -907417312, i32 -2016489911, i32 -1437248001, i32 1344809080, i32 -1512054918, i32 59542671, i32 1503764984, i32 160008576, i32 437062935, i32 1707065306, i32 -672733647, i32 -2076032314, i32 -798463816, i32 -2109652541, i32 697932208, i32 1512910199, i32 504303377, i32 2075177163, i32 -1470868228, i32 1841019862, i32 739644986], [256 x i8] zeroinitializer }, align 32
@Td0 = dso_local constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 1374988112, i32 2118214995, i32 437757123, i32 975658646, i32 1001089995, i32 530400753, i32 -1392879445, i32 1273168787, i32 540080725, i32 -1384747530, i32 -1999866223, i32 -184398811, i32 1340463100, i32 -987051049, i32 641025152, i32 -1251826801, i32 -558802359, i32 632953703, i32 1172967064, i32 1576976609, i32 -1020300030, i32 -2125664238, i32 -1924753501, i32 1809054150, i32 59727847, i32 361929877, i32 -1083344149, i32 -1789765158, i32 -725712083, i32 1484005843, i32 1239443753, i32 -1899378620, i32 1975683434, i32 -191989384, i32 -1722270101, i32 666464733, i32 -1092530250, i32 -259478249, i32 -920605594, i32 2110667444, i32 1675577880, i32 -451268222, i32 -1756286112, i32 1649639237, i32 -1318815776, i32 -1150570876, i32 -25059300, i32 -116905068, i32 1883793496, i32 -1891238631, i32 -1797362553, i32 1383856311, i32 -1418472669, i32 1917518562, i32 -484470953, i32 1716890410, i32 -1293211641, i32 800440835, i32 -2033878118, i32 -751368027, i32 807962610, i32 599762354, i32 33778362, i32 -317291940, i32 -1966138325, i32 -1485196142, i32 -217582864, i32 1315562145, i32 1708848333, i32 101039829, i32 -785096161, i32 -995688822, i32 875451293, i32 -1561111136, i32 92987698, i32 -1527321739, i32 193195065, i32 1080094634, i32 1584504582, i32 -1116860335, i32 1042385657, i32 -1763899843, i32 -583137874, i32 1306967366, i32 -1856729675, i32 1908694277, i32 67556463, i32 1615861247, i32 429456164, i32 -692196969, i32 -1992277044, i32 1742315127, i32 -1326955843, i32 126454664, i32 -417768648, i32 2043211483, i32 -1585706425, i32 2084704233, i32 -125559095, i32 0, i32 159417987, i32 841739592, i32 504459436, i32 1817866830, i32 -49348613, i32 260388950, i32 1034867998, i32 908933415, i32 168810852, i32 1750902305, i32 -1688513327, i32 607530554, i32 202008497, i32 -1822955761, i32 -1259432238, i32 463180190, i32 -2134850225, i32 1641816226, i32 1517767529, i32 470948374, i32 -493635062, i32 -1063245083, i32 1008918595, i32 303765277, i32 235474187, i32 -225720403, i32 766945465, i32 337553864, i32 1475418501, i32 -1351284916, i32 -291906117, i32 -1551933187, i32 -150919521, i32 1551037884, i32 1147550661, i32 1543208500, i32 -1958532746, i32 -886847780, i32 -1225917336, i32 -1192955549, i32 -684598070, i32 1113818384, i32 328671808, i32 -2067394272, i32 -2058738563, i32 -759480840, i32 -1359400431, i32 -953573011, i32 496906059, i32 -592301837, i32 226906860, i32 2009195472, i32 733156972, i32 -1452230247, i32 294930682, i32 1206477858, i32 -1459843900, i32 -1594867942, i32 1451044056, i32 573804783, i32 -2025238841, i32 -650587711, i32 -1932877058, i32 -1730933962, i32 -1493859889, i32 -1518674392, i32 -625504730, i32 1068351396, i32 742039012, i32 1350078989, i32 1784663195, i32 1417561698, i32 -158526526, i32 -1864845080, i32 775550814, i32 -2101104651, i32 -1621262146, i32 1775276924, i32 1876241833, i32 -819653965, i32 -928212677, i32 270040487, i32 -392404114, i32 -616842373, i32 -853116919, i32 1851332852, i32 -325404927, i32 -2091935064, i32 -426414491, i32 -1426069890, i32 566021896, i32 -283776794, i32 -1159226407, i32 1248802510, i32 -358676012, i32 699432150, i32 832877231, i32 708780849, i32 -962227152, i32 899835584, i32 1951317047, i32 -58537306, i32 -527380304, i32 866637845, i32 -251357110, i32 1106041591, i32 2144161806, i32 395441711, i32 1984812685, i32 1139781709, i32 -861254316, i32 -459930401, i32 -1630423581, i32 1282050075, i32 -1054072904, i32 1181045119, i32 -1654724092, i32 25965917, i32 -91786125, i32 -83148498, i32 -1285087910, i32 -1831087534, i32 -384805325, i32 1842759443, i32 -1697160820, i32 933301370, i32 1509430414, i32 -351060855, i32 -827774994, i32 -1218328267, i32 -518199827, i32 2051518780, i32 -1663901863, i32 1441952575, i32 404016761, i32 1942435775, i32 1408749034, i32 1610459739, i32 -549621996, i32 2017778566, i32 -894438527, i32 -1184316354, i32 941896748, i32 -1029488545, i32 371049330, i32 -1126030068, i32 675039627, i32 -15887039, i32 967311729, i32 135050206, i32 -659233636, i32 1683407248, i32 2076935265, i32 -718096784, i32 1215061108, i32 -793225406], [256 x i8] zeroinitializer }, align 32
@Td4s = dso_local constant { [256 x i8], [64 x i8] } { [256 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CBT{\942\A6\C2#=\EEL\95\0BB\FA\C3N\08.\A1f(\D9$\B2v[\A2Im\8B\D1%r\F8\F6d\86h\98\16\D4\A4\\\CC]e\B6\92lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak:\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFnG\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a\17+\04~\BAw\D6&\E1i\14cU!\0C}", [64 x i8] zeroinitializer }, align 32
@rcons = dso_local constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01\02\04\08\10 @\80\1B6", [22 x i8] zeroinitializer }, align 32
@Sbox1 = internal constant { [2 x [256 x i16]], [256 x i8] } { [2 x [256 x i16]] [[256 x i16] [i16 -14683, i16 -1916, i16 -4455, i16 -2419, i16 -243, i16 -10563, i16 -8527, i16 -28332, i16 24656, i16 515, i16 -12631, i16 22141, i16 -6375, i16 -19102, i16 19942, i16 -4966, i16 -28859, i16 8093, i16 -30400, i16 -1401, i16 -4331, i16 -19733, i16 -28983, i16 -1269, i16 16876, i16 -19609, i16 24573, i16 17898, i16 9151, i16 21495, i16 -7018, i16 -25765, i16 30146, i16 -7908, i16 15790, i16 19562, i16 27738, i16 32321, i16 -2814, i16 -31921, i16 26716, i16 20980, i16 -11980, i16 -1784, i16 -7533, i16 -21645, i16 25171, i16 10815, i16 2060, i16 -27310, i16 18021, i16 -25250, i16 12328, i16 14241, i16 2575, i16 12213, i16 3593, i16 9270, i16 7067, i16 -8387, i16 -13018, i16 20073, i16 32717, i16 -5473, i16 4635, i16 7582, i16 22644, i16 13358, i16 13869, i16 -9038, i16 -19218, i16 23547, i16 -23306, i16 30285, i16 -18591, i16 32206, i16 21115, i16 -8898, i16 24177, i16 5015, i16 -22795, i16 -18072, i16 0, i16 -16084, i16 16480, i16 -7393, i16 31176, i16 -18707, i16 -11074, i16 -29370, i16 26585, i16 29259, i16 -27426, i16 -26412, i16 -20248, i16 -31414, i16 -17557, i16 -15062, i16 20453, i16 -4842, i16 -31035, i16 -25897, i16 26197, i16 4500, i16 -30001, i16 -5872, i16 1030, i16 -383, i16 -24336, i16 30788, i16 9658, i16 19427, i16 -23821, i16 24062, i16 -32576, i16 1418, i16 16301, i16 8636, i16 28744, i16 -3836, i16 25567, i16 30657, i16 -20619, i16 16995, i16 8240, i16 -6886, i16 -754, i16 -16531, i16 -32436, i16 6164, i16 9781, i16 -15569, i16 -16671, i16 13730, i16 -30516, i16 11833, i16 -27817, i16 22002, i16 -894, i16 31303, i16 -14164, i16 -17689, i16 12843, i16 -6507, i16 -16224, i16 6552, i16 -24879, i16 -23681, i16 17510, i16 21630, i16 15275, i16 2947, i16 -29494, i16 -14551, i16 27603, i16 10300, i16 -22663, i16 -17182, i16 5661, i16 -21130, i16 -9413, i16 25686, i16 29774, i16 5150, i16 -27941, i16 3082, i16 18540, i16 -18204, i16 -24739, i16 -17042, i16 17391, i16 -15194, i16 14760, i16 12708, i16 -11465, i16 -3445, i16 -10958, i16 -29885, i16 28249, i16 -9545, i16 396, i16 -20124, i16 -25390, i16 18912, i16 -10060, i16 -21254, i16 -3321, i16 -12507, i16 -13649, i16 -2930, i16 18409, i16 4120, i16 28629, i16 -3960, i16 19055, i16 23666, i16 14372, i16 22513, i16 29639, i16 -26799, i16 -13533, i16 -24196, i16 -5988, i16 15905, i16 -26915, i16 25052, i16 3462, i16 3973, i16 -8048, i16 31810, i16 29124, i16 -13142, i16 -28456, i16 1541, i16 -2303, i16 7186, i16 -15709, i16 27231, i16 -20743, i16 27088, i16 6033, i16 -26280, i16 14887, i16 10169, i16 -9928, i16 -5357, i16 11187, i16 8755, i16 -11589, i16 -22160, i16 1929, i16 13223, i16 11702, i16 15394, i16 5522, i16 -14048, i16 -30903, i16 -21761, i16 20600, i16 -23174, i16 911, i16 23032, i16 2432, i16 6679, i16 26074, i16 -10447, i16 -31546, i16 -12104, i16 -32061, i16 10672, i16 23159, i16 7697, i16 31691, i16 -22276, i16 28118, i16 11322], [256 x i16] [i16 -23098, i16 -31496, i16 -26130, i16 -29194, i16 3583, i16 -16938, i16 -20002, i16 21649, i16 20576, i16 770, i16 -22066, i16 32086, i16 6631, i16 25269, i16 -6579, i16 -25876, i16 17807, i16 -25313, i16 16521, i16 -30726, i16 5615, i16 -5198, i16 -13938, i16 3067, i16 -5055, i16 26547, i16 -673, i16 -5563, i16 -16605, i16 -2221, i16 -26908, i16 23451, i16 -15755, i16 7393, i16 -20931, i16 27212, i16 23148, i16 16766, i16 757, i16 20355, i16 23656, i16 -2991, i16 13521, i16 2297, i16 -27678, i16 29611, i16 21346, i16 16170, i16 3080, i16 21141, i16 25926, i16 24221, i16 10288, i16 -24265, i16 3850, i16 -19153, i16 2318, i16 13860, i16 -25829, i16 15839, i16 9933, i16 26958, i16 -12929, i16 -24598, i16 6930, i16 -25059, i16 29784, i16 11828, i16 11574, i16 -19748, i16 -4428, i16 -1189, i16 -2396, i16 19830, i16 25015, i16 -12675, i16 31570, i16 16093, i16 29022, i16 -26861, i16 -2650, i16 26809, i16 0, i16 11457, i16 24640, i16 8163, i16 -14215, i16 -4682, i16 -16684, i16 18061, i16 -9881, i16 19314, i16 -8556, i16 -11112, i16 -5968, i16 19077, i16 27579, i16 10949, i16 -6833, i16 5869, i16 -14970, i16 -10342, i16 21862, i16 -27631, i16 -12406, i16 4329, i16 1540, i16 -32258, i16 -3936, i16 17528, i16 -17883, i16 -7349, i16 -3166, i16 -419, i16 -16256, i16 -30203, i16 -21185, i16 -17375, i16 18544, i16 1265, i16 -8349, i16 -16009, i16 30127, i16 25410, i16 12320, i16 6885, i16 3837, i16 28095, i16 19585, i16 5144, i16 13606, i16 12227, i16 -7746, i16 -24011, i16 -13176, i16 14638, i16 22419, i16 -3499, i16 -32004, i16 18298, i16 -21304, i16 -6214, i16 11058, i16 -27162, i16 -24384, i16 -26599, i16 -11874, i16 32675, i16 26180, i16 32340, i16 -21701, i16 -31989, i16 -13684, i16 10695, i16 -11413, i16 15400, i16 31143, i16 -7492, i16 7446, i16 30381, i16 15323, i16 22116, i16 20084, i16 7700, i16 -9326, i16 2572, i16 27720, i16 -6984, i16 23967, i16 28349, i16 -4285, i16 -22844, i16 -22471, i16 -23503, i16 14291, i16 -29710, i16 13013, i16 17291, i16 22894, i16 -18470, i16 -29695, i16 25777, i16 -11620, i16 -8119, i16 -19240, i16 -1364, i16 2035, i16 9679, i16 -20534, i16 -28940, i16 -5817, i16 6160, i16 -10897, i16 -30480, i16 28490, i16 29276, i16 9272, i16 -3753, i16 -14477, i16 20887, i16 9163, i16 31905, i16 -25368, i16 8510, i16 -8810, i16 -9119, i16 -31219, i16 -31473, i16 -28448, i16 17020, i16 -15247, i16 -21812, i16 -10096, i16 1286, i16 503, i16 4636, i16 -23614, i16 24426, i16 -1618, i16 -12183, i16 -28393, i16 22681, i16 10042, i16 -18137, i16 14553, i16 5099, i16 -19669, i16 13090, i16 -17454, i16 28841, i16 -30457, i16 -22733, i16 -18899, i16 8764, i16 -28139, i16 8393, i16 18823, i16 -86, i16 30800, i16 31397, i16 -28925, i16 -1959, i16 -32759, i16 5914, i16 -9627, i16 12759, i16 -14716, i16 -18224, i16 -15486, i16 -20439, i16 30554, i16 4382, i16 -13445, i16 -856, i16 -10643, i16 14892]], [256 x i8] zeroinitializer }, align 32
@__const.next_key.rcon_table = private unnamed_addr constant [12 x i8] c"\01\02\04\08\10 @\80\1B666", align 1
@sbox_table = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\\\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", [64 x i8] zeroinitializer }, align 32
@aes_decipher.message = internal global { [2048 x i8], [512 x i8] } zeroinitializer, align 32
@aes_decipher.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 1, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aes_decipher\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"mic check error mic[%d]: pframe(%x)!=message(%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 5]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 5]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 10]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 548, i32 6 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1364, i32 6 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1370, i32 6 }
@___asan_gen_.28 = private unnamed_addr constant [4 x i8] c"Te0\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1392, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [4 x i8] c"Td0\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1459, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [5 x i8] c"Td4s\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1526, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"rcons\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1560, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"Sbox1\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 258, i32 29 }
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"sbox_table\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 597, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1152, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [47 x i8] c"../drivers/staging/r8188eu/core/rtw_security.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1333, i32 4 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @Te0, ptr @Td0, ptr @Td4s, ptr @rcons, ptr @Sbox1, ptr @sbox_table, ptr @aes_decipher.message, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Te0 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Td0 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Td4s to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcons to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Sbox1 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbox_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_decipher.message to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_wep_encrypt(ptr noundef %padapter, ptr nocapture noundef readonly %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  %crc = alloca %union.anon.122, align 4
  %wepkey = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc) #10
  %0 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %crc, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wepkey) #10
  %1 = getelementptr inbounds [16 x i8], ptr %wepkey, i32 0, i32 3
  %xmit_arc4_ctx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 12
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 5
  %2 = call ptr @memset(ptr %wepkey, i32 255, i32 16)
  %3 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf_addr, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %encrypt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 11
  %5 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %encrypt, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %if.end.cleanup_crit_edge [
    i8 1, label %if.end.if.then10_crit_edge
    i8 5, label %if.end.if.then10_crit_edge135
  ]

if.end.if.then10_crit_edge135:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end.if.then10_crit_edge, %if.end.if.then10_crit_edge135
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
  %cmp12131.not = icmp eq i8 %13, 0
  br i1 %cmp12131.not, label %if.then10.cleanup_crit_edge, label %for.body.lr.ph

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then10
  %conv11130 = zext i8 %13 to i32
  %pkt_offset = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 8
  %14 = ptrtoint ptr %pkt_offset to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pkt_offset, align 1
  %mul = shl i8 %15, 3
  %add = add i8 %mul, 32
  %conv3 = zext i8 %add to i32
  %add.ptr = getelementptr i8, ptr %4, i32 %conv3
  %hdrlen = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 7
  %iv_len = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 12
  %frag_len = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 11
  %icv_len49 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 13
  %add55 = add i32 %11, 3
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv11134 = phi i32 [ %conv11130, %for.body.lr.ph ], [ %conv11, %for.inc.for.body_crit_edge ]
  %pframe.0133 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %pframe.1, %for.inc.for.body_crit_edge ]
  %curfragnum.0132 = phi i32 [ 0, %for.body.lr.ph ], [ %add26, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hdrlen, align 2
  %conv14 = zext i16 %17 to i32
  %add.ptr15 = getelementptr i8, ptr %pframe.0133, i32 %conv14
  %18 = call ptr @memcpy(ptr %wepkey, ptr %add.ptr15, i32 3)
  %19 = ptrtoint ptr %dot11PrivacyKeyIndex to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dot11PrivacyKeyIndex, align 8
  %arrayidx19 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 3, i32 %20
  %21 = call ptr @memcpy(ptr %1, ptr %arrayidx19, i32 %11)
  %22 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %iv_len, align 2
  %conv21 = zext i8 %23 to i32
  %add.ptr22 = getelementptr i8, ptr %pframe.0133, i32 %conv21
  %add.ptr25 = getelementptr i8, ptr %add.ptr22, i32 %conv14
  %add26 = add nuw nsw i32 %curfragnum.0132, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %conv11134)
  %cmp29 = icmp eq i32 %add26, %conv11134
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %last_txcmdsz, align 4
  %26 = ptrtoint ptr %icv_len49 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %icv_len49, align 1
  %conv37 = zext i8 %27 to i32
  %28 = add nuw nsw i32 %conv21, %conv14
  %29 = add nuw nsw i32 %28, %conv37
  %sub38 = sub i32 %25, %29
  %call = call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr25, i32 noundef %sub38) #13
  %neg = xor i32 %call, -1
  %30 = call i32 @llvm.bswap.i32(i32 %neg)
  %31 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %crc, align 4
  %call40 = call i32 @arc4_setkey(ptr noundef %xmit_arc4_ctx, ptr noundef nonnull %wepkey, i32 noundef %add55) #10
  call void @arc4_crypt(ptr noundef %xmit_arc4_ctx, ptr noundef %add.ptr25, ptr noundef %add.ptr25, i32 noundef %sub38) #10
  %add.ptr41 = getelementptr i8, ptr %add.ptr25, i32 %sub38
  call void @arc4_crypt(ptr noundef %xmit_arc4_ctx, ptr noundef %add.ptr41, ptr noundef nonnull %crc, i32 noundef 4) #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %frag_len, align 8
  %34 = ptrtoint ptr %icv_len49 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %icv_len49, align 1
  %conv50 = zext i8 %35 to i32
  %36 = add nuw nsw i32 %conv21, %conv14
  %37 = add nuw nsw i32 %36, %conv50
  %sub51 = sub i32 %33, %37
  %call52 = call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr25, i32 noundef %sub51) #13
  %neg53 = xor i32 %call52, -1
  %38 = call i32 @llvm.bswap.i32(i32 %neg53)
  %39 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %crc, align 4
  %call56 = call i32 @arc4_setkey(ptr noundef %xmit_arc4_ctx, ptr noundef nonnull %wepkey, i32 noundef %add55) #10
  call void @arc4_crypt(ptr noundef %xmit_arc4_ctx, ptr noundef %add.ptr25, ptr noundef %add.ptr25, i32 noundef %sub51) #10
  %add.ptr57 = getelementptr i8, ptr %add.ptr25, i32 %sub51
  call void @arc4_crypt(ptr noundef %xmit_arc4_ctx, ptr noundef %add.ptr57, ptr noundef nonnull %crc, i32 noundef 4) #10
  %40 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %frag_len, align 8
  %add.ptr60 = getelementptr i8, ptr %pframe.0133, i32 %41
  %42 = ptrtoint ptr %add.ptr60 to i32
  %and = and i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp61.not = icmp eq i32 %and, 0
  %add63125 = select i1 %cmp61.not, i32 0, i32 4
  %shr126 = add i32 %add63125, %42
  %shl = and i32 %shr126, -4
  %43 = inttoptr i32 %shl to ptr
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then31
  %pframe.1 = phi ptr [ %pframe.0133, %if.then31 ], [ %43, %if.else ]
  %44 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %nr_frags, align 4
  %conv11 = zext i8 %45 to i32
  %cmp12 = icmp ult i32 %add26, %conv11
  br i1 %cmp12, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wepkey) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arc4_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arc4_crypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_wep_decrypt(ptr noundef %padapter, ptr nocapture noundef readonly %precvframe) local_unnamed_addr #0 align 64 {
entry:
  %wepkey = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wepkey) #10
  %encrypt = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 17
  %0 = getelementptr inbounds i8, ptr %wepkey, i32 3
  %1 = call ptr @memset(ptr %0, i32 255, i32 13)
  %2 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %encrypt, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %3, label %entry.if.end_crit_edge [
    i8 1, label %entry.if.then_crit_edge
    i8 5, label %entry.if.then_crit_edge38
  ]

entry.if.then_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge38
  %5 = getelementptr inbounds [16 x i8], ptr %wepkey, i32 0, i32 3
  %rx_data = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 9
  %6 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_data, align 4
  %recv_arc4_ctx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 13
  %hdrlen = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 4
  %8 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hdrlen, align 1
  %conv6 = zext i8 %9 to i32
  %add.ptr = getelementptr i8, ptr %7, i32 %conv6
  %key_index = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 29
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
  %len = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 7
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %iv_len = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 18
  %18 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %iv_len, align 4
  %conv14 = zext i8 %19 to i32
  %20 = add nuw nsw i32 %conv6, %conv14
  %sub15 = sub i32 %17, %20
  %add.ptr18 = getelementptr i8, ptr %7, i32 %conv14
  %add.ptr21 = getelementptr i8, ptr %add.ptr18, i32 %conv6
  %add = add i32 %13, 3
  %call = call i32 @arc4_setkey(ptr noundef %recv_arc4_ctx, ptr noundef nonnull %wepkey, i32 noundef %add) #10
  call void @arc4_crypt(ptr noundef %recv_arc4_ctx, ptr noundef %add.ptr21, ptr noundef %add.ptr21, i32 noundef %sub15) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wepkey) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_secmicsetkey(ptr nocapture noundef %pmicdata, ptr nocapture noundef readonly %key) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
define dso_local void @rtw_secmicappendbyte(ptr nocapture noundef %pmicdata, i8 noundef zeroext %b) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
define dso_local void @rtw_secmicappend(ptr nocapture noundef %pmicdata, ptr nocapture noundef readonly %src, i32 noundef %nbytes) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes)
  %cmp.not2 = icmp eq i32 %nbytes, 0
  br i1 %cmp.not2, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_secmicappendbyte.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %L.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %L.i, align 4
  %xor.i = xor i32 %7, %or.i
  %or8.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 17) #10
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
  %or29.i = tail call i32 @llvm.fshl.i32(i32 %add23.i, i32 %add23.i, i32 3) #10
  %xor31.i = xor i32 %or29.i, %xor20.i
  %add34.i = add i32 %xor31.i, %add23.i
  %or40.i = tail call i32 @llvm.fshl.i32(i32 %add34.i, i32 %add34.i, i32 30) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

rtw_secmicappendbyte.exit.while.end_crit_edge:    ; preds = %rtw_secmicappendbyte.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %rtw_secmicappendbyte.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_secgetmic(ptr noundef %pmicdata, ptr nocapture noundef writeonly %dst) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_secmicappendbyte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %L.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %4 = ptrtoint ptr %L.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %L.i, align 4
  %xor.i = xor i32 %5, %or.i
  %or8.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 17) #10
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
  %or29.i = tail call i32 @llvm.fshl.i32(i32 %add23.i, i32 %add23.i, i32 3) #10
  %xor31.i = xor i32 %or29.i, %xor20.i
  %add34.i = add i32 %xor31.i, %add23.i
  %or40.i = tail call i32 @llvm.fshl.i32(i32 %add34.i, i32 %add34.i, i32 30) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_secmicappendbyte.exit36

if.then.i35:                                      ; preds = %rtw_secmicappendbyte.exit
  call void @__sanitizer_cov_trace_pc() #12
  %L.i16 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %16 = ptrtoint ptr %L.i16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %L.i16, align 4
  %xor.i17 = xor i32 %17, %15
  %or8.i18 = tail call i32 @llvm.fshl.i32(i32 %xor.i17, i32 %xor.i17, i32 17) #10
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
  %or29.i29 = tail call i32 @llvm.fshl.i32(i32 %add23.i28, i32 %add23.i28, i32 3) #10
  %xor31.i30 = xor i32 %or29.i29, %xor20.i27
  %add34.i31 = add i32 %xor31.i30, %add23.i28
  %or40.i32 = tail call i32 @llvm.fshl.i32(i32 %add34.i31, i32 %add34.i31, i32 30) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_secmicappendbyte.exit62

if.then.i61:                                      ; preds = %rtw_secmicappendbyte.exit36
  call void @__sanitizer_cov_trace_pc() #12
  %L.i42 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %28 = ptrtoint ptr %L.i42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %L.i42, align 4
  %xor.i43 = xor i32 %29, %27
  %or8.i44 = tail call i32 @llvm.fshl.i32(i32 %xor.i43, i32 %xor.i43, i32 17) #10
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
  %or29.i55 = tail call i32 @llvm.fshl.i32(i32 %add23.i54, i32 %add23.i54, i32 3) #10
  %xor31.i56 = xor i32 %or29.i55, %xor20.i53
  %add34.i57 = add i32 %xor31.i56, %add23.i54
  %or40.i58 = tail call i32 @llvm.fshl.i32(i32 %add34.i57, i32 %add34.i57, i32 30) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_secmicappendbyte.exit88

if.then.i87:                                      ; preds = %rtw_secmicappendbyte.exit62
  call void @__sanitizer_cov_trace_pc() #12
  %L.i68 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %40 = ptrtoint ptr %L.i68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %L.i68, align 4
  %xor.i69 = xor i32 %41, %39
  %or8.i70 = tail call i32 @llvm.fshl.i32(i32 %xor.i69, i32 %xor.i69, i32 17) #10
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
  %or29.i81 = tail call i32 @llvm.fshl.i32(i32 %add23.i80, i32 %add23.i80, i32 3) #10
  %xor31.i82 = xor i32 %or29.i81, %xor20.i79
  %add34.i83 = add i32 %xor31.i82, %add23.i80
  %or40.i84 = tail call i32 @llvm.fshl.i32(i32 %add34.i83, i32 %add34.i83, i32 30) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %M.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %M.i, align 4
  %L.i94 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %52 = ptrtoint ptr %L.i94 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %L.i94, align 4
  %xor.i95 = xor i32 %53, %51
  %or8.i96 = tail call i32 @llvm.fshl.i32(i32 %xor.i95, i32 %xor.i95, i32 17) #10
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
  %or29.i107 = tail call i32 @llvm.fshl.i32(i32 %add23.i106, i32 %add23.i106, i32 3) #10
  %xor31.i108 = xor i32 %or29.i107, %xor20.i105
  %add34.i109 = add i32 %xor31.i108, %add23.i106
  %or40.i110 = tail call i32 @llvm.fshl.i32(i32 %add34.i109, i32 %add34.i109, i32 30) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.while.end_crit_edge:                   ; preds = %rtw_secmicappendbyte.exit114
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %M.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %M.i.promoted = load i32, ptr %M.i, align 4
  %R.i123 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  %L.i120 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %59 = ptrtoint ptr %L.i120 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %L.i120, align 4
  %xor.i121 = xor i32 %60, %M.i.promoted
  %or8.i122 = tail call i32 @llvm.fshl.i32(i32 %xor.i121, i32 %xor.i121, i32 17) #10
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
  %or29.i133 = tail call i32 @llvm.fshl.i32(i32 %add23.i132, i32 %add23.i132, i32 3) #10
  %xor31.i134 = xor i32 %or29.i133, %xor20.i131
  %add34.i135 = add i32 %xor31.i134, %add23.i132
  %or40.i136 = tail call i32 @llvm.fshl.i32(i32 %add34.i135, i32 %add34.i135, i32 30) #10
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
define dso_local void @rtw_seccalctkipmic(ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %header, ptr nocapture noundef readonly %data, i32 noundef %data_len, ptr nocapture noundef writeonly %mic_code, i8 noundef zeroext %pri) local_unnamed_addr #7 align 64 {
entry:
  %micdata = alloca %struct.mic_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %micdata) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_secmicappendbyte.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %xor.i.i = xor i32 %35, %or.i.i
  %or8.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i, i32 %xor.i.i, i32 17) #10
  %xor9.i.i = xor i32 %or8.i.i, %34
  %add.i.i = add i32 %xor9.i.i, %xor.i.i
  %and13.i.i = lshr i32 %add.i.i, 8
  %shr14.i.i = and i32 %and13.i.i, 16711935
  %and16.i.i = shl i32 %add.i.i, 8
  %shl17.i.i = and i32 %and16.i.i, -16711936
  %or18.i.i = or i32 %shr14.i.i, %shl17.i.i
  %xor20.i.i = xor i32 %or18.i.i, %xor9.i.i
  %add23.i.i = add i32 %xor20.i.i, %add.i.i
  %or29.i.i = tail call i32 @llvm.fshl.i32(i32 %add23.i.i, i32 %add23.i.i, i32 3) #10
  %xor31.i.i = xor i32 %or29.i.i, %xor20.i.i
  %add34.i.i = add i32 %xor31.i.i, %add23.i.i
  %or40.i.i = tail call i32 @llvm.fshl.i32(i32 %add34.i.i, i32 %add34.i.i, i32 30) #10
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_secmicappendbyte.exit.i70

if.then.i.i67:                                    ; preds = %while.body.i49
  call void @__sanitizer_cov_trace_pc() #12
  %xor.i.i50 = xor i32 %54, %or.i.i46
  %or8.i.i51 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i50, i32 %xor.i.i50, i32 17) #10
  %xor9.i.i52 = xor i32 %or8.i.i51, %53
  %add.i.i53 = add i32 %xor9.i.i52, %xor.i.i50
  %and13.i.i54 = lshr i32 %add.i.i53, 8
  %shr14.i.i55 = and i32 %and13.i.i54, 16711935
  %and16.i.i56 = shl i32 %add.i.i53, 8
  %shl17.i.i57 = and i32 %and16.i.i56, -16711936
  %or18.i.i58 = or i32 %shr14.i.i55, %shl17.i.i57
  %xor20.i.i59 = xor i32 %or18.i.i58, %xor9.i.i52
  %add23.i.i60 = add i32 %xor20.i.i59, %add.i.i53
  %or29.i.i61 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i60, i32 %add23.i.i60, i32 3) #10
  %xor31.i.i62 = xor i32 %or29.i.i61, %xor20.i.i59
  %add34.i.i63 = add i32 %xor31.i.i62, %add23.i.i60
  %or40.i.i64 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i63, i32 %add34.i.i63, i32 30) #10
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_secmicappendbyte.exit.i106

if.then.i.i103:                                   ; preds = %while.body.i85
  call void @__sanitizer_cov_trace_pc() #12
  %xor.i.i86 = xor i32 %68, %or.i.i82
  %or8.i.i87 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i86, i32 %xor.i.i86, i32 17) #10
  %xor9.i.i88 = xor i32 %or8.i.i87, %67
  %add.i.i89 = add i32 %xor9.i.i88, %xor.i.i86
  %and13.i.i90 = lshr i32 %add.i.i89, 8
  %shr14.i.i91 = and i32 %and13.i.i90, 16711935
  %and16.i.i92 = shl i32 %add.i.i89, 8
  %shl17.i.i93 = and i32 %and16.i.i92, -16711936
  %or18.i.i94 = or i32 %shr14.i.i91, %shl17.i.i93
  %xor20.i.i95 = xor i32 %or18.i.i94, %xor9.i.i88
  %add23.i.i96 = add i32 %xor20.i.i95, %add.i.i89
  %or29.i.i97 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i96, i32 %add23.i.i96, i32 3) #10
  %xor31.i.i98 = xor i32 %or29.i.i97, %xor20.i.i95
  %add34.i.i99 = add i32 %xor31.i.i98, %add23.i.i96
  %or40.i.i100 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i99, i32 %add34.i.i99, i32 30) #10
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_secmicappendbyte.exit.i142

if.then.i.i139:                                   ; preds = %while.body.i121
  call void @__sanitizer_cov_trace_pc() #12
  %xor.i.i122 = xor i32 %82, %or.i.i118
  %or8.i.i123 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i122, i32 %xor.i.i122, i32 17) #10
  %xor9.i.i124 = xor i32 %or8.i.i123, %81
  %add.i.i125 = add i32 %xor9.i.i124, %xor.i.i122
  %and13.i.i126 = lshr i32 %add.i.i125, 8
  %shr14.i.i127 = and i32 %and13.i.i126, 16711935
  %and16.i.i128 = shl i32 %add.i.i125, 8
  %shl17.i.i129 = and i32 %and16.i.i128, -16711936
  %or18.i.i130 = or i32 %shr14.i.i127, %shl17.i.i129
  %xor20.i.i131 = xor i32 %or18.i.i130, %xor9.i.i124
  %add23.i.i132 = add i32 %xor20.i.i131, %add.i.i125
  %or29.i.i133 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i132, i32 %add23.i.i132, i32 3) #10
  %xor31.i.i134 = xor i32 %or29.i.i133, %xor20.i.i131
  %add34.i.i135 = add i32 %xor31.i.i134, %add23.i.i132
  %or40.i.i136 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i135, i32 %add34.i.i135, i32 30) #10
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_secmicappendbyte.exit.i178

if.then.i.i175:                                   ; preds = %while.body.i157
  call void @__sanitizer_cov_trace_pc() #12
  %xor.i.i158 = xor i32 %101, %or.i.i154
  %or8.i.i159 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i158, i32 %xor.i.i158, i32 17) #10
  %xor9.i.i160 = xor i32 %or8.i.i159, %100
  %add.i.i161 = add i32 %xor9.i.i160, %xor.i.i158
  %and13.i.i162 = lshr i32 %add.i.i161, 8
  %shr14.i.i163 = and i32 %and13.i.i162, 16711935
  %and16.i.i164 = shl i32 %add.i.i161, 8
  %shl17.i.i165 = and i32 %and16.i.i164, -16711936
  %or18.i.i166 = or i32 %shr14.i.i163, %shl17.i.i165
  %xor20.i.i167 = xor i32 %or18.i.i166, %xor9.i.i160
  %add23.i.i168 = add i32 %xor20.i.i167, %add.i.i161
  %or29.i.i169 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i168, i32 %add23.i.i168, i32 3) #10
  %xor31.i.i170 = xor i32 %or29.i.i169, %xor20.i.i167
  %add34.i.i171 = add i32 %xor31.i.i170, %add23.i.i168
  %or40.i.i172 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i171, i32 %add34.i.i171, i32 30) #10
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_secmicappendbyte.exit.i214

if.then.i.i211:                                   ; preds = %while.body.i193
  call void @__sanitizer_cov_trace_pc() #12
  %xor.i.i194 = xor i32 %115, %or.i.i190
  %or8.i.i195 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i194, i32 %xor.i.i194, i32 17) #10
  %xor9.i.i196 = xor i32 %or8.i.i195, %114
  %add.i.i197 = add i32 %xor9.i.i196, %xor.i.i194
  %and13.i.i198 = lshr i32 %add.i.i197, 8
  %shr14.i.i199 = and i32 %and13.i.i198, 16711935
  %and16.i.i200 = shl i32 %add.i.i197, 8
  %shl17.i.i201 = and i32 %and16.i.i200, -16711936
  %or18.i.i202 = or i32 %shr14.i.i199, %shl17.i.i201
  %xor20.i.i203 = xor i32 %or18.i.i202, %xor9.i.i196
  %add23.i.i204 = add i32 %xor20.i.i203, %add.i.i197
  %or29.i.i205 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i204, i32 %add23.i.i204, i32 3) #10
  %xor31.i.i206 = xor i32 %or29.i.i205, %xor20.i.i203
  %add34.i.i207 = add i32 %xor31.i.i206, %add23.i.i204
  %or40.i.i208 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i207, i32 %add34.i.i207, i32 30) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i193

if.end21.loopexit:                                ; preds = %rtw_secmicappendbyte.exit.i214
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  %xor.i.i230 = xor i32 %.promoted331, %or.i.i226
  %or8.i.i231 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i230, i32 %xor.i.i230, i32 17) #10
  %xor9.i.i232 = xor i32 %or8.i.i231, %.promoted333
  %add.i.i233 = add i32 %xor9.i.i232, %xor.i.i230
  %and13.i.i234 = lshr i32 %add.i.i233, 8
  %shr14.i.i235 = and i32 %and13.i.i234, 16711935
  %and16.i.i236 = shl i32 %add.i.i233, 8
  %shl17.i.i237 = and i32 %and16.i.i236, -16711936
  %or18.i.i238 = or i32 %shr14.i.i235, %shl17.i.i237
  %xor20.i.i239 = xor i32 %or18.i.i238, %xor9.i.i232
  %add23.i.i240 = add i32 %xor20.i.i239, %add.i.i233
  %or29.i.i241 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i240, i32 %add23.i.i240, i32 3) #10
  %xor31.i.i242 = xor i32 %or29.i.i241, %xor20.i.i239
  %add34.i.i243 = add i32 %xor31.i.i242, %add23.i.i240
  %or40.i.i244 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i243, i32 %add34.i.i243, i32 30) #10
  %xor42.i.i245 = xor i32 %or40.i.i244, %xor31.i.i242
  %add45.i.i246 = add i32 %xor42.i.i245, %add34.i.i243
  br label %rtw_secmicappendbyte.exit.i250.2

rtw_secmicappendbyte.exit.i250:                   ; preds = %if.end21
  %145 = add i32 %.promoted327, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %145)
  %cmp.i.i228.1 = icmp ult i32 %145, -4
  br i1 %cmp.i.i228.1, label %if.then.i.i247.1, label %rtw_secmicappendbyte.exit.i250.1

if.then.i.i247.1:                                 ; preds = %rtw_secmicappendbyte.exit.i250
  call void @__sanitizer_cov_trace_pc() #12
  %xor.i.i230.1 = xor i32 %.promoted331, %or.i.i226
  %or8.i.i231.1 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i230.1, i32 %xor.i.i230.1, i32 17) #10
  %xor9.i.i232.1 = xor i32 %or8.i.i231.1, %.promoted333
  %add.i.i233.1 = add i32 %xor9.i.i232.1, %xor.i.i230.1
  %and13.i.i234.1 = lshr i32 %add.i.i233.1, 8
  %shr14.i.i235.1 = and i32 %and13.i.i234.1, 16711935
  %and16.i.i236.1 = shl i32 %add.i.i233.1, 8
  %shl17.i.i237.1 = and i32 %and16.i.i236.1, -16711936
  %or18.i.i238.1 = or i32 %shr14.i.i235.1, %shl17.i.i237.1
  %xor20.i.i239.1 = xor i32 %or18.i.i238.1, %xor9.i.i232.1
  %add23.i.i240.1 = add i32 %xor20.i.i239.1, %add.i.i233.1
  %or29.i.i241.1 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i240.1, i32 %add23.i.i240.1, i32 3) #10
  %xor31.i.i242.1 = xor i32 %or29.i.i241.1, %xor20.i.i239.1
  %add34.i.i243.1 = add i32 %xor31.i.i242.1, %add23.i.i240.1
  %or40.i.i244.1 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i243.1, i32 %add34.i.i243.1, i32 30) #10
  %xor42.i.i245.1 = xor i32 %or40.i.i244.1, %xor31.i.i242.1
  %add45.i.i246.1 = add i32 %xor42.i.i245.1, %add34.i.i243.1
  br label %rtw_secmicappendbyte.exit.i250.2

rtw_secmicappendbyte.exit.i250.1:                 ; preds = %rtw_secmicappendbyte.exit.i250
  %inc.i.i227.2 = add i32 %.promoted327, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i227.2)
  %cmp.i.i228.2 = icmp ugt i32 %inc.i.i227.2, 3
  br i1 %cmp.i.i228.2, label %rtw_secmicappendbyte.exit.i250.2.thread, label %rtw_secmicappendbyte.exit.i250.1.rtw_secmicappendbyte.exit.i250.2_crit_edge

rtw_secmicappendbyte.exit.i250.1.rtw_secmicappendbyte.exit.i250.2_crit_edge: ; preds = %rtw_secmicappendbyte.exit.i250.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_secmicappendbyte.exit.i250.2

rtw_secmicappendbyte.exit.i250.2.thread:          ; preds = %rtw_secmicappendbyte.exit.i250.1
  call void @__sanitizer_cov_trace_pc() #12
  %xor.i.i230.2 = xor i32 %.promoted331, %or.i.i226
  %or8.i.i231.2 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i230.2, i32 %xor.i.i230.2, i32 17) #10
  %xor9.i.i232.2 = xor i32 %or8.i.i231.2, %.promoted333
  %add.i.i233.2 = add i32 %xor9.i.i232.2, %xor.i.i230.2
  %and13.i.i234.2 = lshr i32 %add.i.i233.2, 8
  %shr14.i.i235.2 = and i32 %and13.i.i234.2, 16711935
  %and16.i.i236.2 = shl i32 %add.i.i233.2, 8
  %shl17.i.i237.2 = and i32 %and16.i.i236.2, -16711936
  %or18.i.i238.2 = or i32 %shr14.i.i235.2, %shl17.i.i237.2
  %xor20.i.i239.2 = xor i32 %or18.i.i238.2, %xor9.i.i232.2
  %add23.i.i240.2 = add i32 %xor20.i.i239.2, %add.i.i233.2
  %or29.i.i241.2 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i240.2, i32 %add23.i.i240.2, i32 3) #10
  %xor31.i.i242.2 = xor i32 %or29.i.i241.2, %xor20.i.i239.2
  %add34.i.i243.2 = add i32 %xor31.i.i242.2, %add23.i.i240.2
  %or40.i.i244.2 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i243.2, i32 %add34.i.i243.2, i32 30) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_secmicappendbyte.exit.i250.3

if.then.i.i247.3:                                 ; preds = %rtw_secmicappendbyte.exit.i250.2
  call void @__sanitizer_cov_trace_pc() #12
  %xor.i.i230.3 = xor i32 %147, %148
  %or8.i.i231.3 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i230.3, i32 %xor.i.i230.3, i32 17) #10
  %xor9.i.i232.3 = xor i32 %or8.i.i231.3, %146
  %add.i.i233.3 = add i32 %xor9.i.i232.3, %xor.i.i230.3
  %and13.i.i234.3 = lshr i32 %add.i.i233.3, 8
  %shr14.i.i235.3 = and i32 %and13.i.i234.3, 16711935
  %and16.i.i236.3 = shl i32 %add.i.i233.3, 8
  %shl17.i.i237.3 = and i32 %and16.i.i236.3, -16711936
  %or18.i.i238.3 = or i32 %shr14.i.i235.3, %shl17.i.i237.3
  %xor20.i.i239.3 = xor i32 %or18.i.i238.3, %xor9.i.i232.3
  %add23.i.i240.3 = add i32 %xor20.i.i239.3, %add.i.i233.3
  %or29.i.i241.3 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i240.3, i32 %add23.i.i240.3, i32 3) #10
  %xor31.i.i242.3 = xor i32 %or29.i.i241.3, %xor20.i.i239.3
  %add34.i.i243.3 = add i32 %xor31.i.i242.3, %add23.i.i240.3
  %or40.i.i244.3 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i243.3, i32 %add34.i.i243.3, i32 30) #10
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_secmicappendbyte.exit.i286

if.then.i.i283:                                   ; preds = %while.body.i265
  call void @__sanitizer_cov_trace_pc() #12
  %xor.i.i266 = xor i32 %163, %or.i.i262
  %or8.i.i267 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i266, i32 %xor.i.i266, i32 17) #10
  %xor9.i.i268 = xor i32 %or8.i.i267, %162
  %add.i.i269 = add i32 %xor9.i.i268, %xor.i.i266
  %and13.i.i270 = lshr i32 %add.i.i269, 8
  %shr14.i.i271 = and i32 %and13.i.i270, 16711935
  %and16.i.i272 = shl i32 %add.i.i269, 8
  %shl17.i.i273 = and i32 %and16.i.i272, -16711936
  %or18.i.i274 = or i32 %shr14.i.i271, %shl17.i.i273
  %xor20.i.i275 = xor i32 %or18.i.i274, %xor9.i.i268
  %add23.i.i276 = add i32 %xor20.i.i275, %add.i.i269
  %or29.i.i277 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i276, i32 %add23.i.i276, i32 3) #10
  %xor31.i.i278 = xor i32 %or29.i.i277, %xor20.i.i275
  %add34.i.i279 = add i32 %xor31.i.i278, %add23.i.i276
  %or40.i.i280 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i279, i32 %add34.i.i279, i32 30) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i265

rtw_secmicappend.exit287.loopexit:                ; preds = %rtw_secmicappendbyte.exit.i286
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %micdata) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_tkip_encrypt(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  %rc4key = alloca [16 x i8], align 1
  %ttkey = alloca [16 x i8], align 1
  %crc = alloca %union.anon.123, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rc4key) #10
  %0 = call ptr @memset(ptr %rc4key, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ttkey) #10
  %1 = call ptr @memset(ptr %ttkey, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc) #10
  %2 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %crc, align 4, !annotation !39
  %xmit_arc4_ctx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 12
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 5
  %3 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf_addr, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pkt_offset = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 8
  %5 = ptrtoint ptr %pkt_offset to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pkt_offset, align 1
  %mul = shl i8 %6, 3
  %add = add i8 %mul, 32
  %conv3 = zext i8 %add to i32
  %add.ptr = getelementptr i8, ptr %4, i32 %conv3
  %encrypt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 11
  %7 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %encrypt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp = icmp eq i8 %8, 2
  br i1 %cmp, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %psta = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 40
  %9 = ptrtoint ptr %psta to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %psta, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.end10, label %if.then6.if.then12_crit_edge

if.then6.if.then12_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end10:                                         ; preds = %if.then6
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ra) #10
  %tobool11.not = icmp eq ptr %call, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end10.if.then12_crit_edge

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.then6.if.then12_crit_edge
  %stainfo.0200 = phi ptr [ %call, %if.end10.if.then12_crit_edge ], [ %10, %if.then6.if.then12_crit_edge ]
  %ra13 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %11 = ptrtoint ptr %ra13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ra13, align 4
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %if.else18, label %if.then15

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %dot118021XGrpKeyid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 6
  %14 = ptrtoint ptr %dot118021XGrpKeyid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dot118021XGrpKeyid, align 8
  %arrayidx16 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 7, i32 %15
  br label %if.end20

if.else18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %dot118021x_UncstKey = getelementptr inbounds %struct.sta_info, ptr %stainfo.0200, i32 0, i32 16
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then15
  %prwskey.0 = phi ptr [ %arrayidx16, %if.then15 ], [ %dot118021x_UncstKey, %if.else18 ]
  %nr_frags = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 10
  %16 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nr_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp22205.not = icmp eq i8 %17, 0
  br i1 %cmp22205.not, label %if.end20.cleanup_crit_edge, label %for.body.lr.ph

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end20
  %conv21204 = zext i8 %17 to i32
  %hdrlen = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 7
  %iv_len = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 12
  %ta = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 22
  %frag_len = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 11
  %icv_len68 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 13
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv21208 = phi i32 [ %conv21204, %for.body.lr.ph ], [ %conv21, %for.inc.for.body_crit_edge ]
  %pframe.0207 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %pframe.1, %for.inc.for.body_crit_edge ]
  %curfragnum.0206 = phi i32 [ 0, %for.body.lr.ph ], [ %add43, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hdrlen, align 2
  %conv24 = zext i16 %19 to i32
  %add.ptr25 = getelementptr i8, ptr %pframe.0207, i32 %conv24
  %20 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %iv_len, align 2
  %conv26 = zext i8 %21 to i32
  %add.ptr27 = getelementptr i8, ptr %pframe.0207, i32 %conv26
  %add.ptr30 = getelementptr i8, ptr %add.ptr27, i32 %conv24
  %arrayidx31 = getelementptr i8, ptr %add.ptr25, i32 2
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx31, align 1
  %24 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr25, align 1
  %arrayidx33 = getelementptr i8, ptr %add.ptr25, i32 4
  %26 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx33, align 1
  %arrayidx34 = getelementptr i8, ptr %add.ptr25, i32 5
  %28 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx34, align 1
  %arrayidx35 = getelementptr i8, ptr %add.ptr25, i32 6
  %30 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx35, align 1
  %arrayidx36 = getelementptr i8, ptr %add.ptr25, i32 7
  %32 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx36, align 1
  %dot11txpn.sroa.10.0.insert.ext = zext i8 %23 to i64
  %dot11txpn.sroa.9.0.insert.ext = zext i8 %25 to i64
  %dot11txpn.sroa.9.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.9.0.insert.ext, 8
  %dot11txpn.sroa.9.0.insert.insert = or i64 %dot11txpn.sroa.9.0.insert.shift, %dot11txpn.sroa.10.0.insert.ext
  %dot11txpn.sroa.8.0.insert.ext = zext i8 %27 to i64
  %dot11txpn.sroa.8.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.8.0.insert.ext, 16
  %dot11txpn.sroa.8.0.insert.insert = or i64 %dot11txpn.sroa.9.0.insert.insert, %dot11txpn.sroa.8.0.insert.shift
  %dot11txpn.sroa.7.0.insert.ext = zext i8 %29 to i64
  %dot11txpn.sroa.7.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.7.0.insert.ext, 24
  %dot11txpn.sroa.7.0.insert.insert = or i64 %dot11txpn.sroa.8.0.insert.insert, %dot11txpn.sroa.7.0.insert.shift
  %dot11txpn.sroa.6.0.insert.ext = zext i8 %31 to i64
  %dot11txpn.sroa.6.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.6.0.insert.ext, 32
  %dot11txpn.sroa.5.0.insert.ext = zext i8 %33 to i64
  %dot11txpn.sroa.5.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.5.0.insert.ext, 40
  %dot11txpn.sroa.5.0.insert.mask = or i64 %dot11txpn.sroa.7.0.insert.insert, %dot11txpn.sroa.6.0.insert.shift
  %dot11txpn.sroa.0.0.insert.mask = or i64 %dot11txpn.sroa.5.0.insert.mask, %dot11txpn.sroa.5.0.insert.shift
  %conv37 = trunc i64 %dot11txpn.sroa.9.0.insert.insert to i16
  %dot11txpn.sroa.0.0.insert.insert = lshr i64 %dot11txpn.sroa.0.0.insert.mask, 16
  %conv38 = trunc i64 %dot11txpn.sroa.0.0.insert.insert to i32
  call fastcc void @phase1(ptr noundef nonnull %ttkey, ptr noundef %prwskey.0, ptr noundef %ta, i32 noundef %conv38)
  call fastcc void @phase2(ptr noundef nonnull %rc4key, ptr noundef %prwskey.0, ptr noundef nonnull %ttkey, i16 noundef zeroext %conv37)
  %add43 = add nuw nsw i32 %curfragnum.0206, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add43, i32 %conv21208)
  %cmp46 = icmp eq i32 %add43, %conv21208
  br i1 %cmp46, label %if.then48, label %if.else61

if.then48:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %last_txcmdsz, align 4
  %36 = ptrtoint ptr %icv_len68 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %icv_len68, align 1
  %conv54 = zext i8 %37 to i32
  %38 = add nuw nsw i32 %conv26, %conv24
  %39 = add nuw nsw i32 %38, %conv54
  %sub55 = sub i32 %35, %39
  %call56 = call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr30, i32 noundef %sub55) #13
  %neg = xor i32 %call56, -1
  %40 = call i32 @llvm.bswap.i32(i32 %neg)
  %41 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %crc, align 4
  %call58 = call i32 @arc4_setkey(ptr noundef %xmit_arc4_ctx, ptr noundef nonnull %rc4key, i32 noundef 16) #10
  call void @arc4_crypt(ptr noundef %xmit_arc4_ctx, ptr noundef %add.ptr30, ptr noundef %add.ptr30, i32 noundef %sub55) #10
  %add.ptr59 = getelementptr i8, ptr %add.ptr30, i32 %sub55
  call void @arc4_crypt(ptr noundef %xmit_arc4_ctx, ptr noundef %add.ptr59, ptr noundef nonnull %crc, i32 noundef 4) #10
  br label %for.inc

if.else61:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %frag_len, align 8
  %44 = ptrtoint ptr %icv_len68 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %icv_len68, align 1
  %conv69 = zext i8 %45 to i32
  %46 = add nuw nsw i32 %conv26, %conv24
  %47 = add nuw nsw i32 %46, %conv69
  %sub70 = sub i32 %43, %47
  %call71 = call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr30, i32 noundef %sub70) #13
  %neg72 = xor i32 %call71, -1
  %48 = call i32 @llvm.bswap.i32(i32 %neg72)
  %49 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %crc, align 4
  %call74 = call i32 @arc4_setkey(ptr noundef %xmit_arc4_ctx, ptr noundef nonnull %rc4key, i32 noundef 16) #10
  call void @arc4_crypt(ptr noundef %xmit_arc4_ctx, ptr noundef %add.ptr30, ptr noundef %add.ptr30, i32 noundef %sub70) #10
  %add.ptr75 = getelementptr i8, ptr %add.ptr30, i32 %sub70
  call void @arc4_crypt(ptr noundef %xmit_arc4_ctx, ptr noundef %add.ptr75, ptr noundef nonnull %crc, i32 noundef 4) #10
  %50 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %frag_len, align 8
  %add.ptr78 = getelementptr i8, ptr %pframe.0207, i32 %51
  %52 = ptrtoint ptr %add.ptr78 to i32
  %and = and i32 %52, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp80.not = icmp eq i32 %and, 0
  %add82196 = select i1 %cmp80.not, i32 0, i32 4
  %shr79197 = add i32 %add82196, %52
  %shl = and i32 %shr79197, -4
  %53 = inttoptr i32 %shl to ptr
  br label %for.inc

for.inc:                                          ; preds = %if.else61, %if.then48
  %pframe.1 = phi ptr [ %pframe.0207, %if.then48 ], [ %53, %if.else61 ]
  %54 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %nr_frags, align 4
  %conv21 = zext i8 %55 to i32
  %cmp22 = icmp ult i32 %add43, %conv21
  br i1 %cmp22, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 1, %if.end20.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ttkey) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rc4key) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phase1(ptr nocapture noundef %p1k, ptr nocapture noundef readonly %tk, ptr nocapture noundef readonly %ta, i32 noundef %iv32) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phase2(ptr nocapture noundef writeonly %rc4key, ptr nocapture noundef readonly %tk, ptr nocapture noundef readonly %p1k, i16 noundef zeroext %iv16) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
define dso_local i32 @rtw_tkip_decrypt(ptr noundef %padapter, ptr noundef %precvframe) local_unnamed_addr #0 align 64 {
entry:
  %rc4key = alloca [16 x i8], align 1
  %ttkey = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rc4key) #10
  %0 = call ptr @memset(ptr %rc4key, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ttkey) #10
  %recv_arc4_ctx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 13
  %rx_data = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 9
  %1 = call ptr @memset(ptr %ttkey, i32 255, i32 16)
  %2 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_data, align 4
  %encrypt = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 17
  %4 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %encrypt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp eq i8 %5, 2
  br i1 %cmp, label %if.then, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then:                                          ; preds = %entry
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %ta = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 25
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ta) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.exit_crit_edge, label %if.then2

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then2:                                         ; preds = %if.then
  %ra = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 26
  %6 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ra, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then2
  %binstallGrpkey = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 22
  %9 = ptrtoint ptr %binstallGrpkey to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %binstallGrpkey, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %if.then6, label %if.end15

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_tkip_decrypt.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_tkip_decrypt, %if.then12)) #10
          to label %exit [label %if.then12], !srcloc !40

if.then12:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %11 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pnetdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_tkip_decrypt.__UNIQUE_ID_ddebug346, ptr noundef %12, ptr noundef nonnull @.str.3) #10
  br label %exit

if.end15:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %key_index = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 29
  %13 = ptrtoint ptr %key_index to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %key_index, align 1
  %idxprom = zext i8 %14 to i32
  %arrayidx16 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 7, i32 %idxprom
  br label %if.end19

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %dot118021x_UncstKey = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 16
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end15
  %prwskey.0 = phi ptr [ %arrayidx16, %if.end15 ], [ %dot118021x_UncstKey, %if.else ]
  %hdrlen = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 4
  %15 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hdrlen, align 1
  %conv20 = zext i8 %16 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv20
  %iv_len = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 18
  %17 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %iv_len, align 4
  %conv21 = zext i8 %18 to i32
  %add.ptr22 = getelementptr i8, ptr %3, i32 %conv21
  %add.ptr25 = getelementptr i8, ptr %add.ptr22, i32 %conv20
  %len = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 7
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %21 = add nuw nsw i32 %conv21, %conv20
  %sub30 = sub i32 %20, %21
  %arrayidx32 = getelementptr i8, ptr %add.ptr, i32 2
  %22 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx32, align 1
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr, align 1
  %arrayidx34 = getelementptr i8, ptr %add.ptr, i32 4
  %26 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx34, align 1
  %arrayidx35 = getelementptr i8, ptr %add.ptr, i32 5
  %28 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx35, align 1
  %arrayidx36 = getelementptr i8, ptr %add.ptr, i32 6
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx36, align 1
  %arrayidx37 = getelementptr i8, ptr %add.ptr, i32 7
  %32 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx37, align 1
  %dot11txpn.sroa.10.0.insert.ext = zext i8 %23 to i64
  %dot11txpn.sroa.9.0.insert.ext = zext i8 %25 to i64
  %dot11txpn.sroa.9.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.9.0.insert.ext, 8
  %dot11txpn.sroa.9.0.insert.insert = or i64 %dot11txpn.sroa.9.0.insert.shift, %dot11txpn.sroa.10.0.insert.ext
  %dot11txpn.sroa.8.0.insert.ext = zext i8 %27 to i64
  %dot11txpn.sroa.8.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.8.0.insert.ext, 16
  %dot11txpn.sroa.8.0.insert.insert = or i64 %dot11txpn.sroa.9.0.insert.insert, %dot11txpn.sroa.8.0.insert.shift
  %dot11txpn.sroa.7.0.insert.ext = zext i8 %29 to i64
  %dot11txpn.sroa.7.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.7.0.insert.ext, 24
  %dot11txpn.sroa.7.0.insert.insert = or i64 %dot11txpn.sroa.8.0.insert.insert, %dot11txpn.sroa.7.0.insert.shift
  %dot11txpn.sroa.6.0.insert.ext = zext i8 %31 to i64
  %dot11txpn.sroa.6.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.6.0.insert.ext, 32
  %dot11txpn.sroa.5.0.insert.ext = zext i8 %33 to i64
  %dot11txpn.sroa.5.0.insert.shift = shl nuw nsw i64 %dot11txpn.sroa.5.0.insert.ext, 40
  %dot11txpn.sroa.5.0.insert.mask = or i64 %dot11txpn.sroa.7.0.insert.insert, %dot11txpn.sroa.6.0.insert.shift
  %dot11txpn.sroa.0.0.insert.mask = or i64 %dot11txpn.sroa.5.0.insert.mask, %dot11txpn.sroa.5.0.insert.shift
  %conv40 = trunc i64 %dot11txpn.sroa.9.0.insert.insert to i16
  %dot11txpn.sroa.0.0.insert.insert = lshr i64 %dot11txpn.sroa.0.0.insert.mask, 16
  %conv41 = trunc i64 %dot11txpn.sroa.0.0.insert.insert to i32
  call fastcc void @phase1(ptr noundef nonnull %ttkey, ptr noundef %prwskey.0, ptr noundef %ta, i32 noundef %conv41)
  call fastcc void @phase2(ptr noundef nonnull %rc4key, ptr noundef %prwskey.0, ptr noundef nonnull %ttkey, i16 noundef zeroext %conv40)
  %call48 = call i32 @arc4_setkey(ptr noundef %recv_arc4_ctx, ptr noundef nonnull %rc4key, i32 noundef 16) #10
  call void @arc4_crypt(ptr noundef %recv_arc4_ctx, ptr noundef %add.ptr25, ptr noundef %add.ptr25, i32 noundef %sub30) #10
  %call49 = call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr25, i32 noundef %sub30) #13
  %neg = xor i32 %call49, -1
  %34 = call i32 @llvm.bswap.i32(i32 %neg)
  %crc.sroa.0.0.extract.shift = lshr i32 %34, 24
  %crc.sroa.5.0.extract.shift = lshr i32 %34, 16
  %sub52 = add i32 %sub30, -1
  %arrayidx53 = getelementptr i8, ptr %add.ptr25, i32 %sub52
  %35 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx53, align 1
  %37 = trunc i32 %34 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %37)
  %cmp55.not = icmp eq i8 %36, %37
  br i1 %cmp55.not, label %lor.lhs.false, label %if.end19.if.then80_crit_edge

if.end19.if.then80_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80

lor.lhs.false:                                    ; preds = %if.end19
  %crc.sroa.6.0.extract.shift = lshr i32 %34, 8
  %sub59 = add i32 %sub30, -2
  %arrayidx60 = getelementptr i8, ptr %add.ptr25, i32 %sub59
  %38 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx60, align 1
  %40 = trunc i32 %crc.sroa.6.0.extract.shift to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %40)
  %cmp62.not = icmp eq i8 %39, %40
  br i1 %cmp62.not, label %lor.lhs.false64, label %lor.lhs.false.if.then80_crit_edge

lor.lhs.false.if.then80_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80

lor.lhs.false64:                                  ; preds = %lor.lhs.false
  %sub67 = add i32 %sub30, -3
  %arrayidx68 = getelementptr i8, ptr %add.ptr25, i32 %sub67
  %41 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx68, align 1
  %43 = trunc i32 %crc.sroa.5.0.extract.shift to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %43)
  %cmp70.not = icmp eq i8 %42, %43
  br i1 %cmp70.not, label %lor.lhs.false72, label %lor.lhs.false64.if.then80_crit_edge

lor.lhs.false64.if.then80_crit_edge:              ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80

lor.lhs.false72:                                  ; preds = %lor.lhs.false64
  %sub75 = add i32 %sub30, -4
  %arrayidx76 = getelementptr i8, ptr %add.ptr25, i32 %sub75
  %44 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %crc.sroa.0.0.extract.shift, i32 %conv77)
  %cmp78.not = icmp eq i32 %crc.sroa.0.0.extract.shift, %conv77
  br i1 %cmp78.not, label %lor.lhs.false72.exit_crit_edge, label %lor.lhs.false72.if.then80_crit_edge

lor.lhs.false72.if.then80_crit_edge:              ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80

lor.lhs.false72.exit_crit_edge:                   ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then80:                                        ; preds = %lor.lhs.false72.if.then80_crit_edge, %lor.lhs.false64.if.then80_crit_edge, %lor.lhs.false.if.then80_crit_edge, %if.end19.if.then80_crit_edge
  br label %exit

exit:                                             ; preds = %if.then80, %lor.lhs.false72.exit_crit_edge, %if.then12, %if.then6, %if.then.exit_crit_edge, %entry.exit_crit_edge
  %res.0 = phi i32 [ 0, %if.then80 ], [ 1, %lor.lhs.false72.exit_crit_edge ], [ 0, %if.then12 ], [ 1, %entry.exit_crit_edge ], [ 0, %if.then.exit_crit_edge ], [ 0, %if.then6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ttkey) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rc4key) #10
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_aes_encrypt(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 5
  %0 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf_addr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pkt_offset = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 8
  %2 = ptrtoint ptr %pkt_offset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pkt_offset, align 1
  %mul = shl i8 %3, 3
  %add = add i8 %mul, 32
  %conv3 = zext i8 %add to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv3
  %encrypt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 11
  %4 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %encrypt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp = icmp eq i8 %5, 4
  br i1 %cmp, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %psta = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 40
  %6 = ptrtoint ptr %psta to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %psta, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.end10, label %if.then6.if.then12_crit_edge

if.then6.if.then12_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end10:                                         ; preds = %if.then6
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ra) #10
  %tobool11.not = icmp eq ptr %call, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end10.if.then12_crit_edge

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.then6.if.then12_crit_edge
  %stainfo.0105 = phi ptr [ %call, %if.end10.if.then12_crit_edge ], [ %7, %if.then6.if.then12_crit_edge ]
  %ra13 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %8 = ptrtoint ptr %ra13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ra13, align 4
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %if.else18, label %if.then15

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %dot118021XGrpKeyid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 6
  %11 = ptrtoint ptr %dot118021XGrpKeyid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dot118021XGrpKeyid, align 8
  %arrayidx16 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 7, i32 %12
  br label %if.end20

if.else18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %dot118021x_UncstKey = getelementptr inbounds %struct.sta_info, ptr %stainfo.0105, i32 0, i32 16
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then15
  %prwskey.0 = phi ptr [ %arrayidx16, %if.then15 ], [ %dot118021x_UncstKey, %if.else18 ]
  %nr_frags = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 10
  %13 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nr_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp22110.not = icmp eq i8 %14, 0
  br i1 %cmp22110.not, label %if.end20.cleanup_crit_edge, label %for.body.lr.ph

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end20
  %conv21109 = zext i8 %14 to i32
  %frag_len = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 11
  %hdrlen39 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 7
  %iv_len42 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 12
  %icv_len45 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 13
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv21113 = phi i32 [ %conv21109, %for.body.lr.ph ], [ %conv21, %for.inc.for.body_crit_edge ]
  %pframe.0112 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %pframe.1, %for.inc.for.body_crit_edge ]
  %curfragnum.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %add24, %for.inc.for.body_crit_edge ]
  %add24 = add nuw nsw i32 %curfragnum.0111, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add24, i32 %conv21113)
  %cmp27 = icmp eq i32 %add24, %conv21113
  br i1 %cmp27, label %if.then29, label %if.else38

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_txcmdsz, align 4
  %17 = ptrtoint ptr %hdrlen39 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %hdrlen39, align 2
  %conv30 = zext i16 %18 to i32
  %19 = ptrtoint ptr %iv_len42 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %iv_len42, align 2
  %conv31 = zext i8 %20 to i32
  %21 = ptrtoint ptr %icv_len45 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %icv_len45, align 1
  %conv33 = zext i8 %22 to i32
  %23 = add nuw nsw i32 %conv30, %conv31
  %24 = add nuw nsw i32 %23, %conv33
  %sub34 = sub i32 %16, %24
  tail call fastcc void @aes_cipher(ptr noundef %prwskey.0, i32 noundef %conv30, ptr noundef %pframe.0112, i32 noundef %sub34)
  br label %for.inc

if.else38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %frag_len, align 8
  %27 = ptrtoint ptr %hdrlen39 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hdrlen39, align 2
  %conv40 = zext i16 %28 to i32
  %29 = ptrtoint ptr %iv_len42 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %iv_len42, align 2
  %conv43 = zext i8 %30 to i32
  %31 = ptrtoint ptr %icv_len45 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %icv_len45, align 1
  %conv46 = zext i8 %32 to i32
  %33 = add nuw nsw i32 %conv40, %conv43
  %34 = add nuw nsw i32 %33, %conv46
  %sub47 = sub i32 %26, %34
  tail call fastcc void @aes_cipher(ptr noundef %prwskey.0, i32 noundef %conv40, ptr noundef %pframe.0112, i32 noundef %sub47)
  %35 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %frag_len, align 8
  %add.ptr52 = getelementptr i8, ptr %pframe.0112, i32 %36
  %37 = ptrtoint ptr %add.ptr52 to i32
  %and = and i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp53.not = icmp eq i32 %and, 0
  %add55101 = select i1 %cmp53.not, i32 0, i32 4
  %shr102 = add i32 %add55101, %37
  %shl = and i32 %shr102, -4
  %38 = inttoptr i32 %shl to ptr
  br label %for.inc

for.inc:                                          ; preds = %if.else38, %if.then29
  %pframe.1 = phi ptr [ %pframe.0112, %if.then29 ], [ %38, %if.else38 ]
  %39 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %nr_frags, align 4
  %conv21 = zext i8 %40 to i32
  %cmp22 = icmp ult i32 %add24, %conv21
  br i1 %cmp22, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 1, %if.end20.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aes_cipher(ptr nocapture noundef readonly %key, i32 noundef %hdrlen, ptr noundef %pframe, i32 noundef %plen) unnamed_addr #8 align 64 {
entry:
  %mic_iv = alloca [16 x i8], align 1
  %ctr_preload = alloca [16 x i8], align 1
  %chain_buffer = alloca [16 x i8], align 8
  %aes_out = alloca [16 x i8], align 1
  %padded_buffer = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mic_iv) #10
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctr_preload) #10
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %chain_buffer) #10
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %aes_out) #10
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
  %62 = getelementptr inbounds i8, ptr %mic_iv, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %62, align 1
  %64 = call ptr @memset(ptr %ctr_preload, i32 0, i32 16)
  %65 = call ptr @memset(ptr %chain_buffer, i32 0, i32 16)
  %66 = call ptr @memset(ptr %aes_out, i32 0, i32 16)
  %67 = call ptr @memset(ptr %padded_buffer, i32 0, i32 16)
  %68 = add i32 %hdrlen, -24
  %switch.and = and i32 %68, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %69 = and i16 %61, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %69)
  %switch = icmp eq i16 %69, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %hdrlen)
  %cmp38.not = icmp eq i32 %hdrlen, 26
  %add41 = add i32 %hdrlen, 2
  %spec.select = select i1 %cmp38.not, i32 26, i32 %add41
  %hdrlen.addr.1 = select i1 %switch, i32 %spec.select, i32 %hdrlen
  %arrayidx = getelementptr i8, ptr %pframe, i32 %hdrlen.addr.1
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx, align 1
  %add47 = add i32 %hdrlen.addr.1, 1
  %arrayidx48 = getelementptr i8, ptr %pframe, i32 %add47
  %72 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx48, align 1
  %add50 = add i32 %hdrlen.addr.1, 4
  %arrayidx51 = getelementptr i8, ptr %pframe, i32 %add50
  %74 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx51, align 1
  %add53 = add i32 %hdrlen.addr.1, 5
  %arrayidx54 = getelementptr i8, ptr %pframe, i32 %add53
  %76 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx54, align 1
  %add56 = add i32 %hdrlen.addr.1, 6
  %arrayidx57 = getelementptr i8, ptr %pframe, i32 %add56
  %78 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx57, align 1
  %add59 = add i32 %hdrlen.addr.1, 7
  %arrayidx60 = getelementptr i8, ptr %pframe, i32 %add59
  %80 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx60, align 1
  %82 = ptrtoint ptr %mic_iv to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 89, ptr %mic_iv, align 1
  %tobool.not.i = xor i1 %switch, true
  %or.cond.i = or i1 %switch.selectcmp, %tobool.not.i
  br i1 %or.cond.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx2.i = getelementptr i8, ptr %pframe, i32 30
  %83 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx2.i, align 1
  %85 = and i8 %84, 15
  %86 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %0, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %or.cond56.i = and i1 %switch.selectcmp, %switch
  br i1 %or.cond56.i, label %if.then8.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx9.i = getelementptr i8, ptr %pframe, i32 24
  %87 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx9.i, align 1
  %89 = and i8 %88, 15
  %90 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %0, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %if.end.i.if.end14.i_crit_edge
  br i1 %switch, label %if.end14.i.construct_mic_iv.exit_crit_edge, label %if.then16.i

if.end14.i.construct_mic_iv.exit_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %construct_mic_iv.exit

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %0, align 1
  br label %construct_mic_iv.exit

construct_mic_iv.exit:                            ; preds = %if.then16.i, %if.end14.i.construct_mic_iv.exit_crit_edge
  %arrayidx20.i = getelementptr i8, ptr %pframe, i32 10
  %92 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx20.i, align 1
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %1, align 1
  %arrayidx20.1.i = getelementptr i8, ptr %pframe, i32 11
  %95 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx20.1.i, align 1
  %97 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %2, align 1
  %arrayidx20.2.i = getelementptr i8, ptr %pframe, i32 12
  %98 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx20.2.i, align 1
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %3, align 1
  %arrayidx20.3.i = getelementptr i8, ptr %pframe, i32 13
  %101 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx20.3.i, align 1
  %103 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %4, align 1
  %arrayidx20.4.i = getelementptr i8, ptr %pframe, i32 14
  %104 = ptrtoint ptr %arrayidx20.4.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx20.4.i, align 1
  %106 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %5, align 1
  %arrayidx20.5.i = getelementptr i8, ptr %pframe, i32 15
  %107 = ptrtoint ptr %arrayidx20.5.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx20.5.i, align 1
  %109 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %6, align 1
  %110 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %81, ptr %7, align 1
  %111 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %79, ptr %8, align 1
  %112 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %77, ptr %9, align 1
  %113 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %75, ptr %10, align 1
  %114 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %73, ptr %11, align 1
  %115 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %71, ptr %12, align 1
  %div55.i = lshr i32 %plen, 8
  %conv31.i = trunc i32 %div55.i to i8
  %116 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv31.i, ptr %13, align 1
  %conv33.i = trunc i32 %plen to i8
  %117 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv33.i, ptr %14, align 1
  %sub.i = add i32 %hdrlen.addr.1, -2
  %div.i = sdiv i32 %sub.i, 256
  %conv.i = trunc i32 %div.i to i8
  %conv2.i = trunc i32 %sub.i to i8
  %118 = ptrtoint ptr %pframe to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %pframe, align 1
  %120 = and i8 %119, -49
  %arrayidx8.i = getelementptr i8, ptr %pframe, i32 1
  %121 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx8.i, align 1
  %123 = and i8 %122, -57
  %arrayidx13.i2 = getelementptr i8, ptr %pframe, i32 4
  %124 = ptrtoint ptr %arrayidx13.i2 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx13.i2, align 1
  %arrayidx15.i = getelementptr i8, ptr %pframe, i32 5
  %126 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx15.i, align 1
  %arrayidx17.i3 = getelementptr i8, ptr %pframe, i32 6
  %128 = ptrtoint ptr %arrayidx17.i3 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx17.i3, align 1
  %arrayidx19.i = getelementptr i8, ptr %pframe, i32 7
  %130 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx19.i, align 1
  %arrayidx21.i5 = getelementptr i8, ptr %pframe, i32 8
  %132 = ptrtoint ptr %arrayidx21.i5 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx21.i5, align 1
  %arrayidx23.i = getelementptr i8, ptr %pframe, i32 9
  %134 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx23.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %pframe, i32 16
  %136 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx1.i, align 1
  %arrayidx3.i10 = getelementptr i8, ptr %pframe, i32 17
  %138 = ptrtoint ptr %arrayidx3.i10 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx3.i10, align 1
  %arrayidx5.i = getelementptr i8, ptr %pframe, i32 18
  %140 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx5.i, align 1
  %arrayidx7.i12 = getelementptr i8, ptr %pframe, i32 19
  %142 = ptrtoint ptr %arrayidx7.i12 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx7.i12, align 1
  %arrayidx9.i14 = getelementptr i8, ptr %pframe, i32 20
  %144 = ptrtoint ptr %arrayidx9.i14 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx9.i14, align 1
  %arrayidx11.i = getelementptr i8, ptr %pframe, i32 21
  %146 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx11.i, align 1
  %or.cond.i20 = or i1 %switch.selectcmp, %switch
  br i1 %or.cond.i20, label %construct_mic_iv.exit.if.end.i28_crit_edge, label %for.body18.preheader.i

construct_mic_iv.exit.if.end.i28_crit_edge:       ; preds = %construct_mic_iv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i28

for.body18.preheader.i:                           ; preds = %construct_mic_iv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx19.i21 = getelementptr i8, ptr %pframe, i32 24
  %148 = ptrtoint ptr %arrayidx19.i21 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx19.i21, align 1
  %arrayidx19.1.i = getelementptr i8, ptr %pframe, i32 25
  %150 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx19.1.i, align 1
  %arrayidx19.2.i = getelementptr i8, ptr %pframe, i32 26
  %152 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx19.2.i, align 1
  %arrayidx19.3.i = getelementptr i8, ptr %pframe, i32 27
  %154 = ptrtoint ptr %arrayidx19.3.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx19.3.i, align 1
  %arrayidx19.4.i = getelementptr i8, ptr %pframe, i32 28
  %156 = ptrtoint ptr %arrayidx19.4.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx19.4.i, align 1
  %arrayidx19.5.i = getelementptr i8, ptr %pframe, i32 29
  %158 = ptrtoint ptr %arrayidx19.5.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx19.5.i, align 1
  br label %if.end.i28

if.end.i28:                                       ; preds = %for.body18.preheader.i, %construct_mic_iv.exit.if.end.i28_crit_edge
  %mic_header2.sroa.28.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i28_crit_edge ], [ %149, %for.body18.preheader.i ]
  %mic_header2.sroa.33.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i28_crit_edge ], [ %151, %for.body18.preheader.i ]
  %mic_header2.sroa.38.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i28_crit_edge ], [ %153, %for.body18.preheader.i ]
  %mic_header2.sroa.42.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i28_crit_edge ], [ %155, %for.body18.preheader.i ]
  %mic_header2.sroa.46.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i28_crit_edge ], [ %157, %for.body18.preheader.i ]
  %mic_header2.sroa.50.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i28_crit_edge ], [ %159, %for.body18.preheader.i ]
  br i1 %or.cond56.i, label %if.then28.i, label %if.end.i28.if.end37.i_crit_edge

if.end.i28.if.end37.i_crit_edge:                  ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then28.i:                                      ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx29.i29 = getelementptr i8, ptr %pframe, i32 24
  %160 = ptrtoint ptr %arrayidx29.i29 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx29.i29, align 1
  %162 = and i8 %161, 15
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then28.i, %if.end.i28.if.end37.i_crit_edge
  %mic_header2.sroa.28.1 = phi i8 [ %162, %if.then28.i ], [ %mic_header2.sroa.28.0, %if.end.i28.if.end37.i_crit_edge ]
  %mic_header2.sroa.33.1 = phi i8 [ 0, %if.then28.i ], [ %mic_header2.sroa.33.0, %if.end.i28.if.end37.i_crit_edge ]
  br i1 %or.cond.i, label %if.end37.i.construct_mic_header2.exit_crit_edge, label %for.body45.preheader.i

if.end37.i.construct_mic_header2.exit_crit_edge:  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %construct_mic_header2.exit

for.body45.preheader.i:                           ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx47.i = getelementptr i8, ptr %pframe, i32 24
  %163 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx47.i, align 1
  %arrayidx47.1.i = getelementptr i8, ptr %pframe, i32 25
  %165 = ptrtoint ptr %arrayidx47.1.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx47.1.i, align 1
  %arrayidx47.2.i = getelementptr i8, ptr %pframe, i32 26
  %167 = ptrtoint ptr %arrayidx47.2.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx47.2.i, align 1
  %arrayidx47.3.i = getelementptr i8, ptr %pframe, i32 27
  %169 = ptrtoint ptr %arrayidx47.3.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx47.3.i, align 1
  %arrayidx47.4.i = getelementptr i8, ptr %pframe, i32 28
  %171 = ptrtoint ptr %arrayidx47.4.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx47.4.i, align 1
  %arrayidx47.5.i = getelementptr i8, ptr %pframe, i32 29
  %173 = ptrtoint ptr %arrayidx47.5.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx47.5.i, align 1
  %arrayidx53.i = getelementptr i8, ptr %pframe, i32 30
  %175 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx53.i, align 1
  %177 = and i8 %176, 15
  br label %construct_mic_header2.exit

construct_mic_header2.exit:                       ; preds = %for.body45.preheader.i, %if.end37.i.construct_mic_header2.exit_crit_edge
  %mic_header2.sroa.28.2 = phi i8 [ %mic_header2.sroa.28.1, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %164, %for.body45.preheader.i ]
  %mic_header2.sroa.33.2 = phi i8 [ %mic_header2.sroa.33.1, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %166, %for.body45.preheader.i ]
  %mic_header2.sroa.38.1 = phi i8 [ %mic_header2.sroa.38.0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %168, %for.body45.preheader.i ]
  %mic_header2.sroa.42.1 = phi i8 [ %mic_header2.sroa.42.0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %170, %for.body45.preheader.i ]
  %mic_header2.sroa.46.1 = phi i8 [ %mic_header2.sroa.46.0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %172, %for.body45.preheader.i ]
  %mic_header2.sroa.50.1 = phi i8 [ %mic_header2.sroa.50.0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %174, %for.body45.preheader.i ]
  %mic_header2.sroa.54.0 = phi i8 [ 0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %177, %for.body45.preheader.i ]
  %rem = and i32 %plen, 15
  %div1 = lshr i32 %plen, 4
  %add66 = add i32 %hdrlen.addr.1, 8
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %mic_iv, ptr noundef nonnull %aes_out)
  %178 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %aes_out, align 1
  %xor9.i = xor i8 %179, %conv.i
  %180 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %xor9.i, ptr %chain_buffer, align 8
  %181 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %45, align 1
  %xor9.1.i = xor i8 %182, %conv2.i
  %183 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %xor9.1.i, ptr %30, align 1
  %184 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %46, align 1
  %xor9.2.i = xor i8 %185, %120
  %186 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %xor9.2.i, ptr %31, align 2
  %187 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %47, align 1
  %xor9.3.i = xor i8 %188, %123
  %189 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %xor9.3.i, ptr %32, align 1
  %190 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %48, align 1
  %xor9.4.i = xor i8 %191, %125
  %192 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %xor9.4.i, ptr %33, align 4
  %193 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %49, align 1
  %xor9.5.i = xor i8 %194, %127
  %195 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %xor9.5.i, ptr %34, align 1
  %196 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %50, align 1
  %xor9.6.i = xor i8 %197, %129
  %198 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %xor9.6.i, ptr %35, align 2
  %199 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %51, align 1
  %xor9.7.i = xor i8 %200, %131
  %201 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %xor9.7.i, ptr %36, align 1
  %202 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %52, align 1
  %xor9.8.i = xor i8 %203, %133
  %204 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %xor9.8.i, ptr %37, align 8
  %205 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %53, align 1
  %xor9.9.i = xor i8 %206, %135
  %207 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %xor9.9.i, ptr %38, align 1
  %208 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %54, align 1
  %xor9.10.i = xor i8 %209, %93
  %210 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %xor9.10.i, ptr %39, align 2
  %211 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %55, align 1
  %xor9.11.i = xor i8 %212, %96
  %213 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %xor9.11.i, ptr %40, align 1
  %214 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %56, align 1
  %xor9.12.i = xor i8 %215, %99
  %216 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %xor9.12.i, ptr %41, align 4
  %217 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %57, align 1
  %xor9.13.i = xor i8 %218, %102
  %219 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %xor9.13.i, ptr %42, align 1
  %220 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %58, align 1
  %xor9.14.i = xor i8 %221, %105
  %222 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %xor9.14.i, ptr %43, align 2
  %223 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %59, align 1
  %xor9.15.i = xor i8 %224, %108
  %225 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %xor9.15.i, ptr %44, align 1
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %chain_buffer, ptr noundef nonnull %aes_out)
  %226 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %aes_out, align 1
  %xor9.i32 = xor i8 %227, %137
  %228 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %xor9.i32, ptr %chain_buffer, align 8
  %229 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %45, align 1
  %xor9.1.i35 = xor i8 %230, %139
  %231 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %xor9.1.i35, ptr %30, align 1
  %232 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %46, align 1
  %xor9.2.i39 = xor i8 %233, %141
  %234 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %xor9.2.i39, ptr %31, align 2
  %235 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %47, align 1
  %xor9.3.i43 = xor i8 %236, %143
  %237 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %xor9.3.i43, ptr %32, align 1
  %238 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %48, align 1
  %xor9.4.i47 = xor i8 %239, %145
  %240 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %xor9.4.i47, ptr %33, align 4
  %241 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %49, align 1
  %xor9.5.i51 = xor i8 %242, %147
  %243 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %xor9.5.i51, ptr %34, align 1
  %244 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %50, align 1
  %246 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %245, ptr %35, align 2
  %247 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %51, align 1
  %249 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %248, ptr %36, align 1
  %250 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %52, align 1
  %xor9.8.i63 = xor i8 %251, %mic_header2.sroa.28.2
  %252 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %xor9.8.i63, ptr %37, align 8
  %253 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %53, align 1
  %xor9.9.i67 = xor i8 %254, %mic_header2.sroa.33.2
  %255 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %xor9.9.i67, ptr %38, align 1
  %256 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %54, align 1
  %xor9.10.i71 = xor i8 %257, %mic_header2.sroa.38.1
  %258 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %xor9.10.i71, ptr %39, align 2
  %259 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %55, align 1
  %xor9.11.i75 = xor i8 %260, %mic_header2.sroa.42.1
  %261 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %xor9.11.i75, ptr %40, align 1
  %262 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %56, align 1
  %xor9.12.i79 = xor i8 %263, %mic_header2.sroa.46.1
  %264 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %xor9.12.i79, ptr %41, align 4
  %265 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %57, align 1
  %xor9.13.i83 = xor i8 %266, %mic_header2.sroa.50.1
  %267 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %xor9.13.i83, ptr %42, align 1
  %268 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %58, align 1
  %xor9.14.i87 = xor i8 %269, %mic_header2.sroa.54.0
  %270 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %xor9.14.i87, ptr %43, align 2
  %271 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %59, align 1
  %273 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %272, ptr %44, align 1
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %chain_buffer, ptr noundef nonnull %aes_out)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %plen)
  %cmp79535.not = icmp ult i32 %plen, 16
  br i1 %cmp79535.not, label %construct_mic_header2.exit.for.end_crit_edge, label %for.body.preheader

construct_mic_header2.exit.for.end_crit_edge:     ; preds = %construct_mic_header2.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %construct_mic_header2.exit
  %umax = call i32 @llvm.umax.i32(i32 %div1, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %payload_index.0537 = phi i32 [ %add84, %for.body.for.body_crit_edge ], [ %add66, %for.body.preheader ]
  %i.0536 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx82 = getelementptr i8, ptr %pframe, i32 %payload_index.0537
  %274 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %aes_out, align 1
  %276 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx82, align 1
  %xor9.i93 = xor i8 %277, %275
  %278 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %xor9.i93, ptr %chain_buffer, align 8
  %279 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %45, align 1
  %arrayidx1.1.i95 = getelementptr i8, ptr %arrayidx82, i32 1
  %281 = ptrtoint ptr %arrayidx1.1.i95 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx1.1.i95, align 1
  %xor9.1.i96 = xor i8 %282, %280
  %283 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %xor9.1.i96, ptr %30, align 1
  %284 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %46, align 1
  %arrayidx1.2.i99 = getelementptr i8, ptr %arrayidx82, i32 2
  %286 = ptrtoint ptr %arrayidx1.2.i99 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx1.2.i99, align 1
  %xor9.2.i100 = xor i8 %287, %285
  %288 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %xor9.2.i100, ptr %31, align 2
  %289 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %47, align 1
  %arrayidx1.3.i103 = getelementptr i8, ptr %arrayidx82, i32 3
  %291 = ptrtoint ptr %arrayidx1.3.i103 to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %arrayidx1.3.i103, align 1
  %xor9.3.i104 = xor i8 %292, %290
  %293 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %xor9.3.i104, ptr %32, align 1
  %294 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %48, align 1
  %arrayidx1.4.i107 = getelementptr i8, ptr %arrayidx82, i32 4
  %296 = ptrtoint ptr %arrayidx1.4.i107 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %arrayidx1.4.i107, align 1
  %xor9.4.i108 = xor i8 %297, %295
  %298 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %xor9.4.i108, ptr %33, align 4
  %299 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %49, align 1
  %arrayidx1.5.i111 = getelementptr i8, ptr %arrayidx82, i32 5
  %301 = ptrtoint ptr %arrayidx1.5.i111 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx1.5.i111, align 1
  %xor9.5.i112 = xor i8 %302, %300
  %303 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %xor9.5.i112, ptr %34, align 1
  %304 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %50, align 1
  %arrayidx1.6.i115 = getelementptr i8, ptr %arrayidx82, i32 6
  %306 = ptrtoint ptr %arrayidx1.6.i115 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %arrayidx1.6.i115, align 1
  %xor9.6.i116 = xor i8 %307, %305
  %308 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %xor9.6.i116, ptr %35, align 2
  %309 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %51, align 1
  %arrayidx1.7.i119 = getelementptr i8, ptr %arrayidx82, i32 7
  %311 = ptrtoint ptr %arrayidx1.7.i119 to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %arrayidx1.7.i119, align 1
  %xor9.7.i120 = xor i8 %312, %310
  %313 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %xor9.7.i120, ptr %36, align 1
  %314 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %52, align 1
  %arrayidx1.8.i123 = getelementptr i8, ptr %arrayidx82, i32 8
  %316 = ptrtoint ptr %arrayidx1.8.i123 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx1.8.i123, align 1
  %xor9.8.i124 = xor i8 %317, %315
  %318 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 %xor9.8.i124, ptr %37, align 8
  %319 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %53, align 1
  %arrayidx1.9.i127 = getelementptr i8, ptr %arrayidx82, i32 9
  %321 = ptrtoint ptr %arrayidx1.9.i127 to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %arrayidx1.9.i127, align 1
  %xor9.9.i128 = xor i8 %322, %320
  %323 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 %xor9.9.i128, ptr %38, align 1
  %324 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %54, align 1
  %arrayidx1.10.i131 = getelementptr i8, ptr %arrayidx82, i32 10
  %326 = ptrtoint ptr %arrayidx1.10.i131 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx1.10.i131, align 1
  %xor9.10.i132 = xor i8 %327, %325
  %328 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %xor9.10.i132, ptr %39, align 2
  %329 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %55, align 1
  %arrayidx1.11.i135 = getelementptr i8, ptr %arrayidx82, i32 11
  %331 = ptrtoint ptr %arrayidx1.11.i135 to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx1.11.i135, align 1
  %xor9.11.i136 = xor i8 %332, %330
  %333 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 %xor9.11.i136, ptr %40, align 1
  %334 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %56, align 1
  %arrayidx1.12.i139 = getelementptr i8, ptr %arrayidx82, i32 12
  %336 = ptrtoint ptr %arrayidx1.12.i139 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %arrayidx1.12.i139, align 1
  %xor9.12.i140 = xor i8 %337, %335
  %338 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %xor9.12.i140, ptr %41, align 4
  %339 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %57, align 1
  %arrayidx1.13.i143 = getelementptr i8, ptr %arrayidx82, i32 13
  %341 = ptrtoint ptr %arrayidx1.13.i143 to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %arrayidx1.13.i143, align 1
  %xor9.13.i144 = xor i8 %342, %340
  %343 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 %xor9.13.i144, ptr %42, align 1
  %344 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %58, align 1
  %arrayidx1.14.i147 = getelementptr i8, ptr %arrayidx82, i32 14
  %346 = ptrtoint ptr %arrayidx1.14.i147 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx1.14.i147, align 1
  %xor9.14.i148 = xor i8 %347, %345
  %348 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %xor9.14.i148, ptr %43, align 2
  %349 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %59, align 1
  %arrayidx1.15.i151 = getelementptr i8, ptr %arrayidx82, i32 15
  %351 = ptrtoint ptr %arrayidx1.15.i151 to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %arrayidx1.15.i151, align 1
  %xor9.15.i152 = xor i8 %352, %350
  %353 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 %xor9.15.i152, ptr %44, align 1
  %add84 = add i32 %payload_index.0537, 16
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %chain_buffer, ptr noundef nonnull %aes_out)
  %inc = add nuw nsw i32 %i.0536, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %construct_mic_header2.exit.for.end_crit_edge
  %payload_index.0.lcssa = phi i32 [ %add66, %construct_mic_header2.exit.for.end_crit_edge ], [ %add84, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp87.not = icmp eq i32 %rem, 0
  br i1 %cmp87.not, label %for.end.if.end113_crit_edge, label %for.end107

for.end.if.end113_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

for.end107:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %uglygep = getelementptr i8, ptr %pframe, i32 %payload_index.0.lcssa
  %354 = sub nuw nsw i32 16, %rem
  %355 = getelementptr i8, ptr %padded_buffer, i32 %rem
  %356 = call ptr @memset(ptr %355, i32 0, i32 %354)
  %357 = call ptr @memcpy(ptr %padded_buffer, ptr %uglygep, i32 %rem)
  %358 = add i32 %payload_index.0.lcssa, %rem
  %359 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %aes_out, align 1
  %361 = ptrtoint ptr %padded_buffer to i32
  call void @__asan_load1_noabort(i32 %361)
  %padded_buffer.0. = load i8, ptr %padded_buffer, align 8
  %xor9.i154 = xor i8 %padded_buffer.0., %360
  %362 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %xor9.i154, ptr %chain_buffer, align 8
  %363 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %45, align 1
  %365 = ptrtoint ptr %padded_buffer.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %365)
  %padded_buffer.1. = load i8, ptr %padded_buffer.1..sroa_idx, align 1
  %xor9.1.i157 = xor i8 %padded_buffer.1., %364
  %366 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 %xor9.1.i157, ptr %30, align 1
  %367 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %46, align 1
  %369 = ptrtoint ptr %padded_buffer.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %369)
  %padded_buffer.2. = load i8, ptr %padded_buffer.2..sroa_idx, align 2
  %xor9.2.i161 = xor i8 %padded_buffer.2., %368
  %370 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %xor9.2.i161, ptr %31, align 2
  %371 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %47, align 1
  %373 = ptrtoint ptr %padded_buffer.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %373)
  %padded_buffer.3. = load i8, ptr %padded_buffer.3..sroa_idx, align 1
  %xor9.3.i165 = xor i8 %padded_buffer.3., %372
  %374 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 %xor9.3.i165, ptr %32, align 1
  %375 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %48, align 1
  %377 = ptrtoint ptr %padded_buffer.4..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %377)
  %padded_buffer.4. = load i8, ptr %padded_buffer.4..sroa_idx, align 4
  %xor9.4.i169 = xor i8 %padded_buffer.4., %376
  %378 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 %xor9.4.i169, ptr %33, align 4
  %379 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %49, align 1
  %381 = ptrtoint ptr %padded_buffer.5..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %381)
  %padded_buffer.5. = load i8, ptr %padded_buffer.5..sroa_idx, align 1
  %xor9.5.i173 = xor i8 %padded_buffer.5., %380
  %382 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 %xor9.5.i173, ptr %34, align 1
  %383 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %50, align 1
  %385 = ptrtoint ptr %padded_buffer.6..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %385)
  %padded_buffer.6. = load i8, ptr %padded_buffer.6..sroa_idx, align 2
  %xor9.6.i177 = xor i8 %padded_buffer.6., %384
  %386 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 %xor9.6.i177, ptr %35, align 2
  %387 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %51, align 1
  %389 = ptrtoint ptr %padded_buffer.7..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %389)
  %padded_buffer.7. = load i8, ptr %padded_buffer.7..sroa_idx, align 1
  %xor9.7.i181 = xor i8 %padded_buffer.7., %388
  %390 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 %xor9.7.i181, ptr %36, align 1
  %391 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %52, align 1
  %393 = ptrtoint ptr %padded_buffer.8..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %393)
  %padded_buffer.8. = load i8, ptr %padded_buffer.8..sroa_idx, align 8
  %xor9.8.i185 = xor i8 %padded_buffer.8., %392
  %394 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 %xor9.8.i185, ptr %37, align 8
  %395 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %53, align 1
  %397 = ptrtoint ptr %padded_buffer.9..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %397)
  %padded_buffer.9. = load i8, ptr %padded_buffer.9..sroa_idx, align 1
  %xor9.9.i189 = xor i8 %padded_buffer.9., %396
  %398 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 %xor9.9.i189, ptr %38, align 1
  %399 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %54, align 1
  %401 = ptrtoint ptr %padded_buffer.10..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %401)
  %padded_buffer.10. = load i8, ptr %padded_buffer.10..sroa_idx, align 2
  %xor9.10.i193 = xor i8 %padded_buffer.10., %400
  %402 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 %xor9.10.i193, ptr %39, align 2
  %403 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %55, align 1
  %405 = ptrtoint ptr %padded_buffer.11..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %405)
  %padded_buffer.11. = load i8, ptr %padded_buffer.11..sroa_idx, align 1
  %xor9.11.i197 = xor i8 %padded_buffer.11., %404
  %406 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 %xor9.11.i197, ptr %40, align 1
  %407 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %56, align 1
  %409 = ptrtoint ptr %padded_buffer.12..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %409)
  %padded_buffer.12. = load i8, ptr %padded_buffer.12..sroa_idx, align 4
  %xor9.12.i201 = xor i8 %padded_buffer.12., %408
  %410 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 %xor9.12.i201, ptr %41, align 4
  %411 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %57, align 1
  %413 = ptrtoint ptr %padded_buffer.13..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %413)
  %padded_buffer.13. = load i8, ptr %padded_buffer.13..sroa_idx, align 1
  %xor9.13.i205 = xor i8 %padded_buffer.13., %412
  %414 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 %xor9.13.i205, ptr %42, align 1
  %415 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %58, align 1
  %417 = ptrtoint ptr %padded_buffer.14..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %417)
  %padded_buffer.14. = load i8, ptr %padded_buffer.14..sroa_idx, align 2
  %xor9.14.i209 = xor i8 %padded_buffer.14., %416
  %418 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 %xor9.14.i209, ptr %43, align 2
  %419 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %59, align 1
  %421 = ptrtoint ptr %padded_buffer.15..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %421)
  %padded_buffer.15. = load i8, ptr %padded_buffer.15..sroa_idx, align 1
  %xor9.15.i213 = xor i8 %padded_buffer.15., %420
  %422 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 %xor9.15.i213, ptr %44, align 1
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %chain_buffer, ptr noundef nonnull %aes_out)
  br label %if.end113

if.end113:                                        ; preds = %for.end107, %for.end.if.end113_crit_edge
  %payload_index.2 = phi i32 [ %358, %for.end107 ], [ %payload_index.0.lcssa, %for.end.if.end113_crit_edge ]
  %423 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %423)
  %mic.sroa.0.0.copyload = load i8, ptr %aes_out, align 1
  %424 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %424)
  %mic.sroa.5.0.copyload = load i8, ptr %45, align 1
  %425 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %425)
  %mic.sroa.6.0.copyload = load i8, ptr %46, align 1
  %426 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %426)
  %mic.sroa.7.0.copyload = load i8, ptr %47, align 1
  %427 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %427)
  %mic.sroa.8.0.copyload = load i8, ptr %48, align 1
  %428 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %428)
  %mic.sroa.9.0.copyload = load i8, ptr %49, align 1
  %429 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %429)
  %mic.sroa.10.0.copyload = load i8, ptr %50, align 1
  %430 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %430)
  %mic.sroa.11.0.copyload = load i8, ptr %51, align 1
  %uglygep562 = getelementptr i8, ptr %pframe, i32 %payload_index.2
  %431 = ptrtoint ptr %uglygep562 to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 %mic.sroa.0.0.copyload, ptr %uglygep562, align 1
  %mic.sroa.5.0.uglygep562.sroa_idx = getelementptr inbounds i8, ptr %uglygep562, i32 1
  %432 = ptrtoint ptr %mic.sroa.5.0.uglygep562.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 %mic.sroa.5.0.copyload, ptr %mic.sroa.5.0.uglygep562.sroa_idx, align 1
  %mic.sroa.6.0.uglygep562.sroa_idx = getelementptr inbounds i8, ptr %uglygep562, i32 2
  %433 = ptrtoint ptr %mic.sroa.6.0.uglygep562.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 %mic.sroa.6.0.copyload, ptr %mic.sroa.6.0.uglygep562.sroa_idx, align 1
  %mic.sroa.7.0.uglygep562.sroa_idx = getelementptr inbounds i8, ptr %uglygep562, i32 3
  %434 = ptrtoint ptr %mic.sroa.7.0.uglygep562.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 %mic.sroa.7.0.copyload, ptr %mic.sroa.7.0.uglygep562.sroa_idx, align 1
  %mic.sroa.8.0.uglygep562.sroa_idx = getelementptr inbounds i8, ptr %uglygep562, i32 4
  %435 = ptrtoint ptr %mic.sroa.8.0.uglygep562.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 %mic.sroa.8.0.copyload, ptr %mic.sroa.8.0.uglygep562.sroa_idx, align 1
  %mic.sroa.9.0.uglygep562.sroa_idx = getelementptr inbounds i8, ptr %uglygep562, i32 5
  %436 = ptrtoint ptr %mic.sroa.9.0.uglygep562.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 %mic.sroa.9.0.copyload, ptr %mic.sroa.9.0.uglygep562.sroa_idx, align 1
  %mic.sroa.10.0.uglygep562.sroa_idx = getelementptr inbounds i8, ptr %uglygep562, i32 6
  %437 = ptrtoint ptr %mic.sroa.10.0.uglygep562.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %437)
  store i8 %mic.sroa.10.0.copyload, ptr %mic.sroa.10.0.uglygep562.sroa_idx, align 1
  %mic.sroa.11.0.uglygep562.sroa_idx = getelementptr inbounds i8, ptr %uglygep562, i32 7
  %438 = ptrtoint ptr %mic.sroa.11.0.uglygep562.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %438)
  store i8 %mic.sroa.11.0.copyload, ptr %mic.sroa.11.0.uglygep562.sroa_idx, align 1
  br i1 %cmp79535.not, label %if.end113.for.end158_crit_edge, label %for.body137.lr.ph

if.end113.for.end158_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end158

for.body137.lr.ph:                                ; preds = %if.end113
  %arrayidx3.i217 = getelementptr i8, ptr %pframe, i32 30
  %arrayidx10.i222 = getelementptr i8, ptr %pframe, i32 24
  %umax564 = call i32 @llvm.umax.i32(i32 %div1, i32 1)
  br label %for.body137

for.body137:                                      ; preds = %construct_ctr_preload.exit.for.body137_crit_edge, %for.body137.lr.ph
  %payload_index.3549 = phi i32 [ %add66, %for.body137.lr.ph ], [ %556, %construct_ctr_preload.exit.for.body137_crit_edge ]
  %i.1548 = phi i32 [ 0, %for.body137.lr.ph ], [ %add140, %construct_ctr_preload.exit.for.body137_crit_edge ]
  %add140 = add nuw nsw i32 %i.1548, 1
  %439 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 0, ptr %15, align 1
  %440 = ptrtoint ptr %ctr_preload to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 1, ptr %ctr_preload, align 1
  br i1 %or.cond.i, label %for.body137.if.end.i221_crit_edge, label %if.then.i219

for.body137.if.end.i221_crit_edge:                ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i221

if.then.i219:                                     ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #12
  %441 = ptrtoint ptr %arrayidx3.i217 to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %arrayidx3.i217, align 1
  %443 = and i8 %442, 15
  %444 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %444)
  store i8 %443, ptr %15, align 1
  br label %if.end.i221

if.end.i221:                                      ; preds = %if.then.i219, %for.body137.if.end.i221_crit_edge
  br i1 %or.cond56.i, label %if.then9.i, label %if.end.i221.construct_ctr_preload.exit_crit_edge

if.end.i221.construct_ctr_preload.exit_crit_edge: ; preds = %if.end.i221
  call void @__sanitizer_cov_trace_pc() #12
  br label %construct_ctr_preload.exit

if.then9.i:                                       ; preds = %if.end.i221
  call void @__sanitizer_cov_trace_pc() #12
  %445 = ptrtoint ptr %arrayidx10.i222 to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %arrayidx10.i222, align 1
  %447 = and i8 %446, 15
  %448 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 %447, ptr %15, align 1
  br label %construct_ctr_preload.exit

construct_ctr_preload.exit:                       ; preds = %if.then9.i, %if.end.i221.construct_ctr_preload.exit_crit_edge
  %449 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %arrayidx20.i, align 1
  %451 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 %450, ptr %16, align 1
  %452 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %arrayidx20.1.i, align 1
  %454 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %454)
  store i8 %453, ptr %17, align 1
  %455 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_load1_noabort(i32 %455)
  %456 = load i8, ptr %arrayidx20.2.i, align 1
  %457 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %457)
  store i8 %456, ptr %18, align 1
  %458 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %arrayidx20.3.i, align 1
  %460 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %460)
  store i8 %459, ptr %19, align 1
  %461 = ptrtoint ptr %arrayidx20.4.i to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %arrayidx20.4.i, align 1
  %463 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %463)
  store i8 %462, ptr %20, align 1
  %464 = ptrtoint ptr %arrayidx20.5.i to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %arrayidx20.5.i, align 1
  %466 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %466)
  store i8 %465, ptr %21, align 1
  %467 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 %81, ptr %22, align 1
  %468 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 %79, ptr %23, align 1
  %469 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %469)
  store i8 %77, ptr %24, align 1
  %470 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 %75, ptr %25, align 1
  %471 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 %73, ptr %26, align 1
  %472 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %472)
  store i8 %71, ptr %27, align 1
  %div.i238.udiv613 = lshr i32 %add140, 8
  %conv34.i = trunc i32 %div.i238.udiv613 to i8
  %473 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 %conv34.i, ptr %28, align 1
  %conv36.i = trunc i32 %add140 to i8
  %474 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %474)
  store i8 %conv36.i, ptr %29, align 1
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %ctr_preload, ptr noundef nonnull %aes_out)
  %arrayidx144 = getelementptr i8, ptr %pframe, i32 %payload_index.3549
  %475 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %475)
  %476 = load i8, ptr %aes_out, align 1
  %477 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %arrayidx144, align 1
  %xor9.i240 = xor i8 %478, %476
  %479 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 %xor9.i240, ptr %chain_buffer, align 8
  %480 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %45, align 1
  %arrayidx1.1.i242 = getelementptr i8, ptr %arrayidx144, i32 1
  %482 = ptrtoint ptr %arrayidx1.1.i242 to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %arrayidx1.1.i242, align 1
  %xor9.1.i243 = xor i8 %483, %481
  %484 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 %xor9.1.i243, ptr %30, align 1
  %485 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %46, align 1
  %arrayidx1.2.i246 = getelementptr i8, ptr %arrayidx144, i32 2
  %487 = ptrtoint ptr %arrayidx1.2.i246 to i32
  call void @__asan_load1_noabort(i32 %487)
  %488 = load i8, ptr %arrayidx1.2.i246, align 1
  %xor9.2.i247 = xor i8 %488, %486
  %489 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %489)
  store i8 %xor9.2.i247, ptr %31, align 2
  %490 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %490)
  %491 = load i8, ptr %47, align 1
  %arrayidx1.3.i250 = getelementptr i8, ptr %arrayidx144, i32 3
  %492 = ptrtoint ptr %arrayidx1.3.i250 to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %arrayidx1.3.i250, align 1
  %xor9.3.i251 = xor i8 %493, %491
  %494 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %494)
  store i8 %xor9.3.i251, ptr %32, align 1
  %495 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %48, align 1
  %arrayidx1.4.i254 = getelementptr i8, ptr %arrayidx144, i32 4
  %497 = ptrtoint ptr %arrayidx1.4.i254 to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %arrayidx1.4.i254, align 1
  %xor9.4.i255 = xor i8 %498, %496
  %499 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 %xor9.4.i255, ptr %33, align 4
  %500 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %49, align 1
  %arrayidx1.5.i258 = getelementptr i8, ptr %arrayidx144, i32 5
  %502 = ptrtoint ptr %arrayidx1.5.i258 to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %arrayidx1.5.i258, align 1
  %xor9.5.i259 = xor i8 %503, %501
  %504 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 %xor9.5.i259, ptr %34, align 1
  %505 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %50, align 1
  %arrayidx1.6.i262 = getelementptr i8, ptr %arrayidx144, i32 6
  %507 = ptrtoint ptr %arrayidx1.6.i262 to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %arrayidx1.6.i262, align 1
  %xor9.6.i263 = xor i8 %508, %506
  %509 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %509)
  store i8 %xor9.6.i263, ptr %35, align 2
  %510 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %51, align 1
  %arrayidx1.7.i266 = getelementptr i8, ptr %arrayidx144, i32 7
  %512 = ptrtoint ptr %arrayidx1.7.i266 to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %arrayidx1.7.i266, align 1
  %xor9.7.i267 = xor i8 %513, %511
  %514 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 %xor9.7.i267, ptr %36, align 1
  %515 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %52, align 1
  %arrayidx1.8.i270 = getelementptr i8, ptr %arrayidx144, i32 8
  %517 = ptrtoint ptr %arrayidx1.8.i270 to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %arrayidx1.8.i270, align 1
  %xor9.8.i271 = xor i8 %518, %516
  %519 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %519)
  store i8 %xor9.8.i271, ptr %37, align 8
  %520 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %520)
  %521 = load i8, ptr %53, align 1
  %arrayidx1.9.i274 = getelementptr i8, ptr %arrayidx144, i32 9
  %522 = ptrtoint ptr %arrayidx1.9.i274 to i32
  call void @__asan_load1_noabort(i32 %522)
  %523 = load i8, ptr %arrayidx1.9.i274, align 1
  %xor9.9.i275 = xor i8 %523, %521
  %524 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %524)
  store i8 %xor9.9.i275, ptr %38, align 1
  %525 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %525)
  %526 = load i8, ptr %54, align 1
  %arrayidx1.10.i278 = getelementptr i8, ptr %arrayidx144, i32 10
  %527 = ptrtoint ptr %arrayidx1.10.i278 to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %arrayidx1.10.i278, align 1
  %xor9.10.i279 = xor i8 %528, %526
  %529 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %529)
  store i8 %xor9.10.i279, ptr %39, align 2
  %530 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %55, align 1
  %arrayidx1.11.i282 = getelementptr i8, ptr %arrayidx144, i32 11
  %532 = ptrtoint ptr %arrayidx1.11.i282 to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %arrayidx1.11.i282, align 1
  %xor9.11.i283 = xor i8 %533, %531
  %534 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 %xor9.11.i283, ptr %40, align 1
  %535 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %535)
  %536 = load i8, ptr %56, align 1
  %arrayidx1.12.i286 = getelementptr i8, ptr %arrayidx144, i32 12
  %537 = ptrtoint ptr %arrayidx1.12.i286 to i32
  call void @__asan_load1_noabort(i32 %537)
  %538 = load i8, ptr %arrayidx1.12.i286, align 1
  %xor9.12.i287 = xor i8 %538, %536
  %539 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %539)
  store i8 %xor9.12.i287, ptr %41, align 4
  %540 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %540)
  %541 = load i8, ptr %57, align 1
  %arrayidx1.13.i290 = getelementptr i8, ptr %arrayidx144, i32 13
  %542 = ptrtoint ptr %arrayidx1.13.i290 to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %arrayidx1.13.i290, align 1
  %xor9.13.i291 = xor i8 %543, %541
  %544 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %544)
  store i8 %xor9.13.i291, ptr %42, align 1
  %545 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %545)
  %546 = load i8, ptr %58, align 1
  %arrayidx1.14.i294 = getelementptr i8, ptr %arrayidx144, i32 14
  %547 = ptrtoint ptr %arrayidx1.14.i294 to i32
  call void @__asan_load1_noabort(i32 %547)
  %548 = load i8, ptr %arrayidx1.14.i294, align 1
  %xor9.14.i295 = xor i8 %548, %546
  %549 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %549)
  store i8 %xor9.14.i295, ptr %43, align 2
  %550 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %59, align 1
  %arrayidx1.15.i298 = getelementptr i8, ptr %arrayidx144, i32 15
  %552 = ptrtoint ptr %arrayidx1.15.i298 to i32
  call void @__asan_load1_noabort(i32 %552)
  %553 = load i8, ptr %arrayidx1.15.i298, align 1
  %xor9.15.i299 = xor i8 %553, %551
  %554 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %554)
  store i8 %xor9.15.i299, ptr %44, align 1
  %555 = call ptr @memcpy(ptr %arrayidx144, ptr %chain_buffer, i32 16)
  %556 = add i32 %payload_index.3549, 16
  %exitcond565.not = icmp eq i32 %add140, %umax564
  br i1 %exitcond565.not, label %construct_ctr_preload.exit.for.end158_crit_edge, label %construct_ctr_preload.exit.for.body137_crit_edge

construct_ctr_preload.exit.for.body137_crit_edge: ; preds = %construct_ctr_preload.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body137

construct_ctr_preload.exit.for.end158_crit_edge:  ; preds = %construct_ctr_preload.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end158

for.end158:                                       ; preds = %construct_ctr_preload.exit.for.end158_crit_edge, %if.end113.for.end158_crit_edge
  %payload_index.3.lcssa = phi i32 [ %add66, %if.end113.for.end158_crit_edge ], [ %556, %construct_ctr_preload.exit.for.end158_crit_edge ]
  br i1 %cmp87.not, label %for.end158.if.end198_crit_edge, label %if.then161

for.end158.if.end198_crit_edge:                   ; preds = %for.end158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end198

if.then161:                                       ; preds = %for.end158
  %add164 = add nuw nsw i32 %div1, 1
  %557 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %557)
  store i8 0, ptr %15, align 1
  %558 = ptrtoint ptr %ctr_preload to i32
  call void @__asan_store1_noabort(i32 %558)
  store i8 1, ptr %ctr_preload, align 1
  br i1 %or.cond.i, label %if.then161.if.end.i308_crit_edge, label %if.then.i305

if.then161.if.end.i308_crit_edge:                 ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i308

if.then.i305:                                     ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx3.i303 = getelementptr i8, ptr %pframe, i32 30
  %559 = ptrtoint ptr %arrayidx3.i303 to i32
  call void @__asan_load1_noabort(i32 %559)
  %560 = load i8, ptr %arrayidx3.i303, align 1
  %561 = and i8 %560, 15
  %562 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %562)
  store i8 %561, ptr %15, align 1
  br label %if.end.i308

if.end.i308:                                      ; preds = %if.then.i305, %if.then161.if.end.i308_crit_edge
  br i1 %or.cond56.i, label %if.then9.i311, label %if.end.i308.for.body191.preheader_crit_edge

if.end.i308.for.body191.preheader_crit_edge:      ; preds = %if.end.i308
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body191.preheader

if.then9.i311:                                    ; preds = %if.end.i308
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx10.i309 = getelementptr i8, ptr %pframe, i32 24
  %563 = ptrtoint ptr %arrayidx10.i309 to i32
  call void @__asan_load1_noabort(i32 %563)
  %564 = load i8, ptr %arrayidx10.i309, align 1
  %565 = and i8 %564, 15
  %566 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %566)
  store i8 %565, ptr %15, align 1
  br label %for.body191.preheader

for.body191.preheader:                            ; preds = %if.then9.i311, %if.end.i308.for.body191.preheader_crit_edge
  %567 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %567)
  %568 = load i8, ptr %arrayidx20.i, align 1
  %569 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %569)
  store i8 %568, ptr %16, align 1
  %570 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %arrayidx20.1.i, align 1
  %572 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %572)
  store i8 %571, ptr %17, align 1
  %573 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_load1_noabort(i32 %573)
  %574 = load i8, ptr %arrayidx20.2.i, align 1
  %575 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %575)
  store i8 %574, ptr %18, align 1
  %576 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %arrayidx20.3.i, align 1
  %578 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %578)
  store i8 %577, ptr %19, align 1
  %579 = ptrtoint ptr %arrayidx20.4.i to i32
  call void @__asan_load1_noabort(i32 %579)
  %580 = load i8, ptr %arrayidx20.4.i, align 1
  %581 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %581)
  store i8 %580, ptr %20, align 1
  %582 = ptrtoint ptr %arrayidx20.5.i to i32
  call void @__asan_load1_noabort(i32 %582)
  %583 = load i8, ptr %arrayidx20.5.i, align 1
  %584 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %584)
  store i8 %583, ptr %21, align 1
  %585 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %585)
  store i8 %81, ptr %22, align 1
  %586 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %586)
  store i8 %79, ptr %23, align 1
  %587 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %587)
  store i8 %77, ptr %24, align 1
  %588 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %588)
  store i8 %75, ptr %25, align 1
  %589 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 %73, ptr %26, align 1
  %590 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 %71, ptr %27, align 1
  %div.i335534 = lshr i32 %add164, 8
  %conv34.i336 = trunc i32 %div.i335534 to i8
  %591 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 %conv34.i336, ptr %28, align 1
  %conv36.i338 = trunc i32 %add164 to i8
  %592 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %592)
  store i8 %conv36.i338, ptr %29, align 1
  %uglygep566 = getelementptr i8, ptr %pframe, i32 %payload_index.3.lcssa
  %593 = sub nuw nsw i32 16, %rem
  %594 = getelementptr i8, ptr %padded_buffer, i32 %rem
  %595 = call ptr @memset(ptr %594, i32 0, i32 %593)
  %596 = call ptr @memcpy(ptr %padded_buffer, ptr %uglygep566, i32 %rem)
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %ctr_preload, ptr noundef nonnull %aes_out)
  %597 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %597)
  %598 = load i8, ptr %aes_out, align 1
  %599 = ptrtoint ptr %padded_buffer to i32
  call void @__asan_load1_noabort(i32 %599)
  %padded_buffer.0.581 = load i8, ptr %padded_buffer, align 8
  %xor9.i341 = xor i8 %padded_buffer.0.581, %598
  %600 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %600)
  store i8 %xor9.i341, ptr %chain_buffer, align 8
  %601 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %601)
  %602 = load i8, ptr %45, align 1
  %603 = ptrtoint ptr %padded_buffer.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %603)
  %padded_buffer.1.583 = load i8, ptr %padded_buffer.1..sroa_idx, align 1
  %xor9.1.i344 = xor i8 %padded_buffer.1.583, %602
  %604 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 %xor9.1.i344, ptr %30, align 1
  %605 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %605)
  %606 = load i8, ptr %46, align 1
  %607 = ptrtoint ptr %padded_buffer.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %607)
  %padded_buffer.2.585 = load i8, ptr %padded_buffer.2..sroa_idx, align 2
  %xor9.2.i348 = xor i8 %padded_buffer.2.585, %606
  %608 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %608)
  store i8 %xor9.2.i348, ptr %31, align 2
  %609 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %609)
  %610 = load i8, ptr %47, align 1
  %611 = ptrtoint ptr %padded_buffer.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %611)
  %padded_buffer.3.587 = load i8, ptr %padded_buffer.3..sroa_idx, align 1
  %xor9.3.i352 = xor i8 %padded_buffer.3.587, %610
  %612 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %612)
  store i8 %xor9.3.i352, ptr %32, align 1
  %613 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %613)
  %614 = load i8, ptr %48, align 1
  %615 = ptrtoint ptr %padded_buffer.4..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %615)
  %padded_buffer.4.589 = load i8, ptr %padded_buffer.4..sroa_idx, align 4
  %xor9.4.i356 = xor i8 %padded_buffer.4.589, %614
  %616 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %616)
  store i8 %xor9.4.i356, ptr %33, align 4
  %617 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %617)
  %618 = load i8, ptr %49, align 1
  %619 = ptrtoint ptr %padded_buffer.5..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %619)
  %padded_buffer.5.591 = load i8, ptr %padded_buffer.5..sroa_idx, align 1
  %xor9.5.i360 = xor i8 %padded_buffer.5.591, %618
  %620 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %620)
  store i8 %xor9.5.i360, ptr %34, align 1
  %621 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %621)
  %622 = load i8, ptr %50, align 1
  %623 = ptrtoint ptr %padded_buffer.6..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %623)
  %padded_buffer.6.593 = load i8, ptr %padded_buffer.6..sroa_idx, align 2
  %xor9.6.i364 = xor i8 %padded_buffer.6.593, %622
  %624 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %624)
  store i8 %xor9.6.i364, ptr %35, align 2
  %625 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %625)
  %626 = load i8, ptr %51, align 1
  %627 = ptrtoint ptr %padded_buffer.7..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %627)
  %padded_buffer.7.595 = load i8, ptr %padded_buffer.7..sroa_idx, align 1
  %xor9.7.i368 = xor i8 %padded_buffer.7.595, %626
  %628 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %628)
  store i8 %xor9.7.i368, ptr %36, align 1
  %629 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %629)
  %630 = load i8, ptr %52, align 1
  %631 = ptrtoint ptr %padded_buffer.8..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %631)
  %padded_buffer.8.597 = load i8, ptr %padded_buffer.8..sroa_idx, align 8
  %xor9.8.i372 = xor i8 %padded_buffer.8.597, %630
  %632 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %632)
  store i8 %xor9.8.i372, ptr %37, align 8
  %633 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %633)
  %634 = load i8, ptr %53, align 1
  %635 = ptrtoint ptr %padded_buffer.9..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %635)
  %padded_buffer.9.599 = load i8, ptr %padded_buffer.9..sroa_idx, align 1
  %xor9.9.i376 = xor i8 %padded_buffer.9.599, %634
  %636 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %636)
  store i8 %xor9.9.i376, ptr %38, align 1
  %637 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %637)
  %638 = load i8, ptr %54, align 1
  %639 = ptrtoint ptr %padded_buffer.10..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %639)
  %padded_buffer.10.601 = load i8, ptr %padded_buffer.10..sroa_idx, align 2
  %xor9.10.i380 = xor i8 %padded_buffer.10.601, %638
  %640 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %640)
  store i8 %xor9.10.i380, ptr %39, align 2
  %641 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %641)
  %642 = load i8, ptr %55, align 1
  %643 = ptrtoint ptr %padded_buffer.11..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %643)
  %padded_buffer.11.603 = load i8, ptr %padded_buffer.11..sroa_idx, align 1
  %xor9.11.i384 = xor i8 %padded_buffer.11.603, %642
  %644 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %644)
  store i8 %xor9.11.i384, ptr %40, align 1
  %645 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %645)
  %646 = load i8, ptr %56, align 1
  %647 = ptrtoint ptr %padded_buffer.12..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %647)
  %padded_buffer.12.605 = load i8, ptr %padded_buffer.12..sroa_idx, align 4
  %xor9.12.i388 = xor i8 %padded_buffer.12.605, %646
  %648 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %648)
  store i8 %xor9.12.i388, ptr %41, align 4
  %649 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %649)
  %650 = load i8, ptr %57, align 1
  %651 = ptrtoint ptr %padded_buffer.13..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %651)
  %padded_buffer.13.607 = load i8, ptr %padded_buffer.13..sroa_idx, align 1
  %xor9.13.i392 = xor i8 %padded_buffer.13.607, %650
  %652 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %652)
  store i8 %xor9.13.i392, ptr %42, align 1
  %653 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %653)
  %654 = load i8, ptr %58, align 1
  %655 = ptrtoint ptr %padded_buffer.14..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %655)
  %padded_buffer.14.609 = load i8, ptr %padded_buffer.14..sroa_idx, align 2
  %xor9.14.i396 = xor i8 %padded_buffer.14.609, %654
  %656 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %656)
  store i8 %xor9.14.i396, ptr %43, align 2
  %657 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %657)
  %658 = load i8, ptr %59, align 1
  %659 = ptrtoint ptr %padded_buffer.15..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %659)
  %padded_buffer.15.611 = load i8, ptr %padded_buffer.15..sroa_idx, align 1
  %xor9.15.i400 = xor i8 %padded_buffer.15.611, %658
  %660 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %660)
  store i8 %xor9.15.i400, ptr %44, align 1
  %uglygep568 = getelementptr i8, ptr %pframe, i32 %payload_index.3.lcssa
  %661 = call ptr @memcpy(ptr %uglygep568, ptr %chain_buffer, i32 %rem)
  %662 = add i32 %payload_index.3.lcssa, %rem
  br label %if.end198

if.end198:                                        ; preds = %for.body191.preheader, %for.end158.if.end198_crit_edge
  %payload_index.6 = phi i32 [ %payload_index.3.lcssa, %for.end158.if.end198_crit_edge ], [ %662, %for.body191.preheader ]
  %663 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %663)
  store i8 0, ptr %15, align 1
  %664 = ptrtoint ptr %ctr_preload to i32
  call void @__asan_store1_noabort(i32 %664)
  store i8 1, ptr %ctr_preload, align 1
  br i1 %or.cond.i, label %if.end198.if.end.i409_crit_edge, label %if.then.i406

if.end198.if.end.i409_crit_edge:                  ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i409

if.then.i406:                                     ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx3.i404 = getelementptr i8, ptr %pframe, i32 30
  %665 = ptrtoint ptr %arrayidx3.i404 to i32
  call void @__asan_load1_noabort(i32 %665)
  %666 = load i8, ptr %arrayidx3.i404, align 1
  %667 = and i8 %666, 15
  %668 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %668)
  store i8 %667, ptr %15, align 1
  br label %if.end.i409

if.end.i409:                                      ; preds = %if.then.i406, %if.end198.if.end.i409_crit_edge
  br i1 %or.cond56.i, label %if.then9.i412, label %if.end.i409.construct_ctr_preload.exit438_crit_edge

if.end.i409.construct_ctr_preload.exit438_crit_edge: ; preds = %if.end.i409
  call void @__sanitizer_cov_trace_pc() #12
  br label %construct_ctr_preload.exit438

if.then9.i412:                                    ; preds = %if.end.i409
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx10.i410 = getelementptr i8, ptr %pframe, i32 24
  %669 = ptrtoint ptr %arrayidx10.i410 to i32
  call void @__asan_load1_noabort(i32 %669)
  %670 = load i8, ptr %arrayidx10.i410, align 1
  %671 = and i8 %670, 15
  %672 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %672)
  store i8 %671, ptr %15, align 1
  br label %construct_ctr_preload.exit438

construct_ctr_preload.exit438:                    ; preds = %if.then9.i412, %if.end.i409.construct_ctr_preload.exit438_crit_edge
  %673 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %673)
  %674 = load i8, ptr %arrayidx20.i, align 1
  %675 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %675)
  store i8 %674, ptr %16, align 1
  %676 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_load1_noabort(i32 %676)
  %677 = load i8, ptr %arrayidx20.1.i, align 1
  %678 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %678)
  store i8 %677, ptr %17, align 1
  %679 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_load1_noabort(i32 %679)
  %680 = load i8, ptr %arrayidx20.2.i, align 1
  %681 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %681)
  store i8 %680, ptr %18, align 1
  %682 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_load1_noabort(i32 %682)
  %683 = load i8, ptr %arrayidx20.3.i, align 1
  %684 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %684)
  store i8 %683, ptr %19, align 1
  %685 = ptrtoint ptr %arrayidx20.4.i to i32
  call void @__asan_load1_noabort(i32 %685)
  %686 = load i8, ptr %arrayidx20.4.i, align 1
  %687 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %687)
  store i8 %686, ptr %20, align 1
  %688 = ptrtoint ptr %arrayidx20.5.i to i32
  call void @__asan_load1_noabort(i32 %688)
  %689 = load i8, ptr %arrayidx20.5.i, align 1
  %690 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %690)
  store i8 %689, ptr %21, align 1
  %691 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %691)
  store i8 %81, ptr %22, align 1
  %692 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %692)
  store i8 %79, ptr %23, align 1
  %693 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %693)
  store i8 %77, ptr %24, align 1
  %694 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %694)
  store i8 %75, ptr %25, align 1
  %695 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %695)
  store i8 %73, ptr %26, align 1
  %696 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %696)
  store i8 %71, ptr %27, align 1
  %697 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %697)
  store i8 0, ptr %28, align 1
  %698 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %698)
  store i8 0, ptr %29, align 1
  %699 = add i32 %hdrlen.addr.1, %plen
  %700 = add i32 %699, 8
  %uglygep571 = getelementptr i8, ptr %pframe, i32 %700
  %701 = ptrtoint ptr %uglygep571 to i32
  call void @__asan_loadN_noabort(i32 %701, i32 8)
  %702 = load i64, ptr %uglygep571, align 1
  %703 = ptrtoint ptr %padded_buffer to i32
  call void @__asan_store8_noabort(i32 %703)
  store i64 %702, ptr %padded_buffer, align 8
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %ctr_preload, ptr noundef nonnull %aes_out)
  %704 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %704)
  %705 = load i8, ptr %aes_out, align 1
  %706 = ptrtoint ptr %padded_buffer to i32
  call void @__asan_load1_noabort(i32 %706)
  %padded_buffer.0.582 = load i8, ptr %padded_buffer, align 8
  %xor9.i439 = xor i8 %padded_buffer.0.582, %705
  %707 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %707)
  store i8 %xor9.i439, ptr %chain_buffer, align 8
  %708 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %708)
  %709 = load i8, ptr %45, align 1
  %710 = ptrtoint ptr %padded_buffer.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %710)
  %padded_buffer.1.584 = load i8, ptr %padded_buffer.1..sroa_idx, align 1
  %xor9.1.i442 = xor i8 %padded_buffer.1.584, %709
  %711 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %711)
  store i8 %xor9.1.i442, ptr %30, align 1
  %712 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %712)
  %713 = load i8, ptr %46, align 1
  %714 = ptrtoint ptr %padded_buffer.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %714)
  %padded_buffer.2.586 = load i8, ptr %padded_buffer.2..sroa_idx, align 2
  %xor9.2.i446 = xor i8 %padded_buffer.2.586, %713
  %715 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %715)
  store i8 %xor9.2.i446, ptr %31, align 2
  %716 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %716)
  %717 = load i8, ptr %47, align 1
  %718 = ptrtoint ptr %padded_buffer.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %718)
  %padded_buffer.3.588 = load i8, ptr %padded_buffer.3..sroa_idx, align 1
  %xor9.3.i450 = xor i8 %padded_buffer.3.588, %717
  %719 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %719)
  store i8 %xor9.3.i450, ptr %32, align 1
  %720 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %720)
  %721 = load i8, ptr %48, align 1
  %722 = ptrtoint ptr %padded_buffer.4..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %722)
  %padded_buffer.4.590 = load i8, ptr %padded_buffer.4..sroa_idx, align 4
  %xor9.4.i454 = xor i8 %padded_buffer.4.590, %721
  %723 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %723)
  store i8 %xor9.4.i454, ptr %33, align 4
  %724 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %724)
  %725 = load i8, ptr %49, align 1
  %726 = ptrtoint ptr %padded_buffer.5..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %726)
  %padded_buffer.5.592 = load i8, ptr %padded_buffer.5..sroa_idx, align 1
  %xor9.5.i458 = xor i8 %padded_buffer.5.592, %725
  %727 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %727)
  store i8 %xor9.5.i458, ptr %34, align 1
  %728 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %728)
  %729 = load i8, ptr %50, align 1
  %730 = ptrtoint ptr %padded_buffer.6..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %730)
  %padded_buffer.6.594 = load i8, ptr %padded_buffer.6..sroa_idx, align 2
  %xor9.6.i462 = xor i8 %padded_buffer.6.594, %729
  %731 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %731)
  store i8 %xor9.6.i462, ptr %35, align 2
  %732 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %732)
  %733 = load i8, ptr %51, align 1
  %734 = ptrtoint ptr %padded_buffer.7..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %734)
  %padded_buffer.7.596 = load i8, ptr %padded_buffer.7..sroa_idx, align 1
  %xor9.7.i466 = xor i8 %padded_buffer.7.596, %733
  %735 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %735)
  store i8 %xor9.7.i466, ptr %36, align 1
  %uglygep572 = getelementptr i8, ptr %pframe, i32 %payload_index.6
  %736 = load i64, ptr %chain_buffer, align 8
  %737 = ptrtoint ptr %uglygep572 to i32
  call void @__asan_storeN_noabort(i32 %737, i32 8)
  store i64 %736, ptr %uglygep572, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %padded_buffer)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %aes_out) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %chain_buffer) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctr_preload) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mic_iv) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_aes_decrypt(ptr noundef %padapter, ptr noundef %precvframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_data = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 9
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_data, align 4
  %encrypt = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 17
  %2 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %encrypt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp eq i8 %3, 4
  br i1 %cmp, label %if.then, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then:                                          ; preds = %entry
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %ta = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 25
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %ta) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.exit_crit_edge, label %if.then2

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then2:                                         ; preds = %if.then
  %ra = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 26
  %4 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ra, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then2
  %binstallGrpkey = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 22
  %7 = ptrtoint ptr %binstallGrpkey to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %binstallGrpkey, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %if.then6, label %if.end15

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_aes_decrypt.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_aes_decrypt, %if.then12)) #10
          to label %exit [label %if.then12], !srcloc !40

if.then12:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %9 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pnetdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_aes_decrypt.__UNIQUE_ID_ddebug348, ptr noundef %10, ptr noundef nonnull @.str.3) #10
  br label %exit

if.end15:                                         ; preds = %if.then4
  %key_index = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 29
  %11 = ptrtoint ptr %key_index to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %key_index, align 1
  %idxprom = zext i8 %12 to i32
  %arrayidx16 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 12, i32 7, i32 %idxprom
  %dot118021XGrpKeyid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 6
  %13 = ptrtoint ptr %dot118021XGrpKeyid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dot118021XGrpKeyid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %idxprom)
  %cmp20.not = icmp eq i32 %14, %idxprom
  br i1 %cmp20.not, label %if.end15.if.end48_crit_edge, label %do.body24

if.end15.if.end48_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

do.body24:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_aes_decrypt.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_aes_decrypt, %if.then36)) #10
          to label %exit [label %if.then36], !srcloc !40

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  %pnetdev37 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %15 = ptrtoint ptr %pnetdev37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pnetdev37, align 4
  %17 = ptrtoint ptr %key_index to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %key_index, align 1
  %conv39 = zext i8 %18 to i32
  %19 = ptrtoint ptr %dot118021XGrpKeyid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dot118021XGrpKeyid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_aes_decrypt.__UNIQUE_ID_ddebug349, ptr noundef %16, ptr noundef nonnull @.str.5, i32 noundef %conv39, i32 noundef %20) #10
  br label %exit

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %dot118021x_UncstKey = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 16
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.end15.if.end48_crit_edge
  %prwskey.0 = phi ptr [ %arrayidx16, %if.end15.if.end48_crit_edge ], [ %dot118021x_UncstKey, %if.else ]
  %len = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 7
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %hdrlen = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 4
  %23 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hdrlen, align 1
  %conv49 = zext i8 %24 to i32
  %iv_len = getelementptr inbounds %struct.recv_frame, ptr %precvframe, i32 0, i32 6, i32 18
  %25 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %iv_len, align 4
  %conv50 = zext i8 %26 to i32
  %27 = add nuw nsw i32 %conv49, %conv50
  %sub51 = sub i32 %22, %27
  %call54 = tail call fastcc i32 @aes_decipher(ptr noundef %padapter, ptr noundef %prwskey.0, i32 noundef %conv49, ptr noundef %1, i32 noundef %sub51)
  br label %exit

exit:                                             ; preds = %if.end48, %if.then36, %do.body24, %if.then12, %if.then6, %if.then.exit_crit_edge, %entry.exit_crit_edge
  %res.0 = phi i32 [ %call54, %if.end48 ], [ 0, %if.then12 ], [ 1, %entry.exit_crit_edge ], [ 0, %if.then36 ], [ 0, %if.then.exit_crit_edge ], [ 0, %if.then6 ], [ 0, %do.body24 ]
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aes_decipher(ptr nocapture noundef readonly %padapter, ptr nocapture noundef readonly %key, i32 noundef %hdrlen, ptr noundef %pframe, i32 noundef %plen) unnamed_addr #0 align 64 {
entry:
  %mic_iv = alloca [16 x i8], align 1
  %ctr_preload = alloca [16 x i8], align 1
  %chain_buffer = alloca [16 x i8], align 8
  %aes_out = alloca [16 x i8], align 1
  %padded_buffer = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mic_iv) #10
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctr_preload) #10
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %chain_buffer) #10
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %aes_out) #10
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
  %62 = call ptr @memset(ptr %mic_iv, i32 0, i32 16)
  %63 = call ptr @memset(ptr %ctr_preload, i32 0, i32 16)
  %64 = call ptr @memset(ptr %chain_buffer, i32 0, i32 16)
  %65 = call ptr @memset(ptr %aes_out, i32 0, i32 16)
  %66 = call ptr @memset(ptr %padded_buffer, i32 0, i32 16)
  %sub = add i32 %plen, -8
  %div550 = lshr i32 %sub, 4
  %rem = and i32 %sub, 15
  %arrayidx = getelementptr i8, ptr %pframe, i32 %hdrlen
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx, align 1
  %add = add i32 %hdrlen, 1
  %arrayidx11 = getelementptr i8, ptr %pframe, i32 %add
  %69 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx11, align 1
  %add13 = add i32 %hdrlen, 4
  %arrayidx14 = getelementptr i8, ptr %pframe, i32 %add13
  %71 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx14, align 1
  %add16 = add i32 %hdrlen, 5
  %arrayidx17 = getelementptr i8, ptr %pframe, i32 %add16
  %73 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx17, align 1
  %add19 = add i32 %hdrlen, 6
  %arrayidx20 = getelementptr i8, ptr %pframe, i32 %add19
  %75 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx20, align 1
  %add22 = add i32 %hdrlen, 7
  %arrayidx23 = getelementptr i8, ptr %pframe, i32 %add22
  %77 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx23, align 1
  %79 = add i32 %hdrlen, -24
  %switch.and = and i32 %79, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %80 = and i16 %61, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %80)
  %switch = icmp eq i16 %80, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %hdrlen)
  %cmp55.not = icmp eq i32 %hdrlen, 26
  %add58 = add i32 %hdrlen, 2
  %spec.select = select i1 %cmp55.not, i32 26, i32 %add58
  %hdrlen.addr.1 = select i1 %switch, i32 %spec.select, i32 %hdrlen
  %add63 = add i32 %hdrlen.addr.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp641258.not = icmp ult i32 %sub, 16
  br i1 %cmp641258.not, label %entry.for.end83_crit_edge, label %for.body.lr.ph

entry.for.end83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i = xor i1 %switch, true
  %or.cond.i = or i1 %switch.selectcmp, %tobool.not.i
  %arrayidx3.i = getelementptr i8, ptr %pframe, i32 30
  %or.cond60.i = and i1 %switch.selectcmp, %switch
  %arrayidx10.i = getelementptr i8, ptr %pframe, i32 24
  %arrayidx20.i = getelementptr i8, ptr %pframe, i32 10
  %arrayidx20.1.i = getelementptr i8, ptr %pframe, i32 11
  %arrayidx20.2.i = getelementptr i8, ptr %pframe, i32 12
  %arrayidx20.3.i = getelementptr i8, ptr %pframe, i32 13
  %arrayidx20.4.i = getelementptr i8, ptr %pframe, i32 14
  %arrayidx20.5.i = getelementptr i8, ptr %pframe, i32 15
  %umax = call i32 @llvm.umax.i32(i32 %div550, i32 1)
  br label %for.body

for.body:                                         ; preds = %construct_ctr_preload.exit.for.body_crit_edge, %for.body.lr.ph
  %payload_index.01260 = phi i32 [ %add63, %for.body.lr.ph ], [ %198, %construct_ctr_preload.exit.for.body_crit_edge ]
  %i.01259 = phi i32 [ 0, %for.body.lr.ph ], [ %add68, %construct_ctr_preload.exit.for.body_crit_edge ]
  %add68 = add nuw nsw i32 %i.01259, 1
  %81 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %15, align 1
  %82 = ptrtoint ptr %ctr_preload to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %ctr_preload, align 1
  br i1 %or.cond.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx3.i, align 1
  %85 = and i8 %84, 15
  %86 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %15, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  br i1 %or.cond60.i, label %if.then9.i, label %if.end.i.construct_ctr_preload.exit_crit_edge

if.end.i.construct_ctr_preload.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %construct_ctr_preload.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx10.i, align 1
  %89 = and i8 %88, 15
  %90 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %15, align 1
  br label %construct_ctr_preload.exit

construct_ctr_preload.exit:                       ; preds = %if.then9.i, %if.end.i.construct_ctr_preload.exit_crit_edge
  %91 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx20.i, align 1
  %93 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %16, align 1
  %94 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx20.1.i, align 1
  %96 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %17, align 1
  %97 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx20.2.i, align 1
  %99 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %18, align 1
  %100 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx20.3.i, align 1
  %102 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %19, align 1
  %103 = ptrtoint ptr %arrayidx20.4.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx20.4.i, align 1
  %105 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %20, align 1
  %106 = ptrtoint ptr %arrayidx20.5.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx20.5.i, align 1
  %108 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %21, align 1
  %109 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %78, ptr %22, align 1
  %110 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %76, ptr %23, align 1
  %111 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %74, ptr %24, align 1
  %112 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %72, ptr %25, align 1
  %113 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %70, ptr %26, align 1
  %114 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %68, ptr %27, align 1
  %div.i.udiv1373 = lshr i32 %add68, 8
  %conv34.i = trunc i32 %div.i.udiv1373 to i8
  %115 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv34.i, ptr %28, align 1
  %conv36.i = trunc i32 %add68 to i8
  %116 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv36.i, ptr %29, align 1
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %ctr_preload, ptr noundef nonnull %aes_out)
  %arrayidx72 = getelementptr i8, ptr %pframe, i32 %payload_index.01260
  %117 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %aes_out, align 1
  %119 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx72, align 1
  %xor9.i = xor i8 %120, %118
  %121 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %xor9.i, ptr %chain_buffer, align 8
  %122 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %45, align 1
  %arrayidx1.1.i = getelementptr i8, ptr %arrayidx72, i32 1
  %124 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx1.1.i, align 1
  %xor9.1.i = xor i8 %125, %123
  %126 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %xor9.1.i, ptr %30, align 1
  %127 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %46, align 1
  %arrayidx1.2.i = getelementptr i8, ptr %arrayidx72, i32 2
  %129 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx1.2.i, align 1
  %xor9.2.i = xor i8 %130, %128
  %131 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %xor9.2.i, ptr %31, align 2
  %132 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %47, align 1
  %arrayidx1.3.i = getelementptr i8, ptr %arrayidx72, i32 3
  %134 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx1.3.i, align 1
  %xor9.3.i = xor i8 %135, %133
  %136 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %xor9.3.i, ptr %32, align 1
  %137 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %48, align 1
  %arrayidx1.4.i = getelementptr i8, ptr %arrayidx72, i32 4
  %139 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx1.4.i, align 1
  %xor9.4.i = xor i8 %140, %138
  %141 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %xor9.4.i, ptr %33, align 4
  %142 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %49, align 1
  %arrayidx1.5.i = getelementptr i8, ptr %arrayidx72, i32 5
  %144 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx1.5.i, align 1
  %xor9.5.i = xor i8 %145, %143
  %146 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %xor9.5.i, ptr %34, align 1
  %147 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %50, align 1
  %arrayidx1.6.i = getelementptr i8, ptr %arrayidx72, i32 6
  %149 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx1.6.i, align 1
  %xor9.6.i = xor i8 %150, %148
  %151 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %xor9.6.i, ptr %35, align 2
  %152 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %51, align 1
  %arrayidx1.7.i = getelementptr i8, ptr %arrayidx72, i32 7
  %154 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx1.7.i, align 1
  %xor9.7.i = xor i8 %155, %153
  %156 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %xor9.7.i, ptr %36, align 1
  %157 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %52, align 1
  %arrayidx1.8.i = getelementptr i8, ptr %arrayidx72, i32 8
  %159 = ptrtoint ptr %arrayidx1.8.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx1.8.i, align 1
  %xor9.8.i = xor i8 %160, %158
  %161 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %xor9.8.i, ptr %37, align 8
  %162 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %53, align 1
  %arrayidx1.9.i = getelementptr i8, ptr %arrayidx72, i32 9
  %164 = ptrtoint ptr %arrayidx1.9.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx1.9.i, align 1
  %xor9.9.i = xor i8 %165, %163
  %166 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %xor9.9.i, ptr %38, align 1
  %167 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %54, align 1
  %arrayidx1.10.i = getelementptr i8, ptr %arrayidx72, i32 10
  %169 = ptrtoint ptr %arrayidx1.10.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx1.10.i, align 1
  %xor9.10.i = xor i8 %170, %168
  %171 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %xor9.10.i, ptr %39, align 2
  %172 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %55, align 1
  %arrayidx1.11.i = getelementptr i8, ptr %arrayidx72, i32 11
  %174 = ptrtoint ptr %arrayidx1.11.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx1.11.i, align 1
  %xor9.11.i = xor i8 %175, %173
  %176 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %xor9.11.i, ptr %40, align 1
  %177 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %56, align 1
  %arrayidx1.12.i = getelementptr i8, ptr %arrayidx72, i32 12
  %179 = ptrtoint ptr %arrayidx1.12.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx1.12.i, align 1
  %xor9.12.i = xor i8 %180, %178
  %181 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %xor9.12.i, ptr %41, align 4
  %182 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %57, align 1
  %arrayidx1.13.i = getelementptr i8, ptr %arrayidx72, i32 13
  %184 = ptrtoint ptr %arrayidx1.13.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx1.13.i, align 1
  %xor9.13.i = xor i8 %185, %183
  %186 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %xor9.13.i, ptr %42, align 1
  %187 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %58, align 1
  %arrayidx1.14.i = getelementptr i8, ptr %arrayidx72, i32 14
  %189 = ptrtoint ptr %arrayidx1.14.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx1.14.i, align 1
  %xor9.14.i = xor i8 %190, %188
  %191 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %xor9.14.i, ptr %43, align 2
  %192 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %59, align 1
  %arrayidx1.15.i = getelementptr i8, ptr %arrayidx72, i32 15
  %194 = ptrtoint ptr %arrayidx1.15.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx1.15.i, align 1
  %xor9.15.i = xor i8 %195, %193
  %196 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %xor9.15.i, ptr %44, align 1
  %197 = call ptr @memcpy(ptr %arrayidx72, ptr %chain_buffer, i32 16)
  %198 = add i32 %payload_index.01260, 16
  %exitcond.not = icmp eq i32 %add68, %umax
  br i1 %exitcond.not, label %construct_ctr_preload.exit.for.end83_crit_edge, label %construct_ctr_preload.exit.for.body_crit_edge

construct_ctr_preload.exit.for.body_crit_edge:    ; preds = %construct_ctr_preload.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

construct_ctr_preload.exit.for.end83_crit_edge:   ; preds = %construct_ctr_preload.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83

for.end83:                                        ; preds = %construct_ctr_preload.exit.for.end83_crit_edge, %entry.for.end83_crit_edge
  %payload_index.0.lcssa = phi i32 [ %add63, %entry.for.end83_crit_edge ], [ %198, %construct_ctr_preload.exit.for.end83_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp84.not = icmp eq i32 %rem, 0
  br i1 %cmp84.not, label %for.end83.if.end123_crit_edge, label %if.then86

for.end83.if.end123_crit_edge:                    ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then86:                                        ; preds = %for.end83
  %add89 = add nuw nsw i32 %div550, 1
  %199 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 0, ptr %15, align 1
  %200 = ptrtoint ptr %ctr_preload to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 1, ptr %ctr_preload, align 1
  %tobool.not.i551 = xor i1 %switch, true
  %or.cond.i552 = or i1 %switch.selectcmp, %tobool.not.i551
  br i1 %or.cond.i552, label %if.then86.if.end.i558_crit_edge, label %if.then.i555

if.then86.if.end.i558_crit_edge:                  ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i558

if.then.i555:                                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx3.i553 = getelementptr i8, ptr %pframe, i32 30
  %201 = ptrtoint ptr %arrayidx3.i553 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx3.i553, align 1
  %203 = and i8 %202, 15
  %204 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %15, align 1
  br label %if.end.i558

if.end.i558:                                      ; preds = %if.then.i555, %if.then86.if.end.i558_crit_edge
  %or.cond60.i557 = and i1 %switch.selectcmp, %switch
  br i1 %or.cond60.i557, label %if.then9.i561, label %if.end.i558.for.body116.preheader_crit_edge

if.end.i558.for.body116.preheader_crit_edge:      ; preds = %if.end.i558
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body116.preheader

if.then9.i561:                                    ; preds = %if.end.i558
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx10.i559 = getelementptr i8, ptr %pframe, i32 24
  %205 = ptrtoint ptr %arrayidx10.i559 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx10.i559, align 1
  %207 = and i8 %206, 15
  %208 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %207, ptr %15, align 1
  br label %for.body116.preheader

for.body116.preheader:                            ; preds = %if.then9.i561, %if.end.i558.for.body116.preheader_crit_edge
  %arrayidx20.i562 = getelementptr i8, ptr %pframe, i32 10
  %209 = ptrtoint ptr %arrayidx20.i562 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx20.i562, align 1
  %211 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %210, ptr %16, align 1
  %arrayidx20.1.i564 = getelementptr i8, ptr %pframe, i32 11
  %212 = ptrtoint ptr %arrayidx20.1.i564 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx20.1.i564, align 1
  %214 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %213, ptr %17, align 1
  %arrayidx20.2.i566 = getelementptr i8, ptr %pframe, i32 12
  %215 = ptrtoint ptr %arrayidx20.2.i566 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx20.2.i566, align 1
  %217 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %216, ptr %18, align 1
  %arrayidx20.3.i568 = getelementptr i8, ptr %pframe, i32 13
  %218 = ptrtoint ptr %arrayidx20.3.i568 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx20.3.i568, align 1
  %220 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %219, ptr %19, align 1
  %arrayidx20.4.i570 = getelementptr i8, ptr %pframe, i32 14
  %221 = ptrtoint ptr %arrayidx20.4.i570 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx20.4.i570, align 1
  %223 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %222, ptr %20, align 1
  %arrayidx20.5.i572 = getelementptr i8, ptr %pframe, i32 15
  %224 = ptrtoint ptr %arrayidx20.5.i572 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx20.5.i572, align 1
  %226 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %21, align 1
  %227 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %78, ptr %22, align 1
  %228 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %76, ptr %23, align 1
  %229 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %74, ptr %24, align 1
  %230 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %72, ptr %25, align 1
  %231 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %70, ptr %26, align 1
  %232 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %68, ptr %27, align 1
  %div.i5851254 = lshr i32 %add89, 8
  %conv34.i586 = trunc i32 %div.i5851254 to i8
  %233 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %conv34.i586, ptr %28, align 1
  %conv36.i588 = trunc i32 %add89 to i8
  %234 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %conv36.i588, ptr %29, align 1
  %uglygep1298 = getelementptr i8, ptr %pframe, i32 %payload_index.0.lcssa
  %235 = sub nuw nsw i32 16, %rem
  %236 = getelementptr i8, ptr %padded_buffer, i32 %rem
  %237 = call ptr @memset(ptr %236, i32 0, i32 %235)
  %238 = call ptr @memcpy(ptr %padded_buffer, ptr %uglygep1298, i32 %rem)
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %ctr_preload, ptr noundef nonnull %aes_out)
  %239 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %aes_out, align 1
  %241 = ptrtoint ptr %padded_buffer to i32
  call void @__asan_load1_noabort(i32 %241)
  %padded_buffer.0. = load i8, ptr %padded_buffer, align 8
  %xor9.i591 = xor i8 %padded_buffer.0., %240
  %242 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %xor9.i591, ptr %chain_buffer, align 8
  %243 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %45, align 1
  %245 = ptrtoint ptr %padded_buffer.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %245)
  %padded_buffer.1. = load i8, ptr %padded_buffer.1..sroa_idx, align 1
  %xor9.1.i594 = xor i8 %padded_buffer.1., %244
  %246 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %xor9.1.i594, ptr %30, align 1
  %247 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %46, align 1
  %249 = ptrtoint ptr %padded_buffer.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %249)
  %padded_buffer.2. = load i8, ptr %padded_buffer.2..sroa_idx, align 2
  %xor9.2.i598 = xor i8 %padded_buffer.2., %248
  %250 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %xor9.2.i598, ptr %31, align 2
  %251 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %47, align 1
  %253 = ptrtoint ptr %padded_buffer.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %253)
  %padded_buffer.3. = load i8, ptr %padded_buffer.3..sroa_idx, align 1
  %xor9.3.i602 = xor i8 %padded_buffer.3., %252
  %254 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %xor9.3.i602, ptr %32, align 1
  %255 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %48, align 1
  %257 = ptrtoint ptr %padded_buffer.4..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %257)
  %padded_buffer.4. = load i8, ptr %padded_buffer.4..sroa_idx, align 4
  %xor9.4.i606 = xor i8 %padded_buffer.4., %256
  %258 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %xor9.4.i606, ptr %33, align 4
  %259 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %49, align 1
  %261 = ptrtoint ptr %padded_buffer.5..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %261)
  %padded_buffer.5. = load i8, ptr %padded_buffer.5..sroa_idx, align 1
  %xor9.5.i610 = xor i8 %padded_buffer.5., %260
  %262 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 %xor9.5.i610, ptr %34, align 1
  %263 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %50, align 1
  %265 = ptrtoint ptr %padded_buffer.6..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %265)
  %padded_buffer.6. = load i8, ptr %padded_buffer.6..sroa_idx, align 2
  %xor9.6.i614 = xor i8 %padded_buffer.6., %264
  %266 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %xor9.6.i614, ptr %35, align 2
  %267 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %51, align 1
  %269 = ptrtoint ptr %padded_buffer.7..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %269)
  %padded_buffer.7. = load i8, ptr %padded_buffer.7..sroa_idx, align 1
  %xor9.7.i618 = xor i8 %padded_buffer.7., %268
  %270 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %xor9.7.i618, ptr %36, align 1
  %271 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %52, align 1
  %273 = ptrtoint ptr %padded_buffer.8..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %273)
  %padded_buffer.8. = load i8, ptr %padded_buffer.8..sroa_idx, align 8
  %xor9.8.i622 = xor i8 %padded_buffer.8., %272
  %274 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %xor9.8.i622, ptr %37, align 8
  %275 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %53, align 1
  %277 = ptrtoint ptr %padded_buffer.9..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %277)
  %padded_buffer.9. = load i8, ptr %padded_buffer.9..sroa_idx, align 1
  %xor9.9.i626 = xor i8 %padded_buffer.9., %276
  %278 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %xor9.9.i626, ptr %38, align 1
  %279 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %54, align 1
  %281 = ptrtoint ptr %padded_buffer.10..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %281)
  %padded_buffer.10. = load i8, ptr %padded_buffer.10..sroa_idx, align 2
  %xor9.10.i630 = xor i8 %padded_buffer.10., %280
  %282 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %xor9.10.i630, ptr %39, align 2
  %283 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %55, align 1
  %285 = ptrtoint ptr %padded_buffer.11..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %285)
  %padded_buffer.11. = load i8, ptr %padded_buffer.11..sroa_idx, align 1
  %xor9.11.i634 = xor i8 %padded_buffer.11., %284
  %286 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 %xor9.11.i634, ptr %40, align 1
  %287 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %56, align 1
  %289 = ptrtoint ptr %padded_buffer.12..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %289)
  %padded_buffer.12. = load i8, ptr %padded_buffer.12..sroa_idx, align 4
  %xor9.12.i638 = xor i8 %padded_buffer.12., %288
  %290 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %xor9.12.i638, ptr %41, align 4
  %291 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %57, align 1
  %293 = ptrtoint ptr %padded_buffer.13..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %293)
  %padded_buffer.13. = load i8, ptr %padded_buffer.13..sroa_idx, align 1
  %xor9.13.i642 = xor i8 %padded_buffer.13., %292
  %294 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %xor9.13.i642, ptr %42, align 1
  %295 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %58, align 1
  %297 = ptrtoint ptr %padded_buffer.14..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %297)
  %padded_buffer.14. = load i8, ptr %padded_buffer.14..sroa_idx, align 2
  %xor9.14.i646 = xor i8 %padded_buffer.14., %296
  %298 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %xor9.14.i646, ptr %43, align 2
  %299 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %59, align 1
  %301 = ptrtoint ptr %padded_buffer.15..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %301)
  %padded_buffer.15. = load i8, ptr %padded_buffer.15..sroa_idx, align 1
  %xor9.15.i650 = xor i8 %padded_buffer.15., %300
  %302 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %xor9.15.i650, ptr %44, align 1
  %uglygep1300 = getelementptr i8, ptr %pframe, i32 %payload_index.0.lcssa
  %303 = call ptr @memcpy(ptr %uglygep1300, ptr %chain_buffer, i32 %rem)
  br label %if.end123

if.end123:                                        ; preds = %for.body116.preheader, %for.end83.if.end123_crit_edge
  %add124 = add i32 %hdrlen.addr.1, %plen
  %add125 = add i32 %add124, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %add125)
  %cmp126 = icmp ult i32 %add125, 2049
  br i1 %cmp126, label %if.then128, label %if.end123.if.end131_crit_edge

if.end123.if.end131_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then128:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  %304 = call ptr @memcpy(ptr @aes_decipher.message, ptr %pframe, i32 %add125)
  br label %if.end131

if.end131:                                        ; preds = %if.then128, %if.end123.if.end131_crit_edge
  %arrayidx132 = getelementptr i8, ptr %pframe, i32 %hdrlen.addr.1
  %305 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %arrayidx132, align 1
  %add134 = add i32 %hdrlen.addr.1, 1
  %arrayidx135 = getelementptr i8, ptr %pframe, i32 %add134
  %307 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx135, align 1
  %add137 = add i32 %hdrlen.addr.1, 4
  %arrayidx138 = getelementptr i8, ptr %pframe, i32 %add137
  %309 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %arrayidx138, align 1
  %add140 = add i32 %hdrlen.addr.1, 5
  %arrayidx141 = getelementptr i8, ptr %pframe, i32 %add140
  %311 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %arrayidx141, align 1
  %add143 = add i32 %hdrlen.addr.1, 6
  %arrayidx144 = getelementptr i8, ptr %pframe, i32 %add143
  %313 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %arrayidx144, align 1
  %add146 = add i32 %hdrlen.addr.1, 7
  %arrayidx147 = getelementptr i8, ptr %pframe, i32 %add146
  %315 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %arrayidx147, align 1
  %317 = ptrtoint ptr %mic_iv to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 89, ptr %mic_iv, align 1
  %tobool.not.i652 = xor i1 %switch, true
  %or.cond.i653 = or i1 %switch.selectcmp, %tobool.not.i652
  br i1 %or.cond.i653, label %if.end131.if.end.i656_crit_edge, label %if.then.i654

if.end131.if.end.i656_crit_edge:                  ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i656

if.then.i654:                                     ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  %318 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 30), align 1
  %319 = and i8 %318, 15
  %320 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %319, ptr %0, align 1
  br label %if.end.i656

if.end.i656:                                      ; preds = %if.then.i654, %if.end131.if.end.i656_crit_edge
  %or.cond56.i = and i1 %switch.selectcmp, %switch
  br i1 %or.cond56.i, label %if.then8.i, label %if.end.i656.if.end14.i_crit_edge

if.end.i656.if.end14.i_crit_edge:                 ; preds = %if.end.i656
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.end.i656
  call void @__sanitizer_cov_trace_pc() #12
  %321 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %322 = and i8 %321, 15
  %323 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 %322, ptr %0, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %if.end.i656.if.end14.i_crit_edge
  br i1 %switch, label %if.end14.i.construct_mic_iv.exit_crit_edge, label %if.then16.i

if.end14.i.construct_mic_iv.exit_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %construct_mic_iv.exit

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %324 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 0, ptr %0, align 1
  br label %construct_mic_iv.exit

construct_mic_iv.exit:                            ; preds = %if.then16.i, %if.end14.i.construct_mic_iv.exit_crit_edge
  %325 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 10), align 1
  %326 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %325, ptr %1, align 1
  %327 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 11), align 1
  %328 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %327, ptr %2, align 1
  %329 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 12), align 1
  %330 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 %329, ptr %3, align 1
  %331 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 13), align 1
  %332 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 %331, ptr %4, align 1
  %333 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 14), align 1
  %334 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 %333, ptr %5, align 1
  %335 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 15), align 1
  %336 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %335, ptr %6, align 1
  %337 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 %316, ptr %7, align 1
  %338 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %314, ptr %8, align 1
  %339 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %312, ptr %9, align 1
  %340 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 %310, ptr %10, align 1
  %341 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 %308, ptr %11, align 1
  %342 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %306, ptr %12, align 1
  %div55.i = lshr i32 %sub, 8
  %conv31.i = trunc i32 %div55.i to i8
  %343 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 %conv31.i, ptr %13, align 1
  %conv33.i = trunc i32 %sub to i8
  %344 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 %conv33.i, ptr %14, align 1
  %sub.i = add i32 %hdrlen.addr.1, -2
  %div.i663 = sdiv i32 %sub.i, 256
  %conv.i = trunc i32 %div.i663 to i8
  %conv2.i = trunc i32 %sub.i to i8
  %345 = load i8, ptr @aes_decipher.message, align 1
  %346 = and i8 %345, -49
  %347 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 1), align 1
  %348 = and i8 %347, -57
  %349 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 4), align 1
  %350 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 5), align 1
  %351 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 6), align 1
  %352 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 7), align 1
  %353 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 8), align 1
  %354 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 9), align 1
  %355 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 16), align 1
  %356 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 17), align 1
  %357 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 18), align 1
  %358 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 19), align 1
  %359 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 20), align 1
  %360 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 21), align 1
  %or.cond.i678 = or i1 %switch.selectcmp, %switch
  br i1 %or.cond.i678, label %construct_mic_iv.exit.if.end.i685_crit_edge, label %for.body18.preheader.i

construct_mic_iv.exit.if.end.i685_crit_edge:      ; preds = %construct_mic_iv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i685

for.body18.preheader.i:                           ; preds = %construct_mic_iv.exit
  call void @__sanitizer_cov_trace_pc() #12
  %361 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %362 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 25), align 1
  %363 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 26), align 1
  %364 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 27), align 1
  %365 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 28), align 1
  %366 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 29), align 1
  br label %if.end.i685

if.end.i685:                                      ; preds = %for.body18.preheader.i, %construct_mic_iv.exit.if.end.i685_crit_edge
  %mic_header2.sroa.28.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i685_crit_edge ], [ %361, %for.body18.preheader.i ]
  %mic_header2.sroa.33.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i685_crit_edge ], [ %362, %for.body18.preheader.i ]
  %mic_header2.sroa.38.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i685_crit_edge ], [ %363, %for.body18.preheader.i ]
  %mic_header2.sroa.42.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i685_crit_edge ], [ %364, %for.body18.preheader.i ]
  %mic_header2.sroa.46.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i685_crit_edge ], [ %365, %for.body18.preheader.i ]
  %mic_header2.sroa.50.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i685_crit_edge ], [ %366, %for.body18.preheader.i ]
  br i1 %or.cond56.i, label %if.then28.i, label %if.end.i685.if.end37.i_crit_edge

if.end.i685.if.end37.i_crit_edge:                 ; preds = %if.end.i685
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then28.i:                                      ; preds = %if.end.i685
  call void @__sanitizer_cov_trace_pc() #12
  %367 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %368 = and i8 %367, 15
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then28.i, %if.end.i685.if.end37.i_crit_edge
  %mic_header2.sroa.28.1 = phi i8 [ %368, %if.then28.i ], [ %mic_header2.sroa.28.0, %if.end.i685.if.end37.i_crit_edge ]
  %mic_header2.sroa.33.1 = phi i8 [ 0, %if.then28.i ], [ %mic_header2.sroa.33.0, %if.end.i685.if.end37.i_crit_edge ]
  br i1 %or.cond.i653, label %if.end37.i.construct_mic_header2.exit_crit_edge, label %for.body45.preheader.i

if.end37.i.construct_mic_header2.exit_crit_edge:  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %construct_mic_header2.exit

for.body45.preheader.i:                           ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  %369 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %370 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 25), align 1
  %371 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 26), align 1
  %372 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 27), align 1
  %373 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 28), align 1
  %374 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 29), align 1
  %375 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 30), align 1
  %376 = and i8 %375, 15
  br label %construct_mic_header2.exit

construct_mic_header2.exit:                       ; preds = %for.body45.preheader.i, %if.end37.i.construct_mic_header2.exit_crit_edge
  %mic_header2.sroa.28.2 = phi i8 [ %mic_header2.sroa.28.1, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %369, %for.body45.preheader.i ]
  %mic_header2.sroa.33.2 = phi i8 [ %mic_header2.sroa.33.1, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %370, %for.body45.preheader.i ]
  %mic_header2.sroa.38.1 = phi i8 [ %mic_header2.sroa.38.0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %371, %for.body45.preheader.i ]
  %mic_header2.sroa.42.1 = phi i8 [ %mic_header2.sroa.42.0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %372, %for.body45.preheader.i ]
  %mic_header2.sroa.46.1 = phi i8 [ %mic_header2.sroa.46.0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %373, %for.body45.preheader.i ]
  %mic_header2.sroa.50.1 = phi i8 [ %mic_header2.sroa.50.0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %374, %for.body45.preheader.i ]
  %mic_header2.sroa.54.0 = phi i8 [ 0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %376, %for.body45.preheader.i ]
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %mic_iv, ptr noundef nonnull %aes_out)
  %377 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %aes_out, align 1
  %xor9.i687 = xor i8 %378, %conv.i
  %379 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 %xor9.i687, ptr %chain_buffer, align 8
  %380 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %45, align 1
  %xor9.1.i690 = xor i8 %381, %conv2.i
  %382 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 %xor9.1.i690, ptr %30, align 1
  %383 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %46, align 1
  %xor9.2.i694 = xor i8 %384, %346
  %385 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 %xor9.2.i694, ptr %31, align 2
  %386 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %47, align 1
  %xor9.3.i698 = xor i8 %387, %348
  %388 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 %xor9.3.i698, ptr %32, align 1
  %389 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %48, align 1
  %xor9.4.i702 = xor i8 %390, %349
  %391 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 %xor9.4.i702, ptr %33, align 4
  %392 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %49, align 1
  %xor9.5.i706 = xor i8 %393, %350
  %394 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 %xor9.5.i706, ptr %34, align 1
  %395 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %50, align 1
  %xor9.6.i710 = xor i8 %396, %351
  %397 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 %xor9.6.i710, ptr %35, align 2
  %398 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %51, align 1
  %xor9.7.i714 = xor i8 %399, %352
  %400 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 %xor9.7.i714, ptr %36, align 1
  %401 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %52, align 1
  %xor9.8.i718 = xor i8 %402, %353
  %403 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 %xor9.8.i718, ptr %37, align 8
  %404 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %53, align 1
  %xor9.9.i722 = xor i8 %405, %354
  %406 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 %xor9.9.i722, ptr %38, align 1
  %407 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %54, align 1
  %xor9.10.i726 = xor i8 %408, %325
  %409 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 %xor9.10.i726, ptr %39, align 2
  %410 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %55, align 1
  %xor9.11.i730 = xor i8 %411, %327
  %412 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 %xor9.11.i730, ptr %40, align 1
  %413 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %56, align 1
  %xor9.12.i734 = xor i8 %414, %329
  %415 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 %xor9.12.i734, ptr %41, align 4
  %416 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %57, align 1
  %xor9.13.i738 = xor i8 %417, %331
  %418 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 %xor9.13.i738, ptr %42, align 1
  %419 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %58, align 1
  %xor9.14.i742 = xor i8 %420, %333
  %421 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %421)
  store i8 %xor9.14.i742, ptr %43, align 2
  %422 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %59, align 1
  %xor9.15.i746 = xor i8 %423, %335
  %424 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 %xor9.15.i746, ptr %44, align 1
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %chain_buffer, ptr noundef nonnull %aes_out)
  %425 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %aes_out, align 1
  %xor9.i748 = xor i8 %426, %355
  %427 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 %xor9.i748, ptr %chain_buffer, align 8
  %428 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %45, align 1
  %xor9.1.i751 = xor i8 %429, %356
  %430 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %430)
  store i8 %xor9.1.i751, ptr %30, align 1
  %431 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %46, align 1
  %xor9.2.i755 = xor i8 %432, %357
  %433 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 %xor9.2.i755, ptr %31, align 2
  %434 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %47, align 1
  %xor9.3.i759 = xor i8 %435, %358
  %436 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 %xor9.3.i759, ptr %32, align 1
  %437 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %48, align 1
  %xor9.4.i763 = xor i8 %438, %359
  %439 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 %xor9.4.i763, ptr %33, align 4
  %440 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %49, align 1
  %xor9.5.i767 = xor i8 %441, %360
  %442 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %442)
  store i8 %xor9.5.i767, ptr %34, align 1
  %443 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %50, align 1
  %445 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %445)
  store i8 %444, ptr %35, align 2
  %446 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %51, align 1
  %448 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 %447, ptr %36, align 1
  %449 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %52, align 1
  %xor9.8.i779 = xor i8 %450, %mic_header2.sroa.28.2
  %451 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 %xor9.8.i779, ptr %37, align 8
  %452 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %53, align 1
  %xor9.9.i783 = xor i8 %453, %mic_header2.sroa.33.2
  %454 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %454)
  store i8 %xor9.9.i783, ptr %38, align 1
  %455 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %455)
  %456 = load i8, ptr %54, align 1
  %xor9.10.i787 = xor i8 %456, %mic_header2.sroa.38.1
  %457 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %457)
  store i8 %xor9.10.i787, ptr %39, align 2
  %458 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %55, align 1
  %xor9.11.i791 = xor i8 %459, %mic_header2.sroa.42.1
  %460 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %460)
  store i8 %xor9.11.i791, ptr %40, align 1
  %461 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %56, align 1
  %xor9.12.i795 = xor i8 %462, %mic_header2.sroa.46.1
  %463 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %463)
  store i8 %xor9.12.i795, ptr %41, align 4
  %464 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %57, align 1
  %xor9.13.i799 = xor i8 %465, %mic_header2.sroa.50.1
  %466 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %466)
  store i8 %xor9.13.i799, ptr %42, align 1
  %467 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %58, align 1
  %xor9.14.i803 = xor i8 %468, %mic_header2.sroa.54.0
  %469 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %469)
  store i8 %xor9.14.i803, ptr %43, align 2
  %470 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %59, align 1
  %472 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %472)
  store i8 %471, ptr %44, align 1
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %chain_buffer, ptr noundef nonnull %aes_out)
  br i1 %cmp641258.not, label %construct_mic_header2.exit.for.end183_crit_edge, label %for.body174.preheader

construct_mic_header2.exit.for.end183_crit_edge:  ; preds = %construct_mic_header2.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end183

for.body174.preheader:                            ; preds = %construct_mic_header2.exit
  %umax1302 = call i32 @llvm.umax.i32(i32 %div550, i32 1)
  br label %for.body174

for.body174:                                      ; preds = %for.body174.for.body174_crit_edge, %for.body174.preheader
  %payload_index.31269 = phi i32 [ %add178, %for.body174.for.body174_crit_edge ], [ %add63, %for.body174.preheader ]
  %i.11268 = phi i32 [ %inc182, %for.body174.for.body174_crit_edge ], [ 0, %for.body174.preheader ]
  %arrayidx176 = getelementptr [2048 x i8], ptr @aes_decipher.message, i32 0, i32 %payload_index.31269
  %473 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %aes_out, align 1
  %475 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %475)
  %476 = load i8, ptr %arrayidx176, align 1
  %xor9.i809 = xor i8 %476, %474
  %477 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %477)
  store i8 %xor9.i809, ptr %chain_buffer, align 8
  %478 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %478)
  %479 = load i8, ptr %45, align 1
  %arrayidx1.1.i811 = getelementptr i8, ptr %arrayidx176, i32 1
  %480 = ptrtoint ptr %arrayidx1.1.i811 to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %arrayidx1.1.i811, align 1
  %xor9.1.i812 = xor i8 %481, %479
  %482 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %482)
  store i8 %xor9.1.i812, ptr %30, align 1
  %483 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %46, align 1
  %arrayidx1.2.i815 = getelementptr i8, ptr %arrayidx176, i32 2
  %485 = ptrtoint ptr %arrayidx1.2.i815 to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %arrayidx1.2.i815, align 1
  %xor9.2.i816 = xor i8 %486, %484
  %487 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 %xor9.2.i816, ptr %31, align 2
  %488 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %47, align 1
  %arrayidx1.3.i819 = getelementptr i8, ptr %arrayidx176, i32 3
  %490 = ptrtoint ptr %arrayidx1.3.i819 to i32
  call void @__asan_load1_noabort(i32 %490)
  %491 = load i8, ptr %arrayidx1.3.i819, align 1
  %xor9.3.i820 = xor i8 %491, %489
  %492 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %492)
  store i8 %xor9.3.i820, ptr %32, align 1
  %493 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %48, align 1
  %arrayidx1.4.i823 = getelementptr i8, ptr %arrayidx176, i32 4
  %495 = ptrtoint ptr %arrayidx1.4.i823 to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %arrayidx1.4.i823, align 1
  %xor9.4.i824 = xor i8 %496, %494
  %497 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %497)
  store i8 %xor9.4.i824, ptr %33, align 4
  %498 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %49, align 1
  %arrayidx1.5.i827 = getelementptr i8, ptr %arrayidx176, i32 5
  %500 = ptrtoint ptr %arrayidx1.5.i827 to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %arrayidx1.5.i827, align 1
  %xor9.5.i828 = xor i8 %501, %499
  %502 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %502)
  store i8 %xor9.5.i828, ptr %34, align 1
  %503 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %50, align 1
  %arrayidx1.6.i831 = getelementptr i8, ptr %arrayidx176, i32 6
  %505 = ptrtoint ptr %arrayidx1.6.i831 to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %arrayidx1.6.i831, align 1
  %xor9.6.i832 = xor i8 %506, %504
  %507 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %507)
  store i8 %xor9.6.i832, ptr %35, align 2
  %508 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %508)
  %509 = load i8, ptr %51, align 1
  %arrayidx1.7.i835 = getelementptr i8, ptr %arrayidx176, i32 7
  %510 = ptrtoint ptr %arrayidx1.7.i835 to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %arrayidx1.7.i835, align 1
  %xor9.7.i836 = xor i8 %511, %509
  %512 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %512)
  store i8 %xor9.7.i836, ptr %36, align 1
  %513 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %52, align 1
  %arrayidx1.8.i839 = getelementptr i8, ptr %arrayidx176, i32 8
  %515 = ptrtoint ptr %arrayidx1.8.i839 to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %arrayidx1.8.i839, align 1
  %xor9.8.i840 = xor i8 %516, %514
  %517 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %517)
  store i8 %xor9.8.i840, ptr %37, align 8
  %518 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %518)
  %519 = load i8, ptr %53, align 1
  %arrayidx1.9.i843 = getelementptr i8, ptr %arrayidx176, i32 9
  %520 = ptrtoint ptr %arrayidx1.9.i843 to i32
  call void @__asan_load1_noabort(i32 %520)
  %521 = load i8, ptr %arrayidx1.9.i843, align 1
  %xor9.9.i844 = xor i8 %521, %519
  %522 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %522)
  store i8 %xor9.9.i844, ptr %38, align 1
  %523 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %523)
  %524 = load i8, ptr %54, align 1
  %arrayidx1.10.i847 = getelementptr i8, ptr %arrayidx176, i32 10
  %525 = ptrtoint ptr %arrayidx1.10.i847 to i32
  call void @__asan_load1_noabort(i32 %525)
  %526 = load i8, ptr %arrayidx1.10.i847, align 1
  %xor9.10.i848 = xor i8 %526, %524
  %527 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %527)
  store i8 %xor9.10.i848, ptr %39, align 2
  %528 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %528)
  %529 = load i8, ptr %55, align 1
  %arrayidx1.11.i851 = getelementptr i8, ptr %arrayidx176, i32 11
  %530 = ptrtoint ptr %arrayidx1.11.i851 to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %arrayidx1.11.i851, align 1
  %xor9.11.i852 = xor i8 %531, %529
  %532 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %532)
  store i8 %xor9.11.i852, ptr %40, align 1
  %533 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %533)
  %534 = load i8, ptr %56, align 1
  %arrayidx1.12.i855 = getelementptr i8, ptr %arrayidx176, i32 12
  %535 = ptrtoint ptr %arrayidx1.12.i855 to i32
  call void @__asan_load1_noabort(i32 %535)
  %536 = load i8, ptr %arrayidx1.12.i855, align 1
  %xor9.12.i856 = xor i8 %536, %534
  %537 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %537)
  store i8 %xor9.12.i856, ptr %41, align 4
  %538 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %57, align 1
  %arrayidx1.13.i859 = getelementptr i8, ptr %arrayidx176, i32 13
  %540 = ptrtoint ptr %arrayidx1.13.i859 to i32
  call void @__asan_load1_noabort(i32 %540)
  %541 = load i8, ptr %arrayidx1.13.i859, align 1
  %xor9.13.i860 = xor i8 %541, %539
  %542 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %542)
  store i8 %xor9.13.i860, ptr %42, align 1
  %543 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %543)
  %544 = load i8, ptr %58, align 1
  %arrayidx1.14.i863 = getelementptr i8, ptr %arrayidx176, i32 14
  %545 = ptrtoint ptr %arrayidx1.14.i863 to i32
  call void @__asan_load1_noabort(i32 %545)
  %546 = load i8, ptr %arrayidx1.14.i863, align 1
  %xor9.14.i864 = xor i8 %546, %544
  %547 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %547)
  store i8 %xor9.14.i864, ptr %43, align 2
  %548 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %59, align 1
  %arrayidx1.15.i867 = getelementptr i8, ptr %arrayidx176, i32 15
  %550 = ptrtoint ptr %arrayidx1.15.i867 to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %arrayidx1.15.i867, align 1
  %xor9.15.i868 = xor i8 %551, %549
  %552 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %552)
  store i8 %xor9.15.i868, ptr %44, align 1
  %add178 = add i32 %payload_index.31269, 16
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %chain_buffer, ptr noundef nonnull %aes_out)
  %inc182 = add nuw nsw i32 %i.11268, 1
  %exitcond1303.not = icmp eq i32 %inc182, %umax1302
  br i1 %exitcond1303.not, label %for.body174.for.end183_crit_edge, label %for.body174.for.body174_crit_edge

for.body174.for.body174_crit_edge:                ; preds = %for.body174
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body174

for.body174.for.end183_crit_edge:                 ; preds = %for.body174
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end183

for.end183:                                       ; preds = %for.body174.for.end183_crit_edge, %construct_mic_header2.exit.for.end183_crit_edge
  %payload_index.3.lcssa = phi i32 [ %add63, %construct_mic_header2.exit.for.end183_crit_edge ], [ %add178, %for.body174.for.end183_crit_edge ]
  br i1 %cmp84.not, label %for.end183.if.end210_crit_edge, label %for.end204

for.end183.if.end210_crit_edge:                   ; preds = %for.end183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210

for.end204:                                       ; preds = %for.end183
  call void @__sanitizer_cov_trace_pc() #12
  %uglygep1304 = getelementptr i8, ptr @aes_decipher.message, i32 %payload_index.3.lcssa
  %553 = sub nuw nsw i32 16, %rem
  %554 = getelementptr i8, ptr %padded_buffer, i32 %rem
  %555 = call ptr @memset(ptr %554, i32 0, i32 %553)
  %556 = call ptr @memcpy(ptr %padded_buffer, ptr %uglygep1304, i32 %rem)
  %557 = add i32 %payload_index.3.lcssa, %rem
  %558 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %aes_out, align 1
  %560 = ptrtoint ptr %padded_buffer to i32
  call void @__asan_load1_noabort(i32 %560)
  %padded_buffer.0.1325 = load i8, ptr %padded_buffer, align 8
  %xor9.i870 = xor i8 %padded_buffer.0.1325, %559
  %561 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %561)
  store i8 %xor9.i870, ptr %chain_buffer, align 8
  %562 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %562)
  %563 = load i8, ptr %45, align 1
  %564 = ptrtoint ptr %padded_buffer.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %564)
  %padded_buffer.1.1328 = load i8, ptr %padded_buffer.1..sroa_idx, align 1
  %xor9.1.i873 = xor i8 %padded_buffer.1.1328, %563
  %565 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %565)
  store i8 %xor9.1.i873, ptr %30, align 1
  %566 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %566)
  %567 = load i8, ptr %46, align 1
  %568 = ptrtoint ptr %padded_buffer.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %568)
  %padded_buffer.2.1331 = load i8, ptr %padded_buffer.2..sroa_idx, align 2
  %xor9.2.i877 = xor i8 %padded_buffer.2.1331, %567
  %569 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %569)
  store i8 %xor9.2.i877, ptr %31, align 2
  %570 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %47, align 1
  %572 = ptrtoint ptr %padded_buffer.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %572)
  %padded_buffer.3.1334 = load i8, ptr %padded_buffer.3..sroa_idx, align 1
  %xor9.3.i881 = xor i8 %padded_buffer.3.1334, %571
  %573 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %573)
  store i8 %xor9.3.i881, ptr %32, align 1
  %574 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %48, align 1
  %576 = ptrtoint ptr %padded_buffer.4..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %576)
  %padded_buffer.4.1337 = load i8, ptr %padded_buffer.4..sroa_idx, align 4
  %xor9.4.i885 = xor i8 %padded_buffer.4.1337, %575
  %577 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %577)
  store i8 %xor9.4.i885, ptr %33, align 4
  %578 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %49, align 1
  %580 = ptrtoint ptr %padded_buffer.5..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %580)
  %padded_buffer.5.1340 = load i8, ptr %padded_buffer.5..sroa_idx, align 1
  %xor9.5.i889 = xor i8 %padded_buffer.5.1340, %579
  %581 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %581)
  store i8 %xor9.5.i889, ptr %34, align 1
  %582 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %582)
  %583 = load i8, ptr %50, align 1
  %584 = ptrtoint ptr %padded_buffer.6..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %584)
  %padded_buffer.6.1343 = load i8, ptr %padded_buffer.6..sroa_idx, align 2
  %xor9.6.i893 = xor i8 %padded_buffer.6.1343, %583
  %585 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %585)
  store i8 %xor9.6.i893, ptr %35, align 2
  %586 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %586)
  %587 = load i8, ptr %51, align 1
  %588 = ptrtoint ptr %padded_buffer.7..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %588)
  %padded_buffer.7.1346 = load i8, ptr %padded_buffer.7..sroa_idx, align 1
  %xor9.7.i897 = xor i8 %padded_buffer.7.1346, %587
  %589 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 %xor9.7.i897, ptr %36, align 1
  %590 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %590)
  %591 = load i8, ptr %52, align 1
  %592 = ptrtoint ptr %padded_buffer.8..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %592)
  %padded_buffer.8.1349 = load i8, ptr %padded_buffer.8..sroa_idx, align 8
  %xor9.8.i901 = xor i8 %padded_buffer.8.1349, %591
  %593 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %593)
  store i8 %xor9.8.i901, ptr %37, align 8
  %594 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %594)
  %595 = load i8, ptr %53, align 1
  %596 = ptrtoint ptr %padded_buffer.9..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %596)
  %padded_buffer.9.1352 = load i8, ptr %padded_buffer.9..sroa_idx, align 1
  %xor9.9.i905 = xor i8 %padded_buffer.9.1352, %595
  %597 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %597)
  store i8 %xor9.9.i905, ptr %38, align 1
  %598 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %598)
  %599 = load i8, ptr %54, align 1
  %600 = ptrtoint ptr %padded_buffer.10..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %600)
  %padded_buffer.10.1355 = load i8, ptr %padded_buffer.10..sroa_idx, align 2
  %xor9.10.i909 = xor i8 %padded_buffer.10.1355, %599
  %601 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %601)
  store i8 %xor9.10.i909, ptr %39, align 2
  %602 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %602)
  %603 = load i8, ptr %55, align 1
  %604 = ptrtoint ptr %padded_buffer.11..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %604)
  %padded_buffer.11.1358 = load i8, ptr %padded_buffer.11..sroa_idx, align 1
  %xor9.11.i913 = xor i8 %padded_buffer.11.1358, %603
  %605 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %605)
  store i8 %xor9.11.i913, ptr %40, align 1
  %606 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %606)
  %607 = load i8, ptr %56, align 1
  %608 = ptrtoint ptr %padded_buffer.12..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %608)
  %padded_buffer.12.1361 = load i8, ptr %padded_buffer.12..sroa_idx, align 4
  %xor9.12.i917 = xor i8 %padded_buffer.12.1361, %607
  %609 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %609)
  store i8 %xor9.12.i917, ptr %41, align 4
  %610 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %610)
  %611 = load i8, ptr %57, align 1
  %612 = ptrtoint ptr %padded_buffer.13..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %612)
  %padded_buffer.13.1364 = load i8, ptr %padded_buffer.13..sroa_idx, align 1
  %xor9.13.i921 = xor i8 %padded_buffer.13.1364, %611
  %613 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %613)
  store i8 %xor9.13.i921, ptr %42, align 1
  %614 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %614)
  %615 = load i8, ptr %58, align 1
  %616 = ptrtoint ptr %padded_buffer.14..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %616)
  %padded_buffer.14.1367 = load i8, ptr %padded_buffer.14..sroa_idx, align 2
  %xor9.14.i925 = xor i8 %padded_buffer.14.1367, %615
  %617 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %617)
  store i8 %xor9.14.i925, ptr %43, align 2
  %618 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %618)
  %619 = load i8, ptr %59, align 1
  %620 = ptrtoint ptr %padded_buffer.15..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %620)
  %padded_buffer.15.1370 = load i8, ptr %padded_buffer.15..sroa_idx, align 1
  %xor9.15.i929 = xor i8 %padded_buffer.15.1370, %619
  %621 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %621)
  store i8 %xor9.15.i929, ptr %44, align 1
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %chain_buffer, ptr noundef nonnull %aes_out)
  br label %if.end210

if.end210:                                        ; preds = %for.end204, %for.end183.if.end210_crit_edge
  %payload_index.5 = phi i32 [ %557, %for.end204 ], [ %payload_index.3.lcssa, %for.end183.if.end210_crit_edge ]
  %622 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %622)
  %mic.sroa.0.0.copyload = load i8, ptr %aes_out, align 1
  %623 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %623)
  %mic.sroa.5.0.copyload = load i8, ptr %45, align 1
  %624 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %624)
  %mic.sroa.6.0.copyload = load i8, ptr %46, align 1
  %625 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %625)
  %mic.sroa.7.0.copyload = load i8, ptr %47, align 1
  %626 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %626)
  %mic.sroa.8.0.copyload = load i8, ptr %48, align 1
  %627 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %627)
  %mic.sroa.9.0.copyload = load i8, ptr %49, align 1
  %628 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %628)
  %mic.sroa.10.0.copyload = load i8, ptr %50, align 1
  %629 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %629)
  %mic.sroa.11.0.copyload = load i8, ptr %51, align 1
  %uglygep1305 = getelementptr i8, ptr @aes_decipher.message, i32 %payload_index.5
  %630 = ptrtoint ptr %uglygep1305 to i32
  call void @__asan_store1_noabort(i32 %630)
  store i8 %mic.sroa.0.0.copyload, ptr %uglygep1305, align 1
  %mic.sroa.5.0.uglygep1305.sroa_idx = getelementptr inbounds i8, ptr %uglygep1305, i32 1
  %631 = ptrtoint ptr %mic.sroa.5.0.uglygep1305.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %631)
  store i8 %mic.sroa.5.0.copyload, ptr %mic.sroa.5.0.uglygep1305.sroa_idx, align 1
  %mic.sroa.6.0.uglygep1305.sroa_idx = getelementptr inbounds i8, ptr %uglygep1305, i32 2
  %632 = ptrtoint ptr %mic.sroa.6.0.uglygep1305.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %632)
  store i8 %mic.sroa.6.0.copyload, ptr %mic.sroa.6.0.uglygep1305.sroa_idx, align 1
  %mic.sroa.7.0.uglygep1305.sroa_idx = getelementptr inbounds i8, ptr %uglygep1305, i32 3
  %633 = ptrtoint ptr %mic.sroa.7.0.uglygep1305.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %633)
  store i8 %mic.sroa.7.0.copyload, ptr %mic.sroa.7.0.uglygep1305.sroa_idx, align 1
  %mic.sroa.8.0.uglygep1305.sroa_idx = getelementptr inbounds i8, ptr %uglygep1305, i32 4
  %634 = ptrtoint ptr %mic.sroa.8.0.uglygep1305.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %634)
  store i8 %mic.sroa.8.0.copyload, ptr %mic.sroa.8.0.uglygep1305.sroa_idx, align 1
  %mic.sroa.9.0.uglygep1305.sroa_idx = getelementptr inbounds i8, ptr %uglygep1305, i32 5
  %635 = ptrtoint ptr %mic.sroa.9.0.uglygep1305.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %635)
  store i8 %mic.sroa.9.0.copyload, ptr %mic.sroa.9.0.uglygep1305.sroa_idx, align 1
  %mic.sroa.10.0.uglygep1305.sroa_idx = getelementptr inbounds i8, ptr %uglygep1305, i32 6
  %636 = ptrtoint ptr %mic.sroa.10.0.uglygep1305.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %636)
  store i8 %mic.sroa.10.0.copyload, ptr %mic.sroa.10.0.uglygep1305.sroa_idx, align 1
  %mic.sroa.11.0.uglygep1305.sroa_idx = getelementptr inbounds i8, ptr %uglygep1305, i32 7
  %637 = ptrtoint ptr %mic.sroa.11.0.uglygep1305.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %637)
  store i8 %mic.sroa.11.0.copyload, ptr %mic.sroa.11.0.uglygep1305.sroa_idx, align 1
  br i1 %cmp641258.not, label %if.end210.for.end255_crit_edge, label %for.body234.lr.ph

if.end210.for.end255_crit_edge:                   ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end255

for.body234.lr.ph:                                ; preds = %if.end210
  %umax1307 = call i32 @llvm.umax.i32(i32 %div550, i32 1)
  br label %for.body234

for.body234:                                      ; preds = %construct_ctr_preload.exit962.for.body234_crit_edge, %for.body234.lr.ph
  %payload_index.61282 = phi i32 [ %add63, %for.body234.lr.ph ], [ %747, %construct_ctr_preload.exit962.for.body234_crit_edge ]
  %i.21281 = phi i32 [ 0, %for.body234.lr.ph ], [ %add237, %construct_ctr_preload.exit962.for.body234_crit_edge ]
  %add237 = add nuw nsw i32 %i.21281, 1
  %638 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %638)
  store i8 0, ptr %15, align 1
  %639 = ptrtoint ptr %ctr_preload to i32
  call void @__asan_store1_noabort(i32 %639)
  store i8 1, ptr %ctr_preload, align 1
  br i1 %or.cond.i653, label %for.body234.if.end.i937_crit_edge, label %if.then.i934

for.body234.if.end.i937_crit_edge:                ; preds = %for.body234
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i937

if.then.i934:                                     ; preds = %for.body234
  call void @__sanitizer_cov_trace_pc() #12
  %640 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 30), align 1
  %641 = and i8 %640, 15
  %642 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %642)
  store i8 %641, ptr %15, align 1
  br label %if.end.i937

if.end.i937:                                      ; preds = %if.then.i934, %for.body234.if.end.i937_crit_edge
  br i1 %or.cond56.i, label %if.then9.i939, label %if.end.i937.construct_ctr_preload.exit962_crit_edge

if.end.i937.construct_ctr_preload.exit962_crit_edge: ; preds = %if.end.i937
  call void @__sanitizer_cov_trace_pc() #12
  br label %construct_ctr_preload.exit962

if.then9.i939:                                    ; preds = %if.end.i937
  call void @__sanitizer_cov_trace_pc() #12
  %643 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %644 = and i8 %643, 15
  %645 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %645)
  store i8 %644, ptr %15, align 1
  br label %construct_ctr_preload.exit962

construct_ctr_preload.exit962:                    ; preds = %if.then9.i939, %if.end.i937.construct_ctr_preload.exit962_crit_edge
  %646 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 10), align 1
  %647 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %647)
  store i8 %646, ptr %16, align 1
  %648 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 11), align 1
  %649 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %649)
  store i8 %648, ptr %17, align 1
  %650 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 12), align 1
  %651 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %651)
  store i8 %650, ptr %18, align 1
  %652 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 13), align 1
  %653 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %653)
  store i8 %652, ptr %19, align 1
  %654 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 14), align 1
  %655 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %655)
  store i8 %654, ptr %20, align 1
  %656 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 15), align 1
  %657 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %657)
  store i8 %656, ptr %21, align 1
  %658 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %658)
  store i8 %316, ptr %22, align 1
  %659 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %659)
  store i8 %314, ptr %23, align 1
  %660 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %660)
  store i8 %312, ptr %24, align 1
  %661 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %661)
  store i8 %310, ptr %25, align 1
  %662 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %662)
  store i8 %308, ptr %26, align 1
  %663 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %663)
  store i8 %306, ptr %27, align 1
  %div.i957.udiv1374 = lshr i32 %add237, 8
  %conv34.i958 = trunc i32 %div.i957.udiv1374 to i8
  %664 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %664)
  store i8 %conv34.i958, ptr %28, align 1
  %conv36.i960 = trunc i32 %add237 to i8
  %665 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %665)
  store i8 %conv36.i960, ptr %29, align 1
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %ctr_preload, ptr noundef nonnull %aes_out)
  %arrayidx241 = getelementptr [2048 x i8], ptr @aes_decipher.message, i32 0, i32 %payload_index.61282
  %666 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %666)
  %667 = load i8, ptr %aes_out, align 1
  %668 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load1_noabort(i32 %668)
  %669 = load i8, ptr %arrayidx241, align 1
  %xor9.i963 = xor i8 %669, %667
  %670 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %670)
  store i8 %xor9.i963, ptr %chain_buffer, align 8
  %671 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %671)
  %672 = load i8, ptr %45, align 1
  %arrayidx1.1.i965 = getelementptr i8, ptr %arrayidx241, i32 1
  %673 = ptrtoint ptr %arrayidx1.1.i965 to i32
  call void @__asan_load1_noabort(i32 %673)
  %674 = load i8, ptr %arrayidx1.1.i965, align 1
  %xor9.1.i966 = xor i8 %674, %672
  %675 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %675)
  store i8 %xor9.1.i966, ptr %30, align 1
  %676 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %676)
  %677 = load i8, ptr %46, align 1
  %arrayidx1.2.i969 = getelementptr i8, ptr %arrayidx241, i32 2
  %678 = ptrtoint ptr %arrayidx1.2.i969 to i32
  call void @__asan_load1_noabort(i32 %678)
  %679 = load i8, ptr %arrayidx1.2.i969, align 1
  %xor9.2.i970 = xor i8 %679, %677
  %680 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %680)
  store i8 %xor9.2.i970, ptr %31, align 2
  %681 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %681)
  %682 = load i8, ptr %47, align 1
  %arrayidx1.3.i973 = getelementptr i8, ptr %arrayidx241, i32 3
  %683 = ptrtoint ptr %arrayidx1.3.i973 to i32
  call void @__asan_load1_noabort(i32 %683)
  %684 = load i8, ptr %arrayidx1.3.i973, align 1
  %xor9.3.i974 = xor i8 %684, %682
  %685 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %685)
  store i8 %xor9.3.i974, ptr %32, align 1
  %686 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %686)
  %687 = load i8, ptr %48, align 1
  %arrayidx1.4.i977 = getelementptr i8, ptr %arrayidx241, i32 4
  %688 = ptrtoint ptr %arrayidx1.4.i977 to i32
  call void @__asan_load1_noabort(i32 %688)
  %689 = load i8, ptr %arrayidx1.4.i977, align 1
  %xor9.4.i978 = xor i8 %689, %687
  %690 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %690)
  store i8 %xor9.4.i978, ptr %33, align 4
  %691 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %691)
  %692 = load i8, ptr %49, align 1
  %arrayidx1.5.i981 = getelementptr i8, ptr %arrayidx241, i32 5
  %693 = ptrtoint ptr %arrayidx1.5.i981 to i32
  call void @__asan_load1_noabort(i32 %693)
  %694 = load i8, ptr %arrayidx1.5.i981, align 1
  %xor9.5.i982 = xor i8 %694, %692
  %695 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %695)
  store i8 %xor9.5.i982, ptr %34, align 1
  %696 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %696)
  %697 = load i8, ptr %50, align 1
  %arrayidx1.6.i985 = getelementptr i8, ptr %arrayidx241, i32 6
  %698 = ptrtoint ptr %arrayidx1.6.i985 to i32
  call void @__asan_load1_noabort(i32 %698)
  %699 = load i8, ptr %arrayidx1.6.i985, align 1
  %xor9.6.i986 = xor i8 %699, %697
  %700 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %700)
  store i8 %xor9.6.i986, ptr %35, align 2
  %701 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %701)
  %702 = load i8, ptr %51, align 1
  %arrayidx1.7.i989 = getelementptr i8, ptr %arrayidx241, i32 7
  %703 = ptrtoint ptr %arrayidx1.7.i989 to i32
  call void @__asan_load1_noabort(i32 %703)
  %704 = load i8, ptr %arrayidx1.7.i989, align 1
  %xor9.7.i990 = xor i8 %704, %702
  %705 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %705)
  store i8 %xor9.7.i990, ptr %36, align 1
  %706 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %706)
  %707 = load i8, ptr %52, align 1
  %arrayidx1.8.i993 = getelementptr i8, ptr %arrayidx241, i32 8
  %708 = ptrtoint ptr %arrayidx1.8.i993 to i32
  call void @__asan_load1_noabort(i32 %708)
  %709 = load i8, ptr %arrayidx1.8.i993, align 1
  %xor9.8.i994 = xor i8 %709, %707
  %710 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %710)
  store i8 %xor9.8.i994, ptr %37, align 8
  %711 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %711)
  %712 = load i8, ptr %53, align 1
  %arrayidx1.9.i997 = getelementptr i8, ptr %arrayidx241, i32 9
  %713 = ptrtoint ptr %arrayidx1.9.i997 to i32
  call void @__asan_load1_noabort(i32 %713)
  %714 = load i8, ptr %arrayidx1.9.i997, align 1
  %xor9.9.i998 = xor i8 %714, %712
  %715 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %715)
  store i8 %xor9.9.i998, ptr %38, align 1
  %716 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %716)
  %717 = load i8, ptr %54, align 1
  %arrayidx1.10.i1001 = getelementptr i8, ptr %arrayidx241, i32 10
  %718 = ptrtoint ptr %arrayidx1.10.i1001 to i32
  call void @__asan_load1_noabort(i32 %718)
  %719 = load i8, ptr %arrayidx1.10.i1001, align 1
  %xor9.10.i1002 = xor i8 %719, %717
  %720 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %720)
  store i8 %xor9.10.i1002, ptr %39, align 2
  %721 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %721)
  %722 = load i8, ptr %55, align 1
  %arrayidx1.11.i1005 = getelementptr i8, ptr %arrayidx241, i32 11
  %723 = ptrtoint ptr %arrayidx1.11.i1005 to i32
  call void @__asan_load1_noabort(i32 %723)
  %724 = load i8, ptr %arrayidx1.11.i1005, align 1
  %xor9.11.i1006 = xor i8 %724, %722
  %725 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %725)
  store i8 %xor9.11.i1006, ptr %40, align 1
  %726 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %726)
  %727 = load i8, ptr %56, align 1
  %arrayidx1.12.i1009 = getelementptr i8, ptr %arrayidx241, i32 12
  %728 = ptrtoint ptr %arrayidx1.12.i1009 to i32
  call void @__asan_load1_noabort(i32 %728)
  %729 = load i8, ptr %arrayidx1.12.i1009, align 1
  %xor9.12.i1010 = xor i8 %729, %727
  %730 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %730)
  store i8 %xor9.12.i1010, ptr %41, align 4
  %731 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %731)
  %732 = load i8, ptr %57, align 1
  %arrayidx1.13.i1013 = getelementptr i8, ptr %arrayidx241, i32 13
  %733 = ptrtoint ptr %arrayidx1.13.i1013 to i32
  call void @__asan_load1_noabort(i32 %733)
  %734 = load i8, ptr %arrayidx1.13.i1013, align 1
  %xor9.13.i1014 = xor i8 %734, %732
  %735 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %735)
  store i8 %xor9.13.i1014, ptr %42, align 1
  %736 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %736)
  %737 = load i8, ptr %58, align 1
  %arrayidx1.14.i1017 = getelementptr i8, ptr %arrayidx241, i32 14
  %738 = ptrtoint ptr %arrayidx1.14.i1017 to i32
  call void @__asan_load1_noabort(i32 %738)
  %739 = load i8, ptr %arrayidx1.14.i1017, align 1
  %xor9.14.i1018 = xor i8 %739, %737
  %740 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %740)
  store i8 %xor9.14.i1018, ptr %43, align 2
  %741 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %741)
  %742 = load i8, ptr %59, align 1
  %arrayidx1.15.i1021 = getelementptr i8, ptr %arrayidx241, i32 15
  %743 = ptrtoint ptr %arrayidx1.15.i1021 to i32
  call void @__asan_load1_noabort(i32 %743)
  %744 = load i8, ptr %arrayidx1.15.i1021, align 1
  %xor9.15.i1022 = xor i8 %744, %742
  %745 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %745)
  store i8 %xor9.15.i1022, ptr %44, align 1
  %746 = call ptr @memcpy(ptr %arrayidx241, ptr %chain_buffer, i32 16)
  %747 = add i32 %payload_index.61282, 16
  %exitcond1308.not = icmp eq i32 %add237, %umax1307
  br i1 %exitcond1308.not, label %construct_ctr_preload.exit962.for.end255_crit_edge, label %construct_ctr_preload.exit962.for.body234_crit_edge

construct_ctr_preload.exit962.for.body234_crit_edge: ; preds = %construct_ctr_preload.exit962
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body234

construct_ctr_preload.exit962.for.end255_crit_edge: ; preds = %construct_ctr_preload.exit962
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end255

for.end255:                                       ; preds = %construct_ctr_preload.exit962.for.end255_crit_edge, %if.end210.for.end255_crit_edge
  %payload_index.6.lcssa = phi i32 [ %add63, %if.end210.for.end255_crit_edge ], [ %747, %construct_ctr_preload.exit962.for.end255_crit_edge ]
  br i1 %cmp84.not, label %for.end255.if.end295_crit_edge, label %if.then258

for.end255.if.end295_crit_edge:                   ; preds = %for.end255
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end295

if.then258:                                       ; preds = %for.end255
  %add261 = add nuw nsw i32 %div550, 1
  %748 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %748)
  store i8 0, ptr %15, align 1
  %749 = ptrtoint ptr %ctr_preload to i32
  call void @__asan_store1_noabort(i32 %749)
  store i8 1, ptr %ctr_preload, align 1
  br i1 %or.cond.i653, label %if.then258.if.end.i1030_crit_edge, label %if.then.i1027

if.then258.if.end.i1030_crit_edge:                ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i1030

if.then.i1027:                                    ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #12
  %750 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 30), align 1
  %751 = and i8 %750, 15
  %752 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %752)
  store i8 %751, ptr %15, align 1
  br label %if.end.i1030

if.end.i1030:                                     ; preds = %if.then.i1027, %if.then258.if.end.i1030_crit_edge
  br i1 %or.cond56.i, label %if.then9.i1032, label %if.end.i1030.for.body288.preheader_crit_edge

if.end.i1030.for.body288.preheader_crit_edge:     ; preds = %if.end.i1030
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body288.preheader

if.then9.i1032:                                   ; preds = %if.end.i1030
  call void @__sanitizer_cov_trace_pc() #12
  %753 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %754 = and i8 %753, 15
  %755 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %755)
  store i8 %754, ptr %15, align 1
  br label %for.body288.preheader

for.body288.preheader:                            ; preds = %if.then9.i1032, %if.end.i1030.for.body288.preheader_crit_edge
  %756 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 10), align 1
  %757 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %757)
  store i8 %756, ptr %16, align 1
  %758 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 11), align 1
  %759 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %759)
  store i8 %758, ptr %17, align 1
  %760 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 12), align 1
  %761 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %761)
  store i8 %760, ptr %18, align 1
  %762 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 13), align 1
  %763 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %763)
  store i8 %762, ptr %19, align 1
  %764 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 14), align 1
  %765 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %765)
  store i8 %764, ptr %20, align 1
  %766 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 15), align 1
  %767 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %767)
  store i8 %766, ptr %21, align 1
  %768 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %768)
  store i8 %316, ptr %22, align 1
  %769 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %769)
  store i8 %314, ptr %23, align 1
  %770 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %770)
  store i8 %312, ptr %24, align 1
  %771 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %771)
  store i8 %310, ptr %25, align 1
  %772 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %772)
  store i8 %308, ptr %26, align 1
  %773 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %773)
  store i8 %306, ptr %27, align 1
  %div.i10501255 = lshr i32 %add261, 8
  %conv34.i1051 = trunc i32 %div.i10501255 to i8
  %774 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %774)
  store i8 %conv34.i1051, ptr %28, align 1
  %conv36.i1053 = trunc i32 %add261 to i8
  %775 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %775)
  store i8 %conv36.i1053, ptr %29, align 1
  %uglygep1309 = getelementptr i8, ptr @aes_decipher.message, i32 %payload_index.6.lcssa
  %776 = sub nuw nsw i32 16, %rem
  %777 = getelementptr i8, ptr %padded_buffer, i32 %rem
  %778 = call ptr @memset(ptr %777, i32 0, i32 %776)
  %779 = call ptr @memcpy(ptr %padded_buffer, ptr %uglygep1309, i32 %rem)
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %ctr_preload, ptr noundef nonnull %aes_out)
  %780 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %780)
  %781 = load i8, ptr %aes_out, align 1
  %782 = ptrtoint ptr %padded_buffer to i32
  call void @__asan_load1_noabort(i32 %782)
  %padded_buffer.0.1326 = load i8, ptr %padded_buffer, align 8
  %xor9.i1056 = xor i8 %padded_buffer.0.1326, %781
  %783 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %783)
  store i8 %xor9.i1056, ptr %chain_buffer, align 8
  %784 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %784)
  %785 = load i8, ptr %45, align 1
  %786 = ptrtoint ptr %padded_buffer.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %786)
  %padded_buffer.1.1329 = load i8, ptr %padded_buffer.1..sroa_idx, align 1
  %xor9.1.i1059 = xor i8 %padded_buffer.1.1329, %785
  %787 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %787)
  store i8 %xor9.1.i1059, ptr %30, align 1
  %788 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %788)
  %789 = load i8, ptr %46, align 1
  %790 = ptrtoint ptr %padded_buffer.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %790)
  %padded_buffer.2.1332 = load i8, ptr %padded_buffer.2..sroa_idx, align 2
  %xor9.2.i1063 = xor i8 %padded_buffer.2.1332, %789
  %791 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %791)
  store i8 %xor9.2.i1063, ptr %31, align 2
  %792 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %792)
  %793 = load i8, ptr %47, align 1
  %794 = ptrtoint ptr %padded_buffer.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %794)
  %padded_buffer.3.1335 = load i8, ptr %padded_buffer.3..sroa_idx, align 1
  %xor9.3.i1067 = xor i8 %padded_buffer.3.1335, %793
  %795 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %795)
  store i8 %xor9.3.i1067, ptr %32, align 1
  %796 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %796)
  %797 = load i8, ptr %48, align 1
  %798 = ptrtoint ptr %padded_buffer.4..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %798)
  %padded_buffer.4.1338 = load i8, ptr %padded_buffer.4..sroa_idx, align 4
  %xor9.4.i1071 = xor i8 %padded_buffer.4.1338, %797
  %799 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %799)
  store i8 %xor9.4.i1071, ptr %33, align 4
  %800 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %800)
  %801 = load i8, ptr %49, align 1
  %802 = ptrtoint ptr %padded_buffer.5..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %802)
  %padded_buffer.5.1341 = load i8, ptr %padded_buffer.5..sroa_idx, align 1
  %xor9.5.i1075 = xor i8 %padded_buffer.5.1341, %801
  %803 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %803)
  store i8 %xor9.5.i1075, ptr %34, align 1
  %804 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %804)
  %805 = load i8, ptr %50, align 1
  %806 = ptrtoint ptr %padded_buffer.6..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %806)
  %padded_buffer.6.1344 = load i8, ptr %padded_buffer.6..sroa_idx, align 2
  %xor9.6.i1079 = xor i8 %padded_buffer.6.1344, %805
  %807 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %807)
  store i8 %xor9.6.i1079, ptr %35, align 2
  %808 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %808)
  %809 = load i8, ptr %51, align 1
  %810 = ptrtoint ptr %padded_buffer.7..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %810)
  %padded_buffer.7.1347 = load i8, ptr %padded_buffer.7..sroa_idx, align 1
  %xor9.7.i1083 = xor i8 %padded_buffer.7.1347, %809
  %811 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %811)
  store i8 %xor9.7.i1083, ptr %36, align 1
  %812 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %812)
  %813 = load i8, ptr %52, align 1
  %814 = ptrtoint ptr %padded_buffer.8..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %814)
  %padded_buffer.8.1350 = load i8, ptr %padded_buffer.8..sroa_idx, align 8
  %xor9.8.i1087 = xor i8 %padded_buffer.8.1350, %813
  %815 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %815)
  store i8 %xor9.8.i1087, ptr %37, align 8
  %816 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %816)
  %817 = load i8, ptr %53, align 1
  %818 = ptrtoint ptr %padded_buffer.9..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %818)
  %padded_buffer.9.1353 = load i8, ptr %padded_buffer.9..sroa_idx, align 1
  %xor9.9.i1091 = xor i8 %padded_buffer.9.1353, %817
  %819 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %819)
  store i8 %xor9.9.i1091, ptr %38, align 1
  %820 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %820)
  %821 = load i8, ptr %54, align 1
  %822 = ptrtoint ptr %padded_buffer.10..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %822)
  %padded_buffer.10.1356 = load i8, ptr %padded_buffer.10..sroa_idx, align 2
  %xor9.10.i1095 = xor i8 %padded_buffer.10.1356, %821
  %823 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %823)
  store i8 %xor9.10.i1095, ptr %39, align 2
  %824 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %824)
  %825 = load i8, ptr %55, align 1
  %826 = ptrtoint ptr %padded_buffer.11..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %826)
  %padded_buffer.11.1359 = load i8, ptr %padded_buffer.11..sroa_idx, align 1
  %xor9.11.i1099 = xor i8 %padded_buffer.11.1359, %825
  %827 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %827)
  store i8 %xor9.11.i1099, ptr %40, align 1
  %828 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %828)
  %829 = load i8, ptr %56, align 1
  %830 = ptrtoint ptr %padded_buffer.12..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %830)
  %padded_buffer.12.1362 = load i8, ptr %padded_buffer.12..sroa_idx, align 4
  %xor9.12.i1103 = xor i8 %padded_buffer.12.1362, %829
  %831 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %831)
  store i8 %xor9.12.i1103, ptr %41, align 4
  %832 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %832)
  %833 = load i8, ptr %57, align 1
  %834 = ptrtoint ptr %padded_buffer.13..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %834)
  %padded_buffer.13.1365 = load i8, ptr %padded_buffer.13..sroa_idx, align 1
  %xor9.13.i1107 = xor i8 %padded_buffer.13.1365, %833
  %835 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %835)
  store i8 %xor9.13.i1107, ptr %42, align 1
  %836 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %836)
  %837 = load i8, ptr %58, align 1
  %838 = ptrtoint ptr %padded_buffer.14..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %838)
  %padded_buffer.14.1368 = load i8, ptr %padded_buffer.14..sroa_idx, align 2
  %xor9.14.i1111 = xor i8 %padded_buffer.14.1368, %837
  %839 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %839)
  store i8 %xor9.14.i1111, ptr %43, align 2
  %840 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %840)
  %841 = load i8, ptr %59, align 1
  %842 = ptrtoint ptr %padded_buffer.15..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %842)
  %padded_buffer.15.1371 = load i8, ptr %padded_buffer.15..sroa_idx, align 1
  %xor9.15.i1115 = xor i8 %padded_buffer.15.1371, %841
  %843 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %843)
  store i8 %xor9.15.i1115, ptr %44, align 1
  %uglygep1311 = getelementptr i8, ptr @aes_decipher.message, i32 %payload_index.6.lcssa
  %844 = call ptr @memcpy(ptr %uglygep1311, ptr %chain_buffer, i32 %rem)
  %845 = add i32 %payload_index.6.lcssa, %rem
  br label %if.end295

if.end295:                                        ; preds = %for.body288.preheader, %for.end255.if.end295_crit_edge
  %payload_index.9 = phi i32 [ %payload_index.6.lcssa, %for.end255.if.end295_crit_edge ], [ %845, %for.body288.preheader ]
  %846 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %846)
  store i8 0, ptr %15, align 1
  %847 = ptrtoint ptr %ctr_preload to i32
  call void @__asan_store1_noabort(i32 %847)
  store i8 1, ptr %ctr_preload, align 1
  br i1 %or.cond.i653, label %if.end295.if.end.i1123_crit_edge, label %if.then.i1120

if.end295.if.end.i1123_crit_edge:                 ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i1123

if.then.i1120:                                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #12
  %848 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 30), align 1
  %849 = and i8 %848, 15
  %850 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %850)
  store i8 %849, ptr %15, align 1
  br label %if.end.i1123

if.end.i1123:                                     ; preds = %if.then.i1120, %if.end295.if.end.i1123_crit_edge
  br i1 %or.cond56.i, label %if.then9.i1125, label %if.end.i1123.construct_ctr_preload.exit1145_crit_edge

if.end.i1123.construct_ctr_preload.exit1145_crit_edge: ; preds = %if.end.i1123
  call void @__sanitizer_cov_trace_pc() #12
  br label %construct_ctr_preload.exit1145

if.then9.i1125:                                   ; preds = %if.end.i1123
  call void @__sanitizer_cov_trace_pc() #12
  %851 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %852 = and i8 %851, 15
  %853 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %853)
  store i8 %852, ptr %15, align 1
  br label %construct_ctr_preload.exit1145

construct_ctr_preload.exit1145:                   ; preds = %if.then9.i1125, %if.end.i1123.construct_ctr_preload.exit1145_crit_edge
  %854 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 10), align 1
  %855 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %855)
  store i8 %854, ptr %16, align 1
  %856 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 11), align 1
  %857 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %857)
  store i8 %856, ptr %17, align 1
  %858 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 12), align 1
  %859 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %859)
  store i8 %858, ptr %18, align 1
  %860 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 13), align 1
  %861 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %861)
  store i8 %860, ptr %19, align 1
  %862 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 14), align 1
  %863 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %863)
  store i8 %862, ptr %20, align 1
  %864 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 15), align 1
  %865 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %865)
  store i8 %864, ptr %21, align 1
  %866 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %866)
  store i8 %316, ptr %22, align 1
  %867 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %867)
  store i8 %314, ptr %23, align 1
  %868 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %868)
  store i8 %312, ptr %24, align 1
  %869 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %869)
  store i8 %310, ptr %25, align 1
  %870 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %870)
  store i8 %308, ptr %26, align 1
  %871 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %871)
  store i8 %306, ptr %27, align 1
  %872 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %872)
  store i8 0, ptr %28, align 1
  %873 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %873)
  store i8 0, ptr %29, align 1
  %874 = getelementptr inbounds i8, ptr %padded_buffer, i32 8
  %875 = ptrtoint ptr %874 to i32
  call void @__asan_store8_noabort(i32 %875)
  store i64 0, ptr %874, align 8
  %uglygep1314 = getelementptr i8, ptr @aes_decipher.message, i32 %add124
  %876 = ptrtoint ptr %uglygep1314 to i32
  call void @__asan_loadN_noabort(i32 %876, i32 8)
  %877 = load i64, ptr %uglygep1314, align 1
  %878 = ptrtoint ptr %padded_buffer to i32
  call void @__asan_store8_noabort(i32 %878)
  store i64 %877, ptr %padded_buffer, align 8
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %ctr_preload, ptr noundef nonnull %aes_out)
  %879 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %879)
  %880 = load i8, ptr %aes_out, align 1
  %881 = ptrtoint ptr %padded_buffer to i32
  call void @__asan_load1_noabort(i32 %881)
  %padded_buffer.0.1327 = load i8, ptr %padded_buffer, align 8
  %xor9.i1146 = xor i8 %padded_buffer.0.1327, %880
  %882 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %882)
  store i8 %xor9.i1146, ptr %chain_buffer, align 8
  %883 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %883)
  %884 = load i8, ptr %45, align 1
  %885 = ptrtoint ptr %padded_buffer.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %885)
  %padded_buffer.1.1330 = load i8, ptr %padded_buffer.1..sroa_idx, align 1
  %xor9.1.i1149 = xor i8 %padded_buffer.1.1330, %884
  %886 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %886)
  store i8 %xor9.1.i1149, ptr %30, align 1
  %887 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %887)
  %888 = load i8, ptr %46, align 1
  %889 = ptrtoint ptr %padded_buffer.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %889)
  %padded_buffer.2.1333 = load i8, ptr %padded_buffer.2..sroa_idx, align 2
  %xor9.2.i1153 = xor i8 %padded_buffer.2.1333, %888
  %890 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %890)
  store i8 %xor9.2.i1153, ptr %31, align 2
  %891 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %891)
  %892 = load i8, ptr %47, align 1
  %893 = ptrtoint ptr %padded_buffer.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %893)
  %padded_buffer.3.1336 = load i8, ptr %padded_buffer.3..sroa_idx, align 1
  %xor9.3.i1157 = xor i8 %padded_buffer.3.1336, %892
  %894 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %894)
  store i8 %xor9.3.i1157, ptr %32, align 1
  %895 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %895)
  %896 = load i8, ptr %48, align 1
  %897 = ptrtoint ptr %padded_buffer.4..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %897)
  %padded_buffer.4.1339 = load i8, ptr %padded_buffer.4..sroa_idx, align 4
  %xor9.4.i1161 = xor i8 %padded_buffer.4.1339, %896
  %898 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %898)
  store i8 %xor9.4.i1161, ptr %33, align 4
  %899 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %899)
  %900 = load i8, ptr %49, align 1
  %901 = ptrtoint ptr %padded_buffer.5..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %901)
  %padded_buffer.5.1342 = load i8, ptr %padded_buffer.5..sroa_idx, align 1
  %xor9.5.i1165 = xor i8 %padded_buffer.5.1342, %900
  %902 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %902)
  store i8 %xor9.5.i1165, ptr %34, align 1
  %903 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %903)
  %904 = load i8, ptr %50, align 1
  %905 = ptrtoint ptr %padded_buffer.6..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %905)
  %padded_buffer.6.1345 = load i8, ptr %padded_buffer.6..sroa_idx, align 2
  %xor9.6.i1169 = xor i8 %padded_buffer.6.1345, %904
  %906 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %906)
  store i8 %xor9.6.i1169, ptr %35, align 2
  %907 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %907)
  %908 = load i8, ptr %51, align 1
  %909 = ptrtoint ptr %padded_buffer.7..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %909)
  %padded_buffer.7.1348 = load i8, ptr %padded_buffer.7..sroa_idx, align 1
  %xor9.7.i1173 = xor i8 %padded_buffer.7.1348, %908
  %910 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %910)
  store i8 %xor9.7.i1173, ptr %36, align 1
  %911 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %911)
  %912 = load i8, ptr %52, align 1
  %913 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %913)
  store i8 %912, ptr %37, align 8
  %914 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %914)
  %915 = load i8, ptr %53, align 1
  %916 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %916)
  store i8 %915, ptr %38, align 1
  %917 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %917)
  %918 = load i8, ptr %54, align 1
  %919 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %919)
  store i8 %918, ptr %39, align 2
  %920 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %920)
  %921 = load i8, ptr %55, align 1
  %922 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %922)
  store i8 %921, ptr %40, align 1
  %923 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %923)
  %924 = load i8, ptr %56, align 1
  %925 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %925)
  store i8 %924, ptr %41, align 4
  %926 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %926)
  %927 = load i8, ptr %57, align 1
  %928 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %928)
  store i8 %927, ptr %42, align 1
  %929 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %929)
  %930 = load i8, ptr %58, align 1
  %931 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %931)
  store i8 %930, ptr %43, align 2
  %932 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %932)
  %933 = load i8, ptr %59, align 1
  %934 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %934)
  store i8 %933, ptr %44, align 1
  %uglygep1315 = getelementptr i8, ptr @aes_decipher.message, i32 %payload_index.9
  %935 = load i64, ptr %chain_buffer, align 8
  %936 = ptrtoint ptr %uglygep1315 to i32
  call void @__asan_storeN_noabort(i32 %936, i32 8)
  store i64 %935, ptr %uglygep1315, align 1
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  br label %for.body337

for.body337:                                      ; preds = %for.inc373.for.body337_crit_edge, %construct_ctr_preload.exit1145
  %res.01297 = phi i32 [ 1, %construct_ctr_preload.exit1145 ], [ %res.1, %for.inc373.for.body337_crit_edge ]
  %i.31295 = phi i32 [ 0, %construct_ctr_preload.exit1145 ], [ %inc374, %for.inc373.for.body337_crit_edge ]
  %add341 = add i32 %i.31295, %add124
  %arrayidx342 = getelementptr i8, ptr %pframe, i32 %add341
  %937 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_load1_noabort(i32 %937)
  %938 = load i8, ptr %arrayidx342, align 1
  %arrayidx348 = getelementptr [2048 x i8], ptr @aes_decipher.message, i32 0, i32 %add341
  %939 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_load1_noabort(i32 %939)
  %940 = load i8, ptr %arrayidx348, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %938, i8 %940)
  %cmp350.not = icmp eq i8 %938, %940
  br i1 %cmp350.not, label %for.body337.for.inc373_crit_edge, label %do.body353

for.body337.for.inc373_crit_edge:                 ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc373

do.body353:                                       ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aes_decipher.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aes_decipher, %if.then356)) #10
          to label %for.inc373 [label %if.then356], !srcloc !40

if.then356:                                       ; preds = %do.body353
  call void @__sanitizer_cov_trace_pc() #12
  %941 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load ptr, ptr %pnetdev, align 4
  %943 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_load1_noabort(i32 %943)
  %944 = load i8, ptr %arrayidx342, align 1
  %conv362 = zext i8 %944 to i32
  %945 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_load1_noabort(i32 %945)
  %946 = load i8, ptr %arrayidx348, align 1
  %conv368 = zext i8 %946 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @aes_decipher.__UNIQUE_ID_ddebug347, ptr noundef %942, ptr noundef nonnull @.str.7, i32 noundef %i.31295, i32 noundef %conv362, i32 noundef %conv368) #10
  br label %for.inc373

for.inc373:                                       ; preds = %if.then356, %do.body353, %for.body337.for.inc373_crit_edge
  %res.1 = phi i32 [ %res.01297, %for.body337.for.inc373_crit_edge ], [ 0, %if.then356 ], [ 0, %do.body353 ]
  %inc374 = add nuw nsw i32 %i.31295, 1
  %exitcond1316.not = icmp eq i32 %inc374, 8
  br i1 %exitcond1316.not, label %for.end375, label %for.inc373.for.body337_crit_edge

for.inc373.for.body337_crit_edge:                 ; preds = %for.inc373
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body337

for.end375:                                       ; preds = %for.inc373
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %padded_buffer)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %aes_out) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %chain_buffer) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctr_preload) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mic_iv) #10
  ret i32 %res.1
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aes128k128d(ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %data, ptr noundef %ciphertext) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %0)
  %round_key.sroa.0.0.copyload = load i8, ptr %key, align 1
  %round_key.sroa.7.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 1
  %1 = ptrtoint ptr %round_key.sroa.7.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %round_key.sroa.7.0.copyload = load i8, ptr %round_key.sroa.7.0.key.sroa_idx, align 1
  %round_key.sroa.11.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 2
  %2 = ptrtoint ptr %round_key.sroa.11.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %round_key.sroa.11.0.copyload = load i8, ptr %round_key.sroa.11.0.key.sroa_idx, align 1
  %round_key.sroa.15.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 3
  %3 = ptrtoint ptr %round_key.sroa.15.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %round_key.sroa.15.0.copyload = load i8, ptr %round_key.sroa.15.0.key.sroa_idx, align 1
  %round_key.sroa.19.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 4
  %4 = ptrtoint ptr %round_key.sroa.19.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %round_key.sroa.19.0.copyload = load i8, ptr %round_key.sroa.19.0.key.sroa_idx, align 1
  %round_key.sroa.23.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 5
  %5 = ptrtoint ptr %round_key.sroa.23.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %round_key.sroa.23.0.copyload = load i8, ptr %round_key.sroa.23.0.key.sroa_idx, align 1
  %round_key.sroa.27.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 6
  %6 = ptrtoint ptr %round_key.sroa.27.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %round_key.sroa.27.0.copyload = load i8, ptr %round_key.sroa.27.0.key.sroa_idx, align 1
  %round_key.sroa.31.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 7
  %7 = ptrtoint ptr %round_key.sroa.31.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %round_key.sroa.31.0.copyload = load i8, ptr %round_key.sroa.31.0.key.sroa_idx, align 1
  %round_key.sroa.35.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 8
  %8 = ptrtoint ptr %round_key.sroa.35.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %round_key.sroa.35.0.copyload = load i8, ptr %round_key.sroa.35.0.key.sroa_idx, align 1
  %round_key.sroa.39.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 9
  %9 = ptrtoint ptr %round_key.sroa.39.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %round_key.sroa.39.0.copyload = load i8, ptr %round_key.sroa.39.0.key.sroa_idx, align 1
  %round_key.sroa.43.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 10
  %10 = ptrtoint ptr %round_key.sroa.43.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %round_key.sroa.43.0.copyload = load i8, ptr %round_key.sroa.43.0.key.sroa_idx, align 1
  %round_key.sroa.47.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 11
  %11 = ptrtoint ptr %round_key.sroa.47.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %round_key.sroa.47.0.copyload = load i8, ptr %round_key.sroa.47.0.key.sroa_idx, align 1
  %round_key.sroa.51.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 12
  %12 = ptrtoint ptr %round_key.sroa.51.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %round_key.sroa.51.0.copyload = load i8, ptr %round_key.sroa.51.0.key.sroa_idx, align 1
  %round_key.sroa.55.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 13
  %13 = ptrtoint ptr %round_key.sroa.55.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %round_key.sroa.55.0.copyload = load i8, ptr %round_key.sroa.55.0.key.sroa_idx, align 1
  %round_key.sroa.59.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 14
  %14 = ptrtoint ptr %round_key.sroa.59.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %round_key.sroa.59.0.copyload = load i8, ptr %round_key.sroa.59.0.key.sroa_idx, align 1
  %round_key.sroa.63.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 15
  %15 = ptrtoint ptr %round_key.sroa.63.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %round_key.sroa.63.0.copyload = load i8, ptr %round_key.sroa.63.0.key.sroa_idx, align 1
  %arrayidx.1.i47 = getelementptr i8, ptr %ciphertext, i32 1
  %arrayidx.2.i49 = getelementptr i8, ptr %ciphertext, i32 2
  %arrayidx.3.i51 = getelementptr i8, ptr %ciphertext, i32 3
  %arrayidx.4.i53 = getelementptr i8, ptr %ciphertext, i32 4
  %arrayidx.5.i55 = getelementptr i8, ptr %ciphertext, i32 5
  %arrayidx.6.i57 = getelementptr i8, ptr %ciphertext, i32 6
  %arrayidx.7.i59 = getelementptr i8, ptr %ciphertext, i32 7
  %arrayidx.8.i61 = getelementptr i8, ptr %ciphertext, i32 8
  %arrayidx.9.i63 = getelementptr i8, ptr %ciphertext, i32 9
  %arrayidx.10.i65 = getelementptr i8, ptr %ciphertext, i32 10
  %arrayidx.11.i67 = getelementptr i8, ptr %ciphertext, i32 11
  %arrayidx.12.i69 = getelementptr i8, ptr %ciphertext, i32 12
  %arrayidx.13.i71 = getelementptr i8, ptr %ciphertext, i32 13
  %arrayidx.14.i73 = getelementptr i8, ptr %ciphertext, i32 14
  %arrayidx.15.i75 = getelementptr i8, ptr %ciphertext, i32 15
  %arrayidx1.1.i = getelementptr i8, ptr %data, i32 1
  %arrayidx1.2.i = getelementptr i8, ptr %data, i32 2
  %arrayidx1.3.i = getelementptr i8, ptr %data, i32 3
  %arrayidx1.4.i = getelementptr i8, ptr %data, i32 4
  %arrayidx1.5.i = getelementptr i8, ptr %data, i32 5
  %arrayidx1.6.i = getelementptr i8, ptr %data, i32 6
  %arrayidx1.7.i = getelementptr i8, ptr %data, i32 7
  %arrayidx1.8.i = getelementptr i8, ptr %data, i32 8
  %arrayidx1.9.i = getelementptr i8, ptr %data, i32 9
  %arrayidx1.10.i = getelementptr i8, ptr %data, i32 10
  %arrayidx1.11.i = getelementptr i8, ptr %data, i32 11
  %arrayidx1.12.i = getelementptr i8, ptr %data, i32 12
  %arrayidx1.13.i = getelementptr i8, ptr %data, i32 13
  %arrayidx1.14.i = getelementptr i8, ptr %data, i32 14
  %arrayidx1.15.i = getelementptr i8, ptr %data, i32 15
  br label %for.body4

for.body4:                                        ; preds = %for.inc30, %entry
  %16 = phi i8 [ %round_key.sroa.63.0.copyload, %entry ], [ %xor9.3.i87.i, %for.inc30 ]
  %17 = phi i8 [ %round_key.sroa.59.0.copyload, %entry ], [ %xor9.2.i83.i, %for.inc30 ]
  %18 = phi i8 [ %round_key.sroa.55.0.copyload, %entry ], [ %xor9.1.i79.i, %for.inc30 ]
  %19 = phi i8 [ %round_key.sroa.51.0.copyload, %entry ], [ %xor9.i76.i, %for.inc30 ]
  %20 = phi i8 [ %round_key.sroa.47.0.copyload, %entry ], [ %xor9.3.i74.i, %for.inc30 ]
  %21 = phi i8 [ %round_key.sroa.43.0.copyload, %entry ], [ %xor9.2.i70.i, %for.inc30 ]
  %22 = phi i8 [ %round_key.sroa.39.0.copyload, %entry ], [ %xor9.1.i66.i, %for.inc30 ]
  %23 = phi i8 [ %round_key.sroa.35.0.copyload, %entry ], [ %xor9.i63.i, %for.inc30 ]
  %24 = phi i8 [ %round_key.sroa.31.0.copyload, %entry ], [ %xor9.3.i61.i, %for.inc30 ]
  %25 = phi i8 [ %round_key.sroa.27.0.copyload, %entry ], [ %xor9.2.i57.i, %for.inc30 ]
  %26 = phi i8 [ %round_key.sroa.23.0.copyload, %entry ], [ %xor9.1.i53.i, %for.inc30 ]
  %27 = phi i8 [ %round_key.sroa.19.0.copyload, %entry ], [ %xor9.i50.i, %for.inc30 ]
  %28 = phi i8 [ %round_key.sroa.15.0.copyload, %entry ], [ %xor9.3.i.i.sink, %for.inc30 ]
  %29 = phi i8 [ %round_key.sroa.11.0.copyload, %entry ], [ %xor9.2.i.i.sink, %for.inc30 ]
  %30 = phi i8 [ %round_key.sroa.7.0.copyload, %entry ], [ %xor9.1.i.i.sink, %for.inc30 ]
  %xor43.i434519 = phi i8 [ %round_key.sroa.0.0.copyload, %entry ], [ %xor43.i.sink, %for.inc30 ]
  %round.0516 = phi i32 [ 0, %entry ], [ %inc31, %for.inc30 ]
  %31 = zext i32 %round.0516 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %round.0516, label %if.else14 [
    i32 0, label %if.then
    i32 10, label %for.end32
  ]

if.then:                                          ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %data, align 1
  %xor9.i = xor i8 %33, %xor43.i434519
  %34 = ptrtoint ptr %ciphertext to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %xor9.i, ptr %ciphertext, align 1
  %35 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx1.1.i, align 1
  %xor9.1.i = xor i8 %36, %30
  %37 = ptrtoint ptr %arrayidx.1.i47 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %xor9.1.i, ptr %arrayidx.1.i47, align 1
  %38 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx1.2.i, align 1
  %xor9.2.i = xor i8 %39, %29
  %40 = ptrtoint ptr %arrayidx.2.i49 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %xor9.2.i, ptr %arrayidx.2.i49, align 1
  %41 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx1.3.i, align 1
  %xor9.3.i = xor i8 %42, %28
  %43 = ptrtoint ptr %arrayidx.3.i51 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %xor9.3.i, ptr %arrayidx.3.i51, align 1
  %44 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx1.4.i, align 1
  %xor9.4.i = xor i8 %45, %27
  %46 = ptrtoint ptr %arrayidx.4.i53 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %xor9.4.i, ptr %arrayidx.4.i53, align 1
  %47 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx1.5.i, align 1
  %xor9.5.i = xor i8 %48, %26
  %49 = ptrtoint ptr %arrayidx.5.i55 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %xor9.5.i, ptr %arrayidx.5.i55, align 1
  %50 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx1.6.i, align 1
  %xor9.6.i = xor i8 %51, %25
  %52 = ptrtoint ptr %arrayidx.6.i57 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %xor9.6.i, ptr %arrayidx.6.i57, align 1
  %53 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx1.7.i, align 1
  %xor9.7.i = xor i8 %54, %24
  %55 = ptrtoint ptr %arrayidx.7.i59 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %xor9.7.i, ptr %arrayidx.7.i59, align 1
  %56 = ptrtoint ptr %arrayidx1.8.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx1.8.i, align 1
  %xor9.8.i = xor i8 %57, %23
  %58 = ptrtoint ptr %arrayidx.8.i61 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %xor9.8.i, ptr %arrayidx.8.i61, align 1
  %59 = ptrtoint ptr %arrayidx1.9.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx1.9.i, align 1
  %xor9.9.i = xor i8 %60, %22
  %61 = ptrtoint ptr %arrayidx.9.i63 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %xor9.9.i, ptr %arrayidx.9.i63, align 1
  %62 = ptrtoint ptr %arrayidx1.10.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx1.10.i, align 1
  %xor9.10.i = xor i8 %63, %21
  %64 = ptrtoint ptr %arrayidx.10.i65 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %xor9.10.i, ptr %arrayidx.10.i65, align 1
  %65 = ptrtoint ptr %arrayidx1.11.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx1.11.i, align 1
  %xor9.11.i = xor i8 %66, %20
  %67 = ptrtoint ptr %arrayidx.11.i67 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %xor9.11.i, ptr %arrayidx.11.i67, align 1
  %68 = ptrtoint ptr %arrayidx1.12.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx1.12.i, align 1
  %xor9.12.i = xor i8 %69, %19
  %70 = ptrtoint ptr %arrayidx.12.i69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %xor9.12.i, ptr %arrayidx.12.i69, align 1
  %71 = ptrtoint ptr %arrayidx1.13.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx1.13.i, align 1
  %xor9.13.i = xor i8 %72, %18
  %73 = ptrtoint ptr %arrayidx.13.i71 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %xor9.13.i, ptr %arrayidx.13.i71, align 1
  %74 = ptrtoint ptr %arrayidx1.14.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx1.14.i, align 1
  %xor9.14.i = xor i8 %75, %17
  %76 = ptrtoint ptr %arrayidx.14.i73 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %xor9.14.i, ptr %arrayidx.14.i73, align 1
  %77 = ptrtoint ptr %arrayidx1.15.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx1.15.i, align 1
  %xor9.15.i = xor i8 %78, %16
  %79 = ptrtoint ptr %arrayidx.15.i75 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %xor9.15.i, ptr %arrayidx.15.i75, align 1
  %conv.i.i = zext i8 %18 to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.i
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i.i, align 1
  %82 = xor i8 %xor43.i434519, %81
  %xor43.i = xor i8 %82, 1
  br label %for.inc30

if.else14:                                        ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %ciphertext to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ciphertext, align 1
  %conv.i.i143 = zext i8 %84 to i32
  %arrayidx.i.i144 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.i143
  %85 = ptrtoint ptr %arrayidx.i.i144 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i.i144, align 1
  %87 = ptrtoint ptr %arrayidx.1.i47 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.1.i47, align 1
  %conv.i.1.i146 = zext i8 %88 to i32
  %arrayidx.i.1.i147 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.1.i146
  %89 = ptrtoint ptr %arrayidx.i.1.i147 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i.1.i147, align 1
  %91 = ptrtoint ptr %arrayidx.2.i49 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.2.i49, align 1
  %conv.i.2.i150 = zext i8 %92 to i32
  %arrayidx.i.2.i151 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.2.i150
  %93 = ptrtoint ptr %arrayidx.i.2.i151 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i.2.i151, align 1
  %95 = ptrtoint ptr %arrayidx.3.i51 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.3.i51, align 1
  %conv.i.3.i154 = zext i8 %96 to i32
  %arrayidx.i.3.i155 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.3.i154
  %97 = ptrtoint ptr %arrayidx.i.3.i155 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.i.3.i155, align 1
  %99 = ptrtoint ptr %arrayidx.4.i53 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.4.i53, align 1
  %conv.i.4.i158 = zext i8 %100 to i32
  %arrayidx.i.4.i159 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.4.i158
  %101 = ptrtoint ptr %arrayidx.i.4.i159 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i.4.i159, align 1
  %103 = ptrtoint ptr %arrayidx.5.i55 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.5.i55, align 1
  %conv.i.5.i162 = zext i8 %104 to i32
  %arrayidx.i.5.i163 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.5.i162
  %105 = ptrtoint ptr %arrayidx.i.5.i163 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i.5.i163, align 1
  %107 = ptrtoint ptr %arrayidx.6.i57 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.6.i57, align 1
  %conv.i.6.i166 = zext i8 %108 to i32
  %arrayidx.i.6.i167 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.6.i166
  %109 = ptrtoint ptr %arrayidx.i.6.i167 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.i.6.i167, align 1
  %111 = ptrtoint ptr %arrayidx.7.i59 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.7.i59, align 1
  %conv.i.7.i170 = zext i8 %112 to i32
  %arrayidx.i.7.i171 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.7.i170
  %113 = ptrtoint ptr %arrayidx.i.7.i171 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i.7.i171, align 1
  %115 = ptrtoint ptr %arrayidx.8.i61 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.8.i61, align 1
  %conv.i.8.i174 = zext i8 %116 to i32
  %arrayidx.i.8.i175 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.8.i174
  %117 = ptrtoint ptr %arrayidx.i.8.i175 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i.8.i175, align 1
  %119 = ptrtoint ptr %arrayidx.9.i63 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.9.i63, align 1
  %conv.i.9.i178 = zext i8 %120 to i32
  %arrayidx.i.9.i179 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.9.i178
  %121 = ptrtoint ptr %arrayidx.i.9.i179 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx.i.9.i179, align 1
  %123 = ptrtoint ptr %arrayidx.10.i65 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx.10.i65, align 1
  %conv.i.10.i182 = zext i8 %124 to i32
  %arrayidx.i.10.i183 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.10.i182
  %125 = ptrtoint ptr %arrayidx.i.10.i183 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx.i.10.i183, align 1
  %127 = ptrtoint ptr %arrayidx.11.i67 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx.11.i67, align 1
  %conv.i.11.i186 = zext i8 %128 to i32
  %arrayidx.i.11.i187 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.11.i186
  %129 = ptrtoint ptr %arrayidx.i.11.i187 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx.i.11.i187, align 1
  %131 = ptrtoint ptr %arrayidx.12.i69 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx.12.i69, align 1
  %conv.i.12.i190 = zext i8 %132 to i32
  %arrayidx.i.12.i191 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.12.i190
  %133 = ptrtoint ptr %arrayidx.i.12.i191 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.i.12.i191, align 1
  %135 = ptrtoint ptr %arrayidx.13.i71 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.13.i71, align 1
  %conv.i.13.i194 = zext i8 %136 to i32
  %arrayidx.i.13.i195 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.13.i194
  %137 = ptrtoint ptr %arrayidx.i.13.i195 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx.i.13.i195, align 1
  %139 = ptrtoint ptr %arrayidx.14.i73 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx.14.i73, align 1
  %conv.i.14.i198 = zext i8 %140 to i32
  %arrayidx.i.14.i199 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.14.i198
  %141 = ptrtoint ptr %arrayidx.i.14.i199 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx.i.14.i199, align 1
  %143 = ptrtoint ptr %arrayidx.15.i75 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.15.i75, align 1
  %conv.i.15.i202 = zext i8 %144 to i32
  %arrayidx.i.15.i203 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.15.i202
  %145 = ptrtoint ptr %arrayidx.i.15.i203 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx.i.15.i203, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp1.i = icmp slt i8 %86, 0
  %spec.select.i = select i1 %cmp1.i, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp1.1.i = icmp slt i8 %106, 0
  %add1b.sroa.6.0.i = select i1 %cmp1.1.i, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %cmp1.2.i = icmp slt i8 %126, 0
  %add1b.sroa.10.0.i = select i1 %cmp1.2.i, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %cmp1.3.i = icmp slt i8 %146, 0
  %add1b.sroa.14.0.i = select i1 %cmp1.3.i, i8 27, i8 0
  %shl.2.i = shl i8 %106, 1
  %shl.1.i = shl i8 %126, 1
  %shl.i = shl i8 %146, 1
  %shl64.i = shl i8 %86, 1
  %xor9.i.i238 = xor i8 %spec.select.i, %shl64.i
  %xor9.1.i.i239 = xor i8 %add1b.sroa.6.0.i, %shl.2.i
  %xor9.2.i.i240 = xor i8 %add1b.sroa.10.0.i, %shl.1.i
  %xor9.3.i.i241 = xor i8 %add1b.sroa.14.0.i, %shl.i
  %xor9.1.i121.i = xor i8 %146, %126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp1.i242 = icmp slt i8 %102, 0
  %spec.select.i243 = select i1 %cmp1.i242, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp1.1.i245 = icmp slt i8 %122, 0
  %add1b.sroa.6.0.i246 = select i1 %cmp1.1.i245, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %cmp1.2.i248 = icmp slt i8 %142, 0
  %add1b.sroa.10.0.i249 = select i1 %cmp1.2.i248, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp1.3.i251 = icmp slt i8 %98, 0
  %add1b.sroa.14.0.i252 = select i1 %cmp1.3.i251, i8 27, i8 0
  %shl.2.i253 = shl i8 %122, 1
  %shl.1.i254 = shl i8 %142, 1
  %shl.i255 = shl i8 %98, 1
  %shl64.i256 = shl i8 %102, 1
  %xor9.i.i257 = xor i8 %spec.select.i243, %shl64.i256
  %xor9.1.i.i258 = xor i8 %add1b.sroa.6.0.i246, %shl.2.i253
  %xor9.2.i.i259 = xor i8 %add1b.sroa.10.0.i249, %shl.1.i254
  %xor9.3.i.i260 = xor i8 %add1b.sroa.14.0.i252, %shl.i255
  %xor9.1.i121.i261 = xor i8 %142, %98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %cmp1.i279 = icmp slt i8 %118, 0
  %spec.select.i280 = select i1 %cmp1.i279, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %cmp1.1.i282 = icmp slt i8 %138, 0
  %add1b.sroa.6.0.i283 = select i1 %cmp1.1.i282, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp1.2.i285 = icmp slt i8 %94, 0
  %add1b.sroa.10.0.i286 = select i1 %cmp1.2.i285, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp1.3.i288 = icmp slt i8 %114, 0
  %add1b.sroa.14.0.i289 = select i1 %cmp1.3.i288, i8 27, i8 0
  %shl.2.i290 = shl i8 %138, 1
  %shl.1.i291 = shl i8 %94, 1
  %shl.i292 = shl i8 %114, 1
  %shl64.i293 = shl i8 %118, 1
  %xor9.i.i294 = xor i8 %spec.select.i280, %shl64.i293
  %xor9.1.i.i295 = xor i8 %add1b.sroa.6.0.i283, %shl.2.i290
  %xor9.2.i.i296 = xor i8 %add1b.sroa.10.0.i286, %shl.1.i291
  %xor9.3.i.i297 = xor i8 %add1b.sroa.14.0.i289, %shl.i292
  %xor9.1.i121.i298 = xor i8 %114, %94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %cmp1.i316 = icmp slt i8 %134, 0
  %spec.select.i317 = select i1 %cmp1.i316, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp1.1.i319 = icmp slt i8 %90, 0
  %add1b.sroa.6.0.i320 = select i1 %cmp1.1.i319, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp1.2.i322 = icmp slt i8 %110, 0
  %add1b.sroa.10.0.i323 = select i1 %cmp1.2.i322, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %cmp1.3.i325 = icmp slt i8 %130, 0
  %add1b.sroa.14.0.i326 = select i1 %cmp1.3.i325, i8 27, i8 0
  %shl.2.i327 = shl i8 %90, 1
  %shl.1.i328 = shl i8 %110, 1
  %shl.i329 = shl i8 %130, 1
  %shl64.i330 = shl i8 %134, 1
  %xor9.i.i331 = xor i8 %spec.select.i317, %shl64.i330
  %xor9.1.i.i332 = xor i8 %add1b.sroa.6.0.i320, %shl.2.i327
  %xor9.2.i.i333 = xor i8 %add1b.sroa.10.0.i323, %shl.1.i328
  %xor9.3.i.i334 = xor i8 %add1b.sroa.14.0.i326, %shl.i329
  %xor9.1.i121.i335 = xor i8 %130, %110
  %xor9.i131.i = xor i8 %106, %xor9.i.i238
  %xor9.i144.i = xor i8 %xor9.i131.i, %xor9.1.i.i239
  %xor9.i157.i = xor i8 %xor9.i144.i, %xor9.1.i121.i
  %xor9.i353 = xor i8 %xor9.i157.i, %xor43.i434519
  %147 = ptrtoint ptr %ciphertext to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %xor9.i353, ptr %ciphertext, align 1
  %xor9.1.i134.i = xor i8 %xor9.2.i.i240, %86
  %xor9.1.i147.i = xor i8 %xor9.1.i134.i, %xor9.1.i.i239
  %xor9.1.i160.i = xor i8 %xor9.1.i147.i, %xor9.1.i121.i
  %xor9.1.i356 = xor i8 %xor9.1.i160.i, %30
  %148 = ptrtoint ptr %arrayidx.1.i47 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %xor9.1.i356, ptr %arrayidx.1.i47, align 1
  %xor9.3.i129.i = xor i8 %106, %86
  %xor9.2.i138.i = xor i8 %xor9.3.i129.i, %xor9.2.i.i240
  %xor9.2.i151.i = xor i8 %xor9.2.i138.i, %146
  %xor9.2.i164.i = xor i8 %xor9.2.i151.i, %xor9.3.i.i241
  %xor9.2.i360 = xor i8 %xor9.2.i164.i, %29
  %149 = ptrtoint ptr %arrayidx.2.i49 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %xor9.2.i360, ptr %arrayidx.2.i49, align 1
  %xor9.3.i142.i = xor i8 %xor9.i131.i, %86
  %xor9.3.i155.i = xor i8 %xor9.3.i142.i, %126
  %xor9.3.i168.i = xor i8 %xor9.3.i155.i, %xor9.3.i.i241
  %xor9.3.i364 = xor i8 %xor9.3.i168.i, %28
  %150 = ptrtoint ptr %arrayidx.3.i51 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %xor9.3.i364, ptr %arrayidx.3.i51, align 1
  %xor9.i131.i262 = xor i8 %122, %xor9.i.i257
  %xor9.i144.i263 = xor i8 %xor9.i131.i262, %xor9.1.i.i258
  %xor9.i157.i264 = xor i8 %xor9.i144.i263, %xor9.1.i121.i261
  %xor9.4.i368 = xor i8 %xor9.i157.i264, %27
  %151 = ptrtoint ptr %arrayidx.4.i53 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %xor9.4.i368, ptr %arrayidx.4.i53, align 1
  %xor9.1.i134.i265 = xor i8 %xor9.1.i121.i261, %xor9.1.i.i258
  %xor9.1.i147.i266 = xor i8 %xor9.1.i134.i265, %102
  %xor9.1.i160.i267 = xor i8 %xor9.1.i147.i266, %xor9.2.i.i259
  %xor9.5.i372 = xor i8 %xor9.1.i160.i267, %26
  %152 = ptrtoint ptr %arrayidx.5.i55 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %xor9.5.i372, ptr %arrayidx.5.i55, align 1
  %xor9.3.i129.i269 = xor i8 %xor9.3.i.i260, %102
  %xor9.2.i138.i270 = xor i8 %xor9.3.i129.i269, %98
  %xor9.2.i151.i271 = xor i8 %xor9.2.i138.i270, %122
  %xor9.2.i164.i272 = xor i8 %xor9.2.i151.i271, %xor9.2.i.i259
  %xor9.6.i376 = xor i8 %xor9.2.i164.i272, %25
  %153 = ptrtoint ptr %arrayidx.6.i57 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %xor9.6.i376, ptr %arrayidx.6.i57, align 1
  %xor9.3.i142.i275 = xor i8 %xor9.3.i129.i269, %xor9.i.i257
  %xor9.3.i155.i276 = xor i8 %xor9.3.i142.i275, %122
  %xor9.3.i168.i277 = xor i8 %xor9.3.i155.i276, %142
  %xor9.7.i380 = xor i8 %xor9.3.i168.i277, %24
  %154 = ptrtoint ptr %arrayidx.7.i59 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %xor9.7.i380, ptr %arrayidx.7.i59, align 1
  %xor9.i131.i299 = xor i8 %138, %xor9.i.i294
  %xor9.i144.i300 = xor i8 %xor9.i131.i299, %xor9.1.i121.i298
  %xor9.i157.i301 = xor i8 %xor9.i144.i300, %xor9.1.i.i295
  %xor9.8.i384 = xor i8 %xor9.i157.i301, %23
  %155 = ptrtoint ptr %arrayidx.8.i61 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %xor9.8.i384, ptr %arrayidx.8.i61, align 1
  %xor9.1.i134.i302 = xor i8 %118, %xor9.2.i.i296
  %xor9.1.i147.i303 = xor i8 %xor9.1.i134.i302, %xor9.1.i121.i298
  %xor9.1.i160.i304 = xor i8 %xor9.1.i147.i303, %xor9.1.i.i295
  %xor9.9.i388 = xor i8 %xor9.1.i160.i304, %22
  %156 = ptrtoint ptr %arrayidx.9.i63 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %xor9.9.i388, ptr %arrayidx.9.i63, align 1
  %xor9.2.i138.i307 = xor i8 %xor9.1.i134.i302, %114
  %xor9.2.i151.i308 = xor i8 %xor9.2.i138.i307, %xor9.3.i.i297
  %xor9.2.i164.i309 = xor i8 %xor9.2.i151.i308, %138
  %xor9.10.i392 = xor i8 %xor9.2.i164.i309, %21
  %157 = ptrtoint ptr %arrayidx.10.i65 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %xor9.10.i392, ptr %arrayidx.10.i65, align 1
  %xor9.i118.i311 = xor i8 %xor9.3.i.i297, %118
  %xor9.3.i142.i312 = xor i8 %xor9.i118.i311, %94
  %xor9.3.i155.i313 = xor i8 %xor9.3.i142.i312, %xor9.i.i294
  %xor9.3.i168.i314 = xor i8 %xor9.3.i155.i313, %138
  %xor9.11.i396 = xor i8 %xor9.3.i168.i314, %20
  %158 = ptrtoint ptr %arrayidx.11.i67 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %xor9.11.i396, ptr %arrayidx.11.i67, align 1
  %xor9.i131.i336 = xor i8 %xor9.1.i121.i335, %xor9.1.i.i332
  %xor9.i144.i337 = xor i8 %xor9.i131.i336, %90
  %xor9.i157.i338 = xor i8 %xor9.i144.i337, %xor9.i.i331
  %xor9.12.i400 = xor i8 %xor9.i157.i338, %19
  %159 = ptrtoint ptr %arrayidx.12.i69 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %xor9.12.i400, ptr %arrayidx.12.i69, align 1
  %xor9.1.i147.i340 = xor i8 %xor9.i131.i336, %xor9.2.i.i333
  %xor9.1.i160.i341 = xor i8 %xor9.1.i147.i340, %134
  %xor9.13.i404 = xor i8 %xor9.1.i160.i341, %18
  %160 = ptrtoint ptr %arrayidx.13.i71 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %xor9.13.i404, ptr %arrayidx.13.i71, align 1
  %xor9.3.i129.i343 = xor i8 %134, %xor9.2.i.i333
  %xor9.2.i138.i344 = xor i8 %xor9.3.i129.i343, %90
  %xor9.2.i151.i345 = xor i8 %xor9.2.i138.i344, %130
  %xor9.2.i164.i346 = xor i8 %xor9.2.i151.i345, %xor9.3.i.i334
  %xor9.14.i408 = xor i8 %xor9.2.i164.i346, %17
  %161 = ptrtoint ptr %arrayidx.14.i73 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %xor9.14.i408, ptr %arrayidx.14.i73, align 1
  %xor9.i118.i348 = xor i8 %134, %90
  %xor9.3.i142.i349 = xor i8 %xor9.i118.i348, %110
  %xor9.3.i155.i350 = xor i8 %xor9.3.i142.i349, %xor9.3.i.i334
  %xor9.3.i168.i351 = xor i8 %xor9.3.i155.i350, %xor9.i.i331
  %xor9.15.i412 = xor i8 %xor9.3.i168.i351, %16
  %162 = ptrtoint ptr %arrayidx.15.i75 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %xor9.15.i412, ptr %arrayidx.15.i75, align 1
  %conv.i.i415 = zext i8 %18 to i32
  %arrayidx.i.i416 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.i415
  %163 = ptrtoint ptr %arrayidx.i.i416 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx.i.i416, align 1
  %arrayidx11.i426 = getelementptr [12 x i8], ptr @__const.next_key.rcon_table, i32 0, i32 %round.0516
  %165 = ptrtoint ptr %arrayidx11.i426 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx11.i426, align 1
  %xor9.i.i427 = xor i8 %164, %xor43.i434519
  %xor43.i434 = xor i8 %xor9.i.i427, %166
  br label %for.inc30

for.inc30:                                        ; preds = %if.else14, %if.then
  %xor43.i.sink = phi i8 [ %xor43.i, %if.then ], [ %xor43.i434, %if.else14 ]
  %conv.i48.i.pn = zext i8 %19 to i32
  %.pn538.in = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i48.i.pn
  %167 = ptrtoint ptr %.pn538.in to i32
  call void @__asan_load1_noabort(i32 %167)
  %.pn538 = load i8, ptr %.pn538.in, align 1
  %xor9.3.i.i.sink = xor i8 %.pn538, %28
  %conv.i46.i.pn = zext i8 %16 to i32
  %.pn537.in = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i46.i.pn
  %168 = ptrtoint ptr %.pn537.in to i32
  call void @__asan_load1_noabort(i32 %168)
  %.pn537 = load i8, ptr %.pn537.in, align 1
  %xor9.2.i.i.sink = xor i8 %.pn537, %29
  %conv.i44.i.pn = zext i8 %17 to i32
  %.pn.in = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i44.i.pn
  %169 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load1_noabort(i32 %169)
  %.pn = load i8, ptr %.pn.in, align 1
  %xor9.1.i.i.sink = xor i8 %.pn, %30
  %xor9.i50.i = xor i8 %xor43.i.sink, %27
  %xor9.1.i53.i = xor i8 %xor9.1.i.i.sink, %26
  %xor9.2.i57.i = xor i8 %xor9.2.i.i.sink, %25
  %xor9.3.i61.i = xor i8 %xor9.3.i.i.sink, %24
  %xor9.i63.i = xor i8 %xor9.i50.i, %23
  %xor9.1.i66.i = xor i8 %xor9.1.i53.i, %22
  %xor9.2.i70.i = xor i8 %xor9.2.i57.i, %21
  %xor9.3.i74.i = xor i8 %xor9.3.i61.i, %20
  %xor9.i76.i = xor i8 %xor9.i63.i, %19
  %xor9.1.i79.i = xor i8 %xor9.1.i66.i, %18
  %xor9.2.i83.i = xor i8 %xor9.2.i70.i, %17
  %xor9.3.i87.i = xor i8 %xor9.3.i74.i, %16
  %inc31 = add nuw nsw i32 %round.0516, 1
  br label %for.body4

for.end32:                                        ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  %170 = ptrtoint ptr %ciphertext to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %ciphertext, align 1
  %conv.i.i45 = zext i8 %171 to i32
  %arrayidx.i.i46 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.i45
  %172 = ptrtoint ptr %arrayidx.i.i46 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx.i.i46, align 1
  %174 = ptrtoint ptr %arrayidx.1.i47 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx.1.i47, align 1
  %conv.i.1.i = zext i8 %175 to i32
  %arrayidx.i.1.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.1.i
  %176 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx.i.1.i, align 1
  %178 = ptrtoint ptr %arrayidx.2.i49 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx.2.i49, align 1
  %conv.i.2.i = zext i8 %179 to i32
  %arrayidx.i.2.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.2.i
  %180 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx.i.2.i, align 1
  %182 = ptrtoint ptr %arrayidx.3.i51 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx.3.i51, align 1
  %conv.i.3.i = zext i8 %183 to i32
  %arrayidx.i.3.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.3.i
  %184 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx.i.3.i, align 1
  %186 = ptrtoint ptr %arrayidx.4.i53 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx.4.i53, align 1
  %conv.i.4.i = zext i8 %187 to i32
  %arrayidx.i.4.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.4.i
  %188 = ptrtoint ptr %arrayidx.i.4.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx.i.4.i, align 1
  %190 = ptrtoint ptr %arrayidx.5.i55 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx.5.i55, align 1
  %conv.i.5.i = zext i8 %191 to i32
  %arrayidx.i.5.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.5.i
  %192 = ptrtoint ptr %arrayidx.i.5.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx.i.5.i, align 1
  %194 = ptrtoint ptr %arrayidx.6.i57 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx.6.i57, align 1
  %conv.i.6.i = zext i8 %195 to i32
  %arrayidx.i.6.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.6.i
  %196 = ptrtoint ptr %arrayidx.i.6.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx.i.6.i, align 1
  %198 = ptrtoint ptr %arrayidx.7.i59 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx.7.i59, align 1
  %conv.i.7.i = zext i8 %199 to i32
  %arrayidx.i.7.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.7.i
  %200 = ptrtoint ptr %arrayidx.i.7.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx.i.7.i, align 1
  %202 = ptrtoint ptr %arrayidx.8.i61 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx.8.i61, align 1
  %conv.i.8.i = zext i8 %203 to i32
  %arrayidx.i.8.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.8.i
  %204 = ptrtoint ptr %arrayidx.i.8.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx.i.8.i, align 1
  %206 = ptrtoint ptr %arrayidx.9.i63 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx.9.i63, align 1
  %conv.i.9.i = zext i8 %207 to i32
  %arrayidx.i.9.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.9.i
  %208 = ptrtoint ptr %arrayidx.i.9.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx.i.9.i, align 1
  %210 = ptrtoint ptr %arrayidx.10.i65 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx.10.i65, align 1
  %conv.i.10.i = zext i8 %211 to i32
  %arrayidx.i.10.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.10.i
  %212 = ptrtoint ptr %arrayidx.i.10.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx.i.10.i, align 1
  %214 = ptrtoint ptr %arrayidx.11.i67 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx.11.i67, align 1
  %conv.i.11.i = zext i8 %215 to i32
  %arrayidx.i.11.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.11.i
  %216 = ptrtoint ptr %arrayidx.i.11.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx.i.11.i, align 1
  %218 = ptrtoint ptr %arrayidx.12.i69 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx.12.i69, align 1
  %conv.i.12.i = zext i8 %219 to i32
  %arrayidx.i.12.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.12.i
  %220 = ptrtoint ptr %arrayidx.i.12.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx.i.12.i, align 1
  %222 = ptrtoint ptr %arrayidx.13.i71 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx.13.i71, align 1
  %conv.i.13.i = zext i8 %223 to i32
  %arrayidx.i.13.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.13.i
  %224 = ptrtoint ptr %arrayidx.i.13.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx.i.13.i, align 1
  %226 = ptrtoint ptr %arrayidx.14.i73 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx.14.i73, align 1
  %conv.i.14.i = zext i8 %227 to i32
  %arrayidx.i.14.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.14.i
  %228 = ptrtoint ptr %arrayidx.i.14.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx.i.14.i, align 1
  %230 = ptrtoint ptr %arrayidx.15.i75 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx.15.i75, align 1
  %conv.i.15.i = zext i8 %231 to i32
  %arrayidx.i.15.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.15.i
  %232 = ptrtoint ptr %arrayidx.i.15.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx.i.15.i, align 1
  %xor9.i82 = xor i8 %xor43.i434519, %173
  store i8 %xor9.i82, ptr %ciphertext, align 1
  %xor9.1.i85 = xor i8 %30, %193
  store i8 %xor9.1.i85, ptr %arrayidx.1.i47, align 1
  %xor9.2.i89 = xor i8 %29, %213
  store i8 %xor9.2.i89, ptr %arrayidx.2.i49, align 1
  %xor9.3.i93 = xor i8 %28, %233
  store i8 %xor9.3.i93, ptr %arrayidx.3.i51, align 1
  %xor9.4.i97 = xor i8 %27, %189
  store i8 %xor9.4.i97, ptr %arrayidx.4.i53, align 1
  %xor9.5.i101 = xor i8 %26, %209
  store i8 %xor9.5.i101, ptr %arrayidx.5.i55, align 1
  %xor9.6.i105 = xor i8 %25, %229
  store i8 %xor9.6.i105, ptr %arrayidx.6.i57, align 1
  %xor9.7.i109 = xor i8 %24, %185
  store i8 %xor9.7.i109, ptr %arrayidx.7.i59, align 1
  %xor9.8.i113 = xor i8 %23, %205
  store i8 %xor9.8.i113, ptr %arrayidx.8.i61, align 1
  %xor9.9.i117 = xor i8 %22, %225
  store i8 %xor9.9.i117, ptr %arrayidx.9.i63, align 1
  %xor9.10.i121 = xor i8 %21, %181
  store i8 %xor9.10.i121, ptr %arrayidx.10.i65, align 1
  %xor9.11.i125 = xor i8 %20, %201
  store i8 %xor9.11.i125, ptr %arrayidx.11.i67, align 1
  %xor9.12.i129 = xor i8 %19, %221
  store i8 %xor9.12.i129, ptr %arrayidx.12.i69, align 1
  %xor9.13.i133 = xor i8 %18, %177
  store i8 %xor9.13.i133, ptr %arrayidx.13.i71, align 1
  %xor9.14.i137 = xor i8 %17, %197
  store i8 %xor9.14.i137, ptr %arrayidx.14.i73, align 1
  %xor9.15.i141 = xor i8 %16, %217
  store i8 %xor9.15.i141, ptr %arrayidx.15.i75, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/core/rtw_security.c", i32 548, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rtw_tkip_decrypt.__UNIQUE_ID_ddebug346, !1, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/core/rtw_security.c", i32 1364, i32 6}
!8 = !{ptr @rtw_aes_decrypt.__UNIQUE_ID_ddebug348, !7, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/r8188eu/core/rtw_security.c", i32 1370, i32 6}
!11 = !{ptr @rtw_aes_decrypt.__UNIQUE_ID_ddebug349, !10, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!12 = !{ptr @Te0, !13, !"Te0", i1 false, i1 false}
!13 = !{!"../drivers/staging/r8188eu/core/rtw_security.c", i32 1392, i32 11}
!14 = !{ptr @Td0, !15, !"Td0", i1 false, i1 false}
!15 = !{!"../drivers/staging/r8188eu/core/rtw_security.c", i32 1459, i32 11}
!16 = !{ptr @Td4s, !17, !"Td4s", i1 false, i1 false}
!17 = !{!"../drivers/staging/r8188eu/core/rtw_security.c", i32 1526, i32 10}
!18 = !{ptr @rcons, !19, !"rcons", i1 false, i1 false}
!19 = !{!"../drivers/staging/r8188eu/core/rtw_security.c", i32 1560, i32 10}
!20 = !{ptr @Sbox1, !21, !"Sbox1", i1 false, i1 false}
!21 = !{!"../drivers/staging/r8188eu/core/rtw_security.c", i32 258, i32 29}
!22 = !{ptr @sbox_table, !23, !"sbox_table", i1 false, i1 false}
!23 = !{!"../drivers/staging/r8188eu/core/rtw_security.c", i32 597, i32 12}
!24 = !{ptr @aes_decipher.message, !25, !"message", i1 false, i1 false}
!25 = !{!"../drivers/staging/r8188eu/core/rtw_security.c", i32 1152, i32 12}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/r8188eu/core/rtw_security.c", i32 1333, i32 4}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @aes_decipher.__UNIQUE_ID_ddebug347, !27, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
!40 = !{i64 2148838119, i64 2148838124, i64 2148838137, i64 2148838181, i64 2148838215, i64 2148838236}
