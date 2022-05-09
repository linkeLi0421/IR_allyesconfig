; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/core/rtw_wlan_util.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/core/rtw_wlan_util.c"
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
%struct.ndis_802_11_var_ie = type { i8, i8, [1 x i8] }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [6 x i8], i8, i16, [8 x i8], i8, [32 x i8], i16, [32 x i8], i8, i8, %struct.rssi_sta, i8, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }

@REALTEK_96B_IE = dso_local global { [6 x i8], [26 x i8] } { [6 x i8] c"\00\E0L\02\01 ", [26 x i8] zeroinitializer }, align 32
@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@set_channel_bwmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016R8188EU: [%s] ch = %d, offset = %d, bwmode = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_channel_bwmode\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/staging/r8188eu/core/rtw_wlan_util.c\00", [51 x i8] zeroinitializer }, align 32
@set_channel_bwmode._entry_ptr = internal global ptr @set_channel_bwmode._entry, section ".printk_index", align 4
@WMMOnAssocRsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016R8188EU: WMM(%x): %x, %x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WMMOnAssocRsp\00", [18 x i8] zeroinitializer }, align 32
@WMMOnAssocRsp._entry_ptr = internal global ptr @WMMOnAssocRsp._entry, section ".printk_index", align 4
@WMMOnAssocRsp._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016R8188EU: wmm_para_seq(%d): %d\0A\00", [63 x i8] zeroinitializer }, align 32
@WMMOnAssocRsp._entry_ptr.7 = internal global ptr @WMMOnAssocRsp._entry.5, section ".printk_index", align 4
@MCS_rate_1R = external dso_local local_unnamed_addr global [16 x i8], align 1
@HTOnAssocRsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016R8188EU: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HTOnAssocRsp\00", [19 x i8] zeroinitializer }, align 32
@HTOnAssocRsp._entry_ptr = internal global ptr @HTOnAssocRsp._entry, section ".printk_index", align 4
@rtw_check_bcn_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016R8188EU: %s IE too long for survey event\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw_check_bcn_info\00", [45 x i8] zeroinitializer }, align 32
@rtw_check_bcn_info._entry_ptr = internal global ptr @rtw_check_bcn_info._entry, section ".printk_index", align 4
@rtw_check_bcn_info._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\016R8188EU: Oops: rtw_check_network_encrypt linked but recv other bssid bcn\0A%pM %pM\0A\00", [44 x i8] zeroinitializer }, align 32
@rtw_check_bcn_info._entry_ptr.14 = internal global ptr @rtw_check_bcn_info._entry.12, section ".printk_index", align 4
@rtw_check_bcn_info._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016R8188EU: %s bcn now: ht_cap_info:%x ht_info_infos_0:%x\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw_check_bcn_info._entry_ptr.17 = internal global ptr @rtw_check_bcn_info._entry.15, section ".printk_index", align 4
@rtw_check_bcn_info._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016R8188EU: %s bcn link: ht_cap_info:%x ht_info_infos_0:%x\0A\00", [37 x i8] zeroinitializer }, align 32
@rtw_check_bcn_info._entry_ptr.20 = internal global ptr @rtw_check_bcn_info._entry.18, section ".printk_index", align 4
@rtw_check_bcn_info._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.2, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016R8188EU: %s bw mode change, disconnect\0A\00", [54 x i8] zeroinitializer }, align 32
@rtw_check_bcn_info._entry_ptr.23 = internal global ptr @rtw_check_bcn_info._entry.21, section ".printk_index", align 4
@rtw_check_bcn_info._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.11, ptr @.str.2, i32 926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016R8188EU: Oops: %s we don't find channel IE, so don't check it\0A\00", [63 x i8] zeroinitializer }, align 32
@rtw_check_bcn_info._entry_ptr.26 = internal global ptr @rtw_check_bcn_info._entry.24, section ".printk_index", align 4
@rtw_check_bcn_info._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.11, ptr @.str.2, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016R8188EU: %s beacon channel:%d cur channel:%d disconnect\0A\00", [37 x i8] zeroinitializer }, align 32
@rtw_check_bcn_info._entry_ptr.29 = internal global ptr @rtw_check_bcn_info._entry.27, section ".printk_index", align 4
@rtw_check_bcn_info._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.11, ptr @.str.2, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016R8188EU: %s marc: cannot find SSID for survey event\0A\00", [41 x i8] zeroinitializer }, align 32
@rtw_check_bcn_info._entry_ptr.32 = internal global ptr @rtw_check_bcn_info._entry.30, section ".printk_index", align 4
@rtw_check_bcn_info._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.11, ptr @.str.2, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016R8188EU: %s(), SSID is not match return FAIL\0A\00", [48 x i8] zeroinitializer }, align 32
@rtw_check_bcn_info._entry_ptr.35 = internal global ptr @rtw_check_bcn_info._entry.33, section ".printk_index", align 4
@rtw_check_bcn_info._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.11, ptr @.str.2, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016R8188EU: %s(), privacy is not match return FAIL\0A\00", [45 x i8] zeroinitializer }, align 32
@rtw_check_bcn_info._entry_ptr.38 = internal global ptr @rtw_check_bcn_info._entry.36, section ".printk_index", align 4
@rtw_check_bcn_info._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.11, ptr @.str.2, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016R8188EU: %s(): enctyp is not match , return FAIL\0A\00", [44 x i8] zeroinitializer }, align 32
@rtw_check_bcn_info._entry_ptr.41 = internal global ptr @rtw_check_bcn_info._entry.39, section ".printk_index", align 4
@rtw_check_bcn_info._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.11, ptr @.str.2, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\016R8188EU: %s pairwise_cipher(%x:%x) or group_cipher(%x:%x) is not match , return FAIL\0A\00", [40 x i8] zeroinitializer }, align 32
@rtw_check_bcn_info._entry_ptr.44 = internal global ptr @rtw_check_bcn_info._entry.42, section ".printk_index", align 4
@rtw_check_bcn_info._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.11, ptr @.str.2, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016R8188EU: %s authentication is not match , return FAIL\0A\00", [39 x i8] zeroinitializer }, align 32
@rtw_check_bcn_info._entry_ptr.47 = internal global ptr @rtw_check_bcn_info._entry.45, section ".printk_index", align 4
@RTW_WPA_OUI = external dso_local global [0 x i8], align 1
@WPA_TKIP_CIPHER = external dso_local global [4 x i8], align 1
@RSN_TKIP_CIPHER = external dso_local global [4 x i8], align 1
@rtw_basic_rate_mix = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\82\84\8B\96\8C\98\B0", [25 x i8] zeroinitializer }, align 32
@rtw_basic_rate_ofdm = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\8C\98\B0", [29 x i8] zeroinitializer }, align 32
@ARTHEROS_OUI1 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\03\7F", [29 x i8] zeroinitializer }, align 32
@ARTHEROS_OUI2 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\13t", [29 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 1260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016R8188EU: link to Artheros AP\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"check_assoc_AP\00", [17 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry_ptr = internal global ptr @check_assoc_AP._entry, section ".printk_index", align 4
@BROADCOM_OUI1 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\10\18", [29 x i8] zeroinitializer }, align 32
@BROADCOM_OUI2 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\0A\F7", [29 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016R8188EU: link to Broadcom AP\0A\00", [32 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry_ptr.52 = internal global ptr @check_assoc_AP._entry.50, section ".printk_index", align 4
@MARVELL_OUI = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00PC", [29 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.2, i32 1267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016R8188EU: link to Marvell AP\0A\00", [33 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry_ptr.55 = internal global ptr @check_assoc_AP._entry.53, section ".printk_index", align 4
@RALINK_OUI = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\0CC", [29 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.2, i32 1273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016R8188EU: link to Ralink AP\0A\00", [34 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry_ptr.58 = internal global ptr @check_assoc_AP._entry.56, section ".printk_index", align 4
@CISCO_OUI = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00@\96", [29 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.49, ptr @.str.2, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016R8188EU: link to Cisco AP\0A\00", [35 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry_ptr.61 = internal global ptr @check_assoc_AP._entry.59, section ".printk_index", align 4
@REALTEK_OUI = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\E0L", [29 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.49, ptr @.str.2, i32 1280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016R8188EU: link to Realtek 96B\0A\00", [32 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry_ptr.64 = internal global ptr @check_assoc_AP._entry.62, section ".printk_index", align 4
@AIRGOCAP_OUI = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\0A\F5", [29 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.49, ptr @.str.2, i32 1283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016R8188EU: link to Airgo Cap\0A\00", [34 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry_ptr.67 = internal global ptr @check_assoc_AP._entry.65, section ".printk_index", align 4
@EPIGRAM_OUI = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\90L", [29 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.49, ptr @.str.2, i32 1288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016R8188EU: link to Tenda W311R AP\0A\00", [61 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry_ptr.70 = internal global ptr @check_assoc_AP._entry.68, section ".printk_index", align 4
@check_assoc_AP._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.49, ptr @.str.2, i32 1291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016R8188EU: Capture EPIGRAM_OUI\0A\00", [32 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry_ptr.73 = internal global ptr @check_assoc_AP._entry.71, section ".printk_index", align 4
@check_assoc_AP._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.2, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry_ptr.75 = internal global ptr @check_assoc_AP._entry.74, section ".printk_index", align 4
@check_assoc_AP._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.49, ptr @.str.2, i32 1308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry_ptr.77 = internal global ptr @check_assoc_AP._entry.76, section ".printk_index", align 4
@check_assoc_AP._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.49, ptr @.str.2, i32 1311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016R8188EU: link to new AP\0A\00", [37 x i8] zeroinitializer }, align 32
@check_assoc_AP._entry_ptr.80 = internal global ptr @check_assoc_AP._entry.78, section ".printk_index", align 4
@pbuddy_padapter = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rtw_handle_dualmac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 1521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016R8188EU: %s(): pbuddy_padapter == NULL, Set pbuddy_padapter\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw_handle_dualmac\00", [45 x i8] zeroinitializer }, align 32
@rtw_handle_dualmac._entry_ptr = internal global ptr @rtw_handle_dualmac._entry, section ".printk_index", align 4
@rtw_handle_dualmac._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.2, i32 1527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016R8188EU: %s(): pbuddy_padapter exist, Exchange Information\0A\00", [34 x i8] zeroinitializer }, align 32
@rtw_handle_dualmac._entry_ptr.85 = internal global ptr @rtw_handle_dualmac._entry.83, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.networktype_to_raid = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\06\05\04\04\04\04\04\03\04\01\00", [21 x i8] zeroinitializer }, align 32
@switch.table.get_rate_set = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\02\04\0B\16\0C\12\18$0H`l", [20 x i8] zeroinitializer }, align 32
@switch.table.get_rate_set.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\02\04\0B\16\0C\12\18$0H`l", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 7, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 7, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.88 = internal global [6 x i64] [i64 4, i64 7, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 7, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 8, i64 254, i64 255]
@__sancov_gen_cov_switch_values.91 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.92 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.93 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.94 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.95 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.96 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.97 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.98 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.99 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.100 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.101 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.102 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.103 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.104 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.105 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.106 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 4, i64 11, i64 12, i64 22, i64 24, i64 48]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.109 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 8, i64 42, i64 61]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 221]
@__sancov_gen_cov_switch_values.115 = internal global [13 x i64] [i64 11, i64 32, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 4, i64 8]
@__sancov_gen_cov_switch_values.117 = internal global [6 x i64] [i64 4, i64 7, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.118 = internal global [6 x i64] [i64 4, i64 7, i64 2, i64 4, i64 11, i64 22]
@___asan_gen_.119 = private unnamed_addr constant [15 x i8] c"REALTEK_96B_IE\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 23, i32 15 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 339, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 576, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 613, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 761, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 861, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 866, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 905, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 907, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 909, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 926, i32 6 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 931, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 939, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 956, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 970, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 986, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1002, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1009, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant [19 x i8] c"rtw_basic_rate_mix\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 41, i32 11 }
@___asan_gen_.242 = private unnamed_addr constant [20 x i8] c"rtw_basic_rate_ofdm\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 36, i32 11 }
@___asan_gen_.245 = private unnamed_addr constant [14 x i8] c"ARTHEROS_OUI1\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 10, i32 22 }
@___asan_gen_.248 = private unnamed_addr constant [14 x i8] c"ARTHEROS_OUI2\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 11, i32 22 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1260, i32 5 }
@___asan_gen_.260 = private unnamed_addr constant [14 x i8] c"BROADCOM_OUI1\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 13, i32 22 }
@___asan_gen_.263 = private unnamed_addr constant [14 x i8] c"BROADCOM_OUI2\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 14, i32 22 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1264, i32 5 }
@___asan_gen_.272 = private unnamed_addr constant [12 x i8] c"MARVELL_OUI\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 17, i32 22 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1267, i32 5 }
@___asan_gen_.281 = private unnamed_addr constant [11 x i8] c"RALINK_OUI\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 18, i32 22 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1273, i32 6 }
@___asan_gen_.290 = private unnamed_addr constant [10 x i8] c"CISCO_OUI\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 16, i32 22 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1277, i32 5 }
@___asan_gen_.299 = private unnamed_addr constant [12 x i8] c"REALTEK_OUI\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 19, i32 22 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1280, i32 5 }
@___asan_gen_.308 = private unnamed_addr constant [13 x i8] c"AIRGOCAP_OUI\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 20, i32 22 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1283, i32 5 }
@___asan_gen_.317 = private unnamed_addr constant [12 x i8] c"EPIGRAM_OUI\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 21, i32 22 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1288, i32 6 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1291, i32 6 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1305, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1308, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1311, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant [16 x i8] c"pbuddy_padapter\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1512, i32 24 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1521, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.360 = private constant [48 x i8] c"../drivers/staging/r8188eu/core/rtw_wlan_util.c\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1527, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant [33 x i8] c"switch.table.networktype_to_raid\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [26 x i8] c"switch.table.get_rate_set\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [29 x i8] c"switch.table.get_rate_set.86\00", align 1
@llvm.compiler.used = appending global [115 x ptr] [ptr @HTOnAssocRsp._entry, ptr @HTOnAssocRsp._entry_ptr, ptr @WMMOnAssocRsp._entry, ptr @WMMOnAssocRsp._entry.5, ptr @WMMOnAssocRsp._entry_ptr, ptr @WMMOnAssocRsp._entry_ptr.7, ptr @check_assoc_AP._entry, ptr @check_assoc_AP._entry.50, ptr @check_assoc_AP._entry.53, ptr @check_assoc_AP._entry.56, ptr @check_assoc_AP._entry.59, ptr @check_assoc_AP._entry.62, ptr @check_assoc_AP._entry.65, ptr @check_assoc_AP._entry.68, ptr @check_assoc_AP._entry.71, ptr @check_assoc_AP._entry.74, ptr @check_assoc_AP._entry.76, ptr @check_assoc_AP._entry.78, ptr @check_assoc_AP._entry_ptr, ptr @check_assoc_AP._entry_ptr.52, ptr @check_assoc_AP._entry_ptr.55, ptr @check_assoc_AP._entry_ptr.58, ptr @check_assoc_AP._entry_ptr.61, ptr @check_assoc_AP._entry_ptr.64, ptr @check_assoc_AP._entry_ptr.67, ptr @check_assoc_AP._entry_ptr.70, ptr @check_assoc_AP._entry_ptr.73, ptr @check_assoc_AP._entry_ptr.75, ptr @check_assoc_AP._entry_ptr.77, ptr @check_assoc_AP._entry_ptr.80, ptr @rtw_check_bcn_info._entry, ptr @rtw_check_bcn_info._entry.12, ptr @rtw_check_bcn_info._entry.15, ptr @rtw_check_bcn_info._entry.18, ptr @rtw_check_bcn_info._entry.21, ptr @rtw_check_bcn_info._entry.24, ptr @rtw_check_bcn_info._entry.27, ptr @rtw_check_bcn_info._entry.30, ptr @rtw_check_bcn_info._entry.33, ptr @rtw_check_bcn_info._entry.36, ptr @rtw_check_bcn_info._entry.39, ptr @rtw_check_bcn_info._entry.42, ptr @rtw_check_bcn_info._entry.45, ptr @rtw_check_bcn_info._entry_ptr, ptr @rtw_check_bcn_info._entry_ptr.14, ptr @rtw_check_bcn_info._entry_ptr.17, ptr @rtw_check_bcn_info._entry_ptr.20, ptr @rtw_check_bcn_info._entry_ptr.23, ptr @rtw_check_bcn_info._entry_ptr.26, ptr @rtw_check_bcn_info._entry_ptr.29, ptr @rtw_check_bcn_info._entry_ptr.32, ptr @rtw_check_bcn_info._entry_ptr.35, ptr @rtw_check_bcn_info._entry_ptr.38, ptr @rtw_check_bcn_info._entry_ptr.41, ptr @rtw_check_bcn_info._entry_ptr.44, ptr @rtw_check_bcn_info._entry_ptr.47, ptr @rtw_handle_dualmac._entry, ptr @rtw_handle_dualmac._entry.83, ptr @rtw_handle_dualmac._entry_ptr, ptr @rtw_handle_dualmac._entry_ptr.85, ptr @set_channel_bwmode._entry, ptr @set_channel_bwmode._entry_ptr, ptr @REALTEK_96B_IE, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @rtw_basic_rate_mix, ptr @rtw_basic_rate_ofdm, ptr @ARTHEROS_OUI1, ptr @ARTHEROS_OUI2, ptr @.str.48, ptr @.str.49, ptr @BROADCOM_OUI1, ptr @BROADCOM_OUI2, ptr @.str.51, ptr @MARVELL_OUI, ptr @.str.54, ptr @RALINK_OUI, ptr @.str.57, ptr @CISCO_OUI, ptr @.str.60, ptr @REALTEK_OUI, ptr @.str.63, ptr @AIRGOCAP_OUI, ptr @.str.66, ptr @EPIGRAM_OUI, ptr @.str.69, ptr @.str.72, ptr @.str.79, ptr @pbuddy_padapter, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @switch.table.networktype_to_raid, ptr @switch.table.get_rate_set, ptr @switch.table.get_rate_set.86], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REALTEK_96B_IE to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_channel_bwmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WMMOnAssocRsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WMMOnAssocRsp._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTOnAssocRsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_check_bcn_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_check_bcn_info._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_check_bcn_info._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_check_bcn_info._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_check_bcn_info._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_check_bcn_info._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_check_bcn_info._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_check_bcn_info._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_check_bcn_info._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_check_bcn_info._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_check_bcn_info._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_check_bcn_info._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_check_bcn_info._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_basic_rate_mix to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_basic_rate_ofdm to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ARTHEROS_OUI1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ARTHEROS_OUI2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_assoc_AP._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BROADCOM_OUI1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BROADCOM_OUI2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_assoc_AP._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MARVELL_OUI to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_assoc_AP._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RALINK_OUI to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_assoc_AP._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CISCO_OUI to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_assoc_AP._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REALTEK_OUI to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_assoc_AP._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AIRGOCAP_OUI to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_assoc_AP._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @EPIGRAM_OUI to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_assoc_AP._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_assoc_AP._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_assoc_AP._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_assoc_AP._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_assoc_AP._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbuddy_padapter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_handle_dualmac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_handle_dualmac._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.networktype_to_raid to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.get_rate_set to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.get_rate_set.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cckrates_included(ptr nocapture noundef readonly %rate, i32 noundef %ratelen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ratelen)
  %cmp28 = icmp sgt i32 %ratelen, 0
  br i1 %cmp28, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %rate, i32 %i.029
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %trunc = trunc i8 %1 to i7
  %2 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i7 %trunc, label %for.inc [
    i7 2, label %for.body.cleanup_crit_edge
    i7 4, label %for.body.cleanup_crit_edge37
    i7 11, label %for.body.cleanup_crit_edge38
    i7 22, label %for.body.cleanup_crit_edge39
  ]

for.body.cleanup_crit_edge39:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.cleanup_crit_edge38:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.cleanup_crit_edge37:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %ratelen
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.body.cleanup_crit_edge37, %for.body.cleanup_crit_edge38, %for.body.cleanup_crit_edge39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge37 ], [ 1, %for.body.cleanup_crit_edge38 ], [ 1, %for.body.cleanup_crit_edge39 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cckratesonly_included(ptr nocapture noundef readonly %rate, i32 noundef %ratelen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ratelen)
  %cmp28 = icmp sgt i32 %ratelen, 0
  br i1 %cmp28, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %rate, i32 %i.029
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %trunc = trunc i8 %1 to i7
  %2 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.87)
  switch i7 %trunc, label %for.body.cleanup_crit_edge [
    i7 2, label %for.body.for.inc_crit_edge
    i7 4, label %for.body.for.inc_crit_edge31
    i7 11, label %for.body.for.inc_crit_edge32
    i7 22, label %for.body.for.inc_crit_edge33
  ]

for.body.for.inc_crit_edge33:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

for.body.for.inc_crit_edge32:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

for.body.for.inc_crit_edge31:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge31, %for.body.for.inc_crit_edge32, %for.body.for.inc_crit_edge33
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %ratelen
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @networktype_to_raid(i8 noundef zeroext %network_type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i8 %network_type, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %switch.tableidx)
  %0 = icmp ult i8 %switch.tableidx, 11
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %1 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [11 x i8], ptr @switch.table.networktype_to_raid, i32 0, i32 %1
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %2)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %raid.0 = phi i8 [ %switch.load, %switch.lookup ], [ 4, %entry.sw.epilog_crit_edge ]
  ret i8 %raid.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @judge_network_type(ptr nocapture noundef readonly %padapter, ptr nocapture noundef readonly %rate, i32 noundef %ratelen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 4
  %0 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_channel, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %1)
  %cmp = icmp ugt i8 %1, 14
  br i1 %cmp, label %entry.if.end23_crit_edge, label %if.else

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end23

if.else:                                          ; preds = %entry
  %HT_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 20
  %2 = ptrtoint ptr %HT_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %HT_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %spec.select = select i1 %tobool.not, i8 0, i8 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ratelen)
  %cmp28.i = icmp sgt i32 %ratelen, 0
  br i1 %cmp28.i, label %if.else.for.body.i_crit_edge, label %if.else.if.then6_crit_edge

if.else.if.then6_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then6

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %i.029.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %rate, i32 %i.029.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %trunc.i = trunc i8 %5 to i7
  %6 = zext i7 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.88)
  switch i7 %trunc.i, label %for.body.i.for.body.i35_crit_edge [
    i7 2, label %for.body.i.for.inc.i_crit_edge
    i7 4, label %for.body.i.for.inc.i_crit_edge44
    i7 11, label %for.body.i.for.inc.i_crit_edge45
    i7 22, label %for.body.i.for.inc.i_crit_edge46
  ]

for.body.i.for.inc.i_crit_edge46:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge45:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge44:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

for.body.i.for.body.i35_crit_edge:                ; preds = %for.body.i
  br label %for.body.i35

for.inc.i:                                        ; preds = %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge44, %for.body.i.for.inc.i_crit_edge45, %for.body.i.for.inc.i_crit_edge46
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %ratelen
  br i1 %exitcond.not.i, label %for.inc.i.if.then6_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.inc.i.if.then6_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then6

if.then6:                                         ; preds = %for.inc.i.if.then6_crit_edge, %if.else.if.then6_crit_edge
  %conv9 = or i8 %spec.select, 1
  br label %if.end23

for.body.i35:                                     ; preds = %for.inc.i38.for.body.i35_crit_edge, %for.body.i.for.body.i35_crit_edge
  %i.029.i32 = phi i32 [ %inc.i36, %for.inc.i38.for.body.i35_crit_edge ], [ 0, %for.body.i.for.body.i35_crit_edge ]
  %arrayidx.i33 = getelementptr i8, ptr %rate, i32 %i.029.i32
  %7 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i33, align 1
  %trunc.i34 = trunc i8 %8 to i7
  %9 = zext i7 %trunc.i34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.89)
  switch i7 %trunc.i34, label %for.inc.i38 [
    i7 2, label %for.body.i35.if.then13_crit_edge
    i7 4, label %for.body.i35.if.then13_crit_edge47
    i7 11, label %for.body.i35.if.then13_crit_edge48
    i7 22, label %for.body.i35.if.then13_crit_edge49
  ]

for.body.i35.if.then13_crit_edge49:               ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then13

for.body.i35.if.then13_crit_edge48:               ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then13

for.body.i35.if.then13_crit_edge47:               ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then13

for.body.i35.if.then13_crit_edge:                 ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then13

for.inc.i38:                                      ; preds = %for.body.i35
  %inc.i36 = add nuw nsw i32 %i.029.i32, 1
  %exitcond.not.i37 = icmp eq i32 %inc.i36, %ratelen
  br i1 %exitcond.not.i37, label %if.else17, label %for.inc.i38.for.body.i35_crit_edge

for.inc.i38.for.body.i35_crit_edge:               ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i35

if.then13:                                        ; preds = %for.body.i35.if.then13_crit_edge, %for.body.i35.if.then13_crit_edge47, %for.body.i35.if.then13_crit_edge48, %for.body.i35.if.then13_crit_edge49
  %conv16 = or i8 %spec.select, 3
  br label %if.end23

if.else17:                                        ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #22
  %conv20 = or i8 %spec.select, 2
  br label %if.end23

if.end23:                                         ; preds = %if.else17, %if.then13, %if.then6, %entry.if.end23_crit_edge
  %network_type.1 = phi i8 [ %conv9, %if.then6 ], [ %conv16, %if.then13 ], [ %conv20, %if.else17 ], [ 0, %entry.if.end23_crit_edge ]
  ret i8 %network_type.1
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @get_rate_set(ptr nocapture noundef readonly %padapter, ptr nocapture noundef writeonly %pbssrate, ptr nocapture noundef writeonly %bssrate_len) local_unnamed_addr #3 align 64 {
entry:
  %supportedrates = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %supportedrates) #20
  %0 = call ptr @memset(ptr %supportedrates, i32 0, i32 13)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %len.023.i = phi i32 [ 0, %entry ], [ %len.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.022.i = phi i32 [ 0, %entry ], [ %inc6.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 15, i32 %i.022.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %2, label %sw.default.i [
    i8 -1, label %for.body.i.ratetbl2rateset.exit_crit_edge
    i8 -2, label %for.body.i.for.inc.i_crit_edge
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

for.body.i.ratetbl2rateset.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ratetbl2rateset.exit

sw.default.i:                                     ; preds = %for.body.i
  %4 = and i8 %2, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %5 = icmp ult i8 %4, 12
  br i1 %5, label %switch.lookup, label %sw.default.i.ratetbl_val_2wifirate.exit.i_crit_edge

sw.default.i.ratetbl_val_2wifirate.exit.i_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ratetbl_val_2wifirate.exit.i

switch.lookup:                                    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #22
  %and.i.i = zext i8 %4 to i32
  %switch.gep = getelementptr inbounds [12 x i8], ptr @switch.table.get_rate_set, i32 0, i32 %and.i.i
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %6)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %ratetbl_val_2wifirate.exit.i

ratetbl_val_2wifirate.exit.i:                     ; preds = %switch.lookup, %sw.default.i.ratetbl_val_2wifirate.exit.i_crit_edge
  %val.0.i.i = phi i8 [ 0, %sw.default.i.ratetbl_val_2wifirate.exit.i_crit_edge ], [ %switch.load, %switch.lookup ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %ratetbl_val_2wifirate.exit.i
  %i.018.i.i = phi i32 [ 0, %ratetbl_val_2wifirate.exit.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 14, i32 %i.018.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %8)
  %switch.i.i = icmp ugt i8 %8, -3
  br i1 %switch.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %9 = and i8 %8, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %9)
  %10 = icmp ult i8 %9, 12
  br i1 %10, label %switch.lookup4, label %if.then.i.i.ratetbl_val_2wifirate.exit.i.i_crit_edge

if.then.i.i.ratetbl_val_2wifirate.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ratetbl_val_2wifirate.exit.i.i

switch.lookup4:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %and.i.i.i = zext i8 %9 to i32
  %switch.gep5 = getelementptr inbounds [12 x i8], ptr @switch.table.get_rate_set.86, i32 0, i32 %and.i.i.i
  %11 = ptrtoint ptr %switch.gep5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %switch.load6 = load i8, ptr %switch.gep5, align 1
  br label %ratetbl_val_2wifirate.exit.i.i

ratetbl_val_2wifirate.exit.i.i:                   ; preds = %switch.lookup4, %if.then.i.i.ratetbl_val_2wifirate.exit.i.i_crit_edge
  %val.0.i.i.i = phi i8 [ 0, %if.then.i.i.ratetbl_val_2wifirate.exit.i.i_crit_edge ], [ %switch.load6, %switch.lookup4 ]
  call void @__sanitizer_cov_trace_cmp1(i8 %val.0.i.i.i, i8 %val.0.i.i)
  %cmp8.i.i = icmp eq i8 %val.0.i.i.i, %val.0.i.i
  br i1 %cmp8.i.i, label %is_basicrate.exit.i, label %ratetbl_val_2wifirate.exit.i.i.for.inc.i.i_crit_edge

ratetbl_val_2wifirate.exit.i.i.for.inc.i.i_crit_edge: ; preds = %ratetbl_val_2wifirate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %ratetbl_val_2wifirate.exit.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 13
  br i1 %exitcond.not.i.i, label %for.inc.i.i..loopexit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

for.inc.i.i..loopexit.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %.loopexit.i

is_basicrate.exit.i:                              ; preds = %ratetbl_val_2wifirate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %12 = or i8 %val.0.i.i, -128
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %is_basicrate.exit.i, %for.inc.i.i..loopexit.i_crit_edge
  %13 = phi i8 [ %12, %is_basicrate.exit.i ], [ %val.0.i.i, %for.inc.i.i..loopexit.i_crit_edge ]
  %arrayidx5.i = getelementptr i8, ptr %supportedrates, i32 %len.023.i
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx5.i, align 1
  %inc.i = add i32 %len.023.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %.loopexit.i, %for.body.i.for.inc.i_crit_edge
  %len.1.i = phi i32 [ %inc.i, %.loopexit.i ], [ %len.023.i, %for.body.i.for.inc.i_crit_edge ]
  %inc6.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc6.i, 13
  br i1 %exitcond.not.i, label %for.inc.i.ratetbl2rateset.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.inc.i.ratetbl2rateset.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ratetbl2rateset.exit

ratetbl2rateset.exit:                             ; preds = %for.inc.i.ratetbl2rateset.exit_crit_edge, %for.body.i.ratetbl2rateset.exit_crit_edge
  %len.0.lcssa.i = phi i32 [ %len.1.i, %for.inc.i.ratetbl2rateset.exit_crit_edge ], [ %len.023.i, %for.body.i.ratetbl2rateset.exit_crit_edge ]
  %15 = ptrtoint ptr %bssrate_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %len.0.lcssa.i, ptr %bssrate_len, align 4
  %16 = call ptr @memcpy(ptr %pbssrate, ptr %supportedrates, i32 %len.0.lcssa.i)
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %supportedrates) #20
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @UpdateBrateTbl(ptr nocapture noundef readnone %Adapter, ptr nocapture noundef %mbrate) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mbrate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mbrate, align 1
  %2 = and i8 %1, 127
  %conv4 = zext i8 %2 to i32
  %3 = zext i32 %conv4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %conv4, label %entry.for.inc_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge14
    i32 11, label %entry.sw.bb_crit_edge15
    i32 22, label %entry.sw.bb_crit_edge16
    i32 12, label %entry.sw.bb_crit_edge17
    i32 24, label %entry.sw.bb_crit_edge18
    i32 48, label %entry.sw.bb_crit_edge19
  ]

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

entry.sw.bb_crit_edge18:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge14, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16, %entry.sw.bb_crit_edge17, %entry.sw.bb_crit_edge18, %entry.sw.bb_crit_edge19
  %4 = or i8 %1, -128
  %5 = ptrtoint ptr %mbrate to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %mbrate, align 1
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr i8, ptr %mbrate, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.1, align 1
  %8 = and i8 %7, 127
  %conv4.1 = zext i8 %8 to i32
  %9 = zext i32 %conv4.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %conv4.1, label %for.inc.for.inc.1_crit_edge [
    i32 2, label %for.inc.sw.bb.1_crit_edge
    i32 4, label %for.inc.sw.bb.1_crit_edge20
    i32 11, label %for.inc.sw.bb.1_crit_edge21
    i32 22, label %for.inc.sw.bb.1_crit_edge22
    i32 12, label %for.inc.sw.bb.1_crit_edge23
    i32 24, label %for.inc.sw.bb.1_crit_edge24
    i32 48, label %for.inc.sw.bb.1_crit_edge25
  ]

for.inc.sw.bb.1_crit_edge25:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge24:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge23:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge22:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge21:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge20:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.1

sw.bb.1:                                          ; preds = %for.inc.sw.bb.1_crit_edge, %for.inc.sw.bb.1_crit_edge20, %for.inc.sw.bb.1_crit_edge21, %for.inc.sw.bb.1_crit_edge22, %for.inc.sw.bb.1_crit_edge23, %for.inc.sw.bb.1_crit_edge24, %for.inc.sw.bb.1_crit_edge25
  %10 = or i8 %7, -128
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %sw.bb.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr i8, ptr %mbrate, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2, align 1
  %14 = and i8 %13, 127
  %conv4.2 = zext i8 %14 to i32
  %15 = zext i32 %conv4.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %conv4.2, label %for.inc.1.for.inc.2_crit_edge [
    i32 2, label %for.inc.1.sw.bb.2_crit_edge
    i32 4, label %for.inc.1.sw.bb.2_crit_edge26
    i32 11, label %for.inc.1.sw.bb.2_crit_edge27
    i32 22, label %for.inc.1.sw.bb.2_crit_edge28
    i32 12, label %for.inc.1.sw.bb.2_crit_edge29
    i32 24, label %for.inc.1.sw.bb.2_crit_edge30
    i32 48, label %for.inc.1.sw.bb.2_crit_edge31
  ]

for.inc.1.sw.bb.2_crit_edge31:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge30:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge29:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge28:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge27:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge26:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.2

sw.bb.2:                                          ; preds = %for.inc.1.sw.bb.2_crit_edge, %for.inc.1.sw.bb.2_crit_edge26, %for.inc.1.sw.bb.2_crit_edge27, %for.inc.1.sw.bb.2_crit_edge28, %for.inc.1.sw.bb.2_crit_edge29, %for.inc.1.sw.bb.2_crit_edge30, %for.inc.1.sw.bb.2_crit_edge31
  %16 = or i8 %13, -128
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %sw.bb.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr i8, ptr %mbrate, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.3, align 1
  %20 = and i8 %19, 127
  %conv4.3 = zext i8 %20 to i32
  %21 = zext i32 %conv4.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %conv4.3, label %for.inc.2.for.inc.3_crit_edge [
    i32 2, label %for.inc.2.sw.bb.3_crit_edge
    i32 4, label %for.inc.2.sw.bb.3_crit_edge32
    i32 11, label %for.inc.2.sw.bb.3_crit_edge33
    i32 22, label %for.inc.2.sw.bb.3_crit_edge34
    i32 12, label %for.inc.2.sw.bb.3_crit_edge35
    i32 24, label %for.inc.2.sw.bb.3_crit_edge36
    i32 48, label %for.inc.2.sw.bb.3_crit_edge37
  ]

for.inc.2.sw.bb.3_crit_edge37:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge36:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge35:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge34:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge33:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge32:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.3

sw.bb.3:                                          ; preds = %for.inc.2.sw.bb.3_crit_edge, %for.inc.2.sw.bb.3_crit_edge32, %for.inc.2.sw.bb.3_crit_edge33, %for.inc.2.sw.bb.3_crit_edge34, %for.inc.2.sw.bb.3_crit_edge35, %for.inc.2.sw.bb.3_crit_edge36, %for.inc.2.sw.bb.3_crit_edge37
  %22 = or i8 %19, -128
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %sw.bb.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr i8, ptr %mbrate, i32 4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.4, align 1
  %26 = and i8 %25, 127
  %conv4.4 = zext i8 %26 to i32
  %27 = zext i32 %conv4.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %conv4.4, label %for.inc.3.for.inc.4_crit_edge [
    i32 2, label %for.inc.3.sw.bb.4_crit_edge
    i32 4, label %for.inc.3.sw.bb.4_crit_edge38
    i32 11, label %for.inc.3.sw.bb.4_crit_edge39
    i32 22, label %for.inc.3.sw.bb.4_crit_edge40
    i32 12, label %for.inc.3.sw.bb.4_crit_edge41
    i32 24, label %for.inc.3.sw.bb.4_crit_edge42
    i32 48, label %for.inc.3.sw.bb.4_crit_edge43
  ]

for.inc.3.sw.bb.4_crit_edge43:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.4

for.inc.3.sw.bb.4_crit_edge42:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.4

for.inc.3.sw.bb.4_crit_edge41:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.4

for.inc.3.sw.bb.4_crit_edge40:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.4

for.inc.3.sw.bb.4_crit_edge39:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.4

for.inc.3.sw.bb.4_crit_edge38:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.4

for.inc.3.sw.bb.4_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.4

sw.bb.4:                                          ; preds = %for.inc.3.sw.bb.4_crit_edge, %for.inc.3.sw.bb.4_crit_edge38, %for.inc.3.sw.bb.4_crit_edge39, %for.inc.3.sw.bb.4_crit_edge40, %for.inc.3.sw.bb.4_crit_edge41, %for.inc.3.sw.bb.4_crit_edge42, %for.inc.3.sw.bb.4_crit_edge43
  %28 = or i8 %25, -128
  %29 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx.4, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %sw.bb.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr i8, ptr %mbrate, i32 5
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.5, align 1
  %32 = and i8 %31, 127
  %conv4.5 = zext i8 %32 to i32
  %33 = zext i32 %conv4.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %conv4.5, label %for.inc.4.for.inc.5_crit_edge [
    i32 2, label %for.inc.4.sw.bb.5_crit_edge
    i32 4, label %for.inc.4.sw.bb.5_crit_edge44
    i32 11, label %for.inc.4.sw.bb.5_crit_edge45
    i32 22, label %for.inc.4.sw.bb.5_crit_edge46
    i32 12, label %for.inc.4.sw.bb.5_crit_edge47
    i32 24, label %for.inc.4.sw.bb.5_crit_edge48
    i32 48, label %for.inc.4.sw.bb.5_crit_edge49
  ]

for.inc.4.sw.bb.5_crit_edge49:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.5

for.inc.4.sw.bb.5_crit_edge48:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.5

for.inc.4.sw.bb.5_crit_edge47:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.5

for.inc.4.sw.bb.5_crit_edge46:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.5

for.inc.4.sw.bb.5_crit_edge45:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.5

for.inc.4.sw.bb.5_crit_edge44:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.5

for.inc.4.sw.bb.5_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.5

sw.bb.5:                                          ; preds = %for.inc.4.sw.bb.5_crit_edge, %for.inc.4.sw.bb.5_crit_edge44, %for.inc.4.sw.bb.5_crit_edge45, %for.inc.4.sw.bb.5_crit_edge46, %for.inc.4.sw.bb.5_crit_edge47, %for.inc.4.sw.bb.5_crit_edge48, %for.inc.4.sw.bb.5_crit_edge49
  %34 = or i8 %31, -128
  %35 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx.5, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %sw.bb.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr i8, ptr %mbrate, i32 6
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.6, align 1
  %38 = and i8 %37, 127
  %conv4.6 = zext i8 %38 to i32
  %39 = zext i32 %conv4.6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %conv4.6, label %for.inc.5.for.inc.6_crit_edge [
    i32 2, label %for.inc.5.sw.bb.6_crit_edge
    i32 4, label %for.inc.5.sw.bb.6_crit_edge50
    i32 11, label %for.inc.5.sw.bb.6_crit_edge51
    i32 22, label %for.inc.5.sw.bb.6_crit_edge52
    i32 12, label %for.inc.5.sw.bb.6_crit_edge53
    i32 24, label %for.inc.5.sw.bb.6_crit_edge54
    i32 48, label %for.inc.5.sw.bb.6_crit_edge55
  ]

for.inc.5.sw.bb.6_crit_edge55:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.6

for.inc.5.sw.bb.6_crit_edge54:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.6

for.inc.5.sw.bb.6_crit_edge53:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.6

for.inc.5.sw.bb.6_crit_edge52:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.6

for.inc.5.sw.bb.6_crit_edge51:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.6

for.inc.5.sw.bb.6_crit_edge50:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.6

for.inc.5.sw.bb.6_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.6

sw.bb.6:                                          ; preds = %for.inc.5.sw.bb.6_crit_edge, %for.inc.5.sw.bb.6_crit_edge50, %for.inc.5.sw.bb.6_crit_edge51, %for.inc.5.sw.bb.6_crit_edge52, %for.inc.5.sw.bb.6_crit_edge53, %for.inc.5.sw.bb.6_crit_edge54, %for.inc.5.sw.bb.6_crit_edge55
  %40 = or i8 %37, -128
  %41 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx.6, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %sw.bb.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr i8, ptr %mbrate, i32 7
  %42 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.7, align 1
  %44 = and i8 %43, 127
  %conv4.7 = zext i8 %44 to i32
  %45 = zext i32 %conv4.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %conv4.7, label %for.inc.6.for.inc.7_crit_edge [
    i32 2, label %for.inc.6.sw.bb.7_crit_edge
    i32 4, label %for.inc.6.sw.bb.7_crit_edge56
    i32 11, label %for.inc.6.sw.bb.7_crit_edge57
    i32 22, label %for.inc.6.sw.bb.7_crit_edge58
    i32 12, label %for.inc.6.sw.bb.7_crit_edge59
    i32 24, label %for.inc.6.sw.bb.7_crit_edge60
    i32 48, label %for.inc.6.sw.bb.7_crit_edge61
  ]

for.inc.6.sw.bb.7_crit_edge61:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.7

for.inc.6.sw.bb.7_crit_edge60:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.7

for.inc.6.sw.bb.7_crit_edge59:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.7

for.inc.6.sw.bb.7_crit_edge58:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.7

for.inc.6.sw.bb.7_crit_edge57:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.7

for.inc.6.sw.bb.7_crit_edge56:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.7

for.inc.6.sw.bb.7_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.7

sw.bb.7:                                          ; preds = %for.inc.6.sw.bb.7_crit_edge, %for.inc.6.sw.bb.7_crit_edge56, %for.inc.6.sw.bb.7_crit_edge57, %for.inc.6.sw.bb.7_crit_edge58, %for.inc.6.sw.bb.7_crit_edge59, %for.inc.6.sw.bb.7_crit_edge60, %for.inc.6.sw.bb.7_crit_edge61
  %46 = or i8 %43, -128
  %47 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx.7, align 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %sw.bb.7, %for.inc.6.for.inc.7_crit_edge
  %arrayidx.8 = getelementptr i8, ptr %mbrate, i32 8
  %48 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.8, align 1
  %50 = and i8 %49, 127
  %conv4.8 = zext i8 %50 to i32
  %51 = zext i32 %conv4.8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %conv4.8, label %for.inc.7.for.inc.8_crit_edge [
    i32 2, label %for.inc.7.sw.bb.8_crit_edge
    i32 4, label %for.inc.7.sw.bb.8_crit_edge62
    i32 11, label %for.inc.7.sw.bb.8_crit_edge63
    i32 22, label %for.inc.7.sw.bb.8_crit_edge64
    i32 12, label %for.inc.7.sw.bb.8_crit_edge65
    i32 24, label %for.inc.7.sw.bb.8_crit_edge66
    i32 48, label %for.inc.7.sw.bb.8_crit_edge67
  ]

for.inc.7.sw.bb.8_crit_edge67:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.8

for.inc.7.sw.bb.8_crit_edge66:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.8

for.inc.7.sw.bb.8_crit_edge65:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.8

for.inc.7.sw.bb.8_crit_edge64:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.8

for.inc.7.sw.bb.8_crit_edge63:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.8

for.inc.7.sw.bb.8_crit_edge62:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.8

for.inc.7.sw.bb.8_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.8

sw.bb.8:                                          ; preds = %for.inc.7.sw.bb.8_crit_edge, %for.inc.7.sw.bb.8_crit_edge62, %for.inc.7.sw.bb.8_crit_edge63, %for.inc.7.sw.bb.8_crit_edge64, %for.inc.7.sw.bb.8_crit_edge65, %for.inc.7.sw.bb.8_crit_edge66, %for.inc.7.sw.bb.8_crit_edge67
  %52 = or i8 %49, -128
  %53 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx.8, align 1
  br label %for.inc.8

for.inc.8:                                        ; preds = %sw.bb.8, %for.inc.7.for.inc.8_crit_edge
  %arrayidx.9 = getelementptr i8, ptr %mbrate, i32 9
  %54 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.9, align 1
  %56 = and i8 %55, 127
  %conv4.9 = zext i8 %56 to i32
  %57 = zext i32 %conv4.9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %conv4.9, label %for.inc.8.for.inc.9_crit_edge [
    i32 2, label %for.inc.8.sw.bb.9_crit_edge
    i32 4, label %for.inc.8.sw.bb.9_crit_edge68
    i32 11, label %for.inc.8.sw.bb.9_crit_edge69
    i32 22, label %for.inc.8.sw.bb.9_crit_edge70
    i32 12, label %for.inc.8.sw.bb.9_crit_edge71
    i32 24, label %for.inc.8.sw.bb.9_crit_edge72
    i32 48, label %for.inc.8.sw.bb.9_crit_edge73
  ]

for.inc.8.sw.bb.9_crit_edge73:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.9

for.inc.8.sw.bb.9_crit_edge72:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.9

for.inc.8.sw.bb.9_crit_edge71:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.9

for.inc.8.sw.bb.9_crit_edge70:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.9

for.inc.8.sw.bb.9_crit_edge69:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.9

for.inc.8.sw.bb.9_crit_edge68:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.9

for.inc.8.sw.bb.9_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.9

sw.bb.9:                                          ; preds = %for.inc.8.sw.bb.9_crit_edge, %for.inc.8.sw.bb.9_crit_edge68, %for.inc.8.sw.bb.9_crit_edge69, %for.inc.8.sw.bb.9_crit_edge70, %for.inc.8.sw.bb.9_crit_edge71, %for.inc.8.sw.bb.9_crit_edge72, %for.inc.8.sw.bb.9_crit_edge73
  %58 = or i8 %55, -128
  %59 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx.9, align 1
  br label %for.inc.9

for.inc.9:                                        ; preds = %sw.bb.9, %for.inc.8.for.inc.9_crit_edge
  %arrayidx.10 = getelementptr i8, ptr %mbrate, i32 10
  %60 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.10, align 1
  %62 = and i8 %61, 127
  %conv4.10 = zext i8 %62 to i32
  %63 = zext i32 %conv4.10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %conv4.10, label %for.inc.9.for.inc.10_crit_edge [
    i32 2, label %for.inc.9.sw.bb.10_crit_edge
    i32 4, label %for.inc.9.sw.bb.10_crit_edge74
    i32 11, label %for.inc.9.sw.bb.10_crit_edge75
    i32 22, label %for.inc.9.sw.bb.10_crit_edge76
    i32 12, label %for.inc.9.sw.bb.10_crit_edge77
    i32 24, label %for.inc.9.sw.bb.10_crit_edge78
    i32 48, label %for.inc.9.sw.bb.10_crit_edge79
  ]

for.inc.9.sw.bb.10_crit_edge79:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.10

for.inc.9.sw.bb.10_crit_edge78:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.10

for.inc.9.sw.bb.10_crit_edge77:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.10

for.inc.9.sw.bb.10_crit_edge76:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.10

for.inc.9.sw.bb.10_crit_edge75:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.10

for.inc.9.sw.bb.10_crit_edge74:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.10

for.inc.9.sw.bb.10_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.10

sw.bb.10:                                         ; preds = %for.inc.9.sw.bb.10_crit_edge, %for.inc.9.sw.bb.10_crit_edge74, %for.inc.9.sw.bb.10_crit_edge75, %for.inc.9.sw.bb.10_crit_edge76, %for.inc.9.sw.bb.10_crit_edge77, %for.inc.9.sw.bb.10_crit_edge78, %for.inc.9.sw.bb.10_crit_edge79
  %64 = or i8 %61, -128
  %65 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx.10, align 1
  br label %for.inc.10

for.inc.10:                                       ; preds = %sw.bb.10, %for.inc.9.for.inc.10_crit_edge
  %arrayidx.11 = getelementptr i8, ptr %mbrate, i32 11
  %66 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.11, align 1
  %68 = and i8 %67, 127
  %conv4.11 = zext i8 %68 to i32
  %69 = zext i32 %conv4.11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %conv4.11, label %for.inc.10.for.inc.11_crit_edge [
    i32 2, label %for.inc.10.sw.bb.11_crit_edge
    i32 4, label %for.inc.10.sw.bb.11_crit_edge80
    i32 11, label %for.inc.10.sw.bb.11_crit_edge81
    i32 22, label %for.inc.10.sw.bb.11_crit_edge82
    i32 12, label %for.inc.10.sw.bb.11_crit_edge83
    i32 24, label %for.inc.10.sw.bb.11_crit_edge84
    i32 48, label %for.inc.10.sw.bb.11_crit_edge85
  ]

for.inc.10.sw.bb.11_crit_edge85:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.11

for.inc.10.sw.bb.11_crit_edge84:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.11

for.inc.10.sw.bb.11_crit_edge83:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.11

for.inc.10.sw.bb.11_crit_edge82:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.11

for.inc.10.sw.bb.11_crit_edge81:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.11

for.inc.10.sw.bb.11_crit_edge80:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.11

for.inc.10.sw.bb.11_crit_edge:                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.11

sw.bb.11:                                         ; preds = %for.inc.10.sw.bb.11_crit_edge, %for.inc.10.sw.bb.11_crit_edge80, %for.inc.10.sw.bb.11_crit_edge81, %for.inc.10.sw.bb.11_crit_edge82, %for.inc.10.sw.bb.11_crit_edge83, %for.inc.10.sw.bb.11_crit_edge84, %for.inc.10.sw.bb.11_crit_edge85
  %70 = or i8 %67, -128
  %71 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx.11, align 1
  br label %for.inc.11

for.inc.11:                                       ; preds = %sw.bb.11, %for.inc.10.for.inc.11_crit_edge
  %arrayidx.12 = getelementptr i8, ptr %mbrate, i32 12
  %72 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.12, align 1
  %74 = and i8 %73, 127
  %conv4.12 = zext i8 %74 to i32
  %75 = zext i32 %conv4.12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %conv4.12, label %for.inc.11.for.inc.12_crit_edge [
    i32 2, label %for.inc.11.sw.bb.12_crit_edge
    i32 4, label %for.inc.11.sw.bb.12_crit_edge86
    i32 11, label %for.inc.11.sw.bb.12_crit_edge87
    i32 22, label %for.inc.11.sw.bb.12_crit_edge88
    i32 12, label %for.inc.11.sw.bb.12_crit_edge89
    i32 24, label %for.inc.11.sw.bb.12_crit_edge90
    i32 48, label %for.inc.11.sw.bb.12_crit_edge91
  ]

for.inc.11.sw.bb.12_crit_edge91:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.12

for.inc.11.sw.bb.12_crit_edge90:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.12

for.inc.11.sw.bb.12_crit_edge89:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.12

for.inc.11.sw.bb.12_crit_edge88:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.12

for.inc.11.sw.bb.12_crit_edge87:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.12

for.inc.11.sw.bb.12_crit_edge86:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.12

for.inc.11.sw.bb.12_crit_edge:                    ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.12

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.12

sw.bb.12:                                         ; preds = %for.inc.11.sw.bb.12_crit_edge, %for.inc.11.sw.bb.12_crit_edge86, %for.inc.11.sw.bb.12_crit_edge87, %for.inc.11.sw.bb.12_crit_edge88, %for.inc.11.sw.bb.12_crit_edge89, %for.inc.11.sw.bb.12_crit_edge90, %for.inc.11.sw.bb.12_crit_edge91
  %76 = or i8 %73, -128
  %77 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx.12, align 1
  br label %for.inc.12

for.inc.12:                                       ; preds = %sw.bb.12, %for.inc.11.for.inc.12_crit_edge
  %arrayidx.13 = getelementptr i8, ptr %mbrate, i32 13
  %78 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.13, align 1
  %80 = and i8 %79, 127
  %conv4.13 = zext i8 %80 to i32
  %81 = zext i32 %conv4.13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %conv4.13, label %for.inc.12.for.inc.13_crit_edge [
    i32 2, label %for.inc.12.sw.bb.13_crit_edge
    i32 4, label %for.inc.12.sw.bb.13_crit_edge92
    i32 11, label %for.inc.12.sw.bb.13_crit_edge93
    i32 22, label %for.inc.12.sw.bb.13_crit_edge94
    i32 12, label %for.inc.12.sw.bb.13_crit_edge95
    i32 24, label %for.inc.12.sw.bb.13_crit_edge96
    i32 48, label %for.inc.12.sw.bb.13_crit_edge97
  ]

for.inc.12.sw.bb.13_crit_edge97:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.13

for.inc.12.sw.bb.13_crit_edge96:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.13

for.inc.12.sw.bb.13_crit_edge95:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.13

for.inc.12.sw.bb.13_crit_edge94:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.13

for.inc.12.sw.bb.13_crit_edge93:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.13

for.inc.12.sw.bb.13_crit_edge92:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.13

for.inc.12.sw.bb.13_crit_edge:                    ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.13

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.13

sw.bb.13:                                         ; preds = %for.inc.12.sw.bb.13_crit_edge, %for.inc.12.sw.bb.13_crit_edge92, %for.inc.12.sw.bb.13_crit_edge93, %for.inc.12.sw.bb.13_crit_edge94, %for.inc.12.sw.bb.13_crit_edge95, %for.inc.12.sw.bb.13_crit_edge96, %for.inc.12.sw.bb.13_crit_edge97
  %82 = or i8 %79, -128
  %83 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx.13, align 1
  br label %for.inc.13

for.inc.13:                                       ; preds = %sw.bb.13, %for.inc.12.for.inc.13_crit_edge
  %arrayidx.14 = getelementptr i8, ptr %mbrate, i32 14
  %84 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.14, align 1
  %86 = and i8 %85, 127
  %conv4.14 = zext i8 %86 to i32
  %87 = zext i32 %conv4.14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %conv4.14, label %for.inc.13.for.inc.14_crit_edge [
    i32 2, label %for.inc.13.sw.bb.14_crit_edge
    i32 4, label %for.inc.13.sw.bb.14_crit_edge98
    i32 11, label %for.inc.13.sw.bb.14_crit_edge99
    i32 22, label %for.inc.13.sw.bb.14_crit_edge100
    i32 12, label %for.inc.13.sw.bb.14_crit_edge101
    i32 24, label %for.inc.13.sw.bb.14_crit_edge102
    i32 48, label %for.inc.13.sw.bb.14_crit_edge103
  ]

for.inc.13.sw.bb.14_crit_edge103:                 ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.14

for.inc.13.sw.bb.14_crit_edge102:                 ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.14

for.inc.13.sw.bb.14_crit_edge101:                 ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.14

for.inc.13.sw.bb.14_crit_edge100:                 ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.14

for.inc.13.sw.bb.14_crit_edge99:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.14

for.inc.13.sw.bb.14_crit_edge98:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.14

for.inc.13.sw.bb.14_crit_edge:                    ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.14

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.14

sw.bb.14:                                         ; preds = %for.inc.13.sw.bb.14_crit_edge, %for.inc.13.sw.bb.14_crit_edge98, %for.inc.13.sw.bb.14_crit_edge99, %for.inc.13.sw.bb.14_crit_edge100, %for.inc.13.sw.bb.14_crit_edge101, %for.inc.13.sw.bb.14_crit_edge102, %for.inc.13.sw.bb.14_crit_edge103
  %88 = or i8 %85, -128
  %89 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %arrayidx.14, align 1
  br label %for.inc.14

for.inc.14:                                       ; preds = %sw.bb.14, %for.inc.13.for.inc.14_crit_edge
  %arrayidx.15 = getelementptr i8, ptr %mbrate, i32 15
  %90 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.15, align 1
  %92 = and i8 %91, 127
  %conv4.15 = zext i8 %92 to i32
  %93 = zext i32 %conv4.15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %conv4.15, label %for.inc.14.for.inc.15_crit_edge [
    i32 2, label %for.inc.14.sw.bb.15_crit_edge
    i32 4, label %for.inc.14.sw.bb.15_crit_edge104
    i32 11, label %for.inc.14.sw.bb.15_crit_edge105
    i32 22, label %for.inc.14.sw.bb.15_crit_edge106
    i32 12, label %for.inc.14.sw.bb.15_crit_edge107
    i32 24, label %for.inc.14.sw.bb.15_crit_edge108
    i32 48, label %for.inc.14.sw.bb.15_crit_edge109
  ]

for.inc.14.sw.bb.15_crit_edge109:                 ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.15

for.inc.14.sw.bb.15_crit_edge108:                 ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.15

for.inc.14.sw.bb.15_crit_edge107:                 ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.15

for.inc.14.sw.bb.15_crit_edge106:                 ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.15

for.inc.14.sw.bb.15_crit_edge105:                 ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.15

for.inc.14.sw.bb.15_crit_edge104:                 ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.15

for.inc.14.sw.bb.15_crit_edge:                    ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.15

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.15

sw.bb.15:                                         ; preds = %for.inc.14.sw.bb.15_crit_edge, %for.inc.14.sw.bb.15_crit_edge104, %for.inc.14.sw.bb.15_crit_edge105, %for.inc.14.sw.bb.15_crit_edge106, %for.inc.14.sw.bb.15_crit_edge107, %for.inc.14.sw.bb.15_crit_edge108, %for.inc.14.sw.bb.15_crit_edge109
  %94 = or i8 %91, -128
  %95 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx.15, align 1
  br label %for.inc.15

for.inc.15:                                       ; preds = %sw.bb.15, %for.inc.14.for.inc.15_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @UpdateBrateTblForSoftAP(ptr nocapture noundef %bssrateset, i32 noundef %bssratelen) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bssratelen)
  %cmp13.not = icmp eq i32 %bssratelen, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %conv15 = phi i32 [ %conv, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.014 = phi i8 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %bssrateset, i32 %conv15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, 127
  %conv4 = zext i8 %2 to i32
  %3 = zext i32 %conv4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %conv4, label %for.body.for.inc_crit_edge [
    i32 2, label %for.body.sw.bb_crit_edge
    i32 4, label %for.body.sw.bb_crit_edge16
    i32 11, label %for.body.sw.bb_crit_edge17
    i32 22, label %for.body.sw.bb_crit_edge18
  ]

for.body.sw.bb_crit_edge18:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

for.body.sw.bb_crit_edge17:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

for.body.sw.bb_crit_edge16:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge16, %for.body.sw.bb_crit_edge17, %for.body.sw.bb_crit_edge18
  %4 = or i8 %1, -128
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %for.body.for.inc_crit_edge
  %inc = add i8 %i.014, 1
  %conv = zext i8 %inc to i32
  %cmp = icmp ult i32 %conv, %bssratelen
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Save_DM_Func_Flag(ptr noundef %padapter) local_unnamed_addr #5 align 64 {
entry:
  %saveflag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %saveflag) #20
  %0 = ptrtoint ptr %saveflag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %saveflag, align 1
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 21, ptr noundef nonnull %saveflag) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %saveflag) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @SetHwReg8188EU(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Restore_DM_Func_Flag(ptr noundef %padapter) local_unnamed_addr #5 align 64 {
entry:
  %saveflag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %saveflag) #20
  %0 = ptrtoint ptr %saveflag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %saveflag, align 1
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 21, ptr noundef nonnull %saveflag) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %saveflag) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Switch_DM_Func(ptr noundef %padapter, i32 noundef %mode, i8 noundef zeroext %enable) local_unnamed_addr #5 align 64 {
entry:
  %mode.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mode, ptr %mode.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %. = select i1 %tobool.not, i8 23, i8 22
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext %., ptr noundef nonnull %mode.addr) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Set_MSR(ptr noundef %padapter, i8 noundef zeroext %type) local_unnamed_addr #5 align 64 {
entry:
  %type.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.addr.i)
  %0 = ptrtoint ptr %type.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %type, ptr %type.addr.i, align 1
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 0, ptr noundef nonnull %type.addr.i) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.addr.i)
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtw_get_oper_ch(ptr nocapture noundef readonly %adapter) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %oper_channel = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %oper_channel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %oper_channel, align 2
  ret i8 %1
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rtw_set_oper_ch(ptr nocapture noundef writeonly %adapter, i8 noundef zeroext %ch) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %oper_channel = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %oper_channel to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %ch, ptr %oper_channel, align 2
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rtw_set_oper_bw(ptr nocapture noundef writeonly %adapter, i8 noundef zeroext %bw) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %oper_bwmode = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5, i32 9
  %0 = ptrtoint ptr %oper_bwmode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %bw, ptr %oper_bwmode, align 1
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rtw_set_oper_choffset(ptr nocapture noundef writeonly %adapter, i8 noundef zeroext %offset) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %oper_ch_offset = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5, i32 10
  %0 = ptrtoint ptr %oper_ch_offset to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %offset, ptr %oper_ch_offset, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @SelectChannel(ptr noundef %padapter, i8 noundef zeroext %channel) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %oper_channel.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %oper_channel.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %channel, ptr %oper_channel.i, align 2
  tail call void @PHY_SwChnl8188E(ptr noundef %padapter, i8 noundef zeroext %channel) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_SwChnl8188E(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @SetBWMode(ptr noundef %padapter, i16 noundef zeroext %bwmode, i8 noundef zeroext %channel_offset) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i16 %bwmode to i8
  %oper_bwmode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 9
  %0 = ptrtoint ptr %oper_bwmode.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %oper_bwmode.i, align 1
  %oper_ch_offset.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 10
  %1 = ptrtoint ptr %oper_ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %channel_offset, ptr %oper_ch_offset.i, align 4
  %conv1 = zext i16 %bwmode to i32
  tail call void @PHY_SetBWMode8188E(ptr noundef %padapter, i32 noundef %conv1, i8 noundef zeroext %channel_offset) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_SetBWMode8188E(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_channel_bwmode(ptr noundef %padapter, i8 noundef zeroext %channel, i8 noundef zeroext %channel_offset, i16 noundef zeroext %bwmode) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %bNotifyChannelChange = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 49
  %0 = ptrtoint ptr %bNotifyChannelChange to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bNotifyChannelChange, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp ugt i32 %2, 4
  br i1 %cmp, label %do.end, label %do.body.if.end7_crit_edge

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %conv = zext i8 %channel to i32
  %conv3 = zext i8 %channel_offset to i32
  %conv4 = zext i16 %bwmode to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4) #23
  br label %if.end7

if.end7:                                          ; preds = %do.end, %do.body.if.end7_crit_edge, %entry.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bwmode)
  %cmp9 = icmp eq i16 %bwmode, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %channel_offset)
  %cmp12 = icmp eq i8 %channel_offset, 0
  %or.cond = or i1 %cmp12, %cmp9
  br i1 %or.cond, label %if.end7.if.end25_crit_edge, label %if.else

if.end7.if.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %channel_offset)
  %cmp16 = icmp eq i8 %channel_offset, 1
  br i1 %cmp16, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %add = add i8 %channel, 2
  br label %if.end25

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %sub = add i8 %channel, -2
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then18, %if.end7.if.end25_crit_edge
  %center_ch.0 = phi i8 [ %add, %if.then18 ], [ %sub, %if.else21 ], [ %channel, %if.end7.if.end25_crit_edge ]
  %oper_channel.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %oper_channel.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %channel, ptr %oper_channel.i, align 2
  %conv26 = trunc i16 %bwmode to i8
  %oper_bwmode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 9
  %4 = ptrtoint ptr %oper_bwmode.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv26, ptr %oper_bwmode.i, align 1
  %oper_ch_offset.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 10
  %5 = ptrtoint ptr %oper_ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %channel_offset, ptr %oper_ch_offset.i, align 4
  tail call void @PHY_SwChnl8188E(ptr noundef %padapter, i8 noundef zeroext %center_ch.0) #20
  %6 = ptrtoint ptr %oper_bwmode.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv26, ptr %oper_bwmode.i, align 1
  %7 = ptrtoint ptr %oper_ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %channel_offset, ptr %oper_ch_offset.i, align 4
  %conv1.i = zext i16 %bwmode to i32
  tail call void @PHY_SetBWMode8188E(ptr noundef %padapter, i32 noundef %conv1.i, i8 noundef zeroext %channel_offset) #20
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @get_my_bssid(ptr noundef readnone %pnetwork) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %MacAddress = getelementptr inbounds %struct.wlan_bssid_ex, ptr %pnetwork, i32 0, i32 1
  ret ptr %MacAddress
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @get_beacon_interval(ptr noundef %bss) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %IEs = getelementptr inbounds %struct.wlan_bssid_ex, ptr %bss, i32 0, i32 12
  %call = tail call ptr @rtw_get_beacon_interval_from_ie(ptr noundef %IEs) #20
  %0 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %val.0.copyload = load i16, ptr %call, align 1
  %1 = tail call i16 @llvm.bswap.i16(i16 %val.0.copyload)
  ret i16 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_beacon_interval_from_ie(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @is_client_associated_to_ap(ptr noundef readonly %padapter) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %padapter, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17
  %0 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mlmext_info, align 4
  %2 = and i32 %1, 16387
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %2)
  %3 = icmp eq i32 %2, 16386
  %spec.select = zext i1 %3 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @is_client_associated_to_ibss(ptr nocapture noundef readonly %padapter) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17
  %0 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mlmext_info, align 4
  %2 = and i32 %1, 16387
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %2)
  %3 = icmp eq i32 %2, 16385
  %retval.0 = zext i1 %3 to i32
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @is_IBSS_empty(ptr nocapture noundef readonly %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 2, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %status = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 39, i32 %i.06, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.cleanup_crit_edge ], [ 1, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @decide_wait_for_beacon_timeout(i32 noundef %bcn_interval) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %bcn_interval, 2
  %0 = tail call i32 @llvm.umin.i32(i32 %shl, i32 20000)
  %1 = tail call i32 @llvm.umax.i32(i32 %0, i32 6000)
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @invalidate_cam_all(ptr noundef %padapter) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 25, ptr noundef null) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @write_cam(ptr noundef %padapter, i8 noundef zeroext %entry1, i16 noundef zeroext %ctrl, ptr nocapture noundef readonly %mac, ptr nocapture noundef readonly %key) local_unnamed_addr #5 align 64 {
entry:
  %cam_val = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cam_val) #20
  %0 = getelementptr inbounds [2 x i32], ptr %cam_val, i32 0, i32 1
  %conv = zext i8 %entry1 to i32
  %shl = shl nuw nsw i32 %conv, 3
  %arrayidx11 = getelementptr i8, ptr %mac, i32 2
  %arrayidx13 = getelementptr i8, ptr %mac, i32 3
  %arrayidx17 = getelementptr i8, ptr %mac, i32 4
  %arrayidx21 = getelementptr i8, ptr %mac, i32 5
  %conv3 = zext i16 %ctrl to i32
  %arrayidx6 = getelementptr i8, ptr %mac, i32 1
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %entry
  %j.060 = phi i32 [ 5, %entry ], [ %dec, %sw.epilog.for.body_crit_edge ]
  %1 = zext i32 %j.060 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %j.060, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac, align 1
  %conv4 = zext i8 %3 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or = or i32 %shl5, %conv3
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %5 to i32
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %7 to i32
  %shl15 = shl nuw nsw i32 %conv14, 8
  %or16 = or i32 %shl15, %conv12
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %9 to i32
  %shl19 = shl nuw nsw i32 %conv18, 16
  %or20 = or i32 %or16, %shl19
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %sub = shl i32 %j.060, 2
  %shl25 = add nsw i32 %sub, -8
  %arrayidx26 = getelementptr i8, ptr %key, i32 %shl25
  %10 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %11 to i32
  %add = add nsw i32 %sub, -7
  %arrayidx28 = getelementptr i8, ptr %key, i32 %add
  %12 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %13 to i32
  %shl30 = shl nuw nsw i32 %conv29, 8
  %or31 = or i32 %shl30, %conv27
  %add32 = add nsw i32 %sub, -6
  %arrayidx33 = getelementptr i8, ptr %key, i32 %add32
  %14 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %15 to i32
  %shl35 = shl nuw nsw i32 %conv34, 16
  %or36 = or i32 %or31, %shl35
  %add37 = add nsw i32 %sub, -5
  %arrayidx38 = getelementptr i8, ptr %key, i32 %add37
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb
  %arrayidx38.sink = phi ptr [ %arrayidx38, %sw.default ], [ %arrayidx21, %sw.bb10 ], [ %arrayidx6, %sw.bb ]
  %or36.sink = phi i32 [ %or36, %sw.default ], [ %or20, %sw.bb10 ], [ %or, %sw.bb ]
  %16 = ptrtoint ptr %arrayidx38.sink to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx38.sink, align 1
  %conv39 = zext i8 %17 to i32
  %shl40 = shl nuw i32 %conv39, 24
  %or41 = or i32 %or36.sink, %shl40
  %18 = ptrtoint ptr %cam_val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or41, ptr %cam_val, align 4
  %add43 = add nuw nsw i32 %j.060, %shl
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add43, ptr %0, align 4
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 26, ptr noundef nonnull %cam_val) #20
  %dec = add nsw i32 %j.060, -1
  %cmp.not = icmp eq i32 %j.060, 0
  br i1 %cmp.not, label %for.end, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cam_val) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_cam_entry(ptr noundef %padapter, i8 noundef zeroext %entry1) local_unnamed_addr #5 align 64 {
sw.epilog.i.5:
  %cam_val.i = alloca [2 x i32], align 4
  %null_key.sroa.6 = alloca i8, align 1
  %null_key.sroa.10 = alloca i8, align 1
  %null_key.sroa.14 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %null_key.sroa.6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %null_key.sroa.10)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %null_key.sroa.14)
  store i8 0, ptr %null_key.sroa.6, align 1
  store i8 0, ptr %null_key.sroa.10, align 1
  store i8 0, ptr %null_key.sroa.14, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cam_val.i) #20
  %0 = getelementptr inbounds [2 x i32], ptr %cam_val.i, i32 0, i32 1
  %conv.i = zext i8 %entry1 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 3
  %1 = ptrtoint ptr %cam_val.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cam_val.i, align 4
  %add43.i = or i32 %shl.i, 5
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add43.i, ptr %0, align 4
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 26, ptr noundef nonnull %cam_val.i) #20
  %arrayidx38.sink.i.1.sroa.speculate.load.sw.default.i.1 = load i8, ptr %null_key.sroa.14, align 1
  %phi.cast13 = zext i8 %arrayidx38.sink.i.1.sroa.speculate.load.sw.default.i.1 to i32
  %phi.bo14 = shl nuw i32 %phi.cast13, 24
  %3 = ptrtoint ptr %cam_val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %phi.bo14, ptr %cam_val.i, align 4
  %add43.i.1 = or i32 %shl.i, 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add43.i.1, ptr %0, align 4
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 26, ptr noundef nonnull %cam_val.i) #20
  %arrayidx38.sink.i.2.sroa.speculate.load.sw.default.i.2 = load i8, ptr %null_key.sroa.10, align 1
  %phi.cast15 = zext i8 %arrayidx38.sink.i.2.sroa.speculate.load.sw.default.i.2 to i32
  %phi.bo16 = shl nuw i32 %phi.cast15, 24
  %5 = ptrtoint ptr %cam_val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %phi.bo16, ptr %cam_val.i, align 4
  %add43.i.2 = or i32 %shl.i, 3
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add43.i.2, ptr %0, align 4
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 26, ptr noundef nonnull %cam_val.i) #20
  %arrayidx38.sink.i.3.sroa.speculate.load.sw.default.i.3 = load i8, ptr %null_key.sroa.6, align 1
  %phi.cast17 = zext i8 %arrayidx38.sink.i.3.sroa.speculate.load.sw.default.i.3 to i32
  %phi.bo18 = shl nuw i32 %phi.cast17, 24
  %7 = ptrtoint ptr %cam_val.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %phi.bo18, ptr %cam_val.i, align 4
  %add43.i.3 = or i32 %shl.i, 2
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add43.i.3, ptr %0, align 4
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 26, ptr noundef nonnull %cam_val.i) #20
  %9 = ptrtoint ptr %cam_val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cam_val.i, align 4
  %add43.i.4 = or i32 %shl.i, 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add43.i.4, ptr %0, align 4
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 26, ptr noundef nonnull %cam_val.i) #20
  %11 = ptrtoint ptr %cam_val.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cam_val.i, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shl.i, ptr %0, align 4
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 26, ptr noundef nonnull %cam_val.i) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cam_val.i) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %null_key.sroa.6)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %null_key.sroa.10)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %null_key.sroa.14)
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @allocate_fw_sta_entry(ptr nocapture noundef %padapter) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %mac_id.016 = phi i32 [ 2, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %status = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 39, i32 %mac_id.016, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %status, align 4
  %retry = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 39, i32 %mac_id.016, i32 3
  %3 = ptrtoint ptr %retry to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %retry, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %mac_id.016, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then
  %mac_id.015 = phi i32 [ %mac_id.016, %if.then ], [ 32, %for.inc.for.end_crit_edge ]
  ret i32 %mac_id.015
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_all_cam_entry(ptr noundef %padapter) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 25, ptr noundef null) #20
  %FW_sta_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 39
  %0 = call ptr @memset(ptr %FW_sta_info, i32 0, i32 1024)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @WMM_param_handler(ptr nocapture noundef %padapter, ptr nocapture noundef readonly %pIE) local_unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %qospriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 23
  %0 = ptrtoint ptr %qospriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qospriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %WMM_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %2 = ptrtoint ptr %WMM_enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %WMM_enable, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %3 = ptrtoint ptr %WMM_enable to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %WMM_enable, align 1
  %WMM_param = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 35
  %add.ptr = getelementptr %struct.ndis_802_11_var_ie, ptr %pIE, i32 2, i32 2
  %4 = call ptr @memcpy(ptr %WMM_param, ptr %add.ptr, i32 18)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @WMMOnAssocRsp(ptr noundef %padapter) local_unnamed_addr #5 align 64 {
entry:
  %acm_mask = alloca i8, align 1
  %acParm = alloca i32, align 4
  %edca = alloca [4 x i32], align 4
  %inx = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %acm_mask) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acParm) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %edca) #20
  %0 = getelementptr inbounds [4 x i32], ptr %edca, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %edca, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %edca, i32 0, i32 3
  %3 = call ptr @memset(ptr %edca, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inx) #20
  %4 = getelementptr inbounds [4 x i32], ptr %inx, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i32], ptr %inx, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i32], ptr %inx, i32 0, i32 3
  %WMM_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 17
  %7 = call ptr @memset(ptr %inx, i32 255, i32 16)
  %8 = ptrtoint ptr %WMM_enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %WMM_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %acm_mask2 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 29
  %10 = ptrtoint ptr %acm_mask2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %acm_mask2, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %acm_mask to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %acm_mask, align 1
  %cur_wireless_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %12 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cur_wireless_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp4 = icmp eq i8 %13, 1
  %. = select i1 %cmp4, i8 10, i8 16
  %slotTime = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 15
  %14 = ptrtoint ptr %edca to i32
  call void @__asan_load4_noabort(i32 %14)
  %edca.promoted = load i32, ptr %edca, align 4
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.promoted = load i32, ptr %0, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.promoted263 = load i32, ptr %2, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.promoted266 = load i32, ptr %1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0269 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %18 = phi i32 [ %edca.promoted, %if.end ], [ %57, %for.inc.for.body_crit_edge ]
  %19 = phi i32 [ %.promoted, %if.end ], [ %56, %for.inc.for.body_crit_edge ]
  %20 = phi i32 [ %.promoted263, %if.end ], [ %55, %for.inc.for.body_crit_edge ]
  %21 = phi i32 [ %.promoted266, %if.end ], [ %54, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 35, i32 2, i32 %i.0269
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 2
  %24 = lshr i8 %23, 5
  %and = and i8 %24, 3
  %25 = lshr i8 %23, 4
  %and18 = and i8 %25, 1
  %26 = and i8 %23, 15
  %27 = ptrtoint ptr %slotTime to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %slotTime, align 1
  %mul = mul i8 %26, %28
  %add = add i8 %mul, %.
  %CW = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 35, i32 2, i32 %i.0269, i32 1
  %29 = ptrtoint ptr %CW to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %CW, align 1
  %and33 = and i8 %30, 15
  %31 = lshr i8 %30, 4
  %TXOP_limit = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 35, i32 2, i32 %i.0269, i32 2
  %32 = ptrtoint ptr %TXOP_limit to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %TXOP_limit, align 2
  %34 = call i16 @llvm.bswap.i16(i16 %33)
  %conv46 = zext i8 %add to i32
  %conv47 = zext i8 %and33 to i32
  %shl = shl nuw nsw i32 %conv47, 8
  %or = or i32 %shl, %conv46
  %conv48 = zext i8 %31 to i32
  %shl49 = shl nuw nsw i32 %conv48, 12
  %or50 = or i32 %or, %shl49
  %conv51 = zext i16 %34 to i32
  %shl52 = shl nuw i32 %conv51, 16
  %or53 = or i32 %or50, %shl52
  %35 = ptrtoint ptr %acParm to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or53, ptr %acParm, align 4
  %conv54 = zext i8 %and to i32
  %36 = zext i32 %conv54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %conv54, label %for.body.unreachabledefault276 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb60
    i32 2, label %sw.bb62
    i32 3, label %sw.bb70
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 30, ptr noundef nonnull %acParm) #20
  %37 = shl nuw nsw i8 %and18, 1
  %38 = ptrtoint ptr %acm_mask to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %acm_mask, align 1
  %or57259 = or i8 %39, %37
  store i8 %or57259, ptr %acm_mask, align 1
  %40 = ptrtoint ptr %acParm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %acParm, align 4
  br label %do.body

sw.bb60:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 31, ptr noundef nonnull %acParm) #20
  %42 = ptrtoint ptr %acParm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %acParm, align 4
  br label %do.body

sw.bb62:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 29, ptr noundef nonnull %acParm) #20
  %44 = shl nuw nsw i8 %and18, 2
  %45 = ptrtoint ptr %acm_mask to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %acm_mask, align 1
  %or67258 = or i8 %46, %44
  store i8 %or67258, ptr %acm_mask, align 1
  %47 = ptrtoint ptr %acParm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %acParm, align 4
  br label %do.body

sw.bb70:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 28, ptr noundef nonnull %acParm) #20
  %49 = shl nuw nsw i8 %and18, 3
  %50 = ptrtoint ptr %acm_mask to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %acm_mask, align 1
  %or75257 = or i8 %51, %49
  store i8 %or75257, ptr %acm_mask, align 1
  %52 = ptrtoint ptr %acParm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %acParm, align 4
  br label %do.body

for.body.unreachabledefault276:                   ; preds = %for.body
  unreachable

do.body:                                          ; preds = %sw.bb70, %sw.bb62, %sw.bb60, %sw.bb
  %54 = phi i32 [ %41, %sw.bb ], [ %21, %sw.bb60 ], [ %21, %sw.bb62 ], [ %21, %sw.bb70 ]
  %55 = phi i32 [ %20, %sw.bb ], [ %43, %sw.bb60 ], [ %20, %sw.bb62 ], [ %20, %sw.bb70 ]
  %56 = phi i32 [ %19, %sw.bb ], [ %19, %sw.bb60 ], [ %48, %sw.bb62 ], [ %19, %sw.bb70 ]
  %57 = phi i32 [ %18, %sw.bb ], [ %18, %sw.bb60 ], [ %18, %sw.bb62 ], [ %53, %sw.bb70 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %58 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %58)
  %cmp78 = icmp ugt i32 %58, 4
  br i1 %cmp78, label %do.end, label %do.body.for.inc_crit_edge

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %conv83 = zext i8 %and18 to i32
  %59 = ptrtoint ptr %acParm to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %acParm, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv54, i32 noundef %conv83, i32 noundef %60) #23
  br label %for.inc

for.inc:                                          ; preds = %do.end, %do.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0269, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.inc
  %61 = ptrtoint ptr %edca to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %57, ptr %edca, align 4
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %56, ptr %0, align 4
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %55, ptr %2, align 4
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %54, ptr %1, align 4
  %acm_method = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 27
  %65 = ptrtoint ptr %acm_method to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %acm_method, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %66)
  %cmp89 = icmp eq i8 %66, 1
  br i1 %cmp89, label %if.then91, label %if.else92

if.then91:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 32, ptr noundef nonnull %acm_mask) #20
  br label %if.end95

if.else92:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  %67 = ptrtoint ptr %acm_mask to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %acm_mask, align 1
  %acm_mask94 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 29
  %69 = ptrtoint ptr %acm_mask94 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %acm_mask94, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.else92, %if.then91
  %70 = ptrtoint ptr %inx to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %inx, align 4
  %71 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %4, align 4
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %5, align 4
  %73 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 3, ptr %6, align 4
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 44
  %74 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %75)
  %cmp101 = icmp eq i8 %75, 1
  br i1 %cmp101, label %for.body112.lr.ph, label %if.end95.if.end162_crit_edge

if.end95.if.end162_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end162

for.body112.lr.ph.1:                              ; preds = %do.body140.2309, %if.else120.2307.for.body112.lr.ph.1_crit_edge
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %1, align 4
  %and114.1 = and i32 %77, 65535
  %78 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %0, align 4
  %and116.1 = and i32 %79, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and114.1, i32 %and116.1)
  %cmp117.1 = icmp ult i32 %and114.1, %and116.1
  br i1 %cmp117.1, label %for.body112.lr.ph.1.do.body140.1_crit_edge, label %if.else120.1

for.body112.lr.ph.1.do.body140.1_crit_edge:       ; preds = %for.body112.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body140.1

if.else120.1:                                     ; preds = %for.body112.lr.ph.1
  call void @__sanitizer_cov_trace_cmp4(i32 %and114.1, i32 %and116.1)
  %cmp125.1 = icmp eq i32 %and114.1, %and116.1
  %shr129.1 = lshr i32 %77, 16
  %shr131.1 = lshr i32 %79, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr129.1, i32 %shr131.1)
  %cmp132.1 = icmp ugt i32 %shr129.1, %shr131.1
  %or.cond.1 = and i1 %cmp125.1, %cmp132.1
  br i1 %or.cond.1, label %if.else120.1.do.body140.1_crit_edge, label %if.else120.1.for.inc156.1_crit_edge

if.else120.1.for.inc156.1_crit_edge:              ; preds = %if.else120.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc156.1

if.else120.1.do.body140.1_crit_edge:              ; preds = %if.else120.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body140.1

do.body140.1:                                     ; preds = %if.else120.1.do.body140.1_crit_edge, %for.body112.lr.ph.1.do.body140.1_crit_edge
  %80 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %77, ptr %0, align 4
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %79, ptr %1, align 4
  %82 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %4, align 4
  %84 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %5, align 4
  store i32 %85, ptr %4, align 4
  store i32 %83, ptr %5, align 4
  br label %for.inc156.1

for.inc156.1:                                     ; preds = %do.body140.1, %if.else120.1.for.inc156.1_crit_edge
  %86 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %2, align 4
  %and114.1.1 = and i32 %87, 65535
  %88 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %0, align 4
  %and116.1.1 = and i32 %89, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and114.1.1, i32 %and116.1.1)
  %cmp117.1.1 = icmp ult i32 %and114.1.1, %and116.1.1
  br i1 %cmp117.1.1, label %for.inc156.1.do.body140.1.1_crit_edge, label %if.else120.1.1

for.inc156.1.do.body140.1.1_crit_edge:            ; preds = %for.inc156.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body140.1.1

if.else120.1.1:                                   ; preds = %for.inc156.1
  call void @__sanitizer_cov_trace_cmp4(i32 %and114.1.1, i32 %and116.1.1)
  %cmp125.1.1 = icmp eq i32 %and114.1.1, %and116.1.1
  %shr129.1.1 = lshr i32 %87, 16
  %shr131.1.1 = lshr i32 %89, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr129.1.1, i32 %shr131.1.1)
  %cmp132.1.1 = icmp ugt i32 %shr129.1.1, %shr131.1.1
  %or.cond.1.1 = and i1 %cmp125.1.1, %cmp132.1.1
  br i1 %or.cond.1.1, label %if.else120.1.1.do.body140.1.1_crit_edge, label %if.else120.1.1.for.body112.lr.ph.2_crit_edge

if.else120.1.1.for.body112.lr.ph.2_crit_edge:     ; preds = %if.else120.1.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body112.lr.ph.2

if.else120.1.1.do.body140.1.1_crit_edge:          ; preds = %if.else120.1.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body140.1.1

do.body140.1.1:                                   ; preds = %if.else120.1.1.do.body140.1.1_crit_edge, %for.inc156.1.do.body140.1.1_crit_edge
  %90 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %87, ptr %0, align 4
  %91 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %89, ptr %2, align 4
  %92 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %4, align 4
  %94 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %6, align 4
  store i32 %95, ptr %4, align 4
  store i32 %93, ptr %6, align 4
  br label %for.body112.lr.ph.2

for.body112.lr.ph.2:                              ; preds = %do.body140.1.1, %if.else120.1.1.for.body112.lr.ph.2_crit_edge
  %96 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %2, align 4
  %and114.2 = and i32 %97, 65535
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %1, align 4
  %and116.2 = and i32 %99, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and114.2, i32 %and116.2)
  %cmp117.2 = icmp ult i32 %and114.2, %and116.2
  br i1 %cmp117.2, label %for.body112.lr.ph.2.do.body140.2_crit_edge, label %if.else120.2

for.body112.lr.ph.2.do.body140.2_crit_edge:       ; preds = %for.body112.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body140.2

if.else120.2:                                     ; preds = %for.body112.lr.ph.2
  call void @__sanitizer_cov_trace_cmp4(i32 %and114.2, i32 %and116.2)
  %cmp125.2 = icmp eq i32 %and114.2, %and116.2
  %shr129.2 = lshr i32 %97, 16
  %shr131.2 = lshr i32 %99, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr129.2, i32 %shr131.2)
  %cmp132.2 = icmp ugt i32 %shr129.2, %shr131.2
  %or.cond.2 = and i1 %cmp125.2, %cmp132.2
  br i1 %or.cond.2, label %if.else120.2.do.body140.2_crit_edge, label %if.else120.2.if.end162_crit_edge

if.else120.2.if.end162_crit_edge:                 ; preds = %if.else120.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end162

if.else120.2.do.body140.2_crit_edge:              ; preds = %if.else120.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body140.2

do.body140.2:                                     ; preds = %if.else120.2.do.body140.2_crit_edge, %for.body112.lr.ph.2.do.body140.2_crit_edge
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %97, ptr %1, align 4
  %101 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %99, ptr %2, align 4
  %102 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %5, align 4
  %104 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %6, align 4
  store i32 %105, ptr %5, align 4
  store i32 %103, ptr %6, align 4
  br label %if.end162

for.body112.lr.ph:                                ; preds = %if.end95
  %106 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %0, align 4
  %and114 = and i32 %107, 65535
  %108 = ptrtoint ptr %edca to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %edca, align 4
  %and116 = and i32 %109, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and114, i32 %and116)
  %cmp117 = icmp ult i32 %and114, %and116
  br i1 %cmp117, label %for.body112.lr.ph.do.body140_crit_edge, label %if.else120

for.body112.lr.ph.do.body140_crit_edge:           ; preds = %for.body112.lr.ph
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body140

if.else120:                                       ; preds = %for.body112.lr.ph
  call void @__sanitizer_cov_trace_cmp4(i32 %and114, i32 %and116)
  %cmp125 = icmp eq i32 %and114, %and116
  %shr129 = lshr i32 %107, 16
  %shr131 = lshr i32 %109, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr129, i32 %shr131)
  %cmp132 = icmp ugt i32 %shr129, %shr131
  %or.cond = and i1 %cmp125, %cmp132
  br i1 %or.cond, label %if.else120.do.body140_crit_edge, label %if.else120.for.inc156_crit_edge

if.else120.for.inc156_crit_edge:                  ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc156

if.else120.do.body140_crit_edge:                  ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body140

do.body140:                                       ; preds = %if.else120.do.body140_crit_edge, %for.body112.lr.ph.do.body140_crit_edge
  %110 = ptrtoint ptr %edca to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %107, ptr %edca, align 4
  %111 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %109, ptr %0, align 4
  %112 = ptrtoint ptr %inx to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %inx, align 4
  %114 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %4, align 4
  store i32 %115, ptr %inx, align 4
  store i32 %113, ptr %4, align 4
  br label %for.inc156

for.inc156:                                       ; preds = %do.body140, %if.else120.for.inc156_crit_edge
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %1, align 4
  %and114.1283 = and i32 %117, 65535
  %118 = ptrtoint ptr %edca to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %edca, align 4
  %and116.1284 = and i32 %119, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and114.1283, i32 %and116.1284)
  %cmp117.1285 = icmp ult i32 %and114.1283, %and116.1284
  br i1 %cmp117.1285, label %for.inc156.do.body140.1294_crit_edge, label %if.else120.1292

for.inc156.do.body140.1294_crit_edge:             ; preds = %for.inc156
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body140.1294

if.else120.1292:                                  ; preds = %for.inc156
  call void @__sanitizer_cov_trace_cmp4(i32 %and114.1283, i32 %and116.1284)
  %cmp125.1287 = icmp eq i32 %and114.1283, %and116.1284
  %shr129.1288 = lshr i32 %117, 16
  %shr131.1289 = lshr i32 %119, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr129.1288, i32 %shr131.1289)
  %cmp132.1290 = icmp ugt i32 %shr129.1288, %shr131.1289
  %or.cond.1291 = and i1 %cmp125.1287, %cmp132.1290
  br i1 %or.cond.1291, label %if.else120.1292.do.body140.1294_crit_edge, label %if.else120.1292.for.inc156.1295_crit_edge

if.else120.1292.for.inc156.1295_crit_edge:        ; preds = %if.else120.1292
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc156.1295

if.else120.1292.do.body140.1294_crit_edge:        ; preds = %if.else120.1292
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body140.1294

do.body140.1294:                                  ; preds = %if.else120.1292.do.body140.1294_crit_edge, %for.inc156.do.body140.1294_crit_edge
  %120 = ptrtoint ptr %edca to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %117, ptr %edca, align 4
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %119, ptr %1, align 4
  %122 = ptrtoint ptr %inx to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %inx, align 4
  %124 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %5, align 4
  store i32 %125, ptr %inx, align 4
  store i32 %123, ptr %5, align 4
  br label %for.inc156.1295

for.inc156.1295:                                  ; preds = %do.body140.1294, %if.else120.1292.for.inc156.1295_crit_edge
  %126 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %2, align 4
  %and114.2298 = and i32 %127, 65535
  %128 = ptrtoint ptr %edca to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %edca, align 4
  %and116.2299 = and i32 %129, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and114.2298, i32 %and116.2299)
  %cmp117.2300 = icmp ult i32 %and114.2298, %and116.2299
  br i1 %cmp117.2300, label %for.inc156.1295.do.body140.2309_crit_edge, label %if.else120.2307

for.inc156.1295.do.body140.2309_crit_edge:        ; preds = %for.inc156.1295
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body140.2309

if.else120.2307:                                  ; preds = %for.inc156.1295
  call void @__sanitizer_cov_trace_cmp4(i32 %and114.2298, i32 %and116.2299)
  %cmp125.2302 = icmp eq i32 %and114.2298, %and116.2299
  %shr129.2303 = lshr i32 %127, 16
  %shr131.2304 = lshr i32 %129, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr129.2303, i32 %shr131.2304)
  %cmp132.2305 = icmp ugt i32 %shr129.2303, %shr131.2304
  %or.cond.2306 = and i1 %cmp125.2302, %cmp132.2305
  br i1 %or.cond.2306, label %if.else120.2307.do.body140.2309_crit_edge, label %if.else120.2307.for.body112.lr.ph.1_crit_edge

if.else120.2307.for.body112.lr.ph.1_crit_edge:    ; preds = %if.else120.2307
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body112.lr.ph.1

if.else120.2307.do.body140.2309_crit_edge:        ; preds = %if.else120.2307
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body140.2309

do.body140.2309:                                  ; preds = %if.else120.2307.do.body140.2309_crit_edge, %for.inc156.1295.do.body140.2309_crit_edge
  %130 = ptrtoint ptr %edca to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %127, ptr %edca, align 4
  %131 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %129, ptr %2, align 4
  %132 = ptrtoint ptr %inx to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %inx, align 4
  %134 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %6, align 4
  store i32 %135, ptr %inx, align 4
  store i32 %133, ptr %6, align 4
  br label %for.body112.lr.ph.1

if.end162:                                        ; preds = %do.body140.2, %if.else120.2.if.end162_crit_edge, %if.end95.if.end162_crit_edge
  %136 = ptrtoint ptr %inx to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %inx, align 4
  %conv168 = trunc i32 %137 to i8
  %arrayidx169 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 9, i32 23, i32 0
  %138 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv168, ptr %arrayidx169, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %139 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %139)
  %cmp171 = icmp ugt i32 %139, 4
  br i1 %cmp171, label %do.end176, label %if.end162.for.inc185_crit_edge

if.end162.for.inc185_crit_edge:                   ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc185

do.end176:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #22
  %conv180 = and i32 %137, 255
  %call181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef %conv180) #23
  br label %for.inc185

for.inc185:                                       ; preds = %do.end176, %if.end162.for.inc185_crit_edge
  %140 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %4, align 4
  %conv168.1 = trunc i32 %141 to i8
  %arrayidx169.1 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 9, i32 23, i32 1
  %142 = ptrtoint ptr %arrayidx169.1 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv168.1, ptr %arrayidx169.1, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %143 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %143)
  %cmp171.1 = icmp ugt i32 %143, 4
  br i1 %cmp171.1, label %do.end176.1, label %for.inc185.for.inc185.1_crit_edge

for.inc185.for.inc185.1_crit_edge:                ; preds = %for.inc185
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc185.1

do.end176.1:                                      ; preds = %for.inc185
  call void @__sanitizer_cov_trace_pc() #22
  %conv180.1 = and i32 %141, 255
  %call181.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef %conv180.1) #23
  br label %for.inc185.1

for.inc185.1:                                     ; preds = %do.end176.1, %for.inc185.for.inc185.1_crit_edge
  %144 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %5, align 4
  %conv168.2 = trunc i32 %145 to i8
  %arrayidx169.2 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 9, i32 23, i32 2
  %146 = ptrtoint ptr %arrayidx169.2 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv168.2, ptr %arrayidx169.2, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %147 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %147)
  %cmp171.2 = icmp ugt i32 %147, 4
  br i1 %cmp171.2, label %do.end176.2, label %for.inc185.1.for.inc185.2_crit_edge

for.inc185.1.for.inc185.2_crit_edge:              ; preds = %for.inc185.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc185.2

do.end176.2:                                      ; preds = %for.inc185.1
  call void @__sanitizer_cov_trace_pc() #22
  %conv180.2 = and i32 %145, 255
  %call181.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 2, i32 noundef %conv180.2) #23
  br label %for.inc185.2

for.inc185.2:                                     ; preds = %do.end176.2, %for.inc185.1.for.inc185.2_crit_edge
  %148 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %6, align 4
  %conv168.3 = trunc i32 %149 to i8
  %arrayidx169.3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 9, i32 23, i32 3
  %150 = ptrtoint ptr %arrayidx169.3 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv168.3, ptr %arrayidx169.3, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %151 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %151)
  %cmp171.3 = icmp ugt i32 %151, 4
  br i1 %cmp171.3, label %do.end176.3, label %for.inc185.2.cleanup_crit_edge

for.inc185.2.cleanup_crit_edge:                   ; preds = %for.inc185.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.end176.3:                                      ; preds = %for.inc185.2
  call void @__sanitizer_cov_trace_pc() #22
  %conv180.3 = and i32 %149, 255
  %call181.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 3, i32 noundef %conv180.3) #23
  br label %cleanup

cleanup:                                          ; preds = %do.end176.3, %for.inc185.2.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inx) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %edca) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acParm) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %acm_mask) #20
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HT_caps_handler(ptr nocapture noundef %padapter, ptr noundef readonly %pIE) local_unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pIE, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %htpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26
  %0 = ptrtoint ptr %htpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %HT_caps_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 21
  %2 = ptrtoint ptr %HT_caps_enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %HT_caps_enable, align 1
  %Length = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %pIE, i32 0, i32 1
  %3 = ptrtoint ptr %Length to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %Length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp96.not = icmp eq i8 %4, 0
  br i1 %cmp96.not, label %if.end3.for.cond47.preheader_crit_edge, label %for.inc.peel

if.end3.for.cond47.preheader_crit_edge:           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond47.preheader

for.inc.peel:                                     ; preds = %if.end3
  %HT_caps = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36
  %AMPDU_para = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 1
  %arrayidx17 = getelementptr %struct.ndis_802_11_var_ie, ptr %pIE, i32 1, i32 1
  %arrayidx.peel = getelementptr %struct.ndis_802_11_var_ie, ptr %pIE, i32 0, i32 2, i32 0
  %5 = ptrtoint ptr %arrayidx.peel to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.peel, align 1
  %7 = ptrtoint ptr %HT_caps to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %HT_caps, align 1
  %and94.peel = and i8 %8, %6
  store i8 %and94.peel, ptr %HT_caps, align 1
  %9 = ptrtoint ptr %Length to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %Length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.peel = icmp ugt i8 %10, 1
  br i1 %cmp.peel, label %for.inc.peel109, label %for.inc.peel.for.cond47.preheader_crit_edge

for.inc.peel.for.cond47.preheader_crit_edge:      ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond47.preheader

for.inc.peel109:                                  ; preds = %for.inc.peel
  %arrayidx.peel104 = getelementptr %struct.ndis_802_11_var_ie, ptr %pIE, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx.peel104 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.peel104, align 1
  %arrayidx9.peel105 = getelementptr [26 x i8], ptr %HT_caps, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx9.peel105 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx9.peel105, align 1
  %and94.peel106 = and i8 %14, %12
  store i8 %and94.peel106, ptr %arrayidx9.peel105, align 1
  %15 = ptrtoint ptr %Length to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %Length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp.peel112 = icmp ugt i8 %16, 2
  br i1 %cmp.peel112, label %for.inc.peel122, label %for.inc.peel109.for.cond47.preheader_crit_edge

for.inc.peel109.for.cond47.preheader_crit_edge:   ; preds = %for.inc.peel109
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond47.preheader

for.inc.peel122:                                  ; preds = %for.inc.peel109
  %17 = ptrtoint ptr %AMPDU_para to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %AMPDU_para, align 2
  %19 = and i8 %18, 3
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx17, align 1
  %22 = and i8 %21, 3
  %23 = tail call i8 @llvm.umin.i8(i8 %19, i8 %22)
  %24 = and i8 %18, 28
  %25 = and i8 %21, 28
  %26 = tail call i8 @llvm.umax.i8(i8 %24, i8 %25)
  %or93.peel121 = or i8 %23, %26
  %27 = ptrtoint ptr %AMPDU_para to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %or93.peel121, ptr %AMPDU_para, align 2
  %28 = ptrtoint ptr %Length to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %Length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp.peel125 = icmp ugt i8 %29, 3
  br i1 %cmp.peel125, label %for.inc.peel122.for.inc_crit_edge, label %for.inc.peel122.for.cond47.preheader_crit_edge

for.inc.peel122.for.cond47.preheader_crit_edge:   ; preds = %for.inc.peel122
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond47.preheader

for.inc.peel122.for.inc_crit_edge:                ; preds = %for.inc.peel122
  br label %for.inc

for.cond47.preheader:                             ; preds = %for.inc.for.cond47.preheader_crit_edge, %for.inc.peel122.for.cond47.preheader_crit_edge, %for.inc.peel109.for.cond47.preheader_crit_edge, %for.inc.peel.for.cond47.preheader_crit_edge, %if.end3.for.cond47.preheader_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @MCS_rate_1R to i32))
  %30 = load i8, ptr @MCS_rate_1R, align 1
  %arrayidx55 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 0
  %31 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx55, align 1
  %and5792 = and i8 %32, %30
  store i8 %and5792, ptr %arrayidx55, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 1) to i32))
  %33 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 1), align 1
  %arrayidx55.1 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx55.1, align 1
  %and5792.1 = and i8 %35, %33
  store i8 %and5792.1, ptr %arrayidx55.1, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 2) to i32))
  %36 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 2), align 1
  %arrayidx55.2 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %arrayidx55.2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx55.2, align 1
  %and5792.2 = and i8 %38, %36
  store i8 %and5792.2, ptr %arrayidx55.2, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 3) to i32))
  %39 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 3), align 1
  %arrayidx55.3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %arrayidx55.3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx55.3, align 1
  %and5792.3 = and i8 %41, %39
  store i8 %and5792.3, ptr %arrayidx55.3, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 4) to i32))
  %42 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 4), align 1
  %arrayidx55.4 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %arrayidx55.4 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx55.4, align 1
  %and5792.4 = and i8 %44, %42
  store i8 %and5792.4, ptr %arrayidx55.4, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 5) to i32))
  %45 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 5), align 1
  %arrayidx55.5 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 5
  %46 = ptrtoint ptr %arrayidx55.5 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx55.5, align 1
  %and5792.5 = and i8 %47, %45
  store i8 %and5792.5, ptr %arrayidx55.5, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 6) to i32))
  %48 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 6), align 1
  %arrayidx55.6 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 6
  %49 = ptrtoint ptr %arrayidx55.6 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx55.6, align 1
  %and5792.6 = and i8 %50, %48
  store i8 %and5792.6, ptr %arrayidx55.6, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 7) to i32))
  %51 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 7), align 1
  %arrayidx55.7 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 7
  %52 = ptrtoint ptr %arrayidx55.7 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx55.7, align 1
  %and5792.7 = and i8 %53, %51
  store i8 %and5792.7, ptr %arrayidx55.7, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 8) to i32))
  %54 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 8), align 1
  %arrayidx55.8 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 8
  %55 = ptrtoint ptr %arrayidx55.8 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx55.8, align 1
  %and5792.8 = and i8 %56, %54
  store i8 %and5792.8, ptr %arrayidx55.8, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 9) to i32))
  %57 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 9), align 1
  %arrayidx55.9 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 9
  %58 = ptrtoint ptr %arrayidx55.9 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx55.9, align 1
  %and5792.9 = and i8 %59, %57
  store i8 %and5792.9, ptr %arrayidx55.9, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 10) to i32))
  %60 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 10), align 1
  %arrayidx55.10 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 10
  %61 = ptrtoint ptr %arrayidx55.10 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx55.10, align 1
  %and5792.10 = and i8 %62, %60
  store i8 %and5792.10, ptr %arrayidx55.10, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 11) to i32))
  %63 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 11), align 1
  %arrayidx55.11 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 11
  %64 = ptrtoint ptr %arrayidx55.11 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx55.11, align 1
  %and5792.11 = and i8 %65, %63
  store i8 %and5792.11, ptr %arrayidx55.11, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 12) to i32))
  %66 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 12), align 1
  %arrayidx55.12 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 12
  %67 = ptrtoint ptr %arrayidx55.12 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx55.12, align 1
  %and5792.12 = and i8 %68, %66
  store i8 %and5792.12, ptr %arrayidx55.12, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 13) to i32))
  %69 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 13), align 1
  %arrayidx55.13 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 13
  %70 = ptrtoint ptr %arrayidx55.13 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx55.13, align 1
  %and5792.13 = and i8 %71, %69
  store i8 %and5792.13, ptr %arrayidx55.13, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 14) to i32))
  %72 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 14), align 1
  %arrayidx55.14 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 14
  %73 = ptrtoint ptr %arrayidx55.14 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx55.14, align 1
  %and5792.14 = and i8 %74, %72
  store i8 %and5792.14, ptr %arrayidx55.14, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 15) to i32))
  %75 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @MCS_rate_1R, i32 0, i32 15), align 1
  %arrayidx55.15 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 2, i32 15
  %76 = ptrtoint ptr %arrayidx55.15 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx55.15, align 1
  %and5792.15 = and i8 %77, %75
  store i8 %and5792.15, ptr %arrayidx55.15, align 1
  br label %cleanup

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %for.inc.peel122.for.inc_crit_edge
  %i.097 = phi i32 [ %inc, %for.inc.for.inc_crit_edge ], [ 3, %for.inc.peel122.for.inc_crit_edge ]
  %arrayidx = getelementptr %struct.ndis_802_11_var_ie, ptr %pIE, i32 0, i32 2, i32 %i.097
  %78 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx, align 1
  %arrayidx9 = getelementptr [26 x i8], ptr %HT_caps, i32 0, i32 %i.097
  %80 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx9, align 1
  %and94 = and i8 %81, %79
  store i8 %and94, ptr %arrayidx9, align 1
  %inc = add nuw nsw i32 %i.097, 1
  %82 = ptrtoint ptr %Length to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %Length, align 1
  %conv = zext i8 %83 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.inc_crit_edge, label %for.inc.for.cond47.preheader_crit_edge, !llvm.loop !168

for.inc.for.cond47.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond47.preheader

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

cleanup:                                          ; preds = %for.cond47.preheader, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @HT_info_handler(ptr nocapture noundef %padapter, ptr noundef readonly %pIE) local_unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pIE, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %htpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26
  %0 = ptrtoint ptr %htpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %htpriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %Length = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %pIE, i32 0, i32 1
  %2 = ptrtoint ptr %Length to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %Length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %3)
  %cmp = icmp ugt i8 %3, 22
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #22
  %HT_info_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 22
  %4 = ptrtoint ptr %HT_info_enable to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %HT_info_enable, align 2
  %HT_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 37
  %data = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %pIE, i32 0, i32 2
  %5 = ptrtoint ptr %Length to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %Length, align 1
  %conv8 = zext i8 %6 to i32
  %7 = call ptr @memcpy(ptr %HT_info, ptr %data, i32 %conv8)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HTOnAssocRsp(ptr noundef %padapter) local_unnamed_addr #5 align 64 {
entry:
  %max_AMPDU_len = alloca i8, align 1
  %min_MPDU_spacing = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %max_AMPDU_len) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %min_MPDU_spacing) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %0 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp ugt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #23
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %HT_info_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 22
  %1 = ptrtoint ptr %HT_info_enable to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %HT_info_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.end3.if.else_crit_edge, label %land.lhs.true

do.end3.if.else_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

land.lhs.true:                                    ; preds = %do.end3
  %HT_caps_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 21
  %3 = ptrtoint ptr %HT_caps_enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %HT_caps_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.else_crit_edge, label %if.then6

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %HT_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 20
  %5 = ptrtoint ptr %HT_enable to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %HT_enable, align 4
  %AMPDU_para = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 36, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %AMPDU_para to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %AMPDU_para, align 2
  %8 = and i8 %7, 3
  %9 = ptrtoint ptr %max_AMPDU_len to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %max_AMPDU_len, align 1
  %10 = lshr i8 %7, 2
  %11 = and i8 %10, 7
  %12 = ptrtoint ptr %min_MPDU_spacing to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %min_MPDU_spacing, align 1
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 33, ptr noundef nonnull %min_MPDU_spacing) #20
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 34, ptr noundef nonnull %max_AMPDU_len) #20
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end3.if.else_crit_edge
  %HT_enable7 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 20
  %13 = ptrtoint ptr %HT_enable7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %HT_enable7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %min_MPDU_spacing) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %max_AMPDU_len) #20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ERP_IE_handler(ptr nocapture noundef writeonly %padapter, ptr nocapture noundef readonly %pIE) local_unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %Length = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %pIE, i32 0, i32 1
  %0 = ptrtoint ptr %Length to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %Length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %ERP_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 18
  %2 = ptrtoint ptr %ERP_enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %ERP_enable, align 2
  %ERP_IE = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 19
  %data = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %pIE, i32 0, i32 2
  %3 = ptrtoint ptr %Length to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %Length, align 1
  %conv3 = zext i8 %4 to i32
  %5 = call ptr @memcpy(ptr %ERP_IE, ptr %data, i32 %conv3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @VCS_update(ptr nocapture noundef readonly %padapter, ptr nocapture noundef writeonly %psta) local_unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %vrtl_carrier_sense = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 11
  %0 = ptrtoint ptr %vrtl_carrier_sense to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vrtl_carrier_sense, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %1, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %rtsen = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 24
  %3 = ptrtoint ptr %rtsen to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %rtsen, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %vcs_type = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 12
  %4 = ptrtoint ptr %vcs_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vcs_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %rtsen4 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 24
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #22
  %6 = ptrtoint ptr %rtsen4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %rtsen4, align 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #22
  %7 = ptrtoint ptr %rtsen4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %rtsen4, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %ERP_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 18
  %8 = ptrtoint ptr %ERP_enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ERP_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %sw.default.if.else24_crit_edge, label %land.lhs.true

sw.default.if.else24_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else24

land.lhs.true:                                    ; preds = %sw.default
  %ERP_IE = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 19
  %10 = ptrtoint ptr %ERP_IE to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ERP_IE, align 1
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not = icmp eq i8 %12, 0
  br i1 %tobool11.not, label %land.lhs.true.if.else24_crit_edge, label %if.then12

land.lhs.true.if.else24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else24

if.then12:                                        ; preds = %land.lhs.true
  %vcs_type13 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 12
  %13 = ptrtoint ptr %vcs_type13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vcs_type13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp15 = icmp eq i8 %14, 1
  %rtsen18 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 24
  br i1 %cmp15, label %if.then17, label %if.else20

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #22
  %15 = ptrtoint ptr %rtsen18 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %rtsen18, align 1
  br label %sw.epilog

if.else20:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #22
  %16 = ptrtoint ptr %rtsen18 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %rtsen18, align 1
  br label %sw.epilog

if.else24:                                        ; preds = %land.lhs.true.if.else24_crit_edge, %sw.default.if.else24_crit_edge
  %rtsen25 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 24
  %17 = ptrtoint ptr %rtsen25 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %rtsen25, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else24, %if.else20, %if.then17, %if.else, %if.then, %sw.bb
  %.sink = phi i8 [ 0, %if.else24 ], [ 1, %if.else20 ], [ 0, %if.then17 ], [ 0, %if.then ], [ 1, %if.else ], [ 0, %sw.bb ]
  %cts2self26 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 23
  %18 = ptrtoint ptr %cts2self26 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink, ptr %cts2self26, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_check_bcn_info(ptr noundef %Adapter, ptr noundef %pframe, i32 noundef %packet_len) local_unnamed_addr #5 align 64 {
entry:
  %len = alloca i32, align 4
  %wpa_len = alloca i16, align 2
  %rsn_len = alloca i16, align 2
  %group_cipher = alloca i32, align 4
  %pairwise_cipher = alloca i32, align 4
  %is_8021x = alloca i32, align 4
  %wpa_ielen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wpa_len) #20
  %0 = ptrtoint ptr %wpa_len to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %wpa_len, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rsn_len) #20
  %1 = ptrtoint ptr %rsn_len to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %rsn_len, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group_cipher) #20
  %2 = ptrtoint ptr %group_cipher to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %group_cipher, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pairwise_cipher) #20
  %3 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pairwise_cipher, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_8021x) #20
  %4 = ptrtoint ptr %is_8021x to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %is_8021x, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wpa_ielen) #20
  %5 = ptrtoint ptr %wpa_ielen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wpa_ielen, align 4
  %6 = ptrtoint ptr %pframe to i32
  %add = add i32 %6, 16
  %7 = inttoptr i32 %add to ptr
  %tobool.not.i = icmp eq ptr %Adapter, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %is_client_associated_to_ap.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

is_client_associated_to_ap.exit:                  ; preds = %entry
  %mlmext_info.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 17
  %8 = ptrtoint ptr %mlmext_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mlmext_info.i, align 4
  %10 = and i32 %9, 16387
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %10)
  %.not = icmp eq i32 %10, 16386
  br i1 %.not, label %if.end, label %is_client_associated_to_ap.exit.cleanup_crit_edge

is_client_associated_to_ap.exit.cleanup_crit_edge: ; preds = %is_client_associated_to_ap.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %is_client_associated_to_ap.exit
  %sub = add i32 %packet_len, -24
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %sub)
  %cmp = icmp ugt i32 %sub, 768
  br i1 %cmp, label %do.body, label %if.end10

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %12 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp3 = icmp ugt i32 %12, 4
  br i1 %cmp3, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #23
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %MacAddress = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 15, i32 6, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress, ptr noundef dereferenceable(6) %7, i32 6) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool12.not = icmp eq i32 %bcmp, 0
  br i1 %tobool12.not, label %if.end28, label %do.body14

do.body14:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %13 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp15 = icmp ugt i32 %13, 4
  br i1 %cmp15, label %do.end19, label %do.body14.cleanup_crit_edge

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #22
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %7, ptr noundef %MacAddress) #23
  br label %cleanup

if.end28:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 2848, i32 noundef 888) #25
  %tobool30.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.end38

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %add39 = add i32 %16, 120
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add39, ptr %call7.i.i, align 8
  %IELength = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call7.i.i, i32 0, i32 11
  %18 = ptrtoint ptr %IELength to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %IELength, align 4
  %IEs = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call7.i.i, i32 0, i32 12
  %add.ptr = getelementptr i8, ptr %pframe, i32 24
  %19 = call ptr @memcpy(ptr %IEs, ptr %add.ptr, i32 %16)
  %add.ptr44 = getelementptr %struct.wlan_bssid_ex, ptr %call7.i.i, i32 0, i32 12, i32 12
  %sub46 = add i32 %16, -12
  %call47 = call ptr @rtw_get_ie(ptr noundef %add.ptr44, i32 noundef 45, ptr noundef nonnull %len, i32 noundef %sub46) #20
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %if.end38.if.end53_crit_edge, label %land.lhs.true

if.end38.if.end53_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end38
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp49.not = icmp eq i32 %21, 0
  br i1 %cmp49.not, label %land.lhs.true.if.end53_crit_edge, label %if.then51

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end53

if.then51:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr52 = getelementptr i8, ptr %call47, i32 2
  %22 = ptrtoint ptr %add.ptr52 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %add.ptr52, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %land.lhs.true.if.end53_crit_edge, %if.end38.if.end53_crit_edge
  %ht_cap_info.0 = phi i16 [ %24, %if.then51 ], [ 0, %land.lhs.true.if.end53_crit_edge ], [ 0, %if.end38.if.end53_crit_edge ]
  %25 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %IELength, align 4
  %sub58 = add i32 %26, -12
  %call59 = call ptr @rtw_get_ie(ptr noundef %add.ptr44, i32 noundef 61, ptr noundef nonnull %len, i32 noundef %sub58) #20
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %if.end53.if.end68_crit_edge, label %land.lhs.true61

if.end53.if.end68_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end68

land.lhs.true61:                                  ; preds = %if.end53
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp62.not = icmp eq i32 %28, 0
  br i1 %cmp62.not, label %land.lhs.true61.if.end68_crit_edge, label %if.then64

land.lhs.true61.if.end68_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end68

if.then64:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr65 = getelementptr i8, ptr %call59, i32 2
  %infos = getelementptr i8, ptr %call59, i32 3
  %29 = ptrtoint ptr %infos to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %infos, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %land.lhs.true61.if.end68_crit_edge, %if.end53.if.end68_crit_edge
  %ht_info_infos_0.0 = phi i8 [ %30, %if.then64 ], [ 0, %land.lhs.true61.if.end68_crit_edge ], [ 0, %if.end53.if.end68_crit_edge ]
  %pht_info.0 = phi ptr [ %add.ptr65, %if.then64 ], [ null, %land.lhs.true61.if.end68_crit_edge ], [ null, %if.end53.if.end68_crit_edge ]
  %conv69 = zext i16 %ht_cap_info.0 to i32
  %BcnInfo = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 15, i32 7
  %ht_cap_info70 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 15, i32 7, i32 4
  %31 = ptrtoint ptr %ht_cap_info70 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ht_cap_info70, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %ht_cap_info.0, i16 %32)
  %cmp72.not = icmp eq i16 %ht_cap_info.0, %32
  br i1 %cmp72.not, label %lor.lhs.false, label %if.end68.do.body83_crit_edge

if.end68.do.body83_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body83

lor.lhs.false:                                    ; preds = %if.end68
  %ht_info_infos_077 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 15, i32 7, i32 5
  %33 = ptrtoint ptr %ht_info_infos_077 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ht_info_infos_077, align 2
  %35 = xor i8 %34, %ht_info_infos_0.0
  %36 = and i8 %35, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp80.not = icmp eq i8 %36, 0
  br i1 %cmp80.not, label %lor.lhs.false.if.end131_crit_edge, label %lor.lhs.false.do.body83_crit_edge

lor.lhs.false.do.body83_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body83

lor.lhs.false.if.end131_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end131

do.body83:                                        ; preds = %lor.lhs.false.do.body83_crit_edge, %if.end68.do.body83_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %37 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %cmp84 = icmp ugt i32 %37, 4
  br i1 %cmp84, label %do.body97, label %do.body83.do.end126_crit_edge

do.body83.do.end126_crit_edge:                    ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end126

do.body97:                                        ; preds = %do.body83
  %conv92 = zext i8 %ht_info_infos_0.0 to i32
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, i32 noundef %conv69, i32 noundef %conv92) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp98 = icmp ugt i32 %.pr, 4
  br i1 %cmp98, label %do.body115, label %do.body97.do.end126_crit_edge

do.body97.do.end126_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end126

do.body115:                                       ; preds = %do.body97
  %38 = ptrtoint ptr %ht_cap_info70 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ht_cap_info70, align 4
  %conv107 = zext i16 %39 to i32
  %ht_info_infos_0109 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 15, i32 7, i32 5
  %40 = ptrtoint ptr %ht_info_infos_0109 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ht_info_infos_0109, align 2
  %conv110 = zext i8 %41 to i32
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.11, i32 noundef %conv107, i32 noundef %conv110) #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr537 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr537)
  %cmp116 = icmp ugt i32 %.pr537, 4
  br i1 %cmp116, label %do.end121, label %do.body115.do.end126_crit_edge

do.body115.do.end126_crit_edge:                   ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end126

do.end121:                                        ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #22
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.11) #23
  br label %do.end126

do.end126:                                        ; preds = %do.end121, %do.body115.do.end126_crit_edge, %do.body97.do.end126_crit_edge, %do.body83.do.end126_crit_edge
  %42 = ptrtoint ptr %ht_cap_info70 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %ht_cap_info.0, ptr %ht_cap_info70, align 4
  %ht_info_infos_0130 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 15, i32 7, i32 5
  %43 = ptrtoint ptr %ht_info_infos_0130 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %ht_info_infos_0.0, ptr %ht_info_infos_0130, align 2
  br label %if.end131

if.end131:                                        ; preds = %do.end126, %lor.lhs.false.if.end131_crit_edge
  %44 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %IELength, align 4
  %sub136 = add i32 %45, -12
  %call137 = call ptr @rtw_get_ie(ptr noundef %add.ptr44, i32 noundef 3, ptr noundef nonnull %len, i32 noundef %sub136) #20
  %tobool138.not = icmp eq ptr %call137, null
  br i1 %tobool138.not, label %if.else142, label %if.then139

if.then139:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr140 = getelementptr i8, ptr %call137, i32 2
  br label %if.end167

if.else142:                                       ; preds = %if.end131
  %46 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %IELength, align 4
  %sub147 = add i32 %47, -12
  %call148 = call ptr @rtw_get_ie(ptr noundef %add.ptr44, i32 noundef 61, ptr noundef nonnull %len, i32 noundef %sub147) #20
  %tobool149.not = icmp eq ptr %pht_info.0, null
  br i1 %tobool149.not, label %do.body153, label %if.else142.if.end167_crit_edge

if.else142.if.end167_crit_edge:                   ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end167

do.body153:                                       ; preds = %if.else142
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %48 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp154 = icmp ugt i32 %48, 4
  br i1 %cmp154, label %do.end159, label %do.body153.do.end164_crit_edge

do.body153.do.end164_crit_edge:                   ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end164

do.end159:                                        ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #22
  %call161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.11) #23
  br label %do.end164

do.end164:                                        ; preds = %do.end159, %do.body153.do.end164_crit_edge
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 4
  br label %if.end167

if.end167:                                        ; preds = %do.end164, %if.else142.if.end167_crit_edge, %if.then139
  %bcn_channel.0.in.in = phi ptr [ %add.ptr140, %if.then139 ], [ %cur_channel, %do.end164 ], [ %pht_info.0, %if.else142.if.end167_crit_edge ]
  %49 = ptrtoint ptr %bcn_channel.0.in.in to i32
  call void @__asan_load1_noabort(i32 %49)
  %bcn_channel.0.in = load i8, ptr %bcn_channel.0.in.in, align 1
  %bcn_channel.0 = zext i8 %bcn_channel.0.in to i32
  %cur_channel169 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 4
  %50 = ptrtoint ptr %cur_channel169 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cur_channel169, align 2
  %conv170 = zext i8 %51 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %bcn_channel.0.in, i8 %51)
  %cmp171.not = icmp eq i8 %bcn_channel.0.in, %51
  br i1 %cmp171.not, label %if.end189, label %do.body174

do.body174:                                       ; preds = %if.end167
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %52 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %cmp175 = icmp ugt i32 %52, 4
  br i1 %cmp175, label %do.end180, label %do.body174._mismatch_crit_edge

do.body174._mismatch_crit_edge:                   ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #22
  br label %_mismatch

do.end180:                                        ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #22
  %call185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.11, i32 noundef %bcn_channel.0, i32 noundef %conv170) #23
  br label %_mismatch

if.end189:                                        ; preds = %if.end167
  %53 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %IELength, align 4
  %sub194 = add i32 %54, -12
  %call195 = call ptr @rtw_get_ie(ptr noundef %add.ptr44, i32 noundef 0, ptr noundef nonnull %len, i32 noundef %sub194) #20
  %tobool196.not = icmp eq ptr %call195, null
  br i1 %tobool196.not, label %do.body198, label %land.lhs.true217

do.body198:                                       ; preds = %if.end189
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %55 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %55)
  %cmp199 = icmp ugt i32 %55, 4
  br i1 %cmp199, label %do.end204, label %do.body198.if.else230_crit_edge

do.body198.if.else230_crit_edge:                  ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else230

do.end204:                                        ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #22
  %call206 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.11) #23
  br label %if.else230

land.lhs.true217:                                 ; preds = %if.end189
  %add.ptr218 = getelementptr i8, ptr %call195, i32 1
  %56 = ptrtoint ptr %add.ptr218 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %add.ptr218, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool220.not = icmp eq i8 %57, 0
  br i1 %tobool220.not, label %land.lhs.true217.if.else230_crit_edge, label %if.then221

land.lhs.true217.if.else230_crit_edge:            ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else230

if.then221:                                       ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #22
  %conv219 = zext i8 %57 to i32
  %Ssid = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call7.i.i, i32 0, i32 3
  %Ssid222 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call7.i.i, i32 0, i32 3, i32 1
  %add.ptr224 = getelementptr i8, ptr %call195, i32 2
  %58 = call ptr @memcpy(ptr %Ssid222, ptr %add.ptr224, i32 %conv219)
  %59 = ptrtoint ptr %add.ptr218 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %add.ptr218, align 1
  %conv228 = zext i8 %60 to i32
  %61 = ptrtoint ptr %Ssid to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv228, ptr %Ssid, align 4
  br label %if.end236

if.else230:                                       ; preds = %land.lhs.true217.if.else230_crit_edge, %do.end204, %do.body198.if.else230_crit_edge
  %Ssid231 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call7.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %Ssid231 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %Ssid231, align 4
  %Ssid234 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call7.i.i, i32 0, i32 3, i32 1
  %63 = ptrtoint ptr %Ssid234 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %Ssid234, align 8
  br label %if.end236

if.end236:                                        ; preds = %if.else230, %if.then221
  %Ssid237 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call7.i.i, i32 0, i32 3
  %Ssid238 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call7.i.i, i32 0, i32 3, i32 1
  %Ssid242 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 15, i32 6, i32 3, i32 1
  %bcmp532 = call i32 @bcmp(ptr noundef dereferenceable(32) %Ssid238, ptr noundef dereferenceable(32) %Ssid242, i32 32) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp532)
  %tobool245.not = icmp eq i32 %bcmp532, 0
  br i1 %tobool245.not, label %lor.lhs.false246, label %if.end236.if.then254_crit_edge

if.end236.if.then254_crit_edge:                   ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then254

lor.lhs.false246:                                 ; preds = %if.end236
  %Ssid241 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 15, i32 6, i32 3
  %64 = ptrtoint ptr %Ssid237 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %Ssid237, align 4
  %66 = ptrtoint ptr %Ssid241 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %Ssid241, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp252.not = icmp eq i32 %65, %67
  br i1 %cmp252.not, label %lor.lhs.false246.if.end280_crit_edge, label %lor.lhs.false246.if.then254_crit_edge

lor.lhs.false246.if.then254_crit_edge:            ; preds = %lor.lhs.false246
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then254

lor.lhs.false246.if.end280_crit_edge:             ; preds = %lor.lhs.false246
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end280

if.then254:                                       ; preds = %lor.lhs.false246.if.then254_crit_edge, %if.end236.if.then254_crit_edge
  %68 = ptrtoint ptr %Ssid238 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %Ssid238, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp259.not = icmp eq i8 %69, 0
  br i1 %cmp259.not, label %if.then254.if.end280_crit_edge, label %land.lhs.true261

if.then254.if.end280_crit_edge:                   ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end280

land.lhs.true261:                                 ; preds = %if.then254
  %70 = ptrtoint ptr %Ssid237 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %Ssid237, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp264.not = icmp eq i32 %71, 0
  br i1 %cmp264.not, label %land.lhs.true261.if.end280_crit_edge, label %do.body267

land.lhs.true261.if.end280_crit_edge:             ; preds = %land.lhs.true261
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end280

do.body267:                                       ; preds = %land.lhs.true261
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %72 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %cmp268 = icmp ugt i32 %72, 4
  br i1 %cmp268, label %do.end273, label %do.body267._mismatch_crit_edge

do.body267._mismatch_crit_edge:                   ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #22
  br label %_mismatch

do.end273:                                        ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #22
  %call275 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.11) #23
  br label %_mismatch

if.end280:                                        ; preds = %land.lhs.true261.if.end280_crit_edge, %if.then254.if.end280_crit_edge, %lor.lhs.false246.if.end280_crit_edge
  %call281 = call zeroext i16 @rtw_get_capability(ptr noundef nonnull %call7.i.i) #20
  %73 = lshr i16 %call281, 4
  %.lobit = and i16 %73, 1
  %74 = zext i16 %.lobit to i32
  %75 = getelementptr inbounds %struct.wlan_bssid_ex, ptr %call7.i.i, i32 0, i32 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %74, ptr %75, align 8
  %Privacy290 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 15, i32 6, i32 4
  %77 = ptrtoint ptr %Privacy290 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %Privacy290, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %74)
  %cmp292.not = icmp eq i32 %78, %74
  br i1 %cmp292.not, label %if.end307, label %do.body295

do.body295:                                       ; preds = %if.end280
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %79 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %79)
  %cmp296 = icmp ugt i32 %79, 4
  br i1 %cmp296, label %do.end301, label %do.body295._mismatch_crit_edge

do.body295._mismatch_crit_edge:                   ; preds = %do.body295
  call void @__sanitizer_cov_trace_pc() #22
  br label %_mismatch

do.end301:                                        ; preds = %do.body295
  call void @__sanitizer_cov_trace_pc() #22
  %call303 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.11) #23
  br label %_mismatch

if.end307:                                        ; preds = %if.end280
  %80 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %IELength, align 4
  %call311 = call i32 @rtw_get_sec_ie(ptr noundef %IEs, i32 noundef %81, ptr noundef null, ptr noundef nonnull %rsn_len, ptr noundef null, ptr noundef nonnull %wpa_len) #20
  %82 = ptrtoint ptr %rsn_len to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %rsn_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %cmp313.not = icmp eq i16 %83, 0
  br i1 %cmp313.not, label %if.else316, label %if.end307.if.end327_crit_edge

if.end307.if.end327_crit_edge:                    ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end327

if.else316:                                       ; preds = %if.end307
  %84 = ptrtoint ptr %wpa_len to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %wpa_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %cmp318.not = icmp eq i16 %85, 0
  br i1 %cmp318.not, label %if.else321, label %if.else316.if.end327_crit_edge

if.else316.if.end327_crit_edge:                   ; preds = %if.else316
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end327

if.else321:                                       ; preds = %if.else316
  call void @__sanitizer_cov_trace_pc() #22
  %86 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %75, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool323.not = icmp ne i32 %87, 0
  %spec.select = zext i1 %tobool323.not to i32
  br label %if.end327

if.end327:                                        ; preds = %if.else321, %if.else316.if.end327_crit_edge, %if.end307.if.end327_crit_edge
  %cmp349 = phi i1 [ false, %if.end307.if.end327_crit_edge ], [ true, %if.else316.if.end327_crit_edge ], [ false, %if.else321 ]
  %encryp_protocol.0 = phi i32 [ 3, %if.end307.if.end327_crit_edge ], [ 2, %if.else316.if.end327_crit_edge ], [ %spec.select, %if.else321 ]
  %88 = ptrtoint ptr %BcnInfo to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %BcnInfo, align 4
  %conv330 = zext i8 %89 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %encryp_protocol.0, i32 %conv330)
  %cmp332.not = icmp eq i32 %encryp_protocol.0, %conv330
  br i1 %cmp332.not, label %if.end347, label %do.body335

do.body335:                                       ; preds = %if.end327
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %90 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %90)
  %cmp336 = icmp ugt i32 %90, 4
  br i1 %cmp336, label %do.end341, label %do.body335._mismatch_crit_edge

do.body335._mismatch_crit_edge:                   ; preds = %do.body335
  call void @__sanitizer_cov_trace_pc() #22
  br label %_mismatch

do.end341:                                        ; preds = %do.body335
  call void @__sanitizer_cov_trace_pc() #22
  %call343 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.11) #23
  br label %_mismatch

if.end347:                                        ; preds = %if.end327
  %cmp313.not.not = xor i1 %cmp313.not, true
  %brmerge = select i1 %cmp349, i1 true, i1 %cmp313.not.not
  br i1 %brmerge, label %if.then355, label %if.end347.if.end428_crit_edge

if.end347.if.end428_crit_edge:                    ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end428

if.then355:                                       ; preds = %if.end347
  %91 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %IELength, align 4
  %sub359 = add i32 %92, -12
  %call360 = call ptr @rtw_get_wpa_ie(ptr noundef %add.ptr44, ptr noundef nonnull %wpa_ielen, i32 noundef %sub359) #20
  %tobool361.not = icmp eq ptr %call360, null
  br i1 %tobool361.not, label %if.then355.if.else368_crit_edge, label %land.lhs.true362

if.then355.if.else368_crit_edge:                  ; preds = %if.then355
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else368

land.lhs.true362:                                 ; preds = %if.then355
  %93 = ptrtoint ptr %wpa_ielen to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %wpa_ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp363.not = icmp eq i32 %94, 0
  br i1 %cmp363.not, label %land.lhs.true362.if.else368_crit_edge, label %if.then365

land.lhs.true362.if.else368_crit_edge:            ; preds = %land.lhs.true362
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else368

if.then365:                                       ; preds = %land.lhs.true362
  call void @__sanitizer_cov_trace_pc() #22
  %add366 = add i32 %94, 2
  %call367 = call i32 @rtw_parse_wpa_ie(ptr noundef nonnull %call360, i32 noundef %add366, ptr noundef nonnull %group_cipher, ptr noundef nonnull %pairwise_cipher, ptr noundef nonnull %is_8021x) #20
  br label %if.end382

if.else368:                                       ; preds = %land.lhs.true362.if.else368_crit_edge, %if.then355.if.else368_crit_edge
  %95 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %IELength, align 4
  %sub372 = add i32 %96, -12
  %call373 = call ptr @rtw_get_wpa2_ie(ptr noundef %add.ptr44, ptr noundef nonnull %wpa_ielen, i32 noundef %sub372) #20
  %tobool374.not = icmp eq ptr %call373, null
  br i1 %tobool374.not, label %if.else368.if.end382_crit_edge, label %land.lhs.true375

if.else368.if.end382_crit_edge:                   ; preds = %if.else368
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end382

land.lhs.true375:                                 ; preds = %if.else368
  %97 = ptrtoint ptr %wpa_ielen to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %wpa_ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp376.not = icmp eq i32 %98, 0
  br i1 %cmp376.not, label %land.lhs.true375.if.end382_crit_edge, label %if.then378

land.lhs.true375.if.end382_crit_edge:             ; preds = %land.lhs.true375
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end382

if.then378:                                       ; preds = %land.lhs.true375
  call void @__sanitizer_cov_trace_pc() #22
  %add379 = add i32 %98, 2
  %call380 = call i32 @rtw_parse_wpa2_ie(ptr noundef nonnull %call373, i32 noundef %add379, ptr noundef nonnull %group_cipher, ptr noundef nonnull %pairwise_cipher, ptr noundef nonnull %is_8021x) #20
  br label %if.end382

if.end382:                                        ; preds = %if.then378, %land.lhs.true375.if.end382_crit_edge, %if.else368.if.end382_crit_edge, %if.then365
  %99 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pairwise_cipher, align 4
  %pairwise_cipher384 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 15, i32 7, i32 2
  %101 = ptrtoint ptr %pairwise_cipher384 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pairwise_cipher384, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %cmp385.not = icmp eq i32 %100, %102
  br i1 %cmp385.not, label %lor.lhs.false387, label %if.end382.do.body393_crit_edge

if.end382.do.body393_crit_edge:                   ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body393

lor.lhs.false387:                                 ; preds = %if.end382
  %103 = ptrtoint ptr %group_cipher to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %group_cipher, align 4
  %group_cipher389 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 15, i32 7, i32 1
  %105 = ptrtoint ptr %group_cipher389 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %group_cipher389, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %106)
  %cmp390.not = icmp eq i32 %104, %106
  br i1 %cmp390.not, label %if.end409, label %lor.lhs.false387.do.body393_crit_edge

lor.lhs.false387.do.body393_crit_edge:            ; preds = %lor.lhs.false387
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body393

do.body393:                                       ; preds = %lor.lhs.false387.do.body393_crit_edge, %if.end382.do.body393_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %107 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %107)
  %cmp394 = icmp ugt i32 %107, 4
  br i1 %cmp394, label %do.end399, label %do.body393._mismatch_crit_edge

do.body393._mismatch_crit_edge:                   ; preds = %do.body393
  call void @__sanitizer_cov_trace_pc() #22
  br label %_mismatch

do.end399:                                        ; preds = %do.body393
  call void @__sanitizer_cov_trace_pc() #22
  %108 = ptrtoint ptr %group_cipher to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %group_cipher, align 4
  %group_cipher404 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 15, i32 7, i32 1
  %110 = ptrtoint ptr %group_cipher404 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %group_cipher404, align 4
  %call405 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.11, i32 noundef %100, i32 noundef %102, i32 noundef %109, i32 noundef %111) #23
  br label %_mismatch

if.end409:                                        ; preds = %lor.lhs.false387
  %112 = ptrtoint ptr %is_8021x to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %is_8021x, align 4
  %is_8021x411 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 15, i32 7, i32 3
  %114 = ptrtoint ptr %is_8021x411 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %is_8021x411, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %115)
  %cmp412.not = icmp eq i32 %113, %115
  br i1 %cmp412.not, label %if.end409.if.end428_crit_edge, label %do.body415

if.end409.if.end428_crit_edge:                    ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end428

do.body415:                                       ; preds = %if.end409
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %116 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %116)
  %cmp416 = icmp ugt i32 %116, 4
  br i1 %cmp416, label %do.end421, label %do.body415._mismatch_crit_edge

do.body415._mismatch_crit_edge:                   ; preds = %do.body415
  call void @__sanitizer_cov_trace_pc() #22
  br label %_mismatch

do.end421:                                        ; preds = %do.body415
  call void @__sanitizer_cov_trace_pc() #22
  %call423 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.11) #23
  br label %_mismatch

if.end428:                                        ; preds = %if.end409.if.end428_crit_edge, %if.end347.if.end428_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #20
  br label %cleanup

_mismatch:                                        ; preds = %do.end421, %do.body415._mismatch_crit_edge, %do.end399, %do.body393._mismatch_crit_edge, %do.end341, %do.body335._mismatch_crit_edge, %do.end301, %do.body295._mismatch_crit_edge, %do.end273, %do.body267._mismatch_crit_edge, %do.end180, %do.body174._mismatch_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #20
  br label %cleanup

cleanup:                                          ; preds = %_mismatch, %if.end428, %if.end28.cleanup_crit_edge, %do.end19, %do.body14.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %is_client_associated_to_ap.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %_mismatch ], [ 1, %if.end428 ], [ 1, %is_client_associated_to_ap.exit.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 1, %do.end19 ], [ 1, %do.body14.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wpa_ielen) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_8021x) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pairwise_cipher) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group_cipher) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rsn_len) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wpa_len) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #20
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_ie(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw_get_capability(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_sec_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_wpa_ie(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_parse_wpa_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_wpa2_ie(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_parse_wpa2_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_beacon_info(ptr noundef %padapter, ptr noundef readonly %pframe, i32 noundef %pkt_len, ptr nocapture noundef writeonly %psta) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %pkt_len, -36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp21.not = icmp eq i32 %sub, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr = getelementptr i8, ptr %pframe, i32 36
  %ERP_enable.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 18
  %ERP_IE.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 19
  %vrtl_carrier_sense.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 11
  %vcs_type.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 12
  %rtsen4.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 24
  %cts2self26.i = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 23
  %htpriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26
  %cbw40_enable.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 38
  %cur_bwmode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 5
  %cur_ch_offset.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 6
  %bwmode_updated.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 32
  %HT_info_enable.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 22
  %HT_info.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 37
  %stapriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %MacAddress.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 38, i32 1
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %add4, %sw.epilog.for.body_crit_edge ]
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %i.022
  %0 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr1, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.111)
  switch i8 %1, label %for.body.sw.epilog_crit_edge [
    i8 61, label %sw.bb
    i8 42, label %sw.bb2
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %tobool.not.i = icmp eq ptr %add.ptr1, null
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.end3.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end3.i:                                        ; preds = %sw.bb
  %Length.i = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %add.ptr1, i32 0, i32 1
  %3 = ptrtoint ptr %Length.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %Length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %4)
  %cmp.i = icmp ugt i8 %4, 22
  br i1 %cmp.i, label %if.end3.i.sw.epilog_crit_edge, label %if.end6.i

if.end3.i.sw.epilog_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end6.i:                                        ; preds = %if.end3.i
  %infos.i = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %add.ptr1, i32 1
  %5 = ptrtoint ptr %infos.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %infos.i, align 1
  %conv7.i = zext i8 %6 to i32
  %and.i = and i32 %conv7.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end17.i_crit_edge, label %land.lhs.true.i

if.end6.i.if.end17.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %7 = ptrtoint ptr %cbw40_enable.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cbw40_enable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool10.not.i = icmp eq i8 %8, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.if.end17.i_crit_edge, label %if.then11.i

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  %and15.i = and i32 %conv7.i, 3
  %9 = zext i32 %and15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %and15.i, label %sw.default.i [
    i32 1, label %if.then11.i.if.end17.i_crit_edge
    i32 3, label %sw.bb16.i
  ]

if.then11.i.if.end17.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17.i

sw.bb16.i:                                        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17.i

sw.default.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17.i

if.end17.i:                                       ; preds = %sw.default.i, %sw.bb16.i, %if.then11.i.if.end17.i_crit_edge, %land.lhs.true.i.if.end17.i_crit_edge, %if.end6.i.if.end17.i_crit_edge
  %new_ch_offset.0.i = phi i8 [ 0, %sw.default.i ], [ 2, %sw.bb16.i ], [ 1, %if.then11.i.if.end17.i_crit_edge ], [ 0, %land.lhs.true.i.if.end17.i_crit_edge ], [ 0, %if.end6.i.if.end17.i_crit_edge ]
  %new_bwmode.0.i = phi i8 [ 1, %sw.default.i ], [ 1, %sw.bb16.i ], [ 1, %if.then11.i.if.end17.i_crit_edge ], [ 0, %land.lhs.true.i.if.end17.i_crit_edge ], [ 0, %if.end6.i.if.end17.i_crit_edge ]
  %10 = ptrtoint ptr %cur_bwmode.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cur_bwmode.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %new_bwmode.0.i, i8 %11)
  %cmp20.not.i = icmp eq i8 %new_bwmode.0.i, %11
  br i1 %cmp20.not.i, label %lor.lhs.false.i, label %if.end17.i.if.end.i.i_crit_edge

if.end17.i.if.end.i.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

lor.lhs.false.i:                                  ; preds = %if.end17.i
  %12 = ptrtoint ptr %cur_ch_offset.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cur_ch_offset.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %new_ch_offset.0.i, i8 %13)
  %cmp24.not.i = icmp eq i8 %new_ch_offset.0.i, %13
  br i1 %cmp24.not.i, label %if.end31.i.thread, label %lor.lhs.false.i.if.end.i.i_crit_edge

lor.lhs.false.i.if.end.i.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.if.end.i.i_crit_edge, %if.end17.i.if.end.i.i_crit_edge
  %14 = ptrtoint ptr %bwmode_updated.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %bwmode_updated.i, align 4
  %15 = ptrtoint ptr %cur_bwmode.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %new_bwmode.0.i, ptr %cur_bwmode.i, align 1
  %16 = ptrtoint ptr %cur_ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %new_ch_offset.0.i, ptr %cur_ch_offset.i, align 8
  %17 = ptrtoint ptr %htpriv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %htpriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool1.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.then34.i_crit_edge, label %if.end3.i.i

if.end.i.i.if.then34.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then34.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %19 = ptrtoint ptr %Length.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %Length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %20)
  %cmp.i.i = icmp ugt i8 %20, 22
  br i1 %cmp.i.i, label %if.end3.i.i.if.end31.i_crit_edge, label %if.end6.i.i

if.end3.i.i.if.end31.i_crit_edge:                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end31.i

if.end6.i.i:                                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %21 = ptrtoint ptr %HT_info_enable.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %HT_info_enable.i.i, align 2
  %data.i.i = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %add.ptr1, i32 0, i32 2
  %22 = ptrtoint ptr %Length.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %Length.i, align 1
  %conv8.i.i = zext i8 %23 to i32
  %24 = call ptr @memcpy(ptr %HT_info.i.i, ptr %data.i.i, i32 %conv8.i.i)
  br label %if.end31.i

if.end31.i.thread:                                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #22
  %25 = ptrtoint ptr %bwmode_updated.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %bwmode_updated.i, align 4
  br label %sw.epilog

if.end31.i:                                       ; preds = %if.end6.i.i, %if.end3.i.i.if.end31.i_crit_edge
  %26 = ptrtoint ptr %bwmode_updated.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %.pr = load i8, ptr %bwmode_updated.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool33.not.i = icmp eq i8 %.pr, 0
  br i1 %tobool33.not.i, label %if.end31.i.sw.epilog_crit_edge, label %if.end31.i.if.then34.i_crit_edge

if.end31.i.if.then34.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then34.i

if.end31.i.sw.epilog_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then34.i:                                      ; preds = %if.end31.i.if.then34.i_crit_edge, %if.end.i.i.if.then34.i_crit_edge
  %call.i = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv.i, ptr noundef %MacAddress.i) #20
  %tobool36.not.i = icmp eq ptr %call.i, null
  br i1 %tobool36.not.i, label %if.then34.i.sw.epilog_crit_edge, label %if.then37.i

if.then34.i.sw.epilog_crit_edge:                  ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then37.i:                                      ; preds = %if.then34.i
  %htpriv38.i = getelementptr inbounds %struct.sta_info, ptr %call.i, i32 0, i32 33
  %27 = ptrtoint ptr %htpriv38.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %htpriv38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool39.not.i = icmp eq i32 %28, 0
  br i1 %tobool39.not.i, label %if.else43.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #22
  %29 = ptrtoint ptr %cur_bwmode.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cur_bwmode.i, align 1
  %bwmode.i = getelementptr inbounds %struct.sta_info, ptr %call.i, i32 0, i32 33, i32 5
  %31 = ptrtoint ptr %bwmode.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %bwmode.i, align 4
  %32 = ptrtoint ptr %cur_ch_offset.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cur_ch_offset.i, align 8
  br label %cleanup.sink.split.i

if.else43.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #22
  %bwmode44.i = getelementptr inbounds %struct.sta_info, ptr %call.i, i32 0, i32 33, i32 5
  %34 = ptrtoint ptr %bwmode44.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %bwmode44.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else43.i, %if.then40.i
  %.sink.i = phi i8 [ %33, %if.then40.i ], [ 0, %if.else43.i ]
  %ch_offset.i = getelementptr inbounds %struct.sta_info, ptr %call.i, i32 0, i32 33, i32 6
  %35 = ptrtoint ptr %ch_offset.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink.i, ptr %ch_offset.i, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %for.body
  %Length.i12 = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %add.ptr1, i32 0, i32 1
  %36 = ptrtoint ptr %Length.i12 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %Length.i12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp.i13 = icmp ugt i8 %37, 1
  br i1 %cmp.i13, label %sw.bb2.ERP_IE_handler.exit_crit_edge, label %if.end.i

sw.bb2.ERP_IE_handler.exit_crit_edge:             ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #22
  br label %ERP_IE_handler.exit

if.end.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #22
  %38 = ptrtoint ptr %ERP_enable.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %ERP_enable.i, align 2
  %data.i = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %add.ptr1, i32 0, i32 2
  %39 = ptrtoint ptr %Length.i12 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %Length.i12, align 1
  %conv3.i = zext i8 %40 to i32
  %41 = call ptr @memcpy(ptr %ERP_IE.i, ptr %data.i, i32 %conv3.i)
  br label %ERP_IE_handler.exit

ERP_IE_handler.exit:                              ; preds = %if.end.i, %sw.bb2.ERP_IE_handler.exit_crit_edge
  %42 = ptrtoint ptr %vrtl_carrier_sense.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %vrtl_carrier_sense.i, align 2
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.113)
  switch i8 %43, label %sw.default.i17 [
    i8 0, label %ERP_IE_handler.exit.VCS_update.exit_crit_edge
    i8 1, label %sw.bb1.i
  ]

ERP_IE_handler.exit.VCS_update.exit_crit_edge:    ; preds = %ERP_IE_handler.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %VCS_update.exit

sw.bb1.i:                                         ; preds = %ERP_IE_handler.exit
  call void @__sanitizer_cov_trace_pc() #22
  %45 = ptrtoint ptr %vcs_type.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %vcs_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp.i14 = icmp eq i8 %46, 1
  %not.cmp.i14 = xor i1 %cmp.i14, true
  br label %VCS_update.exit

sw.default.i17:                                   ; preds = %ERP_IE_handler.exit
  %47 = ptrtoint ptr %ERP_enable.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ERP_enable.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i16 = icmp eq i8 %48, 0
  br i1 %tobool.not.i16, label %sw.default.i17.VCS_update.exit_crit_edge, label %land.lhs.true.i19

sw.default.i17.VCS_update.exit_crit_edge:         ; preds = %sw.default.i17
  call void @__sanitizer_cov_trace_pc() #22
  br label %VCS_update.exit

land.lhs.true.i19:                                ; preds = %sw.default.i17
  %49 = ptrtoint ptr %ERP_IE.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ERP_IE.i, align 1
  %51 = and i8 %50, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool11.not.i = icmp eq i8 %51, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i19.VCS_update.exit_crit_edge, label %if.then12.i

land.lhs.true.i19.VCS_update.exit_crit_edge:      ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #22
  br label %VCS_update.exit

if.then12.i:                                      ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #22
  %52 = ptrtoint ptr %vcs_type.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %vcs_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %53)
  %cmp15.i = icmp eq i8 %53, 1
  %not.cmp15.i = xor i1 %cmp15.i, true
  br label %VCS_update.exit

VCS_update.exit:                                  ; preds = %if.then12.i, %land.lhs.true.i19.VCS_update.exit_crit_edge, %sw.default.i17.VCS_update.exit_crit_edge, %sw.bb1.i, %ERP_IE_handler.exit.VCS_update.exit_crit_edge
  %.sink.shrunk = phi i1 [ false, %ERP_IE_handler.exit.VCS_update.exit_crit_edge ], [ %cmp.i14, %sw.bb1.i ], [ %cmp15.i, %if.then12.i ], [ false, %land.lhs.true.i19.VCS_update.exit_crit_edge ], [ false, %sw.default.i17.VCS_update.exit_crit_edge ]
  %.sink.i20.shrunk = phi i1 [ false, %ERP_IE_handler.exit.VCS_update.exit_crit_edge ], [ %not.cmp.i14, %sw.bb1.i ], [ %not.cmp15.i, %if.then12.i ], [ false, %land.lhs.true.i19.VCS_update.exit_crit_edge ], [ false, %sw.default.i17.VCS_update.exit_crit_edge ]
  %.sink.i20 = zext i1 %.sink.i20.shrunk to i8
  %.sink = zext i1 %.sink.shrunk to i8
  %54 = ptrtoint ptr %rtsen4.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %.sink, ptr %rtsen4.i, align 1
  %55 = ptrtoint ptr %cts2self26.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %.sink.i20, ptr %cts2self26.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %VCS_update.exit, %cleanup.sink.split.i, %if.then34.i.sw.epilog_crit_edge, %if.end31.i.sw.epilog_crit_edge, %if.end31.i.thread, %if.end3.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %Length = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %add.ptr1, i32 0, i32 1
  %56 = ptrtoint ptr %Length to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %Length, align 1
  %conv3 = zext i8 %57 to i32
  %add = add i32 %i.022, 2
  %add4 = add i32 %add, %conv3
  %cmp = icmp ult i32 %add4, %sub
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @is_ap_in_tkip(ptr noundef %padapter) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 38
  %call = tail call zeroext i16 @rtw_get_capability(ptr noundef %network) #20
  %0 = and i16 %call, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %IEs = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 38, i32 12
  %IELength = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 38, i32 11
  %1 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %IELength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %cmp38 = icmp ugt i32 %2, 12
  br i1 %cmp38, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.039 = phi i32 [ %add23, %sw.epilog.for.body_crit_edge ], [ 12, %for.cond.preheader.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %IEs, i32 %i.039
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %add.ptr, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %4, label %for.body.sw.epilog_crit_edge [
    i8 -35, label %sw.bb
    i8 48, label %sw.bb14
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %data = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %add.ptr, i32 0, i32 2
  %bcmp36 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %data, ptr noundef nonnull dereferenceable(4) @RTW_WPA_OUI, i32 4) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp36)
  %tobool7.not = icmp eq i32 %bcmp36, 0
  br i1 %tobool7.not, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %add.ptr10 = getelementptr i8, ptr %data, i32 12
  %bcmp37 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr10, ptr noundef nonnull dereferenceable(4) @WPA_TKIP_CIPHER, i32 4) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp37)
  %tobool12.not = icmp eq i32 %bcmp37, 0
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.bb14:                                          ; preds = %for.body
  %data15 = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %add.ptr, i32 0, i32 2
  %add.ptr17 = getelementptr i8, ptr %data15, i32 8
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr17, ptr noundef nonnull dereferenceable(4) @RSN_TKIP_CIPHER, i32 4) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool19.not = icmp eq i32 %bcmp, 0
  br i1 %tobool19.not, label %sw.bb14.cleanup_crit_edge, label %sw.bb14.sw.epilog_crit_edge

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb14.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %Length = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %add.ptr, i32 0, i32 1
  %6 = ptrtoint ptr %Length to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %Length, align 1
  %conv22 = zext i8 %7 to i32
  %add = add i32 %i.039, 2
  %add23 = add i32 %add, %conv22
  %cmp = icmp ult i32 %add23, %2
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %sw.bb14.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @wifirate2_ratetbl_inx(i8 noundef zeroext %rate) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %rate, 127
  %conv2 = zext i8 %0 to i32
  %1 = zext i32 %conv2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %conv2, label %entry.sw.epilog_crit_edge [
    i32 108, label %sw.bb
    i32 96, label %sw.bb3
    i32 72, label %sw.bb4
    i32 48, label %sw.bb5
    i32 36, label %sw.bb6
    i32 24, label %sw.bb7
    i32 18, label %sw.bb8
    i32 12, label %sw.bb9
    i32 22, label %sw.bb10
    i32 11, label %sw.bb11
    i32 4, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %inx.0 = phi i32 [ 1, %sw.bb12 ], [ 2, %sw.bb11 ], [ 3, %sw.bb10 ], [ 4, %sw.bb9 ], [ 5, %sw.bb8 ], [ 6, %sw.bb7 ], [ 7, %sw.bb6 ], [ 8, %sw.bb5 ], [ 9, %sw.bb4 ], [ 10, %sw.bb3 ], [ 11, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  ret i32 %inx.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @update_basic_rate(ptr nocapture noundef readonly %ptn, i32 noundef %ptn_sz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %ptn_sz, i32 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp19.not = icmp eq i32 %0, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %mask.011 = phi i32 [ %mask.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.010 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %ptn, i32 %i.010
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %tobool.not = icmp sgt i8 %2, -1
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %call = tail call i32 @wifirate2_ratetbl_inx(i8 noundef zeroext %2)
  %shl = shl nuw i32 1, %call
  %or = or i32 %shl, %mask.011
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %mask.1 = phi i32 [ %or, %if.then ], [ %mask.011, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %mask.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %mask.1, %for.inc.for.end_crit_edge ]
  ret i32 %mask.0.lcssa
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @update_supported_rate(ptr nocapture noundef readonly %ptn, i32 noundef %ptn_sz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %ptn_sz, i32 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp16.not = icmp eq i32 %0, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %mask.08 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %ptn, i32 %i.07
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %add.ptr, align 1
  %call = tail call i32 @wifirate2_ratetbl_inx(i8 noundef zeroext %2)
  %shl = shl nuw i32 1, %call
  %or = or i32 %shl, %mask.08
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %mask.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  ret i32 %mask.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @update_MSC_rate(ptr nocapture noundef readonly %pHT_caps) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %MCS_rate = getelementptr inbounds %struct.anon.100, ptr %pHT_caps, i32 0, i32 2
  %0 = ptrtoint ptr %MCS_rate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %MCS_rate, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 12
  %arrayidx3 = getelementptr %struct.anon.100, ptr %pHT_caps, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %shl5 = shl nuw nsw i32 %conv4, 20
  %or = or i32 %shl5, %shl
  ret i32 %or
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @support_short_GI(ptr nocapture noundef readonly %padapter, ptr nocapture noundef readonly %pHT_caps) local_unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %HT_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 20
  %0 = ptrtoint ptr %HT_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %HT_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %assoc_AP_vendor = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 14
  %2 = ptrtoint ptr %assoc_AP_vendor to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %assoc_AP_vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp eq i8 %3, 4
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %cur_bwmode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 5
  %4 = ptrtoint ptr %cur_bwmode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cur_bwmode, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  %7 = ptrtoint ptr %pHT_caps to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %pHT_caps, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv7 = zext i16 %9 to i32
  %shl = select i1 %tobool5.not, i32 32, i32 64
  %and9 = and i32 %shl, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp ne i32 %and9, 0
  %. = zext i1 %tobool10.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %., %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @get_highest_rate_idx(i32 noundef %mask) local_unnamed_addr #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc:                                          ; preds = %entry
  %and.1 = and i32 %mask, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %and.2 = and i32 %mask, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %and.3 = and i32 %mask, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %and.4 = and i32 %mask, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %and.5 = and i32 %mask, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %and.6 = and i32 %mask, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.for.end_crit_edge

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %and.7 = and i32 %mask, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.7, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %and.8 = and i32 %mask, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %for.inc.8, label %for.inc.7.for.end_crit_edge

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %and.9 = and i32 %mask, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool.not.9, label %for.inc.9, label %for.inc.8.for.end_crit_edge

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %and.10 = and i32 %mask, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.10)
  %tobool.not.10 = icmp eq i32 %and.10, 0
  br i1 %tobool.not.10, label %for.inc.10, label %for.inc.9.for.end_crit_edge

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %and.11 = and i32 %mask, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.11)
  %tobool.not.11 = icmp eq i32 %and.11, 0
  br i1 %tobool.not.11, label %for.inc.11, label %for.inc.10.for.end_crit_edge

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  %and.12 = and i32 %mask, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.12)
  %tobool.not.12 = icmp eq i32 %and.12, 0
  br i1 %tobool.not.12, label %for.inc.12, label %for.inc.11.for.end_crit_edge

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.12:                                       ; preds = %for.inc.11
  %and.13 = and i32 %mask, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.13)
  %tobool.not.13 = icmp eq i32 %and.13, 0
  br i1 %tobool.not.13, label %for.inc.13, label %for.inc.12.for.end_crit_edge

for.inc.12.for.end_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.13:                                       ; preds = %for.inc.12
  %and.14 = and i32 %mask, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.14)
  %tobool.not.14 = icmp eq i32 %and.14, 0
  br i1 %tobool.not.14, label %for.inc.14, label %for.inc.13.for.end_crit_edge

for.inc.13.for.end_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.14:                                       ; preds = %for.inc.13
  %and.15 = and i32 %mask, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.15)
  %tobool.not.15 = icmp eq i32 %and.15, 0
  br i1 %tobool.not.15, label %for.inc.15, label %for.inc.14.for.end_crit_edge

for.inc.14.for.end_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.15:                                       ; preds = %for.inc.14
  %and.16 = and i32 %mask, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.16)
  %tobool.not.16 = icmp eq i32 %and.16, 0
  br i1 %tobool.not.16, label %for.inc.16, label %for.inc.15.for.end_crit_edge

for.inc.15.for.end_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.16:                                       ; preds = %for.inc.15
  %and.17 = and i32 %mask, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.17)
  %tobool.not.17 = icmp eq i32 %and.17, 0
  br i1 %tobool.not.17, label %for.inc.17, label %for.inc.16.for.end_crit_edge

for.inc.16.for.end_crit_edge:                     ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.17:                                       ; preds = %for.inc.16
  %and.18 = and i32 %mask, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.18)
  %tobool.not.18 = icmp eq i32 %and.18, 0
  br i1 %tobool.not.18, label %for.inc.18, label %for.inc.17.for.end_crit_edge

for.inc.17.for.end_crit_edge:                     ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.18:                                       ; preds = %for.inc.17
  %and.19 = and i32 %mask, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.19)
  %tobool.not.19 = icmp eq i32 %and.19, 0
  br i1 %tobool.not.19, label %for.inc.19, label %for.inc.18.for.end_crit_edge

for.inc.18.for.end_crit_edge:                     ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.19:                                       ; preds = %for.inc.18
  %and.20 = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.20)
  %tobool.not.20 = icmp eq i32 %and.20, 0
  br i1 %tobool.not.20, label %for.inc.20, label %for.inc.19.for.end_crit_edge

for.inc.19.for.end_crit_edge:                     ; preds = %for.inc.19
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.20:                                       ; preds = %for.inc.19
  %and.21 = and i32 %mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.21)
  %tobool.not.21 = icmp eq i32 %and.21, 0
  br i1 %tobool.not.21, label %for.inc.21, label %for.inc.20.for.end_crit_edge

for.inc.20.for.end_crit_edge:                     ; preds = %for.inc.20
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.21:                                       ; preds = %for.inc.20
  %and.22 = and i32 %mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.22)
  %tobool.not.22 = icmp eq i32 %and.22, 0
  br i1 %tobool.not.22, label %for.inc.22, label %for.inc.21.for.end_crit_edge

for.inc.21.for.end_crit_edge:                     ; preds = %for.inc.21
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.22:                                       ; preds = %for.inc.21
  %and.23 = and i32 %mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.23)
  %tobool.not.23 = icmp eq i32 %and.23, 0
  br i1 %tobool.not.23, label %for.inc.23, label %for.inc.22.for.end_crit_edge

for.inc.22.for.end_crit_edge:                     ; preds = %for.inc.22
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.23:                                       ; preds = %for.inc.22
  %and.24 = and i32 %mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.24)
  %tobool.not.24 = icmp eq i32 %and.24, 0
  br i1 %tobool.not.24, label %for.inc.24, label %for.inc.23.for.end_crit_edge

for.inc.23.for.end_crit_edge:                     ; preds = %for.inc.23
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.24:                                       ; preds = %for.inc.23
  %and.25 = and i32 %mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.25)
  %tobool.not.25 = icmp eq i32 %and.25, 0
  br i1 %tobool.not.25, label %for.inc.25, label %for.inc.24.for.end_crit_edge

for.inc.24.for.end_crit_edge:                     ; preds = %for.inc.24
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc.25:                                       ; preds = %for.inc.24
  call void @__sanitizer_cov_trace_pc() #22
  %0 = trunc i32 %mask to i8
  %1 = lshr i8 %0, 1
  %2 = and i8 %1, 1
  br label %for.end

for.end:                                          ; preds = %for.inc.25, %for.inc.24.for.end_crit_edge, %for.inc.23.for.end_crit_edge, %for.inc.22.for.end_crit_edge, %for.inc.21.for.end_crit_edge, %for.inc.20.for.end_crit_edge, %for.inc.19.for.end_crit_edge, %for.inc.18.for.end_crit_edge, %for.inc.17.for.end_crit_edge, %for.inc.16.for.end_crit_edge, %for.inc.15.for.end_crit_edge, %for.inc.14.for.end_crit_edge, %for.inc.13.for.end_crit_edge, %for.inc.12.for.end_crit_edge, %for.inc.11.for.end_crit_edge, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %rate_idx.0 = phi i8 [ 27, %entry.for.end_crit_edge ], [ 26, %for.inc.for.end_crit_edge ], [ 25, %for.inc.1.for.end_crit_edge ], [ 24, %for.inc.2.for.end_crit_edge ], [ 23, %for.inc.3.for.end_crit_edge ], [ 22, %for.inc.4.for.end_crit_edge ], [ 21, %for.inc.5.for.end_crit_edge ], [ 20, %for.inc.6.for.end_crit_edge ], [ 19, %for.inc.7.for.end_crit_edge ], [ 18, %for.inc.8.for.end_crit_edge ], [ 17, %for.inc.9.for.end_crit_edge ], [ 16, %for.inc.10.for.end_crit_edge ], [ 15, %for.inc.11.for.end_crit_edge ], [ 14, %for.inc.12.for.end_crit_edge ], [ 13, %for.inc.13.for.end_crit_edge ], [ 12, %for.inc.14.for.end_crit_edge ], [ 11, %for.inc.15.for.end_crit_edge ], [ 10, %for.inc.16.for.end_crit_edge ], [ 9, %for.inc.17.for.end_crit_edge ], [ 8, %for.inc.18.for.end_crit_edge ], [ 7, %for.inc.19.for.end_crit_edge ], [ 6, %for.inc.20.for.end_crit_edge ], [ 5, %for.inc.21.for.end_crit_edge ], [ 4, %for.inc.22.for.end_crit_edge ], [ 3, %for.inc.23.for.end_crit_edge ], [ 2, %for.inc.24.for.end_crit_edge ], [ %2, %for.inc.25 ]
  ret i8 %rate_idx.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Update_RA_Entry(ptr noundef %padapter, i32 noundef %mac_id) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw_hal_update_ra_mask(ptr noundef %padapter, i32 noundef %mac_id, i8 noundef zeroext 0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_update_ra_mask(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_sta_rate(ptr noundef %padapter, ptr nocapture noundef readonly %psta) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 9
  %0 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_id, align 4
  tail call void @rtw_hal_update_ra_mask(ptr noundef %padapter, i32 noundef %1, i8 noundef zeroext 0) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_tx_basic_rate(ptr noundef %padapter, i8 noundef zeroext %wirelessmode) local_unnamed_addr #5 align 64 {
entry:
  %supported_rates = alloca [16 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %supported_rates) #20
  %p2p_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 17
  %0 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %supported_rates, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %wirelessmode)
  %.not = icmp eq i8 %wirelessmode, 1
  br i1 %.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %3 = ptrtoint ptr %supported_rates to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -2105242730, ptr %supported_rates, align 4
  br label %if.end19

if.else:                                          ; preds = %if.end
  %4 = and i8 %wirelessmode, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else18, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %5 = call ptr @memcpy(ptr %supported_rates, ptr @rtw_basic_rate_mix, i32 7)
  br label %if.end19

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %6 = call ptr @memcpy(ptr %supported_rates, ptr @rtw_basic_rate_ofdm, i32 3)
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.then8, %if.then3
  %.sink = phi i8 [ 12, %if.else18 ], [ 2, %if.then3 ], [ 2, %if.then8 ]
  tail call void @update_mgnt_tx_rate(ptr noundef %padapter, i8 noundef zeroext %.sink) #20
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 6, ptr noundef nonnull %supported_rates) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %supported_rates) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_mgnt_tx_rate(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @check_assoc_AP(ptr nocapture noundef readonly %pframe, i32 noundef %len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %len)
  %cmp267 = icmp ugt i32 %len, 12
  br i1 %cmp267, label %entry.for.body_crit_edge, label %entry.do.body209_crit_edge

entry.do.body209_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body209

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0270 = phi i32 [ %add172, %sw.epilog.for.body_crit_edge ], [ 12, %entry.for.body_crit_edge ]
  %epigram_vendor_flag.0269 = phi i8 [ %epigram_vendor_flag.1, %sw.epilog.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ralink_vendor_flag.0268 = phi i8 [ %ralink_vendor_flag.1, %sw.epilog.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %pframe, i32 %i.0270
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %1)
  %cond = icmp eq i8 %1, -35
  br i1 %cond, label %sw.bb, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %data = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %add.ptr, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @ARTHEROS_OUI1, i32 3) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %sw.bb.do.body_crit_edge, label %lor.lhs.false

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

lor.lhs.false:                                    ; preds = %sw.bb
  %bcmp241 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @ARTHEROS_OUI2, i32 3) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp241)
  %tobool4.not = icmp eq i32 %bcmp241, 0
  br i1 %tobool4.not, label %lor.lhs.false.do.body_crit_edge, label %if.else

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %sw.bb.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp5 = icmp ugt i32 %2, 4
  br i1 %cmp5, label %do.body.cleanup.sink.split_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.else:                                          ; preds = %lor.lhs.false
  %bcmp242 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @BROADCOM_OUI1, i32 3) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp242)
  %tobool15.not = icmp eq i32 %bcmp242, 0
  br i1 %tobool15.not, label %if.else.do.body22_crit_edge, label %lor.lhs.false16

if.else.do.body22_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body22

lor.lhs.false16:                                  ; preds = %if.else
  %bcmp243 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @BROADCOM_OUI2, i32 3) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp243)
  %tobool20.not = icmp eq i32 %bcmp243, 0
  br i1 %tobool20.not, label %lor.lhs.false16.do.body22_crit_edge, label %if.else34

lor.lhs.false16.do.body22_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body22

do.body22:                                        ; preds = %lor.lhs.false16.do.body22_crit_edge, %if.else.do.body22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %3 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp23 = icmp ugt i32 %3, 4
  br i1 %cmp23, label %do.body22.cleanup.sink.split_crit_edge, label %do.body22.cleanup_crit_edge

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body22.cleanup.sink.split_crit_edge:           ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.else34:                                        ; preds = %lor.lhs.false16
  %bcmp244 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @MARVELL_OUI, i32 3) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp244)
  %tobool38.not = icmp eq i32 %bcmp244, 0
  br i1 %tobool38.not, label %do.body40, label %if.else52

do.body40:                                        ; preds = %if.else34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %4 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp41 = icmp ugt i32 %4, 4
  br i1 %cmp41, label %do.body40.cleanup.sink.split_crit_edge, label %do.body40.cleanup_crit_edge

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body40.cleanup.sink.split_crit_edge:           ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.else52:                                        ; preds = %if.else34
  %bcmp245 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @RALINK_OUI, i32 3) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp245)
  %tobool56.not = icmp eq i32 %bcmp245, 0
  br i1 %tobool56.not, label %if.then57, label %if.else74

if.then57:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ralink_vendor_flag.0268)
  %tobool58.not = icmp eq i8 %ralink_vendor_flag.0268, 0
  br i1 %tobool58.not, label %if.then57.sw.epilog_crit_edge, label %do.body61

if.then57.sw.epilog_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

do.body61:                                        ; preds = %if.then57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %5 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp62 = icmp ugt i32 %5, 4
  br i1 %cmp62, label %do.body61.cleanup.sink.split_crit_edge, label %do.body61.cleanup_crit_edge

do.body61.cleanup_crit_edge:                      ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body61.cleanup.sink.split_crit_edge:           ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.else74:                                        ; preds = %if.else52
  %bcmp246 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @CISCO_OUI, i32 3) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp246)
  %tobool78.not = icmp eq i32 %bcmp246, 0
  br i1 %tobool78.not, label %do.body80, label %if.else92

do.body80:                                        ; preds = %if.else74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %6 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp81 = icmp ugt i32 %6, 4
  br i1 %cmp81, label %do.body80.cleanup.sink.split_crit_edge, label %do.body80.cleanup_crit_edge

do.body80.cleanup_crit_edge:                      ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body80.cleanup.sink.split_crit_edge:           ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.else92:                                        ; preds = %if.else74
  %bcmp247 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @REALTEK_OUI, i32 3) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp247)
  %tobool96.not = icmp eq i32 %bcmp247, 0
  br i1 %tobool96.not, label %do.body98, label %if.else110

do.body98:                                        ; preds = %if.else92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %7 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp99 = icmp ugt i32 %7, 4
  br i1 %cmp99, label %do.body98.cleanup.sink.split_crit_edge, label %do.body98.cleanup_crit_edge

do.body98.cleanup_crit_edge:                      ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body98.cleanup.sink.split_crit_edge:           ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.else110:                                       ; preds = %if.else92
  %bcmp248 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @AIRGOCAP_OUI, i32 3) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp248)
  %tobool114.not = icmp eq i32 %bcmp248, 0
  br i1 %tobool114.not, label %do.body116, label %if.else128

do.body116:                                       ; preds = %if.else110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %8 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp117 = icmp ugt i32 %8, 4
  br i1 %cmp117, label %do.body116.cleanup.sink.split_crit_edge, label %do.body116.cleanup_crit_edge

do.body116.cleanup_crit_edge:                     ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body116.cleanup.sink.split_crit_edge:          ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.else128:                                       ; preds = %if.else110
  %bcmp249 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @EPIGRAM_OUI, i32 3) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp249)
  %tobool132.not = icmp eq i32 %bcmp249, 0
  br i1 %tobool132.not, label %if.then133, label %if.else128.sw.epilog_crit_edge

if.else128.sw.epilog_crit_edge:                   ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.then133:                                       ; preds = %if.else128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ralink_vendor_flag.0268)
  %tobool134.not = icmp eq i8 %ralink_vendor_flag.0268, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %9 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp150 = icmp ugt i32 %9, 4
  br i1 %tobool134.not, label %do.body149, label %do.body136

do.body136:                                       ; preds = %if.then133
  br i1 %cmp150, label %do.body136.cleanup.sink.split_crit_edge, label %do.body136.cleanup_crit_edge

do.body136.cleanup_crit_edge:                     ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body136.cleanup.sink.split_crit_edge:          ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

do.body149:                                       ; preds = %if.then133
  br i1 %cmp150, label %do.end155, label %do.body149.sw.epilog_crit_edge

do.body149.sw.epilog_crit_edge:                   ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

do.end155:                                        ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #22
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #23
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end155, %do.body149.sw.epilog_crit_edge, %if.else128.sw.epilog_crit_edge, %if.then57.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %ralink_vendor_flag.1 = phi i8 [ %ralink_vendor_flag.0268, %if.else128.sw.epilog_crit_edge ], [ 0, %do.end155 ], [ 0, %do.body149.sw.epilog_crit_edge ], [ %ralink_vendor_flag.0268, %for.body.sw.epilog_crit_edge ], [ 1, %if.then57.sw.epilog_crit_edge ]
  %epigram_vendor_flag.1 = phi i8 [ %epigram_vendor_flag.0269, %if.else128.sw.epilog_crit_edge ], [ 1, %do.end155 ], [ 1, %do.body149.sw.epilog_crit_edge ], [ %epigram_vendor_flag.0269, %for.body.sw.epilog_crit_edge ], [ %epigram_vendor_flag.0269, %if.then57.sw.epilog_crit_edge ]
  %Length = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %add.ptr, i32 0, i32 1
  %10 = ptrtoint ptr %Length to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %Length, align 1
  %conv171 = zext i8 %11 to i32
  %add = add i32 %i.0270, 2
  %add172 = add i32 %add, %conv171
  %cmp = icmp ult i32 %add172, %len
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %for.end

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ralink_vendor_flag.1)
  %tobool174.not = icmp eq i8 %ralink_vendor_flag.1, 0
  %tobool174.not.not = xor i1 %tobool174.not, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %epigram_vendor_flag.1)
  %tobool175.not = icmp eq i8 %epigram_vendor_flag.1, 0
  %or.cond = select i1 %tobool174.not.not, i1 %tobool175.not, i1 false
  br i1 %or.cond, label %do.body177, label %if.else189

do.body177:                                       ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %12 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp178 = icmp ugt i32 %12, 4
  br i1 %cmp178, label %do.body177.cleanup.sink.split_crit_edge, label %do.body177.cleanup_crit_edge

do.body177.cleanup_crit_edge:                     ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body177.cleanup.sink.split_crit_edge:          ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.else189:                                       ; preds = %for.end
  %or.cond250 = select i1 %tobool174.not, i1 true, i1 %tobool175.not
  br i1 %or.cond250, label %if.else189.do.body209_crit_edge, label %do.body196

if.else189.do.body209_crit_edge:                  ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body209

do.body196:                                       ; preds = %if.else189
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %13 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp197 = icmp ugt i32 %13, 4
  br i1 %cmp197, label %do.body196.cleanup.sink.split_crit_edge, label %do.body196.cleanup_crit_edge

do.body196.cleanup_crit_edge:                     ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body196.cleanup.sink.split_crit_edge:          ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

do.body209:                                       ; preds = %if.else189.do.body209_crit_edge, %entry.do.body209_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %14 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp210 = icmp ugt i32 %14, 4
  br i1 %cmp210, label %do.body209.cleanup.sink.split_crit_edge, label %do.body209.cleanup_crit_edge

do.body209.cleanup_crit_edge:                     ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body209.cleanup.sink.split_crit_edge:          ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body209.cleanup.sink.split_crit_edge, %do.body196.cleanup.sink.split_crit_edge, %do.body177.cleanup.sink.split_crit_edge, %do.body136.cleanup.sink.split_crit_edge, %do.body116.cleanup.sink.split_crit_edge, %do.body98.cleanup.sink.split_crit_edge, %do.body80.cleanup.sink.split_crit_edge, %do.body61.cleanup.sink.split_crit_edge, %do.body40.cleanup.sink.split_crit_edge, %do.body22.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %.str.79.sink = phi ptr [ @.str.48, %do.body.cleanup.sink.split_crit_edge ], [ @.str.51, %do.body22.cleanup.sink.split_crit_edge ], [ @.str.54, %do.body40.cleanup.sink.split_crit_edge ], [ @.str.57, %do.body61.cleanup.sink.split_crit_edge ], [ @.str.60, %do.body80.cleanup.sink.split_crit_edge ], [ @.str.63, %do.body98.cleanup.sink.split_crit_edge ], [ @.str.66, %do.body116.cleanup.sink.split_crit_edge ], [ @.str.69, %do.body136.cleanup.sink.split_crit_edge ], [ @.str.57, %do.body177.cleanup.sink.split_crit_edge ], [ @.str.69, %do.body196.cleanup.sink.split_crit_edge ], [ @.str.79, %do.body209.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i8 [ 5, %do.body.cleanup.sink.split_crit_edge ], [ 3, %do.body22.cleanup.sink.split_crit_edge ], [ 8, %do.body40.cleanup.sink.split_crit_edge ], [ 4, %do.body61.cleanup.sink.split_crit_edge ], [ 6, %do.body80.cleanup.sink.split_crit_edge ], [ 1, %do.body98.cleanup.sink.split_crit_edge ], [ 11, %do.body116.cleanup.sink.split_crit_edge ], [ 16, %do.body136.cleanup.sink.split_crit_edge ], [ 4, %do.body177.cleanup.sink.split_crit_edge ], [ 16, %do.body196.cleanup.sink.split_crit_edge ], [ 0, %do.body209.cleanup.sink.split_crit_edge ]
  %call217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.79.sink) #23
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body209.cleanup_crit_edge, %do.body196.cleanup_crit_edge, %do.body177.cleanup_crit_edge, %do.body136.cleanup_crit_edge, %do.body116.cleanup_crit_edge, %do.body98.cleanup_crit_edge, %do.body80.cleanup_crit_edge, %do.body61.cleanup_crit_edge, %do.body40.cleanup_crit_edge, %do.body22.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i8 [ 5, %do.body.cleanup_crit_edge ], [ 3, %do.body22.cleanup_crit_edge ], [ 8, %do.body40.cleanup_crit_edge ], [ 4, %do.body61.cleanup_crit_edge ], [ 6, %do.body80.cleanup_crit_edge ], [ 1, %do.body98.cleanup_crit_edge ], [ 11, %do.body116.cleanup_crit_edge ], [ 16, %do.body136.cleanup_crit_edge ], [ 4, %do.body177.cleanup_crit_edge ], [ 16, %do.body196.cleanup_crit_edge ], [ 0, %do.body209.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_IOT_info(ptr noundef %padapter) local_unnamed_addr #5 align 64 {
entry:
  %mode.addr.i15 = alloca i32, align 4
  %mode.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %assoc_AP_vendor = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 14
  %0 = ptrtoint ptr %assoc_AP_vendor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %assoc_AP_vendor, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %1, label %sw.default [
    i8 8, label %sw.bb
    i8 4, label %sw.bb1
    i8 1, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %turboMode_cts2self = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 24
  %3 = ptrtoint ptr %turboMode_cts2self to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %turboMode_cts2self, align 4
  %turboMode_rtsen = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 25
  %4 = ptrtoint ptr %turboMode_rtsen to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %turboMode_rtsen, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %turboMode_cts2self2 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 24
  %5 = ptrtoint ptr %turboMode_cts2self2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %turboMode_cts2self2, align 4
  %turboMode_rtsen3 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 25
  %6 = ptrtoint ptr %turboMode_rtsen3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %turboMode_rtsen3, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i)
  %7 = ptrtoint ptr %mode.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -5, ptr %mode.addr.i, align 4
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 23, ptr noundef nonnull %mode.addr.i) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.addr.i15)
  %8 = ptrtoint ptr %mode.addr.i15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -5, ptr %mode.addr.i15, align 4
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 23, ptr noundef nonnull %mode.addr.i15) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.addr.i15)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %turboMode_cts2self5 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 24
  %9 = ptrtoint ptr %turboMode_cts2self5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %turboMode_cts2self5, align 4
  %turboMode_rtsen6 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 25
  %10 = ptrtoint ptr %turboMode_rtsen6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %turboMode_rtsen6, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_capinfo(ptr noundef %Adapter, i16 noundef zeroext %updateCap) local_unnamed_addr #5 align 64 {
entry:
  %ShortPreamble = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ShortPreamble) #20
  %0 = ptrtoint ptr %ShortPreamble to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ShortPreamble, align 1, !annotation !170
  %conv = zext i16 %updateCap to i32
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %preamble_mode5 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 17, i32 16
  %1 = ptrtoint ptr %preamble_mode5 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %preamble_mode5, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp.not = icmp eq i8 %2, 3
  br i1 %cmp.not, label %if.then.if.end12_crit_edge, label %if.then.if.end12.sink.split_crit_edge

if.then.if.end12.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12.sink.split

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp7.not = icmp eq i8 %2, 1
  br i1 %cmp7.not, label %if.else.if.end12_crit_edge, label %if.else.if.end12.sink.split_crit_edge

if.else.if.end12.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12.sink.split

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12

if.end12.sink.split:                              ; preds = %if.else.if.end12.sink.split_crit_edge, %if.then.if.end12.sink.split_crit_edge
  %storemerge = phi i8 [ 1, %if.then.if.end12.sink.split_crit_edge ], [ 0, %if.else.if.end12.sink.split_crit_edge ]
  %.sink = phi i8 [ 3, %if.then.if.end12.sink.split_crit_edge ], [ 1, %if.else.if.end12.sink.split_crit_edge ]
  %3 = ptrtoint ptr %ShortPreamble to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %storemerge, ptr %ShortPreamble, align 1
  %4 = ptrtoint ptr %preamble_mode5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink, ptr %preamble_mode5, align 4
  call void @SetHwReg8188EU(ptr noundef %Adapter, i8 noundef zeroext 17, ptr noundef nonnull %ShortPreamble) #20
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.else.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %and14 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else17, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  %slotTime = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 17, i32 15
  %5 = ptrtoint ptr %slotTime to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 20, ptr %slotTime, align 1
  br label %if.end45

if.else17:                                        ; preds = %if.end12
  %cur_wireless_mode = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 7
  %6 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cur_wireless_mode, align 1
  %8 = and i8 %7, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool20.not = icmp eq i8 %8, 0
  br i1 %tobool20.not, label %if.else42, label %if.then21

if.then21:                                        ; preds = %if.else17
  %and23 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %slotTime34 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 17, i32 15
  %9 = ptrtoint ptr %slotTime34 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %slotTime34, align 1
  br i1 %tobool24.not, label %if.else33, label %if.then25

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %10)
  %cmp28.not = icmp eq i8 %10, 9
  br i1 %cmp28.not, label %if.then25.if.end45_crit_edge, label %if.then30

if.then25.if.end45_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end45

if.then30:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #22
  %11 = ptrtoint ptr %slotTime34 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 9, ptr %slotTime34, align 1
  br label %if.end45

if.else33:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %10)
  %cmp36.not = icmp eq i8 %10, 20
  br i1 %cmp36.not, label %if.else33.if.end45_crit_edge, label %if.then38

if.else33.if.end45_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end45

if.then38:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #22
  %12 = ptrtoint ptr %slotTime34 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 20, ptr %slotTime34, align 1
  br label %if.end45

if.else42:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #22
  %slotTime43 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 17, i32 15
  %13 = ptrtoint ptr %slotTime43 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 20, ptr %slotTime43, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %if.then38, %if.else33.if.end45_crit_edge, %if.then30, %if.then25.if.end45_crit_edge, %if.then16
  %slotTime46 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 17, i32 15
  call void @SetHwReg8188EU(ptr noundef %Adapter, i8 noundef zeroext 15, ptr noundef %slotTime46) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ShortPreamble) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_wireless_mode(ptr noundef %padapter) local_unnamed_addr #5 align 64 {
entry:
  %SIFS_Timer = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %SIFS_Timer) #20
  %SupportedRates = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 38, i32 9
  %call = tail call i32 @rtw_get_rateset_len(ptr noundef %SupportedRates) #20
  %HT_info_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 22
  %0 = ptrtoint ptr %HT_info_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %HT_info_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %HT_caps_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 21
  %2 = ptrtoint ptr %HT_caps_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %HT_caps_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %HT_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 20
  %4 = ptrtoint ptr %HT_enable to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %HT_enable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cur_channel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 4
  %5 = ptrtoint ptr %cur_channel to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cur_channel, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %6)
  %cmp = icmp ugt i8 %6, 14
  br i1 %cmp, label %if.end.if.end25_crit_edge, label %if.else

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25

if.else:                                          ; preds = %if.end
  %HT_enable8 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 20
  %7 = ptrtoint ptr %HT_enable8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %HT_enable8, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  %spec.select = select i1 %tobool9.not, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp28.i = icmp sgt i32 %call, 0
  br i1 %cmp28.i, label %if.else.for.body.i_crit_edge, label %if.else.if.then14_crit_edge

if.else.if.then14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then14

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %i.029.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %SupportedRates, i32 %i.029.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %trunc.i = trunc i8 %10 to i7
  %11 = zext i7 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.117)
  switch i7 %trunc.i, label %for.body.i.for.body.i57_crit_edge [
    i7 2, label %for.body.i.for.inc.i_crit_edge
    i7 4, label %for.body.i.for.inc.i_crit_edge66
    i7 11, label %for.body.i.for.inc.i_crit_edge67
    i7 22, label %for.body.i.for.inc.i_crit_edge68
  ]

for.body.i.for.inc.i_crit_edge68:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge67:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge66:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

for.body.i.for.body.i57_crit_edge:                ; preds = %for.body.i
  br label %for.body.i57

for.inc.i:                                        ; preds = %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge66, %for.body.i.for.inc.i_crit_edge67, %for.body.i.for.inc.i_crit_edge68
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call
  br i1 %exitcond.not.i, label %for.inc.i.if.then14_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.inc.i.if.then14_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then14

if.then14:                                        ; preds = %for.inc.i.if.then14_crit_edge, %if.else.if.then14_crit_edge
  %or15 = or i32 %spec.select, 1
  br label %if.end25

for.body.i57:                                     ; preds = %for.inc.i60.for.body.i57_crit_edge, %for.body.i.for.body.i57_crit_edge
  %i.029.i54 = phi i32 [ %inc.i58, %for.inc.i60.for.body.i57_crit_edge ], [ 0, %for.body.i.for.body.i57_crit_edge ]
  %arrayidx.i55 = getelementptr i8, ptr %SupportedRates, i32 %i.029.i54
  %12 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i55, align 1
  %trunc.i56 = trunc i8 %13 to i7
  %14 = zext i7 %trunc.i56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.118)
  switch i7 %trunc.i56, label %for.inc.i60 [
    i7 2, label %for.body.i57.if.then19_crit_edge
    i7 4, label %for.body.i57.if.then19_crit_edge69
    i7 11, label %for.body.i57.if.then19_crit_edge70
    i7 22, label %for.body.i57.if.then19_crit_edge71
  ]

for.body.i57.if.then19_crit_edge71:               ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then19

for.body.i57.if.then19_crit_edge70:               ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then19

for.body.i57.if.then19_crit_edge69:               ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then19

for.body.i57.if.then19_crit_edge:                 ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then19

for.inc.i60:                                      ; preds = %for.body.i57
  %inc.i58 = add nuw nsw i32 %i.029.i54, 1
  %exitcond.not.i59 = icmp eq i32 %inc.i58, %call
  br i1 %exitcond.not.i59, label %if.else21, label %for.inc.i60.for.body.i57_crit_edge

for.inc.i60.for.body.i57_crit_edge:               ; preds = %for.inc.i60
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i57

if.then19:                                        ; preds = %for.body.i57.if.then19_crit_edge, %for.body.i57.if.then19_crit_edge69, %for.body.i57.if.then19_crit_edge70, %for.body.i57.if.then19_crit_edge71
  %or20 = or i32 %spec.select, 3
  br label %if.end25

if.else21:                                        ; preds = %for.inc.i60
  call void @__sanitizer_cov_trace_pc() #22
  %or22 = or i32 %spec.select, 2
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then19, %if.then14, %if.end.if.end25_crit_edge
  %network_type.1 = phi i32 [ %or15, %if.then14 ], [ %or20, %if.then19 ], [ %or22, %if.else21 ], [ 0, %if.end.if.end25_crit_edge ]
  %wireless_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 7
  %15 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %wireless_mode, align 2
  %17 = trunc i32 %network_type.1 to i8
  %conv27 = and i8 %16, %17
  %cur_wireless_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %18 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv27, ptr %cur_wireless_mode, align 1
  %19 = ptrtoint ptr %SIFS_Timer to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 168429576, ptr %SIFS_Timer, align 4
  call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 16, ptr noundef nonnull %SIFS_Timer) #20
  %20 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cur_wireless_mode, align 1
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool31.not = icmp eq i8 %22, 0
  %. = select i1 %tobool31.not, i8 12, i8 2
  call void @update_mgnt_tx_rate(ptr noundef %padapter, i8 noundef zeroext %.) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %SIFS_Timer) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_rateset_len(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @update_bmc_sta_support_rate(ptr nocapture noundef %padapter, i32 noundef %mac_id) local_unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_wireless_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 7
  %0 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_wireless_mode, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %SupportedRates3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 39, i32 %mac_id, i32 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %3 = ptrtoint ptr %SupportedRates3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -2105242730, ptr %SupportedRates3, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %4 = call ptr @memcpy(ptr %SupportedRates3, ptr @rtw_basic_rate_ofdm, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @update_sta_support_rate(ptr nocapture noundef writeonly %padapter, ptr noundef %pvar_ie, i32 noundef %var_ie_len, i32 noundef %cam_idx) local_unnamed_addr #5 align 64 {
entry:
  %ie_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ie_len) #20
  %0 = ptrtoint ptr %ie_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ie_len, align 4, !annotation !170
  %call = call ptr @rtw_get_ie(ptr noundef %pvar_ie, i32 noundef 1, ptr noundef nonnull %ie_len, i32 noundef %var_ie_len) #20
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %SupportedRates = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 39, i32 %cam_idx, i32 4
  %data = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ie_len, align 4
  %3 = call ptr @memcpy(ptr %SupportedRates, ptr %data, i32 %2)
  %call2 = call ptr @rtw_get_ie(ptr noundef %pvar_ie, i32 noundef 50, ptr noundef nonnull %ie_len, i32 noundef %var_ie_len) #20
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr = getelementptr i8, ptr %SupportedRates, i32 %2
  %data9 = getelementptr inbounds %struct.ndis_802_11_var_ie, ptr %call2, i32 0, i32 2
  %4 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ie_len, align 4
  %6 = call ptr @memcpy(ptr %add.ptr, ptr %data9, i32 %5)
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then4 ], [ 1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ie_len) #20
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @process_addba_req(ptr noundef %padapter, ptr nocapture noundef readonly %paddba_req, ptr noundef %addr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %addr) #20
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %BA_para_set = getelementptr inbounds %struct.ADDBA_request, ptr %paddba_req, i32 0, i32 2
  %0 = ptrtoint ptr %BA_para_set to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %BA_para_set, align 1
  %2 = lshr i16 %1, 10
  %3 = and i16 %2, 15
  %idxprom = zext i16 %3 to i32
  %indicate_seq = getelementptr %struct.sta_info, ptr %call, i32 0, i32 31, i32 %idxprom, i32 2
  %4 = ptrtoint ptr %indicate_seq to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %indicate_seq, align 2
  %bAcceptAddbaReq = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17, i32 31
  %5 = ptrtoint ptr %bAcceptAddbaReq to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bAcceptAddbaReq, align 1, !range !171
  %enable = getelementptr %struct.sta_info, ptr %call, i32 0, i32 31, i32 %idxprom, i32 1
  %7 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %enable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @update_TSF(ptr nocapture noundef writeonly %pmlmeext, ptr nocapture noundef readonly %pframe, i32 noundef %len) local_unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pframe, i32 24
  %add.ptr1 = getelementptr i8, ptr %pframe, i32 28
  %0 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr1, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %conv = zext i32 %2 to i64
  %TSFValue = getelementptr inbounds %struct.mlme_ext_priv, ptr %pmlmeext, i32 0, i32 24
  %shl = shl nuw i64 %conv, 32
  %3 = ptrtoint ptr %TSFValue to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %shl, ptr %TSFValue, align 8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %conv4 = zext i32 %6 to i64
  %or = or i64 %shl, %conv4
  %7 = ptrtoint ptr %TSFValue to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %or, ptr %TSFValue, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @correct_TSF(ptr noundef %padapter, ptr nocapture noundef readnone %pmlmeext) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 9, ptr noundef null) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @beacon_timing_control(ptr noundef %padapter) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @SetBeaconRelatedRegisters8188EUsb(ptr noundef %padapter) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @SetBeaconRelatedRegisters8188EUsb(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_handle_dualmac(ptr noundef %adapter, i1 noundef zeroext %init) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %init, label %if.then, label %if.else20

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @pbuddy_padapter, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store ptr %adapter, ptr @pbuddy_padapter, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %1 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %do.end, label %if.then2.if.end21_crit_edge

if.then2.if.end21_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end21

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #22
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82) #23
  br label %if.end21

if.else:                                          ; preds = %if.then
  %pbuddy_adapter = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 51
  %2 = ptrtoint ptr %pbuddy_adapter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %pbuddy_adapter, align 8
  %pbuddy_adapter7 = getelementptr inbounds %struct.adapter, ptr %0, i32 0, i32 51
  %3 = ptrtoint ptr %pbuddy_adapter7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %adapter, ptr %pbuddy_adapter7, align 8
  store ptr null, ptr @pbuddy_padapter, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %4 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp9 = icmp ugt i32 %4, 4
  br i1 %cmp9, label %do.end13, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end21

do.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.82) #23
  br label %if.end21

if.else20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  store ptr null, ptr @pbuddy_padapter, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %do.end13, %if.else.if.end21_crit_edge, %do.end, %if.then2.if.end21_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #20

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #21 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #21 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #22 = { nomerge }
attributes #23 = { cold nounwind }
attributes #24 = { nobuiltin }
attributes #25 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @REALTEK_96B_IE, !1, !"REALTEK_96B_IE", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 23, i32 15}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 339, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @set_channel_bwmode._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @set_channel_bwmode._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 576, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @WMMOnAssocRsp._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @WMMOnAssocRsp._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 613, i32 3}
!15 = !{ptr @WMMOnAssocRsp._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @WMMOnAssocRsp._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 761, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @HTOnAssocRsp._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @HTOnAssocRsp._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 861, i32 3}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rtw_check_bcn_info._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @rtw_check_bcn_info._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 866, i32 3}
!29 = !{ptr @rtw_check_bcn_info._entry.12, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rtw_check_bcn_info._entry_ptr.14, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 905, i32 4}
!33 = !{ptr @rtw_check_bcn_info._entry.15, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rtw_check_bcn_info._entry_ptr.17, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 907, i32 4}
!37 = !{ptr @rtw_check_bcn_info._entry.18, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @rtw_check_bcn_info._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 909, i32 4}
!41 = !{ptr @rtw_check_bcn_info._entry.21, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @rtw_check_bcn_info._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 926, i32 6}
!45 = !{ptr @rtw_check_bcn_info._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rtw_check_bcn_info._entry_ptr.26, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 931, i32 4}
!49 = !{ptr @rtw_check_bcn_info._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @rtw_check_bcn_info._entry_ptr.29, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 939, i32 3}
!53 = !{ptr @rtw_check_bcn_info._entry.30, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @rtw_check_bcn_info._entry_ptr.32, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 956, i32 4}
!57 = !{ptr @rtw_check_bcn_info._entry.33, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rtw_check_bcn_info._entry_ptr.35, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 970, i32 3}
!61 = !{ptr @rtw_check_bcn_info._entry.36, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @rtw_check_bcn_info._entry_ptr.38, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.40, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 986, i32 3}
!65 = !{ptr @rtw_check_bcn_info._entry.39, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @rtw_check_bcn_info._entry_ptr.41, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.43, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 1002, i32 4}
!69 = !{ptr @rtw_check_bcn_info._entry.42, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @rtw_check_bcn_info._entry_ptr.44, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.46, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 1009, i32 4}
!73 = !{ptr @rtw_check_bcn_info._entry.45, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @rtw_check_bcn_info._entry_ptr.47, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.48, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 1260, i32 5}
!77 = !{ptr @.str.49, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @check_assoc_AP._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @check_assoc_AP._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.51, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 1264, i32 5}
!82 = !{ptr @check_assoc_AP._entry.50, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @check_assoc_AP._entry_ptr.52, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.54, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 1267, i32 5}
!86 = !{ptr @check_assoc_AP._entry.53, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @check_assoc_AP._entry_ptr.55, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.57, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 1273, i32 6}
!90 = !{ptr @check_assoc_AP._entry.56, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @check_assoc_AP._entry_ptr.58, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.60, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 1277, i32 5}
!94 = !{ptr @check_assoc_AP._entry.59, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @check_assoc_AP._entry_ptr.61, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.63, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 1280, i32 5}
!98 = !{ptr @check_assoc_AP._entry.62, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @check_assoc_AP._entry_ptr.64, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.66, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 1283, i32 5}
!102 = !{ptr @check_assoc_AP._entry.65, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @check_assoc_AP._entry_ptr.67, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.69, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 1288, i32 6}
!106 = !{ptr @check_assoc_AP._entry.68, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @check_assoc_AP._entry_ptr.70, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.72, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 1291, i32 6}
!110 = !{ptr @check_assoc_AP._entry.71, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @check_assoc_AP._entry_ptr.73, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @check_assoc_AP._entry.74, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 1305, i32 3}
!114 = !{ptr @check_assoc_AP._entry_ptr.75, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @check_assoc_AP._entry.76, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 1308, i32 3}
!117 = !{ptr @check_assoc_AP._entry_ptr.77, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.79, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 1311, i32 3}
!120 = !{ptr @check_assoc_AP._entry.78, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @check_assoc_AP._entry_ptr.80, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.81, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 1521, i32 4}
!124 = !{ptr @.str.82, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @rtw_handle_dualmac._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @rtw_handle_dualmac._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.84, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 1527, i32 4}
!129 = !{ptr @rtw_handle_dualmac._entry.83, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @rtw_handle_dualmac._entry_ptr.85, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @pbuddy_padapter, !132, !"pbuddy_padapter", i1 false, i1 false}
!132 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 1512, i32 24}
!133 = distinct !{null, !134, !"rtw_basic_rate_cck", i1 false, i1 false}
!134 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 31, i32 11}
!135 = !{ptr @rtw_basic_rate_mix, !136, !"rtw_basic_rate_mix", i1 false, i1 false}
!136 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 41, i32 11}
!137 = !{ptr @rtw_basic_rate_ofdm, !138, !"rtw_basic_rate_ofdm", i1 false, i1 false}
!138 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 36, i32 11}
!139 = !{ptr @ARTHEROS_OUI1, !140, !"ARTHEROS_OUI1", i1 false, i1 false}
!140 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 10, i32 22}
!141 = !{ptr @ARTHEROS_OUI2, !142, !"ARTHEROS_OUI2", i1 false, i1 false}
!142 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 11, i32 22}
!143 = !{ptr @BROADCOM_OUI1, !144, !"BROADCOM_OUI1", i1 false, i1 false}
!144 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 13, i32 22}
!145 = !{ptr @BROADCOM_OUI2, !146, !"BROADCOM_OUI2", i1 false, i1 false}
!146 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 14, i32 22}
!147 = !{ptr @MARVELL_OUI, !148, !"MARVELL_OUI", i1 false, i1 false}
!148 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 17, i32 22}
!149 = !{ptr @RALINK_OUI, !150, !"RALINK_OUI", i1 false, i1 false}
!150 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 18, i32 22}
!151 = !{ptr @CISCO_OUI, !152, !"CISCO_OUI", i1 false, i1 false}
!152 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 16, i32 22}
!153 = !{ptr @REALTEK_OUI, !154, !"REALTEK_OUI", i1 false, i1 false}
!154 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 19, i32 22}
!155 = !{ptr @AIRGOCAP_OUI, !156, !"AIRGOCAP_OUI", i1 false, i1 false}
!156 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 20, i32 22}
!157 = !{ptr @EPIGRAM_OUI, !158, !"EPIGRAM_OUI", i1 false, i1 false}
!158 = !{!"../drivers/staging/r8188eu/core/rtw_wlan_util.c", i32 21, i32 22}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = distinct !{!168, !169}
!169 = !{!"llvm.loop.peeled.count", i32 3}
!170 = !{!"auto-init"}
!171 = !{i8 0, i8 2}
