; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/rtl8188e_hal_init.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.dvobj_priv = type { ptr, i8, i8, i32, [3 x i32], [8 x i8], i8, %struct.rt_firmware, i8, i8, i32, %struct.semaphore, %struct.mutex, ptr, ptr, %struct.atomic_t, i8 }
%struct.rt_firmware = type { ptr, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.rt_firmware_hdr = type { i16, i8, i8, i16, i8, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [6 x i8], i8, i16, [8 x i8], i8, [32 x i8], i16, [32 x i8], i8, i8, %struct.rssi_sta, i8, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.txpowerinfo24g = type { [3 x [6 x i8]], [3 x [6 x i8]], [3 x [4 x i8]], [3 x [4 x i8]], [3 x [4 x i8]], [3 x [4 x i8]] }

@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@rtl8188e_iol_efuse_patch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016R8188EU: ==> %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtl8188e_iol_efuse_patch\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/staging/r8188eu/hal/rtl8188e_hal_init.c\00", [48 x i8] zeroinitializer }, align 32
@rtl8188e_iol_efuse_patch._entry_ptr = internal global ptr @rtl8188e_iol_efuse_patch._entry, section ".printk_index", align 4
@_8051Reset88E._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016R8188EU: =====> _8051Reset88E(): 8051 reset success .\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"_8051Reset88E\00", [18 x i8] zeroinitializer }, align 32
@_8051Reset88E._entry_ptr = internal global ptr @_8051Reset88E._entry, section ".printk_index", align 4
@rtl8188e_FirmwareDownload.log_version = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rtl8188e_FirmwareDownload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%sFirmware Version %d, SubVersion %d, Signature 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtl8188e_FirmwareDownload\00", [38 x i8] zeroinitializer }, align 32
@rtl8188e_FirmwareDownload._entry_ptr = internal global ptr @rtl8188e_FirmwareDownload._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"R8188EU: \00", [22 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rtl8188e_FirmwareDownload._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016R8188EU: %s writeFW_retry:%u, time after fwdl_start_time:%ums\0A\00", [63 x i8] zeroinitializer }, align 32
@rtl8188e_FirmwareDownload._entry_ptr.10 = internal global ptr @rtl8188e_FirmwareDownload._entry.8, section ".printk_index", align 4
@rtl8188e_FirmwareDownload._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016R8188EU: DL Firmware failed!\0A\00", [32 x i8] zeroinitializer }, align 32
@rtl8188e_FirmwareDownload._entry_ptr.13 = internal global ptr @rtl8188e_FirmwareDownload._entry.11, section ".printk_index", align 4
@rtl8188e_FirmwareDownload._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.2, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl8188e_FirmwareDownload._entry_ptr.15 = internal global ptr @rtl8188e_FirmwareDownload._entry.14, section ".printk_index", align 4
@rtl8188e_SetHalODMVar._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016R8188EU: ### Set STA_(%d) info\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl8188e_SetHalODMVar\00", [42 x i8] zeroinitializer }, align 32
@rtl8188e_SetHalODMVar._entry_ptr = internal global ptr @rtl8188e_SetHalODMVar._entry, section ".printk_index", align 4
@rtl8188e_SetHalODMVar._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016R8188EU: ### Clean STA_(%d) info\0A\00", [60 x i8] zeroinitializer }, align 32
@rtl8188e_SetHalODMVar._entry_ptr.20 = internal global ptr @rtl8188e_SetHalODMVar._entry.18, section ".printk_index", align 4
@hal_notch_filter_8188e._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016R8188EU: Enable notch filter\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hal_notch_filter_8188e\00", [41 x i8] zeroinitializer }, align 32
@hal_notch_filter_8188e._entry_ptr = internal global ptr @hal_notch_filter_8188e._entry, section ".printk_index", align 4
@hal_notch_filter_8188e._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016R8188EU: Disable notch filter\0A\00", [63 x i8] zeroinitializer }, align 32
@hal_notch_filter_8188e._entry_ptr.25 = internal global ptr @hal_notch_filter_8188e._entry.23, section ".printk_index", align 4
@GetEEPROMSize8188E.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8188eu\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GetEEPROMSize8188E\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EEPROM type is %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"E-FUSE\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"93C46\00", [26 x i8] zeroinitializer }, align 32
@Hal_EfuseParseIDCode88E._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013EEPROM ID(%#x) is invalid!!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hal_EfuseParseIDCode88E\00", [40 x i8] zeroinitializer }, align 32
@Hal_EfuseParseIDCode88E._entry_ptr = internal global ptr @Hal_EfuseParseIDCode88E._entry, section ".printk_index", align 4
@Hal_EfuseParseIDCode88E._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016EEPROM ID = 0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@Hal_EfuseParseIDCode88E._entry_ptr.35 = internal global ptr @Hal_EfuseParseIDCode88E._entry.33, section ".printk_index", align 4
@Hal_ReadPowerSavingMode88E._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 1106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016R8188EU: %s , bSupportRemoteWakeup(%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hal_ReadPowerSavingMode88E\00", [37 x i8] zeroinitializer }, align 32
@Hal_ReadPowerSavingMode88E._entry_ptr = internal global ptr @Hal_ReadPowerSavingMode88E._entry, section ".printk_index", align 4
@Hal_ReadPowerSavingMode88E._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 1108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016R8188EU: ### PS params =>  power_mgnt(%x), usbss_enable(%x) ###\0A\00", [61 x i8] zeroinitializer }, align 32
@Hal_ReadPowerSavingMode88E._entry_ptr.40 = internal global ptr @Hal_ReadPowerSavingMode88E._entry.38, section ".printk_index", align 4
@Hal_ReadTxPowerInfo88E._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016R8188EU: ======= Path 0, Channel %d =======\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Hal_ReadTxPowerInfo88E\00", [41 x i8] zeroinitializer }, align 32
@Hal_ReadTxPowerInfo88E._entry_ptr = internal global ptr @Hal_ReadTxPowerInfo88E._entry, section ".printk_index", align 4
@Hal_ReadTxPowerInfo88E._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 1131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016R8188EU: Index24G_CCK_Base[%d] = 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@Hal_ReadTxPowerInfo88E._entry_ptr.45 = internal global ptr @Hal_ReadTxPowerInfo88E._entry.43, section ".printk_index", align 4
@Hal_ReadTxPowerInfo88E._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 1132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016R8188EU: Index24G_BW40_Base[%d] = 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@Hal_ReadTxPowerInfo88E._entry_ptr.48 = internal global ptr @Hal_ReadTxPowerInfo88E._entry.46, section ".printk_index", align 4
@Hal_ReadTxPowerInfo88E._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.2, i32 1137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016R8188EU: ======= TxCount %d =======\0A\00", [57 x i8] zeroinitializer }, align 32
@Hal_ReadTxPowerInfo88E._entry_ptr.51 = internal global ptr @Hal_ReadTxPowerInfo88E._entry.49, section ".printk_index", align 4
@Hal_ReadTxPowerInfo88E._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.42, ptr @.str.2, i32 1138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016R8188EU: OFDM_24G_Diff[%d] = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@Hal_ReadTxPowerInfo88E._entry_ptr.54 = internal global ptr @Hal_ReadTxPowerInfo88E._entry.52, section ".printk_index", align 4
@Hal_ReadTxPowerInfo88E._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.42, ptr @.str.2, i32 1139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016R8188EU: BW20_24G_Diff[%d] = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@Hal_ReadTxPowerInfo88E._entry_ptr.57 = internal global ptr @Hal_ReadTxPowerInfo88E._entry.55, section ".printk_index", align 4
@Hal_ReadTxPowerInfo88E._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.42, ptr @.str.2, i32 1150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016R8188EU: EEPROMRegulatory = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@Hal_ReadTxPowerInfo88E._entry_ptr.60 = internal global ptr @Hal_ReadTxPowerInfo88E._entry.58, section ".printk_index", align 4
@Hal_EfuseParseXtal_8188E._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016R8188EU: CrystalCap: 0x%2x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Hal_EfuseParseXtal_8188E\00", [39 x i8] zeroinitializer }, align 32
@Hal_EfuseParseXtal_8188E._entry_ptr = internal global ptr @Hal_EfuseParseXtal_8188E._entry, section ".printk_index", align 4
@rtl8188e_EfuseParseChnlPlan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016R8188EU: mlmepriv.ChannelPlan = 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtl8188e_EfuseParseChnlPlan\00", [36 x i8] zeroinitializer }, align 32
@rtl8188e_EfuseParseChnlPlan._entry_ptr = internal global ptr @rtl8188e_EfuseParseChnlPlan._entry, section ".printk_index", align 4
@Hal_ReadAntennaDiversity88E._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 1207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016R8188EU: EEPROM : AntDivCfg = %x, TRxAntDivType = %x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Hal_ReadAntennaDiversity88E\00", [36 x i8] zeroinitializer }, align 32
@Hal_ReadAntennaDiversity88E._entry_ptr = internal global ptr @Hal_ReadAntennaDiversity88E._entry, section ".printk_index", align 4
@Hal_ReadThermalMeter_88E._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 1223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016R8188EU: ThermalMeter = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Hal_ReadThermalMeter_88E\00", [39 x i8] zeroinitializer }, align 32
@Hal_ReadThermalMeter_88E._entry_ptr = internal global ptr @Hal_ReadThermalMeter_88E._entry, section ".printk_index", align 4
@iol_mode_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 23, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016R8188EU: bFWReady == false call reset 8051...\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iol_mode_enable\00", [16 x i8] zeroinitializer }, align 32
@iol_mode_enable._entry_ptr = internal global ptr @iol_mode_enable._entry, section ".printk_index", align 4
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtlwifi/rtl8188eufw.bin\00", [40 x i8] zeroinitializer }, align 32
@load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Request firmware failed with error 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"load_firmware\00", [18 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr = internal global ptr @load_firmware._entry, section ".printk_index", align 4
@load_firmware._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Firmware %s not available\0A\00", [35 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.76 = internal global ptr @load_firmware._entry.74, section ".printk_index", align 4
@load_firmware._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.73, ptr @.str.2, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Failed to allocate pFirmware->szFwBuffer\0A\00", [52 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.79 = internal global ptr @load_firmware._entry.77, section ".printk_index", align 4
@load_firmware.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.73, ptr @.str.2, ptr @.str.80, i8 0, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"!bUsedWoWLANFw, FmrmwareLen:%d+\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_FWFreeToGo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016R8188EU: %s: chksum report fail! REG_MCUFWDL:0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"_FWFreeToGo\00", [20 x i8] zeroinitializer }, align 32
@_FWFreeToGo._entry_ptr = internal global ptr @_FWFreeToGo._entry, section ".printk_index", align 4
@_FWFreeToGo._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.2, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016R8188EU: %s: Checksum report OK! REG_MCUFWDL:0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@_FWFreeToGo._entry_ptr.85 = internal global ptr @_FWFreeToGo._entry.83, section ".printk_index", align 4
@_FWFreeToGo._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.2, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016R8188EU: %s: Polling FW ready success!! REG_MCUFWDL:0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@_FWFreeToGo._entry_ptr.88 = internal global ptr @_FWFreeToGo._entry.86, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@_FWFreeToGo._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.82, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016R8188EU: %s: Polling FW ready fail!! REG_MCUFWDL:0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@_FWFreeToGo._entry_ptr.91 = internal global ptr @_FWFreeToGo._entry.89, section ".printk_index", align 4
@efuse_read_phymap_from_txpktbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016R8188EU: %s bcnhead:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"efuse_read_phymap_from_txpktbuf\00", [32 x i8] zeroinitializer }, align 32
@efuse_read_phymap_from_txpktbuf._entry_ptr = internal global ptr @efuse_read_phymap_from_txpktbuf._entry, section ".printk_index", align 4
@efuse_read_phymap_from_txpktbuf._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016R8188EU: %s polling reg_0x143:0x%02x, reg_0x106:0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@efuse_read_phymap_from_txpktbuf._entry_ptr.96 = internal global ptr @efuse_read_phymap_from_txpktbuf._entry.94, section ".printk_index", align 4
@efuse_read_phymap_from_txpktbuf._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016R8188EU: %s len:%u, lenc:%u\0A\00", [33 x i8] zeroinitializer }, align 32
@efuse_read_phymap_from_txpktbuf._entry_ptr.99 = internal global ptr @efuse_read_phymap_from_txpktbuf._entry.97, section ".printk_index", align 4
@efuse_read_phymap_from_txpktbuf._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.93, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016R8188EU: %s read count:%u\0A\00", [35 x i8] zeroinitializer }, align 32
@efuse_read_phymap_from_txpktbuf._entry_ptr.102 = internal global ptr @efuse_read_phymap_from_txpktbuf._entry.100, section ".printk_index", align 4
@efuse_phymap_to_logical._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016R8188EU: %s: alloc efuseTbl fail!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"efuse_phymap_to_logical\00", [40 x i8] zeroinitializer }, align 32
@efuse_phymap_to_logical._entry_ptr = internal global ptr @efuse_phymap_to_logical._entry, section ".printk_index", align 4
@efuse_phymap_to_logical._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016R8188EU: %s: alloc eFuseWord fail!\0A\00", [58 x i8] zeroinitializer }, align 32
@efuse_phymap_to_logical._entry_ptr.107 = internal global ptr @efuse_phymap_to_logical._entry.105, section ".printk_index", align 4
@efuse_phymap_to_logical._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.104, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016R8188EU: EFUSE is empty efuse_Addr-%d efuse_data =%x\0A\00", [40 x i8] zeroinitializer }, align 32
@efuse_phymap_to_logical._entry_ptr.110 = internal global ptr @efuse_phymap_to_logical._entry.108, section ".printk_index", align 4
@Hal_EfuseReadEFuse88E._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016R8188EU: Hal_EfuseReadEFuse88E(): Invalid offset(%#x) with read bytes(%#x)!!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Hal_EfuseReadEFuse88E\00", [42 x i8] zeroinitializer }, align 32
@Hal_EfuseReadEFuse88E._entry_ptr = internal global ptr @Hal_EfuseReadEFuse88E._entry, section ".printk_index", align 4
@Hal_EfuseReadEFuse88E._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.112, ptr @.str.2, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@Hal_EfuseReadEFuse88E._entry_ptr.114 = internal global ptr @Hal_EfuseReadEFuse88E._entry.113, section ".printk_index", align 4
@Hal_EfuseReadEFuse88E._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.112, ptr @.str.2, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@Hal_EfuseReadEFuse88E._entry_ptr.116 = internal global ptr @Hal_EfuseReadEFuse88E._entry.115, section ".printk_index", align 4
@Hal_EfuseReadEFuse88E._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.112, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@Hal_EfuseReadEFuse88E._entry_ptr.118 = internal global ptr @Hal_EfuseReadEFuse88E._entry.117, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 35, i64 49288, i64 49298, i64 57480]
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 288, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 468, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [12 x i8] c"log_version\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 559, i32 13 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 578, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 607, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 613, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 619, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 855, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 859, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 867, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 870, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 884, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 970, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 976, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1105, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1108, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1130, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1131, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1132, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1137, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1138, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1139, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1150, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1164, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1175, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1207, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 1223, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 23, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 515, i32 24 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 519, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 524, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 535, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 542, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 484, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 487, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 501, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 507, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 210, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 223, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 242, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 264, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 81, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 87, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 105, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 695, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 701, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 707, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.453 = private constant [51 x i8] c"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 725, i32 3 }
@llvm.compiler.used = appending global [156 x ptr] [ptr @Hal_EfuseParseIDCode88E._entry, ptr @Hal_EfuseParseIDCode88E._entry.33, ptr @Hal_EfuseParseIDCode88E._entry_ptr, ptr @Hal_EfuseParseIDCode88E._entry_ptr.35, ptr @Hal_EfuseParseXtal_8188E._entry, ptr @Hal_EfuseParseXtal_8188E._entry_ptr, ptr @Hal_EfuseReadEFuse88E._entry, ptr @Hal_EfuseReadEFuse88E._entry.113, ptr @Hal_EfuseReadEFuse88E._entry.115, ptr @Hal_EfuseReadEFuse88E._entry.117, ptr @Hal_EfuseReadEFuse88E._entry_ptr, ptr @Hal_EfuseReadEFuse88E._entry_ptr.114, ptr @Hal_EfuseReadEFuse88E._entry_ptr.116, ptr @Hal_EfuseReadEFuse88E._entry_ptr.118, ptr @Hal_ReadAntennaDiversity88E._entry, ptr @Hal_ReadAntennaDiversity88E._entry_ptr, ptr @Hal_ReadPowerSavingMode88E._entry, ptr @Hal_ReadPowerSavingMode88E._entry.38, ptr @Hal_ReadPowerSavingMode88E._entry_ptr, ptr @Hal_ReadPowerSavingMode88E._entry_ptr.40, ptr @Hal_ReadThermalMeter_88E._entry, ptr @Hal_ReadThermalMeter_88E._entry_ptr, ptr @Hal_ReadTxPowerInfo88E._entry, ptr @Hal_ReadTxPowerInfo88E._entry.43, ptr @Hal_ReadTxPowerInfo88E._entry.46, ptr @Hal_ReadTxPowerInfo88E._entry.49, ptr @Hal_ReadTxPowerInfo88E._entry.52, ptr @Hal_ReadTxPowerInfo88E._entry.55, ptr @Hal_ReadTxPowerInfo88E._entry.58, ptr @Hal_ReadTxPowerInfo88E._entry_ptr, ptr @Hal_ReadTxPowerInfo88E._entry_ptr.45, ptr @Hal_ReadTxPowerInfo88E._entry_ptr.48, ptr @Hal_ReadTxPowerInfo88E._entry_ptr.51, ptr @Hal_ReadTxPowerInfo88E._entry_ptr.54, ptr @Hal_ReadTxPowerInfo88E._entry_ptr.57, ptr @Hal_ReadTxPowerInfo88E._entry_ptr.60, ptr @_8051Reset88E._entry, ptr @_8051Reset88E._entry_ptr, ptr @_FWFreeToGo._entry, ptr @_FWFreeToGo._entry.83, ptr @_FWFreeToGo._entry.86, ptr @_FWFreeToGo._entry.89, ptr @_FWFreeToGo._entry_ptr, ptr @_FWFreeToGo._entry_ptr.85, ptr @_FWFreeToGo._entry_ptr.88, ptr @_FWFreeToGo._entry_ptr.91, ptr @efuse_phymap_to_logical._entry, ptr @efuse_phymap_to_logical._entry.105, ptr @efuse_phymap_to_logical._entry.108, ptr @efuse_phymap_to_logical._entry_ptr, ptr @efuse_phymap_to_logical._entry_ptr.107, ptr @efuse_phymap_to_logical._entry_ptr.110, ptr @efuse_read_phymap_from_txpktbuf._entry, ptr @efuse_read_phymap_from_txpktbuf._entry.100, ptr @efuse_read_phymap_from_txpktbuf._entry.94, ptr @efuse_read_phymap_from_txpktbuf._entry.97, ptr @efuse_read_phymap_from_txpktbuf._entry_ptr, ptr @efuse_read_phymap_from_txpktbuf._entry_ptr.102, ptr @efuse_read_phymap_from_txpktbuf._entry_ptr.96, ptr @efuse_read_phymap_from_txpktbuf._entry_ptr.99, ptr @hal_notch_filter_8188e._entry, ptr @hal_notch_filter_8188e._entry.23, ptr @hal_notch_filter_8188e._entry_ptr, ptr @hal_notch_filter_8188e._entry_ptr.25, ptr @iol_mode_enable._entry, ptr @iol_mode_enable._entry_ptr, ptr @load_firmware._entry, ptr @load_firmware._entry.74, ptr @load_firmware._entry.77, ptr @load_firmware._entry_ptr, ptr @load_firmware._entry_ptr.76, ptr @load_firmware._entry_ptr.79, ptr @rtl8188e_EfuseParseChnlPlan._entry, ptr @rtl8188e_EfuseParseChnlPlan._entry_ptr, ptr @rtl8188e_FirmwareDownload._entry, ptr @rtl8188e_FirmwareDownload._entry.11, ptr @rtl8188e_FirmwareDownload._entry.14, ptr @rtl8188e_FirmwareDownload._entry.8, ptr @rtl8188e_FirmwareDownload._entry_ptr, ptr @rtl8188e_FirmwareDownload._entry_ptr.10, ptr @rtl8188e_FirmwareDownload._entry_ptr.13, ptr @rtl8188e_FirmwareDownload._entry_ptr.15, ptr @rtl8188e_SetHalODMVar._entry, ptr @rtl8188e_SetHalODMVar._entry.18, ptr @rtl8188e_SetHalODMVar._entry_ptr, ptr @rtl8188e_SetHalODMVar._entry_ptr.20, ptr @rtl8188e_iol_efuse_patch._entry, ptr @rtl8188e_iol_efuse_patch._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rtl8188e_FirmwareDownload.log_version, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.109, ptr @.str.111, ptr @.str.112], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_iol_efuse_patch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_8051Reset88E._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_FirmwareDownload.log_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_FirmwareDownload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_FirmwareDownload._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_FirmwareDownload._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_FirmwareDownload._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_SetHalODMVar._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_SetHalODMVar._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hal_notch_filter_8188e._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hal_notch_filter_8188e._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Hal_EfuseParseIDCode88E._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Hal_EfuseParseIDCode88E._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Hal_ReadPowerSavingMode88E._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Hal_ReadPowerSavingMode88E._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Hal_ReadTxPowerInfo88E._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Hal_ReadTxPowerInfo88E._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Hal_ReadTxPowerInfo88E._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Hal_ReadTxPowerInfo88E._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Hal_ReadTxPowerInfo88E._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Hal_ReadTxPowerInfo88E._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Hal_ReadTxPowerInfo88E._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Hal_EfuseParseXtal_8188E._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_EfuseParseChnlPlan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Hal_ReadAntennaDiversity88E._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Hal_ReadThermalMeter_88E._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iol_mode_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_FWFreeToGo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_FWFreeToGo._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_FWFreeToGo._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_FWFreeToGo._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efuse_read_phymap_from_txpktbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efuse_read_phymap_from_txpktbuf._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efuse_read_phymap_from_txpktbuf._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efuse_read_phymap_from_txpktbuf._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efuse_phymap_to_logical._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efuse_phymap_to_logical._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efuse_phymap_to_logical._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Hal_EfuseReadEFuse88E._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Hal_EfuseReadEFuse88E._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Hal_EfuseReadEFuse88E._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Hal_EfuseReadEFuse88E._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8188e_iol_efuse_patch(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %0 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp ugt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call zeroext i1 @rtw_IOL_applied(ptr noundef %padapter) #8
  br i1 %call4, label %if.then5, label %do.end3.if.end11_crit_edge

do.end3.if.end11_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then5:                                         ; preds = %do.end3
  tail call fastcc void @iol_mode_enable(ptr noundef %padapter, i8 noundef zeroext 1)
  %call.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 136) #8
  %or30.i = or i8 %call.i, 2
  %call5.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 136, i8 noundef zeroext %or30.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.then5
  %call6.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 136) #8
  %and931.i = and i8 %call6.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and931.i)
  %tobool.not.i = icmp eq i8 %and931.i, 0
  br i1 %tobool.not.i, label %while.cond.i.iol_execute.exit_crit_edge, label %land.rhs.i

while.cond.i.iol_execute.exit_crit_edge:          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iol_execute.exit

land.rhs.i:                                       ; preds = %while.cond.i
  %call10.i = tail call i32 @rtw_get_passing_time_ms(i32 noundef %1) #8
  %cmp.i = icmp ult i32 %call10.i, 1000
  br i1 %cmp.i, label %land.rhs.i.while.cond.i_crit_edge, label %land.rhs.i.iol_execute.exit_crit_edge

land.rhs.i.iol_execute.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iol_execute.exit

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

iol_execute.exit:                                 ; preds = %land.rhs.i.iol_execute.exit_crit_edge, %while.cond.i.iol_execute.exit_crit_edge
  %call12.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 136) #8
  %2 = and i8 %call12.i, 34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %if.then8, label %iol_execute.exit.if.end10_crit_edge

iol_execute.exit.if.end10_crit_edge:              ; preds = %iol_execute.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %iol_execute.exit
  %call.i17 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 136) #8
  %or30.i18 = or i8 %call.i17, 4
  %call5.i19 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 136, i8 noundef zeroext %or30.i18) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  br label %while.cond.i23

while.cond.i23:                                   ; preds = %land.rhs.i26.while.cond.i23_crit_edge, %if.then8
  %call6.i20 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 136) #8
  %and931.i21 = and i8 %call6.i20, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and931.i21)
  %tobool.not.i22 = icmp eq i8 %and931.i21, 0
  br i1 %tobool.not.i22, label %while.cond.i23.iol_execute.exit29_crit_edge, label %land.rhs.i26

while.cond.i23.iol_execute.exit29_crit_edge:      ; preds = %while.cond.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %iol_execute.exit29

land.rhs.i26:                                     ; preds = %while.cond.i23
  %call10.i24 = tail call i32 @rtw_get_passing_time_ms(i32 noundef %4) #8
  %cmp.i25 = icmp ult i32 %call10.i24, 1000
  br i1 %cmp.i25, label %land.rhs.i26.while.cond.i23_crit_edge, label %land.rhs.i26.iol_execute.exit29_crit_edge

land.rhs.i26.iol_execute.exit29_crit_edge:        ; preds = %land.rhs.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %iol_execute.exit29

land.rhs.i26.while.cond.i23_crit_edge:            ; preds = %land.rhs.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i23

iol_execute.exit29:                               ; preds = %land.rhs.i26.iol_execute.exit29_crit_edge, %while.cond.i23.iol_execute.exit29_crit_edge
  %call12.i27 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 136) #8
  %5 = and i8 %call12.i27, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %6 = icmp eq i8 %5, 0
  %spec.store.select.i28 = zext i1 %6 to i32
  br label %if.end10

if.end10:                                         ; preds = %iol_execute.exit29, %iol_execute.exit.if.end10_crit_edge
  %result.0 = phi i32 [ %spec.store.select.i28, %iol_execute.exit29 ], [ 0, %iol_execute.exit.if.end10_crit_edge ]
  %call12.i30 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 240) #8
  %7 = and i8 %call12.i30, 127
  %call15.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 240, i8 noundef zeroext %7) #8
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %do.end3.if.end11_crit_edge
  %result.1 = phi i32 [ %result.0, %if.end10 ], [ 1, %do.end3.if.end11_crit_edge ]
  ret i32 %result.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_IOL_applied(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iol_mode_enable(ptr noundef %padapter, i8 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %call12 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 240) #8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = or i8 %call12, -128
  %call2 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 240, i8 noundef zeroext %0) #8
  %bFWReady = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 44
  %1 = ptrtoint ptr %bFWReady to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bFWReady, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool3.not = icmp eq i8 %2, 0
  br i1 %tobool3.not, label %do.body, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %3 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %do.body.do.end10_crit_edge

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #11
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  %call.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 3) #8
  %and.i = and i8 %call.i, -5
  %call2.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 3, i8 noundef zeroext %and.i) #8
  %4 = or i8 %call.i, 4
  %call5.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 3, i8 noundef zeroext %4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %5 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.i = icmp ugt i32 %5, 4
  br i1 %cmp.i, label %do.end.i, label %do.end10.if.end16_crit_edge

do.end10.if.end16_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end.i:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = and i8 %call12, 127
  %call15 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 240, i8 noundef zeroext %6) #8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %do.end.i, %do.end10.if.end16_crit_edge, %if.then.if.end16_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8188e_IOL_exec_cmds_sync(ptr noundef %adapter, ptr noundef %xmit_frame, i32 noundef %max_wating_ms, i32 noundef %bndy_cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_IOL_append_END_cmd(ptr noundef %xmit_frame) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end:                                           ; preds = %entry
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %xmit_frame, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_txcmdsz, align 4
  %add = add i32 %1, 32
  %dvobj.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %2 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj.i, align 4
  %ishighspeed.i = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ishighspeed.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ishighspeed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %rst.0.in.in.v.i = select i1 %tobool.not.i, i32 63, i32 511
  %rst.0.in.in.i = and i32 %rst.0.in.in.v.i, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rst.0.in.in.i)
  %rst.0.in.i.not = icmp eq i32 %rst.0.in.in.i, 0
  br i1 %rst.0.in.i.not, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @rtw_IOL_append_END_cmd(ptr noundef %xmit_frame) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.then2.if.end7_crit_edge, label %if.then2.exit_crit_edge

if.then2.exit_crit_edge:                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @dump_mgntframe_and_wait(ptr noundef %adapter, ptr noundef %xmit_frame, i32 noundef %max_wating_ms) #8
  tail call fastcc void @iol_mode_enable(ptr noundef %adapter, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bndy_cnt)
  %cmp933.not = icmp eq i32 %bndy_cnt, 0
  br i1 %cmp933.not, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond:                                         ; preds = %iol_ioconfig.exit
  %inc = add i8 %i.034, 1
  %conv = zext i8 %inc to i32
  %cmp9 = icmp ult i32 %conv, %bndy_cnt
  br i1 %cmp9, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end7.for.body_crit_edge
  %i.034 = phi i8 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %mul = shl i8 %i.034, 1
  %call.i = tail call i32 @rtw_write8(ptr noundef %adapter, i32 noundef 521, i8 noundef zeroext %mul) #8
  %call.i.i = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 136) #8
  %or30.i.i = or i8 %call.i.i, 8
  %call5.i.i = tail call i32 @rtw_write8(ptr noundef %adapter, i32 noundef 136, i8 noundef zeroext %or30.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %land.rhs.i.i.while.cond.i.i_crit_edge, %for.body
  %call6.i.i = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 136) #8
  %and931.i.i = and i8 %call6.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and931.i.i)
  %tobool.not.i.i = icmp eq i8 %and931.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.iol_ioconfig.exit_crit_edge, label %land.rhs.i.i

while.cond.i.i.iol_ioconfig.exit_crit_edge:       ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iol_ioconfig.exit

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  %call10.i.i = tail call i32 @rtw_get_passing_time_ms(i32 noundef %6) #8
  %cmp.i.i = icmp ult i32 %call10.i.i, 1000
  br i1 %cmp.i.i, label %land.rhs.i.i.while.cond.i.i_crit_edge, label %land.rhs.i.i.iol_ioconfig.exit_crit_edge

land.rhs.i.i.iol_ioconfig.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iol_ioconfig.exit

land.rhs.i.i.while.cond.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

iol_ioconfig.exit:                                ; preds = %land.rhs.i.i.iol_ioconfig.exit_crit_edge, %while.cond.i.i.iol_ioconfig.exit_crit_edge
  %call12.i.i = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 136) #8
  %7 = and i8 %call12.i.i, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %for.cond, label %iol_ioconfig.exit.for.end_crit_edge

iol_ioconfig.exit.for.end_crit_edge:              ; preds = %iol_ioconfig.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %iol_ioconfig.exit.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.end7.for.end_crit_edge
  %ret.1 = phi i32 [ 0, %if.end7.for.end_crit_edge ], [ 0, %iol_ioconfig.exit.for.end_crit_edge ], [ 1, %for.cond.for.end_crit_edge ]
  %call12.i = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 240) #8
  %9 = and i8 %call12.i, 127
  %call15.i = tail call i32 @rtw_write8(ptr noundef %adapter, i32 noundef 240, i8 noundef zeroext %9) #8
  br label %exit

exit:                                             ; preds = %for.end, %if.then2.exit_crit_edge, %entry.exit_crit_edge
  %ret.2 = phi i32 [ 0, %entry.exit_crit_edge ], [ 0, %if.then2.exit_crit_edge ], [ %ret.1, %for.end ]
  %call18 = tail call i32 @rtw_write8(ptr noundef %adapter, i32 noundef 521, i8 noundef zeroext 0) #8
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_IOL_append_END_cmd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dump_mgntframe_and_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_8051Reset88E(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 3) #8
  %and = and i8 %call, -5
  %call2 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 3, i8 noundef zeroext %and) #8
  %0 = or i8 %call, 4
  %call5 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 3, i8 noundef zeroext %0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %1 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %do.end, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8188e_FirmwareDownload(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj1, align 4
  %firmware = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %firmware, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %pusbintf.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %pusbintf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pusbintf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %call3 = tail call fastcc i32 @load_firmware(ptr noundef %firmware, ptr noundef %dev.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %phi.cmp = icmp eq i32 %call3, 0
  br i1 %phi.cmp, label %if.then4, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %firmware, align 4
  br label %Exit

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %7 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %firmware, align 4
  %ulFwLength = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %ulFwLength to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ulFwLength, align 4
  %Version = getelementptr inbounds %struct.rt_firmware_hdr, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %Version to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %Version, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %FirmwareVersion = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 19, i32 1
  %14 = ptrtoint ptr %FirmwareVersion to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %FirmwareVersion, align 8
  %Subversion = getelementptr inbounds %struct.rt_firmware_hdr, ptr %8, i32 0, i32 4
  %15 = ptrtoint ptr %Subversion to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %Subversion, align 2
  %conv = zext i8 %16 to i16
  %FirmwareSubVersion = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 19, i32 3
  %17 = ptrtoint ptr %FirmwareSubVersion to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %FirmwareSubVersion, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %8, align 4
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %FirmwareSignature = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 19, i32 4
  %21 = ptrtoint ptr %FirmwareSignature to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %FirmwareSignature, align 2
  %22 = load i32, ptr @rtl8188e_FirmwareDownload.log_version, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr @rtl8188e_FirmwareDownload.log_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool13.not = icmp eq i32 %22, 0
  br i1 %tobool13.not, label %do.end, label %if.end7.if.end22_crit_edge

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %conv16 = zext i16 %13 to i32
  %conv18 = zext i8 %16 to i32
  %conv20 = zext i16 %20 to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv20) #11
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.end7.if.end22_crit_edge
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %8, align 4
  %25 = and i16 %24, -3841
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i16 %25, label %if.end22.if.end45_crit_edge [
    i16 -16238, label %if.end22.if.then44_crit_edge
    i16 -16248, label %if.end22.if.then44_crit_edge242
    i16 35, label %if.end22.if.then44_crit_edge243
    i16 -8056, label %if.end22.if.then44_crit_edge244
  ]

if.end22.if.then44_crit_edge244:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.end22.if.then44_crit_edge243:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.end22.if.then44_crit_edge242:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.end22.if.then44_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.end22.if.end45_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then44:                                        ; preds = %if.end22.if.then44_crit_edge, %if.end22.if.then44_crit_edge242, %if.end22.if.then44_crit_edge243, %if.end22.if.then44_crit_edge244
  %add.ptr = getelementptr i8, ptr %8, i32 32
  %sub = add i32 %10, -32
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end22.if.end45_crit_edge
  %pFirmwareBuf.0 = phi ptr [ %add.ptr, %if.then44 ], [ %8, %if.end22.if.end45_crit_edge ]
  %FirmwareLen.0 = phi i32 [ %sub, %if.then44 ], [ %10, %if.end22.if.end45_crit_edge ]
  %call46 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call46)
  %tobool49.not = icmp sgt i8 %call46, -1
  br i1 %tobool49.not, label %if.end45.if.end52_crit_edge, label %if.then50

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then50:                                        ; preds = %if.end45
  %call51 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 128, i8 noundef zeroext 0) #8
  %call.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 3) #8
  %and.i = and i8 %call.i, -5
  %call2.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 3, i8 noundef zeroext %and.i) #8
  %27 = or i8 %call.i, 4
  %call5.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 3, i8 noundef zeroext %27) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %28 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp.i = icmp ugt i32 %28, 4
  br i1 %cmp.i, label %do.end.i, label %if.then50.if.end52_crit_edge

if.then50.if.end52_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

do.end.i:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %if.end52

if.end52:                                         ; preds = %do.end.i, %if.then50.if.end52_crit_edge, %if.end45.if.end52_crit_edge
  %call.i152 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 128) #8
  %29 = or i8 %call.i152, 1
  %call2.i153 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 128, i8 noundef zeroext %29) #8
  %call3.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 130) #8
  %30 = and i8 %call3.i, -9
  %call6.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 130, i8 noundef zeroext %30) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %div22.i = lshr i32 %FirmwareLen.0, 12
  %rem.i = and i32 %FirmwareLen.0, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %FirmwareLen.0)
  %cmp62.not.i = icmp ult i32 %FirmwareLen.0, 4096
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div22.i, i32 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %mul3.i = and i32 %FirmwareLen.0, -4096
  %add.ptr4.i = getelementptr i8, ptr %pFirmwareBuf.0, i32 %mul3.i
  %32 = trunc i32 %div22.i to i8
  %33 = and i8 %32, 7
  %div.i.i.i.lhs.trunc = trunc i32 %rem.i to i16
  %div.i.i.i197 = udiv i16 %div.i.i.i.lhs.trunc, 196
  %div.i.i.i.zext = zext i16 %div.i.i.i197 to i32
  %rem.i.i.i.lhs.trunc = trunc i32 %rem.i to i16
  %rem.i.i.i198 = urem i16 %rem.i.i.i.lhs.trunc, 196
  %rem.i.i.i.zext = zext i16 %rem.i.i.i198 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 196, i32 %rem.i)
  %34 = icmp ult i32 %rem.i, 196
  %umax.i.i.i = tail call i32 @llvm.umax.i32(i32 %div.i.i.i.zext, i32 1) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.i.i.i198)
  %tobool.not.i.i.i = icmp eq i16 %rem.i.i.i198, 0
  %rem6.i.i.i = and i32 %rem.i.i.i.zext, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %rem.i.i.i198)
  %cmp895.not.i.i.i = icmp ult i16 %rem.i.i.i198, 8
  %div584.i.i.i = lshr i32 %rem.i.i.i.zext, 3
  %mul4.i.i.i = mul nuw nsw i32 %div.i.i.i.zext, 196
  %add10.i.i.i = add nuw nsw i32 %mul4.i.i.i, 4096
  %add.ptr13.i.i37.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul4.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem6.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %rem6.i.i.i, 0
  %mul27.i.i.i = and i32 %rem.i.i.i.zext, 248
  %add28.i.i.i = add nuw nsw i32 %mul4.i.i.i, %mul27.i.i.i
  %add33.i.i.i = add nuw nsw i32 %add28.i.i.i, 4096
  %add.ptr35.i.i.i = getelementptr i8, ptr %add.ptr4.i, i32 %add28.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem6.i.i.i)
  %exitcond108.not.i.i.i = icmp eq i32 %rem6.i.i.i, 1
  %add34.i.i.i.1 = add nuw nsw i32 %add28.i.i.i, 4097
  %add.ptr36.i.i.i.1 = getelementptr i8, ptr %add.ptr35.i.i.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem6.i.i.i)
  %exitcond108.not.i.i.i.1 = icmp eq i32 %rem6.i.i.i, 2
  %add34.i.i.i.2 = add nuw nsw i32 %add28.i.i.i, 4098
  %add.ptr36.i.i.i.2 = getelementptr i8, ptr %add.ptr35.i.i.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rem6.i.i.i)
  %exitcond108.not.i.i.i.2 = icmp eq i32 %rem6.i.i.i, 3
  %add34.i.i.i.3 = add nuw nsw i32 %add28.i.i.i, 4099
  %add.ptr36.i.i.i.3 = getelementptr i8, ptr %add.ptr35.i.i.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem6.i.i.i)
  %exitcond108.not.i.i.i.3 = icmp eq i32 %rem6.i.i.i, 4
  %add34.i.i.i.4 = add nuw nsw i32 %add28.i.i.i, 4100
  %add.ptr36.i.i.i.4 = getelementptr i8, ptr %add.ptr35.i.i.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %rem6.i.i.i)
  %exitcond108.not.i.i.i.4 = icmp eq i32 %rem6.i.i.i, 5
  %add34.i.i.i.5 = add nuw nsw i32 %add28.i.i.i, 4101
  %add.ptr36.i.i.i.5 = getelementptr i8, ptr %add.ptr35.i.i.i, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %rem6.i.i.i)
  %exitcond108.not.i.i.i.5 = icmp eq i32 %rem6.i.i.i, 6
  %add34.i.i.i.6 = add nuw nsw i32 %add28.i.i.i, 4102
  %add.ptr36.i.i.i.6 = getelementptr i8, ptr %add.ptr35.i.i.i, i32 6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end52
  %writeFW_retry.0 = phi i8 [ 0, %if.end52 ], [ %writeFW_retry.1, %while.cond.backedge ]
  %call53 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 128) #8
  %35 = or i8 %call53, 4
  %call56 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 128, i8 noundef zeroext %35) #8
  br i1 %cmp62.not.i, label %while.cond.for.end.i_crit_edge, label %while.cond.for.body.i_crit_edge

while.cond.for.body.i_crit_edge:                  ; preds = %while.cond
  br label %for.body.i

while.cond.for.end.i_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.cond.for.body.i_crit_edge
  %page.063.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %while.cond.for.body.i_crit_edge ]
  %mul.i = shl i32 %page.063.i, 12
  %add.ptr.i = getelementptr i8, ptr %pFirmwareBuf.0, i32 %mul.i
  %call.i.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 130) #8
  %36 = and i8 %call.i.i, -8
  %37 = trunc i32 %page.063.i to i8
  %38 = and i8 %37, 7
  %conv4.i.i = or i8 %36, %38
  %call5.i.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 130, i8 noundef zeroext %conv4.i.i) #8
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.094.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 20
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.body.i
  %i.094.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i ]
  %mul.i.i.i = mul nuw nsw i32 %i.094.i.i.i, 196
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, 4096
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i.i.i
  %call.i.i.i = tail call i32 @rtw_writeN(ptr noundef %padapter, i32 noundef %add.i.i.i, i32 noundef 196, ptr noundef %add.ptr.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp2.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp2.i.i.i, label %for.body.i.i.i.lor.lhs.false60_crit_edge, label %for.cond.i.i.i

for.body.i.i.i.lor.lhs.false60_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false60

for.end.i.i.i:                                    ; preds = %for.cond.i.i.i
  %add.ptr13.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 3920
  br label %for.body9.i.i.i

for.cond7.i.i.i:                                  ; preds = %for.body9.i.i.i
  %inc21.i.i.i = add nuw nsw i32 %i.196.i.i.i, 1
  %exitcond107.not.i.i.i = icmp eq i32 %inc21.i.i.i, 22
  br i1 %exitcond107.not.i.i.i, label %for.inc.i, label %for.cond7.i.i.i.for.body9.i.i.i_crit_edge

for.cond7.i.i.i.for.body9.i.i.i_crit_edge:        ; preds = %for.cond7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.i.i.i

for.body9.i.i.i:                                  ; preds = %for.cond7.i.i.i.for.body9.i.i.i_crit_edge, %for.end.i.i.i
  %i.196.i.i.i = phi i32 [ 0, %for.end.i.i.i ], [ %inc21.i.i.i, %for.cond7.i.i.i.for.body9.i.i.i_crit_edge ]
  %mul11.i.i.i = shl i32 %i.196.i.i.i, 3
  %add12.i.i.i = add nuw nsw i32 %mul11.i.i.i, 8016
  %add.ptr15.i.i.i = getelementptr i8, ptr %add.ptr13.i.i.i, i32 %mul11.i.i.i
  %call16.i.i.i = tail call i32 @rtw_writeN(ptr noundef %padapter, i32 noundef %add12.i.i.i, i32 noundef 8, ptr noundef %add.ptr15.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i.i)
  %cmp17.i.i.i = icmp eq i32 %call16.i.i.i, 0
  br i1 %cmp17.i.i.i, label %for.body9.i.i.i.lor.lhs.false60_crit_edge, label %for.cond7.i.i.i

for.body9.i.i.i.lor.lhs.false60_crit_edge:        ; preds = %for.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false60

for.inc.i:                                        ; preds = %for.cond7.i.i.i
  %inc.i = add nuw nsw i32 %page.063.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %while.cond.for.end.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 1, %while.cond.for.end.i_crit_edge ], [ %call16.i.i.i, %for.inc.i.for.end.i_crit_edge ]
  br i1 %tobool.not.i, label %for.end.i._WriteFW.exit_crit_edge, label %if.then2.i

for.end.i._WriteFW.exit_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_WriteFW.exit

if.then2.i:                                       ; preds = %for.end.i
  %call.i23.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 130) #8
  %39 = and i8 %call.i23.i, -8
  %conv4.i24.i = or i8 %39, %33
  %call5.i25.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 130, i8 noundef zeroext %conv4.i24.i) #8
  br i1 %34, label %if.then2.i.for.end.i.i36.i_crit_edge, label %if.then2.i.for.body.i.i35.i_crit_edge

if.then2.i.for.body.i.i35.i_crit_edge:            ; preds = %if.then2.i
  br label %for.body.i.i35.i

if.then2.i.for.end.i.i36.i_crit_edge:             ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i36.i

for.cond.i.i28.i:                                 ; preds = %for.body.i.i35.i
  %inc.i.i26.i = add nuw nsw i32 %i.094.i.i29.i, 1
  %exitcond.not.i.i27.i = icmp eq i32 %inc.i.i26.i, %umax.i.i.i
  br i1 %exitcond.not.i.i27.i, label %for.cond.i.i28.i.for.end.i.i36.i_crit_edge, label %for.cond.i.i28.i.for.body.i.i35.i_crit_edge

for.cond.i.i28.i.for.body.i.i35.i_crit_edge:      ; preds = %for.cond.i.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i35.i

for.cond.i.i28.i.for.end.i.i36.i_crit_edge:       ; preds = %for.cond.i.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i36.i

for.body.i.i35.i:                                 ; preds = %for.cond.i.i28.i.for.body.i.i35.i_crit_edge, %if.then2.i.for.body.i.i35.i_crit_edge
  %i.094.i.i29.i = phi i32 [ %inc.i.i26.i, %for.cond.i.i28.i.for.body.i.i35.i_crit_edge ], [ 0, %if.then2.i.for.body.i.i35.i_crit_edge ]
  %mul.i.i30.i = mul nuw nsw i32 %i.094.i.i29.i, 196
  %add.i.i31.i = add nuw nsw i32 %mul.i.i30.i, 4096
  %add.ptr.i.i32.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul.i.i30.i
  %call.i.i33.i = tail call i32 @rtw_writeN(ptr noundef %padapter, i32 noundef %add.i.i31.i, i32 noundef 196, ptr noundef %add.ptr.i.i32.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33.i)
  %cmp2.i.i34.i = icmp eq i32 %call.i.i33.i, 0
  br i1 %cmp2.i.i34.i, label %for.body.i.i35.i.lor.lhs.false60_crit_edge, label %for.cond.i.i28.i

for.body.i.i35.i.lor.lhs.false60_crit_edge:       ; preds = %for.body.i.i35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false60

for.end.i.i36.i:                                  ; preds = %for.cond.i.i28.i.for.end.i.i36.i_crit_edge, %if.then2.i.for.end.i.i36.i_crit_edge
  %ret.0.lcssa.i.i.i = phi i32 [ 1, %if.then2.i.for.end.i.i36.i_crit_edge ], [ %call.i.i33.i, %for.cond.i.i28.i.for.end.i.i36.i_crit_edge ]
  br i1 %tobool.not.i.i.i, label %for.end.i.i36.i._WriteFW.exit_crit_edge, label %if.then3.i.i.i

for.end.i.i36.i._WriteFW.exit_crit_edge:          ; preds = %for.end.i.i36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_WriteFW.exit

if.then3.i.i.i:                                   ; preds = %for.end.i.i36.i
  br i1 %cmp895.not.i.i.i, label %if.then3.i.i.i.if.end23.i.i48.i_crit_edge, label %if.then3.i.i.i.for.body9.i.i47.i_crit_edge

if.then3.i.i.i.for.body9.i.i47.i_crit_edge:       ; preds = %if.then3.i.i.i
  br label %for.body9.i.i47.i

if.then3.i.i.i.if.end23.i.i48.i_crit_edge:        ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i.i48.i

for.cond7.i.i40.i:                                ; preds = %for.body9.i.i47.i
  %inc21.i.i38.i = add nuw nsw i32 %i.196.i.i41.i, 1
  %exitcond107.not.i.i39.i = icmp eq i32 %inc21.i.i38.i, %div584.i.i.i
  br i1 %exitcond107.not.i.i39.i, label %for.cond7.i.i40.i.if.end23.i.i48.i_crit_edge, label %for.cond7.i.i40.i.for.body9.i.i47.i_crit_edge

for.cond7.i.i40.i.for.body9.i.i47.i_crit_edge:    ; preds = %for.cond7.i.i40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.i.i47.i

for.cond7.i.i40.i.if.end23.i.i48.i_crit_edge:     ; preds = %for.cond7.i.i40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i.i48.i

for.body9.i.i47.i:                                ; preds = %for.cond7.i.i40.i.for.body9.i.i47.i_crit_edge, %if.then3.i.i.i.for.body9.i.i47.i_crit_edge
  %i.196.i.i41.i = phi i32 [ %inc21.i.i38.i, %for.cond7.i.i40.i.for.body9.i.i47.i_crit_edge ], [ 0, %if.then3.i.i.i.for.body9.i.i47.i_crit_edge ]
  %mul11.i.i42.i = shl i32 %i.196.i.i41.i, 3
  %add12.i.i43.i = add i32 %add10.i.i.i, %mul11.i.i42.i
  %add.ptr15.i.i44.i = getelementptr i8, ptr %add.ptr13.i.i37.i, i32 %mul11.i.i42.i
  %call16.i.i45.i = tail call i32 @rtw_writeN(ptr noundef %padapter, i32 noundef %add12.i.i43.i, i32 noundef 8, ptr noundef %add.ptr15.i.i44.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i45.i)
  %cmp17.i.i46.i = icmp eq i32 %call16.i.i45.i, 0
  br i1 %cmp17.i.i46.i, label %for.body9.i.i47.i.lor.lhs.false60_crit_edge, label %for.cond7.i.i40.i

for.body9.i.i47.i.lor.lhs.false60_crit_edge:      ; preds = %for.body9.i.i47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false60

if.end23.i.i48.i:                                 ; preds = %for.cond7.i.i40.i.if.end23.i.i48.i_crit_edge, %if.then3.i.i.i.if.end23.i.i48.i_crit_edge
  %ret.1.lcssa.i.i.i = phi i32 [ %ret.0.lcssa.i.i.i, %if.then3.i.i.i.if.end23.i.i48.i_crit_edge ], [ %call16.i.i45.i, %for.cond7.i.i40.i.if.end23.i.i48.i_crit_edge ]
  br i1 %tobool24.not.i.i.i, label %if.end23.i.i48.i._WriteFW.exit_crit_edge, label %for.body32.i.i.i

if.end23.i.i48.i._WriteFW.exit_crit_edge:         ; preds = %if.end23.i.i48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_WriteFW.exit

for.cond30.i.i.i:                                 ; preds = %for.body32.i.i.i
  br i1 %exitcond108.not.i.i.i, label %for.cond30.i.i.i._WriteFW.exit_crit_edge, label %for.body32.i.i.i.1

for.cond30.i.i.i._WriteFW.exit_crit_edge:         ; preds = %for.cond30.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_WriteFW.exit

for.body32.i.i.i.1:                               ; preds = %for.cond30.i.i.i
  %40 = ptrtoint ptr %add.ptr36.i.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr36.i.i.i.1, align 1
  %call37.i.i.i.1 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef %add34.i.i.i.1, i8 noundef zeroext %41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i.i.1)
  %cmp38.i.i.i.1 = icmp eq i32 %call37.i.i.i.1, 0
  br i1 %cmp38.i.i.i.1, label %for.body32.i.i.i.1.lor.lhs.false60_crit_edge, label %for.cond30.i.i.i.1

for.body32.i.i.i.1.lor.lhs.false60_crit_edge:     ; preds = %for.body32.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false60

for.cond30.i.i.i.1:                               ; preds = %for.body32.i.i.i.1
  br i1 %exitcond108.not.i.i.i.1, label %for.cond30.i.i.i.1._WriteFW.exit_crit_edge, label %for.body32.i.i.i.2

for.cond30.i.i.i.1._WriteFW.exit_crit_edge:       ; preds = %for.cond30.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %_WriteFW.exit

for.body32.i.i.i.2:                               ; preds = %for.cond30.i.i.i.1
  %42 = ptrtoint ptr %add.ptr36.i.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr36.i.i.i.2, align 1
  %call37.i.i.i.2 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef %add34.i.i.i.2, i8 noundef zeroext %43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i.i.2)
  %cmp38.i.i.i.2 = icmp eq i32 %call37.i.i.i.2, 0
  br i1 %cmp38.i.i.i.2, label %for.body32.i.i.i.2.lor.lhs.false60_crit_edge, label %for.cond30.i.i.i.2

for.body32.i.i.i.2.lor.lhs.false60_crit_edge:     ; preds = %for.body32.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false60

for.cond30.i.i.i.2:                               ; preds = %for.body32.i.i.i.2
  br i1 %exitcond108.not.i.i.i.2, label %for.cond30.i.i.i.2._WriteFW.exit_crit_edge, label %for.body32.i.i.i.3

for.cond30.i.i.i.2._WriteFW.exit_crit_edge:       ; preds = %for.cond30.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %_WriteFW.exit

for.body32.i.i.i.3:                               ; preds = %for.cond30.i.i.i.2
  %44 = ptrtoint ptr %add.ptr36.i.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add.ptr36.i.i.i.3, align 1
  %call37.i.i.i.3 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef %add34.i.i.i.3, i8 noundef zeroext %45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i.i.3)
  %cmp38.i.i.i.3 = icmp eq i32 %call37.i.i.i.3, 0
  br i1 %cmp38.i.i.i.3, label %for.body32.i.i.i.3.lor.lhs.false60_crit_edge, label %for.cond30.i.i.i.3

for.body32.i.i.i.3.lor.lhs.false60_crit_edge:     ; preds = %for.body32.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false60

for.cond30.i.i.i.3:                               ; preds = %for.body32.i.i.i.3
  br i1 %exitcond108.not.i.i.i.3, label %for.cond30.i.i.i.3._WriteFW.exit_crit_edge, label %for.body32.i.i.i.4

for.cond30.i.i.i.3._WriteFW.exit_crit_edge:       ; preds = %for.cond30.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %_WriteFW.exit

for.body32.i.i.i.4:                               ; preds = %for.cond30.i.i.i.3
  %46 = ptrtoint ptr %add.ptr36.i.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr36.i.i.i.4, align 1
  %call37.i.i.i.4 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef %add34.i.i.i.4, i8 noundef zeroext %47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i.i.4)
  %cmp38.i.i.i.4 = icmp eq i32 %call37.i.i.i.4, 0
  br i1 %cmp38.i.i.i.4, label %for.body32.i.i.i.4.lor.lhs.false60_crit_edge, label %for.cond30.i.i.i.4

for.body32.i.i.i.4.lor.lhs.false60_crit_edge:     ; preds = %for.body32.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false60

for.cond30.i.i.i.4:                               ; preds = %for.body32.i.i.i.4
  br i1 %exitcond108.not.i.i.i.4, label %for.cond30.i.i.i.4._WriteFW.exit_crit_edge, label %for.body32.i.i.i.5

for.cond30.i.i.i.4._WriteFW.exit_crit_edge:       ; preds = %for.cond30.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %_WriteFW.exit

for.body32.i.i.i.5:                               ; preds = %for.cond30.i.i.i.4
  %48 = ptrtoint ptr %add.ptr36.i.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %add.ptr36.i.i.i.5, align 1
  %call37.i.i.i.5 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef %add34.i.i.i.5, i8 noundef zeroext %49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i.i.5)
  %cmp38.i.i.i.5 = icmp eq i32 %call37.i.i.i.5, 0
  br i1 %cmp38.i.i.i.5, label %for.body32.i.i.i.5.lor.lhs.false60_crit_edge, label %for.cond30.i.i.i.5

for.body32.i.i.i.5.lor.lhs.false60_crit_edge:     ; preds = %for.body32.i.i.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false60

for.cond30.i.i.i.5:                               ; preds = %for.body32.i.i.i.5
  br i1 %exitcond108.not.i.i.i.5, label %for.cond30.i.i.i.5._WriteFW.exit_crit_edge, label %for.body32.i.i.i.6

for.cond30.i.i.i.5._WriteFW.exit_crit_edge:       ; preds = %for.cond30.i.i.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %_WriteFW.exit

for.body32.i.i.i.6:                               ; preds = %for.cond30.i.i.i.5
  %50 = ptrtoint ptr %add.ptr36.i.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %add.ptr36.i.i.i.6, align 1
  %call37.i.i.i.6 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef %add34.i.i.i.6, i8 noundef zeroext %51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i.i.6)
  %cmp38.i.i.i.6 = icmp eq i32 %call37.i.i.i.6, 0
  br i1 %cmp38.i.i.i.6, label %for.body32.i.i.i.6.lor.lhs.false60_crit_edge, label %for.body32.i.i.i.6._WriteFW.exit_crit_edge

for.body32.i.i.i.6._WriteFW.exit_crit_edge:       ; preds = %for.body32.i.i.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %_WriteFW.exit

for.body32.i.i.i.6.lor.lhs.false60_crit_edge:     ; preds = %for.body32.i.i.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false60

for.body32.i.i.i:                                 ; preds = %if.end23.i.i48.i
  %52 = ptrtoint ptr %add.ptr35.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr35.i.i.i, align 1
  %call37.i.i.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef %add33.i.i.i, i8 noundef zeroext %53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i.i)
  %cmp38.i.i.i = icmp eq i32 %call37.i.i.i, 0
  br i1 %cmp38.i.i.i, label %for.body32.i.i.i.lor.lhs.false60_crit_edge, label %for.cond30.i.i.i

for.body32.i.i.i.lor.lhs.false60_crit_edge:       ; preds = %for.body32.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false60

_WriteFW.exit:                                    ; preds = %for.body32.i.i.i.6._WriteFW.exit_crit_edge, %for.cond30.i.i.i.5._WriteFW.exit_crit_edge, %for.cond30.i.i.i.4._WriteFW.exit_crit_edge, %for.cond30.i.i.i.3._WriteFW.exit_crit_edge, %for.cond30.i.i.i.2._WriteFW.exit_crit_edge, %for.cond30.i.i.i.1._WriteFW.exit_crit_edge, %for.cond30.i.i.i._WriteFW.exit_crit_edge, %if.end23.i.i48.i._WriteFW.exit_crit_edge, %for.end.i.i36.i._WriteFW.exit_crit_edge, %for.end.i._WriteFW.exit_crit_edge
  %ret.1.i = phi i32 [ %ret.0.lcssa.i, %for.end.i._WriteFW.exit_crit_edge ], [ %ret.1.lcssa.i.i.i, %if.end23.i.i48.i._WriteFW.exit_crit_edge ], [ %ret.0.lcssa.i.i.i, %for.end.i.i36.i._WriteFW.exit_crit_edge ], [ %call37.i.i.i, %for.cond30.i.i.i._WriteFW.exit_crit_edge ], [ %call37.i.i.i.1, %for.cond30.i.i.i.1._WriteFW.exit_crit_edge ], [ %call37.i.i.i.2, %for.cond30.i.i.i.2._WriteFW.exit_crit_edge ], [ %call37.i.i.i.3, %for.cond30.i.i.i.3._WriteFW.exit_crit_edge ], [ %call37.i.i.i.4, %for.cond30.i.i.i.4._WriteFW.exit_crit_edge ], [ %call37.i.i.i.5, %for.cond30.i.i.i.5._WriteFW.exit_crit_edge ], [ %call37.i.i.i.6, %for.body32.i.i.i.6._WriteFW.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.1.i)
  %cmp58 = icmp eq i32 %ret.1.i, 1
  br i1 %cmp58, label %_WriteFW.exit.while.end_crit_edge, label %_WriteFW.exit.lor.lhs.false60_crit_edge

_WriteFW.exit.lor.lhs.false60_crit_edge:          ; preds = %_WriteFW.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false60

_WriteFW.exit.while.end_crit_edge:                ; preds = %_WriteFW.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

lor.lhs.false60:                                  ; preds = %_WriteFW.exit.lor.lhs.false60_crit_edge, %for.body32.i.i.i.lor.lhs.false60_crit_edge, %for.body32.i.i.i.6.lor.lhs.false60_crit_edge, %for.body32.i.i.i.5.lor.lhs.false60_crit_edge, %for.body32.i.i.i.4.lor.lhs.false60_crit_edge, %for.body32.i.i.i.3.lor.lhs.false60_crit_edge, %for.body32.i.i.i.2.lor.lhs.false60_crit_edge, %for.body32.i.i.i.1.lor.lhs.false60_crit_edge, %for.body9.i.i47.i.lor.lhs.false60_crit_edge, %for.body.i.i35.i.lor.lhs.false60_crit_edge, %for.body9.i.i.i.lor.lhs.false60_crit_edge, %for.body.i.i.i.lor.lhs.false60_crit_edge
  %ret.1.i165 = phi i32 [ %ret.1.i, %_WriteFW.exit.lor.lhs.false60_crit_edge ], [ 0, %for.body9.i.i.i.lor.lhs.false60_crit_edge ], [ 0, %for.body.i.i.i.lor.lhs.false60_crit_edge ], [ 0, %for.body32.i.i.i.6.lor.lhs.false60_crit_edge ], [ 0, %for.body32.i.i.i.5.lor.lhs.false60_crit_edge ], [ 0, %for.body32.i.i.i.4.lor.lhs.false60_crit_edge ], [ 0, %for.body32.i.i.i.3.lor.lhs.false60_crit_edge ], [ 0, %for.body32.i.i.i.2.lor.lhs.false60_crit_edge ], [ 0, %for.body32.i.i.i.1.lor.lhs.false60_crit_edge ], [ 0, %for.body32.i.i.i.lor.lhs.false60_crit_edge ], [ 0, %for.body9.i.i47.i.lor.lhs.false60_crit_edge ], [ 0, %for.body.i.i35.i.lor.lhs.false60_crit_edge ]
  %call61 = tail call i32 @rtw_get_passing_time_ms(i32 noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %call61)
  %cmp62 = icmp sgt i32 %call61, 500
  br i1 %cmp62, label %land.lhs.true, label %lor.lhs.false60.do.body70_crit_edge

lor.lhs.false60.do.body70_crit_edge:              ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body70

land.lhs.true:                                    ; preds = %lor.lhs.false60
  %inc64 = add i8 %writeFW_retry.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %writeFW_retry.0)
  %cmp66 = icmp ugt i8 %writeFW_retry.0, 2
  br i1 %cmp66, label %land.lhs.true.while.end_crit_edge, label %land.lhs.true.do.body70_crit_edge

land.lhs.true.do.body70_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body70

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.body70:                                        ; preds = %land.lhs.true.do.body70_crit_edge, %lor.lhs.false60.do.body70_crit_edge
  %writeFW_retry.1 = phi i8 [ %inc64, %land.lhs.true.do.body70_crit_edge ], [ %writeFW_retry.0, %lor.lhs.false60.do.body70_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %54 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp71 = icmp ugt i32 %54, 4
  br i1 %cmp71, label %do.end76, label %do.body70.while.cond.backedge_crit_edge

do.body70.while.cond.backedge_crit_edge:          ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

do.end76:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #10
  %conv78 = zext i8 %writeFW_retry.1 to i32
  %call79 = tail call i32 @rtw_get_passing_time_ms(i32 noundef %31) #8
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, i32 noundef %conv78, i32 noundef %call79) #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end76, %do.body70.while.cond.backedge_crit_edge
  br label %while.cond

while.end:                                        ; preds = %land.lhs.true.while.end_crit_edge, %_WriteFW.exit.while.end_crit_edge
  %cmp58168 = phi i1 [ true, %_WriteFW.exit.while.end_crit_edge ], [ false, %land.lhs.true.while.end_crit_edge ]
  %ret.1.i166 = phi i32 [ 1, %_WriteFW.exit.while.end_crit_edge ], [ %ret.1.i165, %land.lhs.true.while.end_crit_edge ]
  %call.i154 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 128) #8
  %55 = and i8 %call.i154, -2
  %call11.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 128, i8 noundef zeroext %55) #8
  %call12.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 129, i8 noundef zeroext 0) #8
  br i1 %cmp58168, label %while.end.do.body.i_crit_edge, label %do.body87

while.end.do.body.i_crit_edge:                    ; preds = %while.end
  br label %do.body.i

do.body87:                                        ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %56 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %56)
  %cmp88 = icmp ugt i32 %56, 4
  br i1 %cmp88, label %do.end93, label %do.body87.Exit_crit_edge

do.body87.Exit_crit_edge:                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #10
  br label %Exit

do.end93:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #10
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %Exit

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %while.end.do.body.i_crit_edge
  %counter.0.i = phi i32 [ %inc.i158, %do.cond.i.do.body.i_crit_edge ], [ 0, %while.end.do.body.i_crit_edge ]
  %call.i155 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 128) #8
  %and.i156 = and i32 %call.i155, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i156)
  %tobool.not.i157 = icmp eq i32 %and.i156, 0
  br i1 %tobool.not.i157, label %do.cond.i, label %do.end.i160

do.cond.i:                                        ; preds = %do.body.i
  %inc.i158 = add nuw nsw i32 %counter.0.i, 1
  %exitcond.not.i159 = icmp eq i32 %inc.i158, 1001
  br i1 %exitcond.not.i159, label %do.cond.i.do.body3.i_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.cond.i.do.body3.i_crit_edge:                   ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3.i

do.end.i160:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %counter.0.i)
  %cmp1.i = icmp ugt i32 %counter.0.i, 999
  br i1 %cmp1.i, label %do.end.i160.do.body3.i_crit_edge, label %do.body14.i

do.end.i160.do.body3.i_crit_edge:                 ; preds = %do.end.i160
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3.i

do.body3.i:                                       ; preds = %do.end.i160.do.body3.i_crit_edge, %do.cond.i.do.body3.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %57 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %57)
  %cmp4.i = icmp ugt i32 %57, 4
  br i1 %cmp4.i, label %do.end8.i, label %do.body3.i.Exit_crit_edge

do.body3.i.Exit_crit_edge:                        ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %Exit

do.end8.i:                                        ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef %call.i155) #11
  br label %do.body104

do.body14.i:                                      ; preds = %do.end.i160
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %58 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %58)
  %cmp15.i = icmp ugt i32 %58, 4
  br i1 %cmp15.i, label %do.end19.i, label %do.body14.i.do.end24.i_crit_edge

do.body14.i.do.end24.i_crit_edge:                 ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24.i

do.end19.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.82, i32 noundef %call.i155) #11
  br label %do.end24.i

do.end24.i:                                       ; preds = %do.end19.i, %do.body14.i.do.end24.i_crit_edge
  %call25.i = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 128) #8
  %or.i = and i32 %call25.i, -67
  %and26.i = or i32 %or.i, 2
  %call27.i = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 128, i32 noundef %and26.i) #8
  %call.i.i161 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 3) #8
  %and.i.i = and i8 %call.i.i161, -5
  %call2.i.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 3, i8 noundef zeroext %and.i.i) #8
  %59 = or i8 %call.i.i161, 4
  %call5.i.i162 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 3, i8 noundef zeroext %59) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %60 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %60)
  %cmp.i.i = icmp ugt i32 %60, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %do.end24.i.do.body28.i.preheader_crit_edge

do.end24.i.do.body28.i.preheader_crit_edge:       ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body28.i.preheader

do.end.i.i:                                       ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %do.body28.i.preheader

do.body28.i.preheader:                            ; preds = %do.end.i.i, %do.end24.i.do.body28.i.preheader_crit_edge
  br label %do.body28.i

do.body28.i:                                      ; preds = %if.end44.i.do.body28.i_crit_edge, %do.body28.i.preheader
  %counter.2.i = phi i32 [ %inc46.i, %if.end44.i.do.body28.i_crit_edge ], [ 0, %do.body28.i.preheader ]
  %call29.i = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 128) #8
  %and30.i = and i32 %call29.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end44.i, label %do.body33.i

do.body33.i:                                      ; preds = %do.body28.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %61 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %61)
  %cmp34.i = icmp ugt i32 %61, 4
  br i1 %cmp34.i, label %do.end38.i, label %do.body33.i.Exit_crit_edge

do.body33.i.Exit_crit_edge:                       ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %Exit

do.end38.i:                                       ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #10
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.82, i32 noundef %call29.i) #11
  br label %Exit

if.end44.i:                                       ; preds = %do.body28.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 1073740) #8
  %inc46.i = add nuw nsw i32 %counter.2.i, 1
  %exitcond77.not.i = icmp eq i32 %inc46.i, 1001
  br i1 %exitcond77.not.i, label %do.body49.i, label %if.end44.i.do.body28.i_crit_edge

if.end44.i.do.body28.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body28.i

do.body49.i:                                      ; preds = %if.end44.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %63 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %63)
  %cmp50.i = icmp ugt i32 %63, 4
  br i1 %cmp50.i, label %do.end54.i, label %do.body49.i.Exit_crit_edge

do.body49.i.Exit_crit_edge:                       ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %Exit

do.end54.i:                                       ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #10
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.82, i32 noundef %call29.i) #11
  br label %do.body104

do.body104:                                       ; preds = %do.end54.i, %do.end8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp105 = icmp ugt i32 %.pr, 4
  br i1 %cmp105, label %do.end110, label %do.body104.Exit_crit_edge

do.body104.Exit_crit_edge:                        ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #10
  br label %Exit

do.end110:                                        ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #10
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %Exit

Exit:                                             ; preds = %do.end110, %do.body104.Exit_crit_edge, %do.body49.i.Exit_crit_edge, %do.end38.i, %do.body33.i.Exit_crit_edge, %do.body3.i.Exit_crit_edge, %do.end93, %do.body87.Exit_crit_edge, %if.then4
  %rtStatus.1 = phi i32 [ 0, %if.then4 ], [ %ret.1.i166, %do.end93 ], [ %ret.1.i166, %do.body87.Exit_crit_edge ], [ 0, %do.end110 ], [ 0, %do.body104.Exit_crit_edge ], [ 1, %do.body33.i.Exit_crit_edge ], [ 1, %do.end38.i ], [ 0, %do.body3.i.Exit_crit_edge ], [ 0, %do.body49.i.Exit_crit_edge ]
  ret i32 %rtStatus.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_firmware(ptr nocapture noundef %pFirmware, ptr noundef %device) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #8
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !215
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.71, ptr noundef %device) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %call) #11
  br label %Exit

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.71) #11
  br label %Exit

if.end9:                                          ; preds = %if.end
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %4)
  %cmp = icmp ugt i32 %4, 16384
  br i1 %cmp, label %if.end9.Exit_crit_edge, label %if.end11

if.end9.Exit_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %Exit

if.end11:                                         ; preds = %if.end9
  %call1.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3520, i32 noundef 2) #12
  %5 = ptrtoint ptr %pFirmware to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.i.i.i, ptr %pFirmware, align 4
  %tobool14.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool14.not, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #11
  br label %Exit

if.end21:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %12 = call ptr @memcpy(ptr %call1.i.i.i, ptr %9, i32 %11)
  %13 = load i32, ptr %7, align 4
  %ulFwLength = getelementptr inbounds %struct.rt_firmware, ptr %pFirmware, i32 0, i32 1
  %14 = ptrtoint ptr %ulFwLength to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ulFwLength, align 4
  call void @release_firmware(ptr noundef %7) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_firmware.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_firmware, %if.then31)) #8
          to label %Exit [label %if.then31], !srcloc !216

if.then31:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %ulFwLength to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ulFwLength, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @load_firmware.__UNIQUE_ID_ddebug346, ptr noundef %device, ptr noundef nonnull @.str.80, i32 noundef %16) #8
  br label %Exit

Exit:                                             ; preds = %if.then31, %if.end21, %do.end18, %if.end9.Exit_crit_edge, %do.end6, %do.end
  %rtStatus.0 = phi i32 [ 0, %do.end ], [ 1, %if.then31 ], [ 0, %do.end18 ], [ 0, %do.end6 ], [ 0, %if.end9.Exit_crit_edge ], [ 1, %if.end21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #8
  ret i32 %rtStatus.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_passing_time_ms(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rtl8188e_InitializeFirmwareVars(ptr nocapture noundef writeonly %padapter) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bFwCurrentInPSMode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 21
  %0 = ptrtoint ptr %bFwCurrentInPSMode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bFwCurrentInPSMode, align 4
  %LastHMEBoxNum = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 19, i32 32
  %1 = ptrtoint ptr %LastHMEBoxNum to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %LastHMEBoxNum, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188e_EfusePowerSwitch(ptr noundef %pAdapter, i8 noundef zeroext %PwrState) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %PwrState)
  %tobool.not = icmp eq i8 %PwrState, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtw_write8(ptr noundef %pAdapter, i32 noundef 207, i8 noundef zeroext 105) #8
  %call1 = tail call zeroext i16 @rtw_read16(ptr noundef %pAdapter, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call1)
  %tobool2.not = icmp sgt i16 %call1, -1
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i16 %call1, -32768
  %call6 = tail call i32 @rtw_write16(ptr noundef %pAdapter, i32 noundef 0, i16 noundef zeroext %or) #8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %call7 = tail call zeroext i16 @rtw_read16(ptr noundef %pAdapter, i32 noundef 2) #8
  %0 = and i16 %call7, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool10.not = icmp eq i16 %0, 0
  br i1 %tobool10.not, label %if.then11, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or13 = or i16 %call7, 4096
  %call15 = tail call i32 @rtw_write16(ptr noundef %pAdapter, i32 noundef 2, i16 noundef zeroext %or13) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end.if.end16_crit_edge
  %call17 = tail call zeroext i16 @rtw_read16(ptr noundef %pAdapter, i32 noundef 8) #8
  %1 = and i16 %call17, 34
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %1)
  %.not = icmp eq i16 %1, 34
  br i1 %.not, label %if.end16.if.end31_crit_edge, label %if.then24

if.end16.if.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %or26 = or i16 %call17, 34
  %call28 = tail call i32 @rtw_write16(ptr noundef %pAdapter, i32 noundef 8, i16 noundef zeroext %or26) #8
  br label %if.end31

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = tail call i32 @rtw_write8(ptr noundef %pAdapter, i32 noundef 207, i8 noundef zeroext 0) #8
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then24, %if.end16.if.end31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw_read16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188e_ReadEFuse(ptr noundef %Adapter, i16 noundef zeroext %_offset, i16 noundef zeroext %_size_byte, ptr nocapture noundef writeonly %pbuf) local_unnamed_addr #0 align 64 {
entry:
  %rtemp8.i.i = alloca [1 x i8], align 1
  %eFuse_Addr.i.i = alloca i16, align 2
  %lo32.i.i.i = alloca i32, align 4
  %hi32.i.i.i = alloca i32, align 4
  %physical_map.i.i = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rtw_IOL_applied(ptr noundef %Adapter) #8
  br i1 %call.i, label %if.then.i, label %entry.if.end4.i_crit_edge

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 @rtl8188eu_InitPowerOn(ptr noundef %Adapter) #8
  tail call fastcc void @iol_mode_enable(ptr noundef %Adapter, i8 noundef zeroext 1) #8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %physical_map.i.i) #8
  %call.i.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 521, i8 noundef zeroext 0) #8
  %0 = call ptr @memset(ptr %physical_map.i.i, i32 255, i32 512)
  %call1.i.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 262, i8 noundef zeroext 105) #8
  %call.i.i.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 136) #8
  %or30.i.i.i = or i8 %call.i.i.i, 2
  %call5.i.i.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 136, i8 noundef zeroext %or30.i.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %land.rhs.i.i.i.while.cond.i.i.i_crit_edge, %if.then.i
  %call6.i.i.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 136) #8
  %and931.i.i.i = and i8 %call6.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and931.i.i.i)
  %tobool.not.i.i.i = icmp eq i8 %and931.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i.iol_execute.exit.i.i_crit_edge, label %land.rhs.i.i.i

while.cond.i.i.i.iol_execute.exit.i.i_crit_edge:  ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iol_execute.exit.i.i

land.rhs.i.i.i:                                   ; preds = %while.cond.i.i.i
  %call10.i.i.i = tail call i32 @rtw_get_passing_time_ms(i32 noundef %1) #8
  %cmp.i.i.i = icmp ult i32 %call10.i.i.i, 1000
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i.while.cond.i.i.i_crit_edge, label %land.rhs.i.i.i.iol_execute.exit.i.i_crit_edge

land.rhs.i.i.i.iol_execute.exit.i.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iol_execute.exit.i.i

land.rhs.i.i.i.while.cond.i.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i.i

iol_execute.exit.i.i:                             ; preds = %land.rhs.i.i.i.iol_execute.exit.i.i_crit_edge, %while.cond.i.i.i.iol_execute.exit.i.i_crit_edge
  %call12.i.i.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 136) #8
  %2 = and i8 %call12.i.i.i, 34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %if.then.i.i, label %iol_execute.exit.i.i.if.end.i.i_crit_edge

iol_execute.exit.i.i.if.end.i.i_crit_edge:        ; preds = %iol_execute.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %iol_execute.exit.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lo32.i.i.i)
  %4 = ptrtoint ptr %lo32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %lo32.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hi32.i.i.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %5 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1.i.i.i = icmp ugt i32 %5, 4
  br i1 %cmp1.i.i.i, label %do.end.i.i.i, label %if.then.i.i.do.end8.i.i.i_crit_edge

if.then.i.i.do.end8.i.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, i32 noundef 0) #11
  br label %do.end8.i.i.i

do.end8.i.i.i:                                    ; preds = %do.end.i.i.i, %if.then.i.i.do.end8.i.i.i_crit_edge
  %call9.i.i.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 262, i8 noundef zeroext 105) #8
  %lo32.i.i.i.2.lo32.i.i.i.2.lo32.i.i.2.lo32.i.i.2.lo32.i.2.lo32.i.2.lo32.2.lo32.2.lo32.2.add.ptr.sroa_idx = getelementptr inbounds i8, ptr %lo32.i.i.i, i32 2
  br label %while.cond.i2.i.i

while.cond.i2.i.i:                                ; preds = %lor.lhs.false.i.i.i.while.cond.i2.i.i_crit_edge, %do.end8.i.i.i
  %len.0.i.i.i = phi i16 [ 0, %do.end8.i.i.i ], [ %len.1.i.i.i, %lor.lhs.false.i.i.i.while.cond.i2.i.i_crit_edge ]
  %count.0.i.i.i = phi i16 [ 0, %do.end8.i.i.i ], [ %count.2.i.i.i, %lor.lhs.false.i.i.i.while.cond.i2.i.i_crit_edge ]
  %i.0.i.i.i = phi i32 [ 0, %do.end8.i.i.i ], [ %inc.i.i.i, %lor.lhs.false.i.i.i.while.cond.i2.i.i_crit_edge ]
  %limit.0.i.i.i = phi i16 [ 512, %do.end8.i.i.i ], [ %limit.1.i.i.i, %lor.lhs.false.i.i.i.while.cond.i2.i.i_crit_edge ]
  %pos.0.i.i.i = phi ptr [ %physical_map.i.i, %do.end8.i.i.i ], [ %pos.2.i.i.i, %lor.lhs.false.i.i.i.while.cond.i2.i.i_crit_edge ]
  %conv12.i.i.i = trunc i32 %i.0.i.i.i to i16
  %call13.i.i.i = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 320, i16 noundef zeroext %conv12.i.i.i) #8
  %call14.i.i.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 323, i8 noundef zeroext 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %call163.i.i.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 323) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call163.i.i.i)
  %tobool.not4.i.i.i = icmp eq i8 %call163.i.i.i, 0
  br i1 %tobool.not4.i.i.i, label %while.cond.i2.i.i.land.rhs.i3.i.i_crit_edge, label %while.cond.i2.i.i.while.end.i.i.i_crit_edge

while.cond.i2.i.i.while.end.i.i.i_crit_edge:      ; preds = %while.cond.i2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i.i

while.cond.i2.i.i.land.rhs.i3.i.i_crit_edge:      ; preds = %while.cond.i2.i.i
  br label %land.rhs.i3.i.i

land.rhs.i3.i.i:                                  ; preds = %do.end35.i.i.i.land.rhs.i3.i.i_crit_edge, %while.cond.i2.i.i.land.rhs.i3.i.i_crit_edge
  %call17.i.i.i = tail call i32 @rtw_get_passing_time_ms(i32 noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call17.i.i.i)
  %cmp18.i.i.i = icmp ult i32 %call17.i.i.i, 1000
  br i1 %cmp18.i.i.i, label %do.body21.i.i.i, label %land.rhs.i3.i.i.while.end.i.i.i_crit_edge

land.rhs.i3.i.i.while.end.i.i.i_crit_edge:        ; preds = %land.rhs.i3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i.i

do.body21.i.i.i:                                  ; preds = %land.rhs.i3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %7 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp22.i.i.i = icmp ugt i32 %7, 4
  br i1 %cmp22.i.i.i, label %do.end27.i.i.i, label %do.body21.i.i.i.do.end35.i.i.i_crit_edge

do.body21.i.i.i.do.end35.i.i.i_crit_edge:         ; preds = %do.body21.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35.i.i.i

do.end27.i.i.i:                                   ; preds = %do.body21.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call30.i.i.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 262) #8
  %conv31.i.i.i = zext i8 %call30.i.i.i to i32
  %call32.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93, i32 noundef 0, i32 noundef %conv31.i.i.i) #11
  br label %do.end35.i.i.i

do.end35.i.i.i:                                   ; preds = %do.end27.i.i.i, %do.body21.i.i.i.do.end35.i.i.i_crit_edge
  tail call void @rtw_usleep_os(i32 noundef 100) #8
  %call16.i.i.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 323) #8
  %tobool.not.i4.i.i = icmp eq i8 %call16.i.i.i, 0
  br i1 %tobool.not.i4.i.i, label %do.end35.i.i.i.land.rhs.i3.i.i_crit_edge, label %do.end35.i.i.i.while.end.i.i.i_crit_edge

do.end35.i.i.i.while.end.i.i.i_crit_edge:         ; preds = %do.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i.i

do.end35.i.i.i.land.rhs.i3.i.i_crit_edge:         ; preds = %do.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i3.i.i

while.end.i.i.i:                                  ; preds = %do.end35.i.i.i.while.end.i.i.i_crit_edge, %land.rhs.i3.i.i.while.end.i.i.i_crit_edge, %while.cond.i2.i.i.while.end.i.i.i_crit_edge
  %call36.i.i.i = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 324) #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %call36.i.i.i) #8
  %9 = ptrtoint ptr %lo32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %lo32.i.i.i, align 4
  %call37.i.i.i = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef 328) #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %call37.i.i.i) #8
  %11 = ptrtoint ptr %hi32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %hi32.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i.i)
  %cmp38.i.i.i = icmp eq i32 %i.0.i.i.i, 0
  br i1 %cmp38.i.i.i, label %if.then40.i.i.i, label %if.else.i.i.i

if.then40.i.i.i:                                  ; preds = %while.end.i.i.i
  %call41.i.i.i = tail call zeroext i16 @rtw_read16(ptr noundef %Adapter, i32 noundef 324) #8
  %12 = and i32 %8, -65536
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  %conv42.i.i.i = trunc i32 %13 to i16
  %sub.i.i.i = add nsw i32 %13, -2
  %conv44.i.i.i = zext i16 %limit.0.i.i.i to i32
  %14 = tail call i32 @llvm.smin.i32(i32 %sub.i.i.i, i32 %conv44.i.i.i) #8
  %conv50.i.i.i = trunc i32 %14 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %15 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp52.i.i.i = icmp ugt i32 %15, 4
  br i1 %cmp52.i.i.i, label %do.end57.i.i.i, label %if.then40.i.i.i.do.end64.i.i.i_crit_edge

if.then40.i.i.i.do.end64.i.i.i_crit_edge:         ; preds = %if.then40.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end64.i.i.i

do.end57.i.i.i:                                   ; preds = %if.then40.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv60.i.i.i = zext i16 %call41.i.i.i to i32
  %call61.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.93, i32 noundef %13, i32 noundef %conv60.i.i.i) #11
  br label %do.end64.i.i.i

do.end64.i.i.i:                                   ; preds = %do.end57.i.i.i, %if.then40.i.i.i.do.end64.i.i.i_crit_edge
  %conv65.i.i.i = and i32 %14, 65535
  %conv66.i.i.i = zext i16 %count.0.i.i.i to i32
  %add67.i.i.i = add nuw nsw i32 %conv66.i.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %conv65.i.i.i, i32 %add67.i.i.i)
  %cmp68.not.i.i.i = icmp ult i32 %conv65.i.i.i, %add67.i.i.i
  %sub74.i.i.i = sub nsw i32 %conv65.i.i.i, %conv66.i.i.i
  %spec.select.i.i.i = select i1 %cmp68.not.i.i.i, i32 %sub74.i.i.i, i32 2
  %16 = call ptr @memcpy(ptr %pos.0.i.i.i, ptr %lo32.i.i.i.2.lo32.i.i.i.2.lo32.i.i.2.lo32.i.i.2.lo32.i.2.lo32.i.2.lo32.2.lo32.2.lo32.2.add.ptr.sroa_idx, i32 %spec.select.i.i.i)
  %17 = trunc i32 %spec.select.i.i.i to i16
  br label %if.end123.i.i.i

if.else.i.i.i:                                    ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv94.i.i.i = zext i16 %limit.0.i.i.i to i32
  %conv95.i.i.i = zext i16 %count.0.i.i.i to i32
  %add96.i.i.i = add nuw nsw i32 %conv95.i.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add96.i.i.i, i32 %conv94.i.i.i)
  %cmp97.not.i.i.i = icmp ugt i32 %add96.i.i.i, %conv94.i.i.i
  %sub103.i.i.i = sub nsw i32 %conv94.i.i.i, %conv95.i.i.i
  %spec.select1.i.i.i = select i1 %cmp97.not.i.i.i, i32 %sub103.i.i.i, i32 4
  %18 = call ptr @memcpy(ptr %pos.0.i.i.i, ptr %lo32.i.i.i, i32 %spec.select1.i.i.i)
  %sub115.i.i.i = sub i16 %limit.0.i.i.i, %count.0.i.i.i
  %cond117.i.i.i = select i1 %cmp97.not.i.i.i, i16 %sub115.i.i.i, i16 4
  br label %if.end123.i.i.i

if.end123.i.i.i:                                  ; preds = %if.else.i.i.i, %do.end64.i.i.i
  %conv124.pre-phi.i.i.i = phi i32 [ %conv94.i.i.i, %if.else.i.i.i ], [ %conv65.i.i.i, %do.end64.i.i.i ]
  %len.1.i.i.i = phi i16 [ %len.0.i.i.i, %if.else.i.i.i ], [ %conv42.i.i.i, %do.end64.i.i.i ]
  %.pn.i.i.i = phi i16 [ %cond117.i.i.i, %if.else.i.i.i ], [ %17, %do.end64.i.i.i ]
  %limit.1.i.i.i = phi i16 [ %limit.0.i.i.i, %if.else.i.i.i ], [ %conv50.i.i.i, %do.end64.i.i.i ]
  %count.1.i.i.i = add i16 %.pn.i.i.i, %count.0.i.i.i
  %conv92.pn.i.i.i = zext i16 %count.1.i.i.i to i32
  %pos.1.i.i.i = getelementptr i8, ptr %physical_map.i.i, i32 %conv92.pn.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %limit.1.i.i.i, i16 %count.1.i.i.i)
  %cmp126.i.i.i = icmp ugt i16 %limit.1.i.i.i, %count.1.i.i.i
  br i1 %cmp126.i.i.i, label %land.lhs.true.i.i.i, label %if.end123.i.i.i.if.end163.i.i.i_crit_edge

if.end123.i.i.i.if.end163.i.i.i_crit_edge:        ; preds = %if.end123.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end123.i.i.i
  %conv128.i.i.i = zext i16 %len.1.i.i.i to i32
  %sub129.i.i.i = add nsw i32 %conv128.i.i.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub129.i.i.i, i32 %conv92.pn.i.i.i)
  %cmp131.i.i.i = icmp sgt i32 %sub129.i.i.i, %conv92.pn.i.i.i
  br i1 %cmp131.i.i.i, label %if.then133.i.i.i, label %land.lhs.true.i.i.i.if.end163.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end163.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163.i.i.i

if.then133.i.i.i:                                 ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add136.i.i.i = add nuw nsw i32 %conv92.pn.i.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add136.i.i.i, i32 %conv124.pre-phi.i.i.i)
  %cmp137.not.i.i.i = icmp ugt i32 %add136.i.i.i, %conv124.pre-phi.i.i.i
  %sub143.i.i.i = sub nsw i32 %conv124.pre-phi.i.i.i, %conv92.pn.i.i.i
  %spec.select2.i.i.i = select i1 %cmp137.not.i.i.i, i32 %sub143.i.i.i, i32 4
  %19 = call ptr @memcpy(ptr %pos.1.i.i.i, ptr %hi32.i.i.i, i32 %spec.select2.i.i.i)
  %sub155.i.i.i = sub i16 %limit.1.i.i.i, %count.1.i.i.i
  %cond157.i.i.i = select i1 %cmp137.not.i.i.i, i16 %sub155.i.i.i, i16 4
  %add159.i.i.i = add i16 %cond157.i.i.i, %count.1.i.i.i
  %conv161.i.i.i = zext i16 %add159.i.i.i to i32
  %add.ptr162.i.i.i = getelementptr i8, ptr %physical_map.i.i, i32 %conv161.i.i.i
  br label %if.end163.i.i.i

if.end163.i.i.i:                                  ; preds = %if.then133.i.i.i, %land.lhs.true.i.i.i.if.end163.i.i.i_crit_edge, %if.end123.i.i.i.if.end163.i.i.i_crit_edge
  %conv165.pre-phi.i.i.i = phi i32 [ %conv161.i.i.i, %if.then133.i.i.i ], [ %conv92.pn.i.i.i, %land.lhs.true.i.i.i.if.end163.i.i.i_crit_edge ], [ %conv92.pn.i.i.i, %if.end123.i.i.i.if.end163.i.i.i_crit_edge ]
  %count.2.i.i.i = phi i16 [ %add159.i.i.i, %if.then133.i.i.i ], [ %count.1.i.i.i, %land.lhs.true.i.i.i.if.end163.i.i.i_crit_edge ], [ %count.1.i.i.i, %if.end123.i.i.i.if.end163.i.i.i_crit_edge ]
  %pos.2.i.i.i = phi ptr [ %add.ptr162.i.i.i, %if.then133.i.i.i ], [ %pos.1.i.i.i, %land.lhs.true.i.i.i.if.end163.i.i.i_crit_edge ], [ %pos.1.i.i.i, %if.end123.i.i.i.if.end163.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %limit.1.i.i.i, i16 %count.2.i.i.i)
  %cmp166.not.i.i.i = icmp ugt i16 %limit.1.i.i.i, %count.2.i.i.i
  br i1 %cmp166.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end163.i.i.i.while.end175.i.i.i_crit_edge

if.end163.i.i.i.while.end175.i.i.i_crit_edge:     ; preds = %if.end163.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end175.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end163.i.i.i
  %conv168.i.i.i = zext i16 %len.1.i.i.i to i32
  %sub169.i.i.i = add nsw i32 %conv168.i.i.i, -2
  %cmp171.not.i.i.i = icmp sgt i32 %sub169.i.i.i, %conv165.pre-phi.i.i.i
  %inc.i.i.i = add i32 %i.0.i.i.i, 1
  br i1 %cmp171.not.i.i.i, label %lor.lhs.false.i.i.i.while.cond.i2.i.i_crit_edge, label %lor.lhs.false.i.i.i.while.end175.i.i.i_crit_edge

lor.lhs.false.i.i.i.while.end175.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end175.i.i.i

lor.lhs.false.i.i.i.while.cond.i2.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i2.i.i

while.end175.i.i.i:                               ; preds = %lor.lhs.false.i.i.i.while.end175.i.i.i_crit_edge, %if.end163.i.i.i.while.end175.i.i.i_crit_edge
  %call176.i.i.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 262, i8 noundef zeroext 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %20 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp178.i.i.i = icmp ugt i32 %20, 4
  br i1 %cmp178.i.i.i, label %do.end183.i.i.i, label %while.end175.i.i.i.efuse_read_phymap_from_txpktbuf.exit.i.i_crit_edge

while.end175.i.i.i.efuse_read_phymap_from_txpktbuf.exit.i.i_crit_edge: ; preds = %while.end175.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efuse_read_phymap_from_txpktbuf.exit.i.i

do.end183.i.i.i:                                  ; preds = %while.end175.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call186.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.93, i32 noundef %conv165.pre-phi.i.i.i) #11
  br label %efuse_read_phymap_from_txpktbuf.exit.i.i

efuse_read_phymap_from_txpktbuf.exit.i.i:         ; preds = %do.end183.i.i.i, %while.end175.i.i.i.efuse_read_phymap_from_txpktbuf.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hi32.i.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lo32.i.i.i)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %efuse_read_phymap_from_txpktbuf.exit.i.i, %iol_execute.exit.i.i.if.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 512) #13
  %tobool.not.i5.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i5.i.i, label %do.body.i.i.i, label %if.end6.i.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %22 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp.i6.i.i = icmp ugt i32 %22, 4
  br i1 %cmp.i6.i.i, label %do.end.i7.i.i, label %do.body.i.i.i.iol_read_efuse.exit.i_crit_edge

do.body.i.i.i.iol_read_efuse.exit.i_crit_edge:    ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iol_read_efuse.exit.i

do.end.i7.i.i:                                    ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104) #11
  br label %iol_read_efuse.exit.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i
  %call7.i.i.i = tail call ptr @rtw_malloc2d(i32 noundef 64, i32 noundef 4, i32 noundef 2) #8
  %tobool8.not.i.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool8.not.i.i.i, label %do.body10.i.i.i, label %if.end6.i.i.i.for.cond24.preheader.i.i.i_crit_edge

if.end6.i.i.i.for.cond24.preheader.i.i.i_crit_edge: ; preds = %if.end6.i.i.i
  br label %for.cond24.preheader.i.i.i

do.body10.i.i.i:                                  ; preds = %if.end6.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %23 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp11.i.i.i = icmp ugt i32 %23, 4
  br i1 %cmp11.i.i.i, label %do.end15.i.i.i, label %do.body10.i.i.i.iol_read_efuse.exit.i_crit_edge

do.body10.i.i.i.iol_read_efuse.exit.i_crit_edge:  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iol_read_efuse.exit.i

do.end15.i.i.i:                                   ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.104) #11
  br label %iol_read_efuse.exit.i

for.cond24.preheader.i.i.i:                       ; preds = %for.cond24.preheader.i.i.i.for.cond24.preheader.i.i.i_crit_edge, %if.end6.i.i.i.for.cond24.preheader.i.i.i_crit_edge
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %for.cond24.preheader.i.i.i.for.cond24.preheader.i.i.i_crit_edge ], [ 0, %if.end6.i.i.i.for.cond24.preheader.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr ptr, ptr %call7.i.i.i, i32 %indvars.iv.i.i.i
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %25, align 2
  %27 = load ptr, ptr %arrayidx.i.i.i, align 4
  %arrayidx30.1.i.i.i = getelementptr i16, ptr %27, i32 1
  %28 = ptrtoint ptr %arrayidx30.1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %arrayidx30.1.i.i.i, align 2
  %29 = load ptr, ptr %arrayidx.i.i.i, align 4
  %arrayidx30.2.i.i.i = getelementptr i16, ptr %29, i32 2
  %30 = ptrtoint ptr %arrayidx30.2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %arrayidx30.2.i.i.i, align 2
  %31 = load ptr, ptr %arrayidx.i.i.i, align 4
  %arrayidx30.3.i.i.i = getelementptr i16, ptr %31, i32 3
  %32 = ptrtoint ptr %arrayidx30.3.i.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %arrayidx30.3.i.i.i, align 2
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i, 64
  br i1 %exitcond.not.i.i.i, label %for.end33.i.i.i, label %for.cond24.preheader.i.i.i.for.cond24.preheader.i.i.i_crit_edge

for.cond24.preheader.i.i.i.for.cond24.preheader.i.i.i_crit_edge: ; preds = %for.cond24.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond24.preheader.i.i.i

for.end33.i.i.i:                                  ; preds = %for.cond24.preheader.i.i.i
  %33 = ptrtoint ptr %physical_map.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %physical_map.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %cmp36.not.i.i.i = icmp eq i8 %34, -1
  br i1 %cmp36.not.i.i.i, label %do.body41.i.i.i, label %for.end33.i.i.i.land.rhs.i9.i.i_crit_edge

for.end33.i.i.i.land.rhs.i9.i.i_crit_edge:        ; preds = %for.end33.i.i.i
  br label %land.rhs.i9.i.i

do.body41.i.i.i:                                  ; preds = %for.end33.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %35 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp42.i.i.i = icmp ugt i32 %35, 4
  br i1 %cmp42.i.i.i, label %do.end47.i.i.i, label %do.body41.i.i.i.iol_read_efuse.exit.i_crit_edge

do.body41.i.i.i.iol_read_efuse.exit.i_crit_edge:  ; preds = %do.body41.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iol_read_efuse.exit.i

do.end47.i.i.i:                                   ; preds = %do.body41.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call51.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef 0, i32 noundef 255) #11
  br label %iol_read_efuse.exit.i

land.rhs.i9.i.i:                                  ; preds = %land.rhs.i9.i.i.backedge, %for.end33.i.i.i.land.rhs.i9.i.i_crit_edge
  %rtemp8.0321.i.i.i = phi i8 [ %rtemp8.0321.i.i.i.be, %land.rhs.i9.i.i.backedge ], [ %34, %for.end33.i.i.i.land.rhs.i9.i.i_crit_edge ]
  %eFuse_Addr.0320.i.i.i = phi i16 [ %eFuse_Addr.0320.i.i.i.be, %land.rhs.i9.i.i.backedge ], [ 1, %for.end33.i.i.i.land.rhs.i9.i.i_crit_edge ]
  %conv59.i.i.i = zext i16 %eFuse_Addr.0320.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %eFuse_Addr.0320.i.i.i)
  %cmp60.i.i.i = icmp ult i16 %eFuse_Addr.0320.i.i.i, 256
  br i1 %cmp60.i.i.i, label %while.body.i.i.i, label %land.rhs.i9.i.i.for.cond182.preheader.i.i.i.preheader_crit_edge

land.rhs.i9.i.i.for.cond182.preheader.i.i.i.preheader_crit_edge: ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond182.preheader.i.i.i.preheader

while.body.i.i.i:                                 ; preds = %land.rhs.i9.i.i
  %36 = and i8 %rtemp8.0321.i.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %36)
  %cmp63.i.i.i = icmp eq i8 %36, 15
  br i1 %cmp63.i.i.i, label %if.then65.i.i.i, label %if.end107.thread.i.i.i

if.then65.i.i.i:                                  ; preds = %while.body.i.i.i
  %add.ptr70.i.i.i = getelementptr i8, ptr %physical_map.i.i, i32 %conv59.i.i.i
  %37 = ptrtoint ptr %add.ptr70.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr70.i.i.i, align 1
  %39 = and i8 %38, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %39)
  %cmp73.i.i.i = icmp eq i8 %39, 15
  br i1 %cmp73.i.i.i, label %if.then75.i.i.i, label %if.end107.i.i.i

if.then75.i.i.i:                                  ; preds = %if.then65.i.i.i
  %inc76.i.i.i = add nuw nsw i16 %eFuse_Addr.0320.i.i.i, 1
  %conv77.i.i.i = zext i16 %inc76.i.i.i to i32
  %add.ptr78.i.i.i = getelementptr i8, ptr %physical_map.i.i, i32 %conv77.i.i.i
  %40 = ptrtoint ptr %add.ptr78.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr78.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %41)
  %cmp80.not.i.i.i = icmp ne i8 %41, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %eFuse_Addr.0320.i.i.i)
  %cmp83.i.i.i = icmp ult i16 %eFuse_Addr.0320.i.i.i, 255
  %or.cond.i.i.i = select i1 %cmp80.not.i.i.i, i1 %cmp83.i.i.i, i1 false
  %inc86.i.i.i = add nuw nsw i16 %eFuse_Addr.0320.i.i.i, 2
  %eFuse_Addr.1.i.i.i = select i1 %or.cond.i.i.i, i16 %inc86.i.i.i, i16 %inc76.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %41)
  %cmp57.not.i.i.i = icmp eq i8 %41, -1
  br i1 %cmp57.not.i.i.i, label %if.then75.i.i.i.for.cond182.preheader.i.i.i.preheader_crit_edge, label %if.then75.i.i.i.land.rhs.i9.i.i.backedge_crit_edge

if.then75.i.i.i.land.rhs.i9.i.i.backedge_crit_edge: ; preds = %if.then75.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i9.i.i.backedge

if.then75.i.i.i.for.cond182.preheader.i.i.i.preheader_crit_edge: ; preds = %if.then75.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond182.preheader.i.i.i.preheader

land.rhs.i9.i.i.backedge:                         ; preds = %if.end163.i10.i.i.land.rhs.i9.i.i.backedge_crit_edge, %if.then75.i.i.i.land.rhs.i9.i.i.backedge_crit_edge
  %rtemp8.0321.i.i.i.be = phi i8 [ %41, %if.then75.i.i.i.land.rhs.i9.i.i.backedge_crit_edge ], [ %93, %if.end163.i10.i.i.land.rhs.i9.i.i.backedge_crit_edge ]
  %eFuse_Addr.0320.i.i.i.be = phi i16 [ %eFuse_Addr.1.i.i.i, %if.then75.i.i.i.land.rhs.i9.i.i.backedge_crit_edge ], [ %eFuse_Addr.6.i.i.i, %if.end163.i10.i.i.land.rhs.i9.i.i.backedge_crit_edge ]
  br label %land.rhs.i9.i.i

if.end107.thread.i.i.i:                           ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = lshr i8 %rtemp8.0321.i.i.i, 4
  %and105.i.i.i = and i8 %rtemp8.0321.i.i.i, 15
  br label %for.cond112.preheader.i.i.i

if.end107.i.i.i:                                  ; preds = %if.then65.i.i.i
  %43 = lshr i8 %rtemp8.0321.i.i.i, 5
  %and90.i.i.i = lshr i8 %38, 1
  %44 = and i8 %and90.i.i.i, 120
  %or.i.i.i = or i8 %44, %43
  %inc97.i.i.i = add nuw nsw i16 %eFuse_Addr.0320.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %or.i.i.i)
  %cmp109.i.i.i = icmp ult i8 %or.i.i.i, 64
  br i1 %cmp109.i.i.i, label %if.end107.i.i.i.for.cond112.preheader.i.i.i_crit_edge, label %if.end107.i.i.i.if.end163.i10.i.i_crit_edge

if.end107.i.i.i.if.end163.i10.i.i_crit_edge:      ; preds = %if.end107.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163.i10.i.i

if.end107.i.i.i.for.cond112.preheader.i.i.i_crit_edge: ; preds = %if.end107.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond112.preheader.i.i.i

for.cond112.preheader.i.i.i:                      ; preds = %if.end107.i.i.i.for.cond112.preheader.i.i.i_crit_edge, %if.end107.thread.i.i.i
  %eFuse_Addr.2366.i.i.i = phi i16 [ %eFuse_Addr.0320.i.i.i, %if.end107.thread.i.i.i ], [ %inc97.i.i.i, %if.end107.i.i.i.for.cond112.preheader.i.i.i_crit_edge ]
  %wren.0365.i.i.i = phi i8 [ %and105.i.i.i, %if.end107.thread.i.i.i ], [ %39, %if.end107.i.i.i.for.cond112.preheader.i.i.i_crit_edge ]
  %offset.0364.i.i.i = phi i8 [ %42, %if.end107.thread.i.i.i ], [ %or.i.i.i, %if.end107.i.i.i.for.cond112.preheader.i.i.i_crit_edge ]
  %conv108.i.i.i = zext i8 %offset.0364.i.i.i to i32
  %arrayidx129.i.i.i = getelementptr ptr, ptr %call7.i.i.i, i32 %conv108.i.i.i
  %45 = and i8 %wren.0365.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool119.not.i.i.i = icmp eq i8 %45, 0
  br i1 %tobool119.not.i.i.i, label %if.then120.i.i.i, label %for.cond112.preheader.i.i.i.if.end156.i.i.i_crit_edge

for.cond112.preheader.i.i.i.if.end156.i.i.i_crit_edge: ; preds = %for.cond112.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156.i.i.i

if.then120.i.i.i:                                 ; preds = %for.cond112.preheader.i.i.i
  %conv121.i.i.i = zext i16 %eFuse_Addr.2366.i.i.i to i32
  %add.ptr122.i.i.i = getelementptr i8, ptr %physical_map.i.i, i32 %conv121.i.i.i
  %46 = ptrtoint ptr %add.ptr122.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr122.i.i.i, align 1
  %inc123.i.i.i = add nuw nsw i16 %eFuse_Addr.2366.i.i.i, 1
  %conv127.i.i.i = zext i8 %47 to i16
  %48 = ptrtoint ptr %arrayidx129.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx129.i.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv127.i.i.i, ptr %49, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %eFuse_Addr.2366.i.i.i)
  %cmp133.i.i.i = icmp ugt i16 %eFuse_Addr.2366.i.i.i, 254
  br i1 %cmp133.i.i.i, label %if.then120.i.i.i.if.end163.i10.i.i_crit_edge, label %if.end136.i.i.i

if.then120.i.i.i.if.end163.i10.i.i_crit_edge:     ; preds = %if.then120.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163.i10.i.i

if.end136.i.i.i:                                  ; preds = %if.then120.i.i.i
  %conv132.i.i.i = zext i16 %inc123.i.i.i to i32
  %add.ptr138.i.i.i = getelementptr i8, ptr %physical_map.i.i, i32 %conv132.i.i.i
  %51 = ptrtoint ptr %add.ptr138.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr138.i.i.i, align 1
  %inc139.i.i.i = add nuw nsw i16 %eFuse_Addr.2366.i.i.i, 2
  %conv142.i.i.i = zext i8 %52 to i16
  %shl.i.i.i = shl nuw i16 %conv142.i.i.i, 8
  %53 = ptrtoint ptr %arrayidx129.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx129.i.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %54, align 2
  %or149.i.i.i = or i16 %shl.i.i.i, %56
  store i16 %or149.i.i.i, ptr %54, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %eFuse_Addr.2366.i.i.i)
  %cmp152.i.i.i = icmp eq i16 %eFuse_Addr.2366.i.i.i, 254
  br i1 %cmp152.i.i.i, label %if.end136.i.i.i.if.end163.i10.i.i_crit_edge, label %if.end136.i.i.i.if.end156.i.i.i_crit_edge

if.end136.i.i.i.if.end156.i.i.i_crit_edge:        ; preds = %if.end136.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156.i.i.i

if.end136.i.i.i.if.end163.i10.i.i_crit_edge:      ; preds = %if.end136.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163.i10.i.i

if.end156.i.i.i:                                  ; preds = %if.end136.i.i.i.if.end156.i.i.i_crit_edge, %for.cond112.preheader.i.i.i.if.end156.i.i.i_crit_edge
  %eFuse_Addr.4.i.i.i = phi i16 [ %eFuse_Addr.2366.i.i.i, %for.cond112.preheader.i.i.i.if.end156.i.i.i_crit_edge ], [ %inc139.i.i.i, %if.end136.i.i.i.if.end156.i.i.i_crit_edge ]
  %57 = and i8 %wren.0365.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool119.not.1.i.i.i = icmp eq i8 %57, 0
  br i1 %tobool119.not.1.i.i.i, label %if.then120.1.i.i.i, label %if.end156.i.i.i.if.end156.1.i.i.i_crit_edge

if.end156.i.i.i.if.end156.1.i.i.i_crit_edge:      ; preds = %if.end156.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156.1.i.i.i

if.then120.1.i.i.i:                               ; preds = %if.end156.i.i.i
  %conv121.1.i.i.i = zext i16 %eFuse_Addr.4.i.i.i to i32
  %add.ptr122.1.i.i.i = getelementptr i8, ptr %physical_map.i.i, i32 %conv121.1.i.i.i
  %58 = ptrtoint ptr %add.ptr122.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %add.ptr122.1.i.i.i, align 1
  %inc123.1.i.i.i = add nuw nsw i16 %eFuse_Addr.4.i.i.i, 1
  %conv127.1.i.i.i = zext i8 %59 to i16
  %60 = ptrtoint ptr %arrayidx129.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx129.i.i.i, align 4
  %arrayidx131.1.i.i.i = getelementptr i16, ptr %61, i32 1
  %62 = ptrtoint ptr %arrayidx131.1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv127.1.i.i.i, ptr %arrayidx131.1.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %eFuse_Addr.4.i.i.i)
  %cmp133.1.i.i.i = icmp ugt i16 %eFuse_Addr.4.i.i.i, 254
  br i1 %cmp133.1.i.i.i, label %if.then120.1.i.i.i.if.end163.i10.i.i_crit_edge, label %if.end136.1.i.i.i

if.then120.1.i.i.i.if.end163.i10.i.i_crit_edge:   ; preds = %if.then120.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163.i10.i.i

if.end136.1.i.i.i:                                ; preds = %if.then120.1.i.i.i
  %conv132.1.i.i.i = zext i16 %inc123.1.i.i.i to i32
  %add.ptr138.1.i.i.i = getelementptr i8, ptr %physical_map.i.i, i32 %conv132.1.i.i.i
  %63 = ptrtoint ptr %add.ptr138.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %add.ptr138.1.i.i.i, align 1
  %inc139.1.i.i.i = add nuw nsw i16 %eFuse_Addr.4.i.i.i, 2
  %conv142.1.i.i.i = zext i8 %64 to i16
  %shl.1.i.i.i = shl nuw i16 %conv142.1.i.i.i, 8
  %65 = ptrtoint ptr %arrayidx129.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx129.i.i.i, align 4
  %arrayidx147.1.i.i.i = getelementptr i16, ptr %66, i32 1
  %67 = ptrtoint ptr %arrayidx147.1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx147.1.i.i.i, align 2
  %or149.1.i.i.i = or i16 %shl.1.i.i.i, %68
  store i16 %or149.1.i.i.i, ptr %arrayidx147.1.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %eFuse_Addr.4.i.i.i)
  %cmp152.1.i.i.i = icmp eq i16 %eFuse_Addr.4.i.i.i, 254
  br i1 %cmp152.1.i.i.i, label %if.end136.1.i.i.i.if.end163.i10.i.i_crit_edge, label %if.end136.1.i.i.i.if.end156.1.i.i.i_crit_edge

if.end136.1.i.i.i.if.end156.1.i.i.i_crit_edge:    ; preds = %if.end136.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156.1.i.i.i

if.end136.1.i.i.i.if.end163.i10.i.i_crit_edge:    ; preds = %if.end136.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163.i10.i.i

if.end156.1.i.i.i:                                ; preds = %if.end136.1.i.i.i.if.end156.1.i.i.i_crit_edge, %if.end156.i.i.i.if.end156.1.i.i.i_crit_edge
  %eFuse_Addr.4.1.i.i.i = phi i16 [ %eFuse_Addr.4.i.i.i, %if.end156.i.i.i.if.end156.1.i.i.i_crit_edge ], [ %inc139.1.i.i.i, %if.end136.1.i.i.i.if.end156.1.i.i.i_crit_edge ]
  %69 = and i8 %wren.0365.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool119.not.2.i.i.i = icmp eq i8 %69, 0
  br i1 %tobool119.not.2.i.i.i, label %if.then120.2.i.i.i, label %if.end156.1.i.i.i.if.end156.2.i.i.i_crit_edge

if.end156.1.i.i.i.if.end156.2.i.i.i_crit_edge:    ; preds = %if.end156.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156.2.i.i.i

if.then120.2.i.i.i:                               ; preds = %if.end156.1.i.i.i
  %conv121.2.i.i.i = zext i16 %eFuse_Addr.4.1.i.i.i to i32
  %add.ptr122.2.i.i.i = getelementptr i8, ptr %physical_map.i.i, i32 %conv121.2.i.i.i
  %70 = ptrtoint ptr %add.ptr122.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %add.ptr122.2.i.i.i, align 1
  %inc123.2.i.i.i = add nuw nsw i16 %eFuse_Addr.4.1.i.i.i, 1
  %conv127.2.i.i.i = zext i8 %71 to i16
  %72 = ptrtoint ptr %arrayidx129.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx129.i.i.i, align 4
  %arrayidx131.2.i.i.i = getelementptr i16, ptr %73, i32 2
  %74 = ptrtoint ptr %arrayidx131.2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv127.2.i.i.i, ptr %arrayidx131.2.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %eFuse_Addr.4.1.i.i.i)
  %cmp133.2.i.i.i = icmp ugt i16 %eFuse_Addr.4.1.i.i.i, 254
  br i1 %cmp133.2.i.i.i, label %if.then120.2.i.i.i.if.end163.i10.i.i_crit_edge, label %if.end136.2.i.i.i

if.then120.2.i.i.i.if.end163.i10.i.i_crit_edge:   ; preds = %if.then120.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163.i10.i.i

if.end136.2.i.i.i:                                ; preds = %if.then120.2.i.i.i
  %conv132.2.i.i.i = zext i16 %inc123.2.i.i.i to i32
  %add.ptr138.2.i.i.i = getelementptr i8, ptr %physical_map.i.i, i32 %conv132.2.i.i.i
  %75 = ptrtoint ptr %add.ptr138.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %add.ptr138.2.i.i.i, align 1
  %inc139.2.i.i.i = add nuw nsw i16 %eFuse_Addr.4.1.i.i.i, 2
  %conv142.2.i.i.i = zext i8 %76 to i16
  %shl.2.i.i.i = shl nuw i16 %conv142.2.i.i.i, 8
  %77 = ptrtoint ptr %arrayidx129.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx129.i.i.i, align 4
  %arrayidx147.2.i.i.i = getelementptr i16, ptr %78, i32 2
  %79 = ptrtoint ptr %arrayidx147.2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx147.2.i.i.i, align 2
  %or149.2.i.i.i = or i16 %shl.2.i.i.i, %80
  store i16 %or149.2.i.i.i, ptr %arrayidx147.2.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %eFuse_Addr.4.1.i.i.i)
  %cmp152.2.i.i.i = icmp eq i16 %eFuse_Addr.4.1.i.i.i, 254
  br i1 %cmp152.2.i.i.i, label %if.end136.2.i.i.i.if.end163.i10.i.i_crit_edge, label %if.end136.2.i.i.i.if.end156.2.i.i.i_crit_edge

if.end136.2.i.i.i.if.end156.2.i.i.i_crit_edge:    ; preds = %if.end136.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156.2.i.i.i

if.end136.2.i.i.i.if.end163.i10.i.i_crit_edge:    ; preds = %if.end136.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163.i10.i.i

if.end156.2.i.i.i:                                ; preds = %if.end136.2.i.i.i.if.end156.2.i.i.i_crit_edge, %if.end156.1.i.i.i.if.end156.2.i.i.i_crit_edge
  %eFuse_Addr.4.2.i.i.i = phi i16 [ %eFuse_Addr.4.1.i.i.i, %if.end156.1.i.i.i.if.end156.2.i.i.i_crit_edge ], [ %inc139.2.i.i.i, %if.end136.2.i.i.i.if.end156.2.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %wren.0365.i.i.i)
  %tobool119.not.3.i.i.i = icmp ult i8 %wren.0365.i.i.i, 8
  br i1 %tobool119.not.3.i.i.i, label %if.then120.3.i.i.i, label %if.end156.2.i.i.i.if.end156.3.i.i.i_crit_edge

if.end156.2.i.i.i.if.end156.3.i.i.i_crit_edge:    ; preds = %if.end156.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156.3.i.i.i

if.then120.3.i.i.i:                               ; preds = %if.end156.2.i.i.i
  %conv121.3.i.i.i = zext i16 %eFuse_Addr.4.2.i.i.i to i32
  %add.ptr122.3.i.i.i = getelementptr i8, ptr %physical_map.i.i, i32 %conv121.3.i.i.i
  %81 = ptrtoint ptr %add.ptr122.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %add.ptr122.3.i.i.i, align 1
  %inc123.3.i.i.i = add nuw nsw i16 %eFuse_Addr.4.2.i.i.i, 1
  %conv127.3.i.i.i = zext i8 %82 to i16
  %83 = ptrtoint ptr %arrayidx129.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx129.i.i.i, align 4
  %arrayidx131.3.i.i.i = getelementptr i16, ptr %84, i32 3
  %85 = ptrtoint ptr %arrayidx131.3.i.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv127.3.i.i.i, ptr %arrayidx131.3.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %eFuse_Addr.4.2.i.i.i)
  %cmp133.3.i.i.i = icmp ugt i16 %eFuse_Addr.4.2.i.i.i, 254
  br i1 %cmp133.3.i.i.i, label %if.then120.3.i.i.i.if.end163.i10.i.i_crit_edge, label %if.end136.3.i.i.i

if.then120.3.i.i.i.if.end163.i10.i.i_crit_edge:   ; preds = %if.then120.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163.i10.i.i

if.end136.3.i.i.i:                                ; preds = %if.then120.3.i.i.i
  %conv132.3.i.i.i = zext i16 %inc123.3.i.i.i to i32
  %add.ptr138.3.i.i.i = getelementptr i8, ptr %physical_map.i.i, i32 %conv132.3.i.i.i
  %86 = ptrtoint ptr %add.ptr138.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %add.ptr138.3.i.i.i, align 1
  %inc139.3.i.i.i = add nuw nsw i16 %eFuse_Addr.4.2.i.i.i, 2
  %conv142.3.i.i.i = zext i8 %87 to i16
  %shl.3.i.i.i = shl nuw i16 %conv142.3.i.i.i, 8
  %88 = ptrtoint ptr %arrayidx129.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx129.i.i.i, align 4
  %arrayidx147.3.i.i.i = getelementptr i16, ptr %89, i32 3
  %90 = ptrtoint ptr %arrayidx147.3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx147.3.i.i.i, align 2
  %or149.3.i.i.i = or i16 %shl.3.i.i.i, %91
  store i16 %or149.3.i.i.i, ptr %arrayidx147.3.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %eFuse_Addr.4.2.i.i.i)
  %cmp152.3.i.i.i = icmp eq i16 %eFuse_Addr.4.2.i.i.i, 254
  br i1 %cmp152.3.i.i.i, label %if.end136.3.i.i.i.if.end163.i10.i.i_crit_edge, label %if.end136.3.i.i.i.if.end156.3.i.i.i_crit_edge

if.end136.3.i.i.i.if.end156.3.i.i.i_crit_edge:    ; preds = %if.end136.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156.3.i.i.i

if.end136.3.i.i.i.if.end163.i10.i.i_crit_edge:    ; preds = %if.end136.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163.i10.i.i

if.end156.3.i.i.i:                                ; preds = %if.end136.3.i.i.i.if.end156.3.i.i.i_crit_edge, %if.end156.2.i.i.i.if.end156.3.i.i.i_crit_edge
  %eFuse_Addr.4.3.i.i.i = phi i16 [ %eFuse_Addr.4.2.i.i.i, %if.end156.2.i.i.i.if.end156.3.i.i.i_crit_edge ], [ %inc139.3.i.i.i, %if.end136.3.i.i.i.if.end156.3.i.i.i_crit_edge ]
  br label %if.end163.i10.i.i

if.end163.i10.i.i:                                ; preds = %if.end156.3.i.i.i, %if.end136.3.i.i.i.if.end163.i10.i.i_crit_edge, %if.then120.3.i.i.i.if.end163.i10.i.i_crit_edge, %if.end136.2.i.i.i.if.end163.i10.i.i_crit_edge, %if.then120.2.i.i.i.if.end163.i10.i.i_crit_edge, %if.end136.1.i.i.i.if.end163.i10.i.i_crit_edge, %if.then120.1.i.i.i.if.end163.i10.i.i_crit_edge, %if.end136.i.i.i.if.end163.i10.i.i_crit_edge, %if.then120.i.i.i.if.end163.i10.i.i_crit_edge, %if.end107.i.i.i.if.end163.i10.i.i_crit_edge
  %eFuse_Addr.5.i.i.i = phi i16 [ %inc97.i.i.i, %if.end107.i.i.i.if.end163.i10.i.i_crit_edge ], [ %inc123.i.i.i, %if.then120.i.i.i.if.end163.i10.i.i_crit_edge ], [ %inc123.1.i.i.i, %if.then120.1.i.i.i.if.end163.i10.i.i_crit_edge ], [ %inc123.2.i.i.i, %if.then120.2.i.i.i.if.end163.i10.i.i_crit_edge ], [ %inc123.3.i.i.i, %if.then120.3.i.i.i.if.end163.i10.i.i_crit_edge ], [ 256, %if.end136.i.i.i.if.end163.i10.i.i_crit_edge ], [ 256, %if.end136.1.i.i.i.if.end163.i10.i.i_crit_edge ], [ 256, %if.end136.2.i.i.i.if.end163.i10.i.i_crit_edge ], [ 256, %if.end136.3.i.i.i.if.end163.i10.i.i_crit_edge ], [ %eFuse_Addr.4.3.i.i.i, %if.end156.3.i.i.i ]
  %conv164.i.i.i = zext i16 %eFuse_Addr.5.i.i.i to i32
  %add.ptr165.i.i.i = getelementptr i8, ptr %physical_map.i.i, i32 %conv164.i.i.i
  %92 = ptrtoint ptr %add.ptr165.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %add.ptr165.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %93)
  %cmp167.not.i.i.i = icmp ne i8 %93, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %eFuse_Addr.5.i.i.i)
  %cmp171.i.i.i = icmp ult i16 %eFuse_Addr.5.i.i.i, 256
  %or.cond310.i.i.i = select i1 %cmp167.not.i.i.i, i1 %cmp171.i.i.i, i1 false
  %inc174.i.i.i = zext i1 %or.cond310.i.i.i to i16
  %eFuse_Addr.6.i.i.i = add nuw nsw i16 %eFuse_Addr.5.i.i.i, %inc174.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %93)
  %cmp57.not319.i.i.i = icmp eq i8 %93, -1
  br i1 %cmp57.not319.i.i.i, label %if.end163.i10.i.i.for.cond182.preheader.i.i.i.preheader_crit_edge, label %if.end163.i10.i.i.land.rhs.i9.i.i.backedge_crit_edge

if.end163.i10.i.i.land.rhs.i9.i.i.backedge_crit_edge: ; preds = %if.end163.i10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i9.i.i.backedge

if.end163.i10.i.i.for.cond182.preheader.i.i.i.preheader_crit_edge: ; preds = %if.end163.i10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond182.preheader.i.i.i.preheader

for.cond182.preheader.i.i.i.preheader:            ; preds = %if.end163.i10.i.i.for.cond182.preheader.i.i.i.preheader_crit_edge, %if.then75.i.i.i.for.cond182.preheader.i.i.i.preheader_crit_edge, %land.rhs.i9.i.i.for.cond182.preheader.i.i.i.preheader_crit_edge
  br label %for.cond182.preheader.i.i.i

for.cond182.preheader.i.i.i:                      ; preds = %for.cond182.preheader.i.i.i.for.cond182.preheader.i.i.i_crit_edge, %for.cond182.preheader.i.i.i.preheader
  %indvars.iv355.i.i.i = phi i32 [ %indvars.iv.next356.i.i.i, %for.cond182.preheader.i.i.i.for.cond182.preheader.i.i.i_crit_edge ], [ 0, %for.cond182.preheader.i.i.i.preheader ]
  %arrayidx188.i.i.i = getelementptr ptr, ptr %call7.i.i.i, i32 %indvars.iv355.i.i.i
  %mul.i.i.i = shl nuw nsw i32 %indvars.iv355.i.i.i, 3
  %add210.i.i.i = or i32 %mul.i.i.i, 1
  %94 = ptrtoint ptr %arrayidx188.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx188.i.i.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %95, align 2
  %conv193.i.i.i = trunc i16 %97 to i8
  %arrayidx197.i.i.i = getelementptr i8, ptr %call7.i.i.i.i.i, i32 %mul.i.i.i
  %98 = ptrtoint ptr %arrayidx197.i.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv193.i.i.i, ptr %arrayidx197.i.i.i, align 8
  %99 = load ptr, ptr %arrayidx188.i.i.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %99, align 2
  %102 = lshr i16 %101, 8
  %conv205.i.i.i = trunc i16 %102 to i8
  %arrayidx212.i.i.i = getelementptr i8, ptr %call7.i.i.i.i.i, i32 %add210.i.i.i
  %103 = ptrtoint ptr %arrayidx212.i.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv205.i.i.i, ptr %arrayidx212.i.i.i, align 1
  %104 = load ptr, ptr %arrayidx188.i.i.i, align 4
  %arrayidx190.1.i.i.i = getelementptr i16, ptr %104, i32 1
  %105 = ptrtoint ptr %arrayidx190.1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx190.1.i.i.i, align 2
  %conv193.1.i.i.i = trunc i16 %106 to i8
  %add.1.i.i.i = or i32 %mul.i.i.i, 2
  %arrayidx197.1.i.i.i = getelementptr i8, ptr %call7.i.i.i.i.i, i32 %add.1.i.i.i
  %107 = ptrtoint ptr %arrayidx197.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv193.1.i.i.i, ptr %arrayidx197.1.i.i.i, align 2
  %108 = load ptr, ptr %arrayidx188.i.i.i, align 4
  %arrayidx201.1.i.i.i = getelementptr i16, ptr %108, i32 1
  %109 = ptrtoint ptr %arrayidx201.1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx201.1.i.i.i, align 2
  %111 = lshr i16 %110, 8
  %conv205.1.i.i.i = trunc i16 %111 to i8
  %add211.1.i.i.i = or i32 %mul.i.i.i, 3
  %arrayidx212.1.i.i.i = getelementptr i8, ptr %call7.i.i.i.i.i, i32 %add211.1.i.i.i
  %112 = ptrtoint ptr %arrayidx212.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv205.1.i.i.i, ptr %arrayidx212.1.i.i.i, align 1
  %113 = load ptr, ptr %arrayidx188.i.i.i, align 4
  %arrayidx190.2.i.i.i = getelementptr i16, ptr %113, i32 2
  %114 = ptrtoint ptr %arrayidx190.2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx190.2.i.i.i, align 2
  %conv193.2.i.i.i = trunc i16 %115 to i8
  %add.2.i.i.i = or i32 %mul.i.i.i, 4
  %arrayidx197.2.i.i.i = getelementptr i8, ptr %call7.i.i.i.i.i, i32 %add.2.i.i.i
  %116 = ptrtoint ptr %arrayidx197.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv193.2.i.i.i, ptr %arrayidx197.2.i.i.i, align 4
  %117 = load ptr, ptr %arrayidx188.i.i.i, align 4
  %arrayidx201.2.i.i.i = getelementptr i16, ptr %117, i32 2
  %118 = ptrtoint ptr %arrayidx201.2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %arrayidx201.2.i.i.i, align 2
  %120 = lshr i16 %119, 8
  %conv205.2.i.i.i = trunc i16 %120 to i8
  %add211.2.i.i.i = or i32 %mul.i.i.i, 5
  %arrayidx212.2.i.i.i = getelementptr i8, ptr %call7.i.i.i.i.i, i32 %add211.2.i.i.i
  %121 = ptrtoint ptr %arrayidx212.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv205.2.i.i.i, ptr %arrayidx212.2.i.i.i, align 1
  %122 = load ptr, ptr %arrayidx188.i.i.i, align 4
  %arrayidx190.3.i.i.i = getelementptr i16, ptr %122, i32 3
  %123 = ptrtoint ptr %arrayidx190.3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx190.3.i.i.i, align 2
  %conv193.3.i.i.i = trunc i16 %124 to i8
  %add.3.i.i.i = or i32 %mul.i.i.i, 6
  %arrayidx197.3.i.i.i = getelementptr i8, ptr %call7.i.i.i.i.i, i32 %add.3.i.i.i
  %125 = ptrtoint ptr %arrayidx197.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv193.3.i.i.i, ptr %arrayidx197.3.i.i.i, align 2
  %126 = load ptr, ptr %arrayidx188.i.i.i, align 4
  %arrayidx201.3.i.i.i = getelementptr i16, ptr %126, i32 3
  %127 = ptrtoint ptr %arrayidx201.3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx201.3.i.i.i, align 2
  %129 = lshr i16 %128, 8
  %conv205.3.i.i.i = trunc i16 %129 to i8
  %add211.3.i.i.i = or i32 %mul.i.i.i, 7
  %arrayidx212.3.i.i.i = getelementptr i8, ptr %call7.i.i.i.i.i, i32 %add211.3.i.i.i
  %130 = ptrtoint ptr %arrayidx212.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv205.3.i.i.i, ptr %arrayidx212.3.i.i.i, align 1
  %indvars.iv.next356.i.i.i = add nuw nsw i32 %indvars.iv355.i.i.i, 1
  %exitcond357.not.i.i.i = icmp eq i32 %indvars.iv.next356.i.i.i, 64
  br i1 %exitcond357.not.i.i.i, label %for.cond219.preheader.i.i.i, label %for.cond182.preheader.i.i.i.for.cond182.preheader.i.i.i_crit_edge

for.cond182.preheader.i.i.i.for.cond182.preheader.i.i.i_crit_edge: ; preds = %for.cond182.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond182.preheader.i.i.i

for.cond219.preheader.i.i.i:                      ; preds = %for.cond182.preheader.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %_size_byte)
  %cmp222340.not.i.i.i = icmp eq i16 %_size_byte, 0
  br i1 %cmp222340.not.i.i.i, label %for.cond219.preheader.i.i.i.iol_read_efuse.exit.i_crit_edge, label %for.body224.lr.ph.i.i.i

for.cond219.preheader.i.i.i.iol_read_efuse.exit.i_crit_edge: ; preds = %for.cond219.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iol_read_efuse.exit.i

for.body224.lr.ph.i.i.i:                          ; preds = %for.cond219.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv225.i.i.i = zext i16 %_offset to i32
  %uglygep.i.i.i = getelementptr i8, ptr %call7.i.i.i.i.i, i32 %conv225.i.i.i
  %131 = zext i16 %_size_byte to i32
  %132 = call ptr @memcpy(ptr %pbuf, ptr %uglygep.i.i.i, i32 %131)
  br label %iol_read_efuse.exit.i

iol_read_efuse.exit.i:                            ; preds = %for.body224.lr.ph.i.i.i, %for.cond219.preheader.i.i.i.iol_read_efuse.exit.i_crit_edge, %do.end47.i.i.i, %do.body41.i.i.i.iol_read_efuse.exit.i_crit_edge, %do.end15.i.i.i, %do.body10.i.i.i.iol_read_efuse.exit.i_crit_edge, %do.end.i7.i.i, %do.body.i.i.i.iol_read_efuse.exit.i_crit_edge
  %eFuseWord.0.i.i.i = phi ptr [ %call7.i.i.i, %do.end47.i.i.i ], [ %call7.i.i.i, %do.body41.i.i.i.iol_read_efuse.exit.i_crit_edge ], [ null, %do.end15.i.i.i ], [ null, %do.body10.i.i.i.iol_read_efuse.exit.i_crit_edge ], [ null, %do.end.i7.i.i ], [ null, %do.body.i.i.i.iol_read_efuse.exit.i_crit_edge ], [ %call7.i.i.i, %for.cond219.preheader.i.i.i.iol_read_efuse.exit.i_crit_edge ], [ %call7.i.i.i, %for.body224.lr.ph.i.i.i ]
  tail call void @kfree(ptr noundef %call7.i.i.i.i.i) #8
  tail call void @kfree(ptr noundef %eFuseWord.0.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %physical_map.i.i) #8
  %call12.i.i = tail call zeroext i8 @rtw_read8(ptr noundef %Adapter, i32 noundef 240) #8
  %133 = and i8 %call12.i.i, 127
  %call15.i.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 240, i8 noundef zeroext %133) #8
  br i1 %3, label %iol_read_efuse.exit.i.ReadEFuseByIC.exit_crit_edge, label %iol_read_efuse.exit.i.if.end4.i_crit_edge

iol_read_efuse.exit.i.if.end4.i_crit_edge:        ; preds = %iol_read_efuse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

iol_read_efuse.exit.i.ReadEFuseByIC.exit_crit_edge: ; preds = %iol_read_efuse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ReadEFuseByIC.exit

if.end4.i:                                        ; preds = %iol_read_efuse.exit.i.if.end4.i_crit_edge, %entry.if.end4.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rtemp8.i.i) #8
  %134 = ptrtoint ptr %rtemp8.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -1, ptr %rtemp8.i.i, align 1, !annotation !215
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %eFuse_Addr.i.i) #8
  %135 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 0, ptr %eFuse_Addr.i.i, align 2
  %conv.i.i = zext i16 %_offset to i32
  %conv1.i.i = zext i16 %_size_byte to i32
  %add.i.i = add nuw nsw i32 %conv1.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 512
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end11.i.i

do.body.i.i:                                      ; preds = %if.end4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %136 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %136)
  %cmp3.i.i = icmp ugt i32 %136, 4
  br i1 %cmp3.i.i, label %do.end.i.i, label %do.body.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge

do.body.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %Hal_EfuseReadEFuse88E.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %conv.i.i, i32 noundef %conv1.i.i) #11
  br label %Hal_EfuseReadEFuse88E.exit.i

if.end11.i.i:                                     ; preds = %if.end4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %137 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %137, i32 noundef 3520, i32 noundef 512) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %do.body14.i.i, label %if.end26.i.i

do.body14.i.i:                                    ; preds = %if.end11.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %138 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %138)
  %cmp15.i.i = icmp ugt i32 %138, 4
  br i1 %cmp15.i.i, label %do.end20.i.i, label %do.body14.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge

do.body14.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge: ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %Hal_EfuseReadEFuse88E.exit.i

do.end20.i.i:                                     ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.112) #11
  br label %Hal_EfuseReadEFuse88E.exit.i

if.end26.i.i:                                     ; preds = %if.end11.i.i
  %call27.i.i = tail call ptr @rtw_malloc2d(i32 noundef 64, i32 noundef 4, i32 noundef 2) #8
  %tobool28.not.i.i = icmp eq ptr %call27.i.i, null
  br i1 %tobool28.not.i.i, label %do.body30.i.i, label %if.end26.i.i.for.cond46.preheader.i.i_crit_edge

if.end26.i.i.for.cond46.preheader.i.i_crit_edge:  ; preds = %if.end26.i.i
  br label %for.cond46.preheader.i.i

do.body30.i.i:                                    ; preds = %if.end26.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %139 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %139)
  %cmp31.i.i = icmp ugt i32 %139, 4
  br i1 %cmp31.i.i, label %do.end36.i.i, label %do.body30.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge

do.body30.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge: ; preds = %do.body30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %Hal_EfuseReadEFuse88E.exit.i

do.end36.i.i:                                     ; preds = %do.body30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call38.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.112) #11
  br label %Hal_EfuseReadEFuse88E.exit.i

for.cond46.preheader.i.i:                         ; preds = %for.cond46.preheader.i.i.for.cond46.preheader.i.i_crit_edge, %if.end26.i.i.for.cond46.preheader.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.cond46.preheader.i.i.for.cond46.preheader.i.i_crit_edge ], [ 0, %if.end26.i.i.for.cond46.preheader.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %call27.i.i, i32 %indvars.iv.i.i
  %140 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx.i.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 -1, ptr %141, align 2
  %143 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx52.1.i.i = getelementptr i16, ptr %143, i32 1
  %144 = ptrtoint ptr %arrayidx52.1.i.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 -1, ptr %arrayidx52.1.i.i, align 2
  %145 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx52.2.i.i = getelementptr i16, ptr %145, i32 2
  %146 = ptrtoint ptr %arrayidx52.2.i.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 -1, ptr %arrayidx52.2.i.i, align 2
  %147 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx52.3.i.i = getelementptr i16, ptr %147, i32 3
  %148 = ptrtoint ptr %arrayidx52.3.i.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 -1, ptr %arrayidx52.3.i.i, align 2
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 64
  br i1 %exitcond.not.i.i, label %for.end55.i.i, label %for.cond46.preheader.i.i.for.cond46.preheader.i.i_crit_edge

for.cond46.preheader.i.i.for.cond46.preheader.i.i_crit_edge: ; preds = %for.cond46.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond46.preheader.i.i

for.end55.i.i:                                    ; preds = %for.cond46.preheader.i.i
  %149 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %eFuse_Addr.i.i, align 2
  call void @ReadEFuseByte(ptr noundef %Adapter, i16 noundef zeroext %150, ptr noundef nonnull %rtemp8.i.i) #8
  %151 = ptrtoint ptr %rtemp8.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %rtemp8.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %152)
  %cmp58.not.i.i = icmp eq i8 %152, -1
  br i1 %cmp58.not.i.i, label %do.body63.i.i, label %if.then60.i.i

if.then60.i.i:                                    ; preds = %for.end55.i.i
  %153 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %eFuse_Addr.i.i, align 2
  %inc62.i.i = add i16 %154, 1
  store i16 %inc62.i.i, ptr %eFuse_Addr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %inc62.i.i)
  %cmp84.i2627.i = icmp ult i16 %inc62.i.i, 256
  br i1 %cmp84.i2627.i, label %if.then60.i.i.while.body.i.i_crit_edge, label %if.then60.i.i.for.cond212.preheader.i.i.preheader_crit_edge

if.then60.i.i.for.cond212.preheader.i.i.preheader_crit_edge: ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond212.preheader.i.i.preheader

if.then60.i.i.while.body.i.i_crit_edge:           ; preds = %if.then60.i.i
  br label %while.body.i.i

do.body63.i.i:                                    ; preds = %for.end55.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %155 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %155)
  %cmp64.i.i = icmp ugt i32 %155, 4
  br i1 %cmp64.i.i, label %do.end69.i.i, label %do.body63.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge

do.body63.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge: ; preds = %do.body63.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %Hal_EfuseReadEFuse88E.exit.i

do.end69.i.i:                                     ; preds = %do.body63.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %156 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %eFuse_Addr.i.i, align 2
  %conv71.i.i = zext i16 %157 to i32
  %call74.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %conv71.i.i, i32 noundef 255) #11
  br label %Hal_EfuseReadEFuse88E.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.backedge, %if.then60.i.i.while.body.i.i_crit_edge
  %158 = phi i16 [ %.be, %while.body.i.i.backedge ], [ %inc62.i.i, %if.then60.i.i.while.body.i.i_crit_edge ]
  %159 = phi i8 [ %.be57, %while.body.i.i.backedge ], [ %152, %if.then60.i.i.while.body.i.i_crit_edge ]
  %160 = and i8 %159, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %160)
  %cmp88.i.i = icmp eq i8 %160, 15
  br i1 %cmp88.i.i, label %if.then90.i.i, label %if.end137.thread.i.i

if.then90.i.i:                                    ; preds = %while.body.i.i
  call void @ReadEFuseByte(ptr noundef %Adapter, i16 noundef zeroext %158, ptr noundef nonnull %rtemp8.i.i) #8
  %161 = ptrtoint ptr %rtemp8.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %rtemp8.i.i, align 1
  %163 = and i8 %162, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %163)
  %cmp99.i.i = icmp eq i8 %163, 15
  br i1 %cmp99.i.i, label %if.then101.i.i, label %if.end137.i.i

if.then101.i.i:                                   ; preds = %if.then90.i.i
  %164 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %eFuse_Addr.i.i, align 2
  %inc102.i.i = add i16 %165, 1
  store i16 %inc102.i.i, ptr %eFuse_Addr.i.i, align 2
  call void @ReadEFuseByte(ptr noundef %Adapter, i16 noundef zeroext %inc102.i.i, ptr noundef nonnull %rtemp8.i.i) #8
  %166 = ptrtoint ptr %rtemp8.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %rtemp8.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %167)
  %cmp106.not.i.i = icmp eq i8 %167, -1
  br i1 %cmp106.not.i.i, label %if.then101.i.i.for.cond212.preheader.i.i.preheader_crit_edge, label %land.lhs.true.i.i

if.then101.i.i.for.cond212.preheader.i.i.preheader_crit_edge: ; preds = %if.then101.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond212.preheader.i.i.preheader

land.lhs.true.i.i:                                ; preds = %if.then101.i.i
  %168 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %eFuse_Addr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %169)
  %cmp109.i.i = icmp ult i16 %169, 256
  br i1 %cmp109.i.i, label %if.end113.i.i, label %land.lhs.true.i.i.for.cond212.preheader.i.i.preheader_crit_edge

land.lhs.true.i.i.for.cond212.preheader.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond212.preheader.i.i.preheader

if.end113.i.i:                                    ; preds = %land.lhs.true.i.i
  %inc112.i.i = add nuw nsw i16 %169, 1
  %170 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %inc112.i.i, ptr %eFuse_Addr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %169)
  %cmp84.i.not.i = icmp eq i16 %169, 255
  br i1 %cmp84.i.not.i, label %if.end113.i.i.for.cond212.preheader.i.i.preheader_crit_edge, label %if.end113.i.i.while.body.i.i.backedge_crit_edge

if.end113.i.i.while.body.i.i.backedge_crit_edge:  ; preds = %if.end113.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.backedge

if.end113.i.i.for.cond212.preheader.i.i.preheader_crit_edge: ; preds = %if.end113.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond212.preheader.i.i.preheader

while.body.i.i.backedge:                          ; preds = %if.end206.i.i.while.body.i.i.backedge_crit_edge, %if.end113.i.i.while.body.i.i.backedge_crit_edge
  %.be = phi i16 [ %inc112.i.i, %if.end113.i.i.while.body.i.i.backedge_crit_edge ], [ %inc205.i.i, %if.end206.i.i.while.body.i.i.backedge_crit_edge ]
  %.be57 = phi i8 [ %167, %if.end113.i.i.while.body.i.i.backedge_crit_edge ], [ %257, %if.end206.i.i.while.body.i.i.backedge_crit_edge ]
  br label %while.body.i.i

if.end137.thread.i.i:                             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %171 = lshr i8 %159, 4
  %and135.i.i = and i8 %159, 15
  br label %for.cond142.preheader.i.i

if.end137.i.i:                                    ; preds = %if.then90.i.i
  %172 = lshr i8 %159, 5
  %and117.i.i = lshr i8 %162, 1
  %173 = and i8 %and117.i.i, 120
  %or.i.i = or i8 %173, %172
  %174 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %eFuse_Addr.i.i, align 2
  %inc125.i.i = add i16 %175, 1
  store i16 %inc125.i.i, ptr %eFuse_Addr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %or.i.i)
  %cmp139.i.i = icmp ult i8 %or.i.i, 64
  br i1 %cmp139.i.i, label %if.end137.i.i.for.cond142.preheader.i.i_crit_edge, label %if.end137.i.i.if.end193.i.i_crit_edge

if.end137.i.i.if.end193.i.i_crit_edge:            ; preds = %if.end137.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193.i.i

if.end137.i.i.for.cond142.preheader.i.i_crit_edge: ; preds = %if.end137.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond142.preheader.i.i

for.cond142.preheader.i.i:                        ; preds = %if.end137.i.i.for.cond142.preheader.i.i_crit_edge, %if.end137.thread.i.i
  %offset.0360.i.i = phi i8 [ %171, %if.end137.thread.i.i ], [ %or.i.i, %if.end137.i.i.for.cond142.preheader.i.i_crit_edge ]
  %wren.0359.i.i = phi i8 [ %and135.i.i, %if.end137.thread.i.i ], [ %163, %if.end137.i.i.for.cond142.preheader.i.i_crit_edge ]
  %conv138.i.i = zext i8 %offset.0360.i.i to i32
  %arrayidx159.i.i = getelementptr ptr, ptr %call27.i.i, i32 %conv138.i.i
  %176 = and i8 %wren.0359.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool149.not.i.i = icmp eq i8 %176, 0
  br i1 %tobool149.not.i.i, label %if.then150.i.i, label %for.cond142.preheader.i.i.if.end186.i.i_crit_edge

for.cond142.preheader.i.i.if.end186.i.i_crit_edge: ; preds = %for.cond142.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end186.i.i

if.then150.i.i:                                   ; preds = %for.cond142.preheader.i.i
  %177 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %eFuse_Addr.i.i, align 2
  call void @ReadEFuseByte(ptr noundef %Adapter, i16 noundef zeroext %178, ptr noundef nonnull %rtemp8.i.i) #8
  %179 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %eFuse_Addr.i.i, align 2
  %inc152.i.i = add i16 %180, 1
  store i16 %inc152.i.i, ptr %eFuse_Addr.i.i, align 2
  %181 = ptrtoint ptr %rtemp8.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %rtemp8.i.i, align 1
  %conv157.i.i = zext i8 %182 to i16
  %183 = ptrtoint ptr %arrayidx159.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx159.i.i, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %conv157.i.i, ptr %184, align 2
  %186 = load i16, ptr %eFuse_Addr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %186)
  %cmp163.i.i = icmp ugt i16 %186, 255
  br i1 %cmp163.i.i, label %if.then150.i.i.if.end193.i.i_crit_edge, label %if.end166.i.i

if.then150.i.i.if.end193.i.i_crit_edge:           ; preds = %if.then150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193.i.i

if.end166.i.i:                                    ; preds = %if.then150.i.i
  call void @ReadEFuseByte(ptr noundef %Adapter, i16 noundef zeroext %186, ptr noundef nonnull %rtemp8.i.i) #8
  %187 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %eFuse_Addr.i.i, align 2
  %inc168.i.i = add i16 %188, 1
  store i16 %inc168.i.i, ptr %eFuse_Addr.i.i, align 2
  %189 = ptrtoint ptr %rtemp8.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %rtemp8.i.i, align 1
  %conv172.i.i = zext i8 %190 to i16
  %shl.i.i = shl nuw i16 %conv172.i.i, 8
  %191 = ptrtoint ptr %arrayidx159.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx159.i.i, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %192, align 2
  %or179.i.i = or i16 %shl.i.i, %194
  store i16 %or179.i.i, ptr %192, align 2
  %195 = load i16, ptr %eFuse_Addr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %195)
  %cmp182.i.i = icmp ugt i16 %195, 255
  br i1 %cmp182.i.i, label %if.end166.i.i.if.end193.i.i_crit_edge, label %if.end166.i.i.if.end186.i.i_crit_edge

if.end166.i.i.if.end186.i.i_crit_edge:            ; preds = %if.end166.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end186.i.i

if.end166.i.i.if.end193.i.i_crit_edge:            ; preds = %if.end166.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193.i.i

if.end186.i.i:                                    ; preds = %if.end166.i.i.if.end186.i.i_crit_edge, %for.cond142.preheader.i.i.if.end186.i.i_crit_edge
  %196 = and i8 %wren.0359.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool149.not.i.1.i = icmp eq i8 %196, 0
  br i1 %tobool149.not.i.1.i, label %if.then150.i.1.i, label %if.end186.i.i.if.end186.i.1.i_crit_edge

if.end186.i.i.if.end186.i.1.i_crit_edge:          ; preds = %if.end186.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end186.i.1.i

if.then150.i.1.i:                                 ; preds = %if.end186.i.i
  %197 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %eFuse_Addr.i.i, align 2
  call void @ReadEFuseByte(ptr noundef %Adapter, i16 noundef zeroext %198, ptr noundef nonnull %rtemp8.i.i) #8
  %199 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %eFuse_Addr.i.i, align 2
  %inc152.i.1.i = add i16 %200, 1
  store i16 %inc152.i.1.i, ptr %eFuse_Addr.i.i, align 2
  %201 = ptrtoint ptr %rtemp8.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %rtemp8.i.i, align 1
  %conv157.i.1.i = zext i8 %202 to i16
  %203 = ptrtoint ptr %arrayidx159.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %arrayidx159.i.i, align 4
  %arrayidx161.i.1.i = getelementptr i16, ptr %204, i32 1
  %205 = ptrtoint ptr %arrayidx161.i.1.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %conv157.i.1.i, ptr %arrayidx161.i.1.i, align 2
  %206 = load i16, ptr %eFuse_Addr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %206)
  %cmp163.i.1.i = icmp ugt i16 %206, 255
  br i1 %cmp163.i.1.i, label %if.then150.i.1.i.if.end193.i.i_crit_edge, label %if.end166.i.1.i

if.then150.i.1.i.if.end193.i.i_crit_edge:         ; preds = %if.then150.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193.i.i

if.end166.i.1.i:                                  ; preds = %if.then150.i.1.i
  call void @ReadEFuseByte(ptr noundef %Adapter, i16 noundef zeroext %206, ptr noundef nonnull %rtemp8.i.i) #8
  %207 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %eFuse_Addr.i.i, align 2
  %inc168.i.1.i = add i16 %208, 1
  store i16 %inc168.i.1.i, ptr %eFuse_Addr.i.i, align 2
  %209 = ptrtoint ptr %rtemp8.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %rtemp8.i.i, align 1
  %conv172.i.1.i = zext i8 %210 to i16
  %shl.i.1.i = shl nuw i16 %conv172.i.1.i, 8
  %211 = ptrtoint ptr %arrayidx159.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arrayidx159.i.i, align 4
  %arrayidx177.i.1.i = getelementptr i16, ptr %212, i32 1
  %213 = ptrtoint ptr %arrayidx177.i.1.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %arrayidx177.i.1.i, align 2
  %or179.i.1.i = or i16 %shl.i.1.i, %214
  store i16 %or179.i.1.i, ptr %arrayidx177.i.1.i, align 2
  %215 = load i16, ptr %eFuse_Addr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %215)
  %cmp182.i.1.i = icmp ugt i16 %215, 255
  br i1 %cmp182.i.1.i, label %if.end166.i.1.i.if.end193.i.i_crit_edge, label %if.end166.i.1.i.if.end186.i.1.i_crit_edge

if.end166.i.1.i.if.end186.i.1.i_crit_edge:        ; preds = %if.end166.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end186.i.1.i

if.end166.i.1.i.if.end193.i.i_crit_edge:          ; preds = %if.end166.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193.i.i

if.end186.i.1.i:                                  ; preds = %if.end166.i.1.i.if.end186.i.1.i_crit_edge, %if.end186.i.i.if.end186.i.1.i_crit_edge
  %216 = and i8 %wren.0359.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool149.not.i.2.i = icmp eq i8 %216, 0
  br i1 %tobool149.not.i.2.i, label %if.then150.i.2.i, label %if.end186.i.2.i

if.then150.i.2.i:                                 ; preds = %if.end186.i.1.i
  %217 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %eFuse_Addr.i.i, align 2
  call void @ReadEFuseByte(ptr noundef %Adapter, i16 noundef zeroext %218, ptr noundef nonnull %rtemp8.i.i) #8
  %219 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %eFuse_Addr.i.i, align 2
  %inc152.i.2.i = add i16 %220, 1
  store i16 %inc152.i.2.i, ptr %eFuse_Addr.i.i, align 2
  %221 = ptrtoint ptr %rtemp8.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %rtemp8.i.i, align 1
  %conv157.i.2.i = zext i8 %222 to i16
  %223 = ptrtoint ptr %arrayidx159.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %arrayidx159.i.i, align 4
  %arrayidx161.i.2.i = getelementptr i16, ptr %224, i32 2
  %225 = ptrtoint ptr %arrayidx161.i.2.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %conv157.i.2.i, ptr %arrayidx161.i.2.i, align 2
  %226 = load i16, ptr %eFuse_Addr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %226)
  %cmp163.i.2.i = icmp ugt i16 %226, 255
  br i1 %cmp163.i.2.i, label %if.then150.i.2.i.if.end193.i.i_crit_edge, label %if.end166.i.2.i

if.then150.i.2.i.if.end193.i.i_crit_edge:         ; preds = %if.then150.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193.i.i

if.end166.i.2.i:                                  ; preds = %if.then150.i.2.i
  call void @ReadEFuseByte(ptr noundef %Adapter, i16 noundef zeroext %226, ptr noundef nonnull %rtemp8.i.i) #8
  %227 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %eFuse_Addr.i.i, align 2
  %inc168.i.2.i = add i16 %228, 1
  store i16 %inc168.i.2.i, ptr %eFuse_Addr.i.i, align 2
  %229 = ptrtoint ptr %rtemp8.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %rtemp8.i.i, align 1
  %conv172.i.2.i = zext i8 %230 to i16
  %shl.i.2.i = shl nuw i16 %conv172.i.2.i, 8
  %231 = ptrtoint ptr %arrayidx159.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %arrayidx159.i.i, align 4
  %arrayidx177.i.2.i = getelementptr i16, ptr %232, i32 2
  %233 = ptrtoint ptr %arrayidx177.i.2.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %arrayidx177.i.2.i, align 2
  %or179.i.2.i = or i16 %shl.i.2.i, %234
  store i16 %or179.i.2.i, ptr %arrayidx177.i.2.i, align 2
  %235 = load i16, ptr %eFuse_Addr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %235)
  %cmp182.i.2.i = icmp ult i16 %235, 256
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %wren.0359.i.i)
  %tobool149.not.i.3.i = icmp ult i8 %wren.0359.i.i, 8
  %or.cond.i = select i1 %cmp182.i.2.i, i1 %tobool149.not.i.3.i, i1 false
  br i1 %or.cond.i, label %if.end166.i.2.i.if.then150.i.3.i_crit_edge, label %if.end166.i.2.i.if.end193.i.i_crit_edge

if.end166.i.2.i.if.end193.i.i_crit_edge:          ; preds = %if.end166.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193.i.i

if.end166.i.2.i.if.then150.i.3.i_crit_edge:       ; preds = %if.end166.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then150.i.3.i

if.end186.i.2.i:                                  ; preds = %if.end186.i.1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %wren.0359.i.i)
  %tobool149.not.i.3.old.i = icmp ult i8 %wren.0359.i.i, 8
  br i1 %tobool149.not.i.3.old.i, label %if.end186.i.2.i.if.then150.i.3.i_crit_edge, label %if.end186.i.2.i.if.end193.i.i_crit_edge

if.end186.i.2.i.if.end193.i.i_crit_edge:          ; preds = %if.end186.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193.i.i

if.end186.i.2.i.if.then150.i.3.i_crit_edge:       ; preds = %if.end186.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then150.i.3.i

if.then150.i.3.i:                                 ; preds = %if.end186.i.2.i.if.then150.i.3.i_crit_edge, %if.end166.i.2.i.if.then150.i.3.i_crit_edge
  %236 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %eFuse_Addr.i.i, align 2
  call void @ReadEFuseByte(ptr noundef %Adapter, i16 noundef zeroext %237, ptr noundef nonnull %rtemp8.i.i) #8
  %238 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %eFuse_Addr.i.i, align 2
  %inc152.i.3.i = add i16 %239, 1
  store i16 %inc152.i.3.i, ptr %eFuse_Addr.i.i, align 2
  %240 = ptrtoint ptr %rtemp8.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %rtemp8.i.i, align 1
  %conv157.i.3.i = zext i8 %241 to i16
  %242 = ptrtoint ptr %arrayidx159.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %arrayidx159.i.i, align 4
  %arrayidx161.i.3.i = getelementptr i16, ptr %243, i32 3
  %244 = ptrtoint ptr %arrayidx161.i.3.i to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 %conv157.i.3.i, ptr %arrayidx161.i.3.i, align 2
  %245 = load i16, ptr %eFuse_Addr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %245)
  %cmp163.i.3.i = icmp ugt i16 %245, 255
  br i1 %cmp163.i.3.i, label %if.then150.i.3.i.if.end193.i.i_crit_edge, label %if.end166.i.3.i

if.then150.i.3.i.if.end193.i.i_crit_edge:         ; preds = %if.then150.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193.i.i

if.end166.i.3.i:                                  ; preds = %if.then150.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ReadEFuseByte(ptr noundef %Adapter, i16 noundef zeroext %245, ptr noundef nonnull %rtemp8.i.i) #8
  %246 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %eFuse_Addr.i.i, align 2
  %inc168.i.3.i = add i16 %247, 1
  store i16 %inc168.i.3.i, ptr %eFuse_Addr.i.i, align 2
  %248 = ptrtoint ptr %rtemp8.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %rtemp8.i.i, align 1
  %conv172.i.3.i = zext i8 %249 to i16
  %shl.i.3.i = shl nuw i16 %conv172.i.3.i, 8
  %250 = ptrtoint ptr %arrayidx159.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %arrayidx159.i.i, align 4
  %arrayidx177.i.3.i = getelementptr i16, ptr %251, i32 3
  %252 = ptrtoint ptr %arrayidx177.i.3.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %arrayidx177.i.3.i, align 2
  %or179.i.3.i = or i16 %shl.i.3.i, %253
  store i16 %or179.i.3.i, ptr %arrayidx177.i.3.i, align 2
  br label %if.end193.i.i

if.end193.i.i:                                    ; preds = %if.end166.i.3.i, %if.then150.i.3.i.if.end193.i.i_crit_edge, %if.end186.i.2.i.if.end193.i.i_crit_edge, %if.end166.i.2.i.if.end193.i.i_crit_edge, %if.then150.i.2.i.if.end193.i.i_crit_edge, %if.end166.i.1.i.if.end193.i.i_crit_edge, %if.then150.i.1.i.if.end193.i.i_crit_edge, %if.end166.i.i.if.end193.i.i_crit_edge, %if.then150.i.i.if.end193.i.i_crit_edge, %if.end137.i.i.if.end193.i.i_crit_edge
  %254 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %eFuse_Addr.i.i, align 2
  call void @ReadEFuseByte(ptr noundef %Adapter, i16 noundef zeroext %255, ptr noundef nonnull %rtemp8.i.i) #8
  %256 = ptrtoint ptr %rtemp8.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %rtemp8.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %257)
  %cmp197.not.i.i = icmp eq i8 %257, -1
  br i1 %cmp197.not.i.i, label %if.end193.i.i.for.cond212.preheader.i.i.preheader_crit_edge, label %land.lhs.true199.i.i

if.end193.i.i.for.cond212.preheader.i.i.preheader_crit_edge: ; preds = %if.end193.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond212.preheader.i.i.preheader

land.lhs.true199.i.i:                             ; preds = %if.end193.i.i
  %258 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %eFuse_Addr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %259)
  %cmp201.i.i = icmp ult i16 %259, 256
  br i1 %cmp201.i.i, label %if.end206.i.i, label %land.lhs.true199.i.i.for.cond212.preheader.i.i.preheader_crit_edge

land.lhs.true199.i.i.for.cond212.preheader.i.i.preheader_crit_edge: ; preds = %land.lhs.true199.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond212.preheader.i.i.preheader

if.end206.i.i:                                    ; preds = %land.lhs.true199.i.i
  %inc205.i.i = add nuw nsw i16 %259, 1
  %260 = ptrtoint ptr %eFuse_Addr.i.i to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %inc205.i.i, ptr %eFuse_Addr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %259)
  %cmp84.i26.not.i = icmp eq i16 %259, 255
  br i1 %cmp84.i26.not.i, label %if.end206.i.i.for.cond212.preheader.i.i.preheader_crit_edge, label %if.end206.i.i.while.body.i.i.backedge_crit_edge

if.end206.i.i.while.body.i.i.backedge_crit_edge:  ; preds = %if.end206.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.backedge

if.end206.i.i.for.cond212.preheader.i.i.preheader_crit_edge: ; preds = %if.end206.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond212.preheader.i.i.preheader

for.cond212.preheader.i.i.preheader:              ; preds = %if.end206.i.i.for.cond212.preheader.i.i.preheader_crit_edge, %land.lhs.true199.i.i.for.cond212.preheader.i.i.preheader_crit_edge, %if.end193.i.i.for.cond212.preheader.i.i.preheader_crit_edge, %if.end113.i.i.for.cond212.preheader.i.i.preheader_crit_edge, %land.lhs.true.i.i.for.cond212.preheader.i.i.preheader_crit_edge, %if.then101.i.i.for.cond212.preheader.i.i.preheader_crit_edge, %if.then60.i.i.for.cond212.preheader.i.i.preheader_crit_edge
  br label %for.cond212.preheader.i.i

for.cond212.preheader.i.i:                        ; preds = %for.cond212.preheader.i.i.for.cond212.preheader.i.i_crit_edge, %for.cond212.preheader.i.i.preheader
  %indvars.iv350.i.i = phi i32 [ %indvars.iv.next351.i.i, %for.cond212.preheader.i.i.for.cond212.preheader.i.i_crit_edge ], [ 0, %for.cond212.preheader.i.i.preheader ]
  %arrayidx218.i.i = getelementptr ptr, ptr %call27.i.i, i32 %indvars.iv350.i.i
  %mul.i.i = shl nuw nsw i32 %indvars.iv350.i.i, 3
  %add241.i.i = or i32 %mul.i.i, 1
  %261 = ptrtoint ptr %arrayidx218.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %arrayidx218.i.i, align 4
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %262, align 2
  %conv223.i.i = trunc i16 %264 to i8
  %arrayidx228.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 %mul.i.i
  %265 = ptrtoint ptr %arrayidx228.i.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %conv223.i.i, ptr %arrayidx228.i.i, align 8
  %266 = load ptr, ptr %arrayidx218.i.i, align 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %266, align 2
  %269 = lshr i16 %268, 8
  %conv236.i.i = trunc i16 %269 to i8
  %arrayidx243.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 %add241.i.i
  %270 = ptrtoint ptr %arrayidx243.i.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %conv236.i.i, ptr %arrayidx243.i.i, align 1
  %271 = load ptr, ptr %arrayidx218.i.i, align 4
  %arrayidx220.1.i.i = getelementptr i16, ptr %271, i32 1
  %272 = ptrtoint ptr %arrayidx220.1.i.i to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %arrayidx220.1.i.i, align 2
  %conv223.1.i.i = trunc i16 %273 to i8
  %add227.1.i.i = or i32 %mul.i.i, 2
  %arrayidx228.1.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 %add227.1.i.i
  %274 = ptrtoint ptr %arrayidx228.1.i.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %conv223.1.i.i, ptr %arrayidx228.1.i.i, align 2
  %275 = load ptr, ptr %arrayidx218.i.i, align 4
  %arrayidx232.1.i.i = getelementptr i16, ptr %275, i32 1
  %276 = ptrtoint ptr %arrayidx232.1.i.i to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %arrayidx232.1.i.i, align 2
  %278 = lshr i16 %277, 8
  %conv236.1.i.i = trunc i16 %278 to i8
  %add242.1.i.i = or i32 %mul.i.i, 3
  %arrayidx243.1.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 %add242.1.i.i
  %279 = ptrtoint ptr %arrayidx243.1.i.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %conv236.1.i.i, ptr %arrayidx243.1.i.i, align 1
  %280 = load ptr, ptr %arrayidx218.i.i, align 4
  %arrayidx220.2.i.i = getelementptr i16, ptr %280, i32 2
  %281 = ptrtoint ptr %arrayidx220.2.i.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %arrayidx220.2.i.i, align 2
  %conv223.2.i.i = trunc i16 %282 to i8
  %add227.2.i.i = or i32 %mul.i.i, 4
  %arrayidx228.2.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 %add227.2.i.i
  %283 = ptrtoint ptr %arrayidx228.2.i.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %conv223.2.i.i, ptr %arrayidx228.2.i.i, align 4
  %284 = load ptr, ptr %arrayidx218.i.i, align 4
  %arrayidx232.2.i.i = getelementptr i16, ptr %284, i32 2
  %285 = ptrtoint ptr %arrayidx232.2.i.i to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %arrayidx232.2.i.i, align 2
  %287 = lshr i16 %286, 8
  %conv236.2.i.i = trunc i16 %287 to i8
  %add242.2.i.i = or i32 %mul.i.i, 5
  %arrayidx243.2.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 %add242.2.i.i
  %288 = ptrtoint ptr %arrayidx243.2.i.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %conv236.2.i.i, ptr %arrayidx243.2.i.i, align 1
  %289 = load ptr, ptr %arrayidx218.i.i, align 4
  %arrayidx220.3.i.i = getelementptr i16, ptr %289, i32 3
  %290 = ptrtoint ptr %arrayidx220.3.i.i to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %arrayidx220.3.i.i, align 2
  %conv223.3.i.i = trunc i16 %291 to i8
  %add227.3.i.i = or i32 %mul.i.i, 6
  %arrayidx228.3.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 %add227.3.i.i
  %292 = ptrtoint ptr %arrayidx228.3.i.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %conv223.3.i.i, ptr %arrayidx228.3.i.i, align 2
  %293 = load ptr, ptr %arrayidx218.i.i, align 4
  %arrayidx232.3.i.i = getelementptr i16, ptr %293, i32 3
  %294 = ptrtoint ptr %arrayidx232.3.i.i to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %arrayidx232.3.i.i, align 2
  %296 = lshr i16 %295, 8
  %conv236.3.i.i = trunc i16 %296 to i8
  %add242.3.i.i = or i32 %mul.i.i, 7
  %arrayidx243.3.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 %add242.3.i.i
  %297 = ptrtoint ptr %arrayidx243.3.i.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 %conv236.3.i.i, ptr %arrayidx243.3.i.i, align 1
  %indvars.iv.next351.i.i = add nuw nsw i32 %indvars.iv350.i.i, 1
  %exitcond352.not.i.i = icmp eq i32 %indvars.iv.next351.i.i, 64
  br i1 %exitcond352.not.i.i, label %for.cond250.preheader.i.i, label %for.cond212.preheader.i.i.for.cond212.preheader.i.i_crit_edge

for.cond212.preheader.i.i.for.cond212.preheader.i.i_crit_edge: ; preds = %for.cond212.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond212.preheader.i.i

for.cond250.preheader.i.i:                        ; preds = %for.cond212.preheader.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %_size_byte)
  %cmp253336.not.i.i = icmp eq i16 %_size_byte, 0
  br i1 %cmp253336.not.i.i, label %for.cond250.preheader.i.i.for.end264.i.i_crit_edge, label %for.body255.preheader.i.i

for.cond250.preheader.i.i.for.end264.i.i_crit_edge: ; preds = %for.cond250.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end264.i.i

for.body255.preheader.i.i:                        ; preds = %for.cond250.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %uglygep.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 %conv.i.i
  %298 = call ptr @memcpy(ptr %pbuf, ptr %uglygep.i.i, i32 %conv1.i.i)
  br label %for.end264.i.i

for.end264.i.i:                                   ; preds = %for.body255.preheader.i.i, %for.cond250.preheader.i.i.for.end264.i.i_crit_edge
  call void @SetHwReg8188EU(ptr noundef %Adapter, i8 noundef zeroext 52, ptr noundef nonnull %eFuse_Addr.i.i) #8
  br label %Hal_EfuseReadEFuse88E.exit.i

Hal_EfuseReadEFuse88E.exit.i:                     ; preds = %for.end264.i.i, %do.end69.i.i, %do.body63.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge, %do.end36.i.i, %do.body30.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge, %do.end20.i.i, %do.body14.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge, %do.end.i.i, %do.body.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge
  %eFuseWord.0.i.i = phi ptr [ null, %do.end.i.i ], [ null, %do.body.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge ], [ %call27.i.i, %for.end264.i.i ], [ %call27.i.i, %do.end69.i.i ], [ %call27.i.i, %do.body63.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge ], [ null, %do.end36.i.i ], [ null, %do.body30.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge ], [ null, %do.end20.i.i ], [ null, %do.body14.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge ]
  %efuseTbl.0.i.i = phi ptr [ null, %do.end.i.i ], [ null, %do.body.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge ], [ %call7.i.i.i.i, %for.end264.i.i ], [ %call7.i.i.i.i, %do.end69.i.i ], [ %call7.i.i.i.i, %do.body63.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge ], [ %call7.i.i.i.i, %do.end36.i.i ], [ %call7.i.i.i.i, %do.body30.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge ], [ null, %do.end20.i.i ], [ null, %do.body14.i.i.Hal_EfuseReadEFuse88E.exit.i_crit_edge ]
  call void @kfree(ptr noundef %efuseTbl.0.i.i) #8
  call void @kfree(ptr noundef %eFuseWord.0.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %eFuse_Addr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rtemp8.i.i) #8
  br label %ReadEFuseByIC.exit

ReadEFuseByIC.exit:                               ; preds = %Hal_EfuseReadEFuse88E.exit.i, %iol_read_efuse.exit.i.ReadEFuseByIC.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188e_read_chip_version(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %haldata = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 19
  %call = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 240) #8
  %and = lshr i32 %call, 23
  %and.lobit = and i32 %and, 1
  %0 = xor i32 %and.lobit, 1
  %and1 = lshr i32 %call, 19
  %and1.lobit = and i32 %and1, 1
  %and4 = lshr i32 %call, 12
  %shr = and i32 %and4, 15
  %.fca.0.insert = insertvalue [4 x i32] poison, i32 %0, 0
  %.fca.1.insert = insertvalue [4 x i32] %.fca.0.insert, i32 %shr, 1
  %.fca.2.insert = insertvalue [4 x i32] %.fca.1.insert, i32 %and1.lobit, 2
  %.fca.3.insert = insertvalue [4 x i32] %.fca.2.insert, i32 16777215, 3
  tail call void @dump_chip_info([4 x i32] %.fca.3.insert) #8
  %1 = ptrtoint ptr %haldata to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %haldata, align 8
  %ChipVersion.sroa.6.0.VersionID.sroa_idx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 19, i32 0, i32 1
  %2 = ptrtoint ptr %ChipVersion.sroa.6.0.VersionID.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr, ptr %ChipVersion.sroa.6.0.VersionID.sroa_idx, align 4
  %ChipVersion.sroa.8.0.VersionID.sroa_idx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 19, i32 0, i32 2
  %3 = ptrtoint ptr %ChipVersion.sroa.8.0.VersionID.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and1.lobit, ptr %ChipVersion.sroa.8.0.VersionID.sroa_idx, align 8
  %ChipVersion.sroa.10.0.VersionID.sroa_idx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 19, i32 0, i32 3
  %4 = ptrtoint ptr %ChipVersion.sroa.10.0.VersionID.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777215, ptr %ChipVersion.sroa.10.0.VersionID.sroa_idx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_read32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_chip_info([4 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188e_SetHalODMVar(ptr noundef %Adapter, ptr noundef %pValue1, i1 noundef zeroext %bSet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %odmpriv = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %0 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp ugt i32 %0, 4
  br i1 %bSet, label %do.body, label %do.body8

do.body:                                          ; preds = %entry
  br i1 %cmp, label %do.end, label %do.body.do.end4_crit_edge

do.body.do.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %pValue1, i32 0, i32 9
  %1 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mac_id, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %2) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %do.body.do.end4_crit_edge
  %mac_id5 = getelementptr inbounds %struct.sta_info, ptr %pValue1, i32 0, i32 9
  %3 = ptrtoint ptr %mac_id5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac_id5, align 4
  %arrayidx = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 17, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pValue1, ptr %arrayidx, align 4
  %6 = load i32, ptr %mac_id5, align 4
  %conv = trunc i32 %6 to i8
  %call7 = tail call i32 @ODM_RAInfo_Init(ptr noundef %odmpriv, i8 noundef zeroext %conv) #8
  br label %if.end24

do.body8:                                         ; preds = %entry
  br i1 %cmp, label %do.end14, label %do.body8.do.end20_crit_edge

do.body8.do.end20_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %mac_id16 = getelementptr inbounds %struct.sta_info, ptr %pValue1, i32 0, i32 9
  %7 = ptrtoint ptr %mac_id16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mac_id16, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %8) #11
  br label %do.end20

do.end20:                                         ; preds = %do.end14, %do.body8.do.end20_crit_edge
  %mac_id22 = getelementptr inbounds %struct.sta_info, ptr %pValue1, i32 0, i32 9
  %9 = ptrtoint ptr %mac_id22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mac_id22, align 4
  %arrayidx23 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 17, i32 %10
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx23, align 4
  br label %if.end24

if.end24:                                         ; preds = %do.end20, %do.end4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ODM_RAInfo_Init(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hal_notch_filter_8188e(ptr noundef %adapter, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %0 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp ugt i32 %0, 4
  br i1 %enable, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  br i1 %cmp, label %do.end, label %do.body.do.end3_crit_edge

do.body.do.end3_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %do.body.do.end3_crit_edge
  %call4 = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 3137) #8
  %1 = or i8 %call4, 2
  br label %if.end21

do.body7:                                         ; preds = %entry
  br i1 %cmp, label %do.end12, label %do.body7.do.end16_crit_edge

do.body7.do.end16_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

do.end12:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #11
  br label %do.end16

do.end16:                                         ; preds = %do.end12, %do.body7.do.end16_crit_edge
  %call17 = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 3137) #8
  %2 = and i8 %call17, -3
  br label %if.end21

if.end21:                                         ; preds = %do.end16, %do.end3
  %.sink = phi i8 [ %2, %do.end16 ], [ %1, %do.end3 ]
  %call20 = tail call i32 @rtw_write8(ptr noundef %adapter, i32 noundef 3137, i8 noundef zeroext %.sink) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @GetEEPROMSize8188E(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @rtw_read16(ptr noundef %padapter, i32 noundef 10) #8
  %0 = and i16 %call, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @GetEEPROMSize8188E.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@GetEEPROMSize8188E, %if.then)) #8
          to label %do.end11 [label %if.then], !srcloc !216

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %1 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pnetdev, align 4
  %cond9 = select i1 %tobool.not, ptr @.str.29, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @GetEEPROMSize8188E.__UNIQUE_ID_ddebug347, ptr noundef %2, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond9) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry
  %conv1 = select i1 %tobool.not, i8 4, i8 6
  ret i8 %conv1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @InitLLTTable(ptr noundef %padapter, i8 noundef zeroext %txpktbuf_bndy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @rtw_IOL_applied(ptr noundef %padapter) #8
  br i1 %call, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %conv = zext i8 %txpktbuf_bndy to i32
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp81.not = icmp eq i32 %sub, 0
  br i1 %cmp81.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then:                                          ; preds = %entry
  tail call fastcc void @iol_mode_enable(ptr noundef %padapter, i8 noundef zeroext 1) #8
  %call.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 521, i8 noundef zeroext %txpktbuf_bndy) #8
  %call.i.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 136) #8
  %or30.i.i = or i8 %call.i.i, 1
  %call5.i.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 136, i8 noundef zeroext %or30.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %land.rhs.i.i.while.cond.i.i_crit_edge, %if.then
  %call6.i.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 136) #8
  %and931.i.i = and i8 %call6.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and931.i.i)
  %tobool.not.i.i = icmp eq i8 %and931.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.iol_InitLLTTable.exit_crit_edge, label %land.rhs.i.i

while.cond.i.i.iol_InitLLTTable.exit_crit_edge:   ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iol_InitLLTTable.exit

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  %call10.i.i = tail call i32 @rtw_get_passing_time_ms(i32 noundef %0) #8
  %cmp.i.i = icmp ult i32 %call10.i.i, 1000
  br i1 %cmp.i.i, label %land.rhs.i.i.while.cond.i.i_crit_edge, label %land.rhs.i.i.iol_InitLLTTable.exit_crit_edge

land.rhs.i.i.iol_InitLLTTable.exit_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iol_InitLLTTable.exit

land.rhs.i.i.while.cond.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

iol_InitLLTTable.exit:                            ; preds = %land.rhs.i.i.iol_InitLLTTable.exit_crit_edge, %while.cond.i.i.iol_InitLLTTable.exit_crit_edge
  %call12.i.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 136) #8
  %1 = and i8 %call12.i.i, 17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %2 = icmp eq i8 %1, 0
  %spec.store.select.i.i = zext i1 %2 to i32
  %call12.i5.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 240) #8
  %3 = and i8 %call12.i5.i, 127
  %call15.i.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 240, i8 noundef zeroext %3) #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.082 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add = add nuw i32 %i.082, 1
  %and.i = shl i32 %i.082, 8
  %shl.i = and i32 %and.i, 65280
  %and1.i = and i32 %add, 255
  %or.i = or i32 %shl.i, %and1.i
  %or2.i = or i32 %or.i, 1073741824
  %call.i62 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 480, i32 noundef %or2.i) #8
  %call4.i = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 480) #8
  %exitcond.not = icmp eq i32 %add, %sub
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %and.i63 = shl nsw i32 %sub, 8
  %shl.i64 = and i32 %and.i63, 65280
  %or2.i66 = or i32 %shl.i64, 1073742079
  %call.i67 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 480, i32 noundef %or2.i66) #8
  %call4.i68 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 480) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -80, i8 %txpktbuf_bndy)
  %cmp1684 = icmp ult i8 %txpktbuf_bndy, -80
  br i1 %cmp1684, label %for.end.for.body18_crit_edge, label %for.end.for.end27_crit_edge

for.end.for.end27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27

for.end.for.body18_crit_edge:                     ; preds = %for.end
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.end.for.body18_crit_edge
  %i.185 = phi i32 [ %add19, %for.body18.for.body18_crit_edge ], [ %conv, %for.end.for.body18_crit_edge ]
  %add19 = add nuw nsw i32 %i.185, 1
  %and.i69 = shl nuw nsw i32 %i.185, 8
  %shl.i70 = and i32 %and.i69, 65280
  %or.i72 = or i32 %add19, %shl.i70
  %or2.i73 = or i32 %or.i72, 1073741824
  %call.i74 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 480, i32 noundef %or2.i73) #8
  %call4.i75 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 480) #8
  %exitcond86.not = icmp eq i32 %add19, 176
  br i1 %exitcond86.not, label %for.body18.for.end27_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body18

for.body18.for.end27_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27

for.end27:                                        ; preds = %for.body18.for.end27_crit_edge, %for.end.for.end27_crit_edge
  %or2.i78 = or i32 %conv, 1073786880
  %call.i79 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 480, i32 noundef %or2.i78) #8
  %call4.i80 = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 480) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end27, %iol_InitLLTTable.exit
  %status.0 = phi i32 [ %spec.store.select.i.i, %iol_InitLLTTable.exit ], [ 1, %for.end27 ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Hal_EfuseParseIDCode88E(ptr nocapture noundef writeonly %padapter, ptr nocapture noundef readonly %hwinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwinfo to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hwinfo, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 10625, i16 %1)
  %cmp.not = icmp eq i16 %1, 10625
  br i1 %cmp.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %conv) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %storemerge = phi i8 [ 1, %do.end ], [ 0, %entry.do.end6_crit_edge ]
  %eeprompriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15
  %3 = ptrtoint ptr %eeprompriv to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %storemerge, ptr %eeprompriv, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Hal_ReadPowerSavingMode88E(ptr nocapture noundef %padapter, ptr nocapture noundef readonly %hwinfo, i1 noundef zeroext %AutoLoadFail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %AutoLoadFail, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bSupportRemoteWakeup = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 26
  %0 = ptrtoint ptr %bSupportRemoteWakeup to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bSupportRemoteWakeup, align 2
  br label %if.end25

if.else:                                          ; preds = %entry
  %arrayidx = getelementptr i8, ptr %hwinfo, i32 212
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = lshr i8 %2, 1
  %.lobit = and i8 %3, 1
  %bSupportRemoteWakeup4 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 26
  %4 = ptrtoint ptr %bSupportRemoteWakeup4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.lobit, ptr %bSupportRemoteWakeup4, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %5 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.body12, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.body12:                                        ; preds = %if.else
  %conv10 = zext i8 %.lobit to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %conv10) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp13 = icmp ugt i32 %.pr, 4
  br i1 %cmp13, label %do.end17, label %do.body12.if.end25_crit_edge

do.body12.if.end25_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.end17:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %power_mgnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 17
  %6 = ptrtoint ptr %power_mgnt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %power_mgnt, align 2
  %conv19 = zext i8 %7 to i32
  %usbss_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 49
  %8 = ptrtoint ptr %usbss_enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %usbss_enable, align 2
  %conv21 = zext i8 %9 to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %conv19, i32 noundef %conv21) #11
  br label %if.end25

if.end25:                                         ; preds = %do.end17, %do.body12.if.end25_crit_edge, %if.else.if.end25_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Hal_ReadTxPowerInfo88E(ptr nocapture noundef %padapter, ptr nocapture noundef readonly %PROMContent, i1 noundef zeroext %AutoLoadFail) local_unnamed_addr #0 align 64 {
entry:
  %pwrInfo24G = alloca %struct.txpowerinfo24g, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %pwrInfo24G) #8
  %0 = call ptr @memset(ptr %pwrInfo24G, i32 0, i32 84)
  br i1 %AutoLoadFail, label %for.inc26.3.2.i, label %entry.if.then86.i_crit_edge

entry.if.then86.i_crit_edge:                      ; preds = %entry
  br label %if.then86.i

for.inc26.3.2.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %uglygep475.i = getelementptr inbounds i8, ptr %pwrInfo24G, i32 18
  %1 = call ptr @memset(ptr %pwrInfo24G, i32 45, i32 6)
  %2 = call ptr @memset(ptr %uglygep475.i, i32 45, i32 6)
  %arrayidx14.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 0
  %arrayidx12.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 0
  %3 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %arrayidx12.i, align 1
  %4 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %arrayidx14.i, align 1
  %arrayidx18.1.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -2, ptr %arrayidx18.1.i, align 1
  %arrayidx20.1.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -2, ptr %arrayidx20.1.i, align 1
  %arrayidx22.1.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx22.1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -2, ptr %arrayidx22.1.i, align 1
  %arrayidx25.1.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx25.1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -2, ptr %arrayidx25.1.i, align 1
  %arrayidx18.2.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx18.2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -2, ptr %arrayidx18.2.i, align 1
  %arrayidx20.2.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 5, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -2, ptr %arrayidx20.2.i, align 1
  %arrayidx22.2.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 2, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx22.2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -2, ptr %arrayidx22.2.i, align 1
  %arrayidx25.2.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx25.2.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -2, ptr %arrayidx25.2.i, align 1
  %arrayidx18.3.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx18.3.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -2, ptr %arrayidx18.3.i, align 1
  %arrayidx20.3.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 5, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -2, ptr %arrayidx20.3.i, align 1
  %arrayidx22.3.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 2, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx22.3.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -2, ptr %arrayidx22.3.i, align 1
  %arrayidx25.3.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx25.3.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -2, ptr %arrayidx25.3.i, align 1
  %uglygep475.1.i = getelementptr inbounds i8, ptr %pwrInfo24G, i32 24
  %uglygep.1.i = getelementptr inbounds i8, ptr %pwrInfo24G, i32 6
  %17 = call ptr @memset(ptr %uglygep.1.i, i32 45, i32 6)
  %18 = call ptr @memset(ptr %uglygep475.1.i, i32 45, i32 6)
  %arrayidx14.1.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 1
  %arrayidx12.1.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %arrayidx12.1.i, align 1
  %20 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %arrayidx14.1.i, align 1
  %arrayidx18.1.1.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx18.1.1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -2, ptr %arrayidx18.1.1.i, align 1
  %arrayidx20.1.1.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 5, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx20.1.1.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -2, ptr %arrayidx20.1.1.i, align 1
  %arrayidx22.1.1.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 2, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx22.1.1.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -2, ptr %arrayidx22.1.1.i, align 1
  %arrayidx25.1.1.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx25.1.1.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -2, ptr %arrayidx25.1.1.i, align 1
  %arrayidx18.2.1.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 1, i32 2
  %25 = ptrtoint ptr %arrayidx18.2.1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -2, ptr %arrayidx18.2.1.i, align 1
  %arrayidx20.2.1.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 5, i32 1, i32 2
  %26 = ptrtoint ptr %arrayidx20.2.1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -2, ptr %arrayidx20.2.1.i, align 1
  %arrayidx22.2.1.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 2, i32 1, i32 2
  %27 = ptrtoint ptr %arrayidx22.2.1.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -2, ptr %arrayidx22.2.1.i, align 1
  %arrayidx25.2.1.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 1, i32 2
  %28 = ptrtoint ptr %arrayidx25.2.1.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -2, ptr %arrayidx25.2.1.i, align 1
  %arrayidx18.3.1.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 1, i32 3
  %29 = ptrtoint ptr %arrayidx18.3.1.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -2, ptr %arrayidx18.3.1.i, align 1
  %arrayidx20.3.1.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 5, i32 1, i32 3
  %30 = ptrtoint ptr %arrayidx20.3.1.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -2, ptr %arrayidx20.3.1.i, align 1
  %arrayidx22.3.1.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 2, i32 1, i32 3
  %31 = ptrtoint ptr %arrayidx22.3.1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -2, ptr %arrayidx22.3.1.i, align 1
  %arrayidx25.3.1.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 1, i32 3
  %32 = ptrtoint ptr %arrayidx25.3.1.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -2, ptr %arrayidx25.3.1.i, align 1
  %uglygep475.2.i = getelementptr inbounds i8, ptr %pwrInfo24G, i32 30
  %uglygep.2.i = getelementptr inbounds i8, ptr %pwrInfo24G, i32 12
  %33 = call ptr @memset(ptr %uglygep.2.i, i32 45, i32 6)
  %34 = call ptr @memset(ptr %uglygep475.2.i, i32 45, i32 6)
  %arrayidx14.2.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 2
  %arrayidx12.2.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %arrayidx12.2.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %arrayidx12.2.i, align 1
  %36 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 4, ptr %arrayidx14.2.i, align 1
  %arrayidx18.1.2.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 2, i32 1
  %37 = ptrtoint ptr %arrayidx18.1.2.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -2, ptr %arrayidx18.1.2.i, align 1
  %arrayidx20.1.2.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 5, i32 2, i32 1
  %38 = ptrtoint ptr %arrayidx20.1.2.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -2, ptr %arrayidx20.1.2.i, align 1
  %arrayidx22.1.2.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 2, i32 2, i32 1
  %39 = ptrtoint ptr %arrayidx22.1.2.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -2, ptr %arrayidx22.1.2.i, align 1
  %arrayidx25.1.2.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 2, i32 1
  %40 = ptrtoint ptr %arrayidx25.1.2.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -2, ptr %arrayidx25.1.2.i, align 1
  %arrayidx18.2.2.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 2, i32 2
  %41 = ptrtoint ptr %arrayidx18.2.2.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -2, ptr %arrayidx18.2.2.i, align 1
  %arrayidx20.2.2.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 5, i32 2, i32 2
  %42 = ptrtoint ptr %arrayidx20.2.2.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -2, ptr %arrayidx20.2.2.i, align 1
  %arrayidx22.2.2.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 2, i32 2, i32 2
  %43 = ptrtoint ptr %arrayidx22.2.2.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -2, ptr %arrayidx22.2.2.i, align 1
  %arrayidx25.2.2.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 2, i32 2
  %44 = ptrtoint ptr %arrayidx25.2.2.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -2, ptr %arrayidx25.2.2.i, align 1
  %arrayidx18.3.2.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 2, i32 3
  %45 = ptrtoint ptr %arrayidx18.3.2.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -2, ptr %arrayidx18.3.2.i, align 1
  %arrayidx20.3.2.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 5, i32 2, i32 3
  %46 = ptrtoint ptr %arrayidx20.3.2.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -2, ptr %arrayidx20.3.2.i, align 1
  %arrayidx22.3.2.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 2, i32 2, i32 3
  %47 = ptrtoint ptr %arrayidx22.3.2.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -2, ptr %arrayidx22.3.2.i, align 1
  %arrayidx25.3.2.i = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 2, i32 3
  %48 = ptrtoint ptr %arrayidx25.3.2.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -2, ptr %arrayidx25.3.2.i, align 1
  br label %hal_get_chnl_group_88e.exit.peel

if.then86.i:                                      ; preds = %for.inc284.i.3.if.then86.i_crit_edge, %entry.if.then86.i_crit_edge
  %eeAddr.0468.i = phi i32 [ %inc153.i.3, %for.inc284.i.3.if.then86.i_crit_edge ], [ 16, %entry.if.then86.i_crit_edge ]
  %rfPath.1467.i = phi i32 [ %inc288.i, %for.inc284.i.3.if.then86.i_crit_edge ], [ 0, %entry.if.then86.i_crit_edge ]
  %inc39.i = or i32 %eeAddr.0468.i, 1
  %arrayidx40.i = getelementptr i8, ptr %PROMContent, i32 %eeAddr.0468.i
  %49 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx40.i, align 1
  %arrayidx43.i = getelementptr [3 x [6 x i8]], ptr %pwrInfo24G, i32 0, i32 %rfPath.1467.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %50)
  %cmp47.i = icmp eq i8 %50, -1
  %spec.select.i = select i1 %cmp47.i, i8 45, i8 %50
  %51 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %spec.select.i, ptr %arrayidx43.i, align 1
  %inc39.1.i = add i32 %eeAddr.0468.i, 2
  %arrayidx40.1.i = getelementptr i8, ptr %PROMContent, i32 %inc39.i
  %52 = ptrtoint ptr %arrayidx40.1.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx40.1.i, align 1
  %arrayidx43.1.i = getelementptr [3 x [6 x i8]], ptr %pwrInfo24G, i32 0, i32 %rfPath.1467.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %53)
  %cmp47.1.i = icmp eq i8 %53, -1
  %spec.select.1.i = select i1 %cmp47.1.i, i8 45, i8 %53
  %54 = ptrtoint ptr %arrayidx43.1.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %spec.select.1.i, ptr %arrayidx43.1.i, align 1
  %inc39.2.i = add i32 %eeAddr.0468.i, 3
  %arrayidx40.2.i = getelementptr i8, ptr %PROMContent, i32 %inc39.1.i
  %55 = ptrtoint ptr %arrayidx40.2.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx40.2.i, align 1
  %arrayidx43.2.i = getelementptr [3 x [6 x i8]], ptr %pwrInfo24G, i32 0, i32 %rfPath.1467.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %56)
  %cmp47.2.i = icmp eq i8 %56, -1
  %spec.select.2.i = select i1 %cmp47.2.i, i8 45, i8 %56
  %57 = ptrtoint ptr %arrayidx43.2.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %spec.select.2.i, ptr %arrayidx43.2.i, align 1
  %inc39.3.i = add i32 %eeAddr.0468.i, 4
  %arrayidx40.3.i = getelementptr i8, ptr %PROMContent, i32 %inc39.2.i
  %58 = ptrtoint ptr %arrayidx40.3.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx40.3.i, align 1
  %arrayidx43.3.i = getelementptr [3 x [6 x i8]], ptr %pwrInfo24G, i32 0, i32 %rfPath.1467.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %59)
  %cmp47.3.i = icmp eq i8 %59, -1
  %spec.select.3.i = select i1 %cmp47.3.i, i8 45, i8 %59
  %60 = ptrtoint ptr %arrayidx43.3.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %spec.select.3.i, ptr %arrayidx43.3.i, align 1
  %inc39.4.i = add i32 %eeAddr.0468.i, 5
  %arrayidx40.4.i = getelementptr i8, ptr %PROMContent, i32 %inc39.3.i
  %61 = ptrtoint ptr %arrayidx40.4.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx40.4.i, align 1
  %arrayidx43.4.i = getelementptr [3 x [6 x i8]], ptr %pwrInfo24G, i32 0, i32 %rfPath.1467.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %62)
  %cmp47.4.i = icmp eq i8 %62, -1
  %spec.select.4.i = select i1 %cmp47.4.i, i8 45, i8 %62
  %63 = ptrtoint ptr %arrayidx43.4.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %spec.select.4.i, ptr %arrayidx43.4.i, align 1
  %inc39.5.i = add i32 %eeAddr.0468.i, 6
  %arrayidx40.5.i = getelementptr i8, ptr %PROMContent, i32 %inc39.4.i
  %64 = ptrtoint ptr %arrayidx40.5.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx40.5.i, align 1
  %arrayidx43.5.i = getelementptr [3 x [6 x i8]], ptr %pwrInfo24G, i32 0, i32 %rfPath.1467.i, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %65)
  %cmp47.5.i = icmp eq i8 %65, -1
  %spec.select.5.i = select i1 %cmp47.5.i, i8 45, i8 %65
  %66 = ptrtoint ptr %arrayidx43.5.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %spec.select.5.i, ptr %arrayidx43.5.i, align 1
  %inc61.i = add i32 %eeAddr.0468.i, 7
  %arrayidx62.i = getelementptr i8, ptr %PROMContent, i32 %inc39.5.i
  %67 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx62.i, align 1
  %arrayidx65.i = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 1, i32 %rfPath.1467.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %68)
  %cmp70.i = icmp eq i8 %68, -1
  %spec.select454.i = select i1 %cmp70.i, i8 45, i8 %68
  %69 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %spec.select454.i, ptr %arrayidx65.i, align 1
  %inc61.1.i = add i32 %eeAddr.0468.i, 8
  %arrayidx62.1.i = getelementptr i8, ptr %PROMContent, i32 %inc61.i
  %70 = ptrtoint ptr %arrayidx62.1.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx62.1.i, align 1
  %arrayidx65.1.i = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 1, i32 %rfPath.1467.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %71)
  %cmp70.1.i = icmp eq i8 %71, -1
  %spec.select454.1.i = select i1 %cmp70.1.i, i8 45, i8 %71
  %72 = ptrtoint ptr %arrayidx65.1.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %spec.select454.1.i, ptr %arrayidx65.1.i, align 1
  %inc61.2.i = add i32 %eeAddr.0468.i, 9
  %arrayidx62.2.i = getelementptr i8, ptr %PROMContent, i32 %inc61.1.i
  %73 = ptrtoint ptr %arrayidx62.2.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx62.2.i, align 1
  %arrayidx65.2.i = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 1, i32 %rfPath.1467.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %74)
  %cmp70.2.i = icmp eq i8 %74, -1
  %spec.select454.2.i = select i1 %cmp70.2.i, i8 45, i8 %74
  %75 = ptrtoint ptr %arrayidx65.2.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %spec.select454.2.i, ptr %arrayidx65.2.i, align 1
  %inc61.3.i = add i32 %eeAddr.0468.i, 10
  %arrayidx62.3.i = getelementptr i8, ptr %PROMContent, i32 %inc61.2.i
  %76 = ptrtoint ptr %arrayidx62.3.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx62.3.i, align 1
  %arrayidx65.3.i = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 1, i32 %rfPath.1467.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %77)
  %cmp70.3.i = icmp eq i8 %77, -1
  %spec.select454.3.i = select i1 %cmp70.3.i, i8 45, i8 %77
  %78 = ptrtoint ptr %arrayidx65.3.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %spec.select454.3.i, ptr %arrayidx65.3.i, align 1
  %arrayidx62.4.i = getelementptr i8, ptr %PROMContent, i32 %inc61.3.i
  %79 = ptrtoint ptr %arrayidx62.4.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx62.4.i, align 1
  %arrayidx65.4.i = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 1, i32 %rfPath.1467.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %80)
  %cmp70.4.i = icmp eq i8 %80, -1
  %spec.select454.4.i = select i1 %cmp70.4.i, i8 45, i8 %80
  %81 = ptrtoint ptr %arrayidx65.4.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %spec.select454.4.i, ptr %arrayidx65.4.i, align 1
  %arrayidx103.i = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 %rfPath.1467.i
  %arrayidx133.i = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 %rfPath.1467.i
  %arrayidx151.i = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 2, i32 %rfPath.1467.i
  %inc61.4.i = add i32 %eeAddr.0468.i, 11
  %arrayidx88.i = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 5, i32 %rfPath.1467.i
  %82 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %arrayidx88.i, align 1
  %arrayidx90.i = getelementptr i8, ptr %PROMContent, i32 %inc61.4.i
  %83 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx90.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %84)
  %cmp92.i = icmp eq i8 %84, -1
  br i1 %cmp92.i, label %if.end118.i.thread193, label %if.else98.i

if.end118.i.thread193:                            ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 2, ptr %arrayidx103.i, align 1
  br label %if.end149.sink.split.i

if.else98.i:                                      ; preds = %if.then86.i
  %86 = lshr i8 %84, 4
  %or.i = or i8 %86, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool110.not.i214 = icmp slt i8 %84, 0
  %spec.select204 = select i1 %tobool110.not.i214, i8 %or.i, i8 %86
  %87 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %spec.select204, ptr %arrayidx103.i, align 1
  %88 = and i8 %84, 15
  %89 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %arrayidx133.i, align 1
  %90 = and i8 %84, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool140.not.i = icmp eq i8 %90, 0
  br i1 %tobool140.not.i, label %if.else98.i.if.else154.i.1_crit_edge, label %if.then141.i

if.else98.i.if.else154.i.1_crit_edge:             ; preds = %if.else98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else154.i.1

if.then141.i:                                     ; preds = %if.else98.i
  call void @__sanitizer_cov_trace_pc() #10
  %or146.i = or i8 %84, -16
  br label %if.end149.sink.split.i

if.end149.sink.split.i:                           ; preds = %if.then141.i, %if.end118.i.thread193
  %or146.sink.i = phi i8 [ %or146.i, %if.then141.i ], [ 4, %if.end118.i.thread193 ]
  %91 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %or146.sink.i, ptr %arrayidx133.i, align 1
  br label %if.else154.i.1

if.else154.i.1:                                   ; preds = %if.end149.sink.split.i, %if.else98.i.if.else154.i.1_crit_edge
  %92 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %arrayidx151.i, align 1
  %.pre = add i32 %eeAddr.0468.i, 12
  %arrayidx155.i.1 = getelementptr i8, ptr %PROMContent, i32 %.pre
  %93 = ptrtoint ptr %arrayidx155.i.1 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx155.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %94)
  %cmp157.i.1 = icmp eq i8 %94, -1
  br i1 %cmp157.i.1, label %if.then191.i.1, label %if.else163.i.1

if.else163.i.1:                                   ; preds = %if.else154.i.1
  %95 = lshr i8 %94, 4
  %arrayidx171.i.1 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 5, i32 %rfPath.1467.i, i32 1
  %or183.i.1 = or i8 %95, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool177.not.i212.1 = icmp slt i8 %94, 0
  %spec.select205.1 = select i1 %tobool177.not.i212.1, i8 %or183.i.1, i8 %95
  %96 = ptrtoint ptr %arrayidx171.i.1 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %spec.select205.1, ptr %arrayidx171.i.1, align 1
  %97 = and i8 %94, 15
  %arrayidx202.i.1 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 %rfPath.1467.i, i32 1
  %98 = ptrtoint ptr %arrayidx202.i.1 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %arrayidx202.i.1, align 1
  %99 = and i8 %94, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool208.not.i.1 = icmp eq i8 %99, 0
  br i1 %tobool208.not.i.1, label %if.else163.i.1.if.end217.i.1_crit_edge, label %if.then209.i.1

if.else163.i.1.if.end217.i.1_crit_edge:           ; preds = %if.else163.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end217.i.1

if.then209.i.1:                                   ; preds = %if.else163.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %or214.i.1 = or i8 %94, -16
  %100 = ptrtoint ptr %arrayidx202.i.1 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %or214.i.1, ptr %arrayidx202.i.1, align 1
  br label %if.end217.i.1

if.then191.i.1:                                   ; preds = %if.else154.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx162.i.1 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 5, i32 %rfPath.1467.i, i32 1
  %101 = ptrtoint ptr %arrayidx162.i.1 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -2, ptr %arrayidx162.i.1, align 1
  %arrayidx194.i.1 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 %rfPath.1467.i, i32 1
  %102 = ptrtoint ptr %arrayidx194.i.1 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -2, ptr %arrayidx194.i.1, align 1
  br label %if.end217.i.1

if.end217.i.1:                                    ; preds = %if.then191.i.1, %if.then209.i.1, %if.else163.i.1.if.end217.i.1_crit_edge
  %inc218.i.1 = add i32 %eeAddr.0468.i, 13
  %arrayidx219.i.1 = getelementptr i8, ptr %PROMContent, i32 %inc218.i.1
  %103 = ptrtoint ptr %arrayidx219.i.1 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx219.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %104)
  %cmp221.i.1 = icmp eq i8 %104, -1
  br i1 %cmp221.i.1, label %if.then255.i.1, label %if.else227.i.1

if.else227.i.1:                                   ; preds = %if.end217.i.1
  %105 = lshr i8 %104, 4
  %arrayidx235.i.1 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 %rfPath.1467.i, i32 1
  %or247.i.1 = or i8 %105, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool241.not.i213.1 = icmp slt i8 %104, 0
  %spec.select206.1 = select i1 %tobool241.not.i213.1, i8 %or247.i.1, i8 %105
  %106 = ptrtoint ptr %arrayidx235.i.1 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %spec.select206.1, ptr %arrayidx235.i.1, align 1
  %107 = and i8 %104, 15
  %arrayidx266.i.1 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 2, i32 %rfPath.1467.i, i32 1
  %108 = ptrtoint ptr %arrayidx266.i.1 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %arrayidx266.i.1, align 1
  %109 = and i8 %104, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool272.not.i.1 = icmp eq i8 %109, 0
  br i1 %tobool272.not.i.1, label %if.else227.i.1.if.else154.i.2_crit_edge, label %if.then273.i.1

if.else227.i.1.if.else154.i.2_crit_edge:          ; preds = %if.else227.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else154.i.2

if.then273.i.1:                                   ; preds = %if.else227.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %or278.i.1 = or i8 %104, -16
  %110 = ptrtoint ptr %arrayidx266.i.1 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %or278.i.1, ptr %arrayidx266.i.1, align 1
  br label %if.else154.i.2

if.then255.i.1:                                   ; preds = %if.end217.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx226.i.1 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 %rfPath.1467.i, i32 1
  %111 = ptrtoint ptr %arrayidx226.i.1 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -2, ptr %arrayidx226.i.1, align 1
  %arrayidx258.i.1 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 2, i32 %rfPath.1467.i, i32 1
  %112 = ptrtoint ptr %arrayidx258.i.1 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 -2, ptr %arrayidx258.i.1, align 1
  br label %if.else154.i.2

if.else154.i.2:                                   ; preds = %if.then255.i.1, %if.then273.i.1, %if.else227.i.1.if.else154.i.2_crit_edge
  %inc153.i.1 = add i32 %eeAddr.0468.i, 14
  %arrayidx155.i.2 = getelementptr i8, ptr %PROMContent, i32 %inc153.i.1
  %113 = ptrtoint ptr %arrayidx155.i.2 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx155.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %114)
  %cmp157.i.2 = icmp eq i8 %114, -1
  br i1 %cmp157.i.2, label %if.then191.i.2, label %if.else163.i.2

if.else163.i.2:                                   ; preds = %if.else154.i.2
  %115 = lshr i8 %114, 4
  %arrayidx171.i.2 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 5, i32 %rfPath.1467.i, i32 2
  %or183.i.2 = or i8 %115, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool177.not.i212.2 = icmp slt i8 %114, 0
  %spec.select205.2 = select i1 %tobool177.not.i212.2, i8 %or183.i.2, i8 %115
  %116 = ptrtoint ptr %arrayidx171.i.2 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %spec.select205.2, ptr %arrayidx171.i.2, align 1
  %117 = and i8 %114, 15
  %arrayidx202.i.2 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 %rfPath.1467.i, i32 2
  %118 = ptrtoint ptr %arrayidx202.i.2 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %arrayidx202.i.2, align 1
  %119 = and i8 %114, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool208.not.i.2 = icmp eq i8 %119, 0
  br i1 %tobool208.not.i.2, label %if.else163.i.2.if.end217.i.2_crit_edge, label %if.then209.i.2

if.else163.i.2.if.end217.i.2_crit_edge:           ; preds = %if.else163.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end217.i.2

if.then209.i.2:                                   ; preds = %if.else163.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %or214.i.2 = or i8 %114, -16
  %120 = ptrtoint ptr %arrayidx202.i.2 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %or214.i.2, ptr %arrayidx202.i.2, align 1
  br label %if.end217.i.2

if.then191.i.2:                                   ; preds = %if.else154.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx162.i.2 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 5, i32 %rfPath.1467.i, i32 2
  %121 = ptrtoint ptr %arrayidx162.i.2 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 -2, ptr %arrayidx162.i.2, align 1
  %arrayidx194.i.2 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 %rfPath.1467.i, i32 2
  %122 = ptrtoint ptr %arrayidx194.i.2 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -2, ptr %arrayidx194.i.2, align 1
  br label %if.end217.i.2

if.end217.i.2:                                    ; preds = %if.then191.i.2, %if.then209.i.2, %if.else163.i.2.if.end217.i.2_crit_edge
  %inc218.i.2 = add i32 %eeAddr.0468.i, 15
  %arrayidx219.i.2 = getelementptr i8, ptr %PROMContent, i32 %inc218.i.2
  %123 = ptrtoint ptr %arrayidx219.i.2 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx219.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %124)
  %cmp221.i.2 = icmp eq i8 %124, -1
  br i1 %cmp221.i.2, label %if.then255.i.2, label %if.else227.i.2

if.else227.i.2:                                   ; preds = %if.end217.i.2
  %125 = lshr i8 %124, 4
  %arrayidx235.i.2 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 %rfPath.1467.i, i32 2
  %or247.i.2 = or i8 %125, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool241.not.i213.2 = icmp slt i8 %124, 0
  %spec.select206.2 = select i1 %tobool241.not.i213.2, i8 %or247.i.2, i8 %125
  %126 = ptrtoint ptr %arrayidx235.i.2 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %spec.select206.2, ptr %arrayidx235.i.2, align 1
  %127 = and i8 %124, 15
  %arrayidx266.i.2 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 2, i32 %rfPath.1467.i, i32 2
  %128 = ptrtoint ptr %arrayidx266.i.2 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %arrayidx266.i.2, align 1
  %129 = and i8 %124, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool272.not.i.2 = icmp eq i8 %129, 0
  br i1 %tobool272.not.i.2, label %if.else227.i.2.if.else154.i.3_crit_edge, label %if.then273.i.2

if.else227.i.2.if.else154.i.3_crit_edge:          ; preds = %if.else227.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else154.i.3

if.then273.i.2:                                   ; preds = %if.else227.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %or278.i.2 = or i8 %124, -16
  %130 = ptrtoint ptr %arrayidx266.i.2 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %or278.i.2, ptr %arrayidx266.i.2, align 1
  br label %if.else154.i.3

if.then255.i.2:                                   ; preds = %if.end217.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx226.i.2 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 %rfPath.1467.i, i32 2
  %131 = ptrtoint ptr %arrayidx226.i.2 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 -2, ptr %arrayidx226.i.2, align 1
  %arrayidx258.i.2 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 2, i32 %rfPath.1467.i, i32 2
  %132 = ptrtoint ptr %arrayidx258.i.2 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 -2, ptr %arrayidx258.i.2, align 1
  br label %if.else154.i.3

if.else154.i.3:                                   ; preds = %if.then255.i.2, %if.then273.i.2, %if.else227.i.2.if.else154.i.3_crit_edge
  %inc153.i.2 = add i32 %eeAddr.0468.i, 16
  %arrayidx155.i.3 = getelementptr i8, ptr %PROMContent, i32 %inc153.i.2
  %133 = ptrtoint ptr %arrayidx155.i.3 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx155.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %134)
  %cmp157.i.3 = icmp eq i8 %134, -1
  br i1 %cmp157.i.3, label %if.then191.i.3, label %if.else163.i.3

if.else163.i.3:                                   ; preds = %if.else154.i.3
  %135 = lshr i8 %134, 4
  %arrayidx171.i.3 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 5, i32 %rfPath.1467.i, i32 3
  %or183.i.3 = or i8 %135, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool177.not.i212.3 = icmp slt i8 %134, 0
  %spec.select205.3 = select i1 %tobool177.not.i212.3, i8 %or183.i.3, i8 %135
  %136 = ptrtoint ptr %arrayidx171.i.3 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %spec.select205.3, ptr %arrayidx171.i.3, align 1
  %137 = and i8 %134, 15
  %arrayidx202.i.3 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 %rfPath.1467.i, i32 3
  %138 = ptrtoint ptr %arrayidx202.i.3 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %arrayidx202.i.3, align 1
  %139 = and i8 %134, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool208.not.i.3 = icmp eq i8 %139, 0
  br i1 %tobool208.not.i.3, label %if.else163.i.3.if.end217.i.3_crit_edge, label %if.then209.i.3

if.else163.i.3.if.end217.i.3_crit_edge:           ; preds = %if.else163.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end217.i.3

if.then209.i.3:                                   ; preds = %if.else163.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %or214.i.3 = or i8 %134, -16
  %140 = ptrtoint ptr %arrayidx202.i.3 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %or214.i.3, ptr %arrayidx202.i.3, align 1
  br label %if.end217.i.3

if.then191.i.3:                                   ; preds = %if.else154.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx162.i.3 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 5, i32 %rfPath.1467.i, i32 3
  %141 = ptrtoint ptr %arrayidx162.i.3 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 -2, ptr %arrayidx162.i.3, align 1
  %arrayidx194.i.3 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 %rfPath.1467.i, i32 3
  %142 = ptrtoint ptr %arrayidx194.i.3 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 -2, ptr %arrayidx194.i.3, align 1
  br label %if.end217.i.3

if.end217.i.3:                                    ; preds = %if.then191.i.3, %if.then209.i.3, %if.else163.i.3.if.end217.i.3_crit_edge
  %inc218.i.3 = add i32 %eeAddr.0468.i, 17
  %arrayidx219.i.3 = getelementptr i8, ptr %PROMContent, i32 %inc218.i.3
  %143 = ptrtoint ptr %arrayidx219.i.3 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx219.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %144)
  %cmp221.i.3 = icmp eq i8 %144, -1
  br i1 %cmp221.i.3, label %if.then255.i.3, label %if.else227.i.3

if.else227.i.3:                                   ; preds = %if.end217.i.3
  %145 = lshr i8 %144, 4
  %arrayidx235.i.3 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 %rfPath.1467.i, i32 3
  %or247.i.3 = or i8 %145, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool241.not.i213.3 = icmp slt i8 %144, 0
  %spec.select206.3 = select i1 %tobool241.not.i213.3, i8 %or247.i.3, i8 %145
  %146 = ptrtoint ptr %arrayidx235.i.3 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %spec.select206.3, ptr %arrayidx235.i.3, align 1
  %147 = and i8 %144, 15
  %arrayidx266.i.3 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 2, i32 %rfPath.1467.i, i32 3
  %148 = ptrtoint ptr %arrayidx266.i.3 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %arrayidx266.i.3, align 1
  %149 = and i8 %144, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool272.not.i.3 = icmp eq i8 %149, 0
  br i1 %tobool272.not.i.3, label %if.else227.i.3.for.inc284.i.3_crit_edge, label %if.then273.i.3

if.else227.i.3.for.inc284.i.3_crit_edge:          ; preds = %if.else227.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc284.i.3

if.then273.i.3:                                   ; preds = %if.else227.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %or278.i.3 = or i8 %144, -16
  %150 = ptrtoint ptr %arrayidx266.i.3 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %or278.i.3, ptr %arrayidx266.i.3, align 1
  br label %for.inc284.i.3

if.then255.i.3:                                   ; preds = %if.end217.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx226.i.3 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 %rfPath.1467.i, i32 3
  %151 = ptrtoint ptr %arrayidx226.i.3 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 -2, ptr %arrayidx226.i.3, align 1
  %arrayidx258.i.3 = getelementptr %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 2, i32 %rfPath.1467.i, i32 3
  %152 = ptrtoint ptr %arrayidx258.i.3 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 -2, ptr %arrayidx258.i.3, align 1
  br label %for.inc284.i.3

for.inc284.i.3:                                   ; preds = %if.then255.i.3, %if.then273.i.3, %if.else227.i.3.for.inc284.i.3_crit_edge
  %inc153.i.3 = add i32 %eeAddr.0468.i, 18
  %inc288.i = add nuw nsw i32 %rfPath.1467.i, 1
  %exitcond474.not.i = icmp eq i32 %inc288.i, 3
  br i1 %exitcond474.not.i, label %for.inc284.i.3.hal_get_chnl_group_88e.exit.peel_crit_edge, label %for.inc284.i.3.if.then86.i_crit_edge

for.inc284.i.3.if.then86.i_crit_edge:             ; preds = %for.inc284.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86.i

for.inc284.i.3.hal_get_chnl_group_88e.exit.peel_crit_edge: ; preds = %for.inc284.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %hal_get_chnl_group_88e.exit.peel

hal_get_chnl_group_88e.exit.peel:                 ; preds = %for.inc284.i.3.hal_get_chnl_group_88e.exit.peel_crit_edge, %for.inc26.3.2.i
  %IndexBW40_Base12 = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 1
  %153 = ptrtoint ptr %pwrInfo24G to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %pwrInfo24G, align 1
  %arrayidx4.peel = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 13, i32 0
  %155 = ptrtoint ptr %arrayidx4.peel to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %arrayidx4.peel, align 1
  %156 = ptrtoint ptr %IndexBW40_Base12 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %IndexBW40_Base12, align 1
  %arrayidx18.peel = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 14, i32 0
  %158 = ptrtoint ptr %arrayidx18.peel to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %arrayidx18.peel, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %159 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %159)
  %cmp19.peel = icmp ugt i32 %159, 4
  br i1 %cmp19.peel, label %do.body27.peel, label %hal_get_chnl_group_88e.exit.peel.hal_get_chnl_group_88e.exit.peel225_crit_edge

hal_get_chnl_group_88e.exit.peel.hal_get_chnl_group_88e.exit.peel225_crit_edge: ; preds = %hal_get_chnl_group_88e.exit.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %hal_get_chnl_group_88e.exit.peel225

do.body27.peel:                                   ; preds = %hal_get_chnl_group_88e.exit.peel
  %call.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr.peel = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr.peel)
  %cmp28.peel = icmp ugt i32 %.pr.peel, 4
  br i1 %cmp28.peel, label %do.body44.peel, label %do.body27.peel.hal_get_chnl_group_88e.exit.peel225_crit_edge

do.body27.peel.hal_get_chnl_group_88e.exit.peel225_crit_edge: ; preds = %do.body27.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %hal_get_chnl_group_88e.exit.peel225

do.body44.peel:                                   ; preds = %do.body27.peel
  %160 = ptrtoint ptr %arrayidx4.peel to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx4.peel, align 1
  %conv39.peel = zext i8 %161 to i32
  %call40.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef %conv39.peel) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr196.peel = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr196.peel)
  %cmp45.peel = icmp ugt i32 %.pr196.peel, 4
  br i1 %cmp45.peel, label %do.end50.peel, label %do.body44.peel.hal_get_chnl_group_88e.exit.peel225_crit_edge

do.body44.peel.hal_get_chnl_group_88e.exit.peel225_crit_edge: ; preds = %do.body44.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %hal_get_chnl_group_88e.exit.peel225

do.end50.peel:                                    ; preds = %do.body44.peel
  call void @__sanitizer_cov_trace_pc() #10
  %162 = ptrtoint ptr %arrayidx18.peel to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx18.peel, align 1
  %conv56.peel = zext i8 %163 to i32
  %call57.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef %conv56.peel) #11
  br label %hal_get_chnl_group_88e.exit.peel225

hal_get_chnl_group_88e.exit.peel225:              ; preds = %do.end50.peel, %do.body44.peel.hal_get_chnl_group_88e.exit.peel225_crit_edge, %do.body27.peel.hal_get_chnl_group_88e.exit.peel225_crit_edge, %hal_get_chnl_group_88e.exit.peel.hal_get_chnl_group_88e.exit.peel225_crit_edge
  %164 = ptrtoint ptr %pwrInfo24G to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %pwrInfo24G, align 1
  %arrayidx4.peel228 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 13, i32 1
  %166 = ptrtoint ptr %arrayidx4.peel228 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %arrayidx4.peel228, align 1
  %167 = ptrtoint ptr %IndexBW40_Base12 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %IndexBW40_Base12, align 1
  %arrayidx18.peel230 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 14, i32 1
  %169 = ptrtoint ptr %arrayidx18.peel230 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %arrayidx18.peel230, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %170 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %170)
  %cmp19.peel231 = icmp ugt i32 %170, 4
  br i1 %cmp19.peel231, label %do.body27.peel232, label %hal_get_chnl_group_88e.exit.peel225.hal_get_chnl_group_88e.exit.peel257_crit_edge

hal_get_chnl_group_88e.exit.peel225.hal_get_chnl_group_88e.exit.peel257_crit_edge: ; preds = %hal_get_chnl_group_88e.exit.peel225
  call void @__sanitizer_cov_trace_pc() #10
  br label %hal_get_chnl_group_88e.exit.peel257

do.body27.peel232:                                ; preds = %hal_get_chnl_group_88e.exit.peel225
  %call.peel233 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef 1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr.peel234 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr.peel234)
  %cmp28.peel235 = icmp ugt i32 %.pr.peel234, 4
  br i1 %cmp28.peel235, label %do.body44.peel236, label %do.body27.peel232.hal_get_chnl_group_88e.exit.peel257_crit_edge

do.body27.peel232.hal_get_chnl_group_88e.exit.peel257_crit_edge: ; preds = %do.body27.peel232
  call void @__sanitizer_cov_trace_pc() #10
  br label %hal_get_chnl_group_88e.exit.peel257

do.body44.peel236:                                ; preds = %do.body27.peel232
  %171 = ptrtoint ptr %arrayidx4.peel228 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx4.peel228, align 1
  %conv39.peel237 = zext i8 %172 to i32
  %call40.peel238 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef 1, i32 noundef %conv39.peel237) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr196.peel239 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr196.peel239)
  %cmp45.peel240 = icmp ugt i32 %.pr196.peel239, 4
  br i1 %cmp45.peel240, label %do.end50.peel241, label %do.body44.peel236.hal_get_chnl_group_88e.exit.peel257_crit_edge

do.body44.peel236.hal_get_chnl_group_88e.exit.peel257_crit_edge: ; preds = %do.body44.peel236
  call void @__sanitizer_cov_trace_pc() #10
  br label %hal_get_chnl_group_88e.exit.peel257

do.end50.peel241:                                 ; preds = %do.body44.peel236
  call void @__sanitizer_cov_trace_pc() #10
  %173 = ptrtoint ptr %arrayidx18.peel230 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx18.peel230, align 1
  %conv56.peel242 = zext i8 %174 to i32
  %call57.peel243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 1, i32 noundef %conv56.peel242) #11
  br label %hal_get_chnl_group_88e.exit.peel257

hal_get_chnl_group_88e.exit.peel257:              ; preds = %do.end50.peel241, %do.body44.peel236.hal_get_chnl_group_88e.exit.peel257_crit_edge, %do.body27.peel232.hal_get_chnl_group_88e.exit.peel257_crit_edge, %hal_get_chnl_group_88e.exit.peel225.hal_get_chnl_group_88e.exit.peel257_crit_edge
  %175 = ptrtoint ptr %pwrInfo24G to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %pwrInfo24G, align 1
  %arrayidx4.peel260 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 13, i32 2
  %177 = ptrtoint ptr %arrayidx4.peel260 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %arrayidx4.peel260, align 1
  %178 = ptrtoint ptr %IndexBW40_Base12 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %IndexBW40_Base12, align 1
  %arrayidx18.peel262 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 14, i32 2
  %180 = ptrtoint ptr %arrayidx18.peel262 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %arrayidx18.peel262, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %181 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %181)
  %cmp19.peel263 = icmp ugt i32 %181, 4
  br i1 %cmp19.peel263, label %do.body27.peel264, label %hal_get_chnl_group_88e.exit.peel257.hal_get_chnl_group_88e.exit.peel283_crit_edge

hal_get_chnl_group_88e.exit.peel257.hal_get_chnl_group_88e.exit.peel283_crit_edge: ; preds = %hal_get_chnl_group_88e.exit.peel257
  call void @__sanitizer_cov_trace_pc() #10
  br label %hal_get_chnl_group_88e.exit.peel283

do.body27.peel264:                                ; preds = %hal_get_chnl_group_88e.exit.peel257
  %call.peel265 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef 2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr.peel266 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr.peel266)
  %cmp28.peel267 = icmp ugt i32 %.pr.peel266, 4
  br i1 %cmp28.peel267, label %do.body44.peel268, label %do.body27.peel264.hal_get_chnl_group_88e.exit.peel283_crit_edge

do.body27.peel264.hal_get_chnl_group_88e.exit.peel283_crit_edge: ; preds = %do.body27.peel264
  call void @__sanitizer_cov_trace_pc() #10
  br label %hal_get_chnl_group_88e.exit.peel283

do.body44.peel268:                                ; preds = %do.body27.peel264
  %182 = ptrtoint ptr %arrayidx4.peel260 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx4.peel260, align 1
  %conv39.peel269 = zext i8 %183 to i32
  %call40.peel270 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef 2, i32 noundef %conv39.peel269) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr196.peel271 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr196.peel271)
  %cmp45.peel272 = icmp ugt i32 %.pr196.peel271, 4
  br i1 %cmp45.peel272, label %do.end50.peel273, label %do.body44.peel268.hal_get_chnl_group_88e.exit.peel283_crit_edge

do.body44.peel268.hal_get_chnl_group_88e.exit.peel283_crit_edge: ; preds = %do.body44.peel268
  call void @__sanitizer_cov_trace_pc() #10
  br label %hal_get_chnl_group_88e.exit.peel283

do.end50.peel273:                                 ; preds = %do.body44.peel268
  call void @__sanitizer_cov_trace_pc() #10
  %184 = ptrtoint ptr %arrayidx18.peel262 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx18.peel262, align 1
  %conv56.peel274 = zext i8 %185 to i32
  %call57.peel275 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 2, i32 noundef %conv56.peel274) #11
  br label %hal_get_chnl_group_88e.exit.peel283

hal_get_chnl_group_88e.exit.peel283:              ; preds = %do.end50.peel273, %do.body44.peel268.hal_get_chnl_group_88e.exit.peel283_crit_edge, %do.body27.peel264.hal_get_chnl_group_88e.exit.peel283_crit_edge, %hal_get_chnl_group_88e.exit.peel257.hal_get_chnl_group_88e.exit.peel283_crit_edge
  %arrayidx2.peel = getelementptr [6 x i8], ptr %pwrInfo24G, i32 0, i32 1
  %186 = ptrtoint ptr %arrayidx2.peel to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx2.peel, align 1
  %arrayidx4.peel284 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 13, i32 3
  %188 = ptrtoint ptr %arrayidx4.peel284 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %arrayidx4.peel284, align 1
  %arrayidx15.peel = getelementptr [6 x i8], ptr %IndexBW40_Base12, i32 0, i32 1
  %189 = ptrtoint ptr %arrayidx15.peel to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx15.peel, align 1
  %arrayidx18.peel285 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 14, i32 3
  %191 = ptrtoint ptr %arrayidx18.peel285 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %arrayidx18.peel285, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %192 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %192)
  %cmp19.peel286 = icmp ugt i32 %192, 4
  br i1 %cmp19.peel286, label %do.body27.peel287, label %hal_get_chnl_group_88e.exit.peel283.hal_get_chnl_group_88e.exit.peel307_crit_edge

hal_get_chnl_group_88e.exit.peel283.hal_get_chnl_group_88e.exit.peel307_crit_edge: ; preds = %hal_get_chnl_group_88e.exit.peel283
  call void @__sanitizer_cov_trace_pc() #10
  br label %hal_get_chnl_group_88e.exit.peel307

do.body27.peel287:                                ; preds = %hal_get_chnl_group_88e.exit.peel283
  %call.peel288 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef 3) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr.peel289 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr.peel289)
  %cmp28.peel290 = icmp ugt i32 %.pr.peel289, 4
  br i1 %cmp28.peel290, label %do.body44.peel291, label %do.body27.peel287.hal_get_chnl_group_88e.exit.peel307_crit_edge

do.body27.peel287.hal_get_chnl_group_88e.exit.peel307_crit_edge: ; preds = %do.body27.peel287
  call void @__sanitizer_cov_trace_pc() #10
  br label %hal_get_chnl_group_88e.exit.peel307

do.body44.peel291:                                ; preds = %do.body27.peel287
  %193 = ptrtoint ptr %arrayidx4.peel284 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx4.peel284, align 1
  %conv39.peel292 = zext i8 %194 to i32
  %call40.peel293 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef 3, i32 noundef %conv39.peel292) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr196.peel294 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr196.peel294)
  %cmp45.peel295 = icmp ugt i32 %.pr196.peel294, 4
  br i1 %cmp45.peel295, label %do.end50.peel296, label %do.body44.peel291.hal_get_chnl_group_88e.exit.peel307_crit_edge

do.body44.peel291.hal_get_chnl_group_88e.exit.peel307_crit_edge: ; preds = %do.body44.peel291
  call void @__sanitizer_cov_trace_pc() #10
  br label %hal_get_chnl_group_88e.exit.peel307

do.end50.peel296:                                 ; preds = %do.body44.peel291
  call void @__sanitizer_cov_trace_pc() #10
  %195 = ptrtoint ptr %arrayidx18.peel285 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx18.peel285, align 1
  %conv56.peel297 = zext i8 %196 to i32
  %call57.peel298 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 3, i32 noundef %conv56.peel297) #11
  br label %hal_get_chnl_group_88e.exit.peel307

hal_get_chnl_group_88e.exit.peel307:              ; preds = %do.end50.peel296, %do.body44.peel291.hal_get_chnl_group_88e.exit.peel307_crit_edge, %do.body27.peel287.hal_get_chnl_group_88e.exit.peel307_crit_edge, %hal_get_chnl_group_88e.exit.peel283.hal_get_chnl_group_88e.exit.peel307_crit_edge
  %arrayidx2.peel309 = getelementptr [6 x i8], ptr %pwrInfo24G, i32 0, i32 1
  %197 = ptrtoint ptr %arrayidx2.peel309 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx2.peel309, align 1
  %arrayidx4.peel310 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 13, i32 4
  %199 = ptrtoint ptr %arrayidx4.peel310 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %198, ptr %arrayidx4.peel310, align 1
  %arrayidx15.peel311 = getelementptr [6 x i8], ptr %IndexBW40_Base12, i32 0, i32 1
  %200 = ptrtoint ptr %arrayidx15.peel311 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx15.peel311, align 1
  %arrayidx18.peel312 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 14, i32 4
  %202 = ptrtoint ptr %arrayidx18.peel312 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %201, ptr %arrayidx18.peel312, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %203 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %203)
  %cmp19.peel313 = icmp ugt i32 %203, 4
  br i1 %cmp19.peel313, label %do.body27.peel314, label %hal_get_chnl_group_88e.exit.peel307.hal_get_chnl_group_88e.exit.peel337_crit_edge

hal_get_chnl_group_88e.exit.peel307.hal_get_chnl_group_88e.exit.peel337_crit_edge: ; preds = %hal_get_chnl_group_88e.exit.peel307
  call void @__sanitizer_cov_trace_pc() #10
  br label %hal_get_chnl_group_88e.exit.peel337

do.body27.peel314:                                ; preds = %hal_get_chnl_group_88e.exit.peel307
  %call.peel315 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr.peel316 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr.peel316)
  %cmp28.peel317 = icmp ugt i32 %.pr.peel316, 4
  br i1 %cmp28.peel317, label %do.body44.peel318, label %do.body27.peel314.hal_get_chnl_group_88e.exit.peel337_crit_edge

do.body27.peel314.hal_get_chnl_group_88e.exit.peel337_crit_edge: ; preds = %do.body27.peel314
  call void @__sanitizer_cov_trace_pc() #10
  br label %hal_get_chnl_group_88e.exit.peel337

do.body44.peel318:                                ; preds = %do.body27.peel314
  %204 = ptrtoint ptr %arrayidx4.peel310 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx4.peel310, align 1
  %conv39.peel319 = zext i8 %205 to i32
  %call40.peel320 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef %conv39.peel319) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr196.peel321 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr196.peel321)
  %cmp45.peel322 = icmp ugt i32 %.pr196.peel321, 4
  br i1 %cmp45.peel322, label %do.end50.peel323, label %do.body44.peel318.hal_get_chnl_group_88e.exit.peel337_crit_edge

do.body44.peel318.hal_get_chnl_group_88e.exit.peel337_crit_edge: ; preds = %do.body44.peel318
  call void @__sanitizer_cov_trace_pc() #10
  br label %hal_get_chnl_group_88e.exit.peel337

do.end50.peel323:                                 ; preds = %do.body44.peel318
  call void @__sanitizer_cov_trace_pc() #10
  %206 = ptrtoint ptr %arrayidx18.peel312 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx18.peel312, align 1
  %conv56.peel324 = zext i8 %207 to i32
  %call57.peel325 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 4, i32 noundef %conv56.peel324) #11
  br label %hal_get_chnl_group_88e.exit.peel337

hal_get_chnl_group_88e.exit.peel337:              ; preds = %do.end50.peel323, %do.body44.peel318.hal_get_chnl_group_88e.exit.peel337_crit_edge, %do.body27.peel314.hal_get_chnl_group_88e.exit.peel337_crit_edge, %hal_get_chnl_group_88e.exit.peel307.hal_get_chnl_group_88e.exit.peel337_crit_edge
  %arrayidx2.peel339 = getelementptr [6 x i8], ptr %pwrInfo24G, i32 0, i32 1
  %208 = ptrtoint ptr %arrayidx2.peel339 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx2.peel339, align 1
  %arrayidx4.peel340 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 13, i32 5
  %210 = ptrtoint ptr %arrayidx4.peel340 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %209, ptr %arrayidx4.peel340, align 1
  %arrayidx15.peel341 = getelementptr [6 x i8], ptr %IndexBW40_Base12, i32 0, i32 1
  %211 = ptrtoint ptr %arrayidx15.peel341 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx15.peel341, align 1
  %arrayidx18.peel342 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 14, i32 5
  %213 = ptrtoint ptr %arrayidx18.peel342 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %212, ptr %arrayidx18.peel342, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %214 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %214)
  %cmp19.peel343 = icmp ugt i32 %214, 4
  br i1 %cmp19.peel343, label %do.body27.peel344, label %hal_get_chnl_group_88e.exit.peel337.if.else.i.preheader.peel.newph_crit_edge

hal_get_chnl_group_88e.exit.peel337.if.else.i.preheader.peel.newph_crit_edge: ; preds = %hal_get_chnl_group_88e.exit.peel337
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.preheader.peel.newph

do.body27.peel344:                                ; preds = %hal_get_chnl_group_88e.exit.peel337
  %call.peel345 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef 5) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr.peel346 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr.peel346)
  %cmp28.peel347 = icmp ugt i32 %.pr.peel346, 4
  br i1 %cmp28.peel347, label %do.body44.peel348, label %do.body27.peel344.if.else.i.preheader.peel.newph_crit_edge

do.body27.peel344.if.else.i.preheader.peel.newph_crit_edge: ; preds = %do.body27.peel344
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.preheader.peel.newph

do.body44.peel348:                                ; preds = %do.body27.peel344
  %215 = ptrtoint ptr %arrayidx4.peel340 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx4.peel340, align 1
  %conv39.peel349 = zext i8 %216 to i32
  %call40.peel350 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef 5, i32 noundef %conv39.peel349) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr196.peel351 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr196.peel351)
  %cmp45.peel352 = icmp ugt i32 %.pr196.peel351, 4
  br i1 %cmp45.peel352, label %do.end50.peel353, label %do.body44.peel348.if.else.i.preheader.peel.newph_crit_edge

do.body44.peel348.if.else.i.preheader.peel.newph_crit_edge: ; preds = %do.body44.peel348
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.preheader.peel.newph

do.end50.peel353:                                 ; preds = %do.body44.peel348
  call void @__sanitizer_cov_trace_pc() #10
  %217 = ptrtoint ptr %arrayidx18.peel342 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx18.peel342, align 1
  %conv56.peel354 = zext i8 %218 to i32
  %call57.peel355 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 5, i32 noundef %conv56.peel354) #11
  br label %if.else.i.preheader.peel.newph

if.else.i.preheader.peel.newph:                   ; preds = %do.end50.peel353, %do.body44.peel348.if.else.i.preheader.peel.newph_crit_edge, %do.body27.peel344.if.else.i.preheader.peel.newph_crit_edge, %hal_get_chnl_group_88e.exit.peel337.if.else.i.preheader.peel.newph_crit_edge
  br label %if.else.i

for.cond61.preheader:                             ; preds = %for.inc
  %OFDM_Diff = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3
  %BW20_Diff = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4
  %219 = ptrtoint ptr %OFDM_Diff to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %OFDM_Diff, align 1
  %arrayidx70 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 15, i32 0
  %221 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %220, ptr %arrayidx70, align 1
  %222 = ptrtoint ptr %BW20_Diff to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %BW20_Diff, align 1
  %arrayidx75 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 16, i32 0
  %224 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %223, ptr %arrayidx75, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %225 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %225)
  %cmp77 = icmp ugt i32 %225, 4
  br i1 %cmp77, label %do.body89, label %for.cond61.preheader.for.inc123_crit_edge

for.cond61.preheader.for.inc123_crit_edge:        ; preds = %for.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc123

if.else.i:                                        ; preds = %for.inc.if.else.i_crit_edge, %if.else.i.preheader.peel.newph
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.if.else.i_crit_edge ], [ 6, %if.else.i.preheader.peel.newph ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv)
  %cmp8.i = icmp ult i32 %indvars.iv, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %indvars.iv)
  %cmp13.i = icmp ult i32 %indvars.iv, 12
  %spec.select = select i1 %cmp13.i, i32 3, i32 4
  %.sink.i191 = select i1 %cmp8.i, i32 2, i32 %spec.select
  %arrayidx2 = getelementptr [6 x i8], ptr %pwrInfo24G, i32 0, i32 %.sink.i191
  %226 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx2, align 1
  %arrayidx4 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 13, i32 %indvars.iv
  %228 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %227, ptr %arrayidx4, align 1
  %arrayidx15 = getelementptr [6 x i8], ptr %IndexBW40_Base12, i32 0, i32 %.sink.i191
  %229 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx15, align 1
  %arrayidx18 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 14, i32 %indvars.iv
  %231 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %230, ptr %arrayidx18, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %232 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %232)
  %cmp19 = icmp ugt i32 %232, 4
  br i1 %cmp19, label %do.body27, label %if.else.i.for.inc_crit_edge

if.else.i.for.inc_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body27:                                        ; preds = %if.else.i
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %indvars.iv) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp28 = icmp ugt i32 %.pr, 4
  br i1 %cmp28, label %do.body44, label %do.body27.for.inc_crit_edge

do.body27.for.inc_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body44:                                        ; preds = %do.body27
  %233 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx4, align 1
  %conv39 = zext i8 %234 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %indvars.iv, i32 noundef %conv39) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr196 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr196)
  %cmp45 = icmp ugt i32 %.pr196, 4
  br i1 %cmp45, label %do.end50, label %do.body44.for.inc_crit_edge

do.body44.for.inc_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end50:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  %235 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx18, align 1
  %conv56 = zext i8 %236 to i32
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %indvars.iv, i32 noundef %conv56) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end50, %do.body44.for.inc_crit_edge, %do.body27.for.inc_crit_edge, %if.else.i.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 14
  br i1 %exitcond.not, label %for.cond61.preheader, label %for.inc.if.else.i_crit_edge, !llvm.loop !217

for.inc.if.else.i_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

do.body89:                                        ; preds = %for.cond61.preheader
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr198 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr198)
  %cmp90 = icmp ugt i32 %.pr198, 4
  br i1 %cmp90, label %do.body106, label %do.body89.for.inc123_crit_edge

do.body89.for.inc123_crit_edge:                   ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc123

do.body106:                                       ; preds = %do.body89
  %237 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx70, align 1
  %conv101 = sext i8 %238 to i32
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef %conv101) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr200 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr200)
  %cmp107 = icmp ugt i32 %.pr200, 4
  br i1 %cmp107, label %do.end112, label %do.body106.for.inc123_crit_edge

do.body106.for.inc123_crit_edge:                  ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc123

do.end112:                                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #10
  %239 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx75, align 1
  %conv118 = sext i8 %240 to i32
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef 0, i32 noundef %conv118) #11
  br label %for.inc123

for.inc123:                                       ; preds = %do.end112, %do.body106.for.inc123_crit_edge, %do.body89.for.inc123_crit_edge, %for.cond61.preheader.for.inc123_crit_edge
  %arrayidx68.1 = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 0, i32 1
  %241 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx68.1, align 1
  %arrayidx70.1 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 15, i32 1
  %243 = ptrtoint ptr %arrayidx70.1 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %arrayidx70.1, align 1
  %arrayidx73.1 = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 0, i32 1
  %244 = ptrtoint ptr %arrayidx73.1 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx73.1, align 1
  %arrayidx75.1 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 16, i32 1
  %246 = ptrtoint ptr %arrayidx75.1 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %245, ptr %arrayidx75.1, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %247 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %247)
  %cmp77.1 = icmp ugt i32 %247, 4
  br i1 %cmp77.1, label %do.body89.1, label %for.inc123.for.inc123.1_crit_edge

for.inc123.for.inc123.1_crit_edge:                ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc123.1

do.body89.1:                                      ; preds = %for.inc123
  %call85.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef 1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr198.1 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr198.1)
  %cmp90.1 = icmp ugt i32 %.pr198.1, 4
  br i1 %cmp90.1, label %do.body106.1, label %do.body89.1.for.inc123.1_crit_edge

do.body89.1.for.inc123.1_crit_edge:               ; preds = %do.body89.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc123.1

do.body106.1:                                     ; preds = %do.body89.1
  %248 = ptrtoint ptr %arrayidx70.1 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx70.1, align 1
  %conv101.1 = sext i8 %249 to i32
  %call102.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 1, i32 noundef %conv101.1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr200.1 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr200.1)
  %cmp107.1 = icmp ugt i32 %.pr200.1, 4
  br i1 %cmp107.1, label %do.end112.1, label %do.body106.1.for.inc123.1_crit_edge

do.body106.1.for.inc123.1_crit_edge:              ; preds = %do.body106.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc123.1

do.end112.1:                                      ; preds = %do.body106.1
  call void @__sanitizer_cov_trace_pc() #10
  %250 = ptrtoint ptr %arrayidx75.1 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx75.1, align 1
  %conv118.1 = sext i8 %251 to i32
  %call119.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef 1, i32 noundef %conv118.1) #11
  br label %for.inc123.1

for.inc123.1:                                     ; preds = %do.end112.1, %do.body106.1.for.inc123.1_crit_edge, %do.body89.1.for.inc123.1_crit_edge, %for.inc123.for.inc123.1_crit_edge
  %arrayidx68.2 = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 0, i32 2
  %252 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx68.2, align 1
  %arrayidx70.2 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 15, i32 2
  %254 = ptrtoint ptr %arrayidx70.2 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %253, ptr %arrayidx70.2, align 1
  %arrayidx73.2 = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 0, i32 2
  %255 = ptrtoint ptr %arrayidx73.2 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx73.2, align 1
  %arrayidx75.2 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 16, i32 2
  %257 = ptrtoint ptr %arrayidx75.2 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %256, ptr %arrayidx75.2, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %258 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %258)
  %cmp77.2 = icmp ugt i32 %258, 4
  br i1 %cmp77.2, label %do.body89.2, label %for.inc123.1.for.inc123.2_crit_edge

for.inc123.1.for.inc123.2_crit_edge:              ; preds = %for.inc123.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc123.2

do.body89.2:                                      ; preds = %for.inc123.1
  %call85.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef 2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr198.2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr198.2)
  %cmp90.2 = icmp ugt i32 %.pr198.2, 4
  br i1 %cmp90.2, label %do.body106.2, label %do.body89.2.for.inc123.2_crit_edge

do.body89.2.for.inc123.2_crit_edge:               ; preds = %do.body89.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc123.2

do.body106.2:                                     ; preds = %do.body89.2
  %259 = ptrtoint ptr %arrayidx70.2 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx70.2, align 1
  %conv101.2 = sext i8 %260 to i32
  %call102.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 2, i32 noundef %conv101.2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr200.2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr200.2)
  %cmp107.2 = icmp ugt i32 %.pr200.2, 4
  br i1 %cmp107.2, label %do.end112.2, label %do.body106.2.for.inc123.2_crit_edge

do.body106.2.for.inc123.2_crit_edge:              ; preds = %do.body106.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc123.2

do.end112.2:                                      ; preds = %do.body106.2
  call void @__sanitizer_cov_trace_pc() #10
  %261 = ptrtoint ptr %arrayidx75.2 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx75.2, align 1
  %conv118.2 = sext i8 %262 to i32
  %call119.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef 2, i32 noundef %conv118.2) #11
  br label %for.inc123.2

for.inc123.2:                                     ; preds = %do.end112.2, %do.body106.2.for.inc123.2_crit_edge, %do.body89.2.for.inc123.2_crit_edge, %for.inc123.1.for.inc123.2_crit_edge
  %arrayidx68.3 = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 3, i32 0, i32 3
  %263 = ptrtoint ptr %arrayidx68.3 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %arrayidx68.3, align 1
  %arrayidx70.3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 15, i32 3
  %265 = ptrtoint ptr %arrayidx70.3 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %264, ptr %arrayidx70.3, align 1
  %arrayidx73.3 = getelementptr inbounds %struct.txpowerinfo24g, ptr %pwrInfo24G, i32 0, i32 4, i32 0, i32 3
  %266 = ptrtoint ptr %arrayidx73.3 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx73.3, align 1
  %arrayidx75.3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 19, i32 16, i32 3
  %268 = ptrtoint ptr %arrayidx75.3 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %267, ptr %arrayidx75.3, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %269 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %269)
  %cmp77.3 = icmp ugt i32 %269, 4
  br i1 %cmp77.3, label %do.body89.3, label %for.inc123.2.for.inc123.3_crit_edge

for.inc123.2.for.inc123.3_crit_edge:              ; preds = %for.inc123.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc123.3

do.body89.3:                                      ; preds = %for.inc123.2
  %call85.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef 3) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr198.3 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr198.3)
  %cmp90.3 = icmp ugt i32 %.pr198.3, 4
  br i1 %cmp90.3, label %do.body106.3, label %do.body89.3.for.inc123.3_crit_edge

do.body89.3.for.inc123.3_crit_edge:               ; preds = %do.body89.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc123.3

do.body106.3:                                     ; preds = %do.body89.3
  %270 = ptrtoint ptr %arrayidx70.3 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %arrayidx70.3, align 1
  %conv101.3 = sext i8 %271 to i32
  %call102.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 3, i32 noundef %conv101.3) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr200.3 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr200.3)
  %cmp107.3 = icmp ugt i32 %.pr200.3, 4
  br i1 %cmp107.3, label %do.end112.3, label %do.body106.3.for.inc123.3_crit_edge

do.body106.3.for.inc123.3_crit_edge:              ; preds = %do.body106.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc123.3

do.end112.3:                                      ; preds = %do.body106.3
  call void @__sanitizer_cov_trace_pc() #10
  %272 = ptrtoint ptr %arrayidx75.3 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %arrayidx75.3, align 1
  %conv118.3 = sext i8 %273 to i32
  %call119.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef 3, i32 noundef %conv118.3) #11
  br label %for.inc123.3

for.inc123.3:                                     ; preds = %do.end112.3, %do.body106.3.for.inc123.3_crit_edge, %do.body89.3.for.inc123.3_crit_edge, %for.inc123.2.for.inc123.3_crit_edge
  br i1 %AutoLoadFail, label %if.else138, label %if.then127

if.then127:                                       ; preds = %for.inc123.3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx128 = getelementptr i8, ptr %PROMContent, i32 193
  %274 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx128, align 1
  %276 = and i8 %275, 7
  %EEPROMRegulatory = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 19, i32 11
  %277 = ptrtoint ptr %EEPROMRegulatory to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %276, ptr %EEPROMRegulatory, align 8
  %278 = load i8, ptr %arrayidx128, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %278)
  %cmp133 = icmp eq i8 %278, -1
  %spec.store.select = select i1 %cmp133, i8 0, i8 %276
  %279 = ptrtoint ptr %EEPROMRegulatory to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %spec.store.select, ptr %EEPROMRegulatory, align 8
  br label %do.body141

if.else138:                                       ; preds = %for.inc123.3
  call void @__sanitizer_cov_trace_pc() #10
  %EEPROMRegulatory139 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 19, i32 11
  %280 = ptrtoint ptr %EEPROMRegulatory139 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 0, ptr %EEPROMRegulatory139, align 8
  br label %do.body141

do.body141:                                       ; preds = %if.else138, %if.then127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %281 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %281)
  %cmp142 = icmp ugt i32 %281, 4
  br i1 %cmp142, label %do.end147, label %do.body141.do.end154_crit_edge

do.body141.do.end154_crit_edge:                   ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end154

do.end147:                                        ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  %EEPROMRegulatory149 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 19, i32 11
  %282 = ptrtoint ptr %EEPROMRegulatory149 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %EEPROMRegulatory149, align 8
  %conv150 = zext i8 %283 to i32
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %conv150) #11
  br label %do.end154

do.end154:                                        ; preds = %do.end147, %do.body141.do.end154_crit_edge
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %pwrInfo24G) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Hal_EfuseParseXtal_8188E(ptr nocapture noundef %pAdapter, ptr nocapture noundef readonly %hwinfo, i1 noundef zeroext %AutoLoadFail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %AutoLoadFail, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %hwinfo, i32 185
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp eq i8 %1, -1
  %spec.store.select = select i1 %cmp, i8 32, i8 %1
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %spec.store.select.sink = phi i8 [ %spec.store.select, %if.then ], [ 32, %entry.do.body_crit_edge ]
  %2 = getelementptr inbounds %struct.adapter, ptr %pAdapter, i32 0, i32 19, i32 27
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %spec.store.select.sink, ptr %2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %4 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp7 = icmp ugt i32 %4, 4
  br i1 %cmp7, label %do.end, label %do.body.do.end15_crit_edge

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %2, align 4
  %conv12 = zext i8 %6 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %conv12) #11
  br label %do.end15

do.end15:                                         ; preds = %do.end, %do.body.do.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188e_EfuseParseChnlPlan(ptr noundef %padapter, ptr noundef readonly %hwinfo, i1 noundef zeroext %AutoLoadFail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hwinfo, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %hwinfo, i32 184
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i8 [ %1, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  %channel_plan = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 45
  %2 = ptrtoint ptr %channel_plan to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel_plan, align 2
  %call = tail call zeroext i8 @hal_com_get_channel_plan(ptr noundef %padapter, i8 noundef zeroext %cond, i8 noundef zeroext %3, i8 noundef zeroext 10, i1 noundef zeroext %AutoLoadFail) #8
  %ChannelPlan = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 30
  %4 = ptrtoint ptr %ChannelPlan to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call, ptr %ChannelPlan, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %5 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.end, label %cond.end.do.end9_crit_edge

cond.end.do.end9_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv7 = zext i8 %call to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %conv7) #11
  br label %do.end9

do.end9:                                          ; preds = %do.end, %cond.end.do.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @hal_com_get_channel_plan(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Hal_ReadAntennaDiversity88E(ptr nocapture noundef %pAdapter, ptr nocapture noundef readonly %PROMContent, i1 noundef zeroext %AutoLoadFail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %AutoLoadFail, label %entry.do.body.sink.split_crit_edge, label %if.then

entry.do.body.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.sink.split

if.then:                                          ; preds = %entry
  %antdiv_cfg = getelementptr inbounds %struct.adapter, ptr %pAdapter, i32 0, i32 13, i32 47
  %0 = ptrtoint ptr %antdiv_cfg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %antdiv_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %PROMContent, i32 193
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 3
  %5 = and i8 %4, 3
  %AntDivCfg = getelementptr inbounds %struct.adapter, ptr %pAdapter, i32 0, i32 19, i32 40
  %6 = ptrtoint ptr %AntDivCfg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %AntDivCfg, align 1
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp7 = icmp eq i8 %7, -1
  %spec.store.select = select i1 %cmp7, i8 0, i8 %5
  %8 = ptrtoint ptr %AntDivCfg to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %spec.store.select, ptr %AntDivCfg, align 1
  br label %if.end13

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %AntDivCfg12 = getelementptr inbounds %struct.adapter, ptr %pAdapter, i32 0, i32 19, i32 40
  %9 = ptrtoint ptr %AntDivCfg12 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %1, ptr %AntDivCfg12, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then2
  %antdiv_type = getelementptr inbounds %struct.adapter, ptr %pAdapter, i32 0, i32 13, i32 48
  %10 = ptrtoint ptr %antdiv_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %antdiv_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp15 = icmp eq i8 %11, 0
  br i1 %cmp15, label %if.then17, label %if.end13.if.end29_crit_edge

if.end13.if.end29_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx18 = getelementptr i8, ptr %PROMContent, i32 201
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp21 = icmp eq i8 %13, -1
  %spec.store.select73 = select i1 %cmp21, i8 1, i8 %13
  br label %if.end29

if.end29:                                         ; preds = %if.then17, %if.end13.if.end29_crit_edge
  %.sink = phi i8 [ %spec.store.select73, %if.then17 ], [ %11, %if.end13.if.end29_crit_edge ]
  %14 = getelementptr inbounds %struct.adapter, ptr %pAdapter, i32 0, i32 19, i32 41
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %14, align 2
  %.off = add i8 %.sink, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end29.do.body.sink.split_crit_edge, label %if.end29.do.body_crit_edge

if.end29.do.body_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end29.do.body.sink.split_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %if.end29.do.body.sink.split_crit_edge, %entry.do.body.sink.split_crit_edge
  %.sink74 = phi i8 [ 1, %if.end29.do.body.sink.split_crit_edge ], [ 0, %entry.do.body.sink.split_crit_edge ]
  %AntDivCfg42 = getelementptr inbounds %struct.adapter, ptr %pAdapter, i32 0, i32 19, i32 40
  %16 = ptrtoint ptr %AntDivCfg42 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink74, ptr %AntDivCfg42, align 1
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.end29.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %17 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp44 = icmp ugt i32 %17, 4
  br i1 %cmp44, label %do.end, label %do.body.do.end54_crit_edge

do.body.do.end54_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %AntDivCfg48 = getelementptr inbounds %struct.adapter, ptr %pAdapter, i32 0, i32 19, i32 40
  %18 = ptrtoint ptr %AntDivCfg48 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %AntDivCfg48, align 1
  %conv49 = zext i8 %19 to i32
  %TRxAntDivType50 = getelementptr inbounds %struct.adapter, ptr %pAdapter, i32 0, i32 19, i32 41
  %20 = ptrtoint ptr %TRxAntDivType50 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %TRxAntDivType50, align 2
  %conv51 = zext i8 %21 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %conv49, i32 noundef %conv51) #11
  br label %do.end54

do.end54:                                         ; preds = %do.end, %do.body.do.end54_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @Hal_ReadThermalMeter_88E(ptr nocapture noundef %Adapter, ptr nocapture noundef readonly %PROMContent, i1 noundef zeroext %AutoloadFail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %AutoloadFail, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %EEPROMThermalMeter1 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 12
  br label %if.then6

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %PROMContent, i32 186
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %EEPROMThermalMeter = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 12
  %2 = ptrtoint ptr %EEPROMThermalMeter to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %EEPROMThermalMeter, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp eq i8 %1, -1
  br i1 %cmp, label %if.end.if.then6_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.thread
  %EEPROMThermalMeter227 = phi ptr [ %EEPROMThermalMeter1, %if.end.thread ], [ %EEPROMThermalMeter, %if.end.if.then6_crit_edge ]
  %3 = ptrtoint ptr %EEPROMThermalMeter227 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 24, ptr %EEPROMThermalMeter227, align 1
  br label %do.body

do.body:                                          ; preds = %if.then6, %if.end.do.body_crit_edge
  %EEPROMThermalMeter226 = phi ptr [ %EEPROMThermalMeter, %if.end.do.body_crit_edge ], [ %EEPROMThermalMeter227, %if.then6 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %4 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp9 = icmp ugt i32 %4, 4
  br i1 %cmp9, label %do.end, label %do.body.do.end17_crit_edge

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %EEPROMThermalMeter226 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %EEPROMThermalMeter226, align 1
  %conv14 = zext i8 %6 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %conv14) #11
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body.do.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_writeN(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8188eu_InitPowerOn(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_usleep_os(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_malloc2d(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ReadEFuseByte(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @SetHwReg8188EU(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !197, !199, !200, !202, !203, !205}
!llvm.module.flags = !{!206, !207, !208, !209, !210, !211, !212, !213}
!llvm.ident = !{!214}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 288, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl8188e_iol_efuse_patch._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl8188e_iol_efuse_patch._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 468, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @_8051Reset88E._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @_8051Reset88E._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @rtl8188e_FirmwareDownload.log_version, !12, !"log_version", i1 false, i1 false}
!12 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 559, i32 13}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 578, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rtl8188e_FirmwareDownload._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @rtl8188e_FirmwareDownload._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 607, i32 3}
!21 = !{ptr @rtl8188e_FirmwareDownload._entry.8, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @rtl8188e_FirmwareDownload._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 613, i32 3}
!25 = !{ptr @rtl8188e_FirmwareDownload._entry.11, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @rtl8188e_FirmwareDownload._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @rtl8188e_FirmwareDownload._entry.14, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 619, i32 3}
!29 = !{ptr @rtl8188e_FirmwareDownload._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 855, i32 3}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rtl8188e_SetHalODMVar._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @rtl8188e_SetHalODMVar._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 859, i32 3}
!37 = !{ptr @rtl8188e_SetHalODMVar._entry.18, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @rtl8188e_SetHalODMVar._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 867, i32 3}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @hal_notch_filter_8188e._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @hal_notch_filter_8188e._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 870, i32 3}
!46 = !{ptr @hal_notch_filter_8188e._entry.23, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @hal_notch_filter_8188e._entry_ptr.25, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 884, i32 2}
!50 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @GetEEPROMSize8188E.__UNIQUE_ID_ddebug347, !49, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!53 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 970, i32 3}
!57 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @Hal_EfuseParseIDCode88E._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @Hal_EfuseParseIDCode88E._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 976, i32 2}
!62 = !{ptr @Hal_EfuseParseIDCode88E._entry.33, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @Hal_EfuseParseIDCode88E._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 1105, i32 3}
!66 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @Hal_ReadPowerSavingMode88E._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @Hal_ReadPowerSavingMode88E._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 1108, i32 3}
!71 = !{ptr @Hal_ReadPowerSavingMode88E._entry.38, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @Hal_ReadPowerSavingMode88E._entry_ptr.40, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 1130, i32 3}
!75 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @Hal_ReadTxPowerInfo88E._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @Hal_ReadTxPowerInfo88E._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 1131, i32 3}
!80 = !{ptr @Hal_ReadTxPowerInfo88E._entry.43, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @Hal_ReadTxPowerInfo88E._entry_ptr.45, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 1132, i32 3}
!84 = !{ptr @Hal_ReadTxPowerInfo88E._entry.46, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @Hal_ReadTxPowerInfo88E._entry_ptr.48, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 1137, i32 3}
!88 = !{ptr @Hal_ReadTxPowerInfo88E._entry.49, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @Hal_ReadTxPowerInfo88E._entry_ptr.51, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 1138, i32 3}
!92 = !{ptr @Hal_ReadTxPowerInfo88E._entry.52, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @Hal_ReadTxPowerInfo88E._entry_ptr.54, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.56, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 1139, i32 3}
!96 = !{ptr @Hal_ReadTxPowerInfo88E._entry.55, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @Hal_ReadTxPowerInfo88E._entry_ptr.57, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.59, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 1150, i32 2}
!100 = !{ptr @Hal_ReadTxPowerInfo88E._entry.58, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @Hal_ReadTxPowerInfo88E._entry_ptr.60, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.61, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 1164, i32 2}
!104 = !{ptr @.str.62, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @Hal_EfuseParseXtal_8188E._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @Hal_EfuseParseXtal_8188E._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.63, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 1175, i32 2}
!109 = !{ptr @.str.64, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @rtl8188e_EfuseParseChnlPlan._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @rtl8188e_EfuseParseChnlPlan._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.65, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 1207, i32 2}
!114 = !{ptr @.str.66, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @Hal_ReadAntennaDiversity88E._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @Hal_ReadAntennaDiversity88E._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 1223, i32 2}
!119 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @Hal_ReadThermalMeter_88E._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @Hal_ReadThermalMeter_88E._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.69, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 23, i32 4}
!124 = !{ptr @.str.70, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @iol_mode_enable._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @iol_mode_enable._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.71, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 515, i32 24}
!129 = !{ptr @.str.72, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 519, i32 3}
!131 = !{ptr @.str.73, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @load_firmware._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @load_firmware._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.75, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 524, i32 3}
!136 = !{ptr @load_firmware._entry.74, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @load_firmware._entry_ptr.76, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.78, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 535, i32 3}
!140 = !{ptr @load_firmware._entry.77, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @load_firmware._entry_ptr.79, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.80, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 542, i32 2}
!144 = !{ptr @load_firmware.__UNIQUE_ID_ddebug346, !143, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!145 = !{ptr @.str.81, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 484, i32 3}
!147 = !{ptr @.str.82, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @_FWFreeToGo._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @_FWFreeToGo._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.84, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 487, i32 2}
!152 = !{ptr @_FWFreeToGo._entry.83, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @_FWFreeToGo._entry_ptr.85, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.87, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 501, i32 4}
!156 = !{ptr @_FWFreeToGo._entry.86, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @_FWFreeToGo._entry_ptr.88, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.90, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 507, i32 2}
!160 = !{ptr @_FWFreeToGo._entry.89, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @_FWFreeToGo._entry_ptr.91, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.92, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 210, i32 2}
!164 = !{ptr @.str.93, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @efuse_read_phymap_from_txpktbuf._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @efuse_read_phymap_from_txpktbuf._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.95, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 223, i32 4}
!169 = !{ptr @efuse_read_phymap_from_txpktbuf._entry.94, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @efuse_read_phymap_from_txpktbuf._entry_ptr.96, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.98, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 242, i32 4}
!173 = !{ptr @efuse_read_phymap_from_txpktbuf._entry.97, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @efuse_read_phymap_from_txpktbuf._entry_ptr.99, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.101, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 264, i32 2}
!177 = !{ptr @efuse_read_phymap_from_txpktbuf._entry.100, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @efuse_read_phymap_from_txpktbuf._entry_ptr.102, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.103, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 81, i32 3}
!181 = !{ptr @.str.104, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @efuse_phymap_to_logical._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @efuse_phymap_to_logical._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.106, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 87, i32 3}
!186 = !{ptr @efuse_phymap_to_logical._entry.105, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @efuse_phymap_to_logical._entry_ptr.107, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.109, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 105, i32 3}
!190 = !{ptr @efuse_phymap_to_logical._entry.108, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @efuse_phymap_to_logical._entry_ptr.110, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.111, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 695, i32 3}
!194 = !{ptr @.str.112, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @Hal_EfuseReadEFuse88E._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @Hal_EfuseReadEFuse88E._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @Hal_EfuseReadEFuse88E._entry.113, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 701, i32 3}
!199 = !{ptr @Hal_EfuseReadEFuse88E._entry_ptr.114, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @Hal_EfuseReadEFuse88E._entry.115, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 707, i32 3}
!202 = !{ptr @Hal_EfuseReadEFuse88E._entry_ptr.116, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @Hal_EfuseReadEFuse88E._entry.117, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/staging/r8188eu/hal/rtl8188e_hal_init.c", i32 725, i32 3}
!205 = !{ptr @Hal_EfuseReadEFuse88E._entry_ptr.118, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{i32 1, !"wchar_size", i32 2}
!207 = !{i32 1, !"min_enum_size", i32 4}
!208 = !{i32 8, !"branch-target-enforcement", i32 0}
!209 = !{i32 8, !"sign-return-address", i32 0}
!210 = !{i32 8, !"sign-return-address-all", i32 0}
!211 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!212 = !{i32 7, !"uwtable", i32 1}
!213 = !{i32 7, !"frame-pointer", i32 2}
!214 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!215 = !{!"auto-init"}
!216 = !{i64 2148214136, i64 2148214141, i64 2148214154, i64 2148214198, i64 2148214232, i64 2148214253}
!217 = distinct !{!217, !218}
!218 = !{!"llvm.loop.peeled.count", i32 6}
