; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/os_dep/usb_intf.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/os_dep/usb_intf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rtw_usb_drv = type { %struct.usb_driver, i32, %struct.mutex }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvobj_priv = type { ptr, i8, i8, i32, [3 x i32], [8 x i8], i8, %struct.rt_firmware, i8, i8, i32, %struct.semaphore, %struct.mutex, ptr, ptr, %struct.atomic_t, i8 }
%struct.rt_firmware = type { ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.HT_caps_element = type { %union.anon.118 }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i8, ptr }
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32 }
%struct.io_priv = type { ptr, %struct.intf_hdl }
%struct.intf_hdl = type { ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.semaphore, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, i32, ptr, i8, i8, i8, i64, i64, i64, i64, i64, ptr, i8, [4 x i8], %struct.semaphore, i8, %struct.tasklet_struct, i32, i32, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i16, i32, %struct.mutex, %struct.submit_ctx }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.83, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.83 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@ui_pid = dso_local global { [3 x i32], [20 x i8] } zeroinitializer, align 32
@rtw_usb_id_tbl = internal global [15 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3034, i16 -32391, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3034, i16 377, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 -32391, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 118, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 13071, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 13072, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 13073, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 13083, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1390, i16 16392, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 9047, i16 268, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 9047, i16 273, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 11342, i16 258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 6384, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29586, i16 -18415, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], align 4
@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@rtw_drv_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016R8188EU: r8188eu driver version=%s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtw_drv_entry\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/r8188eu/os_dep/usb_intf.c\00", [54 x i8] zeroinitializer }, align 32
@rtw_drv_entry._entry_ptr = internal global ptr @rtw_drv_entry._entry, section ".printk_index", align 4
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"v4.1.4_6773.20130222\00", [43 x i8] zeroinitializer }, align 32
@rtw_drv_entry.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&usb_drv->hw_init_mutex\00", [40 x i8] zeroinitializer }, align 32
@__this_module = external dso_local global %struct.module, align 128
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8188eu\00", [24 x i8] zeroinitializer }, align 32
@rtl8188e_usb_drv = internal global { %struct.rtw_usb_drv, [76 x i8] } { %struct.rtw_usb_drv { %struct.usb_driver { ptr @.str.5, ptr @rtw_drv_init, ptr @rtw_dev_remove, ptr null, ptr @rtw_suspend, ptr @rtw_resume, ptr @rtw_resume, ptr null, ptr null, ptr @rtw_usb_id_tbl, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, i32 0, %struct.mutex zeroinitializer }, [76 x i8] zeroinitializer }, align 32
@rtw_drv_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016R8188EU: rtw_init_primarystruct adapter Failed!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtw_drv_init\00", [19 x i8] zeroinitializer }, align 32
@rtw_drv_init._entry_ptr = internal global ptr @rtw_drv_init._entry, section ".printk_index", align 4
@rtw_drv_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016R8188EU: ui_pid[1]:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@rtw_drv_init._entry_ptr.10 = internal global ptr @rtw_drv_init._entry.8, section ".printk_index", align 4
@usb_dvobj_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016R8188EU: USB_SPEED_HIGH\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb_dvobj_init\00", [17 x i8] zeroinitializer }, align 32
@usb_dvobj_init._entry_ptr = internal global ptr @usb_dvobj_init._entry, section ".printk_index", align 4
@usb_dvobj_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016R8188EU: NON USB_SPEED_HIGH\0A\00", [33 x i8] zeroinitializer }, align 32
@usb_dvobj_init._entry_ptr.15 = internal global ptr @usb_dvobj_init._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@rtw_usb_if1_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016R8188EU: \0A  padapter->pwrctrlpriv.bSupportRemoteWakeup~~~[%d]~~~\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtw_usb_if1_init\00", [47 x i8] zeroinitializer }, align 32
@rtw_usb_if1_init._entry_ptr = internal global ptr @rtw_usb_if1_init._entry, section ".printk_index", align 4
@rtw_usb_if1_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016R8188EU: can't get autopm:\0A\00", [34 x i8] zeroinitializer }, align 32
@rtw_usb_if1_init._entry_ptr.22 = internal global ptr @rtw_usb_if1_init._entry.20, section ".printk_index", align 4
@rtw_usb_if1_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016R8188EU: MAC Address from pnetdev->dev_addr =  %pM\0A\00", [42 x i8] zeroinitializer }, align 32
@rtw_usb_if1_init._entry_ptr.25 = internal global ptr @rtw_usb_if1_init._entry.23, section ".printk_index", align 4
@rtw_usb_if1_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\016R8188EU: bDriverStopped:%d, bSurpriseRemoved:%d, bup:%d, hw_init_completed:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@rtw_usb_if1_init._entry_ptr.28 = internal global ptr @rtw_usb_if1_init._entry.26, section ".printk_index", align 4
@usb_dvobj_deinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016R8188EU: usb attached..., try to reset usb device\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_dvobj_deinit\00", [47 x i8] zeroinitializer }, align 32
@usb_dvobj_deinit._entry_ptr = internal global ptr @usb_dvobj_deinit._entry, section ".printk_index", align 4
@rtw_dev_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016R8188EU: +rtw_dev_remove\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtw_dev_remove\00", [17 x i8] zeroinitializer }, align 32
@rtw_dev_remove._entry_ptr = internal global ptr @rtw_dev_remove._entry, section ".printk_index", align 4
@rtw_dev_remove._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016R8188EU: -r871xu_dev_remove, done\0A\00", [59 x i8] zeroinitializer }, align 32
@rtw_dev_remove._entry_ptr.35 = internal global ptr @rtw_dev_remove._entry.33, section ".printk_index", align 4
@rtw_usb_if1_deinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016R8188EU: +r871xu_dev_remove, hw_init_completed=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw_usb_if1_deinit\00", [45 x i8] zeroinitializer }, align 32
@rtw_usb_if1_deinit._entry_ptr = internal global ptr @rtw_usb_if1_deinit._entry, section ".printk_index", align 4
@rtw_dev_unload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016R8188EU: ===> rtw_dev_unload\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtw_dev_unload\00", [17 x i8] zeroinitializer }, align 32
@rtw_dev_unload._entry_ptr = internal global ptr @rtw_dev_unload._entry, section ".printk_index", align 4
@rtw_dev_unload._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016R8188EU: <=== rtw_dev_unload\0A\00", [32 x i8] zeroinitializer }, align 32
@rtw_dev_unload._entry_ptr.42 = internal global ptr @rtw_dev_unload._entry.40, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rtw_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016R8188EU: ==> %s (%s:%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtw_suspend\00", [20 x i8] zeroinitializer }, align 32
@rtw_suspend._entry_ptr = internal global ptr @rtw_suspend._entry, section ".printk_index", align 4
@rtw_suspend._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016R8188EU: padapter->bup=%d bDriverStopped=%d bSurpriseRemoved = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@rtw_suspend._entry_ptr.47 = internal global ptr @rtw_suspend._entry.45, section ".printk_index", align 4
@rtw_suspend._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016R8188EU: %s:%d %s(%pM), length:%d assoc_ssid.length:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw_suspend._entry_ptr.50 = internal global ptr @rtw_suspend._entry.48, section ".printk_index", align 4
@rtw_suspend._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016R8188EU: <===  %s return %d.............. in %dms\0A\00", [43 x i8] zeroinitializer }, align 32
@rtw_suspend._entry_ptr.53 = internal global ptr @rtw_suspend._entry.51, section ".printk_index", align 4
@rtw_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.54, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtw_resume\00", [21 x i8] zeroinitializer }, align 32
@rtw_resume._entry_ptr = internal global ptr @rtw_resume._entry, section ".printk_index", align 4
@rtw_resume._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016R8188EU: bkeepfwalive(%x)\0A\00", [35 x i8] zeroinitializer }, align 32
@rtw_resume._entry_ptr.57 = internal global ptr @rtw_resume._entry.55, section ".printk_index", align 4
@rtw_resume._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016R8188EU: pid[1]:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@rtw_resume._entry_ptr.60 = internal global ptr @rtw_resume._entry.58, section ".printk_index", align 4
@rtw_resume._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.54, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtw_resume._entry_ptr.62 = internal global ptr @rtw_resume._entry.61, section ".printk_index", align 4
@rtw_drv_halt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016R8188EU: +rtw_drv_halt\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtw_drv_halt\00", [19 x i8] zeroinitializer }, align 32
@rtw_drv_halt._entry_ptr = internal global ptr @rtw_drv_halt._entry, section ".printk_index", align 4
@rtw_drv_halt._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016R8188EU: -rtw_drv_halt\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw_drv_halt._entry_ptr.67 = internal global ptr @rtw_drv_halt._entry.65, section ".printk_index", align 4
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"ui_pid\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 17, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 522, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 524, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 527, i32 9 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"rtl8188e_usb_drv\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 57, i32 27 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 477, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 482, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 122, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 125, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 33, i32 31 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 34, i32 28 }
@___asan_gen_.135 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 35, i32 39 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 391, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 399, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 407, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 414, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 157, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 503, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 517, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 457, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 187, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 206, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 221, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 225, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 247, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 273, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 288, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 298, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 310, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 320, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 532, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.273 = private constant [45 x i8] c"../drivers/staging/r8188eu/os_dep/usb_intf.c\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 538, i32 2 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @rtw_dev_remove._entry, ptr @rtw_dev_remove._entry.33, ptr @rtw_dev_remove._entry_ptr, ptr @rtw_dev_remove._entry_ptr.35, ptr @rtw_dev_unload._entry, ptr @rtw_dev_unload._entry.40, ptr @rtw_dev_unload._entry_ptr, ptr @rtw_dev_unload._entry_ptr.42, ptr @rtw_drv_entry._entry, ptr @rtw_drv_entry._entry_ptr, ptr @rtw_drv_halt._entry, ptr @rtw_drv_halt._entry.65, ptr @rtw_drv_halt._entry_ptr, ptr @rtw_drv_halt._entry_ptr.67, ptr @rtw_drv_init._entry, ptr @rtw_drv_init._entry.8, ptr @rtw_drv_init._entry_ptr, ptr @rtw_drv_init._entry_ptr.10, ptr @rtw_resume._entry, ptr @rtw_resume._entry.55, ptr @rtw_resume._entry.58, ptr @rtw_resume._entry.61, ptr @rtw_resume._entry_ptr, ptr @rtw_resume._entry_ptr.57, ptr @rtw_resume._entry_ptr.60, ptr @rtw_resume._entry_ptr.62, ptr @rtw_suspend._entry, ptr @rtw_suspend._entry.45, ptr @rtw_suspend._entry.48, ptr @rtw_suspend._entry.51, ptr @rtw_suspend._entry_ptr, ptr @rtw_suspend._entry_ptr.47, ptr @rtw_suspend._entry_ptr.50, ptr @rtw_suspend._entry_ptr.53, ptr @rtw_usb_if1_deinit._entry, ptr @rtw_usb_if1_deinit._entry_ptr, ptr @rtw_usb_if1_init._entry, ptr @rtw_usb_if1_init._entry.20, ptr @rtw_usb_if1_init._entry.23, ptr @rtw_usb_if1_init._entry.26, ptr @rtw_usb_if1_init._entry_ptr, ptr @rtw_usb_if1_init._entry_ptr.22, ptr @rtw_usb_if1_init._entry_ptr.25, ptr @rtw_usb_if1_init._entry_ptr.28, ptr @usb_dvobj_deinit._entry, ptr @usb_dvobj_deinit._entry_ptr, ptr @usb_dvobj_init._entry, ptr @usb_dvobj_init._entry.13, ptr @usb_dvobj_init._entry_ptr, ptr @usb_dvobj_init._entry_ptr.15, ptr @ui_pid, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rtw_drv_entry.__key, ptr @.str.4, ptr @.str.5, ptr @rtl8188e_usb_drv, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @sema_init.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.63, ptr @.str.64, ptr @.str.66], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ui_pid to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_drv_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_drv_entry.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188e_usb_drv to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_drv_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_drv_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_dvobj_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_dvobj_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_usb_if1_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_usb_if1_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_usb_if1_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_usb_if1_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_dvobj_deinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_dev_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_dev_remove._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_usb_if1_deinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_dev_unload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_dev_unload._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_suspend._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_suspend._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_suspend._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_resume._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_resume._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_resume._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_drv_halt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_drv_halt._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@__mod_usb__rtw_usb_id_tbl_device_table = dso_local alias [15 x %struct.usb_device_id], ptr @rtw_usb_id_tbl

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %0 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp ugt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #10
  br label %do.body3

do.body3:                                         ; preds = %do.end, %entry.do.body3_crit_edge
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.rtw_usb_drv, ptr @rtl8188e_usb_drv, i32 0, i32 2), ptr noundef nonnull @.str.4, ptr noundef nonnull @rtw_drv_entry.__key) #7
  store i32 1, ptr getelementptr inbounds (%struct.rtw_usb_drv, ptr @rtl8188e_usb_drv, i32 0, i32 1), align 4
  %call5 = tail call i32 @usb_register_driver(ptr noundef nonnull @rtl8188e_usb_drv, ptr noundef nonnull @__this_module, ptr noundef nonnull @.str.5) #7
  ret i32 %call5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %0 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp ugt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #10
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  store i32 0, ptr getelementptr inbounds (%struct.rtw_usb_drv, ptr @rtl8188e_usb_drv, i32 0, i32 1), align 4
  tail call void @usb_deregister(ptr noundef nonnull @rtl8188e_usb_drv) #7
  tail call void @mutex_destroy(ptr noundef getelementptr inbounds (%struct.rtw_usb_drv, ptr @rtl8188e_usb_drv, i32 0, i32 2)) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %1 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp4 = icmp ugt i32 %1, 4
  br i1 %cmp4, label %do.end7, label %do.end2.do.end11_crit_edge

do.end2.do.end11_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.end7:                                          ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #10
  br label %do.end11

do.end11:                                         ; preds = %do.end7, %do.end2.do.end11_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_drv_init(ptr noundef %pusb_intf, ptr nocapture noundef readnone %pdid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.usb_dvobj_init.exit.thread_crit_edge, label %if.end.i

entry.usb_dvobj_init.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_dvobj_init.exit.thread

if.end.i:                                         ; preds = %entry
  %pusbintf.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 13
  %1 = ptrtoint ptr %pusbintf.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pusb_intf, ptr %pusbintf.i, align 8
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  %pusbdev.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 14
  %4 = ptrtoint ptr %pusbdev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i.i, ptr %pusbdev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 7, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i, ptr %driver_data.i.i.i, align 4
  %RtNumOutPipes.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %RtNumOutPipes.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %RtNumOutPipes.i, align 1
  %actconfig.i = getelementptr i8, ptr %3, i32 956
  %7 = ptrtoint ptr %actconfig.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %actconfig.i, align 4
  %9 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pusb_intf, align 8
  %bNumInterfaces.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %bNumInterfaces.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bNumInterfaces.i, align 1
  %NumInterfaces.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %NumInterfaces.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %NumInterfaces.i, align 1
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %10, i32 0, i32 2
  %14 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bInterfaceNumber.i, align 1
  %InterfaceNumber.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %InterfaceNumber.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %InterfaceNumber.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %10, i32 0, i32 4
  %17 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bNumEndpoints.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp97.not.i = icmp eq i8 %18, 0
  br i1 %cmp97.not.i, label %if.end.i.usb_dvobj_init.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end.i.usb_dvobj_init.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_dvobj_init.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %10, i32 0, i32 3
  %RtInPipe.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end18.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.099.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc19.i, %if.end18.i.for.body.i_crit_edge ]
  %rt_num_in_pipes.098.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %rt_num_in_pipes.1.i, %if.end18.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %endpoint.i, align 4
  %arrayidx4.i = getelementptr %struct.usb_host_endpoint, ptr %20, i32 %i.099.i
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx4.i, i32 0, i32 2
  %21 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bEndpointAddress.i.i, align 1
  %23 = and i8 %22, 15
  %and.i.i = zext i8 %23 to i32
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx4.i, i32 0, i32 3
  %24 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bmAttributes.i.i.i, align 1
  %26 = and i8 %25, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp.i.not.i.i = icmp eq i8 %26, 2
  br i1 %cmp.i.not.i.i, label %usb_endpoint_is_bulk_in.exit.i, label %for.body.i.if.end18.i_crit_edge

for.body.i.if.end18.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

usb_endpoint_is_bulk_in.exit.i:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool8.not.i = icmp sgt i8 %22, -1
  br i1 %tobool8.not.i, label %if.then12.i, label %if.then9.i

if.then9.i:                                       ; preds = %usb_endpoint_is_bulk_in.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %RtInPipe.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and.i.i, ptr %RtInPipe.i, align 8
  %inc.i = add i8 %rt_num_in_pipes.098.i, 1
  br label %if.end18.i

if.then12.i:                                      ; preds = %usb_endpoint_is_bulk_in.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %RtNumOutPipes.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %RtNumOutPipes.i, align 1
  %idxprom.i = zext i8 %29 to i32
  %arrayidx14.i = getelementptr %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 4, i32 %idxprom.i
  %30 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and.i.i, ptr %arrayidx14.i, align 4
  %31 = load i8, ptr %RtNumOutPipes.i, align 1
  %inc16.i = add i8 %31, 1
  store i8 %inc16.i, ptr %RtNumOutPipes.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then12.i, %if.then9.i, %for.body.i.if.end18.i_crit_edge
  %rt_num_in_pipes.1.i = phi i8 [ %inc.i, %if.then9.i ], [ %rt_num_in_pipes.098.i, %if.then12.i ], [ %rt_num_in_pipes.098.i, %for.body.i.if.end18.i_crit_edge ]
  %inc19.i = add nuw nsw i32 %i.099.i, 1
  %32 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bNumEndpoints.i, align 1
  %conv.i = zext i8 %33 to i32
  %cmp.i = icmp ult i32 %inc19.i, %conv.i
  br i1 %cmp.i, label %if.end18.i.for.body.i_crit_edge, label %for.end.i

if.end18.i.for.body.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rt_num_in_pipes.1.i)
  %cmp21.not.i = icmp eq i8 %rt_num_in_pipes.1.i, 1
  br i1 %cmp21.not.i, label %if.end24.i, label %for.end.i.usb_dvobj_init.exit.thread_crit_edge

for.end.i.usb_dvobj_init.exit.thread_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_dvobj_init.exit.thread

if.end24.i:                                       ; preds = %for.end.i
  %speed.i = getelementptr i8, ptr %3, i32 -100
  %34 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp25.i = icmp eq i32 %35, 3
  %ishighspeed.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 8
  br i1 %cmp25.i, label %if.then27.i, label %if.else36.i

if.then27.i:                                      ; preds = %if.end24.i
  %36 = ptrtoint ptr %ishighspeed.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %ishighspeed.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %37 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %cmp28.i = icmp ugt i32 %37, 4
  br i1 %cmp28.i, label %if.then27.i.if.end50.sink.split.i_crit_edge, label %if.then27.i.if.end_crit_edge

if.then27.i.if.end_crit_edge:                     ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then27.i.if.end50.sink.split.i_crit_edge:      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.sink.split.i

if.else36.i:                                      ; preds = %if.end24.i
  %38 = ptrtoint ptr %ishighspeed.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %ishighspeed.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %39 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp39.i = icmp ugt i32 %39, 4
  br i1 %cmp39.i, label %if.else36.i.if.end50.sink.split.i_crit_edge, label %if.else36.i.if.end_crit_edge

if.else36.i.if.end_crit_edge:                     ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else36.i.if.end50.sink.split.i_crit_edge:      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.sink.split.i

if.end50.sink.split.i:                            ; preds = %if.else36.i.if.end50.sink.split.i_crit_edge, %if.then27.i.if.end50.sink.split.i_crit_edge
  %.str.14.sink.i = phi ptr [ @.str.11, %if.then27.i.if.end50.sink.split.i_crit_edge ], [ @.str.14, %if.else36.i.if.end50.sink.split.i_crit_edge ]
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.14.sink.i) #10
  br label %if.end

usb_dvobj_init.exit.thread:                       ; preds = %for.end.i.usb_dvobj_init.exit.thread_crit_edge, %if.end.i.usb_dvobj_init.exit.thread_crit_edge, %entry.usb_dvobj_init.exit.thread_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end50.sink.split.i, %if.else36.i.if.end_crit_edge, %if.then27.i.if.end_crit_edge
  %usb_suspend_sema.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 11
  %wait_list1.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 11, i32 2
  %40 = ptrtoint ptr %usb_suspend_sema.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %usb_suspend_sema.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 11, i32 0, i32 1
  %41 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 11, i32 0, i32 2
  %42 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 11, i32 0, i32 3
  %43 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 11, i32 0, i32 4
  %44 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 11, i32 0, i32 4, i32 2
  %45 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.16, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.7.0..sroa_idx.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 11, i32 0, i32 4, i32 3
  %46 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 11, i32 0, i32 4, i32 4
  %47 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 11, i32 0, i32 4, i32 5
  %48 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i, i32 0, i32 14)
  %49 = ptrtoint ptr %wait_list1.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %wait_list1.i.i, ptr %wait_list1.i.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 11, i32 2, i32 1
  %50 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %wait_list1.i.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i, align 8
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %continual_urb_error.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %call7.i.i.i, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %continual_urb_error.i.i, i32 noundef 4) #7
  %51 = ptrtoint ptr %continual_urb_error.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 0, ptr %continual_urb_error.i.i, align 8
  %call51.i = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i.i) #7
  %call.i = tail call noalias ptr @vzalloc(i32 noundef 23072) #12
  %tobool.not.i31 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i31, label %if.end.do.body_crit_edge, label %if.end.i32

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.i32:                                       ; preds = %if.end
  %dvobj1.i = getelementptr inbounds %struct.adapter, ptr %call.i, i32 0, i32 3
  %52 = ptrtoint ptr %dvobj1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i.i, ptr %dvobj1.i, align 4
  %53 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %call7.i.i.i, align 8
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %call.i, i32 0, i32 20
  %54 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %bDriverStopped.i, align 8
  %hw_init_mutex2.i = getelementptr inbounds %struct.adapter, ptr %call.i, i32 0, i32 52
  %55 = ptrtoint ptr %hw_init_mutex2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr getelementptr inbounds (%struct.rtw_usb_drv, ptr @rtl8188e_usb_drv, i32 0, i32 2), ptr %hw_init_mutex2.i, align 4
  %call3.i = tail call i32 @rtw_handle_dualmac(ptr noundef nonnull %call.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp.not.i = icmp eq i32 %call3.i, 1
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i32.if.then109.i_crit_edge

if.end.i32.if.then109.i_crit_edge:                ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then109.i

if.end5.i:                                        ; preds = %if.end.i32
  %call6.i = tail call ptr @rtw_init_netdev(ptr noundef nonnull %call.i) #7
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.then105.i, label %if.end9.i

if.end9.i:                                        ; preds = %if.end5.i
  %56 = ptrtoint ptr %pusbintf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pusbintf.i, align 8
  %dev.i.i = getelementptr inbounds %struct.usb_interface, ptr %57, i32 0, i32 7
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call6.i, i32 0, i32 133, i32 1
  %58 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %dev.i.i, ptr %parent.i, align 8
  %add.ptr.i.i33 = getelementptr i8, ptr %call6.i, i32 2304
  %59 = ptrtoint ptr %add.ptr.i.i33 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr.i.i33, align 4
  %intf_start.i = getelementptr inbounds %struct.adapter, ptr %60, i32 0, i32 35
  %61 = ptrtoint ptr %intf_start.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @usb_intf_start, ptr %intf_start.i, align 4
  %intf_stop.i = getelementptr inbounds %struct.adapter, ptr %60, i32 0, i32 36
  %62 = ptrtoint ptr %intf_stop.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @usb_intf_stop, ptr %intf_stop.i, align 8
  %iopriv.i = getelementptr inbounds %struct.adapter, ptr %60, i32 0, i32 8
  %intf.i = getelementptr inbounds %struct.adapter, ptr %60, i32 0, i32 8, i32 1
  %63 = ptrtoint ptr %iopriv.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %iopriv.i, align 4
  %64 = ptrtoint ptr %intf.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %60, ptr %intf.i, align 4
  %dvobj14.i = getelementptr inbounds %struct.adapter, ptr %60, i32 0, i32 3
  %65 = ptrtoint ptr %dvobj14.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dvobj14.i, align 4
  %pintf_dev.i = getelementptr inbounds %struct.adapter, ptr %60, i32 0, i32 8, i32 1, i32 1
  %67 = ptrtoint ptr %pintf_dev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %pintf_dev.i, align 4
  tail call void @rtl8188e_read_chip_version(ptr noundef %60) #7
  tail call void @rtl8188eu_interface_configure(ptr noundef %60) #7
  tail call void @ReadAdapterInfo8188EU(ptr noundef %60) #7
  %call15.i = tail call zeroext i8 @rtw_init_drv_sw(ptr noundef %60) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call15.i)
  %cmp16.i = icmp eq i8 %call15.i, 0
  br i1 %cmp16.i, label %if.end9.i.if.then107.i_crit_edge, label %if.end19.i

if.end9.i.if.then107.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then107.i

if.end19.i:                                       ; preds = %if.end9.i
  %bSupportRemoteWakeup.i = getelementptr inbounds %struct.adapter, ptr %60, i32 0, i32 14, i32 26
  %68 = ptrtoint ptr %bSupportRemoteWakeup.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bSupportRemoteWakeup.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool20.not.i = icmp eq i8 %69, 0
  br i1 %tobool20.not.i, label %if.end19.i.if.end38.i_crit_edge, label %if.then21.i

if.end19.i.if.end38.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then21.i:                                      ; preds = %if.end19.i
  %70 = ptrtoint ptr %pusbdev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pusbdev.i, align 4
  %do_remote_wakeup.i = getelementptr inbounds %struct.usb_device, ptr %71, i32 0, i32 40
  %72 = ptrtoint ptr %do_remote_wakeup.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load.i = load i8, ptr %do_remote_wakeup.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %do_remote_wakeup.i, align 8
  %needs_remote_wakeup.i = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 6
  %73 = ptrtoint ptr %needs_remote_wakeup.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load22.i = load i8, ptr %needs_remote_wakeup.i, align 8
  %bf.set24.i = or i8 %bf.load22.i, 16
  store i8 %bf.set24.i, ptr %needs_remote_wakeup.i, align 8
  %dev25.i = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 7
  %call26.i = tail call i32 @device_init_wakeup(ptr noundef %dev25.i, i1 noundef zeroext true) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %74 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %74)
  %cmp27.i = icmp ugt i32 %74, 4
  br i1 %cmp27.i, label %do.end.i, label %if.then21.i.if.end38.i_crit_edge

if.then21.i.if.end38.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

do.end.i:                                         ; preds = %if.then21.i
  %can_wakeup.i.i = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 7, i32 12, i32 1
  %75 = ptrtoint ptr %can_wakeup.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %bf.load.i.i = load i16, ptr %can_wakeup.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i16 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %do.end.i.device_may_wakeup.exit.i_crit_edge, label %land.rhs.i.i

do.end.i.device_may_wakeup.exit.i_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_may_wakeup.exit.i

land.rhs.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %wakeup.i.i = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 7, i32 12, i32 6
  %76 = ptrtoint ptr %wakeup.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wakeup.i.i, align 8
  %tobool2.i.i = icmp ne ptr %77, null
  %phi.cast.i = zext i1 %tobool2.i.i to i32
  br label %device_may_wakeup.exit.i

device_may_wakeup.exit.i:                         ; preds = %land.rhs.i.i, %do.end.i.device_may_wakeup.exit.i_crit_edge
  %78 = phi i32 [ 0, %do.end.i.device_may_wakeup.exit.i_crit_edge ], [ %phi.cast.i, %land.rhs.i.i ]
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %78) #10
  br label %if.end38.i

if.end38.i:                                       ; preds = %device_may_wakeup.exit.i, %if.then21.i.if.end38.i_crit_edge, %if.end19.i.if.end38.i_crit_edge
  %call39.i = tail call i32 @usb_autopm_get_interface(ptr noundef %pusb_intf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %do.body43.i, label %if.end38.i.if.end55.i_crit_edge

if.end38.i.if.end55.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

do.body43.i:                                      ; preds = %if.end38.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %79 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %79)
  %cmp44.i = icmp ugt i32 %79, 4
  br i1 %cmp44.i, label %do.end49.i, label %do.body43.i.if.end55.i_crit_edge

do.body43.i.if.end55.i_crit_edge:                 ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

do.end49.i:                                       ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  %call51.i35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.end49.i, %do.body43.i.if.end55.i_crit_edge, %if.end38.i.if.end55.i_crit_edge
  %ifname.i = getelementptr inbounds %struct.adapter, ptr %60, i32 0, i32 13, i32 56
  %call56.i = tail call i32 @rtw_init_netdev_name(ptr noundef nonnull %call6.i, ptr noundef %ifname.i) #7
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %60, i32 0, i32 15, i32 4
  tail call void @rtw_macaddr_cfg(ptr noundef %mac_addr.i) #7
  tail call void @rtw_init_wifidirect_addrs(ptr noundef %60, ptr noundef %mac_addr.i, ptr noundef %mac_addr.i) #7
  tail call void @dev_addr_mod(ptr noundef nonnull %call6.i, i32 noundef 0, ptr noundef %mac_addr.i, i32 noundef 6) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %80 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %80)
  %cmp68.i = icmp ugt i32 %80, 4
  br i1 %cmp68.i, label %do.end73.i, label %if.end55.i.do.end78.i_crit_edge

if.end55.i.do.end78.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78.i

do.end73.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %call6.i, i32 0, i32 86
  %81 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev_addr.i, align 64
  %call75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %82) #10
  br label %do.end78.i

do.end78.i:                                       ; preds = %do.end73.i, %if.end55.i.do.end78.i_crit_edge
  %call79.i = tail call i32 @register_netdev(ptr noundef nonnull %call6.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %cmp80.not.i = icmp eq i32 %call79.i, 0
  br i1 %cmp80.not.i, label %do.body84.i, label %do.end78.i.if.then107.i_crit_edge

do.end78.i.if.then107.i_crit_edge:                ; preds = %do.end78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then107.i

do.body84.i:                                      ; preds = %do.end78.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %83 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %83)
  %cmp85.i = icmp ugt i32 %83, 4
  br i1 %cmp85.i, label %do.end90.i, label %do.body84.i.rtw_usb_if1_init.exit_crit_edge

do.body84.i.rtw_usb_if1_init.exit_crit_edge:      ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_usb_if1_init.exit

do.end90.i:                                       ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #9
  %bDriverStopped92.i = getelementptr inbounds %struct.adapter, ptr %60, i32 0, i32 20
  %84 = ptrtoint ptr %bDriverStopped92.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bDriverStopped92.i, align 8
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %60, i32 0, i32 21
  %86 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bSurpriseRemoved.i, align 4
  %bup.i = getelementptr inbounds %struct.adapter, ptr %60, i32 0, i32 39
  %88 = ptrtoint ptr %bup.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bup.i, align 8
  %hw_init_completed.i = getelementptr inbounds %struct.adapter, ptr %60, i32 0, i32 26
  %90 = ptrtoint ptr %hw_init_completed.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %hw_init_completed.i, align 1
  %conv93.i = zext i8 %91 to i32
  %call94.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %85, i32 noundef %87, i32 noundef %89, i32 noundef %conv93.i) #10
  br label %rtw_usb_if1_init.exit

if.then105.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call101.i = tail call i32 @rtw_handle_dualmac(ptr noundef nonnull %call.i, i1 noundef zeroext false) #7
  br label %if.then109.i

if.then107.i:                                     ; preds = %do.end78.i.if.then107.i_crit_edge, %if.end9.i.if.then107.i_crit_edge
  %call101173.i = tail call i32 @rtw_handle_dualmac(ptr noundef %60, i1 noundef zeroext false) #7
  tail call void @rtw_free_netdev(ptr noundef nonnull %call6.i) #7
  br label %do.body

if.then109.i:                                     ; preds = %if.then105.i, %if.end.i32.if.then109.i_crit_edge
  tail call void @vfree(ptr noundef nonnull %call.i) #7
  br label %do.body

rtw_usb_if1_init.exit:                            ; preds = %do.end90.i, %do.body84.i.rtw_usb_if1_init.exit_crit_edge
  %tobool2.not = icmp eq ptr %60, null
  br i1 %tobool2.not, label %rtw_usb_if1_init.exit.do.body_crit_edge, label %if.end10

rtw_usb_if1_init.exit.do.body_crit_edge:          ; preds = %rtw_usb_if1_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %rtw_usb_if1_init.exit.do.body_crit_edge, %if.then109.i, %if.then107.i, %if.end.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %92 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %92)
  %cmp = icmp ugt i32 %92, 4
  br i1 %cmp, label %do.end, label %do.body.free_dvobj_crit_edge

do.body.free_dvobj_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_dvobj

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %free_dvobj

if.end10:                                         ; preds = %rtw_usb_if1_init.exit
  %93 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @ui_pid, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp11.not = icmp eq i32 %93, 0
  br i1 %cmp11.not, label %if.end10.cleanup_crit_edge, label %do.body13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body13:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %94 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %94)
  %cmp14 = icmp ugt i32 %94, 4
  br i1 %cmp14, label %do.end18, label %do.body13.do.end23_crit_edge

do.body13.do.end23_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %93) #10
  br label %do.end23

do.end23:                                         ; preds = %do.end18, %do.body13.do.end23_crit_edge
  %95 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @ui_pid, i32 0, i32 1), align 4
  %call24 = tail call ptr @find_vpid(i32 noundef %95) #7
  %call25 = tail call i32 @kill_pid(ptr noundef %call24, i32 noundef 12, i32 noundef 1) #7
  br label %cleanup

free_dvobj:                                       ; preds = %do.end, %do.body.free_dvobj_crit_edge
  %96 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %driver_data.i.i.i, align 4
  store ptr null, ptr %driver_data.i.i.i, align 4
  %tobool.not.i37 = icmp eq ptr %97, null
  br i1 %tobool.not.i37, label %free_dvobj.usb_dvobj_deinit.exit_crit_edge, label %if.then.i

free_dvobj.usb_dvobj_deinit.exit_crit_edge:       ; preds = %free_dvobj
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_dvobj_deinit.exit

if.then.i:                                        ; preds = %free_dvobj
  %NumInterfaces.i38 = getelementptr inbounds %struct.dvobj_priv, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %NumInterfaces.i38 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %NumInterfaces.i38, align 1
  %100 = and i8 %99, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %100)
  %switch.i = icmp eq i8 %100, 2
  br i1 %switch.i, label %lor.lhs.false.i, label %if.then.i.if.then9.i41_crit_edge

if.then.i.if.then9.i41_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i41

lor.lhs.false.i:                                  ; preds = %if.then.i
  %InterfaceNumber.i39 = getelementptr inbounds %struct.dvobj_priv, ptr %97, i32 0, i32 1
  %101 = ptrtoint ptr %InterfaceNumber.i39 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %InterfaceNumber.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %102)
  %cmp7.i = icmp eq i8 %102, 1
  br i1 %cmp7.i, label %lor.lhs.false.i.if.then9.i41_crit_edge, label %lor.lhs.false.i.if.end24.i43_crit_edge

lor.lhs.false.i.if.end24.i43_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i43

lor.lhs.false.i.if.then9.i41_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i41

if.then9.i41:                                     ; preds = %lor.lhs.false.i.if.then9.i41_crit_edge, %if.then.i.if.then9.i41_crit_edge
  %103 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %parent.i.i, align 8
  %state.i = getelementptr i8, ptr %104, i32 -104
  %105 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp11.not.i = icmp eq i32 %106, 0
  br i1 %cmp11.not.i, label %if.then9.i41.if.end24.i43_crit_edge, label %do.body.i

if.then9.i41.if.end24.i43_crit_edge:              ; preds = %if.then9.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i43

do.body.i:                                        ; preds = %if.then9.i41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %107 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %107)
  %cmp14.i = icmp ugt i32 %107, 4
  br i1 %cmp14.i, label %do.end.i42, label %do.body.i.do.end20.i_crit_edge

do.body.i.do.end20.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20.i

do.end.i42:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end.i42, %do.body.i.do.end20.i_crit_edge
  %108 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i37.i = getelementptr i8, ptr %109, i32 -128
  %call22.i = tail call i32 @usb_reset_device(ptr noundef %add.ptr.i37.i) #7
  br label %if.end24.i43

if.end24.i43:                                     ; preds = %do.end20.i, %if.then9.i41.if.end24.i43_crit_edge, %lor.lhs.false.i.if.end24.i43_crit_edge
  tail call void @kfree(ptr noundef nonnull %97) #7
  br label %usb_dvobj_deinit.exit

usb_dvobj_deinit.exit:                            ; preds = %if.end24.i43, %free_dvobj.usb_dvobj_deinit.exit_crit_edge
  %110 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i39.i = getelementptr i8, ptr %111, i32 -128
  tail call void @usb_put_dev(ptr noundef %add.ptr.i39.i) #7
  br label %cleanup

cleanup:                                          ; preds = %usb_dvobj_deinit.exit, %do.end23, %if.end10.cleanup_crit_edge, %usb_dvobj_init.exit.thread
  %retval.0 = phi i32 [ 0, %do.end23 ], [ 0, %if.end10.cleanup_crit_edge ], [ -19, %usb_dvobj_deinit.exit ], [ -19, %usb_dvobj_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_dev_remove(ptr nocapture noundef %pusb_intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %4 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp ugt i32 %4, 4
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %5 = load i32, ptr getelementptr inbounds (%struct.rtw_usb_drv, ptr @rtl8188e_usb_drv, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.end4.if.end6_crit_edge, label %if.then5

do.end4.if.end6_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %bSurpriseRemoved, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end4.if.end6_crit_edge
  %call7 = tail call i32 @rtw_pm_set_ips(ptr noundef %3, i8 noundef zeroext 0) #7
  %call8 = tail call i32 @rtw_pm_set_lps(ptr noundef %3, i8 noundef zeroext 0) #7
  tail call void @LeaveAllPowerSaveMode(ptr noundef %3) #7
  %pnetdev1.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 37
  %7 = ptrtoint ptr %pnetdev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pnetdev1.i, align 4
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.end6.if.end.i_crit_edge, label %if.then.i

if.end6.if.end.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call zeroext i8 @rtw_disassoc_cmd(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end6.if.end.i_crit_edge
  tail call void @free_mlme_ap_info(ptr noundef %3) #7
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 1
  %tobool4.not.i = icmp eq ptr %8, null
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %tobool4.not.i
  br i1 %or.cond.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unregister_netdev(ptr noundef nonnull %8) #7
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  tail call void @rtw_cancel_all_timer(ptr noundef %3) #7
  tail call fastcc void @rtw_dev_unload(ptr noundef %3) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %13 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp8.i = icmp ugt i32 %13, 4
  br i1 %cmp8.i, label %do.end.i, label %if.end7.i.do.end14.i_crit_edge

if.end7.i.do.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %hw_init_completed.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 26
  %14 = ptrtoint ptr %hw_init_completed.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hw_init_completed.i, align 1
  %conv.i = zext i8 %15 to i32
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv.i) #10
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end.i, %if.end7.i.do.end14.i_crit_edge
  %call15.i = tail call i32 @rtw_handle_dualmac(ptr noundef %3, i1 noundef zeroext false) #7
  %call16.i = tail call zeroext i8 @rtw_free_drv_sw(ptr noundef %3) #7
  br i1 %tobool4.not.i, label %do.end14.i.rtw_usb_if1_deinit.exit_crit_edge, label %if.then18.i

do.end14.i.rtw_usb_if1_deinit.exit_crit_edge:     ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_usb_if1_deinit.exit

if.then18.i:                                      ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw_free_netdev(ptr noundef nonnull %8) #7
  br label %rtw_usb_if1_deinit.exit

rtw_usb_if1_deinit.exit:                          ; preds = %if.then18.i, %do.end14.i.rtw_usb_if1_deinit.exit_crit_edge
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not.i25 = icmp eq ptr %17, null
  br i1 %tobool.not.i25, label %rtw_usb_if1_deinit.exit.usb_dvobj_deinit.exit_crit_edge, label %if.then.i26

rtw_usb_if1_deinit.exit.usb_dvobj_deinit.exit_crit_edge: ; preds = %rtw_usb_if1_deinit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_dvobj_deinit.exit

if.then.i26:                                      ; preds = %rtw_usb_if1_deinit.exit
  %NumInterfaces.i = getelementptr inbounds %struct.dvobj_priv, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %NumInterfaces.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %NumInterfaces.i, align 1
  %20 = and i8 %19, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %switch.i = icmp eq i8 %20, 2
  br i1 %switch.i, label %lor.lhs.false.i, label %if.then.i26.if.then9.i_crit_edge

if.then.i26.if.then9.i_crit_edge:                 ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

lor.lhs.false.i:                                  ; preds = %if.then.i26
  %InterfaceNumber.i = getelementptr inbounds %struct.dvobj_priv, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %InterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %InterfaceNumber.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp7.i = icmp eq i8 %22, 1
  br i1 %cmp7.i, label %lor.lhs.false.i.if.then9.i_crit_edge, label %lor.lhs.false.i.if.end24.i_crit_edge

lor.lhs.false.i.if.end24.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

lor.lhs.false.i.if.then9.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

if.then9.i:                                       ; preds = %lor.lhs.false.i.if.then9.i_crit_edge, %if.then.i26.if.then9.i_crit_edge
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i.i, align 8
  %state.i = getelementptr i8, ptr %24, i32 -104
  %25 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp11.not.i = icmp eq i32 %26, 0
  br i1 %cmp11.not.i, label %if.then9.i.if.end24.i_crit_edge, label %do.body.i

if.then9.i.if.end24.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

do.body.i:                                        ; preds = %if.then9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %27 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp14.i = icmp ugt i32 %27, 4
  br i1 %cmp14.i, label %do.end.i27, label %do.body.i.do.end20.i_crit_edge

do.body.i.do.end20.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20.i

do.end.i27:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end.i27, %do.body.i.do.end20.i_crit_edge
  %28 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i37.i = getelementptr i8, ptr %29, i32 -128
  %call22.i = tail call i32 @usb_reset_device(ptr noundef %add.ptr.i37.i) #7
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end20.i, %if.then9.i.if.end24.i_crit_edge, %lor.lhs.false.i.if.end24.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %17) #7
  br label %usb_dvobj_deinit.exit

usb_dvobj_deinit.exit:                            ; preds = %if.end24.i, %rtw_usb_if1_deinit.exit.usb_dvobj_deinit.exit_crit_edge
  %parent.i38.i = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %parent.i38.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent.i38.i, align 8
  %add.ptr.i39.i = getelementptr i8, ptr %31, i32 -128
  tail call void @usb_put_dev(ptr noundef %add.ptr.i39.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %32 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp10 = icmp ugt i32 %32, 4
  br i1 %cmp10, label %do.end14, label %usb_dvobj_deinit.exit.do.end19_crit_edge

usb_dvobj_deinit.exit.do.end19_crit_edge:         ; preds = %usb_dvobj_deinit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

do.end14:                                         ; preds = %usb_dvobj_deinit.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #10
  br label %do.end19

do.end19:                                         ; preds = %do.end14, %usb_dvobj_deinit.exit.do.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_suspend(ptr nocapture noundef readonly %pusb_intf, [1 x i32] %message.coerce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pnetdev1 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %pnetdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pnetdev1, align 4
  %pwrctrlpriv = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %7 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp = icmp ugt i32 %7, 4
  br i1 %cmp, label %do.end, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call i32 @llvm.read_register.i32(metadata !130) #7
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef %comm, i32 noundef %13) #10
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %bup = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 39
  %14 = ptrtoint ptr %bup to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %do.end8.do.body13_crit_edge, label %lor.lhs.false

do.end8.do.body13_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13

lor.lhs.false:                                    ; preds = %do.end8
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 20
  %16 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bDriverStopped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool9.not = icmp eq i32 %17, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false.do.body13_crit_edge

lor.lhs.false.do.body13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 21
  %18 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11.not = icmp eq i32 %19, 0
  br i1 %tobool11.not, label %if.end27, label %lor.lhs.false10.do.body13_crit_edge

lor.lhs.false10.do.body13_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13

do.body13:                                        ; preds = %lor.lhs.false10.do.body13_crit_edge, %lor.lhs.false.do.body13_crit_edge, %do.end8.do.body13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %20 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp14 = icmp ugt i32 %20, 4
  br i1 %cmp14, label %do.end18, label %do.body13.do.end78_crit_edge

do.body13.do.end78_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %bDriverStopped21 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 20
  %21 = ptrtoint ptr %bDriverStopped21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bDriverStopped21, align 8
  %bSurpriseRemoved22 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 21
  %23 = ptrtoint ptr %bSurpriseRemoved22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bSurpriseRemoved22, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %15, i32 noundef %22, i32 noundef %24) #10
  br label %do.body67

if.end27:                                         ; preds = %lor.lhs.false10
  %bInSuspend = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 14, i32 25
  %25 = ptrtoint ptr %bInSuspend to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %bInSuspend, align 1
  tail call void @rtw_cancel_all_timer(ptr noundef %3) #7
  tail call void @LeaveAllPowerSaveMode(ptr noundef %3) #7
  tail call void @mutex_lock_nested(ptr noundef %pwrctrlpriv, i32 noundef 0) #7
  %tobool28.not = icmp eq ptr %5, null
  br i1 %tobool28.not, label %if.end27.if.end30_crit_edge, label %if.then29

if.end27.if.end30_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @netif_carrier_off(ptr noundef nonnull %5) #7
  tail call void @netif_tx_stop_all_queues(ptr noundef nonnull %5) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end27.if.end30_crit_edge
  %call31 = tail call zeroext i8 @rtw_disassoc_cmd(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #7
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fw_state.i, align 4
  %28 = and i32 %27, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %28)
  %.not = icmp eq i32 %28, 9
  br i1 %.not, label %do.body37, label %if.end30.if.end57_crit_edge

if.end30.if.end57_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

do.body37:                                        ; preds = %if.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %29 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp38 = icmp ugt i32 %29, 4
  br i1 %cmp38, label %do.end42, label %do.body37.do.end56_crit_edge

do.body37.do.end56_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

do.end42:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  %Ssid = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 4, i32 15, i32 6, i32 3
  %Ssid44 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 4, i32 15, i32 6, i32 3, i32 1
  %MacAddress = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 4, i32 15, i32 6, i32 1
  %30 = ptrtoint ptr %Ssid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %Ssid, align 4
  %assoc_ssid = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 4, i32 13
  %32 = ptrtoint ptr %assoc_ssid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %assoc_ssid, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.44, i32 noundef 248, ptr noundef %Ssid44, ptr noundef %MacAddress, i32 noundef %31, i32 noundef %33) #10
  br label %do.end56

do.end56:                                         ; preds = %do.end42, %do.body37.do.end56_crit_edge
  %to_roaming = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 4, i32 4
  %34 = ptrtoint ptr %to_roaming to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %to_roaming, align 2
  br label %if.end57

if.end57:                                         ; preds = %do.end56, %if.end30.if.end57_crit_edge
  tail call void @rtw_indicate_disconnect(ptr noundef %3) #7
  tail call void @rtw_free_assoc_resources(ptr noundef %3, i32 noundef 1) #7
  tail call void @rtw_free_network_queue(ptr noundef %3, i8 noundef zeroext 1) #7
  tail call fastcc void @rtw_dev_unload(ptr noundef %3)
  tail call void @mutex_unlock(ptr noundef %pwrctrlpriv) #7
  %35 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fw_state.i, align 4
  %37 = and i32 %36, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool60.not = icmp eq i32 %37, 0
  br i1 %tobool60.not, label %if.end57.if.end62_crit_edge, label %if.then61

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw_indicate_scan_done(ptr noundef %3, i1 noundef zeroext true) #7
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end57.if.end62_crit_edge
  %38 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fw_state.i, align 4
  %40 = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool64.not = icmp eq i32 %40, 0
  br i1 %tobool64.not, label %if.end62.do.body67_crit_edge, label %if.then65

if.end62.do.body67_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body67

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw_indicate_disconnect(ptr noundef %3) #7
  br label %do.body67

do.body67:                                        ; preds = %if.then65, %if.end62.do.body67_crit_edge, %do.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %.pr = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp68 = icmp ugt i32 %.pr, 4
  br i1 %cmp68, label %do.end72, label %do.body67.do.end78_crit_edge

do.body67.do.end78_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

do.end72:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  %call74 = tail call i32 @rtw_get_passing_time_ms(i32 noundef %6) #7
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef %call74) #10
  br label %do.end78

do.end78:                                         ; preds = %do.end72, %do.body67.do.end78_crit_edge, %do.body13.do.end78_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_resume(ptr nocapture noundef readonly %pusb_intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %5 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call i32 @llvm.read_register.i32(metadata !130) #7
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.54, ptr noundef %comm, i32 noundef %11) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %pnetdev8 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 37
  %12 = ptrtoint ptr %pnetdev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pnetdev8, align 4
  %pwrctrlpriv = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %pwrctrlpriv, i32 noundef 0) #7
  %call9 = tail call zeroext i8 @rtw_reset_drv_sw(ptr noundef %3) #7
  %tobool.not = icmp eq ptr %pwrctrlpriv, null
  br i1 %tobool.not, label %do.end7.do.body12_crit_edge, label %if.then10

do.end7.do.body12_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  %bkeepfwalive = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 14, i32 34
  %14 = ptrtoint ptr %bkeepfwalive to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bkeepfwalive, align 1
  br label %do.body12

do.body12:                                        ; preds = %if.then10, %do.end7.do.body12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %15 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp13 = icmp ugt i32 %15, 4
  br i1 %cmp13, label %do.end17, label %do.body12.do.end23_crit_edge

do.body12.do.end23_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

do.end17:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %bkeepfwalive19 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 14, i32 34
  %16 = ptrtoint ptr %bkeepfwalive19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bkeepfwalive19, align 1
  %conv = zext i8 %17 to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %conv) #10
  br label %do.end23

do.end23:                                         ; preds = %do.end17, %do.body12.do.end23_crit_edge
  %call24 = tail call i32 @netdev_open(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %pwrctrlpriv) #7
  br label %exit

if.end29:                                         ; preds = %do.end23
  tail call void @netif_device_attach(ptr noundef %13) #7
  tail call void @netif_carrier_on(ptr noundef %13) #7
  tail call void @mutex_unlock(ptr noundef %pwrctrlpriv) #7
  %arrayidx = getelementptr %struct.adapter, ptr %3, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp32.not = icmp eq i32 %19, 0
  br i1 %cmp32.not, label %if.end29.if.end53_crit_edge, label %do.body35

if.end29.if.end53_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

do.body35:                                        ; preds = %if.end29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %20 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp36 = icmp ugt i32 %20, 4
  br i1 %cmp36, label %do.end41, label %do.body35.do.end48_crit_edge

do.body35.do.end48_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

do.end41:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %19) #10
  br label %do.end48

do.end48:                                         ; preds = %do.end41, %do.body35.do.end48_crit_edge
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %call51 = tail call ptr @find_vpid(i32 noundef %22) #7
  %call52 = tail call i32 @kill_pid(ptr noundef %call51, i32 noundef 12, i32 noundef 1) #7
  br label %if.end53

if.end53:                                         ; preds = %do.end48, %if.end29.if.end53_crit_edge
  tail call void @rtw_roaming(ptr noundef %3, ptr noundef null) #7
  br label %exit

exit:                                             ; preds = %if.end53, %if.then27
  %ret.0 = phi i32 [ -1, %if.then27 ], [ 0, %if.end53 ]
  br i1 %tobool.not, label %exit.do.body57_crit_edge, label %if.then55

exit.do.body57_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57

if.then55:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  %bInSuspend = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 14, i32 25
  %23 = ptrtoint ptr %bInSuspend to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %bInSuspend, align 1
  br label %do.body57

do.body57:                                        ; preds = %if.then55, %exit.do.body57_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %24 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp58 = icmp ugt i32 %24, 4
  br i1 %cmp58, label %do.end63, label %do.body57.do.end69_crit_edge

do.body57.do.end69_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

do.end63:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = tail call i32 @rtw_get_passing_time_ms(i32 noundef %4) #7
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.54, i32 noundef %ret.0, i32 noundef %call65) #10
  br label %do.end69

do.end69:                                         ; preds = %do.end63, %do.body57.do.end69_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_handle_dualmac(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_init_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_intf_start(ptr noundef %padapter) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtl8188eu_inirp_init(ptr noundef %padapter) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_intf_stop(ptr noundef %padapter) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw_read_port_cancel(ptr noundef %padapter) #7
  tail call void @rtw_write_port_cancel(ptr noundef %padapter) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_read_chip_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188eu_interface_configure(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ReadAdapterInfo8188EU(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_init_drv_sw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_init_netdev_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_macaddr_cfg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_init_wifidirect_addrs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8188eu_inirp_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_read_port_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_write_port_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_pm_set_ips(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_pm_set_lps(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @LeaveAllPowerSaveMode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_disassoc_cmd(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_mlme_ap_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_cancel_all_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_dev_unload(ptr noundef %padapter) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bup = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 39
  %0 = ptrtoint ptr %bup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body19_crit_edge, label %do.body

entry.do.body19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp ugt i32 %2, 4
  br i1 %cmp, label %do.end, label %do.body.do.end3_crit_edge

do.body.do.end3_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %do.body.do.end3_crit_edge
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20
  %3 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %bDriverStopped, align 8
  %ack_tx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 41
  %4 = ptrtoint ptr %ack_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ack_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %do.end3.if.end7_crit_edge, label %if.then5

do.end3.if.end7_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  tail call void @rtw_ack_tx_done(ptr noundef %xmitpriv, i32 noundef 9) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end3.if.end7_crit_edge
  %intf_stop = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 36
  %6 = ptrtoint ptr %intf_stop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf_stop, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %padapter) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  tail call void @rtw_stop_drv_threads(ptr noundef %padapter) #7
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %8 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp eq i32 %9, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 @rtw_hal_deinit(ptr noundef %padapter) #7
  %10 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %bSurpriseRemoved, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge
  %11 = ptrtoint ptr %bup to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bup, align 8
  br label %do.body19

do.body19:                                        ; preds = %if.end16, %entry.do.body19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %12 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp20 = icmp ugt i32 %12, 4
  br i1 %cmp20, label %do.end23, label %do.body19.do.end27_crit_edge

do.body19.do.end27_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

do.end23:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #10
  br label %do.end27

do.end27:                                         ; preds = %do.end23, %do.body19.do.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_free_drv_sw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_ack_tx_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_stop_drv_threads(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_indicate_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_assoc_resources(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_network_queue(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_indicate_scan_done(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_passing_time_ms(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_reset_drv_sw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_roaming(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !16, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !123, !124, !125, !126, !128, !129}
!llvm.named.register.sp = !{!130}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @ui_pid, !1, !"ui_pid", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 17, i32 5}
!2 = !{ptr @rtw_usb_id_tbl, !3, !"rtw_usb_id_tbl", i1 false, i1 false}
!3 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 28, i32 29}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 522, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rtw_drv_entry._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @rtw_drv_entry._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rtw_drv_entry.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 524, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 527, i32 9}
!16 = distinct !{null, !17, !"usb_drv", i1 false, i1 false}
!17 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 67, i32 28}
!18 = !{ptr @rtl8188e_usb_drv, !19, !"rtl8188e_usb_drv", i1 false, i1 false}
!19 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 57, i32 27}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 477, i32 3}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rtw_drv_init._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @rtw_drv_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 482, i32 3}
!27 = !{ptr @rtw_drv_init._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rtw_drv_init._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 122, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @usb_dvobj_init._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @usb_dvobj_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 125, i32 3}
!36 = !{ptr @usb_dvobj_init._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @usb_dvobj_init._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @sema_init.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 391, i32 3}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @rtw_usb_if1_init._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @rtw_usb_if1_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 399, i32 4}
!51 = !{ptr @rtw_usb_if1_init._entry.20, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @rtw_usb_if1_init._entry_ptr.22, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 407, i32 2}
!55 = !{ptr @rtw_usb_if1_init._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @rtw_usb_if1_init._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 414, i32 2}
!59 = !{ptr @rtw_usb_if1_init._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @rtw_usb_if1_init._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 157, i32 5}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @usb_dvobj_deinit._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @usb_dvobj_deinit._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 503, i32 2}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rtw_dev_remove._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @rtw_dev_remove._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 517, i32 2}
!73 = !{ptr @rtw_dev_remove._entry.33, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @rtw_dev_remove._entry_ptr.35, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 457, i32 2}
!77 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @rtw_usb_if1_deinit._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @rtw_usb_if1_deinit._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 187, i32 3}
!82 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @rtw_dev_unload._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @rtw_dev_unload._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 206, i32 2}
!87 = !{ptr @rtw_dev_unload._entry.40, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @rtw_dev_unload._entry_ptr.42, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 221, i32 2}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @rtw_suspend._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @rtw_suspend._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 225, i32 3}
!96 = !{ptr @rtw_suspend._entry.45, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @rtw_suspend._entry_ptr.47, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 247, i32 3}
!100 = !{ptr @rtw_suspend._entry.48, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @rtw_suspend._entry_ptr.50, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 273, i32 2}
!104 = !{ptr @rtw_suspend._entry.51, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @rtw_suspend._entry_ptr.53, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 288, i32 2}
!108 = !{ptr @rtw_resume._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @rtw_resume._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 298, i32 2}
!112 = !{ptr @rtw_resume._entry.55, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @rtw_resume._entry_ptr.57, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 310, i32 3}
!116 = !{ptr @rtw_resume._entry.58, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @rtw_resume._entry_ptr.60, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @rtw_resume._entry.61, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 320, i32 2}
!120 = !{ptr @rtw_resume._entry_ptr.62, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 532, i32 2}
!123 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @rtw_drv_halt._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @rtw_drv_halt._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/r8188eu/os_dep/usb_intf.c", i32 538, i32 2}
!128 = !{ptr @rtw_drv_halt._entry.65, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @rtw_drv_halt._entry_ptr.67, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{!"sp"}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
