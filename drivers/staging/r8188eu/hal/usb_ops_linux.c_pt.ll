; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/usb_ops_linux.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/usb_ops_linux.c"
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
%struct.dvobj_priv = type { ptr, i8, i8, i32, [3 x i32], [8 x i8], i8, %struct.rt_firmware, i8, i8, i32, %struct.semaphore, %struct.mutex, ptr, ptr, %struct.atomic_t, i8 }
%struct.rt_firmware = type { ptr, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
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
%struct.recv_stat = type { i32, i32, i32, i32, i32, i32 }
%struct.recv_frame = type { %struct.list_head, ptr, ptr, ptr, i8, i32, %struct.rx_pkt_attrib, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rx_pkt_attrib = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, [2 x i32], %struct.phy_info }
%struct.phy_info = type { i8, i8, [3 x i8], [3 x i8], i8, i8, i8, [3 x i8], [3 x i8] }
%struct.recv_buf = type { %struct.list_head, %struct.spinlock, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i32, ptr, i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@rtl8188eu_recv_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016R8188EU: recv_tasklet => bDriverStopped or bSurpriseRemoved\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtl8188eu_recv_tasklet\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/staging/r8188eu/hal/usb_ops_linux.c\00", [52 x i8] zeroinitializer }, align 32
@rtl8188eu_recv_tasklet._entry_ptr = internal global ptr @rtl8188eu_recv_tasklet._entry, section ".printk_index", align 4
@rtw_read_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016R8188EU: #### usb_read_port() alloc_skb fail!#####\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtw_read_port\00", [18 x i8] zeroinitializer }, align 32
@rtw_read_port._entry_ptr = internal global ptr @rtw_read_port._entry, section ".printk_index", align 4
@rtw_read_port._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016R8188EU: cannot submit rx in-token(err = 0x%08x),urb_status = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rtw_read_port._entry_ptr.7 = internal global ptr @rtw_read_port._entry.5, section ".printk_index", align 4
@rtl8188eu_xmit_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\016R8188EU: xmit_tasklet => bDriverStopped or bSurpriseRemoved or bWritePortCancel\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtl8188eu_xmit_tasklet\00", [41 x i8] zeroinitializer }, align 32
@rtl8188eu_xmit_tasklet._entry_ptr = internal global ptr @rtl8188eu_xmit_tasklet._entry, section ".printk_index", align 4
@rtw_inc_and_chk_continual_urb_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016R8188EU: [dvobj:%p][ERROR] continual_urb_error:%d > %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rtw_inc_and_chk_continual_urb_error\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/staging/r8188eu/hal/../include/usb_ops.h\00", [47 x i8] zeroinitializer }, align 32
@rtw_inc_and_chk_continual_urb_error._entry_ptr = internal global ptr @rtw_inc_and_chk_continual_urb_error._entry, section ".printk_index", align 4
@recvbuf2recvframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016R8188EU: %s()-%d: rtw_alloc_recvframe() failed! RX Drop!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"recvbuf2recvframe\00", [46 x i8] zeroinitializer }, align 32
@recvbuf2recvframe._entry_ptr = internal global ptr @recvbuf2recvframe._entry, section ".printk_index", align 4
@recvbuf2recvframe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016R8188EU: %s: RX Warning! crc_err=%d icv_err=%d, skip!\0A\00", [39 x i8] zeroinitializer }, align 32
@recvbuf2recvframe._entry_ptr.17 = internal global ptr @recvbuf2recvframe._entry.15, section ".printk_index", align 4
@recvbuf2recvframe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016R8188EU: %s()-%d: RX Warning!,pkt_len<=0 or pkt_offset> transfoer_len\0A\00", [55 x i8] zeroinitializer }, align 32
@recvbuf2recvframe._entry_ptr.20 = internal global ptr @recvbuf2recvframe._entry.18, section ".printk_index", align 4
@recvbuf2recvframe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016R8188EU: recvbuf2recvframe: alloc_skb fail , drop frag frame\0A\00", [32 x i8] zeroinitializer }, align 32
@recvbuf2recvframe._entry_ptr.23 = internal global ptr @recvbuf2recvframe._entry.21, section ".printk_index", align 4
@recvbuf2recvframe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016R8188EU: recvbuf2recvframe: skb_clone fail\0A\00", [50 x i8] zeroinitializer }, align 32
@recvbuf2recvframe._entry_ptr.26 = internal global ptr @recvbuf2recvframe._entry.24, section ".printk_index", align 4
@usb_read_port_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\016R8188EU: %s() RX Warning! bDriverStopped(%d) OR bSurpriseRemoved(%d) bReadPortCancel(%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usb_read_port_complete\00", [41 x i8] zeroinitializer }, align 32
@usb_read_port_complete._entry_ptr = internal global ptr @usb_read_port_complete._entry, section ".printk_index", align 4
@usb_read_port_complete._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016R8188EU: %s()-%d: RX Warning!\0A\00", [63 x i8] zeroinitializer }, align 32
@usb_read_port_complete._entry_ptr.31 = internal global ptr @usb_read_port_complete._entry.29, section ".printk_index", align 4
@usb_read_port_complete._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016R8188EU: ###=> usb_read_port_complete => urb status(%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@usb_read_port_complete._entry_ptr.34 = internal global ptr @usb_read_port_complete._entry.32, section ".printk_index", align 4
@usb_read_port_complete._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.2, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016R8188EU: ERROR: URB IS IN PROGRESS!/n\00", [56 x i8] zeroinitializer }, align 32
@usb_read_port_complete._entry_ptr.37 = internal global ptr @usb_read_port_complete._entry.35, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967188, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 4294967188, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.42 = internal global [10 x i64] [i64 8, i64 32, i64 4294967181, i64 4294967188, i64 4294967221, i64 4294967225, i64 4294967264, i64 4294967274, i64 4294967277, i64 4294967294]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 354, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 462, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 500, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 521, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [52 x i8] c"../drivers/staging/r8188eu/hal/../include/usb_ops.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 34, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 213, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 226, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 238, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 279, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 290, i32 5 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 375, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 385, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 401, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [47 x i8] c"../drivers/staging/r8188eu/hal/usb_ops_linux.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 422, i32 4 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @recvbuf2recvframe._entry, ptr @recvbuf2recvframe._entry.15, ptr @recvbuf2recvframe._entry.18, ptr @recvbuf2recvframe._entry.21, ptr @recvbuf2recvframe._entry.24, ptr @recvbuf2recvframe._entry_ptr, ptr @recvbuf2recvframe._entry_ptr.17, ptr @recvbuf2recvframe._entry_ptr.20, ptr @recvbuf2recvframe._entry_ptr.23, ptr @recvbuf2recvframe._entry_ptr.26, ptr @rtl8188eu_recv_tasklet._entry, ptr @rtl8188eu_recv_tasklet._entry_ptr, ptr @rtl8188eu_xmit_tasklet._entry, ptr @rtl8188eu_xmit_tasklet._entry_ptr, ptr @rtw_inc_and_chk_continual_urb_error._entry, ptr @rtw_inc_and_chk_continual_urb_error._entry_ptr, ptr @rtw_read_port._entry, ptr @rtw_read_port._entry.5, ptr @rtw_read_port._entry_ptr, ptr @rtw_read_port._entry_ptr.7, ptr @usb_read_port_complete._entry, ptr @usb_read_port_complete._entry.29, ptr @usb_read_port_complete._entry.32, ptr @usb_read_port_complete._entry.35, ptr @usb_read_port_complete._entry_ptr, ptr @usb_read_port_complete._entry_ptr.31, ptr @usb_read_port_complete._entry_ptr.34, ptr @usb_read_port_complete._entry_ptr.37, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188eu_recv_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_read_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_read_port._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188eu_xmit_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_inc_and_chk_continual_urb_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recvbuf2recvframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recvbuf2recvframe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recvbuf2recvframe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recvbuf2recvframe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recvbuf2recvframe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_read_port_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_read_port_complete._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_read_port_complete._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_read_port_complete._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_read8(ptr nocapture noundef readonly %adapter, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 1
  %conv = trunc i32 %addr to i16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !73
  call fastcc void @usb_read(ptr noundef %intf1, i16 noundef zeroext %conv, ptr noundef nonnull %data, i8 noundef zeroext 1)
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  ret i8 %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb_read(ptr nocapture noundef readonly %intf, i16 noundef zeroext %value, ptr nocapture noundef writeonly %data, i8 noundef zeroext %size) unnamed_addr #0 align 64 {
entry:
  %io_buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dvobj = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj, align 4
  %pusbdev = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %pusbdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pusbdev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %io_buf) #7
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %io_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %io_buf, align 4
  %7 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pnp_bstop_trx = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 24
  %9 = ptrtoint ptr %pnp_bstop_trx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pnp_bstop_trx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not = icmp eq i8 %10, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv2 = zext i8 %size to i16
  %call = call i32 @usb_control_msg_recv(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext %value, i16 noundef zeroext 0, ptr noundef nonnull %io_buf, i16 noundef zeroext %conv2, i32 noundef 500, i32 noundef 3264) #7
  %11 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.end12 [
    i32 -108, label %if.end.if.then10_crit_edge
    i32 -19, label %if.end.if.then10_crit_edge1
    i32 -2, label %if.end.if.then10_crit_edge2
  ]

if.end.if.then10_crit_edge2:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.end.if.then10_crit_edge1:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %if.end.if.then10_crit_edge, %if.end.if.then10_crit_edge1, %if.end.if.then10_crit_edge2
  %12 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %bSurpriseRemoved, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp13 = icmp slt i32 %call, 0
  br i1 %cmp13, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end12
  %call16 = call fastcc i32 @rtw_inc_and_chk_continual_urb_error(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.cleanup_crit_edge, label %if.then18

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %bSurpriseRemoved, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %continual_urb_error.i = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 15
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %continual_urb_error.i, i32 noundef 4) #7
  %14 = ptrtoint ptr %continual_urb_error.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %continual_urb_error.i, align 4
  %conv23 = zext i8 %size to i32
  %15 = call ptr @memcpy(ptr %data, ptr %io_buf, i32 %conv23)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then18, %if.then15.cleanup_crit_edge, %if.then10, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %io_buf) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @rtw_read16(ptr nocapture noundef readonly %adapter, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 1
  %conv = trunc i32 %addr to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !73
  call fastcc void @usb_read(ptr noundef %intf1, i16 noundef zeroext %conv, ptr noundef nonnull %data, i8 noundef zeroext 2)
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %data, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #7
  ret i16 %3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_read32(ptr nocapture noundef readonly %adapter, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 1
  %conv = trunc i32 %addr to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !73
  call fastcc void @usb_read(ptr noundef %intf1, i16 noundef zeroext %conv, ptr noundef nonnull %data, i8 noundef zeroext 4)
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_write8(ptr nocapture noundef readonly %adapter, i32 noundef %addr, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  %val.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %val, ptr %val.addr, align 1
  %intf1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 1
  %conv = trunc i32 %addr to i16
  %call = call fastcc i32 @usb_write(ptr noundef %intf1, i16 noundef zeroext %conv, ptr noundef nonnull %val.addr, i8 noundef zeroext 1)
  %call2 = tail call i32 @RTW_STATUS_CODE(i32 noundef %call) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_write(ptr nocapture noundef readonly %intf, i16 noundef zeroext %value, ptr nocapture noundef readonly %data, i8 noundef zeroext %size) unnamed_addr #0 align 64 {
entry:
  %io_buf = alloca [254 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dvobj = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj, align 4
  %pusbdev = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %pusbdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pusbdev, align 4
  call void @llvm.lifetime.start.p0(i64 254, ptr nonnull %io_buf) #7
  %6 = call ptr @memset(ptr %io_buf, i32 255, i32 254)
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 21
  %7 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pnp_bstop_trx = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 24
  %9 = ptrtoint ptr %pnp_bstop_trx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pnp_bstop_trx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not = icmp eq i8 %10, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv2 = zext i8 %size to i32
  %11 = call ptr @memcpy(ptr %io_buf, ptr %data, i32 %conv2)
  %conv4 = zext i8 %size to i16
  %call = call i32 @usb_control_msg_send(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext 0, ptr noundef nonnull %io_buf, i16 noundef zeroext %conv4, i32 noundef 500, i32 noundef 3264) #7
  %12 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call, label %if.end14 [
    i32 -108, label %if.end.if.then12_crit_edge
    i32 -19, label %if.end.if.then12_crit_edge41
    i32 -2, label %if.end.if.then12_crit_edge42
  ]

if.end.if.then12_crit_edge42:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end.if.then12_crit_edge41:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.then12:                                        ; preds = %if.end.if.then12_crit_edge, %if.end.if.then12_crit_edge41, %if.end.if.then12_crit_edge42
  %13 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %bSurpriseRemoved, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp15 = icmp slt i32 %call, 0
  br i1 %cmp15, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.end14
  %call18 = call fastcc i32 @rtw_inc_and_chk_continual_urb_error(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.cleanup_crit_edge, label %if.then20

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %bSurpriseRemoved, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %continual_urb_error.i = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 15
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %continual_urb_error.i, i32 noundef 4) #7
  %15 = ptrtoint ptr %continual_urb_error.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %continual_urb_error.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then20, %if.then17.cleanup_crit_edge, %if.then12, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then12 ], [ %call, %if.end23 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ %call, %if.then20 ], [ %call, %if.then17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 254, ptr nonnull %io_buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @RTW_STATUS_CODE(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_write16(ptr nocapture noundef readonly %adapter, i32 noundef %addr, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 1
  %conv = trunc i32 %addr to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #7
  %0 = tail call i16 @llvm.bswap.i16(i16 %val)
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %data, align 2
  %call = call fastcc i32 @usb_write(ptr noundef %intf1, i16 noundef zeroext %conv, ptr noundef nonnull %data, i8 noundef zeroext 2)
  %call2 = tail call i32 @RTW_STATUS_CODE(i32 noundef %call) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_write32(ptr nocapture noundef readonly %adapter, i32 noundef %addr, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 1
  %conv = trunc i32 %addr to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %data, align 4
  %call = call fastcc i32 @usb_write(ptr noundef %intf1, i16 noundef zeroext %conv, ptr noundef nonnull %data, i8 noundef zeroext 4)
  %call2 = tail call i32 @RTW_STATUS_CODE(i32 noundef %call) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_writeN(ptr nocapture noundef readonly %adapter, i32 noundef %addr, i32 noundef %length, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %length)
  %cmp = icmp ugt i32 %length, 254
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %addr to i16
  %intf1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 1
  %conv3 = trunc i32 %length to i8
  %call = tail call fastcc i32 @usb_write(ptr noundef %intf1, i16 noundef zeroext %conv, ptr noundef %data, i8 noundef zeroext %conv3)
  %call4 = tail call i32 @RTW_STATUS_CODE(i32 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188eu_recv_tasklet(i32 noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %priv to ptr
  %rx_skb_queue = getelementptr inbounds %struct.adapter, ptr %0, i32 0, i32 10, i32 22
  %call30 = tail call ptr @skb_dequeue(ptr noundef %rx_skb_queue) #7
  %cmp.not31 = icmp eq ptr %call30, null
  br i1 %cmp.not31, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %0, i32 0, i32 20
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %0, i32 0, i32 21
  %free_recv_queue.i = getelementptr inbounds %struct.adapter, ptr %0, i32 0, i32 10, i32 1
  %pnetdev.i = getelementptr inbounds %struct.adapter, ptr %0, i32 0, i32 37
  %UsbRxAggMode.i = getelementptr inbounds %struct.adapter, ptr %0, i32 0, i32 19, i32 52
  %odmpriv.i = getelementptr inbounds %struct.adapter, ptr %0, i32 0, i32 19, i32 38
  %free_recv_skb_queue = getelementptr inbounds %struct.adapter, ptr %0, i32 0, i32 10, i32 21
  br label %while.body

while.body:                                       ; preds = %recvbuf2recvframe.exit.while.body_crit_edge, %while.body.lr.ph
  %call32 = phi ptr [ %call30, %while.body.lr.ph ], [ %call, %recvbuf2recvframe.exit.while.body_crit_edge ]
  %1 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %while.body.do.body_crit_edge

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false:                                    ; preds = %while.body
  %3 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end8, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %while.body.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %5 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp2 = icmp ugt i32 %5, 4
  br i1 %cmp2, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call32, i32 noundef 1) #7
  br label %while.end

if.end8:                                          ; preds = %lor.lhs.false
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call32, i32 0, i32 6
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call32, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %rxdw2.i = getelementptr inbounds %struct.recv_stat, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rxdw2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxdw2.i, align 4
  %12 = trunc i32 %11 to i16
  %13 = lshr i16 %12, 8
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond223.i.do.body.i_crit_edge, %if.end8
  %transfer_len.0.i = phi i32 [ %7, %if.end8 ], [ %sub209.i, %do.cond223.i.do.body.i_crit_edge ]
  %pphy_status.0.i = phi ptr [ null, %if.end8 ], [ %pphy_status.1.i, %do.cond223.i.do.body.i_crit_edge ]
  %pkt_cnt.0.i = phi i16 [ %13, %if.end8 ], [ %pkt_cnt.1.i, %do.cond223.i.do.body.i_crit_edge ]
  %pbuf.0.i = phi ptr [ %9, %if.end8 ], [ %add.ptr210.i, %do.cond223.i.do.body.i_crit_edge ]
  %call.i = tail call ptr @rtw_alloc_recvframe(ptr noundef %free_recv_queue.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body2.i, label %if.end9.i

do.body2.i:                                       ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %14 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp.i = icmp ugt i32 %14, 4
  br i1 %cmp.i, label %do.end.i, label %do.body2.i.recvbuf2recvframe.exit_crit_edge

do.body2.i.recvbuf2recvframe.exit_crit_edge:      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recvbuf2recvframe.exit

do.end.i:                                         ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 213) #10
  br label %recvbuf2recvframe.exit

if.end9.i:                                        ; preds = %do.body.i
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %prev.i.i, align 4
  %precvbuf.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 12
  %17 = ptrtoint ptr %precvbuf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %precvbuf.i, align 4
  %len10.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %len10.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %len10.i, align 4
  tail call void @update_recvframe_attrib_88e(ptr noundef nonnull %call.i, ptr noundef %pbuf.0.i) #7
  %attrib.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 6
  %crc_err.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 6, i32 20
  %19 = ptrtoint ptr %crc_err.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %crc_err.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool12.not.i = icmp eq i8 %20, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i, label %if.end9.i.do.body16.i_crit_edge

if.end9.i.do.body16.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16.i

lor.lhs.false.i:                                  ; preds = %if.end9.i
  %icv_err.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 6, i32 21
  %21 = ptrtoint ptr %icv_err.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %icv_err.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool14.not.i = icmp eq i8 %22, 0
  br i1 %tobool14.not.i, label %if.end33.i, label %lor.lhs.false.i.do.body16.i_crit_edge

lor.lhs.false.i.do.body16.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16.i

do.body16.i:                                      ; preds = %lor.lhs.false.i.do.body16.i_crit_edge, %if.end9.i.do.body16.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %23 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp17.i = icmp ugt i32 %23, 4
  br i1 %cmp17.i, label %do.end22.i, label %do.body16.i.do.end31.i_crit_edge

do.body16.i.do.end31.i_crit_edge:                 ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i

do.end22.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv25.i = zext i8 %20 to i32
  %icv_err26.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 6, i32 21
  %24 = ptrtoint ptr %icv_err26.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %icv_err26.i, align 1
  %conv27.i = zext i8 %25 to i32
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef %conv25.i, i32 noundef %conv27.i) #10
  br label %do.end31.i

do.end31.i:                                       ; preds = %do.end22.i, %do.body16.i.do.end31.i_crit_edge
  %call32.i = tail call i32 @rtw_free_recvframe(ptr noundef nonnull %call.i, ptr noundef %free_recv_queue.i) #7
  br label %recvbuf2recvframe.exit

if.end33.i:                                       ; preds = %lor.lhs.false.i
  %physt.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %physt.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %physt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool35.not.i = icmp eq i8 %27, 0
  br i1 %tobool35.not.i, label %if.end33.i.if.end40.i_crit_edge, label %land.lhs.true.i

if.end33.i.if.end40.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

land.lhs.true.i:                                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  %pkt_rpt_type.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 6, i32 33
  %28 = ptrtoint ptr %pkt_rpt_type.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pkt_rpt_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp37.i = icmp eq i8 %29, 0
  %add.ptr.i = getelementptr i8, ptr %pbuf.0.i, i32 24
  %spec.select.i = select i1 %cmp37.i, ptr %add.ptr.i, ptr %pphy_status.0.i
  br label %if.end40.i

if.end40.i:                                       ; preds = %land.lhs.true.i, %if.end33.i.if.end40.i_crit_edge
  %pphy_status.1.i = phi ptr [ %pphy_status.0.i, %if.end33.i.if.end40.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %drvinfo_sz.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 6, i32 2
  %30 = ptrtoint ptr %drvinfo_sz.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %drvinfo_sz.i, align 1
  %conv41.i = zext i8 %31 to i32
  %add.i = add nuw nsw i32 %conv41.i, 24
  %shift_sz42.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 6, i32 3
  %32 = ptrtoint ptr %shift_sz42.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %shift_sz42.i, align 4
  %conv43.i = zext i8 %33 to i32
  %add44.i = add nuw nsw i32 %add.i, %conv43.i
  %34 = ptrtoint ptr %attrib.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %attrib.i, align 4
  %conv45.i = zext i16 %35 to i32
  %add46.i = add nuw nsw i32 %add44.i, %conv45.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp49.i = icmp eq i16 %35, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add46.i, i32 %transfer_len.0.i)
  %cmp52.i = icmp ugt i32 %add46.i, %transfer_len.0.i
  %or.cond.i = select i1 %cmp49.i, i1 true, i1 %cmp52.i
  br i1 %or.cond.i, label %do.body55.i, label %if.end68.i

do.body55.i:                                      ; preds = %if.end40.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %36 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %cmp56.i = icmp ugt i32 %36, 4
  br i1 %cmp56.i, label %do.end61.i, label %do.body55.i.do.end66.i_crit_edge

do.body55.i.do.end66.i_crit_edge:                 ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66.i

do.end61.i:                                       ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #9
  %call63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.14, i32 noundef 238) #10
  br label %do.end66.i

do.end66.i:                                       ; preds = %do.end61.i, %do.body55.i.do.end66.i_crit_edge
  %call67.i = tail call i32 @rtw_free_recvframe(ptr noundef nonnull %call.i, ptr noundef %free_recv_queue.i) #7
  br label %recvbuf2recvframe.exit

if.end68.i:                                       ; preds = %if.end40.i
  %qos.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 6, i32 7
  %37 = ptrtoint ptr %qos.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %qos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool69.not.i = icmp eq i8 %38, 0
  %..i = select i1 %tobool69.not.i, i32 0, i32 6
  %mfrag.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 6, i32 13
  %39 = ptrtoint ptr %mfrag.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mfrag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp75.i = icmp eq i8 %40, 1
  br i1 %cmp75.i, label %land.lhs.true77.i, label %if.end68.i.if.else88.i_crit_edge

if.end68.i.if.else88.i_crit_edge:                 ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else88.i

land.lhs.true77.i:                                ; preds = %if.end68.i
  %frag_num.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 6, i32 12
  %41 = ptrtoint ptr %frag_num.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %frag_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp79.i = icmp eq i8 %42, 0
  br i1 %cmp79.i, label %if.then81.i, label %land.lhs.true77.i.if.else88.i_crit_edge

land.lhs.true77.i.if.else88.i_crit_edge:          ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else88.i

if.then81.i:                                      ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 1651, i16 %35)
  %cmp82.i = icmp ult i16 %35, 1651
  %add86.i = add nuw nsw i32 %conv45.i, 14
  %spec.select3.i = select i1 %cmp82.i, i32 1664, i32 %add86.i
  br label %if.end90.i

if.else88.i:                                      ; preds = %land.lhs.true77.i.if.else88.i_crit_edge, %if.end68.i.if.else88.i_crit_edge
  %add89.i = add nuw nsw i32 %conv45.i, 14
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.else88.i, %if.then81.i
  %alloc_sz.0.i = phi i32 [ %add89.i, %if.else88.i ], [ %spec.select3.i, %if.then81.i ]
  %43 = ptrtoint ptr %pnetdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pnetdev.i, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %44, i32 noundef %alloc_sz.0.i, i32 noundef 2592) #7
  %tobool92.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool92.not.i, label %if.else108.i, label %if.then93.i

if.then93.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %pnetdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pnetdev.i, align 4
  %47 = getelementptr inbounds %struct.anon.44, ptr %call.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %47, align 8
  %pkt.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 1
  %49 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i.i, ptr %pkt.i, align 4
  %data95.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %50 = ptrtoint ptr %data95.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data95.i, align 4
  %rx_head.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 8
  %52 = ptrtoint ptr %rx_head.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %rx_head.i, align 4
  %53 = load ptr, ptr %data95.i, align 4
  %add.ptr97.i = getelementptr i8, ptr %53, i32 %alloc_sz.0.i
  %rx_end.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 11
  %54 = ptrtoint ptr %rx_end.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr97.i, ptr %rx_end.i, align 4
  %55 = load ptr, ptr %data95.i, align 4
  %56 = ptrtoint ptr %55 to i32
  %and99.i = and i32 %56, 7
  %sub.i = sub nuw nsw i32 8, %and99.i
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 %sub.i
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %57 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %58, i32 %sub.i
  %add.ptr.i5.i = getelementptr i8, ptr %add.ptr.i.i, i32 %..i
  store ptr %add.ptr.i5.i, ptr %data95.i, align 4
  %add.ptr1.i7.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %..i
  store ptr %add.ptr1.i7.i, ptr %tail.i.i, align 8
  %59 = ptrtoint ptr %drvinfo_sz.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %drvinfo_sz.i, align 1
  %conv103.i = zext i8 %60 to i32
  %add.ptr104.i = getelementptr i8, ptr %pbuf.0.i, i32 24
  %add.ptr105.i = getelementptr i8, ptr %add.ptr104.i, i32 %conv103.i
  %61 = call ptr @memcpy(ptr %add.ptr.i5.i, ptr %add.ptr105.i, i32 %conv45.i)
  %62 = load ptr, ptr %data95.i, align 4
  %rx_tail.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 10
  %63 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %rx_tail.i, align 4
  %64 = load ptr, ptr %data95.i, align 4
  %rx_data.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 9
  %65 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %rx_data.i, align 4
  br label %if.end.i.i

if.else108.i:                                     ; preds = %if.end90.i
  %66 = ptrtoint ptr %mfrag.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mfrag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %cmp111.i = icmp eq i8 %67, 1
  br i1 %cmp111.i, label %land.lhs.true113.i, label %if.else108.i.if.end132.i_crit_edge

if.else108.i.if.end132.i_crit_edge:               ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132.i

land.lhs.true113.i:                               ; preds = %if.else108.i
  %frag_num114.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 6, i32 12
  %68 = ptrtoint ptr %frag_num114.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %frag_num114.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp116.i = icmp eq i8 %69, 0
  br i1 %cmp116.i, label %do.body119.i, label %land.lhs.true113.i.if.end132.i_crit_edge

land.lhs.true113.i.if.end132.i_crit_edge:         ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132.i

do.body119.i:                                     ; preds = %land.lhs.true113.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %70 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %70)
  %cmp120.i = icmp ugt i32 %70, 4
  br i1 %cmp120.i, label %do.end125.i, label %do.body119.i.do.end130.i_crit_edge

do.body119.i.do.end130.i_crit_edge:               ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end130.i

do.end125.i:                                      ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #9
  %call127.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #10
  br label %do.end130.i

do.end130.i:                                      ; preds = %do.end125.i, %do.body119.i.do.end130.i_crit_edge
  %call131.i = tail call i32 @rtw_free_recvframe(ptr noundef nonnull %call.i, ptr noundef %free_recv_queue.i) #7
  br label %recvbuf2recvframe.exit

if.end132.i:                                      ; preds = %land.lhs.true113.i.if.end132.i_crit_edge, %if.else108.i.if.end132.i_crit_edge
  %call133.i = tail call ptr @skb_clone(ptr noundef nonnull %call32, i32 noundef 2592) #7
  %pkt134.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 1
  %71 = ptrtoint ptr %pkt134.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call133.i, ptr %pkt134.i, align 4
  %tobool136.not.i = icmp eq ptr %call133.i, null
  br i1 %tobool136.not.i, label %do.body154.i, label %if.then137.i

if.then137.i:                                     ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %drvinfo_sz.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %drvinfo_sz.i, align 1
  %conv139.i = zext i8 %73 to i32
  %add.ptr140.i = getelementptr i8, ptr %pbuf.0.i, i32 24
  %add.ptr141.i = getelementptr i8, ptr %add.ptr140.i, i32 %conv139.i
  %rx_tail142.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 10
  %74 = ptrtoint ptr %rx_tail142.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr141.i, ptr %rx_tail142.i, align 4
  %rx_head144.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 8
  %75 = ptrtoint ptr %rx_head144.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr141.i, ptr %rx_head144.i, align 4
  %rx_data146.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 9
  %76 = ptrtoint ptr %rx_data146.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr141.i, ptr %rx_data146.i, align 4
  %add.ptr151.i = getelementptr i8, ptr %add.ptr141.i, i32 %alloc_sz.0.i
  %rx_end152.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 11
  %77 = ptrtoint ptr %rx_end152.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr151.i, ptr %rx_end152.i, align 4
  br label %if.end.i.i

do.body154.i:                                     ; preds = %if.end132.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %78 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %78)
  %cmp155.i = icmp ugt i32 %78, 4
  br i1 %cmp155.i, label %do.end160.i, label %do.body154.i.do.end165.i_crit_edge

do.body154.i.do.end165.i_crit_edge:               ; preds = %do.body154.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end165.i

do.end160.i:                                      ; preds = %do.body154.i
  call void @__sanitizer_cov_trace_pc() #9
  %call162.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  br label %do.end165.i

do.end165.i:                                      ; preds = %do.end160.i, %do.body154.i.do.end165.i_crit_edge
  %call166.i = tail call i32 @rtw_free_recvframe(ptr noundef nonnull %call.i, ptr noundef %free_recv_queue.i) #7
  br label %recvbuf2recvframe.exit

if.end.i.i:                                       ; preds = %if.then137.i, %if.then93.i
  %rx_tail.i.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 10
  %79 = ptrtoint ptr %rx_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rx_tail.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %80, i32 %conv45.i
  store ptr %add.ptr.i8.i, ptr %rx_tail.i.i, align 4
  %rx_end.i.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 11
  %81 = ptrtoint ptr %rx_end.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rx_end.i.i, align 4
  %cmp2.i.i = icmp ugt ptr %add.ptr.i8.i, %82
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end6.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %rx_tail.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %rx_tail.i.i, align 4
  br label %recvframe_put.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %len10.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len10.i, align 4
  %add.i.i = add i32 %85, %conv45.i
  store i32 %add.i.i, ptr %len10.i, align 4
  br label %recvframe_put.exit.i

recvframe_put.exit.i:                             ; preds = %if.end6.i.i, %if.then3.i.i
  %86 = ptrtoint ptr %UsbRxAggMode.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %UsbRxAggMode.i, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %87, label %recvframe_put.exit.i.sw.epilog.i_crit_edge [
    i32 1, label %recvframe_put.exit.i.sw.bb.i_crit_edge
    i32 3, label %recvframe_put.exit.i.sw.bb.i_crit_edge84
    i32 2, label %sw.bb173.i
  ]

recvframe_put.exit.i.sw.bb.i_crit_edge84:         ; preds = %recvframe_put.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

recvframe_put.exit.i.sw.bb.i_crit_edge:           ; preds = %recvframe_put.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

recvframe_put.exit.i.sw.epilog.i_crit_edge:       ; preds = %recvframe_put.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %recvframe_put.exit.i.sw.bb.i_crit_edge, %recvframe_put.exit.i.sw.bb.i_crit_edge84
  %and.i.i = and i32 %add46.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.not.i.i = icmp eq i32 %and.i.i, 0
  %add2.i.i = select i1 %tobool.not.not.i.i, i32 0, i32 128
  %shr3.i.i = add nuw nsw i32 %add2.i.i, %add46.i
  %conv172.i = and i32 %shr3.i.i, 65408
  br label %sw.epilog.i

sw.bb173.i:                                       ; preds = %recvframe_put.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i9.i = and i32 %add46.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9.i)
  %tobool.not.not.i10.i = icmp eq i32 %and.i9.i, 0
  %add2.i11.i = select i1 %tobool.not.not.i10.i, i32 0, i32 4
  %shr3.i12.i = add nuw nsw i32 %add2.i11.i, %add46.i
  %conv176.i = and i32 %shr3.i12.i, 65532
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb173.i, %sw.bb.i, %recvframe_put.exit.i.sw.epilog.i_crit_edge
  %pkt_offset.0.i = phi i32 [ %add46.i, %recvframe_put.exit.i.sw.epilog.i_crit_edge ], [ %conv176.i, %sw.bb173.i ], [ %conv172.i, %sw.bb.i ]
  %pkt_rpt_type178.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 6, i32 33
  %89 = ptrtoint ptr %pkt_rpt_type178.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %pkt_rpt_type178.i, align 1
  %91 = zext i8 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %90, label %sw.epilog.i.if.end206.i_crit_edge [
    i8 0, label %if.then182.i
    i8 1, label %if.then193.i
    i8 2, label %if.then200.i
  ]

sw.epilog.i.if.end206.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206.i

if.then182.i:                                     ; preds = %sw.epilog.i
  %92 = ptrtoint ptr %physt.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %physt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool184.not.i = icmp eq i8 %93, 0
  br i1 %tobool184.not.i, label %if.then182.i.if.end186.i_crit_edge, label %if.then185.i

if.then182.i.if.end186.i_crit_edge:               ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186.i

if.then185.i:                                     ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @update_recvframe_phyinfo_88e(ptr noundef nonnull %call.i, ptr noundef %pphy_status.1.i) #7
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.then185.i, %if.then182.i.if.end186.i_crit_edge
  %call187.i = tail call i32 @rtw_recv_entry(ptr noundef nonnull %call.i) #7
  br label %if.end208.i

if.then193.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_data194.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 9
  %94 = ptrtoint ptr %rx_data194.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rx_data194.i, align 4
  tail call void @handle_txrpt_ccx_88e(ptr noundef %0, ptr noundef %95) #7
  br label %if.end206.i

if.then200.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_data201.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 9
  %96 = ptrtoint ptr %rx_data201.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rx_data201.i, align 4
  %98 = ptrtoint ptr %attrib.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %attrib.i, align 4
  %MacIDValidEntry.i = getelementptr inbounds %struct.recv_frame, ptr %call.i, i32 0, i32 6, i32 34
  %100 = ptrtoint ptr %MacIDValidEntry.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %MacIDValidEntry.i, align 4
  %arrayidx204.i = getelementptr %struct.recv_frame, ptr %call.i, i32 0, i32 6, i32 34, i32 1
  %102 = ptrtoint ptr %arrayidx204.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx204.i, align 4
  tail call void @ODM_RA_TxRPT2Handle_8188E(ptr noundef %odmpriv.i, ptr noundef %97, i16 noundef zeroext %99, i32 noundef %101, i32 noundef %103) #7
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.then200.i, %if.then193.i, %sw.epilog.i.if.end206.i_crit_edge
  %call207.i = tail call i32 @rtw_free_recvframe(ptr noundef nonnull %call.i, ptr noundef %free_recv_queue.i) #7
  br label %if.end208.i

if.end208.i:                                      ; preds = %if.end206.i, %if.end186.i
  %dec.i = add i16 %pkt_cnt.0.i, -1
  %sub209.i = sub i32 %transfer_len.0.i, %pkt_offset.0.i
  %add.ptr210.i = getelementptr i8, ptr %pbuf.0.i, i32 %pkt_offset.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub209.i)
  %cmp211.i = icmp sgt i32 %sub209.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.i)
  %cmp215.i = icmp eq i16 %dec.i, 0
  %or.cond1.i = select i1 %cmp211.i, i1 %cmp215.i, i1 false
  br i1 %or.cond1.i, label %if.then217.i, label %if.end208.i.do.cond223.i_crit_edge

if.end208.i.do.cond223.i_crit_edge:               ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond223.i

if.then217.i:                                     ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #9
  %rxdw2218.i = getelementptr inbounds %struct.recv_stat, ptr %pbuf.0.i, i32 0, i32 2
  %104 = ptrtoint ptr %rxdw2218.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rxdw2218.i, align 4
  %106 = trunc i32 %105 to i16
  %107 = lshr i16 %106, 8
  br label %do.cond223.i

do.cond223.i:                                     ; preds = %if.then217.i, %if.end208.i.do.cond223.i_crit_edge
  %pkt_cnt.1.i = phi i16 [ %107, %if.then217.i ], [ %dec.i, %if.end208.i.do.cond223.i_crit_edge ]
  %cmp211.not.i = xor i1 %cmp211.i, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pkt_cnt.1.i)
  %cmp227.not.i = icmp eq i16 %pkt_cnt.1.i, 0
  %or.cond2.i = select i1 %cmp211.not.i, i1 true, i1 %cmp227.not.i
  br i1 %or.cond2.i, label %do.cond223.i.recvbuf2recvframe.exit_crit_edge, label %do.cond223.i.do.body.i_crit_edge

do.cond223.i.do.body.i_crit_edge:                 ; preds = %do.cond223.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.cond223.i.recvbuf2recvframe.exit_crit_edge:    ; preds = %do.cond223.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recvbuf2recvframe.exit

recvbuf2recvframe.exit:                           ; preds = %do.cond223.i.recvbuf2recvframe.exit_crit_edge, %do.end165.i, %do.end130.i, %do.end66.i, %do.end31.i, %do.end.i, %do.body2.i.recvbuf2recvframe.exit_crit_edge
  %108 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call32, i32 0, i32 16
  %110 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %109, ptr %tail.i, align 8
  %111 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %len.i, align 4
  tail call void @skb_queue_tail(ptr noundef %free_recv_skb_queue, ptr noundef nonnull %call32) #7
  %call = tail call ptr @skb_dequeue(ptr noundef %rx_skb_queue) #7
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %recvbuf2recvframe.exit.while.end_crit_edge, label %recvbuf2recvframe.exit.while.body_crit_edge

recvbuf2recvframe.exit.while.body_crit_edge:      ; preds = %recvbuf2recvframe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

recvbuf2recvframe.exit.while.end_crit_edge:       ; preds = %recvbuf2recvframe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %recvbuf2recvframe.exit.while.end_crit_edge, %do.end7, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_read_port(ptr noundef %adapter, ptr noundef %rmem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %pusbdev = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pusbdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pusbdev, align 4
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 20
  %4 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 21
  %6 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %pnp_bstop_trx = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 24
  %8 = ptrtoint ptr %pnp_bstop_trx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pnp_bstop_trx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp ne i8 %9, 0
  %tobool4.not = icmp eq ptr %rmem, null
  %or.cond = or i1 %tobool4.not, %tobool3.not
  br i1 %or.cond, label %lor.lhs.false2.cleanup_crit_edge, label %if.end6

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false2
  %reuse = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 17
  %10 = ptrtoint ptr %reuse to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reuse, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %if.end6.if.then10_crit_edge, label %lor.lhs.false8

if.end6.if.then10_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

lor.lhs.false8:                                   ; preds = %if.end6
  %pskb = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 16
  %12 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pskb, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %lor.lhs.false8.if.then10_crit_edge, label %lor.lhs.false8.if.end17_crit_edge

lor.lhs.false8.if.end17_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

lor.lhs.false8.if.then10_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false8.if.then10_crit_edge, %if.end6.if.then10_crit_edge
  %free_recv_skb_queue = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 21
  %call = tail call ptr @skb_dequeue(ptr noundef %free_recv_skb_queue) #7
  %pskb11 = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 16
  %14 = ptrtoint ptr %pskb11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %pskb11, align 4
  %tobool13.not = icmp eq ptr %call, null
  br i1 %tobool13.not, label %if.then10.if.end17_crit_edge, label %if.then14

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %reuse to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %reuse, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then10.if.end17_crit_edge, %lor.lhs.false8.if.end17_crit_edge
  tail call void @rtl8188eu_init_recvbuf(ptr noundef nonnull %rmem) #7
  %16 = ptrtoint ptr %reuse to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reuse, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool19.not = icmp eq i8 %17, 0
  br i1 %tobool19.not, label %if.end17.if.then23_crit_edge, label %lor.lhs.false20

if.end17.if.then23_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

lor.lhs.false20:                                  ; preds = %if.end17
  %pskb21 = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 16
  %18 = ptrtoint ptr %pskb21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pskb21, align 4
  %tobool22.not = icmp eq ptr %19, null
  br i1 %tobool22.not, label %lor.lhs.false20.if.then23_crit_edge, label %if.else

lor.lhs.false20.if.then23_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false20.if.then23_crit_edge, %if.end17.if.then23_crit_edge
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 37
  %20 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pnetdev, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %21, i32 noundef 15368, i32 noundef 2592) #7
  %pskb25 = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 16
  %22 = ptrtoint ptr %pskb25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %pskb25, align 4
  %tobool27.not = icmp eq ptr %call.i, null
  br i1 %tobool27.not, label %do.body, label %if.end36

do.body:                                          ; preds = %if.then23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %23 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp = icmp ugt i32 %23, 4
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end36:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %26 = ptrtoint ptr %25 to i32
  %and = and i32 %26, 7
  %sub = sub nuw nsw i32 8, %and
  %add.ptr.i = getelementptr i8, ptr %25, i32 %sub
  store ptr %add.ptr.i, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %28, i32 %sub
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %29 = ptrtoint ptr %pskb25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pskb25, align 4
  %head = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 18
  %31 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head, align 8
  %phead = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 7
  %33 = ptrtoint ptr %phead to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %phead, align 4
  %data41 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 19
  %34 = ptrtoint ptr %data41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data41, align 4
  %pdata = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 8
  %36 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %pdata, align 4
  %tail.i144 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 16
  %37 = ptrtoint ptr %tail.i144 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i144, align 8
  %ptail = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 9
  %39 = ptrtoint ptr %ptail to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %ptail, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 17
  %40 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %end.i, align 4
  %pend = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 10
  %42 = ptrtoint ptr %pend to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %pend, align 4
  %43 = load ptr, ptr %data41, align 4
  %pbuf = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 4
  %44 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %pbuf, align 4
  br label %if.end64

if.else:                                          ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #9
  %head49 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 18
  %45 = ptrtoint ptr %head49 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head49, align 8
  %phead50 = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 7
  %47 = ptrtoint ptr %phead50 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %phead50, align 4
  %data52 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 19
  %48 = ptrtoint ptr %data52 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data52, align 4
  %pdata53 = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 8
  %50 = ptrtoint ptr %pdata53 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %pdata53, align 4
  %tail.i145 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 16
  %51 = ptrtoint ptr %tail.i145 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i145, align 8
  %ptail56 = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 9
  %53 = ptrtoint ptr %ptail56 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %ptail56, align 4
  %end.i146 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 17
  %54 = ptrtoint ptr %end.i146 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %end.i146, align 4
  %pend59 = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 10
  %56 = ptrtoint ptr %pend59 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %pend59, align 4
  %57 = load ptr, ptr %data52, align 4
  %pbuf62 = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 4
  %58 = ptrtoint ptr %pbuf62 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %pbuf62, align 4
  %59 = ptrtoint ptr %reuse to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %reuse, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.end36
  %rx_pending_cnt = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 18
  %60 = ptrtoint ptr %rx_pending_cnt to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %rx_pending_cnt, align 8
  %inc = add i8 %61, 1
  store i8 %inc, ptr %rx_pending_cnt, align 8
  %purb65 = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 11
  %62 = ptrtoint ptr %purb65 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %purb65, align 4
  %RtInPipe = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 3
  %64 = ptrtoint ptr %RtInPipe to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %RtInPipe, align 4
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %3, align 8
  %shl.i = shl i32 %67, 8
  %shl1.i = shl i32 %65, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or67 = or i32 %or.i, -1073741696
  %pbuf68 = getelementptr inbounds %struct.recv_buf, ptr %rmem, i32 0, i32 4
  %68 = ptrtoint ptr %pbuf68 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pbuf68, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 8
  %70 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %3, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 10
  %71 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or67, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 14
  %72 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 19
  %73 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 15360, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 28
  %74 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @usb_read_port_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 27
  %75 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %rmem, ptr %context4.i, align 4
  %call69 = tail call i32 @usb_submit_urb(ptr noundef %63, i32 noundef 2592) #7
  %76 = zext i32 %call69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call69, label %do.body74 [
    i32 0, label %if.end64.cleanup_crit_edge
    i32 -1, label %if.end64.cleanup_crit_edge147
  ]

if.end64.cleanup_crit_edge147:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body74:                                        ; preds = %if.end64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %77 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %77)
  %cmp75 = icmp ugt i32 %77, 4
  br i1 %cmp75, label %do.end80, label %do.body74.cleanup_crit_edge

do.body74.cleanup_crit_edge:                      ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end80:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #9
  %status = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 12
  %78 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %status, align 4
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call69, i32 noundef %79) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %do.body74.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.end64.cleanup_crit_edge147, %do.end, %do.body.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false2.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 1, %if.end64.cleanup_crit_edge ], [ 1, %if.end64.cleanup_crit_edge147 ], [ 0, %do.end80 ], [ 0, %do.body74.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188eu_init_recvbuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_read_port_complete(ptr nocapture noundef readonly %purb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %adapter = getelementptr inbounds %struct.recv_buf, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 4
  %rx_pending_cnt = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 10, i32 18
  %4 = ptrtoint ptr %rx_pending_cnt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_pending_cnt, align 8
  %dec = add i8 %5, -1
  store i8 %dec, ptr %rx_pending_cnt, align 8
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 20
  %8 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %bReadPortCancel = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 46
  %10 = ptrtoint ptr %bReadPortCancel to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bReadPortCancel, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.end13, label %lor.lhs.false2.if.then_crit_edge

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %reuse = getelementptr inbounds %struct.recv_buf, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %reuse to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %reuse, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %13 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp = icmp ugt i32 %13, 4
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %bDriverStopped7 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 20
  %14 = ptrtoint ptr %bDriverStopped7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bDriverStopped7, align 8
  %16 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bSurpriseRemoved, align 4
  %bReadPortCancel9 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 46
  %18 = ptrtoint ptr %bReadPortCancel9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bReadPortCancel9, align 2
  %conv10 = zext i8 %19 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %15, i32 noundef %17, i32 noundef %conv10) #10
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false2
  %status = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 12
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp14 = icmp eq i32 %21, 0
  br i1 %cmp14, label %if.then16, label %do.body53

if.then16:                                        ; preds = %if.end13
  %actual_length = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 20
  %22 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual_length, align 4
  %24 = add i32 %23, -15361
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15337, i32 %24)
  %25 = icmp ult i32 %24, -15337
  br i1 %25, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then16
  %reuse24 = getelementptr inbounds %struct.recv_buf, ptr %1, i32 0, i32 17
  %26 = ptrtoint ptr %reuse24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %reuse24, align 4
  %call25 = tail call i32 @rtw_read_port(ptr noundef %3, ptr noundef %1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %27 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp27 = icmp ugt i32 %27, 4
  br i1 %cmp27, label %do.end32, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end32:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef 385) #10
  br label %cleanup

if.else:                                          ; preds = %if.then16
  %dvobj = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 3
  %28 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dvobj, align 4
  %continual_urb_error.i = getelementptr inbounds %struct.dvobj_priv, ptr %29, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %continual_urb_error.i, i32 noundef 4) #7
  %30 = ptrtoint ptr %continual_urb_error.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %continual_urb_error.i, align 4
  %31 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %actual_length, align 4
  %transfer_len = getelementptr inbounds %struct.recv_buf, ptr %1, i32 0, i32 15
  %33 = ptrtoint ptr %transfer_len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %transfer_len, align 4
  %pskb = getelementptr inbounds %struct.recv_buf, ptr %1, i32 0, i32 16
  %34 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pskb, align 4
  %36 = load i32, ptr %actual_length, align 4
  %call40 = tail call ptr @skb_put(ptr noundef %35, i32 noundef %36) #7
  %rx_skb_queue = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 10, i32 22
  %37 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pskb, align 4
  tail call void @skb_queue_tail(ptr noundef %rx_skb_queue, ptr noundef %38) #7
  %qlen.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 10, i32 22, i32 1
  %39 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp44 = icmp ult i32 %40, 2
  br i1 %cmp44, label %if.then46, label %if.else.if.end47_crit_edge

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %recv_tasklet = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 10, i32 20
  tail call fastcc void @tasklet_schedule(ptr noundef %recv_tasklet)
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.else.if.end47_crit_edge
  %41 = ptrtoint ptr %pskb to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %pskb, align 4
  %reuse49 = getelementptr inbounds %struct.recv_buf, ptr %1, i32 0, i32 17
  %42 = ptrtoint ptr %reuse49 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %reuse49, align 4
  %call50 = tail call i32 @rtw_read_port(ptr noundef %3, ptr noundef %1)
  br label %cleanup

do.body53:                                        ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %43 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp54 = icmp ugt i32 %43, 4
  br i1 %cmp54, label %do.end59, label %do.body53.do.end65_crit_edge

do.body53.do.end65_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

do.end59:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %21) #10
  br label %do.end65

do.end65:                                         ; preds = %do.end59, %do.body53.do.end65_crit_edge
  %pskb66 = getelementptr inbounds %struct.recv_buf, ptr %1, i32 0, i32 16
  %44 = ptrtoint ptr %pskb66 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pskb66, align 4
  %actual_length67 = getelementptr inbounds %struct.urb, ptr %purb, i32 0, i32 20
  %46 = ptrtoint ptr %actual_length67 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %actual_length67, align 4
  %call68 = tail call ptr @skb_put(ptr noundef %45, i32 noundef %47) #7
  %48 = ptrtoint ptr %pskb66 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %pskb66, align 4
  %dvobj70 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 3
  %49 = ptrtoint ptr %dvobj70 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dvobj70, align 4
  %continual_urb_error.i135 = getelementptr inbounds %struct.dvobj_priv, ptr %50, i32 0, i32 15
  %call.i.i.i136 = tail call zeroext i1 @__kasan_check_write(ptr noundef %continual_urb_error.i135, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %continual_urb_error.i135, i32 1, i32 3, i32 1) #7
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %continual_urb_error.i135, ptr %continual_urb_error.i135, i32 1, ptr elementtype(i32) %continual_urb_error.i135) #7, !srcloc !75
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %51, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp sgt i32 %asmresult.i.i.i.i.i, 4
  br i1 %cmp.i, label %do.body.i, label %do.end65.if.end75_crit_edge

do.end65.if.end75_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

do.body.i:                                        ; preds = %do.end65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %52 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %cmp1.i = icmp ugt i32 %52, 4
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.if.then73_crit_edge

do.body.i.if.then73_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then73

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %50, i32 noundef %asmresult.i.i.i.i.i, i32 noundef 4) #10
  br label %if.then73

if.then73:                                        ; preds = %do.end.i, %do.body.i.if.then73_crit_edge
  %53 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %bSurpriseRemoved, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %do.end65.if.end75_crit_edge
  %54 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %status, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %55, label %if.end75.cleanup_crit_edge [
    i32 -22, label %if.end75.sw.bb_crit_edge
    i32 -32, label %if.end75.sw.bb_crit_edge139
    i32 -19, label %if.end75.sw.bb_crit_edge140
    i32 -108, label %if.end75.sw.bb_crit_edge141
    i32 -2, label %if.end75.sw.bb_crit_edge142
    i32 -71, label %if.end75.sw.bb78_crit_edge
    i32 -75, label %if.end75.sw.bb78_crit_edge143
    i32 -115, label %do.body82
  ]

if.end75.sw.bb78_crit_edge143:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78

if.end75.sw.bb78_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78

if.end75.sw.bb_crit_edge142:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end75.sw.bb_crit_edge141:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end75.sw.bb_crit_edge140:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end75.sw.bb_crit_edge139:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end75.sw.bb_crit_edge:                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end75.sw.bb_crit_edge, %if.end75.sw.bb_crit_edge139, %if.end75.sw.bb_crit_edge140, %if.end75.sw.bb_crit_edge141, %if.end75.sw.bb_crit_edge142
  %57 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %bDriverStopped, align 8
  br label %cleanup

sw.bb78:                                          ; preds = %if.end75.sw.bb78_crit_edge, %if.end75.sw.bb78_crit_edge143
  %reuse79 = getelementptr inbounds %struct.recv_buf, ptr %1, i32 0, i32 17
  %58 = ptrtoint ptr %reuse79 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %reuse79, align 4
  %call80 = tail call i32 @rtw_read_port(ptr noundef %3, ptr noundef %1)
  br label %cleanup

do.body82:                                        ; preds = %if.end75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %59 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %59)
  %cmp83 = icmp ugt i32 %59, 4
  br i1 %cmp83, label %do.end88, label %do.body82.cleanup_crit_edge

do.body82.cleanup_crit_edge:                      ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end88:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #9
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end88, %do.body82.cleanup_crit_edge, %sw.bb78, %sw.bb, %if.end75.cleanup_crit_edge, %if.end47, %do.end32, %if.then23.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188eu_xmit_tasklet(i32 noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %priv to ptr
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %0, i32 0, i32 9
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %0, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_state.i, align 4
  %3 = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %0, i32 0, i32 20
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %0, i32 0, i32 21
  %bWritePortCancel = getelementptr inbounds %struct.adapter, ptr %0, i32 0, i32 47
  br label %while.cond

while.cond:                                       ; preds = %if.end13.while.cond_crit_edge, %while.cond.preheader
  %4 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %while.cond.do.body_crit_edge

while.cond.do.body_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false:                                    ; preds = %while.cond
  %6 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %bWritePortCancel to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bWritePortCancel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.end13, label %lor.lhs.false3.do.body_crit_edge

lor.lhs.false3.do.body_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false3.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %while.cond.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %10 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp = icmp ugt i32 %10, 4
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false3
  %call14 = tail call i32 @rtl8188eu_xmitframe_complete(ptr noundef %0, ptr noundef %xmitpriv, ptr noundef null) #7
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end13.while.cond_crit_edge

if.end13.while.cond_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8188eu_xmitframe_complete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_recv(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw_inc_and_chk_continual_urb_error(ptr noundef %dvobj) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %continual_urb_error = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %continual_urb_error, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %continual_urb_error, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %continual_urb_error, ptr %continual_urb_error, i32 1, ptr elementtype(i32) %continual_urb_error) #7, !srcloc !75
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, 4
  br i1 %cmp, label %do.body, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %1 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp1 = icmp ugt i32 %1, 4
  br i1 %cmp1, label %do.end, label %do.body.if.end7_crit_edge

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %dvobj, i32 noundef %asmresult.i.i.i.i, i32 noundef 4) #10
  br label %if.end7

if.end7:                                          ; preds = %do.end, %do.body.if.end7_crit_edge, %entry.if.end7_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end7_crit_edge ], [ 1, %do.end ], [ 1, %do.body.if.end7_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_recvframe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_recvframe_attrib_88e(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_recvframe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_recvframe_phyinfo_88e(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_recv_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_txrpt_ccx_88e(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_RA_TxRPT2Handle_8188E(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tasklet_schedule(ptr noundef %t) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__tasklet_schedule(ptr noundef %t) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/hal/usb_ops_linux.c", i32 354, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl8188eu_recv_tasklet._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl8188eu_recv_tasklet._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/hal/usb_ops_linux.c", i32 462, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rtw_read_port._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @rtw_read_port._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/r8188eu/hal/usb_ops_linux.c", i32 500, i32 3}
!13 = !{ptr @rtw_read_port._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @rtw_read_port._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/r8188eu/hal/usb_ops_linux.c", i32 521, i32 4}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rtl8188eu_xmit_tasklet._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @rtl8188eu_xmit_tasklet._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/r8188eu/hal/../include/usb_ops.h", i32 34, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rtw_inc_and_chk_continual_urb_error._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @rtw_inc_and_chk_continual_urb_error._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/r8188eu/hal/usb_ops_linux.c", i32 213, i32 4}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @recvbuf2recvframe._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @recvbuf2recvframe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/r8188eu/hal/usb_ops_linux.c", i32 226, i32 4}
!33 = !{ptr @recvbuf2recvframe._entry.15, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @recvbuf2recvframe._entry_ptr.17, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/r8188eu/hal/usb_ops_linux.c", i32 238, i32 4}
!37 = !{ptr @recvbuf2recvframe._entry.18, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @recvbuf2recvframe._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/r8188eu/hal/usb_ops_linux.c", i32 279, i32 5}
!41 = !{ptr @recvbuf2recvframe._entry.21, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @recvbuf2recvframe._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/r8188eu/hal/usb_ops_linux.c", i32 290, i32 5}
!45 = !{ptr @recvbuf2recvframe._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @recvbuf2recvframe._entry_ptr.26, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/r8188eu/hal/usb_ops_linux.c", i32 375, i32 3}
!49 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @usb_read_port_complete._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @usb_read_port_complete._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/r8188eu/hal/usb_ops_linux.c", i32 385, i32 4}
!54 = !{ptr @usb_read_port_complete._entry.29, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @usb_read_port_complete._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/r8188eu/hal/usb_ops_linux.c", i32 401, i32 3}
!58 = !{ptr @usb_read_port_complete._entry.32, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @usb_read_port_complete._entry_ptr.34, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/r8188eu/hal/usb_ops_linux.c", i32 422, i32 4}
!62 = !{ptr @usb_read_port_complete._entry.35, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @usb_read_port_complete._entry_ptr.37, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
!74 = !{i64 2148420863}
!75 = !{i64 2148336148, i64 2148336180, i64 2148336209, i64 2148336243, i64 2148336274, i64 2148336297}
!76 = !{i64 2148421092}
