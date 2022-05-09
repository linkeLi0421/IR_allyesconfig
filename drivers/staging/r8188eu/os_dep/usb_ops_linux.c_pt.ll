; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/os_dep/usb_ops_linux.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/os_dep/usb_ops_linux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvobj_priv = type { ptr, i8, i8, i32, [3 x i32], [8 x i8], i8, %struct.rt_firmware, i8, i8, i32, %struct.semaphore, %struct.mutex, ptr, ptr, %struct.atomic_t, i8 }
%struct.rt_firmware = type { ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.HT_caps_element = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i16, i8, [16 x i8], i16, i16, i8 }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.5, i32 }
%union.anon.5 = type { ptr }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, i32, i32, i32, i32, %struct.semaphore, i8, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, i8, i8, i8, [2 x i32], [2 x i8], i32, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.sk_buff_head = type { %union.anon.6, i32, %struct.spinlock }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.br_ext_info = type { i32, i32, i32, i32, [6 x i8], i32 }
%struct.recv_buf = type { %struct.list_head, %struct.spinlock, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i32, ptr, i8 }
%struct.xmit_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i16, i16, i32, i32, ptr, i32, [8 x ptr], i32, [8 x i8], [8 x i32] }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@rtw_read_port_cancel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016R8188EU: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtw_read_port_cancel\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/staging/r8188eu/os_dep/usb_ops_linux.c\00", [49 x i8] zeroinitializer }, align 32
@rtw_read_port_cancel._entry_ptr = internal global ptr @rtw_read_port_cancel._entry, section ".printk_index", align 4
@rtw_write_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016R8188EU: usb_write_port, status =%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtw_write_port\00", [17 x i8] zeroinitializer }, align 32
@rtw_write_port._entry_ptr = internal global ptr @rtw_write_port._entry, section ".printk_index", align 4
@rtw_write_port_cancel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw_write_port_cancel\00", [42 x i8] zeroinitializer }, align 32
@rtw_write_port_cancel._entry_ptr = internal global ptr @rtw_write_port_cancel._entry, section ".printk_index", align 4
@usb_write_port_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"\016R8188EU: %s(): TX Warning! bDriverStopped(%d) OR bSurpriseRemoved(%d) bWritePortCancel(%d) pxmitbuf->ext_tag(%x)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb_write_port_complete\00", [40 x i8] zeroinitializer }, align 32
@usb_write_port_complete._entry_ptr = internal global ptr @usb_write_port_complete._entry, section ".printk_index", align 4
@usb_write_port_complete._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016R8188EU: ###=> urb_write_port_complete status(%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@usb_write_port_complete._entry_ptr.10 = internal global ptr @usb_write_port_complete._entry.8, section ".printk_index", align 4
@usb_write_port_complete._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016R8188EU: %s: -ENOENT\0A\00", [40 x i8] zeroinitializer }, align 32
@usb_write_port_complete._entry_ptr.13 = internal global ptr @usb_write_port_complete._entry.11, section ".printk_index", align 4
@usb_write_port_complete._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016R8188EU: %s: -ECONNRESET\0A\00", [36 x i8] zeroinitializer }, align 32
@usb_write_port_complete._entry_ptr.16 = internal global ptr @usb_write_port_complete._entry.14, section ".printk_index", align 4
@usb_write_port_complete._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016R8188EU: bSurpriseRemoved = true\0A\00", [60 x i8] zeroinitializer }, align 32
@usb_write_port_complete._entry_ptr.19 = internal global ptr @usb_write_port_complete._entry.17, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.20 = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.21 = internal global [8 x i64] [i64 6, i64 32, i64 4294967181, i64 4294967188, i64 4294967192, i64 4294967225, i64 4294967264, i64 4294967294]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 35, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 177, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 205, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 75, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 84, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 88, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 91, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [50 x i8] c"../drivers/staging/r8188eu/os_dep/usb_ops_linux.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 98, i32 4 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @rtw_read_port_cancel._entry, ptr @rtw_read_port_cancel._entry_ptr, ptr @rtw_write_port._entry, ptr @rtw_write_port._entry_ptr, ptr @rtw_write_port_cancel._entry, ptr @rtw_write_port_cancel._entry_ptr, ptr @usb_write_port_complete._entry, ptr @usb_write_port_complete._entry.11, ptr @usb_write_port_complete._entry.14, ptr @usb_write_port_complete._entry.17, ptr @usb_write_port_complete._entry.8, ptr @usb_write_port_complete._entry_ptr, ptr @usb_write_port_complete._entry_ptr.10, ptr @usb_write_port_complete._entry_ptr.13, ptr @usb_write_port_complete._entry_ptr.16, ptr @usb_write_port_complete._entry_ptr.19, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_read_port_cancel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_write_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_write_port_cancel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_write_port_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_write_port_complete._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_write_port_complete._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_write_port_complete._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_write_port_complete._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ffaddr2pipehdl(ptr nocapture noundef readonly %pdvobj, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %addr)
  %cmp = icmp ult i32 %addr, 8
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pusbdev = getelementptr inbounds %struct.dvobj_priv, ptr %pdvobj, i32 0, i32 14
  %0 = ptrtoint ptr %pusbdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pusbdev, align 4
  %arrayidx = getelementptr %struct.dvobj_priv, ptr %pdvobj, i32 0, i32 5, i32 %addr
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %shl.i = shl i32 %5, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pipe.0 = phi i32 [ %or, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %pipe.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_read_port_cancel(ptr nocapture noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %precv_buf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 24
  %0 = ptrtoint ptr %precv_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %precv_buf, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp ugt i32 %2, 4
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %bReadPortCancel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 46
  %3 = ptrtoint ptr %bReadPortCancel to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %bReadPortCancel, align 2
  %reuse = getelementptr inbounds %struct.recv_buf, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %reuse to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %reuse, align 4
  %purb = getelementptr inbounds %struct.recv_buf, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %purb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %purb, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end3.if.end7_crit_edge, label %if.then5

do.end3.if.end7_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %6) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end3.if.end7_crit_edge
  %reuse.1 = getelementptr %struct.recv_buf, ptr %1, i32 1, i32 17
  %7 = ptrtoint ptr %reuse.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %reuse.1, align 4
  %purb.1 = getelementptr %struct.recv_buf, ptr %1, i32 1, i32 11
  %8 = ptrtoint ptr %purb.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %purb.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %if.end7.if.end7.1_crit_edge, label %if.then5.1

if.end7.if.end7.1_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.1

if.then5.1:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %9) #4
  br label %if.end7.1

if.end7.1:                                        ; preds = %if.then5.1, %if.end7.if.end7.1_crit_edge
  %reuse.2 = getelementptr %struct.recv_buf, ptr %1, i32 2, i32 17
  %10 = ptrtoint ptr %reuse.2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %reuse.2, align 4
  %purb.2 = getelementptr %struct.recv_buf, ptr %1, i32 2, i32 11
  %11 = ptrtoint ptr %purb.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %purb.2, align 4
  %tobool.not.2 = icmp eq ptr %12, null
  br i1 %tobool.not.2, label %if.end7.1.if.end7.2_crit_edge, label %if.then5.2

if.end7.1.if.end7.2_crit_edge:                    ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.2

if.then5.2:                                       ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %12) #4
  br label %if.end7.2

if.end7.2:                                        ; preds = %if.then5.2, %if.end7.1.if.end7.2_crit_edge
  %reuse.3 = getelementptr %struct.recv_buf, ptr %1, i32 3, i32 17
  %13 = ptrtoint ptr %reuse.3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %reuse.3, align 4
  %purb.3 = getelementptr %struct.recv_buf, ptr %1, i32 3, i32 11
  %14 = ptrtoint ptr %purb.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %purb.3, align 4
  %tobool.not.3 = icmp eq ptr %15, null
  br i1 %tobool.not.3, label %if.end7.2.if.end7.3_crit_edge, label %if.then5.3

if.end7.2.if.end7.3_crit_edge:                    ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.3

if.then5.3:                                       ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %15) #4
  br label %if.end7.3

if.end7.3:                                        ; preds = %if.then5.3, %if.end7.2.if.end7.3_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_write_port(ptr noundef %padapter, i32 noundef %addr, i32 noundef %cnt, ptr noundef %wmem) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %priv_data = getelementptr inbounds %struct.xmit_buf, ptr %wmem, i32 0, i32 4
  %2 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_data, align 4
  %pusbdev = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %pusbdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pusbdev, align 4
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20
  %6 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %8 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %pnp_bstop_trx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 24
  %10 = ptrtoint ptr %pnp_bstop_trx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pnp_bstop_trx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %do.body4, label %lor.lhs.false2.if.then_crit_edge

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %sctx = getelementptr inbounds %struct.xmit_buf, ptr %wmem, i32 0, i32 9
  tail call void @rtw_sctx_done_err(ptr noundef %sctx, i32 noundef 7) #4
  br label %if.then46

do.body4:                                         ; preds = %lor.lhs.false2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xmitpriv) #4
  %12 = zext i32 %addr to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %addr, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb12
    i32 3, label %sw.bb15
    i32 6, label %do.body4.sw.epilog_crit_edge
  ]

do.body4.sw.epilog_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  %voq_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 30
  %13 = ptrtoint ptr %voq_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %voq_cnt, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %voq_cnt, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  %viq_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 29
  %15 = ptrtoint ptr %viq_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %viq_cnt, align 8
  %inc10 = add i32 %16, 1
  store i32 %inc10, ptr %viq_cnt, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  %beq_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 27
  %17 = ptrtoint ptr %beq_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %beq_cnt, align 8
  %inc13 = add i32 %18, 1
  store i32 %inc13, ptr %beq_cnt, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  %bkq_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 28
  %19 = ptrtoint ptr %bkq_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bkq_cnt, align 4
  %inc16 = add i32 %20, 1
  store i32 %inc16, ptr %bkq_cnt, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb, %do.body4.sw.epilog_crit_edge
  %.sink = phi i16 [ 5, %sw.default ], [ 3, %sw.bb15 ], [ 2, %sw.bb12 ], [ 1, %sw.bb9 ], [ 0, %sw.bb ], [ 6, %do.body4.sw.epilog_crit_edge ]
  %flags20 = getelementptr inbounds %struct.xmit_buf, ptr %wmem, i32 0, i32 6
  %21 = ptrtoint ptr %flags20 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %.sink, ptr %flags20, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xmitpriv, i32 noundef %call6) #4
  %pxmit_urb = getelementptr inbounds %struct.xmit_buf, ptr %wmem, i32 0, i32 11
  %22 = ptrtoint ptr %pxmit_urb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pxmit_urb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %addr)
  %cmp.i = icmp ult i32 %addr, 8
  br i1 %cmp.i, label %if.then.i, label %sw.epilog.ffaddr2pipehdl.exit_crit_edge

sw.epilog.ffaddr2pipehdl.exit_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %ffaddr2pipehdl.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %pusbdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pusbdev, align 4
  %arrayidx.i = getelementptr %struct.dvobj_priv, ptr %1, i32 0, i32 5, i32 %addr
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %27 to i32
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %25, align 8
  %shl.i.i = shl i32 %29, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i.i, -1073741824
  br label %ffaddr2pipehdl.exit

ffaddr2pipehdl.exit:                              ; preds = %if.then.i, %sw.epilog.ffaddr2pipehdl.exit_crit_edge
  %pipe.0.i = phi i32 [ %or.i, %if.then.i ], [ 0, %sw.epilog.ffaddr2pipehdl.exit_crit_edge ]
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %3, i32 0, i32 5
  %30 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf_addr, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 8
  %32 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %5, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 10
  %33 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %pipe.0.i, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 14
  %34 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 19
  %35 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cnt, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 28
  %36 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @usb_write_port_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 27
  %37 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %wmem, ptr %context4.i, align 4
  %call23 = tail call i32 @usb_submit_urb(ptr noundef %23, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %ffaddr2pipehdl.exit.if.end48_crit_edge, label %if.then25

ffaddr2pipehdl.exit.if.end48_crit_edge:           ; preds = %ffaddr2pipehdl.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then25:                                        ; preds = %ffaddr2pipehdl.exit
  %sctx26 = getelementptr inbounds %struct.xmit_buf, ptr %wmem, i32 0, i32 9
  tail call void @rtw_sctx_done_err(ptr noundef %sctx26, i32 noundef 5) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %38 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp28 = icmp ugt i32 %38, 4
  br i1 %cmp28, label %do.end33, label %if.then25.do.end38_crit_edge

if.then25.do.end38_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end38

do.end33:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %call23) #7
  br label %do.end38

do.end38:                                         ; preds = %do.end33, %if.then25.do.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call23)
  %cond = icmp eq i32 %call23, -19
  br i1 %cond, label %sw.bb39, label %do.end38.if.then46_crit_edge

do.end38.if.then46_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46

sw.bb39:                                          ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %bDriverStopped, align 8
  br label %if.then46

if.then46:                                        ; preds = %sw.bb39, %do.end38.if.then46_crit_edge, %if.then
  %call47 = tail call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %wmem) #4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %ffaddr2pipehdl.exit.if.end48_crit_edge
  %ret.080 = phi i32 [ 0, %if.then46 ], [ 1, %ffaddr2pipehdl.exit.if.end48_crit_edge ]
  ret i32 %ret.080
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sctx_done_err(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_write_port_complete(ptr nocapture noundef readonly %purb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %padapter1 = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %padapter1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %padapter1, align 4
  %flags = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %5, label %entry.sw.epilog_crit_edge [
    i16 0, label %sw.bb
    i16 1, label %sw.bb2
    i16 2, label %sw.bb4
    i16 3, label %sw.bb6
    i16 6, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %voq_cnt = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 9, i32 30
  %7 = ptrtoint ptr %voq_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %voq_cnt, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %voq_cnt, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %viq_cnt = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 9, i32 29
  %9 = ptrtoint ptr %viq_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %viq_cnt, align 8
  %dec3 = add i32 %10, -1
  store i32 %dec3, ptr %viq_cnt, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %beq_cnt = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 9, i32 27
  %11 = ptrtoint ptr %beq_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %beq_cnt, align 8
  %dec5 = add i32 %12, -1
  store i32 %dec5, ptr %beq_cnt, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %bkq_cnt = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 9, i32 28
  %13 = ptrtoint ptr %bkq_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bkq_cnt, align 4
  %dec7 = add i32 %14, -1
  store i32 %dec7, ptr %bkq_cnt, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call zeroext i8 @rtw_chk_hi_queue_cmd(ptr noundef %3) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 21
  %15 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %lor.lhs.false, label %sw.epilog.do.body_crit_edge

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false:                                    ; preds = %sw.epilog
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 20
  %17 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool9.not = icmp eq i32 %18, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %bWritePortCancel = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 47
  %19 = ptrtoint ptr %bWritePortCancel to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bWritePortCancel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool12.not = icmp eq i8 %20, 0
  br i1 %tobool12.not, label %if.end23, label %lor.lhs.false10.do.body_crit_edge

lor.lhs.false10.do.body_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false10.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %sw.epilog.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %21 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp = icmp ugt i32 %21, 4
  br i1 %cmp, label %do.end, label %do.body.check_completion_crit_edge

do.body.check_completion_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %check_completion

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %bDriverStopped16 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 20
  %22 = ptrtoint ptr %bDriverStopped16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bDriverStopped16, align 8
  %bReadPortCancel = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 46
  %24 = ptrtoint ptr %bReadPortCancel to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bReadPortCancel, align 2
  %conv18 = zext i8 %25 to i32
  %ext_tag = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %ext_tag to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ext_tag, align 4
  %conv19 = zext i16 %27 to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %23, i32 noundef %16, i32 noundef %conv18, i32 noundef %conv19) #7
  br label %check_completion

if.end23:                                         ; preds = %lor.lhs.false10
  %status = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 12
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool24.not = icmp eq i32 %29, 0
  br i1 %tobool24.not, label %if.end23.check_completion_crit_edge, label %do.body26

if.end23.check_completion_crit_edge:              ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %check_completion

do.body26:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %30 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp27 = icmp ugt i32 %30, 4
  br i1 %cmp27, label %do.end32, label %do.body26.do.end38_crit_edge

do.body26.do.end38_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end38

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %29) #7
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %status, align 4
  br label %do.end38

do.end38:                                         ; preds = %do.end32, %do.body26.do.end38_crit_edge
  %32 = phi i32 [ %.pr, %do.end32 ], [ %29, %do.body26.do.end38_crit_edge ]
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %32, label %if.then89 [
    i32 -115, label %do.end38.check_completion_crit_edge
    i32 -2, label %do.body47
    i32 -104, label %do.body64
    i32 -108, label %if.then80
    i32 -32, label %do.end38.check_completion_crit_edge140
    i32 -71, label %do.end38.check_completion_crit_edge141
  ]

do.end38.check_completion_crit_edge141:           ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %check_completion

do.end38.check_completion_crit_edge140:           ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %check_completion

do.end38.check_completion_crit_edge:              ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %check_completion

do.body47:                                        ; preds = %do.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %34 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp48 = icmp ugt i32 %34, 4
  br i1 %cmp48, label %do.end53, label %do.body47.check_completion_crit_edge

do.body47.check_completion_crit_edge:             ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #6
  br label %check_completion

do.end53:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #6
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7) #7
  br label %check_completion

do.body64:                                        ; preds = %do.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %35 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp65 = icmp ugt i32 %35, 4
  br i1 %cmp65, label %do.end70, label %do.body64.check_completion_crit_edge

do.body64.check_completion_crit_edge:             ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  br label %check_completion

do.end70:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.7) #7
  br label %check_completion

if.then80:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %bDriverStopped, align 8
  br label %check_completion

if.then89:                                        ; preds = %do.end38
  %37 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %bSurpriseRemoved, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %38 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp92 = icmp ugt i32 %38, 4
  br i1 %cmp92, label %do.end97, label %if.then89.check_completion_crit_edge

if.then89.check_completion_crit_edge:             ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #6
  br label %check_completion

do.end97:                                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #6
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #7
  br label %check_completion

check_completion:                                 ; preds = %do.end97, %if.then89.check_completion_crit_edge, %if.then80, %do.end70, %do.body64.check_completion_crit_edge, %do.end53, %do.body47.check_completion_crit_edge, %do.end38.check_completion_crit_edge, %do.end38.check_completion_crit_edge140, %do.end38.check_completion_crit_edge141, %if.end23.check_completion_crit_edge, %do.end, %do.body.check_completion_crit_edge
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 9
  %sctx = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 9
  %status109 = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 12
  %39 = ptrtoint ptr %status109 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %status109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool110.not = icmp eq i32 %40, 0
  %cond = select i1 %tobool110.not, i32 0, i32 5
  tail call void @rtw_sctx_done_err(ptr noundef %sctx, i32 noundef %cond) #4
  %call111 = tail call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %1) #4
  %state.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 9, i32 26, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %check_completion.tasklet_hi_schedule.exit_crit_edge

check_completion.tasklet_hi_schedule.exit_crit_edge: ; preds = %check_completion
  call void @__sanitizer_cov_trace_pc() #6
  br label %tasklet_hi_schedule.exit

if.then.i:                                        ; preds = %check_completion
  call void @__sanitizer_cov_trace_pc() #6
  %xmit_tasklet = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 9, i32 26
  tail call void @__tasklet_hi_schedule(ptr noundef %xmit_tasklet) #4
  br label %tasklet_hi_schedule.exit

tasklet_hi_schedule.exit:                         ; preds = %if.then.i, %check_completion.tasklet_hi_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_xmitbuf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_write_port_cancel(ptr nocapture noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pxmitbuf1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 34
  %0 = ptrtoint ptr %pxmitbuf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pxmitbuf1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp ugt i32 %2, 4
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %bWritePortCancel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 47
  %3 = ptrtoint ptr %bWritePortCancel to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %bWritePortCancel, align 1
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.inc.7.for.cond6.preheader_crit_edge, %do.end4
  %i.057 = phi i32 [ 0, %do.end4 ], [ %inc14, %for.inc.7.for.cond6.preheader_crit_edge ]
  %pxmitbuf.056 = phi ptr [ %1, %do.end4 ], [ %incdec.ptr, %for.inc.7.for.cond6.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.xmit_buf, ptr %pxmitbuf.056, i32 0, i32 11, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.cond6.preheader.for.inc_crit_edge, label %if.then9

for.cond6.preheader.for.inc_crit_edge:            ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then9:                                         ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %5) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %for.cond6.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.056, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %7, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then9.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then9.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %7) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then9.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.056, i32 0, i32 11, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %9, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then9.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then9.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %9) #4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then9.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.056, i32 0, i32 11, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %11, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then9.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.then9.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %11) #4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then9.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.056, i32 0, i32 11, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %13, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then9.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

if.then9.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %13) #4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then9.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.056, i32 0, i32 11, i32 5
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %15, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then9.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

if.then9.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %15) #4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then9.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.056, i32 0, i32 11, i32 6
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %17, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then9.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6

if.then9.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %17) #4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then9.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.056, i32 0, i32 11, i32 7
  %18 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %19, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then9.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7

if.then9.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %19) #4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then9.7, %for.inc.6.for.inc.7_crit_edge
  %incdec.ptr = getelementptr %struct.xmit_buf, ptr %pxmitbuf.056, i32 1
  %inc14 = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc14, 4
  br i1 %exitcond.not, label %for.end15, label %for.inc.7.for.cond6.preheader_crit_edge

for.inc.7.for.cond6.preheader_crit_edge:          ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond6.preheader

for.end15:                                        ; preds = %for.inc.7
  %pxmit_extbuf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 38
  %20 = ptrtoint ptr %pxmit_extbuf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pxmit_extbuf, align 4
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.inc30.7.for.cond20.preheader_crit_edge, %for.end15
  %i.160 = phi i32 [ 0, %for.end15 ], [ %inc35, %for.inc30.7.for.cond20.preheader_crit_edge ]
  %pxmitbuf.159 = phi ptr [ %21, %for.end15 ], [ %incdec.ptr33, %for.inc30.7.for.cond20.preheader_crit_edge ]
  %arrayidx24 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.159, i32 0, i32 11, i32 0
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %23, null
  br i1 %tobool25.not, label %for.cond20.preheader.for.inc30_crit_edge, label %if.then26

for.cond20.preheader.for.inc30_crit_edge:         ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc30

if.then26:                                        ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %23) #4
  br label %for.inc30

for.inc30:                                        ; preds = %if.then26, %for.cond20.preheader.for.inc30_crit_edge
  %arrayidx24.1 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.159, i32 0, i32 11, i32 1
  %24 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx24.1, align 4
  %tobool25.not.1 = icmp eq ptr %25, null
  br i1 %tobool25.not.1, label %for.inc30.for.inc30.1_crit_edge, label %if.then26.1

for.inc30.for.inc30.1_crit_edge:                  ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc30.1

if.then26.1:                                      ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %25) #4
  br label %for.inc30.1

for.inc30.1:                                      ; preds = %if.then26.1, %for.inc30.for.inc30.1_crit_edge
  %arrayidx24.2 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.159, i32 0, i32 11, i32 2
  %26 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx24.2, align 4
  %tobool25.not.2 = icmp eq ptr %27, null
  br i1 %tobool25.not.2, label %for.inc30.1.for.inc30.2_crit_edge, label %if.then26.2

for.inc30.1.for.inc30.2_crit_edge:                ; preds = %for.inc30.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc30.2

if.then26.2:                                      ; preds = %for.inc30.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %27) #4
  br label %for.inc30.2

for.inc30.2:                                      ; preds = %if.then26.2, %for.inc30.1.for.inc30.2_crit_edge
  %arrayidx24.3 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.159, i32 0, i32 11, i32 3
  %28 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx24.3, align 4
  %tobool25.not.3 = icmp eq ptr %29, null
  br i1 %tobool25.not.3, label %for.inc30.2.for.inc30.3_crit_edge, label %if.then26.3

for.inc30.2.for.inc30.3_crit_edge:                ; preds = %for.inc30.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc30.3

if.then26.3:                                      ; preds = %for.inc30.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %29) #4
  br label %for.inc30.3

for.inc30.3:                                      ; preds = %if.then26.3, %for.inc30.2.for.inc30.3_crit_edge
  %arrayidx24.4 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.159, i32 0, i32 11, i32 4
  %30 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx24.4, align 4
  %tobool25.not.4 = icmp eq ptr %31, null
  br i1 %tobool25.not.4, label %for.inc30.3.for.inc30.4_crit_edge, label %if.then26.4

for.inc30.3.for.inc30.4_crit_edge:                ; preds = %for.inc30.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc30.4

if.then26.4:                                      ; preds = %for.inc30.3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %31) #4
  br label %for.inc30.4

for.inc30.4:                                      ; preds = %if.then26.4, %for.inc30.3.for.inc30.4_crit_edge
  %arrayidx24.5 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.159, i32 0, i32 11, i32 5
  %32 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx24.5, align 4
  %tobool25.not.5 = icmp eq ptr %33, null
  br i1 %tobool25.not.5, label %for.inc30.4.for.inc30.5_crit_edge, label %if.then26.5

for.inc30.4.for.inc30.5_crit_edge:                ; preds = %for.inc30.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc30.5

if.then26.5:                                      ; preds = %for.inc30.4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %33) #4
  br label %for.inc30.5

for.inc30.5:                                      ; preds = %if.then26.5, %for.inc30.4.for.inc30.5_crit_edge
  %arrayidx24.6 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.159, i32 0, i32 11, i32 6
  %34 = ptrtoint ptr %arrayidx24.6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx24.6, align 4
  %tobool25.not.6 = icmp eq ptr %35, null
  br i1 %tobool25.not.6, label %for.inc30.5.for.inc30.6_crit_edge, label %if.then26.6

for.inc30.5.for.inc30.6_crit_edge:                ; preds = %for.inc30.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc30.6

if.then26.6:                                      ; preds = %for.inc30.5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %35) #4
  br label %for.inc30.6

for.inc30.6:                                      ; preds = %if.then26.6, %for.inc30.5.for.inc30.6_crit_edge
  %arrayidx24.7 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.159, i32 0, i32 11, i32 7
  %36 = ptrtoint ptr %arrayidx24.7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx24.7, align 4
  %tobool25.not.7 = icmp eq ptr %37, null
  br i1 %tobool25.not.7, label %for.inc30.6.for.inc30.7_crit_edge, label %if.then26.7

for.inc30.6.for.inc30.7_crit_edge:                ; preds = %for.inc30.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc30.7

if.then26.7:                                      ; preds = %for.inc30.6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_kill_urb(ptr noundef nonnull %37) #4
  br label %for.inc30.7

for.inc30.7:                                      ; preds = %if.then26.7, %for.inc30.6.for.inc30.7_crit_edge
  %incdec.ptr33 = getelementptr %struct.xmit_buf, ptr %pxmitbuf.159, i32 1
  %inc35 = add nuw nsw i32 %i.160, 1
  %exitcond62.not = icmp eq i32 %inc35, 32
  br i1 %exitcond62.not, label %for.end36, label %for.inc30.7.for.cond20.preheader_crit_edge

for.inc30.7.for.cond20.preheader_crit_edge:       ; preds = %for.inc30.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond20.preheader

for.end36:                                        ; preds = %for.inc30.7
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_chk_hi_queue_cmd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/os_dep/usb_ops_linux.c", i32 35, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtw_read_port_cancel._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtw_read_port_cancel._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/os_dep/usb_ops_linux.c", i32 177, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rtw_write_port._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @rtw_write_port._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/r8188eu/os_dep/usb_ops_linux.c", i32 205, i32 2}
!13 = !{ptr @rtw_write_port_cancel._entry, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @rtw_write_port_cancel._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/r8188eu/os_dep/usb_ops_linux.c", i32 75, i32 3}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @usb_write_port_complete._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @usb_write_port_complete._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/r8188eu/os_dep/usb_ops_linux.c", i32 84, i32 3}
!22 = !{ptr @usb_write_port_complete._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @usb_write_port_complete._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/r8188eu/os_dep/usb_ops_linux.c", i32 88, i32 4}
!26 = !{ptr @usb_write_port_complete._entry.11, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @usb_write_port_complete._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/r8188eu/os_dep/usb_ops_linux.c", i32 91, i32 4}
!30 = !{ptr @usb_write_port_complete._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @usb_write_port_complete._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/r8188eu/os_dep/usb_ops_linux.c", i32 98, i32 4}
!34 = !{ptr @usb_write_port_complete._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @usb_write_port_complete._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
