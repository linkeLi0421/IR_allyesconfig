; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/usb_halinit.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/usb_halinit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wl_pwr_cfg = type { i16, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.recv_buf = type { %struct.list_head, %struct.spinlock, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i32, ptr, i8 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [6 x i8], i8, i16, [8 x i8], i8, [32 x i8], i16, [32 x i8], i8, i8, %struct.rssi_sta, i8, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }

@rtl8188E_power_on_flow = external dso_local global [0 x %struct.wl_pwr_cfg], align 2
@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@rtl8188eu_InitPowerOn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016R8188EU: \013%s: run power on flow fail\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl8188eu_InitPowerOn\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/r8188eu/hal/usb_halinit.c\00", [54 x i8] zeroinitializer }, align 32
@rtl8188eu_InitPowerOn._entry_ptr = internal global ptr @rtl8188eu_InitPowerOn._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rtl8188eu_hal_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016R8188EU: %s: Download Firmware failed!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl8188eu_hal_init\00", [45 x i8] zeroinitializer }, align 32
@rtl8188eu_hal_init._entry_ptr = internal global ptr @rtl8188eu_hal_init._entry, section ".printk_index", align 4
@rtl8188eu_hal_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016R8188EU:  ### Failed to init MAC ......\0A \00", [52 x i8] zeroinitializer }, align 32
@rtl8188eu_hal_init._entry_ptr.7 = internal global ptr @rtl8188eu_hal_init._entry.5, section ".printk_index", align 4
@rtl8188eu_hal_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016R8188EU:  ### Failed to init BB ......\0A \00", [53 x i8] zeroinitializer }, align 32
@rtl8188eu_hal_init._entry_ptr.10 = internal global ptr @rtl8188eu_hal_init._entry.8, section ".printk_index", align 4
@rtl8188eu_hal_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016R8188EU:  ### Failed to init RF ......\0A \00", [53 x i8] zeroinitializer }, align 32
@rtl8188eu_hal_init._entry_ptr.13 = internal global ptr @rtl8188eu_hal_init._entry.11, section ".printk_index", align 4
@rtl8188eu_hal_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016R8188EU: %s  rtl8188e_iol_efuse_patch failed\0A\00", [48 x i8] zeroinitializer }, align 32
@rtl8188eu_hal_init._entry_ptr.16 = internal global ptr @rtl8188eu_hal_init._entry.14, section ".printk_index", align 4
@rtl8188eu_hal_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016R8188EU: %s in %dms\0A\00", [41 x i8] zeroinitializer }, align 32
@rtl8188eu_hal_init._entry_ptr.19 = internal global ptr @rtl8188eu_hal_init._entry.17, section ".printk_index", align 4
@rtl8188eu_hal_deinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016R8188EU: ==> %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl8188eu_hal_deinit\00", [43 x i8] zeroinitializer }, align 32
@rtl8188eu_hal_deinit._entry_ptr = internal global ptr @rtl8188eu_hal_deinit._entry, section ".printk_index", align 4
@rtl8188eu_hal_deinit._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016R8188EU: bkeepfwalive(%x)\0A\00", [35 x i8] zeroinitializer }, align 32
@rtl8188eu_hal_deinit._entry_ptr.24 = internal global ptr @rtl8188eu_hal_deinit._entry.22, section ".printk_index", align 4
@ReadAdapterInfo8188EU._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016R8188EU: Boot from %s, Autoload %s !\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ReadAdapterInfo8188EU\00", [42 x i8] zeroinitializer }, align 32
@ReadAdapterInfo8188EU._entry_ptr = internal global ptr @ReadAdapterInfo8188EU._entry, section ".printk_index", align 4
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EEPROM\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EFUSE\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Fail\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@SetHwReg8188EU._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 1116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016R8188EU: HW_VAR_BASIC_RATE: BrateCfg(%#x)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SetHwReg8188EU\00", [17 x i8] zeroinitializer }, align 32
@SetHwReg8188EU._entry_ptr = internal global ptr @SetHwReg8188EU._entry, section ".printk_index", align 4
@SetHwReg8188EU._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 1413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016R8188EU: [HW_VAR_ACM_CTRL] Write 0x%X\0A\00", [55 x i8] zeroinitializer }, align 32
@SetHwReg8188EU._entry_ptr.35 = internal global ptr @SetHwReg8188EU._entry.33, section ".printk_index", align 4
@SetHwReg8188EU._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 1556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016R8188EU: Stop RX DMA failed......\0A\00", [59 x i8] zeroinitializer }, align 32
@SetHwReg8188EU._entry_ptr.38 = internal global ptr @SetHwReg8188EU._entry.36, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@SetHwReg8188EU._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.2, i32 1567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016R8188EU: %s: bMacPwrCtrlOn=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@SetHwReg8188EU._entry_ptr.41 = internal global ptr @SetHwReg8188EU._entry.39, section ".printk_index", align 4
@SetHwReg8188EU._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.2, i32 1572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016R8188EU: ### MacID(%d),Set Max Tx RPT MID(%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@SetHwReg8188EU._entry_ptr.44 = internal global ptr @SetHwReg8188EU._entry.42, section ".printk_index", align 4
@GetHalDefVar8188EUsb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 1704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016R8188EU: ============ RA status check ===================\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GetHalDefVar8188EUsb\00", [43 x i8] zeroinitializer }, align 32
@GetHalDefVar8188EUsb._entry_ptr = internal global ptr @GetHalDefVar8188EUsb._entry, section ".printk_index", align 4
@GetHalDefVar8188EUsb._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 1711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\016R8188EU: Mac_id:%d , RateID = %d, RAUseRate = 0x%08x, RateSGI = %d, DecisionRate = 0x%02x ,PTStage = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@GetHalDefVar8188EUsb._entry_ptr.49 = internal global ptr @GetHalDefVar8188EUsb._entry.47, section ".printk_index", align 4
@SetHalDefVar8188EUsb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016R8188EU: ==> Disable all dynamic function...\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SetHalDefVar8188EUsb\00", [43 x i8] zeroinitializer }, align 32
@SetHalDefVar8188EUsb._entry_ptr = internal global ptr @SetHalDefVar8188EUsb._entry, section ".printk_index", align 4
@SetHalDefVar8188EUsb._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 1746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016R8188EU: ==> Disable DIG...\0A\00", [33 x i8] zeroinitializer }, align 32
@SetHalDefVar8188EUsb._entry_ptr.54 = internal global ptr @SetHalDefVar8188EUsb._entry.52, section ".printk_index", align 4
@SetHalDefVar8188EUsb._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 1751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016R8188EU: ==> Disable tx power tracking...\0A\00", [51 x i8] zeroinitializer }, align 32
@SetHalDefVar8188EUsb._entry_ptr.57 = internal global ptr @SetHalDefVar8188EUsb._entry.55, section ".printk_index", align 4
@SetHalDefVar8188EUsb._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.2, i32 1760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016R8188EU: ==> Turn on all dynamic function...\0A\00", [48 x i8] zeroinitializer }, align 32
@SetHalDefVar8188EUsb._entry_ptr.60 = internal global ptr @SetHalDefVar8188EUsb._entry.58, section ".printk_index", align 4
@UpdateHalRAMask8188EUsb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\016R8188EU: %s => mac_id:%d, networkType:0x%02x, mask:0x%08x\0A\09 ==> rssi_level:%d, rate_bitmap:0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"UpdateHalRAMask8188EUsb\00", [40 x i8] zeroinitializer }, align 32
@UpdateHalRAMask8188EUsb._entry_ptr = internal global ptr @UpdateHalRAMask8188EUsb._entry, section ".printk_index", align 4
@UpdateHalRAMask8188EUsb._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 1842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016R8188EU: update raid entry, mask=0x%x, arg=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@UpdateHalRAMask8188EUsb._entry_ptr.65 = internal global ptr @UpdateHalRAMask8188EUsb._entry.63, section ".printk_index", align 4
@_ConfigNormalChipOutEP_8188E._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016R8188EU: %s OutEpQueueSel(0x%02x), OutEpNumber(%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"_ConfigNormalChipOutEP_8188E\00", [35 x i8] zeroinitializer }, align 32
@_ConfigNormalChipOutEP_8188E._entry_ptr = internal global ptr @_ConfigNormalChipOutEP_8188E._entry, section ".printk_index", align 4
@_InitAntenna_Selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016R8188EU: ==>  %s ....\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_InitAntenna_Selection\00", [41 x i8] zeroinitializer }, align 32
@_InitAntenna_Selection._entry_ptr = internal global ptr @_InitAntenna_Selection._entry, section ".printk_index", align 4
@_InitAntenna_Selection._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016R8188EU: %s,Cur_ant:(%x)%s\0A\00", [34 x i8] zeroinitializer }, align 32
@_InitAntenna_Selection._entry_ptr.72 = internal global ptr @_InitAntenna_Selection._entry.70, section ".printk_index", align 4
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Antenna_A\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Antenna_B\00", [22 x i8] zeroinitializer }, align 32
@rtl8188E_enter_lps_flow = external dso_local global [0 x %struct.wl_pwr_cfg], align 2
@rtl8188E_card_disable_flow = external dso_local global [0 x %struct.wl_pwr_cfg], align 2
@__const.Hal_EfuseParseMACAddr_8188EU.sMacAddr = private unnamed_addr constant [6 x i8] c"\00\E0L\81\88\02", align 1
@hw_var_set_opmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016R8188EU: %s()-%d mode = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hw_var_set_opmode\00", [46 x i8] zeroinitializer }, align 32
@hw_var_set_opmode._entry_ptr = internal global ptr @hw_var_set_opmode._entry, section ".printk_index", align 4
@switch.table.rtl8188eu_hal_init = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 3, i16 1, i16 0, i16 2], [24 x i8] zeroinitializer }, align 32
@switch.table.rtl8188eu_hal_init.77 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 3, i16 0, i16 3, i16 2], [24 x i8] zeroinitializer }, align 32
@switch.table.rtl8188eu_hal_init.78 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 1, i16 0, i16 2, i16 1], [24 x i8] zeroinitializer }, align 32
@switch.table.SetHwReg8188EU = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\06\06\06\00\06", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.81 = internal global [47 x i64] [i64 45, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 39, i64 44, i64 49, i64 52, i64 55, i64 56, i64 58, i64 59, i64 60]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [11 x i64] [i64 9, i64 8, i64 6, i64 7, i64 19, i64 20, i64 38, i64 47, i64 52, i64 56, i64 61]
@__sancov_gen_cov_switch_values.88 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 7, i64 13]
@__sancov_gen_cov_switch_values.90 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 81, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 631, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 644, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 655, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 663, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 670, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 793, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 857, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 862, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 931, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1116, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1413, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1556, i32 6 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1567, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1572, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1704, i32 5 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1705, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1743, i32 5 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1746, i32 5 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1751, i32 5 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1760, i32 5 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1827, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1842, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 40, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 562, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 571, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.306 = private constant [45 x i8] c"../drivers/staging/r8188eu/hal/usb_halinit.c\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 994, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [32 x i8] c"switch.table.rtl8188eu_hal_init\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [35 x i8] c"switch.table.rtl8188eu_hal_init.77\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [35 x i8] c"switch.table.rtl8188eu_hal_init.78\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [28 x i8] c"switch.table.SetHwReg8188EU\00", align 1
@llvm.compiler.used = appending global [103 x ptr] [ptr @GetHalDefVar8188EUsb._entry, ptr @GetHalDefVar8188EUsb._entry.47, ptr @GetHalDefVar8188EUsb._entry_ptr, ptr @GetHalDefVar8188EUsb._entry_ptr.49, ptr @ReadAdapterInfo8188EU._entry, ptr @ReadAdapterInfo8188EU._entry_ptr, ptr @SetHalDefVar8188EUsb._entry, ptr @SetHalDefVar8188EUsb._entry.52, ptr @SetHalDefVar8188EUsb._entry.55, ptr @SetHalDefVar8188EUsb._entry.58, ptr @SetHalDefVar8188EUsb._entry_ptr, ptr @SetHalDefVar8188EUsb._entry_ptr.54, ptr @SetHalDefVar8188EUsb._entry_ptr.57, ptr @SetHalDefVar8188EUsb._entry_ptr.60, ptr @SetHwReg8188EU._entry, ptr @SetHwReg8188EU._entry.33, ptr @SetHwReg8188EU._entry.36, ptr @SetHwReg8188EU._entry.39, ptr @SetHwReg8188EU._entry.42, ptr @SetHwReg8188EU._entry_ptr, ptr @SetHwReg8188EU._entry_ptr.35, ptr @SetHwReg8188EU._entry_ptr.38, ptr @SetHwReg8188EU._entry_ptr.41, ptr @SetHwReg8188EU._entry_ptr.44, ptr @UpdateHalRAMask8188EUsb._entry, ptr @UpdateHalRAMask8188EUsb._entry.63, ptr @UpdateHalRAMask8188EUsb._entry_ptr, ptr @UpdateHalRAMask8188EUsb._entry_ptr.65, ptr @_ConfigNormalChipOutEP_8188E._entry, ptr @_ConfigNormalChipOutEP_8188E._entry_ptr, ptr @_InitAntenna_Selection._entry, ptr @_InitAntenna_Selection._entry.70, ptr @_InitAntenna_Selection._entry_ptr, ptr @_InitAntenna_Selection._entry_ptr.72, ptr @hw_var_set_opmode._entry, ptr @hw_var_set_opmode._entry_ptr, ptr @rtl8188eu_InitPowerOn._entry, ptr @rtl8188eu_InitPowerOn._entry_ptr, ptr @rtl8188eu_hal_deinit._entry, ptr @rtl8188eu_hal_deinit._entry.22, ptr @rtl8188eu_hal_deinit._entry_ptr, ptr @rtl8188eu_hal_deinit._entry_ptr.24, ptr @rtl8188eu_hal_init._entry, ptr @rtl8188eu_hal_init._entry.11, ptr @rtl8188eu_hal_init._entry.14, ptr @rtl8188eu_hal_init._entry.17, ptr @rtl8188eu_hal_init._entry.5, ptr @rtl8188eu_hal_init._entry.8, ptr @rtl8188eu_hal_init._entry_ptr, ptr @rtl8188eu_hal_init._entry_ptr.10, ptr @rtl8188eu_hal_init._entry_ptr.13, ptr @rtl8188eu_hal_init._entry_ptr.16, ptr @rtl8188eu_hal_init._entry_ptr.19, ptr @rtl8188eu_hal_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @switch.table.rtl8188eu_hal_init, ptr @switch.table.rtl8188eu_hal_init.77, ptr @switch.table.rtl8188eu_hal_init.78, ptr @switch.table.SetHwReg8188EU], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188eu_InitPowerOn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188eu_hal_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188eu_hal_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188eu_hal_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188eu_hal_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188eu_hal_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188eu_hal_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188eu_hal_deinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188eu_hal_deinit._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ReadAdapterInfo8188EU._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetHwReg8188EU._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetHwReg8188EU._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetHwReg8188EU._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetHwReg8188EU._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetHwReg8188EU._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GetHalDefVar8188EUsb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GetHalDefVar8188EUsb._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetHalDefVar8188EUsb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetHalDefVar8188EUsb._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetHalDefVar8188EUsb._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetHalDefVar8188EUsb._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UpdateHalRAMask8188EUsb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UpdateHalRAMask8188EUsb._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ConfigNormalChipOutEP_8188E._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_InitAntenna_Selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_InitAntenna_Selection._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_var_set_opmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8188eu_hal_init to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8188eu_hal_init.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8188eu_hal_init.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.SetHwReg8188EU to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188eu_interface_configure(ptr noundef %adapt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %ishighspeed = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ishighspeed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ishighspeed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %spec.select = select i1 %tobool.not, i32 64, i32 512
  %4 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 49
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %4, align 4
  %UsbTxAggMode = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 50
  %6 = ptrtoint ptr %UsbTxAggMode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %UsbTxAggMode, align 8
  %UsbTxAggDescNum = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 51
  %7 = ptrtoint ptr %UsbTxAggDescNum to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %UsbTxAggDescNum, align 1
  %UsbRxAggMode = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 52
  %8 = ptrtoint ptr %UsbRxAggMode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %UsbRxAggMode, align 4
  %UsbRxAggBlockCount = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 53
  %9 = ptrtoint ptr %UsbRxAggBlockCount to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %UsbRxAggBlockCount, align 8
  %UsbRxAggBlockTimeout = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 54
  %10 = ptrtoint ptr %UsbRxAggBlockTimeout to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 6, ptr %UsbRxAggBlockTimeout, align 1
  %UsbRxAggPageCount = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 55
  %11 = ptrtoint ptr %UsbRxAggPageCount to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 48, ptr %UsbRxAggPageCount, align 2
  %UsbRxAggPageTimeout = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 56
  %12 = ptrtoint ptr %UsbRxAggPageTimeout to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %UsbRxAggPageTimeout, align 1
  %RtNumOutPipes = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %RtNumOutPipes to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %RtNumOutPipes, align 1
  %switch.tableidx = add i8 %14, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %15 = icmp ult i8 %switch.tableidx, 3
  br i1 %15, label %switch.lookup, label %entry.do.body.i.i_crit_edge

entry.do.body.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.cast = zext i8 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 460033, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %OutEpQueueSel.i.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 44
  %16 = ptrtoint ptr %OutEpQueueSel.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %switch.masked, ptr %OutEpQueueSel.i.i, align 1
  %OutEpNumber.i.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 45
  %17 = ptrtoint ptr %OutEpNumber.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %14, ptr %OutEpNumber.i.i, align 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %switch.lookup, %entry.do.body.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %18 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp.i.i = icmp ugt i32 %18, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %do.body.i.i.HalUsbSetQueuePipeMapping8188EUsb.exit_crit_edge

do.body.i.i.HalUsbSetQueuePipeMapping8188EUsb.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %HalUsbSetQueuePipeMapping8188EUsb.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %OutEpQueueSel10.i.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 44
  %19 = ptrtoint ptr %OutEpQueueSel10.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %OutEpQueueSel10.i.i, align 1
  %conv11.i.i = zext i8 %20 to i32
  %OutEpNumber12.i.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 45
  %21 = ptrtoint ptr %OutEpNumber12.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %OutEpNumber12.i.i, align 2
  %conv13.i.i = zext i8 %22 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef %conv11.i.i, i32 noundef %conv13.i.i) #9
  br label %HalUsbSetQueuePipeMapping8188EUsb.exit

HalUsbSetQueuePipeMapping8188EUsb.exit:           ; preds = %do.end.i.i, %do.body.i.i.HalUsbSetQueuePipeMapping8188EUsb.exit_crit_edge
  %call.i = tail call zeroext i1 @Hal_MappingOutPipe(ptr noundef %adapt, i8 noundef zeroext %14) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8188eu_InitPowerOn(ptr noundef %adapt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bMacPwrCtrlOn = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 48
  %0 = ptrtoint ptr %bMacPwrCtrlOn to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bMacPwrCtrlOn, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i8 @HalPwrSeqCmdParsing(ptr noundef %adapt, ptr noundef nonnull @rtl8188E_power_on_flow) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool2.not = icmp eq i8 %call, 0
  br i1 %tobool2.not, label %do.body, label %if.end10

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp ugt i32 %2, 4
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 @rtw_write16(ptr noundef %adapt, i32 noundef 256, i16 noundef zeroext 0) #6
  %call12 = tail call zeroext i16 @rtw_read16(ptr noundef %adapt, i32 noundef 256) #6
  %3 = or i16 %call12, 1599
  %call14 = tail call i32 @rtw_write16(ptr noundef %adapt, i32 noundef 256, i16 noundef zeroext %3) #6
  %4 = ptrtoint ptr %bMacPwrCtrlOn to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %bMacPwrCtrlOn, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @HalPwrSeqCmdParsing(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw_read16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8188eu_hal_init(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %bkeepfwalive = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 14, i32 34
  %1 = ptrtoint ptr %bkeepfwalive to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bkeepfwalive, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %odmpriv = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38
  %bIQKInitialized = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 44
  %3 = ptrtoint ptr %bIQKInitialized to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bIQKInitialized, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @PHY_IQCalibrate_8188E(ptr noundef %Adapter, i1 noundef zeroext true) #6
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @PHY_IQCalibrate_8188E(ptr noundef %Adapter, i1 noundef zeroext false) #6
  %5 = ptrtoint ptr %bIQKInitialized to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %bIQKInitialized, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  tail call void @ODM_TXPowerTrackingCheck(ptr noundef %odmpriv) #6
  tail call void @PHY_LCCalibrate_8188E(ptr noundef %Adapter) #6
  br label %do.body155

if.end10:                                         ; preds = %entry
  %call = tail call i32 @rtl8188eu_InitPowerOn(ptr noundef %Adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end10.do.body155_crit_edge, label %if.end12

if.end10.do.body155_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body155

if.end12:                                         ; preds = %if.end10
  %CurrentChannel = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 8
  %6 = ptrtoint ptr %CurrentChannel to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %CurrentChannel, align 4
  %reg_rfoff = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 14, i32 7
  %7 = ptrtoint ptr %reg_rfoff to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg_rfoff, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool13.not = icmp eq i8 %8, 0
  br i1 %tobool13.not, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %rf_pwrstate = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 14, i32 31
  %9 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %rf_pwrstate, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 13, i32 44
  %10 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %OutEpQueueSel.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 44
  %12 = ptrtoint ptr %OutEpQueueSel.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %OutEpQueueSel.i, align 1
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not.i = icmp eq i8 %14, 0
  %spec.select.i = select i1 %tobool3.not.i, i32 0, i32 41
  %15 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not.i = icmp eq i8 %15, 0
  %numLQ.0.i = select i1 %tobool8.not.i, i32 0, i32 28
  %16 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool14.not.i = icmp eq i8 %16, 0
  %numNQ.0.i = select i1 %tobool14.not.i, i32 0, i32 28
  %conv18.i = trunc i32 %numNQ.0.i to i8
  %call.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 532, i8 noundef zeroext %conv18.i) #6
  %17 = add nuw nsw i32 %spec.select.i, %numLQ.0.i
  %18 = add nuw nsw i32 %17, %numNQ.0.i
  %shl.i = shl nuw nsw i32 %numLQ.0.i, 8
  %or.i = or i32 %shl.i, %spec.select.i
  %.neg.i = mul nuw nsw i32 %18, 16711680
  %and23.i = add nuw nsw i32 %.neg.i, 11010048
  %shl24.i = and i32 %and23.i, 16711680
  %or25.i = or i32 %shl24.i, %or.i
  %or26.i = or i32 %or25.i, -2147483648
  br label %_InitQueueReservedPage.exit

if.else.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call28.i = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 532, i16 noundef zeroext 0) #6
  %call29.i = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 532, i16 noundef zeroext 13) #6
  br label %_InitQueueReservedPage.exit

_InitQueueReservedPage.exit:                      ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ -2138177523, %if.else.i ], [ %or26.i, %if.then.i ]
  %call30.i = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 512, i32 noundef %.sink.i) #6
  %OutEpNumber.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 45
  %19 = ptrtoint ptr %OutEpNumber.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %OutEpNumber.i, align 2
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %20, label %_InitQueueReservedPage.exit._InitQueuePriority.exit_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb2.i
    i8 3, label %sw.bb3.i
  ]

_InitQueueReservedPage.exit._InitQueuePriority.exit_crit_edge: ; preds = %_InitQueueReservedPage.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %_InitQueuePriority.exit

sw.bb.i:                                          ; preds = %_InitQueueReservedPage.exit
  %OutEpQueueSel.i.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 44
  %22 = ptrtoint ptr %OutEpQueueSel.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %OutEpQueueSel.i.i, align 1
  %switch.tableidx = add i8 %23, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %24 = icmp ult i8 %switch.tableidx, 4
  br i1 %24, label %switch.lookup, label %sw.bb.i._InitNormalChipOneOutEpPriority.exit.i_crit_edge

sw.bb.i._InitNormalChipOneOutEpPriority.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_InitNormalChipOneOutEpPriority.exit.i

switch.lookup:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.rtl8188eu_hal_init, i32 0, i32 %25
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %26)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %_InitNormalChipOneOutEpPriority.exit.i

_InitNormalChipOneOutEpPriority.exit.i:           ; preds = %switch.lookup, %sw.bb.i._InitNormalChipOneOutEpPriority.exit.i_crit_edge
  %value.0.i.i = phi i16 [ 0, %sw.bb.i._InitNormalChipOneOutEpPriority.exit.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %call.i.i.i = tail call zeroext i16 @rtw_read16(ptr noundef %Adapter, i32 noundef 268) #6
  %27 = and i16 %call.i.i.i, 7
  %or1832.i.i.i = mul nuw nsw i16 %value.0.i.i, 5456
  %28 = shl nuw i16 %value.0.i.i, 14
  %or2233.i.i.i = or i16 %27, %28
  %or2434.i.i.i = or i16 %or2233.i.i.i, %or1832.i.i.i
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %_InitQueueReservedPage.exit
  %OutEpQueueSel.i7.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 44
  %29 = ptrtoint ptr %OutEpQueueSel.i7.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %OutEpQueueSel.i7.i, align 1
  %switch.tableidx271 = add i8 %30, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx271)
  %31 = icmp ult i8 %switch.tableidx271, 4
  br i1 %31, label %switch.lookup270, label %sw.bb2.i._InitNormalChipTwoOutEpPriority.exit.i_crit_edge

sw.bb2.i._InitNormalChipTwoOutEpPriority.exit.i_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_InitNormalChipTwoOutEpPriority.exit.i

switch.lookup270:                                 ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = sext i8 %switch.tableidx271 to i32
  %switch.gep272 = getelementptr inbounds [4 x i16], ptr @switch.table.rtl8188eu_hal_init.77, i32 0, i32 %32
  %33 = ptrtoint ptr %switch.gep272 to i32
  call void @__asan_load2_noabort(i32 %33)
  %switch.load273 = load i16, ptr %switch.gep272, align 2
  %34 = sext i8 %switch.tableidx271 to i32
  %switch.gep274 = getelementptr inbounds [4 x i16], ptr @switch.table.rtl8188eu_hal_init.78, i32 0, i32 %34
  %35 = ptrtoint ptr %switch.gep274 to i32
  call void @__asan_load2_noabort(i32 %35)
  %switch.load275 = load i16, ptr %switch.gep274, align 2
  br label %_InitNormalChipTwoOutEpPriority.exit.i

_InitNormalChipTwoOutEpPriority.exit.i:           ; preds = %switch.lookup270, %sw.bb2.i._InitNormalChipTwoOutEpPriority.exit.i_crit_edge
  %valueHi.0.i.i = phi i16 [ 0, %sw.bb2.i._InitNormalChipTwoOutEpPriority.exit.i_crit_edge ], [ %switch.load273, %switch.lookup270 ]
  %valueLow.0.i.i = phi i16 [ 0, %sw.bb2.i._InitNormalChipTwoOutEpPriority.exit.i_crit_edge ], [ %switch.load275, %switch.lookup270 ]
  %36 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i = icmp eq i8 %37, 0
  %valueLow.0.valueHi.0.i.i = select i1 %tobool.not.i.i, i16 %valueLow.0.i.i, i16 %valueHi.0.i.i
  %valueHi.0.valueLow.0.i.i = select i1 %tobool.not.i.i, i16 %valueHi.0.i.i, i16 %valueLow.0.i.i
  %call.i.i11.i = tail call zeroext i16 @rtw_read16(ptr noundef %Adapter, i32 noundef 268) #6
  %38 = and i16 %call.i.i11.i, 7
  %39 = shl nuw nsw i16 %valueLow.0.i.i, 8
  %40 = shl nuw nsw i16 %valueLow.0.valueHi.0.i.i, 10
  %or29.i.i.i = or i16 %40, %39
  %41 = shl nuw nsw i16 %valueHi.0.i.i, 6
  %or1030.i.i.i = or i16 %or29.i.i.i, %41
  %42 = shl nuw nsw i16 %valueHi.0.valueLow.0.i.i, 4
  %or1431.i.i.i = or i16 %or1030.i.i.i, %42
  %or1832.i.i12.i = mul nuw i16 %valueHi.0.i.i, 20480
  %or2233.i.i13.i = or i16 %38, %or1832.i.i12.i
  %or2434.i.i14.i = or i16 %or1431.i.i.i, %or2233.i.i13.i
  br label %sw.epilog.sink.split.i

sw.bb3.i:                                         ; preds = %_InitQueueReservedPage.exit
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i17.i = icmp eq i8 %44, 0
  %call.i.i18.i = tail call zeroext i16 @rtw_read16(ptr noundef %Adapter, i32 noundef 268) #6
  %45 = and i16 %call.i.i18.i, 7
  %or2233.i.i19.i = select i1 %tobool.not.i17.i, i16 -2640, i16 -1616
  %or2434.i.i20.i = or i16 %or2233.i.i19.i, %45
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb3.i, %_InitNormalChipTwoOutEpPriority.exit.i, %_InitNormalChipOneOutEpPriority.exit.i
  %or2434.i.i20.sink.i = phi i16 [ %or2434.i.i20.i, %sw.bb3.i ], [ %or2434.i.i14.i, %_InitNormalChipTwoOutEpPriority.exit.i ], [ %or2434.i.i.i, %_InitNormalChipOneOutEpPriority.exit.i ]
  %call26.i.i21.i = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 268, i16 noundef zeroext %or2434.i.i20.sink.i) #6
  br label %_InitQueuePriority.exit

_InitQueuePriority.exit:                          ; preds = %sw.epilog.sink.split.i, %_InitQueueReservedPage.exit._InitQueuePriority.exit_crit_edge
  %call.i264 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 278, i16 noundef zeroext 9215) #6
  %call.i265 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 260, i8 noundef zeroext 17) #6
  %call.i266 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1060, i8 noundef zeroext 0) #6
  %call1.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1061, i8 noundef zeroext 0) #6
  %call2.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1117, i8 noundef zeroext 0) #6
  %call3.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 276, i8 noundef zeroext 0) #6
  %call4.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 521, i8 noundef zeroext 0) #6
  %call20 = tail call i32 @rtl8188e_FirmwareDownload(ptr noundef %Adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 1
  br i1 %cmp21.not, label %if.else30, label %do.body

do.body:                                          ; preds = %_InitQueuePriority.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %46 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp23 = icmp ugt i32 %46, 4
  br i1 %cmp23, label %do.end, label %do.body.do.end29_crit_edge

do.body.do.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  br label %do.end29

do.end29:                                         ; preds = %do.end, %do.body.do.end29_crit_edge
  %bFWReady = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 44
  %47 = ptrtoint ptr %bFWReady to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %bFWReady, align 8
  %fw_ractrl = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 33
  %48 = ptrtoint ptr %fw_ractrl to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %fw_ractrl, align 1
  br label %cleanup

if.else30:                                        ; preds = %_InitQueuePriority.exit
  %bFWReady31 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 44
  %49 = ptrtoint ptr %bFWReady31 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %bFWReady31, align 8
  %fw_ractrl32 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 33
  %50 = ptrtoint ptr %fw_ractrl32 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %fw_ractrl32, align 1
  tail call void @rtl8188e_InitializeFirmwareVars(ptr noundef %Adapter) #6
  %call34 = tail call i32 @PHY_MACConfig8188E(ptr noundef %Adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %do.body37, label %if.end48

do.body37:                                        ; preds = %if.else30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %51 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %cmp38 = icmp ugt i32 %51, 4
  br i1 %cmp38, label %do.end42, label %do.body37.cleanup_crit_edge

do.body37.cleanup_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end42:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %do.body155

if.end48:                                         ; preds = %if.else30
  %call49 = tail call i32 @PHY_BBConfig8188E(ptr noundef %Adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %do.body52, label %if.end63

do.body52:                                        ; preds = %if.end48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %52 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %cmp53 = icmp ugt i32 %52, 4
  br i1 %cmp53, label %do.end57, label %do.body52.cleanup_crit_edge

do.body52.cleanup_crit_edge:                      ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end57:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %do.body155

if.end63:                                         ; preds = %if.end48
  %call64 = tail call i32 @PHY_RFConfig8188E(ptr noundef %Adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %do.body67, label %if.end78

do.body67:                                        ; preds = %if.end63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %53 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %53)
  %cmp68 = icmp ugt i32 %53, 4
  br i1 %cmp68, label %do.end72, label %do.body67.cleanup_crit_edge

do.body67.cleanup_crit_edge:                      ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end72:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #8
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %do.body155

if.end78:                                         ; preds = %if.end63
  %call79 = tail call i32 @rtl8188e_iol_efuse_patch(ptr noundef %Adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %do.body82, label %if.end93

do.body82:                                        ; preds = %if.end78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %54 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp83 = icmp ugt i32 %54, 4
  br i1 %cmp83, label %do.end87, label %do.body82.cleanup_crit_edge

do.body82.cleanup_crit_edge:                      ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end87:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #8
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4) #9
  br label %do.body155

if.end93:                                         ; preds = %if.end78
  tail call fastcc void @_InitTxBufferBoundary(ptr noundef %Adapter, i8 noundef zeroext -86)
  %call94 = tail call i32 @InitLLTTable(ptr noundef %Adapter, i8 noundef zeroext -86) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.end93.do.body155_crit_edge, label %if.end97

if.end93.do.body155_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body155

if.end97:                                         ; preds = %if.end93
  %call.i267 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1551, i8 noundef zeroext 4) #6
  tail call fastcc void @_InitInterrupt(ptr noundef %Adapter)
  tail call void @hal_init_macaddr(ptr noundef %Adapter) #6
  tail call fastcc void @_InitNetworkType(ptr noundef %Adapter)
  tail call fastcc void @_InitWMACSetting(ptr noundef %Adapter)
  tail call fastcc void @_InitAdaptiveCtrl(ptr noundef %Adapter)
  tail call fastcc void @_InitEDCA(ptr noundef %Adapter)
  tail call fastcc void @_InitRetryFunction(ptr noundef %Adapter)
  tail call fastcc void @InitUsbAggregationSetting(ptr noundef %Adapter)
  tail call fastcc void @_InitBeaconParameters(ptr noundef %Adapter)
  %call98 = tail call zeroext i16 @rtw_read16(ptr noundef %Adapter, i32 noundef 256) #6
  %55 = trunc i16 %call98 to i8
  %conv100 = or i8 %55, -64
  %call101 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 256, i8 noundef zeroext %conv100) #6
  %call102 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1260) #6
  %56 = or i8 %call102, 3
  %call107 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1260, i8 noundef zeroext %56) #6
  %call108 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1261, i8 noundef zeroext 2) #6
  %call109 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1264, i16 noundef zeroext -12816) #6
  %call110 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1232, i8 noundef zeroext 0) #6
  %call111 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1216, i16 noundef zeroext 1024) #6
  %call112 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1218, i16 noundef zeroext 1024) #6
  %call113 = tail call i32 @rtl8188e_PHY_QueryRFReg(ptr noundef %Adapter, i32 noundef 0, i32 noundef 24, i32 noundef 1048575) #6
  %RfRegChnlVal = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 31
  %57 = ptrtoint ptr %RfRegChnlVal to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call113, ptr %RfRegChnlVal, align 4
  %call114 = tail call i32 @rtl8188e_PHY_QueryRFReg(ptr noundef %Adapter, i32 noundef 1, i32 noundef 24, i32 noundef 1048575) #6
  %arrayidx116 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 31, i32 1
  %58 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call114, ptr %arrayidx116, align 4
  tail call fastcc void @_BBTurnOnBlock(ptr noundef %Adapter)
  tail call void @invalidate_cam_all(ptr noundef %Adapter) #6
  %59 = ptrtoint ptr %CurrentChannel to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %CurrentChannel, align 4
  tail call void @PHY_SetTxPowerLevel8188E(ptr noundef %Adapter, i8 noundef zeroext %60) #6
  tail call fastcc void @_InitAntenna_Selection(ptr noundef %Adapter)
  %call118 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1228, i32 noundef 33685503) #6
  %call119 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1059, i8 noundef zeroext -1) #6
  %61 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool121.not = icmp eq i8 %62, 0
  br i1 %tobool121.not, label %if.end97.if.end124_crit_edge, label %if.then122

if.end97.if.end124_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

if.then122:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  %call123 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1120, i16 noundef zeroext 0) #6
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.end97.if.end124_crit_edge
  %call125 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1618, i8 noundef zeroext 0) #6
  tail call void @rtl8188e_InitHalDm(ptr noundef %Adapter) #6
  %rf_pwrstate126 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 14, i32 31
  %63 = ptrtoint ptr %rf_pwrstate126 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %rf_pwrstate126, align 4
  %call127 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1057, i8 noundef zeroext 15) #6
  %call128 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1235, i8 noundef zeroext 1) #6
  %call129 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1264, i16 noundef zeroext 15856) #6
  %call130 = tail call zeroext i16 @rtw_read16(ptr noundef %Adapter, i32 noundef 524) #6
  %64 = or i16 %call130, 512
  %call134 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 524, i16 noundef zeroext %64) #6
  %65 = ptrtoint ptr %rf_pwrstate126 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rf_pwrstate126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp136 = icmp eq i32 %66, 0
  br i1 %cmp136, label %if.then138, label %if.end124.if.end150_crit_edge

if.end124.if.end150_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150

if.then138:                                       ; preds = %if.end124
  %odmpriv139 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38
  %bIQKInitialized141 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 44
  %67 = ptrtoint ptr %bIQKInitialized141 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bIQKInitialized141, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool142.not = icmp eq i8 %68, 0
  br i1 %tobool142.not, label %if.else144, label %if.then143

if.then143:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @PHY_IQCalibrate_8188E(ptr noundef %Adapter, i1 noundef zeroext true) #6
  br label %if.end148

if.else144:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @PHY_IQCalibrate_8188E(ptr noundef %Adapter, i1 noundef zeroext false) #6
  %69 = ptrtoint ptr %bIQKInitialized141 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %bIQKInitialized141, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.else144, %if.then143
  tail call void @ODM_TXPowerTrackingCheck(ptr noundef %odmpriv139) #6
  tail call void @PHY_LCCalibrate_8188E(ptr noundef %Adapter) #6
  br label %if.end150

if.end150:                                        ; preds = %if.end148, %if.end124.if.end150_crit_edge
  %call151 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 65112, i8 noundef zeroext 0) #6
  %call152 = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 1056) #6
  %or153 = or i32 %call152, 4096
  %call154 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1056, i32 noundef %or153) #6
  br label %do.body155

do.body155:                                       ; preds = %if.end150, %if.end93.do.body155_crit_edge, %do.end87, %do.end72, %do.end57, %do.end42, %if.end10.do.body155_crit_edge, %if.end
  %status.0.ph = phi i32 [ %call94, %if.end150 ], [ 0, %if.end93.do.body155_crit_edge ], [ 0, %do.end87 ], [ 0, %do.end72 ], [ 0, %do.end57 ], [ 0, %do.end42 ], [ 0, %if.end10.do.body155_crit_edge ], [ 1, %if.end ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp156 = icmp ugt i32 %.pr, 4
  br i1 %cmp156, label %do.end161, label %do.body155.cleanup_crit_edge

do.body155.cleanup_crit_edge:                     ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end161:                                        ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #8
  %call163 = tail call i32 @rtw_get_passing_time_ms(i32 noundef %0) #6
  %call164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.4, i32 noundef %call163) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end161, %do.body155.cleanup_crit_edge, %do.body82.cleanup_crit_edge, %do.body67.cleanup_crit_edge, %do.body52.cleanup_crit_edge, %do.body37.cleanup_crit_edge, %do.end29
  %retval.0 = phi i32 [ %call20, %do.end29 ], [ %status.0.ph, %do.end161 ], [ %status.0.ph, %do.body155.cleanup_crit_edge ], [ 0, %do.body37.cleanup_crit_edge ], [ 0, %do.body52.cleanup_crit_edge ], [ 0, %do.body67.cleanup_crit_edge ], [ 0, %do.body82.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_IQCalibrate_8188E(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_TXPowerTrackingCheck(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_LCCalibrate_8188E(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_InitTxBufferBoundary(ptr noundef %Adapter, i8 noundef zeroext %txpktbuf_bndy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1060, i8 noundef zeroext %txpktbuf_bndy) #6
  %call1 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1061, i8 noundef zeroext %txpktbuf_bndy) #6
  %call2 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1117, i8 noundef zeroext %txpktbuf_bndy) #6
  %call3 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 276, i8 noundef zeroext %txpktbuf_bndy) #6
  %call4 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 521, i8 noundef zeroext %txpktbuf_bndy) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8188e_FirmwareDownload(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_InitializeFirmwareVars(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @PHY_MACConfig8188E(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @PHY_BBConfig8188E(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @PHY_RFConfig8188E(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8188e_iol_efuse_patch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @InitLLTTable(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_InitInterrupt(ptr noundef %Adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 180, i32 noundef -1) #6
  %call1 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 176, i32 noundef 603980544) #6
  %call2 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 184, i32 noundef 3840) #6
  %call3 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 65109) #6
  %dvobj = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %ishighspeed = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ishighspeed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ishighspeed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %4 = and i8 %call3, -17
  %masksel = select i1 %tobool.not, i8 0, i8 16
  %usb_opt.0 = or i8 %masksel, %4
  %call7 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 65109, i8 noundef zeroext %usb_opt.0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_init_macaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_InitNetworkType(ptr noundef %Adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 256) #6
  %and = and i32 %call, -196609
  %or = or i32 %and, 131072
  %call1 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 256, i32 noundef %or) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_InitWMACSetting(ptr noundef %Adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ReceiveConfig = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 6
  %0 = ptrtoint ptr %ReceiveConfig to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1879072975, ptr %ReceiveConfig, align 4
  %call = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1544, i32 noundef 1879072975) #6
  %call3 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1568, i32 noundef -1) #6
  %call4 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1572, i32 noundef -1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_InitAdaptiveCtrl(ptr noundef %Adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 1088) #6
  %and = and i32 %call, -1048576
  %or = or i32 %and, 1048561
  %call1 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1088, i32 noundef %or) #6
  %call2 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1064, i16 noundef zeroext 4112) #6
  %call3 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1066, i16 noundef zeroext 12336) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_InitEDCA(ptr noundef %Adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1064, i16 noundef zeroext 4106) #6
  %call1 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1594, i16 noundef zeroext 4106) #6
  %call2 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1300, i16 noundef zeroext 4106) #6
  %call3 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1302, i16 noundef zeroext 4106) #6
  %call4 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1288, i32 noundef 6202411) #6
  %call5 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1292, i32 noundef 42063) #6
  %call6 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1284, i32 noundef 6202148) #6
  %call7 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1280, i32 noundef 3121702) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_InitRetryFunction(ptr noundef %Adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1056) #6
  %0 = or i8 %call, -128
  %call2 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1056, i8 noundef zeroext %0) #6
  %call3 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1600, i8 noundef zeroext 64) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @InitUsbAggregationSetting(ptr noundef %Adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wifi_spec.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 13, i32 44
  %0 = ptrtoint ptr %wifi_spec.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wifi_spec.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %UsbTxAggMode.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 50
  %2 = ptrtoint ptr %UsbTxAggMode.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %UsbTxAggMode.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %UsbTxAggMode2.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 50
  %3 = ptrtoint ptr %UsbTxAggMode2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %UsbTxAggMode2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not.i = icmp eq i8 %4, 0
  br i1 %tobool3.not.i, label %if.end.i.usb_AggSettingTxUpdate.exit_crit_edge, label %if.then4.i

if.end.i.usb_AggSettingTxUpdate.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb_AggSettingTxUpdate.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 520) #6
  %and.i = and i32 %call.i, -241
  %UsbTxAggDescNum.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 51
  %5 = ptrtoint ptr %UsbTxAggDescNum.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %UsbTxAggDescNum.i, align 1
  %7 = shl i8 %6, 4
  %shl.i = zext i8 %7 to i32
  %or.i = or i32 %and.i, %shl.i
  %call6.i = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 520, i32 noundef %or.i) #6
  br label %usb_AggSettingTxUpdate.exit

usb_AggSettingTxUpdate.exit:                      ; preds = %if.then4.i, %if.end.i.usb_AggSettingTxUpdate.exit_crit_edge
  %call.i2 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 268) #6
  %call2.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 65109) #6
  %UsbRxAggMode.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 52
  %8 = ptrtoint ptr %UsbRxAggMode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %UsbRxAggMode.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %9, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb6.i
    i32 3, label %sw.bb13.i
  ]

sw.bb.i:                                          ; preds = %usb_AggSettingTxUpdate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %11 = or i8 %call.i2, 4
  %12 = and i8 %call2.i, -9
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %usb_AggSettingTxUpdate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %13 = and i8 %call.i2, -5
  %14 = or i8 %call2.i, 8
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %usb_AggSettingTxUpdate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %15 = or i8 %call.i2, 4
  %16 = or i8 %call2.i, 8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %usb_AggSettingTxUpdate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = and i8 %call.i2, -5
  %18 = and i8 %call2.i, -9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb13.i, %sw.bb6.i, %sw.bb.i
  %valueDMA.0.i = phi i8 [ %17, %sw.default.i ], [ %15, %sw.bb13.i ], [ %13, %sw.bb6.i ], [ %11, %sw.bb.i ]
  %valueUSB.0.i = phi i8 [ %18, %sw.default.i ], [ %16, %sw.bb13.i ], [ %14, %sw.bb6.i ], [ %12, %sw.bb.i ]
  %call27.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 268, i8 noundef zeroext %valueDMA.0.i) #6
  %call28.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 65109, i8 noundef zeroext %valueUSB.0.i) #6
  %19 = ptrtoint ptr %UsbRxAggMode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %UsbRxAggMode.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %20, label %sw.epilog.i.usb_AggSettingRxUpdate.exit_crit_edge [
    i32 1, label %sw.bb30.i
    i32 2, label %sw.bb33.i
    i32 3, label %sw.bb36.i
  ]

sw.epilog.i.usb_AggSettingRxUpdate.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb_AggSettingRxUpdate.exit

sw.bb30.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %UsbRxAggPageCount.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 55
  %22 = ptrtoint ptr %UsbRxAggPageCount.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %UsbRxAggPageCount.i, align 2
  %call31.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 640, i8 noundef zeroext %23) #6
  %UsbRxAggPageTimeout.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 56
  br label %sw.epilog50.sink.split.i

sw.bb33.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %UsbRxAggBlockCount.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 53
  %24 = ptrtoint ptr %UsbRxAggBlockCount.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %UsbRxAggBlockCount.i, align 8
  %call34.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 65117, i8 noundef zeroext %25) #6
  %UsbRxAggBlockTimeout.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 54
  br label %sw.epilog50.sink.split.i

sw.bb36.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %UsbRxAggPageCount37.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 55
  %26 = ptrtoint ptr %UsbRxAggPageCount37.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %UsbRxAggPageCount37.i, align 2
  %call38.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 640, i8 noundef zeroext %27) #6
  %UsbRxAggPageTimeout39.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 56
  %28 = ptrtoint ptr %UsbRxAggPageTimeout39.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %UsbRxAggPageTimeout39.i, align 1
  %30 = and i8 %29, 31
  %call43.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 641, i8 noundef zeroext %30) #6
  %UsbRxAggBlockCount44.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 53
  %31 = ptrtoint ptr %UsbRxAggBlockCount44.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %UsbRxAggBlockCount44.i, align 8
  %call45.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 65117, i8 noundef zeroext %32) #6
  %UsbRxAggBlockTimeout46.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 54
  br label %sw.epilog50.sink.split.i

sw.epilog50.sink.split.i:                         ; preds = %sw.bb36.i, %sw.bb33.i, %sw.bb30.i
  %UsbRxAggBlockTimeout46.sink.i = phi ptr [ %UsbRxAggBlockTimeout46.i, %sw.bb36.i ], [ %UsbRxAggBlockTimeout.i, %sw.bb33.i ], [ %UsbRxAggPageTimeout.i, %sw.bb30.i ]
  %.sink.i = phi i32 [ 65116, %sw.bb36.i ], [ 65116, %sw.bb33.i ], [ 641, %sw.bb30.i ]
  %33 = ptrtoint ptr %UsbRxAggBlockTimeout46.sink.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %UsbRxAggBlockTimeout46.sink.i, align 1
  %call47.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef %.sink.i, i8 noundef zeroext %34) #6
  br label %usb_AggSettingRxUpdate.exit

usb_AggSettingRxUpdate.exit:                      ; preds = %sw.epilog50.sink.split.i, %sw.epilog.i.usb_AggSettingRxUpdate.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_InitBeaconParameters(ptr noundef %Adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1360, i16 noundef zeroext 4112) #6
  %call2 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1344, i16 noundef zeroext 25604) #6
  %call3 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1368, i8 noundef zeroext 5) #6
  %call4 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1369, i8 noundef zeroext 2) #6
  %call5 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1296, i16 noundef zeroext 26127) #6
  %call6 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1058) #6
  %RegFwHwTxQCtrl = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 34
  %0 = ptrtoint ptr %RegFwHwTxQCtrl to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %call6, ptr %RegFwHwTxQCtrl, align 2
  %call7 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1346) #6
  %RegReg542 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 35
  %1 = ptrtoint ptr %RegReg542 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %call7, ptr %RegReg542, align 1
  %call8 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 257) #6
  %RegCR_1 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 36
  %2 = ptrtoint ptr %RegCR_1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %call8, ptr %RegCR_1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8188e_PHY_QueryRFReg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_BBTurnOnBlock(ptr noundef %Adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %Adapter, i32 noundef 2048, i32 noundef 16777216, i32 noundef 1) #6
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %Adapter, i32 noundef 2048, i32 noundef 33554432, i32 noundef 1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_cam_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_SetTxPowerLevel8188E(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_InitAntenna_Selection(ptr noundef %Adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %AntDivCfg = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 40
  %0 = ptrtoint ptr %AntDivCfg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %AntDivCfg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp3 = icmp ugt i32 %2, 4
  br i1 %cmp3, label %do.end, label %do.body.do.end9_crit_edge

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #9
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %call10 = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 76) #6
  %or = or i32 %call10, 8388608
  %call11 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 76, i32 noundef %or) #6
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %Adapter, i32 noundef 2168, i32 noundef 8192, i32 noundef 1) #6
  %call12 = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %Adapter, i32 noundef 2144, i32 noundef 768) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 1
  %spec.select = select i1 %cmp13, i8 1, i8 2
  %3 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 39
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %spec.select, ptr %3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %5 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp19 = icmp ugt i32 %5, 4
  br i1 %cmp19, label %do.end24, label %do.end9.cleanup_crit_edge

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end24:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 8
  %conv27 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp30 = icmp eq i8 %7, 1
  %cond = select i1 %cmp30, ptr @.str.73, ptr @.str.74
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.69, i32 noundef %conv27, ptr noundef nonnull %cond) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %do.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_InitHalDm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_passing_time_ms(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8188eu_hal_deinit(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %0 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp ugt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #9
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 176, i32 noundef 0) #6
  %call4 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 184, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %1 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp6 = icmp ugt i32 %1, 4
  br i1 %cmp6, label %do.end9, label %do.end2.do.end13_crit_edge

do.end2.do.end13_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

do.end9:                                          ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #8
  %bkeepfwalive = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 14, i32 34
  %2 = ptrtoint ptr %bkeepfwalive to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bkeepfwalive, align 1
  %conv = zext i8 %3 to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %conv) #9
  br label %do.end13

do.end13:                                         ; preds = %do.end9, %do.end2.do.end13_crit_edge
  %bkeepfwalive15 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 14, i32 34
  %4 = ptrtoint ptr %bkeepfwalive15 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bkeepfwalive15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then16, label %do.end13.if.end20_crit_edge

do.end13.if.end20_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then16:                                        ; preds = %do.end13
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 26
  %6 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw_init_completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool17.not = icmp eq i8 %7, 0
  br i1 %tobool17.not, label %if.then16.if.end20_crit_edge, label %if.then18

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %if.then16
  %call.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1260) #6
  %8 = and i8 %call.i, -3
  %call3.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1260, i8 noundef zeroext %8) #6
  %call4.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 256, i8 noundef zeroext 0) #6
  %call5.i = tail call zeroext i8 @HalPwrSeqCmdParsing(ptr noundef %Adapter, ptr noundef nonnull @rtl8188E_enter_lps_flow) #6
  %call6.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 128) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call6.i)
  %tobool.not.i = icmp sgt i8 %call6.i, -1
  br i1 %tobool.not.i, label %if.then18.CardDisableRTL8188EU.exit_crit_edge, label %land.lhs.true.i

if.then18.CardDisableRTL8188EU.exit_crit_edge:    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %CardDisableRTL8188EU.exit

land.lhs.true.i:                                  ; preds = %if.then18
  %bFWReady.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 44
  %9 = ptrtoint ptr %bFWReady.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bFWReady.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not.i = icmp eq i8 %10, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.CardDisableRTL8188EU.exit_crit_edge, label %if.then.i

land.lhs.true.i.CardDisableRTL8188EU.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %CardDisableRTL8188EU.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 3) #6
  %11 = and i8 %call11.i, -5
  %call15.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 3, i8 noundef zeroext %11) #6
  br label %CardDisableRTL8188EU.exit

CardDisableRTL8188EU.exit:                        ; preds = %if.then.i, %land.lhs.true.i.CardDisableRTL8188EU.exit_crit_edge, %if.then18.CardDisableRTL8188EU.exit_crit_edge
  %call16.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 128, i8 noundef zeroext 0) #6
  %call17.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 404) #6
  %12 = and i8 %call17.i, -2
  %call21.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 404, i8 noundef zeroext %12) #6
  %call22.i = tail call zeroext i8 @HalPwrSeqCmdParsing(ptr noundef %Adapter, ptr noundef nonnull @rtl8188E_card_disable_flow) #6
  %call23.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 29) #6
  %13 = and i8 %call23.i, -9
  %call27.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 29, i8 noundef zeroext %13) #6
  %call28.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 29) #6
  %14 = or i8 %call28.i, 8
  %call31.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 29, i8 noundef zeroext %14) #6
  %call32.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 68) #6
  %call33.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 69, i8 noundef zeroext %call32.i) #6
  %call34.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 70, i8 noundef zeroext -1) #6
  %call35.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 66) #6
  %shl.i = shl i8 %call35.i, 4
  %call38.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 66, i8 noundef zeroext %shl.i) #6
  %call39.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 67) #6
  %15 = or i8 %call39.i, 15
  %call43.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 67, i8 noundef zeroext %15) #6
  %call44.i = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 100, i32 noundef 526344) #6
  %bMacPwrCtrlOn.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 48
  %16 = ptrtoint ptr %bMacPwrCtrlOn.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %bMacPwrCtrlOn.i, align 1
  %bFWReady45.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 44
  %17 = ptrtoint ptr %bFWReady45.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %bFWReady45.i, align 8
  br label %if.end20

if.end20:                                         ; preds = %CardDisableRTL8188EU.exit, %if.then16.if.end20_crit_edge, %do.end13.if.end20_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8188eu_inirp_init(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %precv_buf = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 10, i32 24
  %0 = ptrtoint ptr %precv_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %precv_buf, align 8
  %free_recv_buf_queue_cnt = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 10, i32 26
  %call = tail call i32 @rtw_read_port(ptr noundef %Adapter, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr %struct.recv_buf, ptr %1, i32 1
  %2 = ptrtoint ptr %free_recv_buf_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_recv_buf_queue_cnt, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %free_recv_buf_queue_cnt, align 8
  %call.1 = tail call i32 @rtw_read_port(ptr noundef %Adapter, ptr noundef %incdec.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.end.exit_crit_edge, label %if.end.1

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end.1:                                         ; preds = %if.end
  %incdec.ptr.1 = getelementptr %struct.recv_buf, ptr %1, i32 2
  %4 = ptrtoint ptr %free_recv_buf_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %free_recv_buf_queue_cnt, align 8
  %dec.1 = add i32 %5, -1
  store i32 %dec.1, ptr %free_recv_buf_queue_cnt, align 8
  %call.2 = tail call i32 @rtw_read_port(ptr noundef %Adapter, ptr noundef %incdec.ptr.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %if.end.1.exit_crit_edge, label %if.end.2

if.end.1.exit_crit_edge:                          ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end.2:                                         ; preds = %if.end.1
  %incdec.ptr.2 = getelementptr %struct.recv_buf, ptr %1, i32 3
  %6 = ptrtoint ptr %free_recv_buf_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %free_recv_buf_queue_cnt, align 8
  %dec.2 = add i32 %7, -1
  store i32 %dec.2, ptr %free_recv_buf_queue_cnt, align 8
  %call.3 = tail call i32 @rtw_read_port(ptr noundef %Adapter, ptr noundef %incdec.ptr.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %if.end.2.exit_crit_edge, label %if.end.3

if.end.2.exit_crit_edge:                          ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end.3:                                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %free_recv_buf_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %free_recv_buf_queue_cnt, align 8
  %dec.3 = add i32 %9, -1
  store i32 %dec.3, ptr %free_recv_buf_queue_cnt, align 8
  br label %exit

exit:                                             ; preds = %if.end.3, %if.end.2.exit_crit_edge, %if.end.1.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ 0, %entry.exit_crit_edge ], [ 0, %if.end.exit_crit_edge ], [ 0, %if.end.1.exit_crit_edge ], [ 0, %if.end.2.exit_crit_edge ], [ 1, %if.end.3 ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_read_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ReadAdapterInfo8188EU(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprompriv = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 15
  %call = tail call zeroext i8 @GetEEPROMSize8188E(ptr noundef %Adapter) #6
  %EepromAddressSize = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 25
  %0 = ptrtoint ptr %EepromAddressSize to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %call, ptr %EepromAddressSize, align 4
  %call2 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 10) #6
  %and = and i8 %call2, 16
  %EepromOrEfuse = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 15, i32 6
  %1 = ptrtoint ptr %EepromOrEfuse to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %and, ptr %EepromOrEfuse, align 4
  %2 = lshr i8 %call2, 5
  %.lobit = and i8 %2, 1
  %3 = xor i8 %.lobit, 1
  %4 = ptrtoint ptr %eeprompriv to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %eeprompriv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %5 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.end, label %entry.do.end18_crit_edge

entry.do.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %tobool11.not = icmp eq i8 %and, 0
  %cond = select i1 %tobool11.not, ptr @.str.28, ptr @.str.27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool14.not = icmp eq i8 %3, 0
  %cond15 = select i1 %tobool14.not, ptr @.str.30, ptr @.str.29
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %cond, ptr noundef nonnull %cond15) #9
  br label %do.end18

do.end18:                                         ; preds = %do.end, %entry.do.end18_crit_edge
  %6 = ptrtoint ptr %EepromOrEfuse to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %EepromOrEfuse, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool21.not = icmp eq i8 %7, 0
  br i1 %tobool21.not, label %if.then22, label %do.end18.if.end23_crit_edge

do.end18.if.end23_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then22:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @EFUSE_ShadowMapUpdate(ptr noundef %Adapter) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %do.end18.if.end23_crit_edge
  %efuse_eeprom_data = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 15, i32 8
  tail call void @Hal_EfuseParseIDCode88E(ptr noundef %Adapter, ptr noundef %efuse_eeprom_data) #6
  %8 = ptrtoint ptr %eeprompriv to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %eeprompriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool27 = icmp ne i8 %9, 0
  br i1 %tobool27, label %for.body.preheader.i, label %if.else.i

for.body.preheader.i:                             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %uglygep.i = getelementptr i8, ptr %Adapter, i32 16216
  %10 = call ptr @memcpy(ptr %uglygep.i, ptr @__const.Hal_EfuseParseMACAddr_8188EU.sMacAddr, i32 6)
  br label %Hal_EfuseParseMACAddr_8188EU.exit

if.else.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %mac_addr4.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 15, i32 4
  %arrayidx5.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 15, i32 8, i32 215
  %11 = call ptr @memcpy(ptr %mac_addr4.i, ptr %arrayidx5.i, i32 6)
  br label %Hal_EfuseParseMACAddr_8188EU.exit

Hal_EfuseParseMACAddr_8188EU.exit:                ; preds = %if.else.i, %for.body.preheader.i
  tail call void @Hal_ReadPowerSavingMode88E(ptr noundef %Adapter, ptr noundef %efuse_eeprom_data, i1 noundef zeroext %tobool27) #6
  %12 = ptrtoint ptr %eeprompriv to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %eeprompriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool35 = icmp ne i8 %13, 0
  tail call void @Hal_ReadTxPowerInfo88E(ptr noundef %Adapter, ptr noundef %efuse_eeprom_data, i1 noundef zeroext %tobool35) #6
  %14 = ptrtoint ptr %eeprompriv to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %eeprompriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool39 = icmp ne i8 %15, 0
  tail call void @rtl8188e_EfuseParseChnlPlan(ptr noundef %Adapter, ptr noundef %efuse_eeprom_data, i1 noundef zeroext %tobool39) #6
  %16 = ptrtoint ptr %eeprompriv to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %eeprompriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool43 = icmp ne i8 %17, 0
  tail call void @Hal_EfuseParseXtal_8188E(ptr noundef %Adapter, ptr noundef %efuse_eeprom_data, i1 noundef zeroext %tobool43) #6
  %18 = ptrtoint ptr %eeprompriv to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %eeprompriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool47 = icmp ne i8 %19, 0
  tail call void @Hal_ReadAntennaDiversity88E(ptr noundef %Adapter, ptr noundef %efuse_eeprom_data, i1 noundef zeroext %tobool47) #6
  %20 = ptrtoint ptr %eeprompriv to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %eeprompriv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool51 = icmp ne i8 %21, 0
  tail call void @Hal_ReadThermalMeter_88E(ptr noundef %Adapter, ptr noundef %efuse_eeprom_data, i1 noundef zeroext %tobool51) #6
  %bRegUseLed = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 16, i32 1
  %22 = ptrtoint ptr %bRegUseLed to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %bRegUseLed, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @GetEEPROMSize8188E(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @EFUSE_ShadowMapUpdate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_EfuseParseIDCode88E(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_ReadPowerSavingMode88E(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_ReadTxPowerInfo88E(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_EfuseParseChnlPlan(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_EfuseParseXtal_8188E(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_ReadAntennaDiversity88E(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_ReadThermalMeter_88E(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @SetHwReg8188EU(ptr noundef %Adapter, i8 noundef zeroext %variable, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %BrateCfg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dmpriv = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 37
  %odmpriv = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38
  %0 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %variable, label %entry.sw.epilog835_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb8
    i8 2, label %sw.bb19
    i8 3, label %sw.bb20
    i8 4, label %sw.bb21
    i8 6, label %sw.bb22
    i8 7, label %sw.bb56
    i8 8, label %sw.bb58
    i8 9, label %sw.bb59
    i8 10, label %sw.bb301
    i8 11, label %sw.bb313
    i8 12, label %sw.bb321
    i8 13, label %sw.bb388
    i8 14, label %sw.bb442
    i8 15, label %sw.bb444
    i8 16, label %sw.bb470
    i8 17, label %sw.bb479
    i8 18, label %sw.bb492
    i8 20, label %sw.bb494
    i8 21, label %sw.bb496
    i8 22, label %sw.bb505
    i8 23, label %sw.bb514
    i8 24, label %sw.bb517
    i8 25, label %sw.bb543
    i8 26, label %sw.bb545
    i8 28, label %sw.bb551
    i8 29, label %sw.bb554
    i8 30, label %sw.bb557
    i8 31, label %sw.bb561
    i8 32, label %sw.bb564
    i8 33, label %sw.bb624
    i8 34, label %sw.bb645
    i8 35, label %sw.bb710
    i8 36, label %sw.bb717
    i8 37, label %sw.bb723
    i8 39, label %sw.bb724
    i8 44, label %sw.bb725
    i8 58, label %sw.bb734
    i8 49, label %sw.bb735
    i8 52, label %sw.bb749
    i8 55, label %sw.bb750
    i8 56, label %sw.bb792
    i8 59, label %sw.bb807
    i8 60, label %sw.bb827
    i8 19, label %sw.bb828
  ]

entry.sw.epilog835_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog835

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 258) #6
  %1 = and i8 %call, 12
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val, align 1
  %or1185 = or i8 %1, %3
  %call7 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 258, i8 noundef zeroext %or1185) #6
  br label %sw.epilog835

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 258) #6
  %4 = and i8 %call10, 3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %shl = shl i8 %6, 2
  %or16 = or i8 %shl, %4
  %call18 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 258, i8 noundef zeroext %or16) #6
  br label %sw.epilog835

sw.bb19:                                          ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val, align 1
  %call.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1360) #6
  %9 = or i8 %call.i, 16
  %call2.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1360, i8 noundef zeroext %9) #6
  %call3.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 258) #6
  %10 = and i8 %call3.i, 12
  %or81.i = or i8 %10, %8
  %call10.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 258, i8 noundef zeroext %or81.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %11 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.i = icmp ugt i32 %11, 4
  br i1 %cmp.i, label %do.end.i, label %sw.bb19.do.end16.i_crit_edge

sw.bb19.do.end16.i_crit_edge:                     ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.i

do.end.i:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i = zext i8 %8 to i32
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef 994, i32 noundef %conv6.i) #9
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end.i, %sw.bb19.do.end16.i_crit_edge
  %12 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %8, label %do.end16.i.sw.epilog835_crit_edge [
    i8 2, label %do.end16.i.if.then23.i_crit_edge
    i8 0, label %do.end16.i.if.then23.i_crit_edge1238
    i8 1, label %if.then28.i
    i8 3, label %if.then34.i
  ]

do.end16.i.if.then23.i_crit_edge1238:             ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.i

do.end16.i.if.then23.i_crit_edge:                 ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.i

do.end16.i.sw.epilog835_crit_edge:                ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog835

if.then23.i:                                      ; preds = %do.end16.i.if.then23.i_crit_edge, %do.end16.i.if.then23.i_crit_edge1238
  %RegFwHwTxQCtrl.i.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 34
  %13 = ptrtoint ptr %RegFwHwTxQCtrl.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %RegFwHwTxQCtrl.i.i, align 2
  %15 = and i8 %14, -65
  %call.i.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1058, i8 noundef zeroext %15) #6
  %16 = ptrtoint ptr %RegFwHwTxQCtrl.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %RegFwHwTxQCtrl.i.i, align 2
  %18 = and i8 %17, -65
  store i8 %18, ptr %RegFwHwTxQCtrl.i.i, align 2
  %call7.i.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1345, i8 noundef zeroext 100) #6
  %RegReg542.i.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 35
  %19 = ptrtoint ptr %RegReg542.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %RegReg542.i.i, align 1
  %21 = and i8 %20, -2
  store i8 %21, ptr %RegReg542.i.i, align 1
  %call12.i.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1346, i8 noundef zeroext %21) #6
  %call24.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1360, i8 noundef zeroext 25) #6
  br label %sw.epilog835

if.then28.i:                                      ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %RegFwHwTxQCtrl.i2.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 34
  %22 = ptrtoint ptr %RegFwHwTxQCtrl.i2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %RegFwHwTxQCtrl.i2.i, align 2
  %24 = or i8 %23, 64
  %call.i3.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1058, i8 noundef zeroext %24) #6
  %25 = ptrtoint ptr %RegFwHwTxQCtrl.i2.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %RegFwHwTxQCtrl.i2.i, align 2
  %27 = or i8 %26, 64
  store i8 %27, ptr %RegFwHwTxQCtrl.i2.i, align 2
  %call7.i4.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1345, i8 noundef zeroext -1) #6
  %RegReg542.i5.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 35
  %28 = ptrtoint ptr %RegReg542.i5.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %RegReg542.i5.i, align 1
  %30 = or i8 %29, 1
  store i8 %30, ptr %RegReg542.i5.i, align 1
  %call12.i6.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1346, i8 noundef zeroext %30) #6
  %call29.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1360, i8 noundef zeroext 26) #6
  br label %sw.epilog835

if.then34.i:                                      ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %RegFwHwTxQCtrl.i7.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 34
  %31 = ptrtoint ptr %RegFwHwTxQCtrl.i7.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %RegFwHwTxQCtrl.i7.i, align 2
  %33 = or i8 %32, 64
  %call.i8.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1058, i8 noundef zeroext %33) #6
  %34 = ptrtoint ptr %RegFwHwTxQCtrl.i7.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %RegFwHwTxQCtrl.i7.i, align 2
  %36 = or i8 %35, 64
  store i8 %36, ptr %RegFwHwTxQCtrl.i7.i, align 2
  %call7.i9.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1345, i8 noundef zeroext -1) #6
  %RegReg542.i10.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 35
  %37 = ptrtoint ptr %RegReg542.i10.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %RegReg542.i10.i, align 1
  %39 = or i8 %38, 1
  store i8 %39, ptr %RegReg542.i10.i, align 1
  %call12.i11.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1346, i8 noundef zeroext %39) #6
  %call35.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1360, i8 noundef zeroext 18) #6
  %call36.i = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1544, i32 noundef 1879056526) #6
  %call37.i = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1700, i16 noundef zeroext -1) #6
  %call38.i = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1698, i16 noundef zeroext 1024) #6
  %call39.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1369, i8 noundef zeroext 2) #6
  %call40.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1370, i8 noundef zeroext 10) #6
  %call41.i = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1296, i16 noundef zeroext 0) #6
  %call42.i = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1344, i16 noundef zeroext -252) #6
  %call43.i = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1304, i16 noundef zeroext 32767) #6
  %call44.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1363, i8 noundef zeroext 1) #6
  %call45.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1362) #6
  %40 = or i8 %call45.i, 24
  %call50.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1362, i8 noundef zeroext %40) #6
  %call51.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1360, i8 noundef zeroext 26) #6
  %call52.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1361) #6
  %41 = or i8 %call52.i, 1
  %call56.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1361, i8 noundef zeroext %41) #6
  br label %sw.epilog835

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %val, align 1
  %call.i1190 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1552, i8 noundef zeroext %43) #6
  %arrayidx.1.i = getelementptr i8, ptr %val, i32 1
  %44 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.1.i, align 1
  %call.1.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1553, i8 noundef zeroext %45) #6
  %arrayidx.2.i = getelementptr i8, ptr %val, i32 2
  %46 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.2.i, align 1
  %call.2.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1554, i8 noundef zeroext %47) #6
  %arrayidx.3.i = getelementptr i8, ptr %val, i32 3
  %48 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.3.i, align 1
  %call.3.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1555, i8 noundef zeroext %49) #6
  %arrayidx.4.i = getelementptr i8, ptr %val, i32 4
  %50 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.4.i, align 1
  %call.4.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1556, i8 noundef zeroext %51) #6
  %arrayidx.5.i = getelementptr i8, ptr %val, i32 5
  %52 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.5.i, align 1
  %call.5.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1557, i8 noundef zeroext %53) #6
  br label %sw.epilog835

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %val, align 1
  %call.i1191 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1560, i8 noundef zeroext %55) #6
  %arrayidx.1.i1192 = getelementptr i8, ptr %val, i32 1
  %56 = ptrtoint ptr %arrayidx.1.i1192 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.1.i1192, align 1
  %call.1.i1193 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1561, i8 noundef zeroext %57) #6
  %arrayidx.2.i1194 = getelementptr i8, ptr %val, i32 2
  %58 = ptrtoint ptr %arrayidx.2.i1194 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.2.i1194, align 1
  %call.2.i1195 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1562, i8 noundef zeroext %59) #6
  %arrayidx.3.i1196 = getelementptr i8, ptr %val, i32 3
  %60 = ptrtoint ptr %arrayidx.3.i1196 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.3.i1196, align 1
  %call.3.i1197 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1563, i8 noundef zeroext %61) #6
  %arrayidx.4.i1198 = getelementptr i8, ptr %val, i32 4
  %62 = ptrtoint ptr %arrayidx.4.i1198 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.4.i1198, align 1
  %call.4.i1199 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1564, i8 noundef zeroext %63) #6
  %arrayidx.5.i1200 = getelementptr i8, ptr %val, i32 5
  %64 = ptrtoint ptr %arrayidx.5.i1200 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.5.i1200, align 1
  %call.5.i1201 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1565, i8 noundef zeroext %65) #6
  br label %sw.epilog835

sw.bb22:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %BrateCfg) #6
  %66 = ptrtoint ptr %BrateCfg to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %BrateCfg, align 2
  call void @HalSetBrateCfg(ptr noundef %Adapter, ptr noundef %val, ptr noundef nonnull %BrateCfg) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %67 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %67)
  %cmp = icmp ugt i32 %67, 4
  br i1 %cmp, label %do.end, label %sw.bb22.do.end28_crit_edge

sw.bb22.do.end28_crit_edge:                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

do.end:                                           ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %BrateCfg to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %BrateCfg, align 2
  %conv25 = zext i16 %69 to i32
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %conv25) #9
  br label %do.end28

do.end28:                                         ; preds = %do.end, %sw.bb22.do.end28_crit_edge
  %70 = ptrtoint ptr %BrateCfg to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %BrateCfg, align 2
  %72 = and i16 %71, 336
  %73 = or i16 %72, 13
  %BasicRateSet = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 10
  %74 = ptrtoint ptr %BasicRateSet to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %BasicRateSet, align 2
  store i16 %73, ptr %BrateCfg, align 2
  %conv38 = trunc i16 %73 to i8
  %call39 = call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1088, i8 noundef zeroext %conv38) #6
  %75 = ptrtoint ptr %BrateCfg to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %BrateCfg, align 2
  %77 = lshr i16 %76, 8
  %conv42 = trunc i16 %77 to i8
  %call43 = call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1089, i8 noundef zeroext %conv42) #6
  %call44 = call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1090) #6
  %78 = and i8 %call44, -16
  %call48 = call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1090, i8 noundef zeroext %78) #6
  %79 = ptrtoint ptr %BrateCfg to i32
  call void @__asan_load2_noabort(i32 %79)
  %.pr = load i16, ptr %BrateCfg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %.pr)
  %cmp501222 = icmp ugt i16 %.pr, 1
  br i1 %cmp501222, label %do.end28.while.body_crit_edge, label %do.end28.while.end_crit_edge

do.end28.while.end_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end28.while.body_crit_edge:                    ; preds = %do.end28
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end28.while.body_crit_edge
  %RateIndex.01223 = phi i8 [ %inc, %while.body.while.body_crit_edge ], [ 0, %do.end28.while.body_crit_edge ]
  %80 = phi i16 [ %81, %while.body.while.body_crit_edge ], [ %.pr, %do.end28.while.body_crit_edge ]
  %81 = lshr i16 %80, 1
  %inc = add nuw nsw i8 %RateIndex.01223, 1
  %cmp50 = icmp ugt i16 %80, 3
  br i1 %cmp50, label %while.body.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %BrateCfg to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %BrateCfg, align 2
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %do.end28.while.end_crit_edge
  %RateIndex.0.lcssa = phi i8 [ %inc, %while.cond.while.end_crit_edge ], [ 0, %do.end28.while.end_crit_edge ]
  %call55 = call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1152, i8 noundef zeroext %RateIndex.0.lcssa) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %BrateCfg) #6
  br label %sw.epilog835

sw.bb56:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %val, align 1
  %call57 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1314, i8 noundef zeroext %84) #6
  br label %sw.epilog835

sw.bb58:                                          ; preds = %entry
  %85 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i = icmp eq i8 %86, 0
  br i1 %tobool.not.i, label %if.else.i, label %sw.bb58.hw_var_set_bcn_func.exit_crit_edge

sw.bb58.hw_var_set_bcn_func.exit_crit_edge:       ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #8
  br label %hw_var_set_bcn_func.exit

if.else.i:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1360) #6
  %87 = and i8 %call1.i, -13
  br label %hw_var_set_bcn_func.exit

hw_var_set_bcn_func.exit:                         ; preds = %if.else.i, %sw.bb58.hw_var_set_bcn_func.exit_crit_edge
  %.sink.i = phi i8 [ %87, %if.else.i ], [ 12, %sw.bb58.hw_var_set_bcn_func.exit_crit_edge ]
  %call3.i1202 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1360, i8 noundef zeroext %.sink.i) #6
  br label %sw.epilog835

sw.bb59:                                          ; preds = %entry
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 17
  %TSFValue = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 24
  %88 = ptrtoint ptr %TSFValue to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %TSFValue, align 8
  %bcn_interval = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 17, i32 12
  %90 = ptrtoint ptr %bcn_interval to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %bcn_interval, align 2
  %conv60 = zext i16 %91 to i32
  %mul = shl nuw nsw i32 %conv60, 10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %89)
  %cmp243 = icmp ult i64 %89, 4294967296
  br i1 %cmp243, label %if.then247, label %if.else256, !prof !136

if.then247:                                       ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #8
  %conv249 = trunc i64 %89 to i32
  %conv249.frozen = freeze i32 %conv249
  %mul.frozen = freeze i32 %mul
  %div253 = udiv i32 %conv249.frozen, %mul.frozen
  %92 = mul i32 %div253, %mul.frozen
  %rem250.decomposed = sub i32 %conv249.frozen, %92
  %conv254 = zext i32 %div253 to i64
  br label %if.end261

if.else256:                                       ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #8
  %93 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %89) #10, !srcloc !137
  %asmresult.i = extractvalue { i64, i64 } %93, 0
  %asmresult1.i = extractvalue { i64, i64 } %93, 1
  %shr.i = lshr i64 %asmresult.i, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end261

if.end261:                                        ; preds = %if.else256, %if.then247
  %storemerge = phi i64 [ %asmresult1.i, %if.else256 ], [ %conv254, %if.then247 ]
  %__rem.0 = phi i32 [ %conv.i, %if.else256 ], [ %rem250.decomposed, %if.then247 ]
  %94 = ptrtoint ptr %TSFValue to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %storemerge, ptr %TSFValue, align 8
  %conv263 = zext i32 %__rem.0 to i64
  %sub264 = sub i64 %89, %conv263
  %sub265 = add i64 %sub264, -1024
  %95 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mlmext_info, align 4
  %and266 = and i32 %96, 3
  %97 = zext i32 %and266 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %and266, label %if.end261.if.end274_crit_edge [
    i32 1, label %if.end261.if.then273_crit_edge
    i32 3, label %if.end261.if.then273_crit_edge1239
  ]

if.end261.if.then273_crit_edge1239:               ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then273

if.end261.if.then273_crit_edge:                   ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then273

if.end261.if.end274_crit_edge:                    ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end274

if.then273:                                       ; preds = %if.end261.if.then273_crit_edge, %if.end261.if.then273_crit_edge1239
  tail call fastcc void @StopTxBeacon(ptr noundef %Adapter)
  br label %if.end274

if.end274:                                        ; preds = %if.then273, %if.end261.if.end274_crit_edge
  %call275 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1360) #6
  %98 = and i8 %call275, -9
  %call279 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1360, i8 noundef zeroext %98) #6
  %conv280 = trunc i64 %sub265 to i32
  %call281 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1376, i32 noundef %conv280) #6
  %shr282 = lshr i64 %sub265, 32
  %conv283 = trunc i64 %shr282 to i32
  %call284 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1380, i32 noundef %conv283) #6
  %call285 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1360) #6
  %99 = or i8 %call285, 8
  %call289 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1360, i8 noundef zeroext %99) #6
  %100 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mlmext_info, align 4
  %and291 = and i32 %101, 3
  %102 = zext i32 %and291 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %and291, label %if.end274.sw.epilog835_crit_edge [
    i32 1, label %if.end274.if.then299_crit_edge
    i32 3, label %if.end274.if.then299_crit_edge1240
  ]

if.end274.if.then299_crit_edge1240:               ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then299

if.end274.if.then299_crit_edge:                   ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then299

if.end274.sw.epilog835_crit_edge:                 ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog835

if.then299:                                       ; preds = %if.end274.if.then299_crit_edge, %if.end274.if.then299_crit_edge1240
  tail call fastcc void @ResumeTxBeacon(ptr noundef %Adapter)
  br label %sw.epilog835

sw.bb301:                                         ; preds = %entry
  %103 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool302.not = icmp eq i8 %104, 0
  %call309 = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 1544) #6
  br i1 %tobool302.not, label %if.else308, label %if.then303

if.then303:                                       ; preds = %sw.bb301
  call void @__sanitizer_cov_trace_pc() #8
  %or306 = or i32 %call309, 192
  %call307 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1544, i32 noundef %or306) #6
  br label %sw.epilog835

if.else308:                                       ; preds = %sw.bb301
  call void @__sanitizer_cov_trace_pc() #8
  %and310 = and i32 %call309, -193
  %call311 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1544, i32 noundef %and310) #6
  br label %sw.epilog835

sw.bb313:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call314 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1700, i16 noundef zeroext 0) #6
  %call315 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1363, i8 noundef zeroext 3) #6
  %call316 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1360) #6
  %105 = or i8 %call316, 16
  %call320 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1360, i8 noundef zeroext %105) #6
  br label %sw.epilog835

sw.bb321:                                         ; preds = %entry
  %106 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool322.not = icmp eq i8 %107, 0
  br i1 %tobool322.not, label %if.else333, label %if.then323

if.then323:                                       ; preds = %sw.bb321
  call void @__sanitizer_cov_trace_pc() #8
  %call324 = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 1544) #6
  %and325 = and i32 %call324, -129
  %call326 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1544, i32 noundef %and325) #6
  %call327 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1700, i16 noundef zeroext 0) #6
  %call328 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1360) #6
  %108 = or i8 %call328, 16
  %call332 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1360, i8 noundef zeroext %108) #6
  br label %sw.epilog835

if.else333:                                       ; preds = %sw.bb321
  %mlmext_info337 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 17
  %call338 = tail call i32 @is_client_associated_to_ap(ptr noundef %Adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call338)
  %tobool339.not = icmp eq i32 %call338, 0
  br i1 %tobool339.not, label %lor.lhs.false340, label %if.else333.if.end365.sink.split_crit_edge

if.else333.if.end365.sink.split_crit_edge:        ; preds = %if.else333
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end365.sink.split

lor.lhs.false340:                                 ; preds = %if.else333
  %109 = ptrtoint ptr %mlmext_info337 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mlmext_info337, align 4
  %and342 = and i32 %110, 3
  %111 = zext i32 %and342 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %and342, label %lor.lhs.false340.if.end365_crit_edge [
    i32 1, label %lor.lhs.false340.if.end365.sink.split_crit_edge
    i32 3, label %lor.lhs.false340.if.end365.sink.split_crit_edge1241
  ]

lor.lhs.false340.if.end365.sink.split_crit_edge1241: ; preds = %lor.lhs.false340
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end365.sink.split

lor.lhs.false340.if.end365.sink.split_crit_edge:  ; preds = %lor.lhs.false340
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end365.sink.split

lor.lhs.false340.if.end365_crit_edge:             ; preds = %lor.lhs.false340
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end365

if.end365.sink.split:                             ; preds = %lor.lhs.false340.if.end365.sink.split_crit_edge, %lor.lhs.false340.if.end365.sink.split_crit_edge1241, %if.else333.if.end365.sink.split_crit_edge
  %call358 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1700, i16 noundef zeroext -1) #6
  %call359 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1360) #6
  %112 = and i8 %call359, -17
  %call363 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1360, i8 noundef zeroext %112) #6
  br label %if.end365

if.end365:                                        ; preds = %if.end365.sink.split, %lor.lhs.false340.if.end365_crit_edge
  %113 = ptrtoint ptr %mlmext_info337 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mlmext_info337, align 4
  %and367 = and i32 %114, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and367)
  %cmp368 = icmp eq i32 %and367, 3
  br i1 %cmp368, label %if.then370, label %if.else374

if.then370:                                       ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #8
  %call371 = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 1544) #6
  %or372 = or i32 %call371, 128
  %call373 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1544, i32 noundef %or372) #6
  br label %sw.epilog835

if.else374:                                       ; preds = %if.end365
  %in_cta_test = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 63
  %115 = ptrtoint ptr %in_cta_test to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %in_cta_test, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool375.not = icmp eq i8 %116, 0
  %call382 = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 1544) #6
  br i1 %tobool375.not, label %if.else381, label %if.then376

if.then376:                                       ; preds = %if.else374
  call void @__sanitizer_cov_trace_pc() #8
  %and379 = and i32 %call382, -193
  %call380 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1544, i32 noundef %and379) #6
  br label %sw.epilog835

if.else381:                                       ; preds = %if.else374
  call void @__sanitizer_cov_trace_pc() #8
  %or383 = or i32 %call382, 128
  %call384 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1544, i32 noundef %or383) #6
  br label %sw.epilog835

sw.bb388:                                         ; preds = %entry
  %117 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %val, align 1
  %119 = zext i8 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %118, label %sw.bb388.if.end434_crit_edge [
    i8 0, label %if.then392
    i8 1, label %if.then416
    i8 2, label %if.then422
  ]

sw.bb388.if.end434_crit_edge:                     ; preds = %sw.bb388
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end434

if.then392:                                       ; preds = %sw.bb388
  call void @__sanitizer_cov_trace_pc() #8
  %call393 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1700, i16 noundef zeroext -1) #6
  %in_cta_test394 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 63
  %120 = ptrtoint ptr %in_cta_test394 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %in_cta_test394, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool395.not = icmp eq i8 %121, 0
  %call402 = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 1544) #6
  %and399 = and i32 %call402, -193
  %masksel = select i1 %tobool395.not, i32 192, i32 0
  %or404.sink = or i32 %and399, %masksel
  %call405 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1544, i32 noundef %or404.sink) #6
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 1
  %122 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %fw_state.i, align 4
  %124 = and i32 %123, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool408.not = icmp eq i32 %124, 0
  %. = select i1 %tobool408.not, i16 7, i16 48
  br label %if.end434

if.then416:                                       ; preds = %sw.bb388
  call void @__sanitizer_cov_trace_pc() #8
  %call417 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1700, i16 noundef zeroext 0) #6
  br label %if.end434

if.then422:                                       ; preds = %sw.bb388
  call void @__sanitizer_cov_trace_pc() #8
  %call423 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1360) #6
  %125 = and i8 %call423, -17
  %call427 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1360, i8 noundef zeroext %125) #6
  %fw_state.i1205 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 1
  %126 = ptrtoint ptr %fw_state.i1205 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %fw_state.i1205, align 4
  %and.i1206 = and i32 %127, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1206)
  %tobool.not.i1207.not = icmp eq i32 %and.i1206, 0
  %spec.select = select i1 %tobool.not.i1207.not, i16 48, i16 7
  br label %if.end434

if.end434:                                        ; preds = %if.then422, %if.then416, %if.then392, %sw.bb388.if.end434_crit_edge
  %RetryLimit.0 = phi i16 [ 48, %if.then416 ], [ %., %if.then392 ], [ 48, %sw.bb388.if.end434_crit_edge ], [ %spec.select, %if.then422 ]
  %or439 = mul nuw nsw i16 %RetryLimit.0, 257
  %call441 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1066, i16 noundef zeroext %or439) #6
  br label %sw.epilog835

sw.bb442:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %128 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %val, align 2
  %call443 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1364, i16 noundef zeroext %129) #6
  br label %sw.epilog835

sw.bb444:                                         ; preds = %entry
  %130 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %val, align 1
  %call449 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1307, i8 noundef zeroext %131) #6
  %WMM_enable = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 17, i32 17
  %132 = ptrtoint ptr %WMM_enable to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %WMM_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp451 = icmp eq i8 %133, 0
  br i1 %cmp451, label %if.then453, label %sw.bb444.sw.epilog835_crit_edge

sw.bb444.sw.epilog835_crit_edge:                  ; preds = %sw.bb444
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog835

if.then453:                                       ; preds = %sw.bb444
  call void @__sanitizer_cov_trace_pc() #8
  %cur_wireless_mode = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 7
  %134 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %cur_wireless_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %135)
  %cmp455 = icmp eq i8 %135, 1
  %.1186 = select i1 %cmp455, i8 10, i8 16
  %slotTime = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 17, i32 15
  %136 = ptrtoint ptr %slotTime to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %slotTime, align 1
  %mul462 = shl i8 %137, 1
  %add463 = add i8 %.1186, %mul462
  %call465 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1280, i8 noundef zeroext %add463) #6
  %call466 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1284, i8 noundef zeroext %add463) #6
  %call467 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1288, i8 noundef zeroext %add463) #6
  %call468 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1292, i8 noundef zeroext %add463) #6
  br label %sw.epilog835

sw.bb470:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %138 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %val, align 1
  %call472 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1596, i8 noundef zeroext %139) #6
  %arrayidx473 = getelementptr i8, ptr %val, i32 1
  %140 = ptrtoint ptr %arrayidx473 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx473, align 1
  %call474 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1597, i8 noundef zeroext %141) #6
  %arrayidx475 = getelementptr i8, ptr %val, i32 2
  %142 = ptrtoint ptr %arrayidx475 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx475, align 1
  %call476 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1598, i8 noundef zeroext %143) #6
  %arrayidx477 = getelementptr i8, ptr %val, i32 3
  %144 = ptrtoint ptr %arrayidx477 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx477, align 1
  %call478 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1599, i8 noundef zeroext %145) #6
  br label %sw.epilog835

sw.bb479:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %146 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %val, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool480.not = icmp eq i8 %147, 0
  %nCur40MhzPrimeSC = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 9
  %148 = ptrtoint ptr %nCur40MhzPrimeSC to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %nCur40MhzPrimeSC, align 1
  %shl483 = shl i8 %149, 5
  %150 = or i8 %shl483, -128
  %spec.select1187 = select i1 %tobool480.not, i8 %shl483, i8 %150
  %call491 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1090, i8 noundef zeroext %spec.select1187) #6
  br label %sw.epilog835

sw.bb492:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %151 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %val, align 1
  %call493 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1664, i8 noundef zeroext %152) #6
  br label %sw.epilog835

sw.bb494:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %153 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %val, align 1
  %conv495 = zext i8 %154 to i32
  %SupportAbility = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 4
  %155 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %conv495, ptr %SupportAbility, align 8
  br label %sw.epilog835

sw.bb496:                                         ; preds = %entry
  %156 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool498.not = icmp eq i8 %157, 0
  br i1 %tobool498.not, label %if.else501, label %if.then499

if.then499:                                       ; preds = %sw.bb496
  call void @__sanitizer_cov_trace_pc() #8
  %SupportAbility500 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 4
  %158 = ptrtoint ptr %SupportAbility500 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %SupportAbility500, align 8
  %BK_SupportAbility = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 5
  %160 = ptrtoint ptr %BK_SupportAbility to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %BK_SupportAbility, align 4
  br label %sw.epilog835

if.else501:                                       ; preds = %sw.bb496
  call void @__sanitizer_cov_trace_pc() #8
  %BK_SupportAbility502 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 5
  %161 = ptrtoint ptr %BK_SupportAbility502 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %BK_SupportAbility502, align 4
  %SupportAbility503 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 4
  %163 = ptrtoint ptr %SupportAbility503 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %SupportAbility503, align 8
  br label %sw.epilog835

sw.bb505:                                         ; preds = %entry
  %164 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %165)
  %cmp506 = icmp eq i32 %165, 268435455
  br i1 %cmp506, label %if.then508, label %if.else510

if.then508:                                       ; preds = %sw.bb505
  call void @__sanitizer_cov_trace_pc() #8
  %166 = ptrtoint ptr %dmpriv to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %dmpriv, align 4
  %SupportAbility509 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 4
  %168 = ptrtoint ptr %SupportAbility509 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %SupportAbility509, align 8
  br label %sw.epilog835

if.else510:                                       ; preds = %sw.bb505
  call void @__sanitizer_cov_trace_pc() #8
  %SupportAbility511 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 4
  %169 = ptrtoint ptr %SupportAbility511 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %SupportAbility511, align 8
  %or512 = or i32 %170, %165
  store i32 %or512, ptr %SupportAbility511, align 8
  br label %sw.epilog835

sw.bb514:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %171 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %val, align 4
  %SupportAbility515 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 4
  %173 = ptrtoint ptr %SupportAbility515 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %SupportAbility515, align 8
  %and516 = and i32 %174, %172
  store i32 %and516, ptr %SupportAbility515, align 8
  br label %sw.epilog835

sw.bb517:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %175 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %val, align 1
  %177 = and i8 %176, 3
  %178 = or i8 %177, 16
  %or530 = zext i8 %178 to i32
  %conv534 = zext i8 %176 to i32
  %mul535 = shl nuw nsw i32 %conv534, 3
  %or539 = or i32 %mul535, -2147418112
  %call540 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1652, i32 noundef %or530) #6
  %call541 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1648, i32 noundef %or539) #6
  %or539.1 = or i32 %mul535, -2147418111
  %call540.1 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1652, i32 noundef 0) #6
  %call541.1 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1648, i32 noundef %or539.1) #6
  %or539.2 = or i32 %mul535, -2147418110
  %call540.2 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1652, i32 noundef 0) #6
  %call541.2 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1648, i32 noundef %or539.2) #6
  %or539.3 = or i32 %mul535, -2147418109
  %call540.3 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1652, i32 noundef 0) #6
  %call541.3 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1648, i32 noundef %or539.3) #6
  %or539.4 = or i32 %mul535, -2147418108
  %call540.4 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1652, i32 noundef 0) #6
  %call541.4 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1648, i32 noundef %or539.4) #6
  %or539.5 = or i32 %mul535, -2147418107
  %call540.5 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1652, i32 noundef 0) #6
  %call541.5 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1648, i32 noundef %or539.5) #6
  %or539.6 = or i32 %mul535, -2147418106
  %call540.6 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1652, i32 noundef 0) #6
  %call541.6 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1648, i32 noundef %or539.6) #6
  %or539.7 = or i32 %mul535, -2147418105
  %call540.7 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1652, i32 noundef 0) #6
  %call541.7 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1648, i32 noundef %or539.7) #6
  br label %sw.epilog835

sw.bb543:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call544 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1648, i32 noundef -1073741824) #6
  br label %sw.epilog835

sw.bb545:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %179 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %val, align 4
  %call547 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1652, i32 noundef %180) #6
  %arrayidx548 = getelementptr i32, ptr %val, i32 1
  %181 = ptrtoint ptr %arrayidx548 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx548, align 4
  %or549 = or i32 %182, -2147418112
  %call550 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1648, i32 noundef %or549) #6
  br label %sw.epilog835

sw.bb551:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %183 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %val, align 4
  %call553 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1280, i32 noundef %184) #6
  br label %sw.epilog835

sw.bb554:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %185 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %val, align 4
  %call556 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1284, i32 noundef %186) #6
  br label %sw.epilog835

sw.bb557:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %187 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %val, align 4
  %AcParam_BE = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 29
  %189 = ptrtoint ptr %AcParam_BE to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %AcParam_BE, align 8
  %190 = load i32, ptr %val, align 4
  %call560 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1288, i32 noundef %190) #6
  br label %sw.epilog835

sw.bb561:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %191 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %val, align 4
  %call563 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 1292, i32 noundef %192) #6
  br label %sw.epilog835

sw.bb564:                                         ; preds = %entry
  %193 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %val, align 1
  %call565 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1472) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %194)
  %cmp567 = icmp ugt i8 %194, 1
  %195 = zext i1 %cmp567 to i8
  %call565.masked = and i8 %call565, -15
  %AcmCtrl.1 = and i8 %194, 14
  %AcmCtrl.2 = or i8 %AcmCtrl.1, %195
  %AcmCtrl.3 = or i8 %AcmCtrl.2, %call565.masked
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %196 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %196)
  %cmp611 = icmp ugt i32 %196, 4
  br i1 %cmp611, label %do.end616, label %sw.bb564.do.end622_crit_edge

sw.bb564.do.end622_crit_edge:                     ; preds = %sw.bb564
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end622

do.end616:                                        ; preds = %sw.bb564
  call void @__sanitizer_cov_trace_pc() #8
  %conv618 = zext i8 %AcmCtrl.3 to i32
  %call619 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv618) #9
  br label %do.end622

do.end622:                                        ; preds = %do.end616, %sw.bb564.do.end622_crit_edge
  %call623 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1472, i8 noundef zeroext %AcmCtrl.3) #6
  br label %sw.epilog835

sw.bb624:                                         ; preds = %entry
  %197 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %198)
  %cmp626 = icmp ult i8 %198, 8
  br i1 %cmp626, label %if.then628, label %sw.bb624.sw.epilog835_crit_edge

sw.bb624.sw.epilog835_crit_edge:                  ; preds = %sw.bb624
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog835

if.then628:                                       ; preds = %sw.bb624
  %dot11PrivacyAlgrthm = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 12, i32 1
  %199 = ptrtoint ptr %dot11PrivacyAlgrthm to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %dot11PrivacyAlgrthm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %200)
  %201 = icmp ult i32 %200, 6
  br i1 %201, label %switch.lookup, label %if.then628.sw.epilog_crit_edge

if.then628.sw.epilog_crit_edge:                   ; preds = %if.then628
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.then628
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.SetHwReg8188EU, i32 0, i32 %200
  %202 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %202)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.then628.sw.epilog_crit_edge
  %SecMinSpace.0 = phi i8 [ %switch.load, %switch.lookup ], [ 7, %if.then628.sw.epilog_crit_edge ]
  %203 = tail call i8 @llvm.umax.i8(i8 %198, i8 %SecMinSpace.0)
  %call637 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1116) #6
  %204 = and i8 %call637, -8
  %or6411183 = or i8 %204, %203
  %call643 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1116, i8 noundef zeroext %or6411183) #6
  br label %sw.epilog835

sw.bb645:                                         ; preds = %entry
  %205 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %206)
  %cmp647 = icmp ult i8 %206, 4
  br i1 %cmp647, label %if.then649, label %sw.bb645.sw.epilog835_crit_edge

sw.bb645.sw.epilog835_crit_edge:                  ; preds = %sw.bb645
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog835

if.then649:                                       ; preds = %sw.bb645
  call void @__sanitizer_cov_trace_pc() #8
  %conv646 = zext i8 %206 to i32
  %shl652 = shl nuw nsw i32 4, %conv646
  %conv654 = and i32 %shl652, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv654)
  %cmp655.not = icmp eq i32 %conv654, 0
  %207 = and i32 %shl652, 252
  %conv667 = select i1 %cmp655.not, i32 %207, i32 15
  %shl668 = shl nuw nsw i32 %conv667, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv667)
  %cmp669 = icmp ult i32 %conv667, 4
  %208 = trunc i32 %shl668 to i8
  %conv679 = or i8 %208, 1
  %RegToSet_Normal.sroa.0.0 = select i1 %cmp669, i8 %conv679, i8 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv667)
  %cmp688 = icmp eq i32 %conv667, 0
  %209 = and i8 %RegToSet_Normal.sroa.0.0, -16
  %210 = trunc i32 %conv667 to i8
  %conv697 = or i8 %209, %210
  %RegToSet_Normal.sroa.0.1 = select i1 %cmp688, i8 %conv697, i8 %RegToSet_Normal.sroa.0.0
  %call705 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1112, i8 noundef zeroext %RegToSet_Normal.sroa.0.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %conv667)
  %cmp669.1 = icmp ult i32 %conv667, 10
  %211 = trunc i32 %shl668 to i8
  %conv679.1 = or i8 %211, 8
  %RegToSet_Normal.sroa.8.0 = select i1 %cmp669.1, i8 %conv679.1, i8 -88
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv667)
  %cmp688.1 = icmp ult i32 %conv667, 8
  %212 = and i8 %RegToSet_Normal.sroa.8.0, -16
  %213 = trunc i32 %conv667 to i8
  %conv697.1 = or i8 %212, %213
  %RegToSet_Normal.sroa.8.1 = select i1 %cmp688.1, i8 %conv697.1, i8 %RegToSet_Normal.sroa.8.0
  %call705.1 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1113, i8 noundef zeroext %RegToSet_Normal.sroa.8.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %conv667)
  %cmp669.2 = icmp ult i32 %conv667, 7
  %214 = trunc i32 %shl668 to i8
  %conv679.2 = or i8 %214, 2
  %RegToSet_Normal.sroa.13.0 = select i1 %cmp669.2, i8 %conv679.2, i8 114
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv667)
  %cmp688.2 = icmp ult i32 %conv667, 2
  %215 = and i8 %RegToSet_Normal.sroa.13.0, -16
  %216 = trunc i32 %conv667 to i8
  %conv697.2 = or i8 %215, %216
  %RegToSet_Normal.sroa.13.1 = select i1 %cmp688.2, i8 %conv697.2, i8 %RegToSet_Normal.sroa.13.0
  %call705.2 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1114, i8 noundef zeroext %RegToSet_Normal.sroa.13.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %conv667)
  %cmp669.3 = icmp ult i32 %conv667, 11
  %217 = trunc i32 %shl668 to i8
  %conv679.3 = or i8 %217, 9
  %RegToSet_Normal.sroa.18.0 = select i1 %cmp669.3, i8 %conv679.3, i8 -71
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %conv667)
  %cmp688.3 = icmp ult i32 %conv667, 9
  %218 = and i8 %RegToSet_Normal.sroa.18.0, -16
  %219 = trunc i32 %conv667 to i8
  %conv697.3 = or i8 %218, %219
  %RegToSet_Normal.sroa.18.1 = select i1 %cmp688.3, i8 %conv697.3, i8 %RegToSet_Normal.sroa.18.0
  %call705.3 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1115, i8 noundef zeroext %RegToSet_Normal.sroa.18.1) #6
  br label %sw.epilog835

sw.bb710:                                         ; preds = %entry
  %220 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %cmp712 = icmp eq i8 %221, 0
  br i1 %cmp712, label %if.then714, label %sw.bb710.if.end715_crit_edge

sw.bb710.if.end715_crit_edge:                     ; preds = %sw.bb710
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end715

if.then714:                                       ; preds = %sw.bb710
  call void @__sanitizer_cov_trace_pc() #8
  %UsbRxAggPageCount = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 55
  %222 = ptrtoint ptr %UsbRxAggPageCount to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %UsbRxAggPageCount, align 2
  br label %if.end715

if.end715:                                        ; preds = %if.then714, %sw.bb710.if.end715_crit_edge
  %threshold.0 = phi i8 [ %223, %if.then714 ], [ %221, %sw.bb710.if.end715_crit_edge ]
  %call716 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 640, i8 noundef zeroext %threshold.0) #6
  br label %sw.epilog835

sw.bb717:                                         ; preds = %entry
  %224 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %cmp719.not = icmp eq i8 %225, 0
  br i1 %cmp719.not, label %sw.bb717.if.end722_crit_edge, label %if.then721

sw.bb717.if.end722_crit_edge:                     ; preds = %sw.bb717
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end722

if.then721:                                       ; preds = %sw.bb717
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ODM_RF_Saving(ptr noundef %odmpriv, i8 noundef zeroext 1) #6
  br label %if.end722

if.end722:                                        ; preds = %if.then721, %sw.bb717.if.end722_crit_edge
  tail call void @rtl8188e_set_FwPwrMode_cmd(ptr noundef %Adapter, i8 noundef zeroext %225) #6
  br label %sw.epilog835

sw.bb723:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %226 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %val, align 1
  tail call void @rtl8188e_set_FwJoinBssReport_cmd(ptr noundef %Adapter, i8 noundef zeroext %227) #6
  br label %sw.epilog835

sw.bb724:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %228 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %val, align 1
  tail call void @rtl8188e_set_p2p_ps_offload_cmd(ptr noundef %Adapter, i8 noundef zeroext %229) #6
  br label %sw.epilog835

sw.bb725:                                         ; preds = %entry
  %230 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %231)
  %cmp727 = icmp eq i32 %231, 255
  br i1 %cmp727, label %if.then729, label %if.else730

if.then729:                                       ; preds = %sw.bb725
  call void @__sanitizer_cov_trace_pc() #8
  %BackupIGValue = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 22, i32 2
  %232 = ptrtoint ptr %BackupIGValue to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %BackupIGValue, align 2
  tail call void @ODM_Write_DIG(ptr noundef %odmpriv, i8 noundef zeroext %233) #6
  br label %sw.epilog835

if.else730:                                       ; preds = %sw.bb725
  call void @__sanitizer_cov_trace_pc() #8
  %CurIGValue = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 22, i32 1
  %234 = ptrtoint ptr %CurIGValue to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %CurIGValue, align 1
  %BackupIGValue731 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 22, i32 2
  %236 = ptrtoint ptr %BackupIGValue731 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %235, ptr %BackupIGValue731, align 2
  %conv732 = trunc i32 %231 to i8
  tail call void @ODM_Write_DIG(ptr noundef %odmpriv, i8 noundef zeroext %conv732) #6
  br label %sw.epilog835

sw.bb734:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %237 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %val, align 2
  tail call void @ODM_RA_Set_TxRPT_Time(ptr noundef %odmpriv, i16 noundef zeroext %238) #6
  br label %sw.epilog835

sw.bb735:                                         ; preds = %entry
  %239 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %val, align 1
  %CurAntenna = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 39
  %241 = ptrtoint ptr %CurAntenna to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %CurAntenna, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %242, i8 %240)
  %cmp738.not = icmp eq i8 %242, %240
  br i1 %cmp738.not, label %sw.bb735.sw.epilog835_crit_edge, label %if.then740

sw.bb735.sw.epilog835_crit_edge:                  ; preds = %sw.bb735
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog835

if.then740:                                       ; preds = %sw.bb735
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %240)
  %cmp742 = icmp ne i8 %240, 2
  %conv745 = zext i1 %cmp742 to i8
  tail call void @ODM_UpdateRxIdleAnt_88E(ptr noundef %odmpriv, i8 noundef zeroext %conv745) #6
  %243 = ptrtoint ptr %CurAntenna to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %240, ptr %CurAntenna, align 8
  br label %sw.epilog835

sw.bb749:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %244 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %val, align 2
  %EfuseUsedBytes = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 46
  %246 = ptrtoint ptr %EfuseUsedBytes to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 %245, ptr %EfuseUsedBytes, align 8
  br label %sw.epilog835

sw.bb750:                                         ; preds = %entry
  %call751 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1314, i8 noundef zeroext -1) #6
  %call752 = tail call zeroext i16 @rtw_read16(ptr noundef %Adapter, i32 noundef 1244) #6
  %nqos_ssn = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 9, i32 40
  %247 = ptrtoint ptr %nqos_ssn to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %call752, ptr %nqos_ssn, align 4
  %bkeepfwalive = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 14, i32 34
  %248 = ptrtoint ptr %bkeepfwalive to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %bkeepfwalive, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %tobool753.not = icmp eq i8 %249, 0
  br i1 %tobool753.not, label %if.then754, label %sw.bb750.sw.epilog835_crit_edge

sw.bb750.sw.epilog835_crit_edge:                  ; preds = %sw.bb750
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog835

if.then754:                                       ; preds = %sw.bb750
  %call755 = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 644) #6
  %or756 = or i32 %call755, 262144
  %call757 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 644, i32 noundef %or756) #6
  br label %do.body758

do.body758:                                       ; preds = %do.cond764.do.body758_crit_edge, %if.then754
  %trycnt.0 = phi i8 [ 100, %if.then754 ], [ %dec, %do.cond764.do.body758_crit_edge ]
  %call759 = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 644) #6
  %and760 = and i32 %call759, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and760)
  %tobool761.not = icmp eq i32 %and760, 0
  br i1 %tobool761.not, label %do.end766, label %do.cond764

do.cond764:                                       ; preds = %do.body758
  %dec = add nsw i8 %trycnt.0, -1
  %tobool765.not = icmp eq i8 %trycnt.0, 0
  br i1 %tobool765.not, label %do.cond764.if.end783_crit_edge, label %do.cond764.do.body758_crit_edge

do.cond764.do.body758_crit_edge:                  ; preds = %do.cond764
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body758

do.cond764.if.end783_crit_edge:                   ; preds = %do.cond764
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end783

do.end766:                                        ; preds = %do.body758
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %trycnt.0)
  %cmp768 = icmp eq i8 %trycnt.0, 0
  br i1 %cmp768, label %do.body771, label %do.end766.if.end783_crit_edge

do.end766.if.end783_crit_edge:                    ; preds = %do.end766
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end783

do.body771:                                       ; preds = %do.end766
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %250 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %250)
  %cmp772 = icmp ugt i32 %250, 4
  br i1 %cmp772, label %do.end777, label %do.body771.if.end783_crit_edge

do.body771.if.end783_crit_edge:                   ; preds = %do.body771
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end783

do.end777:                                        ; preds = %do.body771
  call void @__sanitizer_cov_trace_pc() #8
  %call779 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #9
  br label %if.end783

if.end783:                                        ; preds = %do.end777, %do.body771.if.end783_crit_edge, %do.end766.if.end783_crit_edge, %do.cond764.if.end783_crit_edge
  %call784 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 532, i16 noundef zeroext 0) #6
  %call785 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 512, i32 noundef -2147483648) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %251 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %251(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %252 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %252(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %253 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %253(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %254 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %254(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %255 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %255(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %256 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %256(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %257 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %257(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %258 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %258(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %259 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %259(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %260 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %260(i32 noundef 214748000) #6
  br label %sw.epilog835

sw.bb792:                                         ; preds = %entry
  %261 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %val, align 1
  %bMacPwrCtrlOn = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 48
  %263 = ptrtoint ptr %bMacPwrCtrlOn to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %262, ptr %bMacPwrCtrlOn, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %264 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %264)
  %cmp794 = icmp ugt i32 %264, 4
  br i1 %cmp794, label %do.end799, label %sw.bb792.sw.epilog835_crit_edge

sw.bb792.sw.epilog835_crit_edge:                  ; preds = %sw.bb792
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog835

do.end799:                                        ; preds = %sw.bb792
  call void @__sanitizer_cov_trace_pc() #8
  %conv802 = zext i8 %262 to i32
  %call803 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.32, i32 noundef %conv802) #9
  br label %sw.epilog835

sw.bb807:                                         ; preds = %entry
  %265 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %val, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %267 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %267)
  %cmp809 = icmp ugt i32 %267, 4
  br i1 %cmp809, label %do.end814, label %sw.bb807.do.end822_crit_edge

sw.bb807.do.end822_crit_edge:                     ; preds = %sw.bb807
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end822

do.end814:                                        ; preds = %sw.bb807
  call void @__sanitizer_cov_trace_pc() #8
  %conv816 = zext i8 %266 to i32
  %add818 = add nuw nsw i32 %conv816, 1
  %call819 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %conv816, i32 noundef %add818) #9
  br label %do.end822

do.end822:                                        ; preds = %do.end814, %sw.bb807.do.end822_crit_edge
  %add824 = add i8 %266, 1
  %call826 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1261, i8 noundef zeroext %add824) #6
  br label %sw.epilog835

sw.bb827:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %268 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %val, align 2
  tail call void @rtl8188e_set_FwMediaStatus_cmd(ptr noundef %Adapter, i16 noundef zeroext %269) #6
  br label %sw.epilog835

sw.bb828:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call829 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 522) #6
  %270 = or i8 %call829, 1
  %call833 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 522, i8 noundef zeroext %270) #6
  br label %sw.epilog835

sw.epilog835:                                     ; preds = %sw.bb828, %sw.bb827, %do.end822, %do.end799, %sw.bb792.sw.epilog835_crit_edge, %if.end783, %sw.bb750.sw.epilog835_crit_edge, %sw.bb749, %if.then740, %sw.bb735.sw.epilog835_crit_edge, %sw.bb734, %if.else730, %if.then729, %sw.bb724, %sw.bb723, %if.end722, %if.end715, %if.then649, %sw.bb645.sw.epilog835_crit_edge, %sw.epilog, %sw.bb624.sw.epilog835_crit_edge, %do.end622, %sw.bb561, %sw.bb557, %sw.bb554, %sw.bb551, %sw.bb545, %sw.bb543, %sw.bb517, %sw.bb514, %if.else510, %if.then508, %if.else501, %if.then499, %sw.bb494, %sw.bb492, %sw.bb479, %sw.bb470, %if.then453, %sw.bb444.sw.epilog835_crit_edge, %sw.bb442, %if.end434, %if.else381, %if.then376, %if.then370, %if.then323, %sw.bb313, %if.else308, %if.then303, %if.then299, %if.end274.sw.epilog835_crit_edge, %hw_var_set_bcn_func.exit, %sw.bb56, %while.end, %sw.bb21, %sw.bb20, %if.then34.i, %if.then28.i, %if.then23.i, %do.end16.i.sw.epilog835_crit_edge, %sw.bb8, %sw.bb, %entry.sw.epilog835_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @HalSetBrateCfg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @StopTxBeacon(ptr noundef %adapt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %RegFwHwTxQCtrl = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 34
  %0 = ptrtoint ptr %RegFwHwTxQCtrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %RegFwHwTxQCtrl, align 2
  %2 = and i8 %1, -65
  %call = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1058, i8 noundef zeroext %2) #6
  %3 = ptrtoint ptr %RegFwHwTxQCtrl to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %RegFwHwTxQCtrl, align 2
  %5 = and i8 %4, -65
  store i8 %5, ptr %RegFwHwTxQCtrl, align 2
  %call7 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1345, i8 noundef zeroext 100) #6
  %RegReg542 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 35
  %6 = ptrtoint ptr %RegReg542 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %RegReg542, align 1
  %8 = and i8 %7, -2
  store i8 %8, ptr %RegReg542, align 1
  %call12 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1346, i8 noundef zeroext %8) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ResumeTxBeacon(ptr noundef %adapt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %RegFwHwTxQCtrl = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 34
  %0 = ptrtoint ptr %RegFwHwTxQCtrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %RegFwHwTxQCtrl, align 2
  %2 = or i8 %1, 64
  %call = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1058, i8 noundef zeroext %2) #6
  %3 = ptrtoint ptr %RegFwHwTxQCtrl to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %RegFwHwTxQCtrl, align 2
  %5 = or i8 %4, 64
  store i8 %5, ptr %RegFwHwTxQCtrl, align 2
  %call7 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1345, i8 noundef zeroext -1) #6
  %RegReg542 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 35
  %6 = ptrtoint ptr %RegReg542 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %RegReg542, align 1
  %8 = or i8 %7, 1
  store i8 %8, ptr %RegReg542, align 1
  %call12 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1346, i8 noundef zeroext %8) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_client_associated_to_ap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_RF_Saving(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_set_FwPwrMode_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_set_FwJoinBssReport_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_set_p2p_ps_offload_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_Write_DIG(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_RA_Set_TxRPT_Time(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_UpdateRxIdleAnt_88E(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_set_FwMediaStatus_cmd(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @GetHwReg8188EU(ptr noundef %Adapter, i8 noundef zeroext %variable, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %variable, label %entry.sw.epilog_crit_edge [
    i8 6, label %sw.bb
    i8 7, label %entry.sw.bb2_crit_edge
    i8 19, label %sw.bb3
    i8 20, label %sw.bb8
    i8 38, label %sw.bb11
    i8 47, label %sw.bb22
    i8 52, label %sw.bb24
    i8 56, label %sw.bb25
    i8 61, label %sw.bb26
  ]

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %BasicRateSet = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 10
  %1 = ptrtoint ptr %BasicRateSet to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %BasicRateSet, align 2
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %val, align 2
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 1314) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call, ptr %val, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 522) #6
  %5 = and i8 %call4, 1
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %val, align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %SupportAbility = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 4
  %7 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %SupportAbility, align 8
  %conv9 = trunc i32 %8 to i8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv9, ptr %val, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %rf_pwrstate = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 14, i32 31
  %10 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rf_pwrstate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %val, align 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 1544) #6
  %and15 = and i32 %call14, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %. = zext i1 %tobool16.not to i8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %., ptr %val, align 1
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %CurAntenna = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 39
  %14 = ptrtoint ptr %CurAntenna to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %CurAntenna, align 8
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %val, align 1
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %EfuseUsedBytes = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 46
  %17 = ptrtoint ptr %EfuseUsedBytes to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %EfuseUsedBytes, align 8
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %val, align 2
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bMacPwrCtrlOn = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 48
  %20 = ptrtoint ptr %bMacPwrCtrlOn to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bMacPwrCtrlOn, align 1
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %val, align 1
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 1044) #6
  %and28 = and i32 %call27, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %cmp29 = icmp eq i32 %and28, 0
  %conv32 = zext i1 %cmp29 to i8
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv32, ptr %val, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb22, %if.else, %if.then, %sw.bb8, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @GetHalDefVar8188EUsb(ptr noundef %Adapter, i32 noundef %eVariable, ptr nocapture noundef %pValue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %eVariable to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %eVariable, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb5
    i32 3, label %sw.bb6
    i32 4, label %sw.bb7
    i32 5, label %sw.bb8
    i32 7, label %sw.bb9
    i32 8, label %sw.bb10
    i32 9, label %sw.bb13
    i32 10, label %sw.bb17
    i32 11, label %sw.bb21
    i32 12, label %sw.bb22
    i32 6, label %sw.bb70
    i32 13, label %sw.bb71
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %stapriv = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 11
  %MacAddress = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 15, i32 6, i32 1
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %MacAddress) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %rssi_stat = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 77
  %1 = ptrtoint ptr %rssi_stat to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rssi_stat, align 8
  %3 = ptrtoint ptr %pValue to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %pValue, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %AntDivCfg = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 40
  %4 = ptrtoint ptr %AntDivCfg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %AntDivCfg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp ne i8 %5, 0
  %conv4 = zext i1 %cmp to i8
  %6 = ptrtoint ptr %pValue to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv4, ptr %pValue, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %CurAntenna = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 39
  %7 = ptrtoint ptr %CurAntenna to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %CurAntenna, align 8
  %9 = ptrtoint ptr %pValue to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %pValue, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %pValue to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %pValue, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %pValue to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 15360, ptr %pValue, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %pValue to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 28, ptr %pValue, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %SupportAbility = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 4
  %13 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %SupportAbility, align 8
  %15 = ptrtoint ptr %pValue to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %pValue, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %pValue to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pValue, align 1
  %odmpriv11 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38
  %call12 = tail call zeroext i8 @ODM_RA_GetDecisionRate_8188E(ptr noundef %odmpriv11, i8 noundef zeroext %17) #6
  %18 = ptrtoint ptr %pValue to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call12, ptr %pValue, align 1
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %pValue to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pValue, align 1
  %odmpriv15 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38
  %call16 = tail call zeroext i8 @ODM_RA_GetShortGI_8188E(ptr noundef %odmpriv15, i8 noundef zeroext %20) #6
  %21 = ptrtoint ptr %pValue to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call16, ptr %pValue, align 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %pValue to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pValue, align 1
  %odmpriv19 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38
  %call20 = tail call zeroext i8 @ODM_RA_GetHwPwrStatus_8188E(ptr noundef %odmpriv19, i8 noundef zeroext %23) #6
  %24 = ptrtoint ptr %pValue to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call20, ptr %pValue, align 1
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %pValue to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %pValue, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %26 = ptrtoint ptr %pValue to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pValue, align 1
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not = icmp eq i32 %and.i, 0
  br i1 %tobool25.not, label %sw.bb22.sw.epilog_crit_edge, label %do.body

sw.bb22.sw.epilog_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %sw.bb22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %30 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp27 = icmp ugt i32 %30, 4
  br i1 %cmp27, label %do.body35, label %do.body.sw.epilog_crit_edge

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body35:                                        ; preds = %do.body
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp36 = icmp ugt i32 %.pr, 4
  br i1 %cmp36, label %do.end41, label %do.body35.sw.epilog_crit_edge

do.body35.sw.epilog_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end41:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %conv43 = zext i8 %27 to i32
  %arrayidx = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 19, i32 %conv43
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 4
  %conv45 = zext i8 %32 to i32
  %RAUseRate = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 19, i32 %conv43, i32 2
  %33 = ptrtoint ptr %RAUseRate to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %RAUseRate, align 4
  %RateSGI = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 19, i32 %conv43, i32 3
  %35 = ptrtoint ptr %RateSGI to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %RateSGI, align 4
  %conv54 = zext i8 %36 to i32
  %DecisionRate = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 19, i32 %conv43, i32 7
  %37 = ptrtoint ptr %DecisionRate to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %DecisionRate, align 4
  %conv59 = zext i8 %38 to i32
  %PTStage = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 19, i32 %conv43, i32 22
  %39 = ptrtoint ptr %PTStage to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %PTStage, align 2
  %conv64 = zext i8 %40 to i32
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %conv43, i32 noundef %conv45, i32 noundef %34, i32 noundef %conv54, i32 noundef %conv59, i32 noundef %conv64) #9
  br label %sw.epilog

sw.bb70:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bDumpRxPkt = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 42
  %41 = ptrtoint ptr %bDumpRxPkt to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bDumpRxPkt, align 1
  %43 = ptrtoint ptr %pValue to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %pValue, align 1
  br label %sw.epilog

sw.bb71:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bDumpTxPkt = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 43
  %44 = ptrtoint ptr %bDumpTxPkt to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bDumpTxPkt, align 4
  %46 = ptrtoint ptr %pValue to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %pValue, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb71, %sw.bb70, %do.end41, %do.body35.sw.epilog_crit_edge, %do.body.sw.epilog_crit_edge, %sw.bb22.sw.epilog_crit_edge, %sw.bb21, %sw.bb17, %sw.bb13, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb2, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %bResult.0 = phi i8 [ 1, %sw.bb71 ], [ 1, %sw.bb70 ], [ 1, %sw.bb21 ], [ 1, %sw.bb17 ], [ 1, %sw.bb13 ], [ 1, %sw.bb10 ], [ 1, %sw.bb9 ], [ 1, %sw.bb8 ], [ 1, %sw.bb7 ], [ 1, %sw.bb6 ], [ 1, %sw.bb5 ], [ 1, %sw.bb2 ], [ 1, %if.then ], [ 1, %sw.bb.sw.epilog_crit_edge ], [ 1, %do.body35.sw.epilog_crit_edge ], [ 1, %do.end41 ], [ 1, %sw.bb22.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge ], [ 1, %do.body.sw.epilog_crit_edge ]
  ret i8 %bResult.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ODM_RA_GetDecisionRate_8188E(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ODM_RA_GetShortGI_8188E(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ODM_RA_GetHwPwrStatus_8188E(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @SetHalDefVar8188EUsb(ptr noundef %Adapter, i32 noundef %eVariable, ptr nocapture noundef readonly %pValue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %eVariable to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %eVariable, label %entry.sw.epilog_crit_edge [
    i32 7, label %sw.bb
    i32 6, label %sw.bb88
    i32 13, label %sw.bb89
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %pValue to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pValue, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %2, label %sw.bb.sw.epilog_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then12
    i8 2, label %if.then30
    i8 3, label %if.then37
    i8 5, label %if.then56
    i8 6, label %if.then63
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %SupportAbility = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 4
  %4 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %SupportAbility, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %5 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp3 = icmp ugt i32 %5, 4
  br i1 %cmp3, label %do.end, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #9
  br label %sw.epilog

if.then12:                                        ; preds = %sw.bb
  %SupportAbility13 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 4
  %6 = ptrtoint ptr %SupportAbility13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %SupportAbility13, align 8
  %and = and i32 %7, -2
  store i32 %and, ptr %SupportAbility13, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %8 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp15 = icmp ugt i32 %8, 4
  br i1 %cmp15, label %do.end20, label %if.then12.sw.epilog_crit_edge

if.then12.sw.epilog_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end20:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #9
  br label %sw.epilog

if.then30:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %SupportAbility31 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 4
  %9 = ptrtoint ptr %SupportAbility31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %SupportAbility31, align 8
  %and32 = and i32 %10, -5
  store i32 %and32, ptr %SupportAbility31, align 8
  br label %sw.epilog

if.then37:                                        ; preds = %sw.bb
  %SupportAbility38 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 4
  %11 = ptrtoint ptr %SupportAbility38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %SupportAbility38, align 8
  %and39 = and i32 %12, -67108865
  store i32 %and39, ptr %SupportAbility38, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %13 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp41 = icmp ugt i32 %13, 4
  br i1 %cmp41, label %do.end46, label %if.then37.sw.epilog_crit_edge

if.then37.sw.epilog_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end46:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #9
  br label %sw.epilog

if.then56:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %SupportAbility57 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 4
  %14 = ptrtoint ptr %SupportAbility57 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %SupportAbility57, align 8
  %and58 = and i32 %15, -65
  store i32 %and58, ptr %SupportAbility57, align 8
  br label %sw.epilog

if.then63:                                        ; preds = %sw.bb
  %SupportAbility64 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 4
  %16 = ptrtoint ptr %SupportAbility64 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %SupportAbility64, align 8
  %and65 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool.not = icmp eq i32 %and65, 0
  br i1 %tobool.not, label %if.then66, label %if.then63.if.end68_crit_edge

if.then63.if.end68_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then66:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  %call67 = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 3152) #6
  %CurIGValue = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 22, i32 1
  %18 = ptrtoint ptr %CurIGValue to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call67, ptr %CurIGValue, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.then63.if.end68_crit_edge
  %19 = ptrtoint ptr %SupportAbility64 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 268435455, ptr %SupportAbility64, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %20 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp71 = icmp ugt i32 %20, 4
  br i1 %cmp71, label %do.end76, label %if.end68.sw.epilog_crit_edge

if.end68.sw.epilog_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #9
  br label %sw.epilog

sw.bb88:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %pValue to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pValue, align 1
  %bDumpRxPkt = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 42
  %23 = ptrtoint ptr %bDumpRxPkt to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %bDumpRxPkt, align 1
  br label %sw.epilog

sw.bb89:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %pValue to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pValue, align 1
  %bDumpTxPkt = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 43
  %26 = ptrtoint ptr %bDumpTxPkt to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %bDumpTxPkt, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb89, %sw.bb88, %do.end76, %if.end68.sw.epilog_crit_edge, %if.then56, %do.end46, %if.then37.sw.epilog_crit_edge, %if.then30, %do.end20, %if.then12.sw.epilog_crit_edge, %do.end, %if.then.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %bResult.0 = phi i8 [ 1, %sw.bb89 ], [ 1, %sw.bb88 ], [ 1, %sw.bb.sw.epilog_crit_edge ], [ 1, %do.end20 ], [ 1, %if.then12.sw.epilog_crit_edge ], [ 1, %do.end46 ], [ 1, %if.then37.sw.epilog_crit_edge ], [ 1, %do.end76 ], [ 1, %if.end68.sw.epilog_crit_edge ], [ 1, %if.then56 ], [ 1, %if.then30 ], [ 1, %if.then.sw.epilog_crit_edge ], [ 1, %do.end ], [ 0, %entry.sw.epilog_crit_edge ]
  ret i8 %bResult.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @UpdateHalRAMask8188EUsb(ptr noundef %adapt, i32 noundef %mac_id, i8 noundef zeroext %rssi_level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %mac_id)
  %cmp = icmp ugt i32 %mac_id, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 39, i32 %mac_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = zext i32 %mac_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %mac_id, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end4
  %SupportedRates = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 38, i32 9
  %call = tail call i32 @rtw_get_rateset_len(ptr noundef %SupportedRates) #6
  %call7 = tail call zeroext i8 @judge_network_type(ptr noundef %adapt, ptr noundef %SupportedRates, i32 noundef %call) #6
  %3 = and i8 %call7, 15
  %call9 = tail call zeroext i8 @networktype_to_raid(i8 noundef zeroext %3) #6
  %call12 = tail call i32 @update_supported_rate(ptr noundef %SupportedRates, i32 noundef %call) #6
  %HT_enable = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 20
  %4 = ptrtoint ptr %HT_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %HT_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool14.not = icmp eq i8 %5, 0
  br i1 %tobool14.not, label %sw.bb.cond.end_crit_edge, label %cond.true

sw.bb.cond.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %HT_caps = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 36
  %call15 = tail call i32 @update_MSC_rate(ptr noundef %HT_caps) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sw.bb.cond.end_crit_edge
  %cond = phi i32 [ %call15, %cond.true ], [ 0, %sw.bb.cond.end_crit_edge ]
  %or = or i32 %cond, %call12
  %HT_caps16 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 36
  %call17 = tail call i32 @support_short_GI(ptr noundef %adapt, ptr noundef %HT_caps16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %not.tobool18.not = xor i1 %tobool18.not, true
  %spec.select176 = zext i1 %not.tobool18.not to i8
  %phi.sel = select i1 %tobool18.not, i32 128, i32 160
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %SupportedRates24 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 39, i32 1, i32 4
  %call26 = tail call i32 @rtw_get_rateset_len(ptr noundef %SupportedRates24) #6
  %cur_wireless_mode = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 5, i32 7
  %6 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cur_wireless_mode, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool29.not = icmp eq i8 %8, 0
  %. = select i1 %tobool29.not, i8 2, i8 1
  %call32 = tail call zeroext i8 @networktype_to_raid(i8 noundef zeroext %.) #6
  %SupportedRates33 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 38, i32 9
  %call35 = tail call i32 @update_basic_rate(ptr noundef %SupportedRates33, i32 noundef %call26) #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %SupportedRates38 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 39, i32 %mac_id, i32 4
  %call40 = tail call i32 @rtw_get_rateset_len(ptr noundef %SupportedRates38) #6
  %call45 = tail call zeroext i8 @judge_network_type(ptr noundef %adapt, ptr noundef %SupportedRates38, i32 noundef %call40) #6
  %9 = and i8 %call45, 15
  %call49 = tail call zeroext i8 @networktype_to_raid(i8 noundef zeroext %9) #6
  %SupportedRates50 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 38, i32 9
  %call52 = tail call i32 @update_supported_rate(ptr noundef %SupportedRates50, i32 noundef %call40) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb21, %cond.end
  %raid.0 = phi i8 [ %call49, %sw.default ], [ %call32, %sw.bb21 ], [ %call9, %cond.end ]
  %mask.0 = phi i32 [ %call52, %sw.default ], [ %call35, %sw.bb21 ], [ %or, %cond.end ]
  %tobool76.not = phi i32 [ 128, %sw.default ], [ 128, %sw.bb21 ], [ %phi.sel, %cond.end ]
  %shortGIrate.0 = phi i8 [ 0, %sw.default ], [ 0, %sw.bb21 ], [ %spec.select176, %cond.end ]
  %networkType.1 = phi i8 [ %9, %sw.default ], [ %., %sw.bb21 ], [ %3, %cond.end ]
  %odmpriv = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38
  %call53 = tail call i32 @ODM_Get_Rate_Bitmap(ptr noundef %odmpriv, i32 noundef %mac_id, i32 noundef %mask.0, i8 noundef zeroext %rssi_level) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %10 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp54 = icmp ugt i32 %10, 4
  br i1 %cmp54, label %do.end, label %sw.epilog.do.end63_crit_edge

sw.epilog.do.end63_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %conv58 = zext i8 %networkType.1 to i32
  %conv59 = zext i8 %rssi_level to i32
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %mac_id, i32 noundef %conv58, i32 noundef %mask.0, i32 noundef %conv59, i32 noundef %call53) #9
  br label %do.end63

do.end63:                                         ; preds = %do.end, %sw.epilog.do.end63_crit_edge
  %and64 = and i32 %call53, %mask.0
  %call65 = tail call zeroext i8 @get_highest_rate_idx(i32 noundef %and64) #6
  %11 = and i8 %call65, 63
  %fw_ractrl = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 33
  %12 = ptrtoint ptr %fw_ractrl to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fw_ractrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool69.not = icmp eq i8 %13, 0
  br i1 %tobool69.not, label %if.else103, label %if.then70

if.then70:                                        ; preds = %do.end63
  %conv82 = zext i8 %raid.0 to i32
  %shl = shl i32 %conv82, 28
  %or84 = or i32 %and64, %shl
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %14 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp86 = icmp ugt i32 %14, 4
  br i1 %cmp86, label %do.end91, label %if.then70.do.end97_crit_edge

if.then70.do.end97_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end97

do.end91:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  %conv93 = or i32 %tobool76.not, %mac_id
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %or84, i32 noundef %conv93) #9
  br label %do.end97

do.end97:                                         ; preds = %do.end91, %if.then70.do.end97_crit_edge
  %ra_mask = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 27
  %15 = ptrtoint ptr %ra_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or84, ptr %ra_mask, align 8
  %call102 = tail call zeroext i8 @rtl8188e_set_raid_cmd(ptr noundef %adapt, i32 noundef %or84) #6
  br label %if.end106

if.else103:                                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #8
  %conv105 = trunc i32 %mac_id to i8
  tail call void @ODM_RA_UpdateRateInfo_8188E(ptr noundef %odmpriv, i8 noundef zeroext %conv105, i8 noundef zeroext %raid.0, i32 noundef %and64, i8 noundef zeroext %shortGIrate.0) #6
  br label %if.end106

if.end106:                                        ; preds = %if.else103, %do.end97
  %raid107 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 25
  %16 = ptrtoint ptr %raid107 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %raid.0, ptr %raid107, align 2
  %init_rate108 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 26
  %17 = ptrtoint ptr %init_rate108 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %11, ptr %init_rate108, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end106, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_rateset_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @judge_network_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @networktype_to_raid(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_supported_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_MSC_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @support_short_GI(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_basic_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ODM_Get_Rate_Bitmap(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @get_highest_rate_idx(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl8188e_set_raid_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_RA_UpdateRateInfo_8188E(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @SetBeaconRelatedRegisters8188EUsb(ptr noundef %adapt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bcn_interval = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 5, i32 17, i32 12
  %0 = ptrtoint ptr %bcn_interval to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bcn_interval, align 2
  %call = tail call i32 @rtw_write16(ptr noundef %adapt, i32 noundef 1364, i16 noundef zeroext %1) #6
  %call1 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1370, i8 noundef zeroext 2) #6
  %call.i = tail call i32 @rtw_write16(ptr noundef %adapt, i32 noundef 1360, i16 noundef zeroext 4112) #6
  %call2.i = tail call i32 @rtw_write16(ptr noundef %adapt, i32 noundef 1344, i16 noundef zeroext 25604) #6
  %call3.i = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1368, i8 noundef zeroext 5) #6
  %call4.i = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1369, i8 noundef zeroext 2) #6
  %call5.i = tail call i32 @rtw_write16(ptr noundef %adapt, i32 noundef 1296, i16 noundef zeroext 26127) #6
  %call6.i = tail call zeroext i8 @rtw_read8(ptr noundef %adapt, i32 noundef 1058) #6
  %RegFwHwTxQCtrl.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 34
  %2 = ptrtoint ptr %RegFwHwTxQCtrl.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %call6.i, ptr %RegFwHwTxQCtrl.i, align 2
  %call7.i = tail call zeroext i8 @rtw_read8(ptr noundef %adapt, i32 noundef 1346) #6
  %RegReg542.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 35
  %3 = ptrtoint ptr %RegReg542.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %call7.i, ptr %RegReg542.i, align 1
  %call8.i = tail call zeroext i8 @rtw_read8(ptr noundef %adapt, i32 noundef 257) #6
  %RegCR_1.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 36
  %4 = ptrtoint ptr %RegCR_1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call8.i, ptr %RegCR_1.i, align 8
  %call2 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1307, i8 noundef zeroext 9) #6
  %call3 = tail call i32 @rtw_read32(ptr noundef %adapt, i32 noundef 1540) #6
  %and = and i32 %call3, -2
  %call4 = tail call i32 @rtw_write32(ptr noundef %adapt, i32 noundef 1540, i32 noundef %and) #6
  %or = or i32 %call3, 1
  %call5 = tail call i32 @rtw_write32(ptr noundef %adapt, i32 noundef 1540, i32 noundef %or) #6
  %call6 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1374, i8 noundef zeroext 80) #6
  %call7 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1375, i8 noundef zeroext 80) #6
  %call.i29 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1360, i8 noundef zeroext 26) #6
  %call2.i30 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1317, i8 noundef zeroext 111) #6
  %5 = ptrtoint ptr %RegFwHwTxQCtrl.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %RegFwHwTxQCtrl.i, align 2
  %7 = or i8 %6, 64
  %call.i32 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1058, i8 noundef zeroext %7) #6
  %8 = ptrtoint ptr %RegFwHwTxQCtrl.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %RegFwHwTxQCtrl.i, align 2
  %10 = or i8 %9, 64
  store i8 %10, ptr %RegFwHwTxQCtrl.i, align 2
  %call7.i33 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1345, i8 noundef zeroext -1) #6
  %11 = ptrtoint ptr %RegReg542.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %RegReg542.i, align 1
  %13 = or i8 %12, 1
  store i8 %13, ptr %RegReg542.i, align 1
  %call12.i = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1346, i8 noundef zeroext %13) #6
  %call8 = tail call zeroext i8 @rtw_read8(ptr noundef %adapt, i32 noundef 1360) #6
  %14 = or i8 %call8, 2
  %call11 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1360, i8 noundef zeroext %14) #6
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188eu_init_default_value(ptr nocapture noundef %adapt) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_ractrl = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 33
  %0 = ptrtoint ptr %fw_ractrl to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %fw_ractrl, align 1
  %bkeepfwalive = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 14, i32 34
  %1 = ptrtoint ptr %bkeepfwalive to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bkeepfwalive, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %LastHMEBoxNum = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 32
  %3 = ptrtoint ptr %LastHMEBoxNum to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %LastHMEBoxNum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bIQKInitialized = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 44
  %4 = ptrtoint ptr %bIQKInitialized to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bIQKInitialized, align 4
  %TM_Trigger = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 9
  %5 = ptrtoint ptr %TM_Trigger to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %TM_Trigger, align 4
  %pwrGroupCnt = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 25
  %6 = ptrtoint ptr %pwrGroupCnt to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %pwrGroupCnt, align 2
  %PGMaxGroup = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 5
  %7 = ptrtoint ptr %PGMaxGroup to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 13, ptr %PGMaxGroup, align 8
  %ThermalValue_HP_index = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 32
  %8 = ptrtoint ptr %ThermalValue_HP_index to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ThermalValue_HP_index, align 1
  %uglygep = getelementptr i8, ptr %adapt, i32 22361
  %9 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %uglygep, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @Hal_MappingOutPipe(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_PHY_SetBBReg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8188e_PHY_QueryBBReg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !121, !123, !124, !125}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 81, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl8188eu_InitPowerOn._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl8188eu_InitPowerOn._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 631, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rtl8188eu_hal_init._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @rtl8188eu_hal_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 644, i32 3}
!13 = !{ptr @rtl8188eu_hal_init._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @rtl8188eu_hal_init._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 655, i32 3}
!17 = !{ptr @rtl8188eu_hal_init._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @rtl8188eu_hal_init._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 663, i32 3}
!21 = !{ptr @rtl8188eu_hal_init._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @rtl8188eu_hal_init._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 670, i32 3}
!25 = !{ptr @rtl8188eu_hal_init._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @rtl8188eu_hal_init._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 793, i32 2}
!29 = !{ptr @rtl8188eu_hal_init._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rtl8188eu_hal_init._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 857, i32 2}
!33 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @rtl8188eu_hal_deinit._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @rtl8188eu_hal_deinit._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 862, i32 2}
!38 = !{ptr @rtl8188eu_hal_deinit._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rtl8188eu_hal_deinit._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 931, i32 2}
!42 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ReadAdapterInfo8188EU._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ReadAdapterInfo8188EU._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.28, !41, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.29, !41, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.30, !41, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 1116, i32 4}
!51 = !{ptr @.str.32, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @SetHwReg8188EU._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @SetHwReg8188EU._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.34, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 1413, i32 4}
!56 = !{ptr @SetHwReg8188EU._entry.33, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @SetHwReg8188EU._entry_ptr.35, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.37, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 1556, i32 6}
!60 = !{ptr @SetHwReg8188EU._entry.36, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @SetHwReg8188EU._entry_ptr.38, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.40, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 1567, i32 3}
!64 = !{ptr @SetHwReg8188EU._entry.39, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @SetHwReg8188EU._entry_ptr.41, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.43, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 1572, i32 4}
!68 = !{ptr @SetHwReg8188EU._entry.42, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @SetHwReg8188EU._entry_ptr.44, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.45, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 1704, i32 5}
!72 = !{ptr @.str.46, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @GetHalDefVar8188EUsb._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @GetHalDefVar8188EUsb._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.48, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 1705, i32 5}
!77 = !{ptr @GetHalDefVar8188EUsb._entry.47, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @GetHalDefVar8188EUsb._entry_ptr.49, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.50, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 1743, i32 5}
!81 = !{ptr @.str.51, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @SetHalDefVar8188EUsb._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @SetHalDefVar8188EUsb._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.53, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 1746, i32 5}
!86 = !{ptr @SetHalDefVar8188EUsb._entry.52, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @SetHalDefVar8188EUsb._entry_ptr.54, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.56, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 1751, i32 5}
!90 = !{ptr @SetHalDefVar8188EUsb._entry.55, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @SetHalDefVar8188EUsb._entry_ptr.57, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.59, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 1760, i32 5}
!94 = !{ptr @SetHalDefVar8188EUsb._entry.58, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @SetHalDefVar8188EUsb._entry_ptr.60, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.61, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 1827, i32 2}
!98 = !{ptr @.str.62, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @UpdateHalRAMask8188EUsb._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @UpdateHalRAMask8188EUsb._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.64, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 1842, i32 3}
!103 = !{ptr @UpdateHalRAMask8188EUsb._entry.63, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @UpdateHalRAMask8188EUsb._entry_ptr.65, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.66, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 40, i32 2}
!107 = !{ptr @.str.67, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @_ConfigNormalChipOutEP_8188E._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @_ConfigNormalChipOutEP_8188E._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.68, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 562, i32 2}
!112 = !{ptr @.str.69, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @_InitAntenna_Selection._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @_InitAntenna_Selection._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.71, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 571, i32 2}
!117 = !{ptr @_InitAntenna_Selection._entry.70, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @_InitAntenna_Selection._entry_ptr.72, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.73, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.74, !116, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.75, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/staging/r8188eu/hal/usb_halinit.c", i32 994, i32 2}
!123 = !{ptr @.str.76, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @hw_var_set_opmode._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @hw_var_set_opmode._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{i8 0, i8 2}
!136 = !{!"branch_weights", i32 2000, i32 1}
!137 = !{i64 2148867406, i64 2148867686, i64 2148868020, i64 2148868354}
