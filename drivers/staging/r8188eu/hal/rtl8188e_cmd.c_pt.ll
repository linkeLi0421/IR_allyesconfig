; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/rtl8188e_cmd.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/rtl8188e_cmd.c"
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
%struct.setpwrmode_parm = type { i8, i8, i8, i8, i8 }
%struct.rsvdpage_loc = type { i8, i8, i8, i8, i8 }
%struct.rtw_ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }

@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@rtl8188e_set_raid_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016R8188EU: ==>%s fw dont support RA\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl8188e_set_raid_cmd\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/r8188eu/hal/rtl8188e_cmd.c\00", [53 x i8] zeroinitializer }, align 32
@rtl8188e_set_raid_cmd._entry_ptr = internal global ptr @rtl8188e_set_raid_cmd._entry, section ".printk_index", align 4
@rtl8188e_set_FwPwrMode_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016R8188EU: %s: Mode=%d SmartPS=%d UAPSD=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtl8188e_set_FwPwrMode_cmd\00", [37 x i8] zeroinitializer }, align 32
@rtl8188e_set_FwPwrMode_cmd._entry_ptr = internal global ptr @rtl8188e_set_FwPwrMode_cmd._entry, section ".printk_index", align 4
@rtl8188e_set_FwMediaStatus_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016R8188EU: ### %s: MStatus=%x MACID=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtl8188e_set_FwMediaStatus_cmd\00", [33 x i8] zeroinitializer }, align 32
@rtl8188e_set_FwMediaStatus_cmd._entry_ptr = internal global ptr @rtl8188e_set_FwMediaStatus_cmd._entry, section ".printk_index", align 4
@rtl8188e_set_FwJoinBssReport_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016R8188EU: %s mstatus(%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rtl8188e_set_FwJoinBssReport_cmd\00", [63 x i8] zeroinitializer }, align 32
@rtl8188e_set_FwJoinBssReport_cmd._entry_ptr = internal global ptr @rtl8188e_set_FwJoinBssReport_cmd._entry, section ".printk_index", align 4
@rtl8188e_set_FwJoinBssReport_cmd._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016R8188EU: HalDownloadRSVDPage(): There is an Adapter is sending beacon.\0A\00", [54 x i8] zeroinitializer }, align 32
@rtl8188e_set_FwJoinBssReport_cmd._entry_ptr.11 = internal global ptr @rtl8188e_set_FwJoinBssReport_cmd._entry.9, section ".printk_index", align 4
@rtl8188e_set_FwJoinBssReport_cmd._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016R8188EU: %s: 1 Download RSVD page failed! DLBcnCount:%u, poll:%u\0A\00", [60 x i8] zeroinitializer }, align 32
@rtl8188e_set_FwJoinBssReport_cmd._entry_ptr.14 = internal global ptr @rtl8188e_set_FwJoinBssReport_cmd._entry.12, section ".printk_index", align 4
@rtl8188e_set_FwJoinBssReport_cmd._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.2, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016R8188EU: %s: 1 Download RSVD success! DLBcnCount:%u, poll:%u\0A\00", [32 x i8] zeroinitializer }, align 32
@rtl8188e_set_FwJoinBssReport_cmd._entry_ptr.17 = internal global ptr @rtl8188e_set_FwJoinBssReport_cmd._entry.15, section ".printk_index", align 4
@rtl8188e_set_FwJoinBssReport_cmd._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.2, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016R8188EU: Set RSVD page location to Fw.\0A\00", [54 x i8] zeroinitializer }, align 32
@rtl8188e_set_FwJoinBssReport_cmd._entry_ptr.20 = internal global ptr @rtl8188e_set_FwJoinBssReport_cmd._entry.18, section ".printk_index", align 4
@rtl8188e_set_p2p_ps_offload_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016R8188EU: P2P_PS_DISABLE\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtl8188e_set_p2p_ps_offload_cmd\00", [32 x i8] zeroinitializer }, align 32
@rtl8188e_set_p2p_ps_offload_cmd._entry_ptr = internal global ptr @rtl8188e_set_p2p_ps_offload_cmd._entry, section ".printk_index", align 4
@rtl8188e_set_p2p_ps_offload_cmd._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016R8188EU: P2P_PS_ENABLE\0A\00", [38 x i8] zeroinitializer }, align 32
@rtl8188e_set_p2p_ps_offload_cmd._entry_ptr.25 = internal global ptr @rtl8188e_set_p2p_ps_offload_cmd._entry.23, section ".printk_index", align 4
@rtl8188e_set_p2p_ps_offload_cmd._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016R8188EU: P2P_PS_SCAN\0A\00", [40 x i8] zeroinitializer }, align 32
@rtl8188e_set_p2p_ps_offload_cmd._entry_ptr.28 = internal global ptr @rtl8188e_set_p2p_ps_offload_cmd._entry.26, section ".printk_index", align 4
@rtl8188e_set_p2p_ps_offload_cmd._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.2, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016R8188EU: P2P_PS_SCAN_DONE\0A\00", [35 x i8] zeroinitializer }, align 32
@rtl8188e_set_p2p_ps_offload_cmd._entry_ptr.31 = internal global ptr @rtl8188e_set_p2p_ps_offload_cmd._entry.29, section ".printk_index", align 4
@FillH2CCmd_88E._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016R8188EU: FillH2CCmd_88E(): return H2C cmd because fw is not ready\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FillH2CCmd_88E\00", [17 x i8] zeroinitializer }, align 32
@FillH2CCmd_88E._entry_ptr = internal global ptr @FillH2CCmd_88E._entry, section ".printk_index", align 4
@FillH2CCmd_88E._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016R8188EU:  fw read cmd failed...\0A\00", [61 x i8] zeroinitializer }, align 32
@FillH2CCmd_88E._entry_ptr.36 = internal global ptr @FillH2CCmd_88E._entry.34, section ".printk_index", align 4
@SetFwRsvdPagePkt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016R8188EU: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SetFwRsvdPagePkt\00", [47 x i8] zeroinitializer }, align 32
@SetFwRsvdPagePkt._entry_ptr = internal global ptr @SetFwRsvdPagePkt._entry, section ".printk_index", align 4
@SetFwRsvdPagePkt._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016R8188EU: %s: alloc ReservedPagePacket fail!\0A\00", [49 x i8] zeroinitializer }, align 32
@SetFwRsvdPagePkt._entry_ptr.41 = internal global ptr @SetFwRsvdPagePkt._entry.39, section ".printk_index", align 4
@SetFwRsvdPagePkt._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016R8188EU: %s: Set RSVD page location to Fw\0A\00", [51 x i8] zeroinitializer }, align 32
@SetFwRsvdPagePkt._entry_ptr.44 = internal global ptr @SetFwRsvdPagePkt._entry.42, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ConstructBeacon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016R8188EU: beacon frame too large\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ConstructBeacon\00", [16 x i8] zeroinitializer }, align 32
@ConstructBeacon._entry_ptr = internal global ptr @ConstructBeacon._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 118, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 160, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 208, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 555, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 574, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 602, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 604, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 629, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 649, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 653, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 693, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 697, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 58, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 70, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 456, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 459, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 538, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.183 = private constant [46 x i8] c"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 289, i32 3 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @ConstructBeacon._entry, ptr @ConstructBeacon._entry_ptr, ptr @FillH2CCmd_88E._entry, ptr @FillH2CCmd_88E._entry.34, ptr @FillH2CCmd_88E._entry_ptr, ptr @FillH2CCmd_88E._entry_ptr.36, ptr @SetFwRsvdPagePkt._entry, ptr @SetFwRsvdPagePkt._entry.39, ptr @SetFwRsvdPagePkt._entry.42, ptr @SetFwRsvdPagePkt._entry_ptr, ptr @SetFwRsvdPagePkt._entry_ptr.41, ptr @SetFwRsvdPagePkt._entry_ptr.44, ptr @rtl8188e_set_FwJoinBssReport_cmd._entry, ptr @rtl8188e_set_FwJoinBssReport_cmd._entry.12, ptr @rtl8188e_set_FwJoinBssReport_cmd._entry.15, ptr @rtl8188e_set_FwJoinBssReport_cmd._entry.18, ptr @rtl8188e_set_FwJoinBssReport_cmd._entry.9, ptr @rtl8188e_set_FwJoinBssReport_cmd._entry_ptr, ptr @rtl8188e_set_FwJoinBssReport_cmd._entry_ptr.11, ptr @rtl8188e_set_FwJoinBssReport_cmd._entry_ptr.14, ptr @rtl8188e_set_FwJoinBssReport_cmd._entry_ptr.17, ptr @rtl8188e_set_FwJoinBssReport_cmd._entry_ptr.20, ptr @rtl8188e_set_FwMediaStatus_cmd._entry, ptr @rtl8188e_set_FwMediaStatus_cmd._entry_ptr, ptr @rtl8188e_set_FwPwrMode_cmd._entry, ptr @rtl8188e_set_FwPwrMode_cmd._entry_ptr, ptr @rtl8188e_set_p2p_ps_offload_cmd._entry, ptr @rtl8188e_set_p2p_ps_offload_cmd._entry.23, ptr @rtl8188e_set_p2p_ps_offload_cmd._entry.26, ptr @rtl8188e_set_p2p_ps_offload_cmd._entry.29, ptr @rtl8188e_set_p2p_ps_offload_cmd._entry_ptr, ptr @rtl8188e_set_p2p_ps_offload_cmd._entry_ptr.25, ptr @rtl8188e_set_p2p_ps_offload_cmd._entry_ptr.28, ptr @rtl8188e_set_p2p_ps_offload_cmd._entry_ptr.31, ptr @rtl8188e_set_raid_cmd._entry, ptr @rtl8188e_set_raid_cmd._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_set_raid_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_set_FwPwrMode_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_set_FwMediaStatus_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_set_FwJoinBssReport_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_set_FwJoinBssReport_cmd._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_set_FwJoinBssReport_cmd._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_set_FwJoinBssReport_cmd._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_set_FwJoinBssReport_cmd._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_set_p2p_ps_offload_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_set_p2p_ps_offload_cmd._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_set_p2p_ps_offload_cmd._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_set_p2p_ps_offload_cmd._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FillH2CCmd_88E._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FillH2CCmd_88E._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetFwRsvdPagePkt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetFwRsvdPagePkt._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetFwRsvdPagePkt._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ConstructBeacon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtl8188e_set_raid_cmd(ptr noundef %adapt, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #7
  %fw_ractrl = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 33
  %0 = ptrtoint ptr %fw_ractrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fw_ractrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %mask)
  %lmask.0.extract.shift = lshr i32 %2, 8
  %lmask.0.extract.trunc = trunc i32 %lmask.0.extract.shift to i24
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %3, i32 3)
  store i24 %lmask.0.extract.trunc, ptr %buf, align 4
  call fastcc void @FillH2CCmd_88E(ptr noundef %adapt, i8 noundef zeroext 64, i32 noundef 3, ptr noundef nonnull %buf)
  br label %if.end9

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %4 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp ugt i32 %4, 4
  br i1 %cmp, label %do.end, label %do.body.if.end9_crit_edge

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end, %do.body.if.end9_crit_edge, %if.then
  %res.0 = phi i8 [ 1, %if.then ], [ 0, %do.end ], [ 0, %do.body.if.end9_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #7
  ret i8 %res.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @FillH2CCmd_88E(ptr noundef %adapt, i8 noundef zeroext %ElementID, i32 noundef %CmdLen, ptr noundef readonly %pCmdBuffer) unnamed_addr #0 align 64 {
entry:
  %h2c_cmd.sroa.5.sroa.0 = alloca i24, align 4
  %h2c_cmd_ex = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %h2c_cmd.sroa.5.sroa.0 to i32
  call void @__asan_storeN_noabort(i32 %0, i32 3)
  store i24 0, ptr %h2c_cmd.sroa.5.sroa.0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %h2c_cmd_ex) #7
  %1 = ptrtoint ptr %h2c_cmd_ex to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %h2c_cmd_ex, align 4
  %bFWReady = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 44
  %2 = ptrtoint ptr %bFWReady to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bFWReady, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %4 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp ugt i32 %4, 4
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  %tobool7.not = icmp eq ptr %pCmdBuffer, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %lor.lhs.false9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false9:                                   ; preds = %if.end6
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 21
  %5 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool10.not = icmp eq i32 %6, 0
  br i1 %tobool10.not, label %do.body13, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body13:                                        ; preds = %lor.lhs.false9
  %LastHMEBoxNum = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 32
  %7 = ptrtoint ptr %LastHMEBoxNum to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %LastHMEBoxNum, align 4
  %conv1.i = zext i8 %8 to i32
  %shl.i = shl nuw i32 1, %conv1.i
  %9 = trunc i32 %shl.i to i8
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body13
  %retry_cnts.0.i = phi i32 [ 100, %do.body13 ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %call.i = tail call zeroext i8 @rtw_read8(ptr noundef %adapt, i32 noundef 460) #7
  %conv2.i = and i8 %call.i, %9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2.i)
  %cmp.i = icmp eq i8 %conv2.i, 0
  %dec.i = add nsw i32 %retry_cnts.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry_cnts.0.i)
  %tobool5.not.i = icmp eq i32 %retry_cnts.0.i, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool5.not.i
  br i1 %or.cond.i, label %_is_fw_read_cmd_down.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

_is_fw_read_cmd_down.exit:                        ; preds = %do.body.i
  br i1 %cmp.i, label %if.end28, label %do.body17

do.body17:                                        ; preds = %_is_fw_read_cmd_down.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %10 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp18 = icmp ugt i32 %10, 4
  br i1 %cmp18, label %do.end22, label %do.body17.cleanup_crit_edge

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end22:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %cleanup

if.end28:                                         ; preds = %_is_fw_read_cmd_down.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %CmdLen)
  %cmp29 = icmp ult i32 %CmdLen, 4
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %11 = call ptr @memcpy(ptr %h2c_cmd.sroa.5.sroa.0, ptr %pCmdBuffer, i32 %CmdLen)
  %.pre = shl nuw nsw i32 %conv1.i, 2
  br label %if.end44

if.else:                                          ; preds = %if.end28
  %12 = ptrtoint ptr %pCmdBuffer to i32
  call void @__asan_loadN_noabort(i32 %12, i32 3)
  %h2c_cmd.sroa.5.sroa.0.0.copyload = load i24, ptr %pCmdBuffer, align 1
  %13 = ptrtoint ptr %h2c_cmd.sroa.5.sroa.0 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 3)
  store i24 %h2c_cmd.sroa.5.sroa.0.0.copyload, ptr %h2c_cmd.sroa.5.sroa.0, align 4
  %conv = add i32 %CmdLen, 253
  %add.ptr32 = getelementptr i8, ptr %pCmdBuffer, i32 3
  %conv33 = and i32 %conv, 255
  %14 = call ptr @memcpy(ptr %h2c_cmd_ex, ptr %add.ptr32, i32 %conv33)
  %mul = shl nuw nsw i32 %conv1.i, 2
  %add = add nuw nsw i32 %mul, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv33)
  %cmp371.not = icmp eq i32 %conv33, 0
  br i1 %cmp371.not, label %if.else.if.end44_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %add40 = add nuw nsw i32 %add, %indvars.iv
  %add.ptr42 = getelementptr i8, ptr %h2c_cmd_ex, i32 %indvars.iv
  %15 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr42, align 1
  %call43 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef %add40, i8 noundef zeroext %16) #7
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv33
  br i1 %exitcond.not, label %for.body.if.end44_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end44_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.end44:                                         ; preds = %for.body.if.end44_crit_edge, %if.else.if.end44_crit_edge, %if.then30
  %mul46.pre-phi = phi i32 [ %mul, %if.else.if.end44_crit_edge ], [ %.pre, %if.then30 ], [ %mul, %for.body.if.end44_crit_edge ]
  %add47 = add nuw nsw i32 %mul46.pre-phi, 464
  %call57 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef %add47, i8 noundef zeroext %ElementID) #7
  %add54.1 = add nuw nsw i32 %mul46.pre-phi, 465
  %17 = ptrtoint ptr %h2c_cmd.sroa.5.sroa.0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %h2c_cmd.sroa.5.sroa.0.0.h2c_cmd.sroa.5.sroa.0.0.h2c_cmd.sroa.5.1. = load i8, ptr %h2c_cmd.sroa.5.sroa.0, align 4
  %call57.1 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef %add54.1, i8 noundef zeroext %h2c_cmd.sroa.5.sroa.0.0.h2c_cmd.sroa.5.sroa.0.0.h2c_cmd.sroa.5.1.) #7
  %add54.2 = add nuw nsw i32 %mul46.pre-phi, 466
  %h2c_cmd.sroa.5.sroa.0.1.add.ptr56.2.sroa_idx8 = getelementptr inbounds i8, ptr %h2c_cmd.sroa.5.sroa.0, i32 1
  %18 = ptrtoint ptr %h2c_cmd.sroa.5.sroa.0.1.add.ptr56.2.sroa_idx8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %h2c_cmd.sroa.5.sroa.0.1.h2c_cmd.sroa.5.sroa.0.1.h2c_cmd.sroa.5.2. = load i8, ptr %h2c_cmd.sroa.5.sroa.0.1.add.ptr56.2.sroa_idx8, align 1
  %call57.2 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef %add54.2, i8 noundef zeroext %h2c_cmd.sroa.5.sroa.0.1.h2c_cmd.sroa.5.sroa.0.1.h2c_cmd.sroa.5.2.) #7
  %add54.3 = add nuw nsw i32 %mul46.pre-phi, 467
  %h2c_cmd.sroa.5.sroa.0.2.add.ptr56.3.sroa_idx9 = getelementptr inbounds i8, ptr %h2c_cmd.sroa.5.sroa.0, i32 2
  %19 = ptrtoint ptr %h2c_cmd.sroa.5.sroa.0.2.add.ptr56.3.sroa_idx9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %h2c_cmd.sroa.5.sroa.0.2.h2c_cmd.sroa.5.sroa.0.2.h2c_cmd.sroa.5.3. = load i8, ptr %h2c_cmd.sroa.5.sroa.0.2.add.ptr56.3.sroa_idx9, align 2
  %call57.3 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef %add54.3, i8 noundef zeroext %h2c_cmd.sroa.5.sroa.0.2.h2c_cmd.sroa.5.sroa.0.2.h2c_cmd.sroa.5.3.) #7
  %add62 = add i8 %8, 1
  %rem = and i8 %add62, 3
  %20 = ptrtoint ptr %LastHMEBoxNum to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %rem, ptr %LastHMEBoxNum, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end22, %do.body17.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %h2c_cmd_ex) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188e_Add_RateATid(ptr noundef %pAdapter, i32 noundef %bitmap, i8 noundef zeroext %arg, i8 noundef zeroext %rssi_level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i8 %arg, 31
  %and5 = and i32 %bitmap, 268435455
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rssi_level)
  %cmp.not = icmp eq i8 %rssi_level, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %odmpriv = getelementptr inbounds %struct.adapter, ptr %pAdapter, i32 0, i32 19, i32 38
  %conv8 = zext i8 %and to i32
  %call = tail call i32 @ODM_Get_Rate_Bitmap(ptr noundef %odmpriv, i32 noundef %conv8, i32 noundef %and5, i8 noundef zeroext %rssi_level) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bitmap.addr.0 = phi i32 [ %call, %if.then ], [ %and5, %entry.if.end_crit_edge ]
  %or = or i32 %bitmap.addr.0, %bitmap
  %0 = lshr i8 %arg, 5
  %.lobit = and i8 %0, 1
  %shr14 = lshr i32 %or, 28
  %conv16 = trunc i32 %shr14 to i8
  %and17 = and i32 %bitmap.addr.0, 268435455
  %odmpriv18 = getelementptr inbounds %struct.adapter, ptr %pAdapter, i32 0, i32 19, i32 38
  tail call void @ODM_RA_UpdateRateInfo_8188E(ptr noundef %odmpriv18, i8 noundef zeroext %and, i8 noundef zeroext %conv16, i32 noundef %and17, i8 noundef zeroext %.lobit) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ODM_Get_Rate_Bitmap(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_RA_UpdateRateInfo_8188E(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188e_set_FwPwrMode_cmd(ptr noundef %adapt, i8 noundef zeroext %Mode) local_unnamed_addr #0 align 64 {
entry:
  %H2CSetPwrMode = alloca %struct.setpwrmode_parm, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %H2CSetPwrMode) #7
  %0 = ptrtoint ptr %H2CSetPwrMode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %H2CSetPwrMode, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %1 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %Mode to i32
  %smart_ps = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 14, i32 2
  %2 = ptrtoint ptr %smart_ps to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %smart_ps, align 1
  %conv2 = zext i8 %3 to i32
  %uapsd_enable = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 13, i32 29
  %4 = ptrtoint ptr %uapsd_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %uapsd_enable, align 1
  %conv3 = zext i8 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %6 = zext i8 %Mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %Mode, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb8
    i8 2, label %sw.bb10
    i8 3, label %sw.bb12
    i8 5, label %sw.bb14
  ]

sw.bb:                                            ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %H2CSetPwrMode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %H2CSetPwrMode, align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %H2CSetPwrMode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %H2CSetPwrMode, align 1
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %H2CSetPwrMode to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %H2CSetPwrMode, align 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %H2CSetPwrMode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %H2CSetPwrMode, align 1
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %H2CSetPwrMode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %H2CSetPwrMode, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %H2CSetPwrMode to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %H2CSetPwrMode, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb
  %RLBM.0 = phi i8 [ 0, %sw.default ], [ 0, %sw.bb14 ], [ 2, %sw.bb12 ], [ 1, %sw.bb10 ], [ 0, %sw.bb8 ], [ 0, %sw.bb ]
  %13 = getelementptr inbounds %struct.setpwrmode_parm, ptr %H2CSetPwrMode, i32 0, i32 4
  %14 = getelementptr inbounds %struct.setpwrmode_parm, ptr %H2CSetPwrMode, i32 0, i32 3
  %15 = getelementptr inbounds %struct.setpwrmode_parm, ptr %H2CSetPwrMode, i32 0, i32 2
  %16 = getelementptr inbounds %struct.setpwrmode_parm, ptr %H2CSetPwrMode, i32 0, i32 1
  %smart_ps17 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 14, i32 2
  %17 = ptrtoint ptr %smart_ps17 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %smart_ps17, align 1
  %shl = shl i8 %18, 4
  %or = or i8 %shl, %RLBM.0
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %or, ptr %16, align 1
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %15, align 1
  %uapsd_enable23 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 13, i32 29
  %21 = ptrtoint ptr %uapsd_enable23 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %uapsd_enable23, align 1
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %Mode)
  %cmp25.not = icmp eq i8 %Mode, 0
  %. = select i1 %cmp25.not, i8 12, i8 0
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %., ptr %13, align 1
  call fastcc void @FillH2CCmd_88E(ptr noundef %adapt, i8 noundef zeroext 32, i32 noundef 5, ptr noundef nonnull %H2CSetPwrMode)
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %H2CSetPwrMode) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188e_set_FwMediaStatus_cmd(ptr noundef %adapt, i16 noundef zeroext %mstatus_rpt) local_unnamed_addr #0 align 64 {
entry:
  %mst_rpt = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mst_rpt) #7
  %0 = tail call i16 @llvm.bswap.i16(i16 %mstatus_rpt)
  %1 = ptrtoint ptr %mst_rpt to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %mst_rpt, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp ugt i32 %2, 4
  br i1 %cmp, label %do.end, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = lshr i16 %0, 8
  %conv2 = zext i16 %3 to i32
  %4 = and i16 %0, 255
  %conv5 = zext i16 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %conv5, i32 noundef %conv2) #10
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  call fastcc void @FillH2CCmd_88E(ptr noundef %adapt, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %mst_rpt)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mst_rpt) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @CheckFwRsvdPageContent(ptr nocapture noundef %Adapter) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188e_set_FwJoinBssReport_cmd(ptr noundef %adapt, i8 noundef zeroext %mstatus) local_unnamed_addr #0 align 64 {
entry:
  %pktlen.i.i = alloca i32, align 4
  %ATIMWindow.i.i = alloca i32, align 4
  %RsvdPageLoc.i = alloca %struct.rsvdpage_loc, align 1
  %bcn_valid = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bcn_valid) #7
  %0 = ptrtoint ptr %bcn_valid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bcn_valid, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %1 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %mstatus to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %conv) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mstatus)
  %cmp6 = icmp eq i8 %mstatus, 1
  br i1 %cmp6, label %if.then8, label %do.end4.if.end156_crit_edge

do.end4.if.end156_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

if.then8:                                         ; preds = %do.end4
  %aid = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 11
  %2 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %aid, align 4
  %4 = or i16 %3, -16384
  %call11 = tail call i32 @rtw_write16(ptr noundef %adapt, i32 noundef 1704, i16 noundef zeroext %4) #7
  %RegCR_1 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 36
  %5 = ptrtoint ptr %RegCR_1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %RegCR_1, align 8
  %7 = or i8 %6, 1
  store i8 %7, ptr %RegCR_1, align 8
  %call16 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 257, i8 noundef zeroext %7) #7
  %call17 = tail call zeroext i8 @rtw_read8(ptr noundef %adapt, i32 noundef 1360) #7
  %8 = and i8 %call17, -9
  %call20 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1360, i8 noundef zeroext %8) #7
  %call21 = tail call zeroext i8 @rtw_read8(ptr noundef %adapt, i32 noundef 1360) #7
  %9 = or i8 %call21, 16
  %call25 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1360, i8 noundef zeroext %9) #7
  %RegFwHwTxQCtrl = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 34
  %10 = ptrtoint ptr %RegFwHwTxQCtrl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %RegFwHwTxQCtrl, align 2
  %12 = and i8 %11, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.then8.if.end41_crit_edge, label %do.body29

if.then8.if.end41_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.body29:                                        ; preds = %if.then8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %13 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp30 = icmp ugt i32 %13, 4
  br i1 %cmp30, label %do.end35, label %do.body29.if.end41_crit_edge

do.body29.if.end41_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %if.end41

if.end41:                                         ; preds = %do.end35, %do.body29.if.end41_crit_edge, %if.then8.if.end41_crit_edge
  %14 = ptrtoint ptr %RegFwHwTxQCtrl to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %RegFwHwTxQCtrl, align 2
  %16 = and i8 %15, -65
  %call46 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1058, i8 noundef zeroext %16) #7
  %17 = ptrtoint ptr %RegFwHwTxQCtrl to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %RegFwHwTxQCtrl, align 2
  %19 = and i8 %18, -65
  store i8 %19, ptr %RegFwHwTxQCtrl, align 2
  tail call void @SetHwReg8188EU(ptr noundef %adapt, i8 noundef zeroext 19, ptr noundef null) #7
  %bSurpriseRemoved69 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 21
  %bDriverStopped72 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 20
  %20 = getelementptr inbounds %struct.rsvdpage_loc, ptr %RsvdPageLoc.i, i32 0, i32 1
  %21 = getelementptr inbounds %struct.rsvdpage_loc, ptr %RsvdPageLoc.i, i32 0, i32 2
  %22 = getelementptr inbounds %struct.rsvdpage_loc, ptr %RsvdPageLoc.i, i32 0, i32 3
  %xmitpriv.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 9
  %mlmext_info.i.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17
  %network.i.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 38
  %mac_addr.i.i.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 15, i32 4
  %IEs.i.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 38, i32 12
  %Ssid.i.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 38, i32 3
  %Ssid33.i.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 38, i32 3, i32 1
  %SupportedRates.i.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 38, i32 9
  %DSConfig.i.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 38, i32 7, i32 3
  %add.ptr57.i.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 38, i32 9, i32 8
  %IELength.i.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 38, i32 11
  %add.ptr31.i.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 38, i32 12, i32 12
  %InfrastructureMode.i.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 4, i32 15, i32 6, i32 8
  %MacAddress.i.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 38, i32 1
  br label %do.body51

do.body51:                                        ; preds = %land.rhs71.do.body51_crit_edge, %if.end41
  %poll.0 = phi i32 [ 0, %if.end41 ], [ %inc53, %land.rhs71.do.body51_crit_edge ]
  %DLBcnCount.0 = phi i8 [ 0, %if.end41 ], [ %inc, %land.rhs71.do.body51_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %RsvdPageLoc.i) #7
  %23 = call ptr @memset(ptr %RsvdPageLoc.i, i32 255, i32 5)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %24 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp.i = icmp ugt i32 %24, 4
  br i1 %cmp.i, label %do.end.i, label %do.body51.do.end3.i_crit_edge

do.body51.do.end3.i_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.body51.do.end3.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 1000) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.body6.i, label %if.end17.i

do.body6.i:                                       ; preds = %do.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %26 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp7.i = icmp ugt i32 %26, 4
  br i1 %cmp7.i, label %do.end11.i, label %do.body6.i.SetFwRsvdPagePkt.exit_crit_edge

do.body6.i.SetFwRsvdPagePkt.exit_crit_edge:       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %SetFwRsvdPagePkt.exit

do.end11.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38) #10
  br label %SetFwRsvdPagePkt.exit

if.end17.i:                                       ; preds = %do.end3.i
  %arrayidx.i = getelementptr i8, ptr %call7.i.i.i, i32 40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pktlen.i.i) #7
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %arrayidx.i, align 8
  %addr1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 44
  %28 = call ptr @memset(ptr %addr1.i.i, i32 255, i32 6)
  %addr2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 50
  %29 = call ptr @memcpy(ptr %addr2.i.i, ptr %mac_addr.i.i.i, i32 6)
  %addr3.i.i = getelementptr i8, ptr %call7.i.i.i, i32 56
  %call3.i.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #7
  %30 = call ptr @memcpy(ptr %addr3.i.i, ptr %call3.i.i, i32 6)
  %31 = ptrtoint ptr %arrayidx.i to i32
  %add.i.i = add i32 %31, 22
  %32 = inttoptr i32 %add.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 2
  %35 = and i16 %34, 3840
  store i16 %35, ptr %32, align 2
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i, align 8
  %38 = and i16 %37, 1023
  %39 = or i16 %38, -32768
  store i16 %39, ptr %arrayidx.i, align 8
  %add.ptr15.i.i = getelementptr i8, ptr %call7.i.i.i, i32 72
  %call18.i.i = call ptr @rtw_get_beacon_interval_from_ie(ptr noundef %IEs.i.i) #7
  %40 = ptrtoint ptr %call18.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %call18.i.i, align 1
  %42 = ptrtoint ptr %add.ptr15.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %add.ptr15.i.i, align 8
  %add.ptr19.i.i = getelementptr i8, ptr %call7.i.i.i, i32 74
  %call23.i.i = call ptr @rtw_get_capability_from_ie(ptr noundef %IEs.i.i) #7
  %43 = ptrtoint ptr %call23.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %call23.i.i, align 1
  %45 = ptrtoint ptr %add.ptr19.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %add.ptr19.i.i, align 2
  %add.ptr24.i.i = getelementptr i8, ptr %call7.i.i.i, i32 76
  %46 = ptrtoint ptr %pktlen.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 36, ptr %pktlen.i.i, align 4
  %47 = ptrtoint ptr %mlmext_info.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mlmext_info.i.i, align 4
  %and26.i.i = and i32 %48, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and26.i.i)
  %cmp.i.i = icmp eq i32 %and26.i.i, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %IELength.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %IELength.i.i, align 1
  %add28.i.i = add i32 %50, 24
  %51 = ptrtoint ptr %pktlen.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add28.i.i, ptr %pktlen.i.i, align 4
  %52 = call ptr @memcpy(ptr %add.ptr24.i.i, ptr %add.ptr31.i.i, i32 %add28.i.i)
  br label %_ConstructBeacon.i.i

if.end.i.i:                                       ; preds = %if.end17.i
  %53 = ptrtoint ptr %Ssid.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %Ssid.i.i, align 1
  %call35.i.i = call ptr @rtw_set_ie(ptr noundef %add.ptr24.i.i, i32 noundef 0, i32 noundef %54, ptr noundef %Ssid33.i.i, ptr noundef nonnull %pktlen.i.i) #7
  %call37.i.i = call i32 @rtw_get_rateset_len(ptr noundef %SupportedRates.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call37.i.i)
  %cmp38.i.i = icmp ugt i32 %call37.i.i, 8
  %55 = call i32 @llvm.umin.i32(i32 %call37.i.i, i32 8) #7
  %call42.i.i = call ptr @rtw_set_ie(ptr noundef %call35.i.i, i32 noundef 1, i32 noundef %55, ptr noundef %SupportedRates.i.i, ptr noundef nonnull %pktlen.i.i) #7
  %call43.i.i = call ptr @rtw_set_ie(ptr noundef %call42.i.i, i32 noundef 3, i32 noundef 1, ptr noundef %DSConfig.i.i, ptr noundef nonnull %pktlen.i.i) #7
  %56 = ptrtoint ptr %mlmext_info.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mlmext_info.i.i, align 4
  %and45.i.i = and i32 %57, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and45.i.i)
  %cmp46.i.i = icmp eq i32 %and45.i.i, 1
  br i1 %cmp46.i.i, label %if.then48.i.i, label %if.end.i.i.if.end50.i.i_crit_edge

if.end.i.i.if.end50.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i.i

if.then48.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ATIMWindow.i.i) #7
  %58 = ptrtoint ptr %ATIMWindow.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %ATIMWindow.i.i, align 4
  %call49.i.i = call ptr @rtw_set_ie(ptr noundef %call43.i.i, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %ATIMWindow.i.i, ptr noundef nonnull %pktlen.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ATIMWindow.i.i) #7
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.then48.i.i, %if.end.i.i.if.end50.i.i_crit_edge
  %pframe.addr.0.i.i = phi ptr [ %call49.i.i, %if.then48.i.i ], [ %call43.i.i, %if.end.i.i.if.end50.i.i_crit_edge ]
  br i1 %cmp38.i.i, label %if.then53.i.i, label %if.end50.i.i._ConstructBeacon.i.i_crit_edge

if.end50.i.i._ConstructBeacon.i.i_crit_edge:      ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ConstructBeacon.i.i

if.then53.i.i:                                    ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub54.i.i = add i32 %call37.i.i, -8
  %call58.i.i = call ptr @rtw_set_ie(ptr noundef %pframe.addr.0.i.i, i32 noundef 50, i32 noundef %sub54.i.i, ptr noundef %add.ptr57.i.i, ptr noundef nonnull %pktlen.i.i) #7
  br label %_ConstructBeacon.i.i

_ConstructBeacon.i.i:                             ; preds = %if.then53.i.i, %if.end50.i.i._ConstructBeacon.i.i_crit_edge, %if.then.i.i
  %59 = ptrtoint ptr %pktlen.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pktlen.i.i, align 4
  %61 = add i32 %60, -481
  call void @__sanitizer_cov_trace_const_cmp4(i32 -513, i32 %61)
  %cmp61.i.i = icmp ult i32 %61, -513
  br i1 %cmp61.i.i, label %do.body64.i.i, label %_ConstructBeacon.i.i.ConstructBeacon.exit.i_crit_edge

_ConstructBeacon.i.i.ConstructBeacon.exit.i_crit_edge: ; preds = %_ConstructBeacon.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ConstructBeacon.exit.i

do.body64.i.i:                                    ; preds = %_ConstructBeacon.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %62 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %62)
  %cmp65.i.i = icmp ugt i32 %62, 4
  br i1 %cmp65.i.i, label %do.end70.i.i, label %do.body64.i.i.ConstructBeacon.exit.i_crit_edge

do.body64.i.i.ConstructBeacon.exit.i_crit_edge:   ; preds = %do.body64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ConstructBeacon.exit.i

do.end70.i.i:                                     ; preds = %do.body64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call71.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %ConstructBeacon.exit.i

ConstructBeacon.exit.i:                           ; preds = %do.end70.i.i, %do.body64.i.i.ConstructBeacon.exit.i_crit_edge, %_ConstructBeacon.i.i.ConstructBeacon.exit.i_crit_edge
  %BeaconLength.0.i = phi i32 [ 0, %do.end70.i.i ], [ 0, %do.body64.i.i.ConstructBeacon.exit.i_crit_edge ], [ %60, %_ConstructBeacon.i.i.ConstructBeacon.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pktlen.i.i) #7
  %add.i = add nsw i32 %BeaconLength.0.i, 32
  %shr.i = lshr i32 %add.i, 7
  %and.i = and i32 %add.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp ne i32 %and.i, 0
  %cond.i = zext i1 %tobool20.not.i to i32
  %add21.i = add nuw nsw i32 %shr.i, %cond.i
  %conv22.i = trunc i32 %add21.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add21.i)
  %cmp24.i = icmp eq i32 %add21.i, 1
  %spec.select.i = select i1 %cmp24.i, i8 2, i8 %conv22.i
  %conv31.tr.i = zext i8 %spec.select.i to i32
  %63 = shl nuw nsw i32 %conv31.tr.i, 7
  %conv38.i = or i32 %63, 40
  %64 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %spec.select.i, ptr %20, align 1
  %arrayidx40.i = getelementptr i8, ptr %call7.i.i.i, i32 %conv38.i
  %65 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -23536, ptr %arrayidx40.i, align 8
  %66 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %aid, align 4
  %68 = or i16 %67, -16384
  %69 = call i16 @llvm.bswap.i16(i16 %68) #7
  %70 = ptrtoint ptr %arrayidx40.i to i32
  %add.i1.i = or i32 %70, 2
  %71 = inttoptr i32 %add.i1.i to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %69, ptr %71, align 2
  %addr1.i2.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx40.i, i32 0, i32 2
  %call.i.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #7
  %73 = call ptr @memcpy(ptr %addr1.i2.i, ptr %call.i.i, i32 6)
  %addr2.i4.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx40.i, i32 0, i32 3
  %74 = call ptr @memcpy(ptr %addr2.i4.i, ptr %mac_addr.i.i.i, i32 6)
  %sub.i = or i32 %63, 8
  %arrayidx43.i = getelementptr i8, ptr %call7.i.i.i, i32 %sub.i
  call void @rtl8188e_fill_fake_txdesc(ptr noundef %adapt, ptr noundef %arrayidx43.i, i32 noundef 16, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %conv57.i = add nuw nsw i8 %spec.select.i, 1
  %add61.i = add nuw nsw i32 %63, 168
  %75 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv57.i, ptr %21, align 1
  %arrayidx64.i = getelementptr i8, ptr %call7.i.i.i, i32 %add61.i
  %call65.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #7
  %76 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %arrayidx64.i, align 8
  %77 = ptrtoint ptr %InfrastructureMode.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %InfrastructureMode.i.i, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %78, label %sw.default.i.i [
    i32 1, label %sw.bb.i.i
    i32 4, label %sw.bb10.i.i
  ]

sw.bb.i.i:                                        ; preds = %ConstructBeacon.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 1, ptr %arrayidx64.i, align 8
  %addr1.i6.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx64.i, i32 0, i32 2
  %call.i7.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #7
  %81 = call ptr @memcpy(ptr %addr1.i6.i, ptr %call.i7.i, i32 6)
  %addr2.i8.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx64.i, i32 0, i32 3
  %82 = call ptr @memcpy(ptr %addr2.i8.i, ptr %mac_addr.i.i.i, i32 6)
  %addr3.i10.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx64.i, i32 0, i32 4
  %83 = call ptr @memcpy(ptr %addr3.i10.i, ptr %call65.i, i32 6)
  br label %ConstructNullFunctionData.exit.i

sw.bb10.i.i:                                      ; preds = %ConstructBeacon.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 2, ptr %arrayidx64.i, align 8
  %addr114.i.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx64.i, i32 0, i32 2
  %85 = call ptr @memcpy(ptr %addr114.i.i, ptr %call65.i, i32 6)
  %addr216.i.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx64.i, i32 0, i32 3
  %call19.i.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #7
  %86 = call ptr @memcpy(ptr %addr216.i.i, ptr %call19.i.i, i32 6)
  %addr320.i.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx64.i, i32 0, i32 4
  %87 = call ptr @memcpy(ptr %addr320.i.i, ptr %mac_addr.i.i.i, i32 6)
  br label %ConstructNullFunctionData.exit.i

sw.default.i.i:                                   ; preds = %ConstructBeacon.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %addr125.i.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx64.i, i32 0, i32 2
  %88 = call ptr @memcpy(ptr %addr125.i.i, ptr %call65.i, i32 6)
  %addr227.i.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx64.i, i32 0, i32 3
  %89 = call ptr @memcpy(ptr %addr227.i.i, ptr %mac_addr.i.i.i, i32 6)
  %addr331.i.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx64.i, i32 0, i32 4
  %call34.i.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #7
  %90 = call ptr @memcpy(ptr %addr331.i.i, ptr %call34.i.i, i32 6)
  br label %ConstructNullFunctionData.exit.i

ConstructNullFunctionData.exit.i:                 ; preds = %sw.default.i.i, %sw.bb10.i.i, %sw.bb.i.i
  %91 = ptrtoint ptr %arrayidx64.i to i32
  %add.i11.i = add i32 %91, 22
  %92 = inttoptr i32 %add.i11.i to ptr
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %92, align 2
  %95 = and i16 %94, 3840
  store i16 %95, ptr %92, align 2
  %96 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx64.i, align 8
  %98 = and i16 %97, 1023
  %99 = or i16 %98, 18432
  store i16 %99, ptr %arrayidx64.i, align 8
  %sub68.i = add nuw nsw i32 %63, 136
  %arrayidx69.i = getelementptr i8, ptr %call7.i.i.i, i32 %sub68.i
  call void @rtl8188e_fill_fake_txdesc(ptr noundef %adapt, ptr noundef %arrayidx69.i, i32 noundef 24, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %conv83.i = add nuw nsw i8 %spec.select.i, 2
  %add87.i = add nuw nsw i32 %63, 296
  %100 = ptrtoint ptr %RsvdPageLoc.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv83.i, ptr %RsvdPageLoc.i, align 1
  %arrayidx90.i = getelementptr i8, ptr %call7.i.i.i, i32 %add87.i
  %call92.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #7
  %101 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %arrayidx90.i, align 8
  %addr1.i13.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx90.i, i32 0, i32 2
  %102 = call ptr @memcpy(ptr %addr1.i13.i, ptr %call92.i, i32 6)
  %addr2.i14.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx90.i, i32 0, i32 3
  %103 = call ptr @memcpy(ptr %addr2.i14.i, ptr %mac_addr.i.i.i, i32 6)
  %addr3.i15.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx90.i, i32 0, i32 4
  %104 = call ptr @memcpy(ptr %addr3.i15.i, ptr %MacAddress.i.i, i32 6)
  %105 = ptrtoint ptr %arrayidx90.i to i32
  %add.i16.i = add i32 %105, 22
  %106 = inttoptr i32 %add.i16.i to ptr
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %106, align 2
  %109 = and i16 %108, 3840
  store i16 %109, ptr %106, align 2
  %110 = load i16, ptr %arrayidx90.i, align 8
  %111 = and i16 %110, 1023
  %112 = or i16 %111, 20480
  store i16 %112, ptr %arrayidx90.i, align 8
  %113 = ptrtoint ptr %IELength.i.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %IELength.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %114)
  %cmp.i18.i = icmp ugt i32 %114, 768
  br i1 %cmp.i18.i, label %ConstructNullFunctionData.exit.i.ConstructProbeRsp.exit.i_crit_edge, label %if.end.i20.i

ConstructNullFunctionData.exit.i.ConstructProbeRsp.exit.i_crit_edge: ; preds = %ConstructNullFunctionData.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ConstructProbeRsp.exit.i

if.end.i20.i:                                     ; preds = %ConstructNullFunctionData.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx90.i, i32 24
  %115 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %IEs.i.i, i32 %114)
  %add21.i.i = add nuw nsw i32 %114, 24
  br label %ConstructProbeRsp.exit.i

ConstructProbeRsp.exit.i:                         ; preds = %if.end.i20.i, %ConstructNullFunctionData.exit.i.ConstructProbeRsp.exit.i_crit_edge
  %ProbeRspLength.0.i = phi i32 [ 0, %ConstructNullFunctionData.exit.i.ConstructProbeRsp.exit.i_crit_edge ], [ %add21.i.i, %if.end.i20.i ]
  %sub95.i = add nuw nsw i32 %63, 264
  %arrayidx96.i = getelementptr i8, ptr %call7.i.i.i, i32 %sub95.i
  call void @rtl8188e_fill_fake_txdesc(ptr noundef %adapt, ptr noundef %arrayidx96.i, i32 noundef %ProbeRspLength.0.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %add98.i = add nuw nsw i32 %ProbeRspLength.0.i, 32
  %shr99.i = lshr i32 %add98.i, 7
  %and102.i = and i32 %add98.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i)
  %tobool103.not.i = icmp ne i32 %and102.i, 0
  %cond104.i = zext i1 %tobool103.not.i to i32
  %add105.i = add nuw nsw i32 %shr99.i, %cond104.i
  %116 = trunc i32 %add105.i to i8
  %conv110.i = add nuw nsw i8 %conv83.i, %116
  %conv107.i = shl nuw nsw i32 %add105.i, 7
  %mul112.i = and i32 %conv107.i, 32640
  %add114.i = add nuw nsw i32 %mul112.i, %add87.i
  %117 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv110.i, ptr %22, align 1
  %idxprom116.i = and i32 %add114.i, 65448
  %arrayidx117.i = getelementptr i8, ptr %call7.i.i.i, i32 %idxprom116.i
  %call119.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #7
  %118 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %arrayidx117.i, align 8
  %119 = ptrtoint ptr %InfrastructureMode.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %InfrastructureMode.i.i, align 4
  %121 = zext i32 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %120, label %sw.default.i42.i [
    i32 1, label %sw.bb.i28.i
    i32 4, label %sw.bb10.i35.i
  ]

sw.bb.i28.i:                                      ; preds = %ConstructProbeRsp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %122 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 1, ptr %arrayidx117.i, align 8
  %addr1.i22.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx117.i, i32 0, i32 2
  %call.i24.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #7
  %123 = call ptr @memcpy(ptr %addr1.i22.i, ptr %call.i24.i, i32 6)
  %addr2.i25.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx117.i, i32 0, i32 3
  %124 = call ptr @memcpy(ptr %addr2.i25.i, ptr %mac_addr.i.i.i, i32 6)
  %addr3.i27.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx117.i, i32 0, i32 4
  %125 = call ptr @memcpy(ptr %addr3.i27.i, ptr %call119.i, i32 6)
  br label %ConstructNullFunctionData.exit44.i

sw.bb10.i35.i:                                    ; preds = %ConstructProbeRsp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 2, ptr %arrayidx117.i, align 8
  %addr114.i29.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx117.i, i32 0, i32 2
  %127 = call ptr @memcpy(ptr %addr114.i29.i, ptr %call119.i, i32 6)
  %addr216.i30.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx117.i, i32 0, i32 3
  %call19.i32.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #7
  %128 = call ptr @memcpy(ptr %addr216.i30.i, ptr %call19.i32.i, i32 6)
  %addr320.i33.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx117.i, i32 0, i32 4
  %129 = call ptr @memcpy(ptr %addr320.i33.i, ptr %mac_addr.i.i.i, i32 6)
  br label %ConstructNullFunctionData.exit44.i

sw.default.i42.i:                                 ; preds = %ConstructProbeRsp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %addr125.i36.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx117.i, i32 0, i32 2
  %130 = call ptr @memcpy(ptr %addr125.i36.i, ptr %call119.i, i32 6)
  %addr227.i37.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx117.i, i32 0, i32 3
  %131 = call ptr @memcpy(ptr %addr227.i37.i, ptr %mac_addr.i.i.i, i32 6)
  %addr331.i39.i = getelementptr inbounds %struct.rtw_ieee80211_hdr, ptr %arrayidx117.i, i32 0, i32 4
  %call34.i41.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #7
  %132 = call ptr @memcpy(ptr %addr331.i39.i, ptr %call34.i41.i, i32 6)
  br label %ConstructNullFunctionData.exit44.i

ConstructNullFunctionData.exit44.i:               ; preds = %sw.default.i42.i, %sw.bb10.i35.i, %sw.bb.i28.i
  %133 = ptrtoint ptr %arrayidx117.i to i32
  %add.i43.i = add i32 %133, 22
  %134 = inttoptr i32 %add.i43.i to ptr
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %134, align 2
  %137 = and i16 %136, 3840
  store i16 %137, ptr %134, align 2
  %138 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %arrayidx117.i, align 8
  %140 = and i16 %139, 1023
  %141 = or i16 %140, -14336
  store i16 %141, ptr %arrayidx117.i, align 8
  %sub122.i = add nsw i32 %idxprom116.i, -32
  %arrayidx123.i = getelementptr i8, ptr %call7.i.i.i, i32 %sub122.i
  call void @rtl8188e_fill_fake_txdesc(ptr noundef %adapt, ptr noundef %arrayidx123.i, i32 noundef 26, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %call140.i = call ptr @alloc_mgtxmitframe(ptr noundef %xmitpriv.i) #7
  %tobool141.not.i = icmp eq ptr %call140.i, null
  br i1 %tobool141.not.i, label %ConstructNullFunctionData.exit44.i.exit.i_crit_edge, label %if.end143.i

ConstructNullFunctionData.exit44.i.exit.i_crit_edge: ; preds = %ConstructNullFunctionData.exit44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.end143.i:                                      ; preds = %ConstructNullFunctionData.exit44.i
  %add139.i = add nuw nsw i32 %idxprom116.i, 26
  %attrib.i = getelementptr inbounds %struct.xmit_frame, ptr %call140.i, i32 0, i32 1
  call void @update_mgntframe_attrib(ptr noundef %adapt, ptr noundef %attrib.i) #7
  %qsel.i = getelementptr inbounds %struct.xmit_frame, ptr %call140.i, i32 0, i32 1, i32 35
  %142 = ptrtoint ptr %qsel.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 16, ptr %qsel.i, align 1
  %sub144.i = add nsw i32 %idxprom116.i, -14
  %last_txcmdsz.i = getelementptr inbounds %struct.xmit_frame, ptr %call140.i, i32 0, i32 1, i32 9
  %143 = ptrtoint ptr %last_txcmdsz.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %sub144.i, ptr %last_txcmdsz.i, align 4
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call140.i, i32 0, i32 1, i32 8
  %144 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %sub144.i, ptr %pktlen.i, align 4
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %call140.i, i32 0, i32 5
  %145 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %buf_addr.i, align 4
  %147 = call ptr @memcpy(ptr %146, ptr %call7.i.i.i, i32 %add139.i)
  %call146.i = call i32 @rtl8188eu_mgnt_xmit(ptr noundef %adapt, ptr noundef nonnull %call140.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %148 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %148)
  %cmp148.i = icmp ugt i32 %148, 4
  br i1 %cmp148.i, label %do.end153.i, label %if.end143.i.do.end158.i_crit_edge

if.end143.i.do.end158.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end158.i

do.end153.i:                                      ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #9
  %call155.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.38) #10
  br label %do.end158.i

do.end158.i:                                      ; preds = %do.end153.i, %if.end143.i.do.end158.i_crit_edge
  call fastcc void @FillH2CCmd_88E(ptr noundef %adapt, i8 noundef zeroext 0, i32 noundef 5, ptr noundef nonnull %RsvdPageLoc.i) #7
  br label %exit.i

exit.i:                                           ; preds = %do.end158.i, %ConstructNullFunctionData.exit44.i.exit.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %SetFwRsvdPagePkt.exit

SetFwRsvdPagePkt.exit:                            ; preds = %exit.i, %do.end11.i, %do.body6.i.SetFwRsvdPagePkt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %RsvdPageLoc.i) #7
  %inc = add nuw nsw i8 %DLBcnCount.0, 1
  br label %do.body52

do.body52:                                        ; preds = %land.rhs.do.body52_crit_edge, %SetFwRsvdPagePkt.exit
  %poll.1 = phi i32 [ %poll.0, %SetFwRsvdPagePkt.exit ], [ %inc53, %land.rhs.do.body52_crit_edge ]
  call void @yield() #7
  call void @GetHwReg8188EU(ptr noundef %adapt, i8 noundef zeroext 19, ptr noundef nonnull %bcn_valid) #7
  %inc53 = add i32 %poll.1, 1
  %149 = ptrtoint ptr %bcn_valid to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %bcn_valid, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool55.not = icmp ne i8 %150, 0
  %rem = urem i32 %inc53, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp56.not = icmp eq i32 %rem, 0
  %or.cond = select i1 %tobool55.not, i1 true, i1 %cmp56.not
  br i1 %or.cond, label %do.body52.do.cond62_crit_edge, label %land.lhs.true58

do.body52.do.cond62_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond62

land.lhs.true58:                                  ; preds = %do.body52
  %151 = ptrtoint ptr %bSurpriseRemoved69 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %bSurpriseRemoved69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool59.not = icmp eq i32 %152, 0
  br i1 %tobool59.not, label %land.rhs, label %land.lhs.true58.do.cond62_crit_edge

land.lhs.true58.do.cond62_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond62

land.rhs:                                         ; preds = %land.lhs.true58
  %153 = ptrtoint ptr %bDriverStopped72 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %bDriverStopped72, align 8
  %tobool60.not = icmp eq i32 %154, 0
  br i1 %tobool60.not, label %land.rhs.do.body52_crit_edge, label %land.rhs.do.cond62_crit_edge

land.rhs.do.cond62_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond62

land.rhs.do.body52_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body52

do.cond62:                                        ; preds = %land.rhs.do.cond62_crit_edge, %land.lhs.true58.do.cond62_crit_edge, %do.body52.do.cond62_crit_edge
  %.lcssa = phi i8 [ %150, %do.body52.do.cond62_crit_edge ], [ 0, %land.lhs.true58.do.cond62_crit_edge ], [ 0, %land.rhs.do.cond62_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa)
  %tobool63.not = icmp eq i8 %.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %DLBcnCount.0)
  %cmp66 = icmp ult i8 %DLBcnCount.0, 100
  %or.cond200 = select i1 %tobool63.not, i1 %cmp66, i1 false
  %155 = ptrtoint ptr %bSurpriseRemoved69 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %bSurpriseRemoved69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool70.not = icmp eq i32 %156, 0
  br i1 %or.cond200, label %land.lhs.true68, label %do.end76

land.lhs.true68:                                  ; preds = %do.cond62
  br i1 %tobool70.not, label %land.rhs71, label %land.lhs.true68.if.end112_crit_edge

land.lhs.true68.if.end112_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

land.rhs71:                                       ; preds = %land.lhs.true68
  %157 = ptrtoint ptr %bDriverStopped72 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %bDriverStopped72, align 8
  %tobool73.not = icmp eq i32 %158, 0
  br i1 %tobool73.not, label %land.rhs71.do.body51_crit_edge, label %land.rhs71.if.end112_crit_edge

land.rhs71.if.end112_crit_edge:                   ; preds = %land.rhs71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

land.rhs71.do.body51_crit_edge:                   ; preds = %land.rhs71
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

do.end76:                                         ; preds = %do.cond62
  br i1 %tobool70.not, label %lor.lhs.false, label %do.end76.if.end112_crit_edge

do.end76.if.end112_crit_edge:                     ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

lor.lhs.false:                                    ; preds = %do.end76
  %159 = ptrtoint ptr %bDriverStopped72 to i32
  call void @__asan_load4_noabort(i32 %159)
  %.pr207 = load i32, ptr %bDriverStopped72, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr207)
  %tobool80.not = icmp eq i32 %.pr207, 0
  br i1 %tobool80.not, label %if.else, label %lor.lhs.false.if.end112_crit_edge

lor.lhs.false.if.end112_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.else:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %160 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %160)
  %cmp85 = icmp ugt i32 %160, 4
  br i1 %cmp85, label %if.end112.sink.split, label %if.else.if.end112_crit_edge

if.else.if.end112_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.end112.sink.split:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %.str.13..str.16 = select i1 %tobool63.not, ptr @.str.13, ptr @.str.16
  %conv92 = zext i8 %inc to i32
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.13..str.16, ptr noundef nonnull @.str.8, i32 noundef %conv92, i32 noundef %inc53) #10
  br label %if.end112

if.end112:                                        ; preds = %if.end112.sink.split, %if.else.if.end112_crit_edge, %lor.lhs.false.if.end112_crit_edge, %do.end76.if.end112_crit_edge, %land.rhs71.if.end112_crit_edge, %land.lhs.true68.if.end112_crit_edge
  %call113 = call zeroext i8 @rtw_read8(ptr noundef %adapt, i32 noundef 1360) #7
  %161 = or i8 %call113, 8
  %call117 = call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1360, i8 noundef zeroext %161) #7
  %call118 = call zeroext i8 @rtw_read8(ptr noundef %adapt, i32 noundef 1360) #7
  %162 = and i8 %call118, -17
  %call122 = call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1360, i8 noundef zeroext %162) #7
  br i1 %tobool.not, label %if.end112.if.end134_crit_edge, label %if.then124

if.end112.if.end134_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

if.then124:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  %163 = ptrtoint ptr %RegFwHwTxQCtrl to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %RegFwHwTxQCtrl, align 2
  %165 = or i8 %164, 64
  %call129 = call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1058, i8 noundef zeroext %165) #7
  %166 = ptrtoint ptr %RegFwHwTxQCtrl to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %RegFwHwTxQCtrl, align 2
  %168 = or i8 %167, 64
  store i8 %168, ptr %RegFwHwTxQCtrl, align 2
  br label %if.end134

if.end134:                                        ; preds = %if.then124, %if.end112.if.end134_crit_edge
  %169 = ptrtoint ptr %bcn_valid to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %bcn_valid, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool135.not = icmp eq i8 %170, 0
  br i1 %tobool135.not, label %if.end134.if.end149_crit_edge, label %if.then136

if.end134.if.end149_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

if.then136:                                       ; preds = %if.end134
  call void @SetHwReg8188EU(ptr noundef %adapt, i8 noundef zeroext 19, ptr noundef null) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %171 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %171)
  %cmp138 = icmp ugt i32 %171, 4
  br i1 %cmp138, label %do.end143, label %if.then136.if.end149_crit_edge

if.then136.if.end149_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

do.end143:                                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #9
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %if.end149

if.end149:                                        ; preds = %do.end143, %if.then136.if.end149_crit_edge, %if.end134.if.end149_crit_edge
  %172 = ptrtoint ptr %RegCR_1 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %RegCR_1, align 8
  %174 = and i8 %173, -2
  store i8 %174, ptr %RegCR_1, align 8
  %call155 = call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 257, i8 noundef zeroext %174) #7
  br label %if.end156

if.end156:                                        ; preds = %if.end149, %do.end4.if.end156_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bcn_valid) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @SetHwReg8188EU(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @GetHwReg8188EU(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188e_set_p2p_ps_offload_cmd(ptr noundef %adapt, i8 noundef zeroext %p2p_ps_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %p2p_ps_offload2 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 47
  %0 = zext i8 %p2p_ps_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %p2p_ps_state, label %entry.sw.epilog_crit_edge [
    i8 0, label %do.body
    i8 1, label %do.body8
    i8 2, label %do.body86
    i8 3, label %do.body102
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %1 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %do.end, label %do.body.do.end6_crit_edge

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %2 = ptrtoint ptr %p2p_ps_offload2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %p2p_ps_offload2, align 1
  br label %sw.epilog

do.body8:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %3 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp9 = icmp ugt i32 %3, 4
  br i1 %cmp9, label %do.end14, label %do.body8.do.end19_crit_edge

do.body8.do.end19_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  br label %do.end19

do.end19:                                         ; preds = %do.end14, %do.body8.do.end19_crit_edge
  %ctwindow = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 18, i32 50
  %4 = ptrtoint ptr %ctwindow to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctwindow, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp21.not = icmp eq i8 %5, 0
  br i1 %cmp21.not, label %do.end19.if.end26_crit_edge, label %if.then23

do.end19.if.end26_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then23:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %p2p_ps_offload2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %p2p_ps_offload2, align 1
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %p2p_ps_offload2, align 1
  %call25 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1394, i8 noundef zeroext %5) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %do.end19.if.end26_crit_edge
  %noa_num = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 18, i32 52
  %7 = ptrtoint ptr %noa_num to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %noa_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp29157.not = icmp eq i8 %8, 0
  br i1 %cmp29157.not, label %if.end26.for.end_crit_edge, label %if.end44.peel

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end44.peel:                                    ; preds = %if.end26
  %call33.peel = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1487, i8 noundef zeroext 0) #7
  %9 = ptrtoint ptr %p2p_ps_offload2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load38.peel = load i8, ptr %p2p_ps_offload2, align 1
  %bf.set40.peel = or i8 %bf.load38.peel, 16
  store i8 %bf.set40.peel, ptr %p2p_ps_offload2, align 1
  %arrayidx.peel = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 18, i32 54, i32 0
  %10 = ptrtoint ptr %arrayidx.peel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.peel, align 4
  %call45.peel = tail call i32 @rtw_write32(ptr noundef %adapt, i32 noundef 1504, i32 noundef %11) #7
  %arrayidx47.peel = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 18, i32 55, i32 0
  %12 = ptrtoint ptr %arrayidx47.peel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx47.peel, align 4
  %call48.peel = tail call i32 @rtw_write32(ptr noundef %adapt, i32 noundef 1508, i32 noundef %13) #7
  %arrayidx50.peel = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 18, i32 56, i32 0
  %14 = ptrtoint ptr %arrayidx50.peel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx50.peel, align 4
  %call51.peel = tail call i32 @rtw_write32(ptr noundef %adapt, i32 noundef 1512, i32 noundef %15) #7
  %arrayidx53.peel = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 18, i32 53, i32 0
  %16 = ptrtoint ptr %arrayidx53.peel to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx53.peel, align 1
  %call54.peel = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1516, i8 noundef zeroext %17) #7
  %18 = ptrtoint ptr %noa_num to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %noa_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp29.peel = icmp ugt i8 %19, 1
  br i1 %cmp29.peel, label %if.end44.peel.if.end44_crit_edge, label %if.end44.peel.for.end_crit_edge

if.end44.peel.for.end_crit_edge:                  ; preds = %if.end44.peel
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end44.peel.if.end44_crit_edge:                 ; preds = %if.end44.peel
  br label %if.end44

if.end44:                                         ; preds = %if.end44.if.end44_crit_edge, %if.end44.peel.if.end44_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end44.if.end44_crit_edge ], [ 1, %if.end44.peel.if.end44_crit_edge ]
  %20 = trunc i32 %indvars.iv to i8
  %shl = shl i8 %20, 4
  %call33 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1487, i8 noundef zeroext %shl) #7
  %21 = ptrtoint ptr %p2p_ps_offload2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load41 = load i8, ptr %p2p_ps_offload2, align 1
  %bf.set43 = or i8 %bf.load41, 8
  store i8 %bf.set43, ptr %p2p_ps_offload2, align 1
  %arrayidx = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 18, i32 54, i32 %indvars.iv
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %call45 = tail call i32 @rtw_write32(ptr noundef %adapt, i32 noundef 1504, i32 noundef %23) #7
  %arrayidx47 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 18, i32 55, i32 %indvars.iv
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx47, align 4
  %call48 = tail call i32 @rtw_write32(ptr noundef %adapt, i32 noundef 1508, i32 noundef %25) #7
  %arrayidx50 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 18, i32 56, i32 %indvars.iv
  %26 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx50, align 4
  %call51 = tail call i32 @rtw_write32(ptr noundef %adapt, i32 noundef 1512, i32 noundef %27) #7
  %arrayidx53 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 18, i32 53, i32 %indvars.iv
  %28 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx53, align 1
  %call54 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1516, i8 noundef zeroext %29) #7
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %30 = ptrtoint ptr %noa_num to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %noa_num, align 1
  %32 = zext i8 %31 to i32
  %cmp29 = icmp ult i32 %indvars.iv.next, %32
  br i1 %cmp29, label %if.end44.if.end44_crit_edge, label %if.end44.for.end_crit_edge, !llvm.loop !91

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end44.if.end44_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

for.end:                                          ; preds = %if.end44.for.end_crit_edge, %if.end44.peel.for.end_crit_edge, %if.end26.for.end_crit_edge
  %.lcssa = phi i8 [ 0, %if.end26.for.end_crit_edge ], [ %19, %if.end44.peel.for.end_crit_edge ], [ %31, %if.end44.for.end_crit_edge ]
  %opp_ps = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 18, i32 51
  %33 = ptrtoint ptr %opp_ps to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %opp_ps, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp56 = icmp ne i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa)
  %cmp60.not = icmp eq i8 %.lcssa, 0
  %or.cond = select i1 %cmp56, i1 %cmp60.not, i1 false
  br i1 %or.cond, label %for.end.sw.epilog_crit_edge, label %if.then62

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then62:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call63 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1363, i8 noundef zeroext 16) #7
  %35 = ptrtoint ptr %p2p_ps_offload2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load64 = load i8, ptr %p2p_ps_offload2, align 1
  %role = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 18, i32 15
  %36 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp67 = icmp eq i32 %37, 3
  %bf.set66 = and i8 %bf.load64, 61
  %bf.clear78 = or i8 %bf.set66, -128
  %bf.set72 = and i8 %bf.load64, 57
  %bf.clear74 = or i8 %bf.set72, -64
  %storemerge = select i1 %cmp67, i8 %bf.clear74, i8 %bf.clear78
  %38 = ptrtoint ptr %p2p_ps_offload2 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %storemerge, ptr %p2p_ps_offload2, align 1
  br label %sw.epilog

do.body86:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %39 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp87 = icmp ugt i32 %39, 4
  br i1 %cmp87, label %do.end92, label %do.body86.do.end97_crit_edge

do.body86.do.end97_crit_edge:                     ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end97

do.end92:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %do.end97

do.end97:                                         ; preds = %do.end92, %do.body86.do.end97_crit_edge
  %40 = ptrtoint ptr %p2p_ps_offload2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load98 = load i8, ptr %p2p_ps_offload2, align 1
  %bf.set100 = or i8 %bf.load98, 2
  store i8 %bf.set100, ptr %p2p_ps_offload2, align 1
  br label %sw.epilog

do.body102:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %41 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp103 = icmp ugt i32 %41, 4
  br i1 %cmp103, label %do.end108, label %do.body102.do.end113_crit_edge

do.body102.do.end113_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end113

do.end108:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #10
  br label %do.end113

do.end113:                                        ; preds = %do.end108, %do.body102.do.end113_crit_edge
  %42 = ptrtoint ptr %p2p_ps_offload2 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load114 = load i8, ptr %p2p_ps_offload2, align 1
  %bf.clear115 = and i8 %bf.load114, -3
  store i8 %bf.clear115, ptr %p2p_ps_offload2, align 1
  %p2p_ps_state117 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 18, i32 48
  %43 = ptrtoint ptr %p2p_ps_state117 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %p2p_ps_state117, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end113, %do.end97, %if.then62, %for.end.sw.epilog_crit_edge, %do.end6, %entry.sw.epilog_crit_edge
  tail call fastcc void @FillH2CCmd_88E(ptr noundef %adapt, i8 noundef zeroext 36, i32 noundef 1, ptr noundef %p2p_ps_offload2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_fill_fake_txdesc(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_my_bssid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_mgtxmitframe(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_mgntframe_attrib(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8188eu_mgnt_xmit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_beacon_interval_from_ie(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_capability_from_ie(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_set_ie(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_rateset_len(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c", i32 118, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl8188e_set_raid_cmd._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl8188e_set_raid_cmd._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c", i32 160, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rtl8188e_set_FwPwrMode_cmd._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @rtl8188e_set_FwPwrMode_cmd._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c", i32 208, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @rtl8188e_set_FwMediaStatus_cmd._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @rtl8188e_set_FwMediaStatus_cmd._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c", i32 555, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rtl8188e_set_FwJoinBssReport_cmd._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @rtl8188e_set_FwJoinBssReport_cmd._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c", i32 574, i32 4}
!23 = !{ptr @rtl8188e_set_FwJoinBssReport_cmd._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @rtl8188e_set_FwJoinBssReport_cmd._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c", i32 602, i32 4}
!27 = !{ptr @rtl8188e_set_FwJoinBssReport_cmd._entry.12, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rtl8188e_set_FwJoinBssReport_cmd._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c", i32 604, i32 4}
!31 = !{ptr @rtl8188e_set_FwJoinBssReport_cmd._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @rtl8188e_set_FwJoinBssReport_cmd._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c", i32 629, i32 4}
!35 = !{ptr @rtl8188e_set_FwJoinBssReport_cmd._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rtl8188e_set_FwJoinBssReport_cmd._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c", i32 649, i32 3}
!39 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rtl8188e_set_p2p_ps_offload_cmd._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @rtl8188e_set_p2p_ps_offload_cmd._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c", i32 653, i32 3}
!44 = !{ptr @rtl8188e_set_p2p_ps_offload_cmd._entry.23, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rtl8188e_set_p2p_ps_offload_cmd._entry_ptr.25, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c", i32 693, i32 3}
!48 = !{ptr @rtl8188e_set_p2p_ps_offload_cmd._entry.26, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @rtl8188e_set_p2p_ps_offload_cmd._entry_ptr.28, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c", i32 697, i32 3}
!52 = !{ptr @rtl8188e_set_p2p_ps_offload_cmd._entry.29, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @rtl8188e_set_p2p_ps_offload_cmd._entry_ptr.31, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c", i32 58, i32 3}
!56 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @FillH2CCmd_88E._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @FillH2CCmd_88E._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c", i32 70, i32 4}
!61 = !{ptr @FillH2CCmd_88E._entry.34, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @FillH2CCmd_88E._entry_ptr.36, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c", i32 456, i32 2}
!65 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @SetFwRsvdPagePkt._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @SetFwRsvdPagePkt._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c", i32 459, i32 3}
!70 = !{ptr @SetFwRsvdPagePkt._entry.39, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @SetFwRsvdPagePkt._entry_ptr.41, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c", i32 538, i32 2}
!74 = !{ptr @SetFwRsvdPagePkt._entry.42, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @SetFwRsvdPagePkt._entry_ptr.44, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_cmd.c", i32 289, i32 3}
!78 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ConstructBeacon._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @ConstructBeacon._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i8 0, i8 2}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.peeled.count", i32 1}
