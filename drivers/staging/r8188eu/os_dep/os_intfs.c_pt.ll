; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/os_dep/os_intfs.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/os_dep/os_intfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iw_handler_def = type { ptr, i16, i16, i16, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
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
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
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
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.br_ext_info = type { i32, i32, i32, i32, [6 x i8], i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.dvobj_priv = type { ptr, i8, i8, i32, [3 x i32], [8 x i8], i8, %struct.rt_firmware, i8, i8, i32, %struct.semaphore, %struct.mutex, ptr, ptr, %struct.atomic_t, i8 }
%struct.rt_firmware = type { ptr, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@__UNIQUE_ID_license346 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description347 = internal constant [40 x i8] c"description=Realtek Wireless Lan Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author348 = internal constant [35 x i8] c"author=Realtek Semiconductor Corp.\00", section ".modinfo", align 1
@__UNIQUE_ID_version349 = internal constant [29 x i8] c"version=v4.1.4_6773.20130222\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 128
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@rtw_ips_mode = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_ips_mode = internal constant %struct.kernel_param { ptr @___asan_gen_.63, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_ips_mode } }, section "__param", align 4
@__UNIQUE_ID_rtw_ips_modetype350 = internal constant [26 x i8] c"parmtype=rtw_ips_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rtw_ips_mode351 = internal constant [39 x i8] c"parm=rtw_ips_mode:The default IPS mode\00", section ".modinfo", align 1
@rtw_ht_enable = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@rtw_cbw40_enable = dso_local global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@rtw_ampdu_enable = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@ifname = internal global { ptr, [28 x i8] } { ptr @.str.51, [28 x i8] zeroinitializer }, align 32
@__param_ifname = internal constant %struct.kernel_param { ptr @___asan_gen_.75, ptr @__this_module, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @ifname } }, section "__param", align 4
@__UNIQUE_ID_ifnametype352 = internal constant [22 x i8] c"parmtype=ifname:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_ifname353 = internal constant [61 x i8] c"parm=ifname:The default name to allocate for first interface\00", section ".modinfo", align 1
@if2name = internal global { ptr, [28 x i8] } { ptr @.str.51, [28 x i8] zeroinitializer }, align 32
@__param_if2name = internal constant %struct.kernel_param { ptr @___asan_gen_.78, ptr @__this_module, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @if2name } }, section "__param", align 4
@__UNIQUE_ID_if2nametype354 = internal constant [23 x i8] c"parmtype=if2name:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_if2name355 = internal constant [63 x i8] c"parm=if2name:The default name to allocate for second interface\00", section ".modinfo", align 1
@rtw_initmac = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_rtw_initmac = internal constant %struct.kernel_param { ptr @___asan_gen_.81, ptr @__this_module, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_initmac } }, section "__param", align 4
@__UNIQUE_ID_rtw_initmactype356 = internal constant [27 x i8] c"parmtype=rtw_initmac:charp\00", section ".modinfo", align 1
@rtw_channel_plan = internal global { i32, [28 x i8] } { i32 66, [28 x i8] zeroinitializer }, align 32
@__param_rtw_channel_plan = internal constant %struct.kernel_param { ptr @___asan_gen_.84, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_channel_plan } }, section "__param", align 4
@__UNIQUE_ID_rtw_channel_plantype357 = internal constant [30 x i8] c"parmtype=rtw_channel_plan:int\00", section ".modinfo", align 1
@rtw_chip_version = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_chip_version = internal constant %struct.kernel_param { ptr @___asan_gen_.87, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_chip_version } }, section "__param", align 4
@__UNIQUE_ID_rtw_chip_versiontype358 = internal constant [30 x i8] c"parmtype=rtw_chip_version:int\00", section ".modinfo", align 1
@rtw_rfintfs = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_rtw_rfintfs = internal constant %struct.kernel_param { ptr @___asan_gen_.90, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_rfintfs } }, section "__param", align 4
@__UNIQUE_ID_rtw_rfintfstype359 = internal constant [25 x i8] c"parmtype=rtw_rfintfs:int\00", section ".modinfo", align 1
@rtw_lbkmode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_lbkmode = internal constant %struct.kernel_param { ptr @___asan_gen_.93, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_lbkmode } }, section "__param", align 4
@__UNIQUE_ID_rtw_lbkmodetype360 = internal constant [25 x i8] c"parmtype=rtw_lbkmode:int\00", section ".modinfo", align 1
@rtw_network_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_network_mode = internal constant %struct.kernel_param { ptr @___asan_gen_.96, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_network_mode } }, section "__param", align 4
@__UNIQUE_ID_rtw_network_modetype361 = internal constant [30 x i8] c"parmtype=rtw_network_mode:int\00", section ".modinfo", align 1
@rtw_channel = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_channel = internal constant %struct.kernel_param { ptr @___asan_gen_.99, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_channel } }, section "__param", align 4
@__UNIQUE_ID_rtw_channeltype362 = internal constant [25 x i8] c"parmtype=rtw_channel:int\00", section ".modinfo", align 1
@rtw_wmm_enable = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_wmm_enable = internal constant %struct.kernel_param { ptr @___asan_gen_.102, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_wmm_enable } }, section "__param", align 4
@__UNIQUE_ID_rtw_wmm_enabletype363 = internal constant [28 x i8] c"parmtype=rtw_wmm_enable:int\00", section ".modinfo", align 1
@rtw_vrtl_carrier_sense = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_rtw_vrtl_carrier_sense = internal constant %struct.kernel_param { ptr @___asan_gen_.105, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_vrtl_carrier_sense } }, section "__param", align 4
@__UNIQUE_ID_rtw_vrtl_carrier_sensetype364 = internal constant [36 x i8] c"parmtype=rtw_vrtl_carrier_sense:int\00", section ".modinfo", align 1
@rtw_vcs_type = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_vcs_type = internal constant %struct.kernel_param { ptr @___asan_gen_.108, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_vcs_type } }, section "__param", align 4
@__UNIQUE_ID_rtw_vcs_typetype365 = internal constant [26 x i8] c"parmtype=rtw_vcs_type:int\00", section ".modinfo", align 1
@rtw_busy_thresh = internal global { i32, [28 x i8] } { i32 40, [28 x i8] zeroinitializer }, align 32
@__param_rtw_busy_thresh = internal constant %struct.kernel_param { ptr @___asan_gen_.111, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_busy_thresh } }, section "__param", align 4
@__UNIQUE_ID_rtw_busy_threshtype366 = internal constant [29 x i8] c"parmtype=rtw_busy_thresh:int\00", section ".modinfo", align 1
@rtw_led_enable = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_led_enable = internal constant %struct.kernel_param { ptr @___asan_gen_.114, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_led_enable } }, section "__param", align 4
@__UNIQUE_ID_rtw_led_enabletype367 = internal constant [28 x i8] c"parmtype=rtw_led_enable:int\00", section ".modinfo", align 1
@__param_rtw_ht_enable = internal constant %struct.kernel_param { ptr @___asan_gen_.66, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_ht_enable } }, section "__param", align 4
@__UNIQUE_ID_rtw_ht_enabletype368 = internal constant [27 x i8] c"parmtype=rtw_ht_enable:int\00", section ".modinfo", align 1
@__param_rtw_cbw40_enable = internal constant %struct.kernel_param { ptr @___asan_gen_.69, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_cbw40_enable } }, section "__param", align 4
@__UNIQUE_ID_rtw_cbw40_enabletype369 = internal constant [30 x i8] c"parmtype=rtw_cbw40_enable:int\00", section ".modinfo", align 1
@__param_rtw_ampdu_enable = internal constant %struct.kernel_param { ptr @___asan_gen_.72, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_ampdu_enable } }, section "__param", align 4
@__UNIQUE_ID_rtw_ampdu_enabletype370 = internal constant [30 x i8] c"parmtype=rtw_ampdu_enable:int\00", section ".modinfo", align 1
@rtw_rx_stbc = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_rx_stbc = internal constant %struct.kernel_param { ptr @___asan_gen_.117, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_rx_stbc } }, section "__param", align 4
@__UNIQUE_ID_rtw_rx_stbctype371 = internal constant [25 x i8] c"parmtype=rtw_rx_stbc:int\00", section ".modinfo", align 1
@rtw_ampdu_amsdu = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_ampdu_amsdu = internal constant %struct.kernel_param { ptr @___asan_gen_.120, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_ampdu_amsdu } }, section "__param", align 4
@__UNIQUE_ID_rtw_ampdu_amsdutype372 = internal constant [29 x i8] c"parmtype=rtw_ampdu_amsdu:int\00", section ".modinfo", align 1
@rtw_lowrate_two_xmit = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_lowrate_two_xmit = internal constant %struct.kernel_param { ptr @___asan_gen_.123, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_lowrate_two_xmit } }, section "__param", align 4
@__UNIQUE_ID_rtw_lowrate_two_xmittype373 = internal constant [34 x i8] c"parmtype=rtw_lowrate_two_xmit:int\00", section ".modinfo", align 1
@rtw_power_mgnt = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_power_mgnt = internal constant %struct.kernel_param { ptr @___asan_gen_.126, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_power_mgnt } }, section "__param", align 4
@__UNIQUE_ID_rtw_power_mgnttype374 = internal constant [28 x i8] c"parmtype=rtw_power_mgnt:int\00", section ".modinfo", align 1
@rtw_smart_ps = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_rtw_smart_ps = internal constant %struct.kernel_param { ptr @___asan_gen_.129, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_smart_ps } }, section "__param", align 4
@__UNIQUE_ID_rtw_smart_pstype375 = internal constant [26 x i8] c"parmtype=rtw_smart_ps:int\00", section ".modinfo", align 1
@rtw_low_power = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_low_power = internal constant %struct.kernel_param { ptr @___asan_gen_.132, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_low_power } }, section "__param", align 4
@__UNIQUE_ID_rtw_low_powertype376 = internal constant [27 x i8] c"parmtype=rtw_low_power:int\00", section ".modinfo", align 1
@rtw_wifi_spec = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_wifi_spec = internal constant %struct.kernel_param { ptr @___asan_gen_.135, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_wifi_spec } }, section "__param", align 4
@__UNIQUE_ID_rtw_wifi_spectype377 = internal constant [27 x i8] c"parmtype=rtw_wifi_spec:int\00", section ".modinfo", align 1
@rtw_antdiv_cfg = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_rtw_antdiv_cfg = internal constant %struct.kernel_param { ptr @___asan_gen_.138, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_antdiv_cfg } }, section "__param", align 4
@__UNIQUE_ID_rtw_antdiv_cfgtype378 = internal constant [28 x i8] c"parmtype=rtw_antdiv_cfg:int\00", section ".modinfo", align 1
@rtw_antdiv_type = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_antdiv_type = internal constant %struct.kernel_param { ptr @___asan_gen_.141, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_antdiv_type } }, section "__param", align 4
@__UNIQUE_ID_rtw_antdiv_typetype379 = internal constant [29 x i8] c"parmtype=rtw_antdiv_type:int\00", section ".modinfo", align 1
@rtw_hwpdn_mode = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_rtw_hwpdn_mode = internal constant %struct.kernel_param { ptr @___asan_gen_.144, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_hwpdn_mode } }, section "__param", align 4
@__UNIQUE_ID_rtw_hwpdn_modetype380 = internal constant [28 x i8] c"parmtype=rtw_hwpdn_mode:int\00", section ".modinfo", align 1
@rtw_hwpwrp_detect = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_hwpwrp_detect = internal constant %struct.kernel_param { ptr @___asan_gen_.147, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_hwpwrp_detect } }, section "__param", align 4
@__UNIQUE_ID_rtw_hwpwrp_detecttype381 = internal constant [31 x i8] c"parmtype=rtw_hwpwrp_detect:int\00", section ".modinfo", align 1
@rtw_hw_wps_pbc = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_hw_wps_pbc = internal constant %struct.kernel_param { ptr @___asan_gen_.150, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_hw_wps_pbc } }, section "__param", align 4
@__UNIQUE_ID_rtw_hw_wps_pbctype382 = internal constant [28 x i8] c"parmtype=rtw_hw_wps_pbc:int\00", section ".modinfo", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@rtw_max_roaming_times = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_rtw_max_roaming_times = internal constant %struct.kernel_param { ptr @___asan_gen_.153, ptr @__this_module, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_max_roaming_times } }, section "__param", align 4
@__UNIQUE_ID_rtw_max_roaming_timestype383 = internal constant [36 x i8] c"parmtype=rtw_max_roaming_times:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rtw_max_roaming_times384 = internal constant [56 x i8] c"parm=rtw_max_roaming_times:The max roaming times to try\00", section ".modinfo", align 1
@rtw_fw_iol = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_fw_iol = internal constant %struct.kernel_param { ptr @___asan_gen_.156, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_fw_iol } }, section "__param", align 4
@__UNIQUE_ID_rtw_fw_ioltype385 = internal constant [24 x i8] c"parmtype=rtw_fw_iol:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rtw_fw_iol386 = internal constant [23 x i8] c"parm=rtw_fw_iol:FW IOL\00", section ".modinfo", align 1
@rtw_mc2u_disable = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_mc2u_disable = internal constant %struct.kernel_param { ptr @___asan_gen_.159, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_mc2u_disable } }, section "__param", align 4
@__UNIQUE_ID_rtw_mc2u_disabletype387 = internal constant [30 x i8] c"parmtype=rtw_mc2u_disable:int\00", section ".modinfo", align 1
@rtw_80211d = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_80211d = internal constant %struct.kernel_param { ptr @___asan_gen_.162, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_80211d } }, section "__param", align 4
@__UNIQUE_ID_rtw_80211dtype388 = internal constant [24 x i8] c"parmtype=rtw_80211d:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rtw_80211d389 = internal constant [41 x i8] c"parm=rtw_80211d:Enable 802.11d mechanism\00", section ".modinfo", align 1
@rtw_notch_filter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_notch_filter = internal constant %struct.kernel_param { ptr @___asan_gen_.165, ptr @__this_module, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_notch_filter } }, section "__param", align 4
@__UNIQUE_ID_rtw_notch_filtertype390 = internal constant [31 x i8] c"parmtype=rtw_notch_filter:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rtw_notch_filter391 = internal constant [65 x i8] c"parm=rtw_notch_filter:0:Disable, 1:Enable, 2:Enable only for P2P\00", section ".modinfo", align 1
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@rtw_debug = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @rtw_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype392 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug393 = internal constant [45 x i8] c"parm=debug:Set debug level (1-9) (default 1)\00", section ".modinfo", align 1
@rtw_1d_to_queue = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 2, i16 3, i16 3, i16 2, i16 1, i16 1, i16 0, i16 0], [16 x i8] zeroinitializer }, align 32
@wlan_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.52, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@rtw_init_netdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016R8188EU: register rtw_netdev_ops to netdev_ops\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw_init_netdev\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/r8188eu/os_dep/os_intfs.c\00", [54 x i8] zeroinitializer }, align 32
@rtw_init_netdev._entry_ptr = internal global ptr @rtw_init_netdev._entry, section ".printk_index", align 4
@rtw_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @netdev_open, ptr @netdev_close, ptr @rtw_xmit_entry, ptr null, ptr @rtw_select_queue, ptr null, ptr null, ptr @rtw_net_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw_net_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@rtw_handlers_def = external dso_local global %struct.iw_handler_def, align 4
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RTW_CMD_THREAD\00", [17 x i8] zeroinitializer }, align 32
@rtw_init_drv_sw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016R8188EU: Can't _rtw_init_xmit_priv\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw_init_drv_sw\00", [16 x i8] zeroinitializer }, align 32
@rtw_init_drv_sw._entry_ptr = internal global ptr @rtw_init_drv_sw._entry, section ".printk_index", align 4
@rtw_init_drv_sw._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016R8188EU: Can't _rtw_init_recv_priv\0A\00", [58 x i8] zeroinitializer }, align 32
@rtw_init_drv_sw._entry_ptr.8 = internal global ptr @rtw_init_drv_sw._entry.6, section ".printk_index", align 4
@rtw_init_drv_sw._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016R8188EU: Can't _rtw_init_sta_priv\0A\00", [59 x i8] zeroinitializer }, align 32
@rtw_init_drv_sw._entry_ptr.11 = internal global ptr @rtw_init_drv_sw._entry.9, section ".printk_index", align 4
@rtw_init_drv_sw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&padapter->br_ext_lock\00", [41 x i8] zeroinitializer }, align 32
@netdev_br_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"br0\00", [28 x i8] zeroinitializer }, align 32
@netdev_br_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s()-%d: dev_get_by_name(%s) failed!\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"netdev_br_init\00", [17 x i8] zeroinitializer }, align 32
@netdev_br_init._entry_ptr = internal global ptr @netdev_br_init._entry, section ".printk_index", align 4
@_netdev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016R8188EU: +88eu_drv - drv_open, bup =%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_netdev_open\00", [19 x i8] zeroinitializer }, align 32
@_netdev_open._entry_ptr = internal global ptr @_netdev_open._entry, section ".printk_index", align 4
@_netdev_open._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016MAC Address = %pM\0A\00", [43 x i8] zeroinitializer }, align 32
@_netdev_open._entry_ptr.21 = internal global ptr @_netdev_open._entry.19, section ".printk_index", align 4
@_netdev_open._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016Initialize driver software resource Failed!\0A\00", [49 x i8] zeroinitializer }, align 32
@_netdev_open._entry_ptr.24 = internal global ptr @_netdev_open._entry.22, section ".printk_index", align 4
@_netdev_open._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016can't init mlme_ext_priv\0A\00", [36 x i8] zeroinitializer }, align 32
@_netdev_open._entry_ptr.27 = internal global ptr @_netdev_open._entry.25, section ".printk_index", align 4
@_netdev_open._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016R8188EU: -88eu_drv - drv_open, bup =%d\0A\00", [54 x i8] zeroinitializer }, align 32
@_netdev_open._entry_ptr.30 = internal global ptr @_netdev_open._entry.28, section ".printk_index", align 4
@_netdev_open._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.2, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016R8188EU: -88eu_drv - drv_open fail, bup =%d\0A\00", [49 x i8] zeroinitializer }, align 32
@_netdev_open._entry_ptr.33 = internal global ptr @_netdev_open._entry.31, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rtw_ips_pwr_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016R8188EU: ===>  rtw_ips_pwr_up..............\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtw_ips_pwr_up\00", [17 x i8] zeroinitializer }, align 32
@rtw_ips_pwr_up._entry_ptr = internal global ptr @rtw_ips_pwr_up._entry, section ".printk_index", align 4
@rtw_ips_pwr_up._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016R8188EU: <===  rtw_ips_pwr_up.............. in %dms\0A\00", [41 x i8] zeroinitializer }, align 32
@rtw_ips_pwr_up._entry_ptr.38 = internal global ptr @rtw_ips_pwr_up._entry.36, section ".printk_index", align 4
@rtw_ips_pwr_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016R8188EU: ===> rtw_ips_pwr_down...................\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtw_ips_pwr_down\00", [47 x i8] zeroinitializer }, align 32
@rtw_ips_pwr_down._entry_ptr = internal global ptr @rtw_ips_pwr_down._entry, section ".printk_index", align 4
@rtw_ips_pwr_down._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016R8188EU: <=== rtw_ips_pwr_down..................... in %dms\0A\00", [33 x i8] zeroinitializer }, align 32
@rtw_ips_pwr_down._entry_ptr.43 = internal global ptr @rtw_ips_pwr_down._entry.41, section ".printk_index", align 4
@rtw_ips_dev_unload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016R8188EU: ====> %s...\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw_ips_dev_unload\00", [45 x i8] zeroinitializer }, align 32
@rtw_ips_dev_unload._entry_ptr = internal global ptr @rtw_ips_dev_unload._entry, section ".printk_index", align 4
@netdev_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016R8188EU: (2)88eu_drv - drv_close, bup =%d, hw_init_completed =%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netdev_close\00", [19 x i8] zeroinitializer }, align 32
@netdev_close._entry_ptr = internal global ptr @netdev_close._entry, section ".printk_index", align 4
@netdev_close._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016R8188EU: -88eu_drv - drv_close, bup =%d\0A\00", [53 x i8] zeroinitializer }, align 32
@netdev_close._entry_ptr.50 = internal global ptr @netdev_close._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlan%d\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wlan\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ANY\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ips_netdrv_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016R8188EU: ===> %s.........\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ips_netdrv_open\00", [16 x i8] zeroinitializer }, align 32
@ips_netdrv_open._entry_ptr = internal global ptr @ips_netdrv_open._entry, section ".printk_index", align 4
@ips_netdrv_open._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016R8188EU: -ips_netdrv_open - drv_open failure, bup =%d\0A\00", [39 x i8] zeroinitializer }, align 32
@ips_netdrv_open._entry_ptr.62 = internal global ptr @ips_netdrv_open._entry.60, section ".printk_index", align 4
@___asan_gen_.63 = private constant [13 x i8] c"rtw_ips_mode\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 41, i32 12 }
@___asan_gen_.66 = private constant [14 x i8] c"rtw_ht_enable\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 70, i32 5 }
@___asan_gen_.69 = private constant [17 x i8] c"rtw_cbw40_enable\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 71, i32 5 }
@___asan_gen_.72 = private constant [17 x i8] c"rtw_ampdu_enable\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 72, i32 5 }
@___asan_gen_.75 = private constant [7 x i8] c"ifname\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 97, i32 14 }
@___asan_gen_.78 = private constant [8 x i8] c"if2name\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 101, i32 14 }
@___asan_gen_.81 = private constant [12 x i8] c"rtw_initmac\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 105, i32 7 }
@___asan_gen_.84 = private constant [17 x i8] c"rtw_channel_plan\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 80, i32 12 }
@___asan_gen_.87 = private constant [17 x i8] c"rtw_chip_version\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 26, i32 12 }
@___asan_gen_.90 = private constant [12 x i8] c"rtw_rfintfs\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 27, i32 12 }
@___asan_gen_.93 = private constant [12 x i8] c"rtw_lbkmode\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 28, i32 12 }
@___asan_gen_.96 = private constant [17 x i8] c"rtw_network_mode\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 29, i32 12 }
@___asan_gen_.99 = private constant [12 x i8] c"rtw_channel\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 30, i32 12 }
@___asan_gen_.102 = private constant [15 x i8] c"rtw_wmm_enable\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 60, i32 12 }
@___asan_gen_.105 = private constant [23 x i8] c"rtw_vrtl_carrier_sense\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 32, i32 12 }
@___asan_gen_.108 = private constant [13 x i8] c"rtw_vcs_type\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 33, i32 12 }
@___asan_gen_.111 = private constant [16 x i8] c"rtw_busy_thresh\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 52, i32 12 }
@___asan_gen_.114 = private constant [15 x i8] c"rtw_led_enable\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 68, i32 12 }
@___asan_gen_.117 = private constant [12 x i8] c"rtw_rx_stbc\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 73, i32 12 }
@___asan_gen_.120 = private constant [16 x i8] c"rtw_ampdu_amsdu\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 74, i32 12 }
@___asan_gen_.123 = private constant [21 x i8] c"rtw_lowrate_two_xmit\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 76, i32 12 }
@___asan_gen_.126 = private constant [15 x i8] c"rtw_power_mgnt\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 40, i32 12 }
@___asan_gen_.129 = private constant [13 x i8] c"rtw_smart_ps\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 43, i32 12 }
@___asan_gen_.132 = private constant [14 x i8] c"rtw_low_power\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 78, i32 12 }
@___asan_gen_.135 = private constant [14 x i8] c"rtw_wifi_spec\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 79, i32 12 }
@___asan_gen_.138 = private constant [15 x i8] c"rtw_antdiv_cfg\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 83, i32 12 }
@___asan_gen_.141 = private constant [16 x i8] c"rtw_antdiv_type\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 84, i32 12 }
@___asan_gen_.144 = private constant [15 x i8] c"rtw_hwpdn_mode\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 87, i32 12 }
@___asan_gen_.147 = private constant [18 x i8] c"rtw_hwpwrp_detect\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 89, i32 12 }
@___asan_gen_.150 = private constant [15 x i8] c"rtw_hw_wps_pbc\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 91, i32 12 }
@___asan_gen_.153 = private constant [22 x i8] c"rtw_max_roaming_times\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 135, i32 13 }
@___asan_gen_.156 = private constant [11 x i8] c"rtw_fw_iol\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 139, i32 12 }
@___asan_gen_.159 = private constant [17 x i8] c"rtw_mc2u_disable\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 93, i32 5 }
@___asan_gen_.162 = private constant [11 x i8] c"rtw_80211d\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 95, i32 12 }
@___asan_gen_.165 = private constant [17 x i8] c"rtw_notch_filter\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 148, i32 13 }
@___asan_gen_.168 = private unnamed_addr constant [10 x i8] c"rtw_debug\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 48, i32 12 }
@___asan_gen_.171 = private unnamed_addr constant [16 x i8] c"rtw_1d_to_queue\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 262, i32 18 }
@___asan_gen_.174 = private unnamed_addr constant [10 x i8] c"wlan_type\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 345, i32 33 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 365, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [15 x i8] c"rtw_netdev_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 324, i32 36 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 380, i32 24 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 496, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 501, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 506, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 521, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 589, i32 6 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 594, i32 39 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 599, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 614, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 630, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 634, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 639, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 664, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 671, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 718, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 725, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 732, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 741, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 746, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 766, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 795, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 97, i32 23 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 346, i32 10 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 164, i32 34 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 221, i32 37 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 695, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 723, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 690, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.364 = private constant [45 x i8] c"../drivers/staging/r8188eu/os_dep/os_intfs.c\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 709, i32 2 }
@llvm.compiler.used = appending global [205 x ptr] [ptr @__UNIQUE_ID_author348, ptr @__UNIQUE_ID_debug393, ptr @__UNIQUE_ID_debugtype392, ptr @__UNIQUE_ID_description347, ptr @__UNIQUE_ID_if2name355, ptr @__UNIQUE_ID_if2nametype354, ptr @__UNIQUE_ID_ifname353, ptr @__UNIQUE_ID_ifnametype352, ptr @__UNIQUE_ID_license346, ptr @__UNIQUE_ID_rtw_80211d389, ptr @__UNIQUE_ID_rtw_80211dtype388, ptr @__UNIQUE_ID_rtw_ampdu_amsdutype372, ptr @__UNIQUE_ID_rtw_ampdu_enabletype370, ptr @__UNIQUE_ID_rtw_antdiv_cfgtype378, ptr @__UNIQUE_ID_rtw_antdiv_typetype379, ptr @__UNIQUE_ID_rtw_busy_threshtype366, ptr @__UNIQUE_ID_rtw_cbw40_enabletype369, ptr @__UNIQUE_ID_rtw_channel_plantype357, ptr @__UNIQUE_ID_rtw_channeltype362, ptr @__UNIQUE_ID_rtw_chip_versiontype358, ptr @__UNIQUE_ID_rtw_fw_iol386, ptr @__UNIQUE_ID_rtw_fw_ioltype385, ptr @__UNIQUE_ID_rtw_ht_enabletype368, ptr @__UNIQUE_ID_rtw_hw_wps_pbctype382, ptr @__UNIQUE_ID_rtw_hwpdn_modetype380, ptr @__UNIQUE_ID_rtw_hwpwrp_detecttype381, ptr @__UNIQUE_ID_rtw_initmactype356, ptr @__UNIQUE_ID_rtw_ips_mode351, ptr @__UNIQUE_ID_rtw_ips_modetype350, ptr @__UNIQUE_ID_rtw_lbkmodetype360, ptr @__UNIQUE_ID_rtw_led_enabletype367, ptr @__UNIQUE_ID_rtw_low_powertype376, ptr @__UNIQUE_ID_rtw_lowrate_two_xmittype373, ptr @__UNIQUE_ID_rtw_max_roaming_times384, ptr @__UNIQUE_ID_rtw_max_roaming_timestype383, ptr @__UNIQUE_ID_rtw_mc2u_disabletype387, ptr @__UNIQUE_ID_rtw_network_modetype361, ptr @__UNIQUE_ID_rtw_notch_filter391, ptr @__UNIQUE_ID_rtw_notch_filtertype390, ptr @__UNIQUE_ID_rtw_power_mgnttype374, ptr @__UNIQUE_ID_rtw_rfintfstype359, ptr @__UNIQUE_ID_rtw_rx_stbctype371, ptr @__UNIQUE_ID_rtw_smart_pstype375, ptr @__UNIQUE_ID_rtw_vcs_typetype365, ptr @__UNIQUE_ID_rtw_vrtl_carrier_sensetype364, ptr @__UNIQUE_ID_rtw_wifi_spectype377, ptr @__UNIQUE_ID_rtw_wmm_enabletype363, ptr @__UNIQUE_ID_version349, ptr @__param_debug, ptr @__param_if2name, ptr @__param_ifname, ptr @__param_rtw_80211d, ptr @__param_rtw_ampdu_amsdu, ptr @__param_rtw_ampdu_enable, ptr @__param_rtw_antdiv_cfg, ptr @__param_rtw_antdiv_type, ptr @__param_rtw_busy_thresh, ptr @__param_rtw_cbw40_enable, ptr @__param_rtw_channel, ptr @__param_rtw_channel_plan, ptr @__param_rtw_chip_version, ptr @__param_rtw_fw_iol, ptr @__param_rtw_ht_enable, ptr @__param_rtw_hw_wps_pbc, ptr @__param_rtw_hwpdn_mode, ptr @__param_rtw_hwpwrp_detect, ptr @__param_rtw_initmac, ptr @__param_rtw_ips_mode, ptr @__param_rtw_lbkmode, ptr @__param_rtw_led_enable, ptr @__param_rtw_low_power, ptr @__param_rtw_lowrate_two_xmit, ptr @__param_rtw_max_roaming_times, ptr @__param_rtw_mc2u_disable, ptr @__param_rtw_network_mode, ptr @__param_rtw_notch_filter, ptr @__param_rtw_power_mgnt, ptr @__param_rtw_rfintfs, ptr @__param_rtw_rx_stbc, ptr @__param_rtw_smart_ps, ptr @__param_rtw_vcs_type, ptr @__param_rtw_vrtl_carrier_sense, ptr @__param_rtw_wifi_spec, ptr @__param_rtw_wmm_enable, ptr @_netdev_open._entry, ptr @_netdev_open._entry.19, ptr @_netdev_open._entry.22, ptr @_netdev_open._entry.25, ptr @_netdev_open._entry.28, ptr @_netdev_open._entry.31, ptr @_netdev_open._entry_ptr, ptr @_netdev_open._entry_ptr.21, ptr @_netdev_open._entry_ptr.24, ptr @_netdev_open._entry_ptr.27, ptr @_netdev_open._entry_ptr.30, ptr @_netdev_open._entry_ptr.33, ptr @ips_netdrv_open._entry, ptr @ips_netdrv_open._entry.60, ptr @ips_netdrv_open._entry_ptr, ptr @ips_netdrv_open._entry_ptr.62, ptr @netdev_br_init._entry, ptr @netdev_br_init._entry_ptr, ptr @netdev_close._entry, ptr @netdev_close._entry.48, ptr @netdev_close._entry_ptr, ptr @netdev_close._entry_ptr.50, ptr @rtw_init_drv_sw._entry, ptr @rtw_init_drv_sw._entry.6, ptr @rtw_init_drv_sw._entry.9, ptr @rtw_init_drv_sw._entry_ptr, ptr @rtw_init_drv_sw._entry_ptr.11, ptr @rtw_init_drv_sw._entry_ptr.8, ptr @rtw_init_netdev._entry, ptr @rtw_init_netdev._entry_ptr, ptr @rtw_ips_dev_unload._entry, ptr @rtw_ips_dev_unload._entry_ptr, ptr @rtw_ips_pwr_down._entry, ptr @rtw_ips_pwr_down._entry.41, ptr @rtw_ips_pwr_down._entry_ptr, ptr @rtw_ips_pwr_down._entry_ptr.43, ptr @rtw_ips_pwr_up._entry, ptr @rtw_ips_pwr_up._entry.36, ptr @rtw_ips_pwr_up._entry_ptr, ptr @rtw_ips_pwr_up._entry_ptr.38, ptr @rtw_ips_mode, ptr @rtw_ht_enable, ptr @rtw_cbw40_enable, ptr @rtw_ampdu_enable, ptr @ifname, ptr @if2name, ptr @rtw_initmac, ptr @rtw_channel_plan, ptr @rtw_chip_version, ptr @rtw_rfintfs, ptr @rtw_lbkmode, ptr @rtw_network_mode, ptr @rtw_channel, ptr @rtw_wmm_enable, ptr @rtw_vrtl_carrier_sense, ptr @rtw_vcs_type, ptr @rtw_busy_thresh, ptr @rtw_led_enable, ptr @rtw_rx_stbc, ptr @rtw_ampdu_amsdu, ptr @rtw_lowrate_two_xmit, ptr @rtw_power_mgnt, ptr @rtw_smart_ps, ptr @rtw_low_power, ptr @rtw_wifi_spec, ptr @rtw_antdiv_cfg, ptr @rtw_antdiv_type, ptr @rtw_hwpdn_mode, ptr @rtw_hwpwrp_detect, ptr @rtw_hw_wps_pbc, ptr @rtw_max_roaming_times, ptr @rtw_fw_iol, ptr @rtw_mc2u_disable, ptr @rtw_80211d, ptr @rtw_notch_filter, ptr @rtw_debug, ptr @rtw_1d_to_queue, ptr @wlan_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rtw_netdev_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @rtw_init_drv_sw.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ips_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ht_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_cbw40_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ampdu_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifname to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if2name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_initmac to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_channel_plan to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_chip_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_rfintfs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_lbkmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_network_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_channel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wmm_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_vrtl_carrier_sense to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_vcs_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_busy_thresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_led_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_rx_stbc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ampdu_amsdu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_lowrate_two_xmit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_power_mgnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_smart_ps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_low_power to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wifi_spec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_antdiv_cfg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_antdiv_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_hwpdn_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_hwpwrp_detect to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_hw_wps_pbc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_max_roaming_times to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_fw_iol to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_mc2u_disable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_80211d to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_notch_filter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_1d_to_queue to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlan_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_netdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_drv_sw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_drv_sw._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_drv_sw._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_drv_sw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_br_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_netdev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_netdev_open._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_netdev_open._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_netdev_open._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_netdev_open._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_netdev_open._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ips_pwr_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ips_pwr_up._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ips_pwr_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ips_pwr_down._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ips_dev_unload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_close._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ips_netdrv_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ips_netdrv_open._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @rtw_recv_select_queue(ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %eth_type.0.copyload = load i16, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %eth_type.0.copyload)
  %cond = icmp eq i16 %eth_type.0.copyload, 2048
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tos = getelementptr i8, ptr %1, i32 15
  %3 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tos, align 1
  %5 = lshr i8 %4, 5
  %shr = zext i8 %5 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %priority.0 = phi i32 [ %shr, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %arrayidx = getelementptr [8 x i16], ptr @rtw_1d_to_queue, i32 0, i32 %priority.0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  ret i16 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_init_netdev_name(ptr noundef %pnetdev, ptr noundef %ifname) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dev_alloc_name(ptr noundef %pnetdev, ptr noundef %ifname) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_off(ptr noundef %pnetdev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_init_netdev(ptr noundef %old_padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %old_padapter, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @rtw_alloc_etherdev_with_old_priv(i32 noundef 23072, ptr noundef nonnull %old_padapter) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call ptr @rtw_alloc_etherdev(i32 noundef 23072) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pnetdev.0 = phi ptr [ %call, %if.then ], [ %call1, %if.else ]
  %tobool2.not = icmp eq ptr %pnetdev.0, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.net_device, ptr %pnetdev.0, i32 0, i32 133, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @wlan_type, ptr %type, align 4
  %add.ptr.i = getelementptr i8, ptr %pnetdev.0, i32 2304
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %pnetdev6 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 37
  %3 = ptrtoint ptr %pnetdev6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pnetdev.0, ptr %pnetdev6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %4 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp ugt i32 %4, 4
  br i1 %cmp, label %do.end, label %if.end4.do.end12_crit_edge

if.end4.do.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %do.end12

do.end12:                                         ; preds = %do.end, %if.end4.do.end12_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %pnetdev.0, i32 0, i32 16
  %5 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rtw_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %pnetdev.0, i32 0, i32 115
  %6 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 300, ptr %watchdog_timeo, align 4
  %wireless_handlers = getelementptr inbounds %struct.net_device, ptr %pnetdev.0, i32 0, i32 42
  %7 = ptrtoint ptr %wireless_handlers to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rtw_handlers_def, ptr %wireless_handlers, align 8
  %registrypriv.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13
  %8 = load i32, ptr @rtw_debug, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  store i32 %8, ptr @GlobalDebugLevel, align 4
  %9 = load i32, ptr @rtw_chip_version, align 4
  %conv.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %registrypriv.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %registrypriv.i, align 4
  %11 = load i32, ptr @rtw_rfintfs, align 4
  %conv1.i = trunc i32 %11 to i8
  %rfintfs.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 1
  %12 = ptrtoint ptr %rfintfs.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv1.i, ptr %rfintfs.i, align 1
  %13 = load i32, ptr @rtw_lbkmode, align 4
  %conv2.i = trunc i32 %13 to i8
  %lbkmode.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 2
  %14 = ptrtoint ptr %lbkmode.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv2.i, ptr %lbkmode.i, align 2
  %15 = load i32, ptr @rtw_network_mode, align 4
  %conv3.i = trunc i32 %15 to i8
  %network_mode.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 5
  %16 = ptrtoint ptr %network_mode.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3.i, ptr %network_mode.i, align 4
  %ssid.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 4
  %Ssid.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 4, i32 1
  %17 = call ptr @memcpy(ptr %Ssid.i, ptr @.str.53, i32 3)
  %18 = ptrtoint ptr %ssid.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %ssid.i, align 4
  %19 = load i32, ptr @rtw_channel, align 4
  %conv5.i = trunc i32 %19 to i8
  %channel.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 6
  %20 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv5.i, ptr %channel.i, align 1
  %wireless_mode.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 7
  %21 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 11, ptr %wireless_mode.i, align 2
  %22 = load i32, ptr @rtw_vrtl_carrier_sense, align 4
  %conv7.i = trunc i32 %22 to i8
  %vrtl_carrier_sense.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 11
  %23 = ptrtoint ptr %vrtl_carrier_sense.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv7.i, ptr %vrtl_carrier_sense.i, align 2
  %24 = load i32, ptr @rtw_vcs_type, align 4
  %conv8.i = trunc i32 %24 to i8
  %vcs_type.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 12
  %25 = ptrtoint ptr %vcs_type.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv8.i, ptr %vcs_type.i, align 1
  %rts_thresh.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 13
  %26 = ptrtoint ptr %rts_thresh.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2347, ptr %rts_thresh.i, align 4
  %frag_thresh.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 14
  %27 = ptrtoint ptr %frag_thresh.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 2346, ptr %frag_thresh.i, align 2
  %preamble.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 10
  %28 = ptrtoint ptr %preamble.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %preamble.i, align 1
  %scan_mode.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 8
  %29 = ptrtoint ptr %scan_mode.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %scan_mode.i, align 1
  %adhoc_tx_pwr.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 15
  %30 = ptrtoint ptr %adhoc_tx_pwr.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %adhoc_tx_pwr.i, align 4
  %soft_ap.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 16
  %31 = ptrtoint ptr %soft_ap.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %soft_ap.i, align 1
  %32 = load i32, ptr @rtw_smart_ps, align 4
  %conv15.i = trunc i32 %32 to i8
  %smart_ps.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 19
  %33 = ptrtoint ptr %smart_ps.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv15.i, ptr %smart_ps.i, align 4
  %34 = load i32, ptr @rtw_power_mgnt, align 4
  %conv16.i = trunc i32 %34 to i8
  %power_mgnt.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 17
  %35 = ptrtoint ptr %power_mgnt.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv16.i, ptr %power_mgnt.i, align 2
  %36 = load i32, ptr @rtw_ips_mode, align 4
  %conv17.i = trunc i32 %36 to i8
  %ips_mode.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 18
  %37 = ptrtoint ptr %ips_mode.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv17.i, ptr %ips_mode.i, align 1
  %radio_enable.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 9
  %38 = ptrtoint ptr %radio_enable.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %radio_enable.i, align 4
  %long_retry_lmt.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 20
  %39 = ptrtoint ptr %long_retry_lmt.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 7, ptr %long_retry_lmt.i, align 1
  %short_retry_lmt.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 21
  %40 = ptrtoint ptr %short_retry_lmt.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 7, ptr %short_retry_lmt.i, align 2
  %41 = load i32, ptr @rtw_busy_thresh, align 4
  %conv21.i = trunc i32 %41 to i16
  %busy_thresh.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 23
  %42 = ptrtoint ptr %busy_thresh.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv21.i, ptr %busy_thresh.i, align 4
  %ack_policy.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 24
  %43 = ptrtoint ptr %ack_policy.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 0, ptr %ack_policy.i, align 2
  %44 = load i32, ptr @rtw_wmm_enable, align 4
  %conv26.i = trunc i32 %44 to i8
  %wmm_enable.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 28
  %45 = ptrtoint ptr %wmm_enable.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv26.i, ptr %wmm_enable.i, align 2
  %uapsd_enable.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 29
  %46 = call ptr @memset(ptr %uapsd_enable.i, i32 0, i32 6)
  %47 = load i32, ptr @rtw_led_enable, align 4
  %conv33.i = trunc i32 %47 to i8
  %led_enable.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 35
  %48 = ptrtoint ptr %led_enable.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv33.i, ptr %led_enable.i, align 1
  %49 = load i32, ptr @rtw_ht_enable, align 4
  %conv34.i = trunc i32 %49 to i8
  %ht_enable.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 37
  %50 = ptrtoint ptr %ht_enable.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv34.i, ptr %ht_enable.i, align 2
  %51 = load i32, ptr @rtw_cbw40_enable, align 4
  %conv35.i = trunc i32 %51 to i8
  %cbw40_enable.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 38
  %52 = ptrtoint ptr %cbw40_enable.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv35.i, ptr %cbw40_enable.i, align 1
  %53 = load i32, ptr @rtw_ampdu_enable, align 4
  %conv36.i = trunc i32 %53 to i8
  %ampdu_enable.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 39
  %54 = ptrtoint ptr %ampdu_enable.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv36.i, ptr %ampdu_enable.i, align 4
  %55 = load i32, ptr @rtw_rx_stbc, align 4
  %conv37.i = trunc i32 %55 to i8
  %rx_stbc.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 40
  %56 = ptrtoint ptr %rx_stbc.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv37.i, ptr %rx_stbc.i, align 1
  %57 = load i32, ptr @rtw_ampdu_amsdu, align 4
  %conv38.i = trunc i32 %57 to i8
  %ampdu_amsdu.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 41
  %58 = ptrtoint ptr %ampdu_amsdu.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv38.i, ptr %ampdu_amsdu.i, align 2
  %59 = load i32, ptr @rtw_lowrate_two_xmit, align 4
  %conv39.i = trunc i32 %59 to i8
  %lowrate_two_xmit.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 42
  %60 = ptrtoint ptr %lowrate_two_xmit.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv39.i, ptr %lowrate_two_xmit.i, align 1
  %61 = load i32, ptr @rtw_low_power, align 4
  %conv40.i = trunc i32 %61 to i8
  %low_power.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 43
  %62 = ptrtoint ptr %low_power.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv40.i, ptr %low_power.i, align 4
  %63 = load i32, ptr @rtw_wifi_spec, align 4
  %conv41.i = trunc i32 %63 to i8
  %wifi_spec.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 44
  %64 = ptrtoint ptr %wifi_spec.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv41.i, ptr %wifi_spec.i, align 1
  %65 = load i32, ptr @rtw_channel_plan, align 4
  %conv42.i = trunc i32 %65 to i8
  %channel_plan.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 45
  %66 = ptrtoint ptr %channel_plan.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv42.i, ptr %channel_plan.i, align 2
  %bAcceptAddbaReq.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 46
  %67 = ptrtoint ptr %bAcceptAddbaReq.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %bAcceptAddbaReq.i, align 1
  %68 = load i32, ptr @rtw_antdiv_cfg, align 4
  %conv44.i = trunc i32 %68 to i8
  %antdiv_cfg.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 47
  %69 = ptrtoint ptr %antdiv_cfg.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv44.i, ptr %antdiv_cfg.i, align 4
  %70 = load i32, ptr @rtw_antdiv_type, align 4
  %conv45.i = trunc i32 %70 to i8
  %antdiv_type.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 48
  %71 = ptrtoint ptr %antdiv_type.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv45.i, ptr %antdiv_type.i, align 1
  %72 = load i32, ptr @rtw_hwpdn_mode, align 4
  %conv46.i = trunc i32 %72 to i8
  %hwpdn_mode.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 50
  %73 = ptrtoint ptr %hwpdn_mode.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv46.i, ptr %hwpdn_mode.i, align 1
  %74 = load i32, ptr @rtw_hwpwrp_detect, align 4
  %conv47.i = trunc i32 %74 to i8
  %hwpwrp_detect.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 51
  %75 = ptrtoint ptr %hwpwrp_detect.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv47.i, ptr %hwpwrp_detect.i, align 4
  %76 = load i32, ptr @rtw_hw_wps_pbc, align 4
  %conv48.i = trunc i32 %76 to i8
  %hw_wps_pbc.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 52
  %77 = ptrtoint ptr %hw_wps_pbc.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv48.i, ptr %hw_wps_pbc.i, align 1
  %78 = load i32, ptr @rtw_max_roaming_times, align 4
  %conv49.i = trunc i32 %78 to i8
  %max_roaming_times.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 53
  %79 = ptrtoint ptr %max_roaming_times.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv49.i, ptr %max_roaming_times.i, align 2
  %80 = load i32, ptr @rtw_fw_iol, align 4
  %conv50.i = trunc i32 %80 to i8
  %fw_iol.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 54
  %81 = ptrtoint ptr %fw_iol.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv50.i, ptr %fw_iol.i, align 1
  %82 = load i32, ptr @rtw_80211d, align 4
  %conv51.i = trunc i32 %82 to i8
  %enable80211d.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 55
  %83 = ptrtoint ptr %enable80211d.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv51.i, ptr %enable80211d.i, align 4
  %ifname.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 56
  %84 = load ptr, ptr @ifname, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ifname.i, i32 noundef 16, ptr noundef nonnull @.str.54, ptr noundef %84) #9
  %if2name.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 57
  %85 = load ptr, ptr @if2name, align 4
  %call54.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %if2name.i, i32 noundef 16, ptr noundef nonnull @.str.54, ptr noundef %85) #9
  %86 = load i32, ptr @rtw_notch_filter, align 4
  %conv55.i = trunc i32 %86 to i8
  %notch_filter.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 58
  %87 = ptrtoint ptr %notch_filter.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv55.i, ptr %notch_filter.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.cleanup_crit_edge
  ret ptr %pnetdev.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_etherdev_with_old_priv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_etherdev(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_start_drv_threads(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @rtw_cmd_thread, ptr noundef %padapter, i32 noundef -1, ptr noundef nonnull @.str.3) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.thread, label %if.else

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cmdThread13 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 31
  %0 = ptrtoint ptr %cmdThread13 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %cmdThread13, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @wake_up_process(ptr noundef %call) #9
  %cmdThread = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 31
  %1 = ptrtoint ptr %cmdThread to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %cmdThread, align 4
  %start_cmd_thread = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6, i32 1
  tail call void @wait_for_completion(ptr noundef %start_cmd_thread) #9
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end.thread
  %_status.0 = phi i32 [ 1, %if.else ], [ 0, %if.end.thread ]
  ret i32 %_status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_cmd_thread(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_stop_drv_threads(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  tail call void @complete(ptr noundef %cmdpriv) #9
  %cmdThread = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 31
  %0 = ptrtoint ptr %cmdThread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmdThread, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %stop_cmd_thread = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6, i32 2
  tail call void @wait_for_completion(ptr noundef %stop_cmd_thread) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_reset_drv_sw(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtl8188eu_init_default_value(ptr noundef %padapter) #9
  %bReadPortCancel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 46
  %0 = ptrtoint ptr %bReadPortCancel to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bReadPortCancel, align 2
  %bWritePortCancel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 47
  %1 = ptrtoint ptr %bWritePortCancel to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bWritePortCancel, align 1
  %bRxRSSIDisplay = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48
  %2 = ptrtoint ptr %bRxRSSIDisplay to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bRxRSSIDisplay, align 4
  %scan_interval = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 17
  %3 = ptrtoint ptr %scan_interval to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 30, ptr %scan_interval, align 4
  %tx_pkts = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 17
  %4 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %tx_pkts, align 8
  %rx_pkts = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 10
  %5 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %rx_pkts, align 8
  %bBusyTraffic = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 27, i32 3
  %6 = ptrtoint ptr %bBusyTraffic to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %bBusyTraffic, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %8, -2177
  store i32 %and.i, ptr %fw_state.i, align 4
  %pwr_state_check_cnts = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 29
  %9 = ptrtoint ptr %pwr_state_check_cnts to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %pwr_state_check_cnts, align 4
  %sitesurvey_res = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16
  %10 = ptrtoint ptr %sitesurvey_res to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %sitesurvey_res, align 8
  %signal_stat_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 37
  %signal_stat_sampling_interval = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 38
  %11 = ptrtoint ptr %signal_stat_sampling_interval to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %signal_stat_sampling_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %mul.i = mul i32 %12, 100
  %div.i = udiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %13
  %call.i = tail call i32 @mod_timer(ptr noundef %signal_stat_timer, i32 noundef %add.i) #9
  ret i8 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188eu_init_default_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_init_drv_sw(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call i32 @rtw_init_cmd_priv(ptr noundef %cmdpriv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %padapter2 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6, i32 12
  %0 = ptrtoint ptr %padapter2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %padapter, ptr %padapter2, align 4
  %evtpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 7
  %call3 = tail call i32 @rtw_init_evt_priv(ptr noundef %evtpriv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.end.return_crit_edge, label %if.end6

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @rtw_init_mlme_priv(ptr noundef %padapter) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.end6.return_crit_edge, label %if.end10

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end10:                                         ; preds = %if.end6
  tail call void @rtw_init_wifidirect_timers(ptr noundef %padapter) #9
  tail call void @init_wifidirect_info(ptr noundef %padapter, i32 noundef 0) #9
  tail call void @reset_global_wifidirect_info(ptr noundef %padapter) #9
  %call11 = tail call i32 @init_mlme_ext_priv(ptr noundef %padapter) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.end10.return_crit_edge, label %if.end14

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end14:                                         ; preds = %if.end10
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %call15 = tail call i32 @_rtw_init_xmit_priv(ptr noundef %xmitpriv, ptr noundef %padapter) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %do.body, label %if.end24

do.body:                                          ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %1 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp18 = icmp ugt i32 %1, 4
  br i1 %cmp18, label %do.end, label %do.body.return_crit_edge

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %return

if.end24:                                         ; preds = %if.end14
  %recvpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10
  %call25 = tail call i32 @_rtw_init_recv_priv(ptr noundef %recvpriv, ptr noundef %padapter) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %do.body28, label %if.end37

do.body28:                                        ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp29 = icmp ugt i32 %2, 4
  br i1 %cmp29, label %do.end32, label %do.body28.return_crit_edge

do.body28.return_crit_edge:                       ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end32:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %return

if.end37:                                         ; preds = %if.end24
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call38 = tail call i32 @_rtw_init_sta_priv(ptr noundef %stapriv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %do.body41, label %if.end50

do.body41:                                        ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %3 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp42 = icmp ugt i32 %3, 4
  br i1 %cmp42, label %do.end45, label %do.body41.return_crit_edge

do.body41.return_crit_edge:                       ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end45:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %return

if.end50:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %padapter52 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 8
  %4 = ptrtoint ptr %padapter52 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %padapter, ptr %padapter52, align 4
  %call53 = tail call i32 @rtw_init_bcmc_stainfo(ptr noundef %padapter) #9
  tail call void @rtw_init_pwrctrl_priv(ptr noundef %padapter) #9
  %securitypriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %vrtl_carrier_sense.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 11
  %5 = ptrtoint ptr %vrtl_carrier_sense.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vrtl_carrier_sense.i, align 2
  %vcs_setting.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 13
  %7 = ptrtoint ptr %vcs_setting.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %vcs_setting.i, align 8
  %vcs_type.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 12
  %8 = ptrtoint ptr %vcs_type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vcs_type.i, align 1
  %vcs.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 14
  %10 = ptrtoint ptr %vcs.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %vcs.i, align 1
  %vcs_type2.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 15
  %11 = ptrtoint ptr %vcs_type2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %9, ptr %vcs_type2.i, align 2
  %frag_thresh.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 14
  %12 = ptrtoint ptr %frag_thresh.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %frag_thresh.i, align 2
  %conv.i = zext i16 %13 to i32
  %frag_len.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 11
  %14 = ptrtoint ptr %frag_len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv.i, ptr %frag_len.i, align 8
  %scan_interval.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 17
  %15 = ptrtoint ptr %scan_interval.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 30, ptr %scan_interval.i, align 4
  %scan_mode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 31
  %16 = ptrtoint ptr %scan_mode.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %scan_mode.i, align 4
  %ampdu_enable.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26, i32 1
  %17 = ptrtoint ptr %ampdu_enable.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %ampdu_enable.i, align 4
  %binstallGrpkey.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %binstallGrpkey.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %binstallGrpkey.i, align 4
  %software_encrypt.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 25
  %19 = ptrtoint ptr %software_encrypt.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %software_encrypt.i, align 1
  %conv3.i = zext i8 %20 to i32
  %sw_encrypt.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 26
  %21 = ptrtoint ptr %sw_encrypt.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv3.i, ptr %sw_encrypt.i, align 8
  %software_decrypt.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 26
  %22 = ptrtoint ptr %software_decrypt.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %software_decrypt.i, align 4
  %conv4.i = zext i8 %23 to i32
  %sw_decrypt.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 27
  %24 = ptrtoint ptr %sw_decrypt.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv4.i, ptr %sw_decrypt.i, align 4
  %25 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %securitypriv.i, align 8
  %dot11PrivacyAlgrthm.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  %26 = ptrtoint ptr %dot11PrivacyAlgrthm.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %dot11PrivacyAlgrthm.i, align 4
  %dot11PrivacyKeyIndex.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 2
  %27 = ptrtoint ptr %dot11PrivacyKeyIndex.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %dot11PrivacyKeyIndex.i, align 8
  %dot118021XGrpPrivacy.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 5
  %28 = ptrtoint ptr %dot118021XGrpPrivacy.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %dot118021XGrpPrivacy.i, align 4
  %dot118021XGrpKeyid.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 6
  %29 = ptrtoint ptr %dot118021XGrpKeyid.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %dot118021XGrpKeyid.i, align 8
  %ndisauthtype.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 29
  %30 = ptrtoint ptr %ndisauthtype.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %ndisauthtype.i, align 4
  %ndisencryptstatus.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 30
  %31 = ptrtoint ptr %ndisencryptstatus.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %ndisencryptstatus.i, align 8
  tail call void @rtw_init_registrypriv_dev_network(ptr noundef %padapter) #9
  tail call void @rtw_update_registrypriv_dev_network(ptr noundef %padapter) #9
  tail call void @rtl8188eu_init_default_value(ptr noundef %padapter) #9
  %bReadPortCancel.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 46
  %bShowGetP2PState.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 50
  %32 = ptrtoint ptr %bReadPortCancel.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 0, ptr %bReadPortCancel.i, align 2
  %33 = ptrtoint ptr %bShowGetP2PState.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %bShowGetP2PState.i, align 2
  tail call void @rtl8188e_init_dm_priv(ptr noundef %padapter) #9
  tail call void @rtl8188eu_InitSwLeds(ptr noundef %padapter) #9
  %br_ext_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 53
  tail call void @__raw_spin_lock_init(ptr noundef %br_ext_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @rtw_init_drv_sw.__key, i16 noundef signext 3) #9
  br label %return

return:                                           ; preds = %if.end50, %do.end45, %do.body41.return_crit_edge, %do.end32, %do.body28.return_crit_edge, %do.end, %do.body.return_crit_edge, %if.end10.return_crit_edge, %if.end6.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i8 [ 1, %if.end50 ], [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %if.end6.return_crit_edge ], [ 0, %if.end10.return_crit_edge ], [ 0, %do.body.return_crit_edge ], [ 0, %do.end ], [ 0, %do.body28.return_crit_edge ], [ 0, %do.end32 ], [ 0, %do.body41.return_crit_edge ], [ 0, %do.end45 ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_init_cmd_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_init_evt_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_init_mlme_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_init_wifidirect_timers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wifidirect_info(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_global_wifidirect_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_mlme_ext_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_rtw_init_xmit_priv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_rtw_init_recv_priv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_rtw_init_sta_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_init_bcmc_stainfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_init_pwrctrl_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_init_dm_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188eu_InitSwLeds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_cancel_all_timer(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %assoc_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 18
  %call.i = tail call i32 @del_timer_sync(ptr noundef %assoc_timer) #9
  %scan_to_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 21
  %call.i12 = tail call i32 @del_timer_sync(ptr noundef %scan_to_timer) #9
  %dynamic_chk_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 28
  %call.i13 = tail call i32 @del_timer_sync(ptr noundef %dynamic_chk_timer) #9
  tail call void @rtl8188eu_DeInitSwLeds(ptr noundef %padapter) #9
  %pwr_state_check_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 27
  %call.i14 = tail call i32 @del_timer_sync(ptr noundef %pwr_state_check_timer) #9
  %signal_stat_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 37
  %call.i15 = tail call i32 @del_timer_sync(ptr noundef %signal_stat_timer) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188eu_DeInitSwLeds(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_free_drv_sw(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %p2p_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 17
  %0 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %find_phase_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 1
  %call.i = tail call i32 @del_timer_sync(ptr noundef %find_phase_timer) #9
  %restore_p2p_state_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 2
  %call.i33 = tail call i32 @del_timer_sync(ptr noundef %restore_p2p_state_timer) #9
  %pre_tx_scan_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18, i32 3
  %call.i34 = tail call i32 @del_timer_sync(ptr noundef %pre_tx_scan_timer) #9
  %2 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p2p_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %p2p_state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %p2p_state.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %mlmeextpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5
  tail call void @free_mlme_ext_priv(ptr noundef %mlmeextpriv) #9
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  tail call void @rtw_free_cmd_priv(ptr noundef %cmdpriv) #9
  %evtpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 7
  tail call void @rtw_free_evt_priv(ptr noundef %evtpriv) #9
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  tail call void @rtw_free_mlme_priv(ptr noundef %mlmepriv) #9
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  tail call void @_rtw_free_xmit_priv(ptr noundef %xmitpriv) #9
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call4 = tail call i32 @_rtw_free_sta_priv(ptr noundef %stapriv) #9
  %recvpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10
  tail call void @_rtw_free_recv_priv(ptr noundef %recvpriv) #9
  %rereg_nd_name_priv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 38
  %5 = ptrtoint ptr %rereg_nd_name_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rereg_nd_name_priv, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @free_netdev(ptr noundef nonnull %6) #9
  %7 = ptrtoint ptr %rereg_nd_name_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rereg_nd_name_priv, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %pbuddy_adapter = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 51
  %8 = ptrtoint ptr %pbuddy_adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pbuddy_adapter, align 8
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.end10.if.end15_crit_edge, label %if.then12

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %pbuddy_adapter14 = getelementptr inbounds %struct.adapter, ptr %9, i32 0, i32 51
  %10 = ptrtoint ptr %pbuddy_adapter14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %pbuddy_adapter14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge
  ret i8 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_mlme_ext_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_cmd_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_evt_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_mlme_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtw_free_xmit_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_rtw_free_sta_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtw_free_recv_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netdev_br_init(ptr nocapture noundef readonly %netdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !403) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !413
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 37
  %6 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pnetdev, align 4
  %rx_handler_data = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 95
  %8 = ptrtoint ptr %rx_handler_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %rx_handler_data, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b28 = load i1, ptr @netdev_br_init.__warned, align 1
  br i1 %.b28, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @netdev_br_init.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 589, ptr noundef nonnull @.str.13) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %do.end8.if.end22_crit_edge, label %if.then11

do.end8.if.end22_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then11:                                        ; preds = %do.end8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 127
  %10 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nd_net.i, align 4
  %call13 = tail call ptr @dev_get_by_name(ptr noundef %11, ptr noundef nonnull @.str.14) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end18, label %do.body1.i

do.body1.i:                                       ; preds = %if.then11
  %br_mac = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 60
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call13, i32 0, i32 86
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr, align 64
  %14 = call ptr @memcpy(ptr %br_mac, ptr %13, i32 6)
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !414
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call13, i32 0, i32 118
  %16 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcpu_refcnt.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !403) #9
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add13.i = add i32 %27, -1
  store i32 %add13.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !415
  %and.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !416

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #9, !srcloc !417
  br label %if.end22

do.end18:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 600, ptr noundef nonnull @.str.14) #12
  br label %if.end22

if.end22:                                         ; preds = %do.end18, %dev_put.exit, %do.end8.if.end22_crit_edge
  %addPPPoETag = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 62, i32 3
  %29 = ptrtoint ptr %addPPPoETag to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %addPPPoETag, align 4
  %call.i30 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i30, label %if.end22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i33

if.end22.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i33:                                ; preds = %if.end22
  %call1.i31 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %tobool.not.i32 = icmp eq i32 %call1.i31, 0
  br i1 %tobool.not.i32, label %land.lhs.true.i33.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i35

land.lhs.true.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i35:                               ; preds = %land.lhs.true.i33
  %.b4.i34 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i34, label %land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge, label %if.then.i36

land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i36:                                      ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i36, %land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i33.rcu_read_unlock.exit_crit_edge, %if.end22.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !418
  %30 = tail call i32 @llvm.read_register.i32(metadata !403) #9
  %and.i.i.i.i.i37 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i37 to ptr
  %preempt_count.i.i.i.i38 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i38, align 4
  %sub.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i38, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_netdev_open(ptr noundef %pnetdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %pnetdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %2 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp ugt i32 %2, 4
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bup = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 39
  %3 = ptrtoint ptr %bup to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bup, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %4) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %ps_flag = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 30
  %5 = ptrtoint ptr %ps_flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ps_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  %net_closed = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 43
  %7 = ptrtoint ptr %net_closed to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %net_closed, align 4
  br label %do.body55

if.end7:                                          ; preds = %do.end5
  %bup8 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 39
  %8 = ptrtoint ptr %bup8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bup8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end43_crit_edge

if.end7.if.end43_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then10:                                        ; preds = %if.end7
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %bDriverStopped, align 8
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 21
  %11 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bSurpriseRemoved, align 4
  %bCardDisableWOHSM = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  %12 = ptrtoint ptr %bCardDisableWOHSM to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %bCardDisableWOHSM, align 8
  %call11 = tail call i32 @rtw_hal_init(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then10.netdev_open_error_crit_edge, label %do.end17

if.then10.netdev_open_error_crit_edge:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_open_error

do.end17:                                         ; preds = %if.then10
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %pnetdev, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr, align 64
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %14) #12
  %call20 = tail call i32 @rtw_start_drv_threads(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %do.end17.netdev_open_error.sink.split_crit_edge, label %if.end28

do.end17.netdev_open_error.sink.split_crit_edge:  ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_open_error.sink.split

if.end28:                                         ; preds = %do.end17
  %call29 = tail call i32 @init_hw_mlme_ext(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.end28.netdev_open_error.sink.split_crit_edge, label %if.end37

if.end28.netdev_open_error.sink.split_crit_edge:  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_open_error.sink.split

if.end37:                                         ; preds = %if.end28
  %intf_start = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 35
  %15 = ptrtoint ptr %intf_start to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %intf_start, align 4
  %tobool38.not = icmp eq ptr %16, null
  br i1 %tobool38.not, label %if.end37.if.end41_crit_edge, label %if.then39

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %16(ptr noundef %1) #9
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end37.if.end41_crit_edge
  tail call void @rtw_led_control(ptr noundef %1, i32 noundef 3) #9
  %17 = ptrtoint ptr %bup8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %bup8, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end7.if.end43_crit_edge
  %net_closed44 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 43
  %18 = ptrtoint ptr %net_closed44 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %net_closed44, align 4
  %dynamic_chk_timer = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %19, 200
  %call.i = tail call i32 @mod_timer(ptr noundef %dynamic_chk_timer, i32 noundef %add.i) #9
  %bips_processing = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 15
  %20 = ptrtoint ptr %bips_processing to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %bips_processing, align 8
  %pwr_state_check_timer = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 27
  %pwr_state_check_interval = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 28
  %21 = ptrtoint ptr %pwr_state_check_interval to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pwr_state_check_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %mul.i = mul i32 %22, 100
  %div.i = udiv i32 %mul.i, 1000
  %add.i112 = add i32 %div.i, %23
  %call.i113 = tail call i32 @mod_timer(ptr noundef %pwr_state_check_timer, i32 noundef %add.i112) #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %pnetdev, i32 0, i32 103
  %24 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end43.if.then53_crit_edge, label %land.lhs.true.i

if.end43.if.then53_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

land.lhs.true.i:                                  ; preds = %if.end43
  %state.i13.i = getelementptr %struct.netdev_queue, ptr %25, i32 1, i32 13
  %28 = ptrtoint ptr %state.i13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i13.i, align 4
  %and1.i.i14.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i14.i)
  %tobool.i15.not.i = icmp eq i32 %and1.i.i14.i, 0
  br i1 %tobool.i15.not.i, label %land.lhs.true.i.if.then53_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.then53_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %state.i18.i = getelementptr %struct.netdev_queue, ptr %25, i32 2, i32 13
  %30 = ptrtoint ptr %state.i18.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state.i18.i, align 4
  %and1.i.i19.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i19.i)
  %tobool.i20.not.i = icmp eq i32 %and1.i.i19.i, 0
  br i1 %tobool.i20.not.i, label %land.lhs.true4.i.if.then53_crit_edge, label %rtw_netif_queue_stopped.exit

land.lhs.true4.i.if.then53_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

rtw_netif_queue_stopped.exit:                     ; preds = %land.lhs.true4.i
  %state.i23.i = getelementptr %struct.netdev_queue, ptr %25, i32 3, i32 13
  %32 = ptrtoint ptr %state.i23.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state.i23.i, align 4
  %and1.i.i24.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i24.i)
  %tobool52.not = icmp eq i32 %and1.i.i24.i, 0
  br i1 %tobool52.not, label %rtw_netif_queue_stopped.exit.if.then53_crit_edge, label %if.else

rtw_netif_queue_stopped.exit.if.then53_crit_edge: ; preds = %rtw_netif_queue_stopped.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

if.then53:                                        ; preds = %rtw_netif_queue_stopped.exit.if.then53_crit_edge, %land.lhs.true4.i.if.then53_crit_edge, %land.lhs.true.i.if.then53_crit_edge, %if.end43.if.then53_crit_edge
  %num_tx_queues.i.i = getelementptr inbounds %struct.net_device, ptr %pnetdev, i32 0, i32 104
  %34 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp4.not.i.i = icmp eq i32 %35, 0
  br i1 %cmp4.not.i.i, label %if.then53.if.end54_crit_edge, label %if.then53.for.body.i.i_crit_edge

if.then53.for.body.i.i_crit_edge:                 ; preds = %if.then53
  br label %for.body.i.i

if.then53.if.end54_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then53.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then53.for.body.i.i_crit_edge ]
  %36 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %37, i32 %i.05.i.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #9
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %38 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_tx_queues.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %39
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end54_crit_edge

for.body.i.i.if.end54_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.else:                                          ; preds = %rtw_netif_queue_stopped.exit
  %num_tx_queues.i.i114 = getelementptr inbounds %struct.net_device, ptr %pnetdev, i32 0, i32 104
  %40 = ptrtoint ptr %num_tx_queues.i.i114 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_tx_queues.i.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp4.not.i.i115 = icmp eq i32 %41, 0
  br i1 %cmp4.not.i.i115, label %if.else.if.end54_crit_edge, label %if.else.for.body.i.i121_crit_edge

if.else.for.body.i.i121_crit_edge:                ; preds = %if.else
  br label %for.body.i.i121

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

for.body.i.i121:                                  ; preds = %for.body.i.i121.for.body.i.i121_crit_edge, %if.else.for.body.i.i121_crit_edge
  %i.05.i.i118 = phi i32 [ %inc.i.i119, %for.body.i.i121.for.body.i.i121_crit_edge ], [ 0, %if.else.for.body.i.i121_crit_edge ]
  %42 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i.i = getelementptr %struct.netdev_queue, ptr %43, i32 %i.05.i.i118
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i.i) #9
  %inc.i.i119 = add nuw i32 %i.05.i.i118, 1
  %44 = ptrtoint ptr %num_tx_queues.i.i114 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_tx_queues.i.i114, align 4
  %cmp.i.i120 = icmp ult i32 %inc.i.i119, %45
  br i1 %cmp.i.i120, label %for.body.i.i121.for.body.i.i121_crit_edge, label %for.body.i.i121.if.end54_crit_edge

for.body.i.i121.if.end54_crit_edge:               ; preds = %for.body.i.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

for.body.i.i121.for.body.i.i121_crit_edge:        ; preds = %for.body.i.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i121

if.end54:                                         ; preds = %for.body.i.i121.if.end54_crit_edge, %if.else.if.end54_crit_edge, %for.body.i.i.if.end54_crit_edge, %if.then53.if.end54_crit_edge
  tail call void @netdev_br_init(ptr noundef %pnetdev)
  br label %do.body55

do.body55:                                        ; preds = %if.end54, %if.then6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %46 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp56 = icmp ugt i32 %46, 4
  br i1 %cmp56, label %do.end60, label %do.body55.cleanup_crit_edge

do.body55.cleanup_crit_edge:                      ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end60:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #11
  %bup62 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 39
  br label %cleanup.sink.split

netdev_open_error.sink.split:                     ; preds = %if.end28.netdev_open_error.sink.split_crit_edge, %do.end17.netdev_open_error.sink.split_crit_edge
  %.str.26.sink = phi ptr [ @.str.23, %do.end17.netdev_open_error.sink.split_crit_edge ], [ @.str.26, %if.end28.netdev_open_error.sink.split_crit_edge ]
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.26.sink) #12
  br label %netdev_open_error

netdev_open_error:                                ; preds = %netdev_open_error.sink.split, %if.then10.netdev_open_error_crit_edge
  %47 = ptrtoint ptr %bup8 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %bup8, align 8
  tail call void @netif_carrier_off(ptr noundef %pnetdev) #9
  tail call void @netif_tx_stop_all_queues(ptr noundef %pnetdev) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %48 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp69 = icmp ugt i32 %48, 4
  br i1 %cmp69, label %netdev_open_error.cleanup.sink.split_crit_edge, label %netdev_open_error.cleanup_crit_edge

netdev_open_error.cleanup_crit_edge:              ; preds = %netdev_open_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

netdev_open_error.cleanup.sink.split_crit_edge:   ; preds = %netdev_open_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %netdev_open_error.cleanup.sink.split_crit_edge, %do.end60
  %bup8.sink = phi ptr [ %bup62, %do.end60 ], [ %bup8, %netdev_open_error.cleanup.sink.split_crit_edge ]
  %.str.32.sink = phi ptr [ @.str.29, %do.end60 ], [ @.str.32, %netdev_open_error.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %do.end60 ], [ -1, %netdev_open_error.cleanup.sink.split_crit_edge ]
  %49 = ptrtoint ptr %bup8.sink to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bup8.sink, align 8
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.32.sink, i32 noundef %50) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %netdev_open_error.cleanup_crit_edge, %do.body55.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body55.cleanup_crit_edge ], [ -1, %netdev_open_error.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_hw_mlme_ext(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_led_control(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netdev_open(ptr noundef %pnetdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %pnetdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %hw_init_mutex = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw_init_mutex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_init_mutex, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #9
  %call1 = tail call i32 @_netdev_open(ptr noundef %pnetdev)
  %4 = ptrtoint ptr %hw_init_mutex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_init_mutex, align 4
  tail call void @mutex_unlock(ptr noundef %5) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_ips_pwr_up(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %1 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @rtl8188eu_init_default_value(ptr noundef %padapter) #9
  %bReadPortCancel.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 46
  %2 = ptrtoint ptr %bReadPortCancel.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bReadPortCancel.i, align 2
  %bWritePortCancel.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 47
  %3 = ptrtoint ptr %bWritePortCancel.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bWritePortCancel.i, align 1
  %bRxRSSIDisplay.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 48
  %4 = ptrtoint ptr %bRxRSSIDisplay.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bRxRSSIDisplay.i, align 4
  %scan_interval.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 17
  %5 = ptrtoint ptr %scan_interval.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 30, ptr %scan_interval.i, align 4
  %tx_pkts.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 17
  %6 = ptrtoint ptr %tx_pkts.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %tx_pkts.i, align 8
  %rx_pkts.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 10
  %7 = ptrtoint ptr %rx_pkts.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %rx_pkts.i, align 8
  %bBusyTraffic.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 27, i32 3
  %8 = ptrtoint ptr %bBusyTraffic.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %bBusyTraffic.i, align 4
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %10, -2177
  store i32 %and.i.i, ptr %fw_state.i.i, align 4
  %pwr_state_check_cnts.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 29
  %11 = ptrtoint ptr %pwr_state_check_cnts.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %pwr_state_check_cnts.i, align 4
  %sitesurvey_res.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 16
  %12 = ptrtoint ptr %sitesurvey_res.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sitesurvey_res.i, align 8
  %signal_stat_timer.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 37
  %signal_stat_sampling_interval.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 38
  %13 = ptrtoint ptr %signal_stat_sampling_interval.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %signal_stat_sampling_interval.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %mul.i.i = mul i32 %14, 100
  %div.i.i = udiv i32 %mul.i.i, 1000
  %add.i.i = add i32 %div.i.i, %15
  %call.i.i = tail call i32 @mod_timer(ptr noundef %signal_stat_timer.i, i32 noundef %add.i.i) #9
  %net_closed.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 43
  %16 = ptrtoint ptr %net_closed.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %net_closed.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %17 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp.i = icmp ugt i32 %17, 4
  br i1 %cmp.i, label %do.end.i, label %do.end3.do.end3.i_crit_edge

do.end3.do.end3.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #12
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end3.do.end3.i_crit_edge
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20
  %18 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %bDriverStopped.i, align 8
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %19 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %bSurpriseRemoved.i, align 4
  %bCardDisableWOHSM.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %20 = ptrtoint ptr %bCardDisableWOHSM.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %bCardDisableWOHSM.i, align 8
  %call4.i = tail call i32 @rtw_hal_init(ptr noundef %padapter) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.i, label %do.body15.i, label %if.end7.i

if.end7.i:                                        ; preds = %do.end3.i
  %intf_start.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 35
  %21 = ptrtoint ptr %intf_start.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %intf_start.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end7.i.do.body11.i_crit_edge, label %if.then8.i

if.end7.i.do.body11.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11.i

if.then8.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %22(ptr noundef %padapter) #9
  br label %do.body11.i

do.body11.i:                                      ; preds = %if.then8.i, %if.end7.i.do.body11.i_crit_edge
  %pwr_state_check_timer.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 27
  %pwr_state_check_interval.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 28
  %23 = ptrtoint ptr %pwr_state_check_interval.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pwr_state_check_interval.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %mul.i.i20 = mul i32 %24, 100
  %div.i.i21 = udiv i32 %mul.i.i20, 1000
  %add.i.i22 = add i32 %div.i.i21, %25
  %call.i.i23 = tail call i32 @mod_timer(ptr noundef %pwr_state_check_timer.i, i32 noundef %add.i.i22) #9
  %dynamic_chk_timer.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %add.i37.i = add i32 %26, 500
  %call.i38.i = tail call i32 @mod_timer(ptr noundef %dynamic_chk_timer.i, i32 noundef %add.i37.i) #9
  br label %ips_netdrv_open.exit

do.body15.i:                                      ; preds = %do.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %27 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp16.i = icmp ugt i32 %27, 4
  br i1 %cmp16.i, label %do.end20.i, label %do.body15.i.ips_netdrv_open.exit_crit_edge

do.body15.i.ips_netdrv_open.exit_crit_edge:       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ips_netdrv_open.exit

do.end20.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  %bup.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 39
  %28 = ptrtoint ptr %bup.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bup.i, align 8
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %29) #12
  br label %ips_netdrv_open.exit

ips_netdrv_open.exit:                             ; preds = %do.end20.i, %do.body15.i.ips_netdrv_open.exit_crit_edge, %do.body11.i
  %retval.0.i = phi i32 [ 1, %do.body11.i ], [ 0, %do.end20.i ], [ 0, %do.body15.i.ips_netdrv_open.exit_crit_edge ]
  tail call void @rtw_led_control(ptr noundef %padapter, i32 noundef 3) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %30 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp7 = icmp ugt i32 %30, 4
  br i1 %cmp7, label %do.end11, label %ips_netdrv_open.exit.do.end17_crit_edge

ips_netdrv_open.exit.do.end17_crit_edge:          ; preds = %ips_netdrv_open.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

do.end11:                                         ; preds = %ips_netdrv_open.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 @rtw_get_passing_time_ms(i32 noundef %0) #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %call13) #12
  br label %do.end17

do.end17:                                         ; preds = %do.end11, %ips_netdrv_open.exit.do.end17_crit_edge
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_passing_time_ms(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_ips_pwr_down(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %1 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %bCardDisableWOHSM = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %2 = ptrtoint ptr %bCardDisableWOHSM to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %bCardDisableWOHSM, align 8
  %net_closed = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 43
  %3 = ptrtoint ptr %net_closed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %net_closed, align 4
  tail call void @rtw_led_control(ptr noundef %padapter, i32 noundef 7) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %4 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp.i = icmp ugt i32 %4, 4
  br i1 %cmp.i, label %do.end.i, label %do.end3.do.end2.i_crit_edge

do.end3.do.end2.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #12
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %do.end3.do.end2.i_crit_edge
  tail call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 55, ptr noundef null) #9
  %intf_stop.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 36
  %5 = ptrtoint ptr %intf_stop.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf_stop.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end2.i.if.end5.i_crit_edge, label %if.then3.i

do.end2.i.if.end5.i_crit_edge:                    ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then3.i:                                       ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %6(ptr noundef %padapter) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %do.end2.i.if.end5.i_crit_edge
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %7 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bSurpriseRemoved.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not.i = icmp eq i32 %8, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end5.i.rtw_ips_dev_unload.exit_crit_edge

if.end5.i.rtw_ips_dev_unload.exit_crit_edge:      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_ips_dev_unload.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = tail call i32 @rtw_hal_deinit(ptr noundef %padapter) #9
  br label %rtw_ips_dev_unload.exit

rtw_ips_dev_unload.exit:                          ; preds = %if.then7.i, %if.end5.i.rtw_ips_dev_unload.exit_crit_edge
  %9 = ptrtoint ptr %bCardDisableWOHSM to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %bCardDisableWOHSM, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %10 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp6 = icmp ugt i32 %10, 4
  br i1 %cmp6, label %do.end10, label %rtw_ips_dev_unload.exit.do.end16_crit_edge

rtw_ips_dev_unload.exit.do.end16_crit_edge:       ; preds = %rtw_ips_dev_unload.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

do.end10:                                         ; preds = %rtw_ips_dev_unload.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @rtw_get_passing_time_ms(i32 noundef %0) #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %call12) #12
  br label %do.end16

do.end16:                                         ; preds = %do.end10, %rtw_ips_dev_unload.exit.do.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_ips_dev_unload(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %0 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp ugt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #12
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  tail call void @SetHwReg8188EU(ptr noundef %padapter, i8 noundef zeroext 55, ptr noundef null) #9
  %intf_stop = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 36
  %1 = ptrtoint ptr %intf_stop to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf_stop, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end2.if.end5_crit_edge, label %if.then3

do.end2.if.end5_crit_edge:                        ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %2(ptr noundef %padapter) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %do.end2.if.end5_crit_edge
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %3 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bSurpriseRemoved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %if.then7, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 @rtw_hal_deinit(ptr noundef %padapter) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @SetHwReg8188EU(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netdev_close(ptr noundef %pnetdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %pnetdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj1, align 4
  %net_closed = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 43
  %4 = ptrtoint ptr %net_closed to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %net_closed, align 4
  %rf_pwrstate = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 31
  %5 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rf_pwrstate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %do.body, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %7 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp2 = icmp ugt i32 %7, 4
  br i1 %cmp2, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %bup = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 39
  %8 = ptrtoint ptr %bup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bup, align 8
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hw_init_completed, align 1
  %conv = zext i8 %11 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %9, i32 noundef %conv) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %tobool.not = icmp eq ptr %pnetdev, null
  br i1 %tobool.not, label %do.end7.if.end13_crit_edge, label %if.then8

do.end7.if.end13_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then8:                                         ; preds = %do.end7
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %pnetdev, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then8.if.then11_crit_edge, label %land.lhs.true.i

if.then8.if.then11_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

land.lhs.true.i:                                  ; preds = %if.then8
  %state.i13.i = getelementptr %struct.netdev_queue, ptr %13, i32 1, i32 13
  %16 = ptrtoint ptr %state.i13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i13.i, align 4
  %and1.i.i14.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i14.i)
  %tobool.i15.not.i = icmp eq i32 %and1.i.i14.i, 0
  br i1 %tobool.i15.not.i, label %land.lhs.true.i.if.then11_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.then11_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %state.i18.i = getelementptr %struct.netdev_queue, ptr %13, i32 2, i32 13
  %18 = ptrtoint ptr %state.i18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i18.i, align 4
  %and1.i.i19.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i19.i)
  %tobool.i20.not.i = icmp eq i32 %and1.i.i19.i, 0
  br i1 %tobool.i20.not.i, label %land.lhs.true4.i.if.then11_crit_edge, label %rtw_netif_queue_stopped.exit

land.lhs.true4.i.if.then11_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

rtw_netif_queue_stopped.exit:                     ; preds = %land.lhs.true4.i
  %state.i23.i = getelementptr %struct.netdev_queue, ptr %13, i32 3, i32 13
  %20 = ptrtoint ptr %state.i23.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i23.i, align 4
  %and1.i.i24.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i24.i)
  %tobool10.not = icmp eq i32 %and1.i.i24.i, 0
  br i1 %tobool10.not, label %rtw_netif_queue_stopped.exit.if.then11_crit_edge, label %rtw_netif_queue_stopped.exit.if.end13_crit_edge

rtw_netif_queue_stopped.exit.if.end13_crit_edge:  ; preds = %rtw_netif_queue_stopped.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

rtw_netif_queue_stopped.exit.if.then11_crit_edge: ; preds = %rtw_netif_queue_stopped.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then11:                                        ; preds = %rtw_netif_queue_stopped.exit.if.then11_crit_edge, %land.lhs.true4.i.if.then11_crit_edge, %land.lhs.true.i.if.then11_crit_edge, %if.then8.if.then11_crit_edge
  tail call void @netif_tx_stop_all_queues(ptr noundef nonnull %pnetdev) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %rtw_netif_queue_stopped.exit.if.end13_crit_edge, %do.end7.if.end13_crit_edge
  tail call void @LeaveAllPowerSaveMode(ptr noundef %1) #9
  %call14 = tail call zeroext i8 @rtw_disassoc_cmd(ptr noundef %1, i32 noundef 500, i1 noundef zeroext false) #9
  tail call void @rtw_indicate_disconnect(ptr noundef %1) #9
  tail call void @rtw_free_assoc_resources(ptr noundef %1, i32 noundef 1) #9
  tail call void @rtw_free_network_queue(ptr noundef %1, i8 noundef zeroext 1) #9
  tail call void @rtw_led_control(ptr noundef %1, i32 noundef 7) #9
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %entry.if.end15_crit_edge
  tail call void @nat25_db_cleanup(ptr noundef %1) #9
  %call16 = tail call i32 @rtw_p2p_enable(ptr noundef %1, i32 noundef 0) #9
  %firmware = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 7
  %22 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %firmware, align 4
  tail call void @kfree(ptr noundef %23) #9
  %24 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %firmware, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %25 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp20 = icmp ugt i32 %25, 4
  br i1 %cmp20, label %do.end25, label %if.end15.do.end31_crit_edge

if.end15.do.end31_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

do.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %bup27 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 39
  %26 = ptrtoint ptr %bup27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bup27, align 8
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %27) #12
  br label %do.end31

do.end31:                                         ; preds = %do.end25, %if.end15.do.end31_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @LeaveAllPowerSaveMode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_disassoc_cmd(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_indicate_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_assoc_resources(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_network_queue(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nat25_db_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_p2p_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_xmit_entry(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @rtw_select_queue(ptr nocapture noundef readonly %dev, ptr nocapture noundef %skb, ptr nocapture noundef readnone %sb_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %2 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %priority.i, align 4
  %4 = and i32 %3, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %5 = icmp eq i32 %4, 256
  br i1 %5, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add nsw i32 %3, -256
  br label %rtw_classify8021d.exit

if.end.i:                                         ; preds = %entry
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %6 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %7)
  %cond.i = icmp eq i16 %7, 2048
  br i1 %cond.i, label %sw.bb.i, label %if.end.i.rtw_classify8021d.exit_crit_edge

if.end.i.rtw_classify8021d.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_classify8021d.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %11 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tos.i, align 1
  %14 = lshr i8 %13, 5
  %shr.i = zext i8 %14 to i32
  br label %rtw_classify8021d.exit

rtw_classify8021d.exit:                           ; preds = %sw.bb.i, %if.end.i.rtw_classify8021d.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %shr.i, %sw.bb.i ], [ 0, %if.end.i.rtw_classify8021d.exit_crit_edge ]
  %15 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %priority.i, align 4
  %acm_mask = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 29
  %16 = ptrtoint ptr %acm_mask to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %acm_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.not = icmp eq i8 %17, 0
  br i1 %cmp.not, label %rtw_classify8021d.exit.if.end_crit_edge, label %if.then

rtw_classify8021d.exit.if.end_crit_edge:          ; preds = %rtw_classify8021d.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %rtw_classify8021d.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv5 = trunc i32 %retval.0.i to i8
  %call6 = tail call zeroext i8 @qos_acm(i8 noundef zeroext %17, i8 noundef zeroext %conv5) #9
  %conv7 = zext i8 %call6 to i32
  %18 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv7, ptr %priority.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %rtw_classify8021d.exit.if.end_crit_edge
  %19 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %priority.i, align 4
  %arrayidx = getelementptr [8 x i16], ptr @rtw_1d_to_queue, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx, align 2
  ret i16 %22
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtw_net_set_mac_address(ptr nocapture noundef readonly %pnetdev, ptr nocapture noundef readonly %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %pnetdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %bup = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %bup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mac_addr = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %mac_addr, ptr %sa_data, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @rtw_net_get_stats(ptr nocapture noundef readonly %pnetdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %pnetdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tx_pkts = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9, i32 17
  %2 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tx_pkts, align 8
  %conv = trunc i64 %3 to i32
  %stats = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 40
  %tx_packets = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 40, i32 1
  %4 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %tx_packets, align 4
  %rx_pkts = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 10
  %5 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rx_pkts, align 8
  %conv1 = trunc i64 %6 to i32
  %7 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv1, ptr %stats, align 4
  %tx_drop = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9, i32 18
  %8 = ptrtoint ptr %tx_drop to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tx_drop, align 8
  %conv3 = trunc i64 %9 to i32
  %tx_dropped = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 40, i32 7
  %10 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv3, ptr %tx_dropped, align 4
  %rx_drop = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 11
  %11 = ptrtoint ptr %rx_drop to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rx_drop, align 8
  %conv5 = trunc i64 %12 to i32
  %rx_dropped = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 40, i32 6
  %13 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv5, ptr %rx_dropped, align 4
  %tx_bytes = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9, i32 16
  %14 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_bytes, align 8
  %conv7 = trunc i64 %15 to i32
  %tx_bytes9 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 40, i32 3
  %16 = ptrtoint ptr %tx_bytes9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv7, ptr %tx_bytes9, align 4
  %rx_bytes = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 9
  %17 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %rx_bytes, align 8
  %conv10 = trunc i64 %18 to i32
  %rx_bytes12 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 40, i32 2
  %19 = ptrtoint ptr %rx_bytes12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv10, ptr %rx_bytes12, align 4
  ret ptr %stats
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @qos_acm(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_init_registrypriv_dev_network(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_update_registrypriv_dev_network(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26, !27, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !117, !118, !120, !122, !123, !125, !126, !128, !130, !131, !133, !135, !136, !138, !140, !141, !142, !143, !144, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !164, !165, !167, !169, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !248, !250, !251, !253, !255, !256, !258, !259, !260, !262, !263, !265, !266, !268, !269, !270, !272, !273, !275, !276, !278, !279, !281, !282, !284, !285, !287, !288, !290, !291, !292, !293, !294, !296, !297, !298, !300, !301, !303, !304, !306, !307, !308, !309, !311, !312, !313, !315, !316, !317, !319, !320, !322, !323, !325, !326, !327, !328, !330, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !390, !391, !393, !394, !396, !397, !398, !399, !401, !402}
!llvm.named.register.sp = !{!403}
!llvm.module.flags = !{!404, !405, !406, !407, !408, !409, !410, !411}
!llvm.ident = !{!412}

!0 = !{ptr @__UNIQUE_ID_license346, !1, !"__UNIQUE_ID_license346", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_description347, !3, !"__UNIQUE_ID_description347", i1 false, i1 false}
!3 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_author348, !5, !"__UNIQUE_ID_author348", i1 false, i1 false}
!5 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 19, i32 1}
!6 = !{ptr @__UNIQUE_ID_version349, !7, !"__UNIQUE_ID_version349", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 20, i32 1}
!8 = !{ptr @__param_rtw_ips_mode, !9, !"__param_rtw_ips_mode", i1 false, i1 false}
!9 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 45, i32 1}
!10 = !{ptr @__UNIQUE_ID_rtw_ips_modetype350, !9, !"__UNIQUE_ID_rtw_ips_modetype350", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_rtw_ips_mode351, !12, !"__UNIQUE_ID_rtw_ips_mode351", i1 false, i1 false}
!12 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 46, i32 1}
!13 = !{ptr @rtw_ht_enable, !14, !"rtw_ht_enable", i1 false, i1 false}
!14 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 70, i32 5}
!15 = !{ptr @rtw_cbw40_enable, !16, !"rtw_cbw40_enable", i1 false, i1 false}
!16 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 71, i32 5}
!17 = !{ptr @rtw_ampdu_enable, !18, !"rtw_ampdu_enable", i1 false, i1 false}
!18 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 72, i32 5}
!19 = !{ptr @__param_ifname, !20, !"__param_ifname", i1 false, i1 false}
!20 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 98, i32 1}
!21 = !{ptr @__UNIQUE_ID_ifnametype352, !20, !"__UNIQUE_ID_ifnametype352", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_ifname353, !23, !"__UNIQUE_ID_ifname353", i1 false, i1 false}
!23 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 99, i32 1}
!24 = !{ptr @__param_if2name, !25, !"__param_if2name", i1 false, i1 false}
!25 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 102, i32 1}
!26 = !{ptr @__UNIQUE_ID_if2nametype354, !25, !"__UNIQUE_ID_if2nametype354", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_if2name355, !28, !"__UNIQUE_ID_if2name355", i1 false, i1 false}
!28 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 103, i32 1}
!29 = !{ptr @__param_rtw_initmac, !30, !"__param_rtw_initmac", i1 false, i1 false}
!30 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 107, i32 1}
!31 = !{ptr @__UNIQUE_ID_rtw_initmactype356, !30, !"__UNIQUE_ID_rtw_initmactype356", i1 false, i1 false}
!32 = !{ptr @__param_rtw_channel_plan, !33, !"__param_rtw_channel_plan", i1 false, i1 false}
!33 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 108, i32 1}
!34 = !{ptr @__UNIQUE_ID_rtw_channel_plantype357, !33, !"__UNIQUE_ID_rtw_channel_plantype357", i1 false, i1 false}
!35 = !{ptr @__param_rtw_chip_version, !36, !"__param_rtw_chip_version", i1 false, i1 false}
!36 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 109, i32 1}
!37 = !{ptr @__UNIQUE_ID_rtw_chip_versiontype358, !36, !"__UNIQUE_ID_rtw_chip_versiontype358", i1 false, i1 false}
!38 = !{ptr @__param_rtw_rfintfs, !39, !"__param_rtw_rfintfs", i1 false, i1 false}
!39 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 110, i32 1}
!40 = !{ptr @__UNIQUE_ID_rtw_rfintfstype359, !39, !"__UNIQUE_ID_rtw_rfintfstype359", i1 false, i1 false}
!41 = !{ptr @__param_rtw_lbkmode, !42, !"__param_rtw_lbkmode", i1 false, i1 false}
!42 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 111, i32 1}
!43 = !{ptr @__UNIQUE_ID_rtw_lbkmodetype360, !42, !"__UNIQUE_ID_rtw_lbkmodetype360", i1 false, i1 false}
!44 = !{ptr @__param_rtw_network_mode, !45, !"__param_rtw_network_mode", i1 false, i1 false}
!45 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 112, i32 1}
!46 = !{ptr @__UNIQUE_ID_rtw_network_modetype361, !45, !"__UNIQUE_ID_rtw_network_modetype361", i1 false, i1 false}
!47 = !{ptr @__param_rtw_channel, !48, !"__param_rtw_channel", i1 false, i1 false}
!48 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 113, i32 1}
!49 = !{ptr @__UNIQUE_ID_rtw_channeltype362, !48, !"__UNIQUE_ID_rtw_channeltype362", i1 false, i1 false}
!50 = !{ptr @__param_rtw_wmm_enable, !51, !"__param_rtw_wmm_enable", i1 false, i1 false}
!51 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 114, i32 1}
!52 = !{ptr @__UNIQUE_ID_rtw_wmm_enabletype363, !51, !"__UNIQUE_ID_rtw_wmm_enabletype363", i1 false, i1 false}
!53 = !{ptr @__param_rtw_vrtl_carrier_sense, !54, !"__param_rtw_vrtl_carrier_sense", i1 false, i1 false}
!54 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 115, i32 1}
!55 = !{ptr @__UNIQUE_ID_rtw_vrtl_carrier_sensetype364, !54, !"__UNIQUE_ID_rtw_vrtl_carrier_sensetype364", i1 false, i1 false}
!56 = !{ptr @__param_rtw_vcs_type, !57, !"__param_rtw_vcs_type", i1 false, i1 false}
!57 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 116, i32 1}
!58 = !{ptr @__UNIQUE_ID_rtw_vcs_typetype365, !57, !"__UNIQUE_ID_rtw_vcs_typetype365", i1 false, i1 false}
!59 = !{ptr @__param_rtw_busy_thresh, !60, !"__param_rtw_busy_thresh", i1 false, i1 false}
!60 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 117, i32 1}
!61 = !{ptr @__UNIQUE_ID_rtw_busy_threshtype366, !60, !"__UNIQUE_ID_rtw_busy_threshtype366", i1 false, i1 false}
!62 = !{ptr @__param_rtw_led_enable, !63, !"__param_rtw_led_enable", i1 false, i1 false}
!63 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 118, i32 1}
!64 = !{ptr @__UNIQUE_ID_rtw_led_enabletype367, !63, !"__UNIQUE_ID_rtw_led_enabletype367", i1 false, i1 false}
!65 = !{ptr @__param_rtw_ht_enable, !66, !"__param_rtw_ht_enable", i1 false, i1 false}
!66 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 119, i32 1}
!67 = !{ptr @__UNIQUE_ID_rtw_ht_enabletype368, !66, !"__UNIQUE_ID_rtw_ht_enabletype368", i1 false, i1 false}
!68 = !{ptr @__param_rtw_cbw40_enable, !69, !"__param_rtw_cbw40_enable", i1 false, i1 false}
!69 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 120, i32 1}
!70 = !{ptr @__UNIQUE_ID_rtw_cbw40_enabletype369, !69, !"__UNIQUE_ID_rtw_cbw40_enabletype369", i1 false, i1 false}
!71 = !{ptr @__param_rtw_ampdu_enable, !72, !"__param_rtw_ampdu_enable", i1 false, i1 false}
!72 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 121, i32 1}
!73 = !{ptr @__UNIQUE_ID_rtw_ampdu_enabletype370, !72, !"__UNIQUE_ID_rtw_ampdu_enabletype370", i1 false, i1 false}
!74 = !{ptr @__param_rtw_rx_stbc, !75, !"__param_rtw_rx_stbc", i1 false, i1 false}
!75 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 122, i32 1}
!76 = !{ptr @__UNIQUE_ID_rtw_rx_stbctype371, !75, !"__UNIQUE_ID_rtw_rx_stbctype371", i1 false, i1 false}
!77 = !{ptr @__param_rtw_ampdu_amsdu, !78, !"__param_rtw_ampdu_amsdu", i1 false, i1 false}
!78 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 123, i32 1}
!79 = !{ptr @__UNIQUE_ID_rtw_ampdu_amsdutype372, !78, !"__UNIQUE_ID_rtw_ampdu_amsdutype372", i1 false, i1 false}
!80 = !{ptr @__param_rtw_lowrate_two_xmit, !81, !"__param_rtw_lowrate_two_xmit", i1 false, i1 false}
!81 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 124, i32 1}
!82 = !{ptr @__UNIQUE_ID_rtw_lowrate_two_xmittype373, !81, !"__UNIQUE_ID_rtw_lowrate_two_xmittype373", i1 false, i1 false}
!83 = !{ptr @__param_rtw_power_mgnt, !84, !"__param_rtw_power_mgnt", i1 false, i1 false}
!84 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 125, i32 1}
!85 = !{ptr @__UNIQUE_ID_rtw_power_mgnttype374, !84, !"__UNIQUE_ID_rtw_power_mgnttype374", i1 false, i1 false}
!86 = !{ptr @__param_rtw_smart_ps, !87, !"__param_rtw_smart_ps", i1 false, i1 false}
!87 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 126, i32 1}
!88 = !{ptr @__UNIQUE_ID_rtw_smart_pstype375, !87, !"__UNIQUE_ID_rtw_smart_pstype375", i1 false, i1 false}
!89 = !{ptr @__param_rtw_low_power, !90, !"__param_rtw_low_power", i1 false, i1 false}
!90 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 127, i32 1}
!91 = !{ptr @__UNIQUE_ID_rtw_low_powertype376, !90, !"__UNIQUE_ID_rtw_low_powertype376", i1 false, i1 false}
!92 = !{ptr @__param_rtw_wifi_spec, !93, !"__param_rtw_wifi_spec", i1 false, i1 false}
!93 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 128, i32 1}
!94 = !{ptr @__UNIQUE_ID_rtw_wifi_spectype377, !93, !"__UNIQUE_ID_rtw_wifi_spectype377", i1 false, i1 false}
!95 = !{ptr @__param_rtw_antdiv_cfg, !96, !"__param_rtw_antdiv_cfg", i1 false, i1 false}
!96 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 129, i32 1}
!97 = !{ptr @__UNIQUE_ID_rtw_antdiv_cfgtype378, !96, !"__UNIQUE_ID_rtw_antdiv_cfgtype378", i1 false, i1 false}
!98 = !{ptr @__param_rtw_antdiv_type, !99, !"__param_rtw_antdiv_type", i1 false, i1 false}
!99 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 130, i32 1}
!100 = !{ptr @__UNIQUE_ID_rtw_antdiv_typetype379, !99, !"__UNIQUE_ID_rtw_antdiv_typetype379", i1 false, i1 false}
!101 = !{ptr @__param_rtw_hwpdn_mode, !102, !"__param_rtw_hwpdn_mode", i1 false, i1 false}
!102 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 131, i32 1}
!103 = !{ptr @__UNIQUE_ID_rtw_hwpdn_modetype380, !102, !"__UNIQUE_ID_rtw_hwpdn_modetype380", i1 false, i1 false}
!104 = !{ptr @__param_rtw_hwpwrp_detect, !105, !"__param_rtw_hwpwrp_detect", i1 false, i1 false}
!105 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 132, i32 1}
!106 = !{ptr @__UNIQUE_ID_rtw_hwpwrp_detecttype381, !105, !"__UNIQUE_ID_rtw_hwpwrp_detecttype381", i1 false, i1 false}
!107 = !{ptr @__param_rtw_hw_wps_pbc, !108, !"__param_rtw_hw_wps_pbc", i1 false, i1 false}
!108 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 133, i32 1}
!109 = !{ptr @__UNIQUE_ID_rtw_hw_wps_pbctype382, !108, !"__UNIQUE_ID_rtw_hw_wps_pbctype382", i1 false, i1 false}
!110 = !{ptr @__param_rtw_max_roaming_times, !111, !"__param_rtw_max_roaming_times", i1 false, i1 false}
!111 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 136, i32 1}
!112 = !{ptr @__UNIQUE_ID_rtw_max_roaming_timestype383, !111, !"__UNIQUE_ID_rtw_max_roaming_timestype383", i1 false, i1 false}
!113 = !{ptr @__UNIQUE_ID_rtw_max_roaming_times384, !114, !"__UNIQUE_ID_rtw_max_roaming_times384", i1 false, i1 false}
!114 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 137, i32 1}
!115 = !{ptr @__param_rtw_fw_iol, !116, !"__param_rtw_fw_iol", i1 false, i1 false}
!116 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 140, i32 1}
!117 = !{ptr @__UNIQUE_ID_rtw_fw_ioltype385, !116, !"__UNIQUE_ID_rtw_fw_ioltype385", i1 false, i1 false}
!118 = !{ptr @__UNIQUE_ID_rtw_fw_iol386, !119, !"__UNIQUE_ID_rtw_fw_iol386", i1 false, i1 false}
!119 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 141, i32 1}
!120 = !{ptr @__param_rtw_mc2u_disable, !121, !"__param_rtw_mc2u_disable", i1 false, i1 false}
!121 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 143, i32 1}
!122 = !{ptr @__UNIQUE_ID_rtw_mc2u_disabletype387, !121, !"__UNIQUE_ID_rtw_mc2u_disabletype387", i1 false, i1 false}
!123 = !{ptr @__param_rtw_80211d, !124, !"__param_rtw_80211d", i1 false, i1 false}
!124 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 145, i32 1}
!125 = !{ptr @__UNIQUE_ID_rtw_80211dtype388, !124, !"__UNIQUE_ID_rtw_80211dtype388", i1 false, i1 false}
!126 = !{ptr @__UNIQUE_ID_rtw_80211d389, !127, !"__UNIQUE_ID_rtw_80211d389", i1 false, i1 false}
!127 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 146, i32 1}
!128 = !{ptr @__param_rtw_notch_filter, !129, !"__param_rtw_notch_filter", i1 false, i1 false}
!129 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 149, i32 1}
!130 = !{ptr @__UNIQUE_ID_rtw_notch_filtertype390, !129, !"__UNIQUE_ID_rtw_notch_filtertype390", i1 false, i1 false}
!131 = !{ptr @__UNIQUE_ID_rtw_notch_filter391, !132, !"__UNIQUE_ID_rtw_notch_filter391", i1 false, i1 false}
!132 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 150, i32 1}
!133 = !{ptr @__param_debug, !134, !"__param_debug", i1 false, i1 false}
!134 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 151, i32 1}
!135 = !{ptr @__UNIQUE_ID_debugtype392, !134, !"__UNIQUE_ID_debugtype392", i1 false, i1 false}
!136 = !{ptr @__UNIQUE_ID_debug393, !137, !"__UNIQUE_ID_debug393", i1 false, i1 false}
!137 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 152, i32 1}
!138 = !{ptr @.str, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 365, i32 2}
!140 = !{ptr @.str.1, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.2, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @rtw_init_netdev._entry, !139, !"_entry", i1 false, i1 false}
!143 = !{ptr @rtw_init_netdev._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.3, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 380, i32 24}
!146 = !{ptr @.str.4, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 496, i32 3}
!148 = !{ptr @.str.5, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @rtw_init_drv_sw._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @rtw_init_drv_sw._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.7, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 501, i32 3}
!153 = !{ptr @rtw_init_drv_sw._entry.6, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @rtw_init_drv_sw._entry_ptr.8, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.10, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 506, i32 3}
!157 = !{ptr @rtw_init_drv_sw._entry.9, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @rtw_init_drv_sw._entry_ptr.11, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @rtw_init_drv_sw.__key, !160, !"__key", i1 false, i1 false}
!160 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 521, i32 2}
!161 = !{ptr @.str.12, !160, !"<string literal>", i1 false, i1 false}
!162 = distinct !{null, !163, !"__warned", i1 false, i1 false}
!163 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 589, i32 6}
!164 = !{ptr @.str.13, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.14, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 594, i32 39}
!167 = !{ptr @.str.15, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 599, i32 4}
!169 = !{ptr @.str.16, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @netdev_br_init._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @netdev_br_init._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.17, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 614, i32 2}
!174 = !{ptr @.str.18, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @_netdev_open._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @_netdev_open._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.20, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 630, i32 3}
!179 = !{ptr @_netdev_open._entry.19, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @_netdev_open._entry_ptr.21, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.23, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 634, i32 4}
!183 = !{ptr @_netdev_open._entry.22, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @_netdev_open._entry_ptr.24, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.26, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 639, i32 4}
!187 = !{ptr @_netdev_open._entry.25, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @_netdev_open._entry_ptr.27, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.29, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 664, i32 2}
!191 = !{ptr @_netdev_open._entry.28, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @_netdev_open._entry_ptr.30, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.32, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 671, i32 2}
!195 = !{ptr @_netdev_open._entry.31, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @_netdev_open._entry_ptr.33, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.34, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 718, i32 2}
!199 = !{ptr @.str.35, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @rtw_ips_pwr_up._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @rtw_ips_pwr_up._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.37, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 725, i32 2}
!204 = !{ptr @rtw_ips_pwr_up._entry.36, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @rtw_ips_pwr_up._entry_ptr.38, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.39, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 732, i32 2}
!208 = !{ptr @.str.40, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @rtw_ips_pwr_down._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @rtw_ips_pwr_down._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.42, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 741, i32 2}
!213 = !{ptr @rtw_ips_pwr_down._entry.41, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @rtw_ips_pwr_down._entry_ptr.43, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.44, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 746, i32 2}
!217 = !{ptr @.str.45, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @rtw_ips_dev_unload._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @rtw_ips_dev_unload._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.46, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 766, i32 3}
!222 = !{ptr @.str.47, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @netdev_close._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @netdev_close._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.49, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 795, i32 2}
!227 = !{ptr @netdev_close._entry.48, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @netdev_close._entry_ptr.50, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @rtw_lbkmode, !230, !"rtw_lbkmode", i1 false, i1 false}
!230 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 28, i32 12}
!231 = !{ptr @rtw_ampdu_amsdu, !232, !"rtw_ampdu_amsdu", i1 false, i1 false}
!232 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 74, i32 12}
!233 = !{ptr @rtw_low_power, !234, !"rtw_low_power", i1 false, i1 false}
!234 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 78, i32 12}
!235 = !{ptr @rtw_wifi_spec, !236, !"rtw_wifi_spec", i1 false, i1 false}
!236 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 79, i32 12}
!237 = !{ptr @rtw_antdiv_type, !238, !"rtw_antdiv_type", i1 false, i1 false}
!238 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 84, i32 12}
!239 = !{ptr @rtw_hwpwrp_detect, !240, !"rtw_hwpwrp_detect", i1 false, i1 false}
!240 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 89, i32 12}
!241 = !{ptr @rtw_mc2u_disable, !242, !"rtw_mc2u_disable", i1 false, i1 false}
!242 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 93, i32 5}
!243 = !{ptr @rtw_80211d, !244, !"rtw_80211d", i1 false, i1 false}
!244 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 95, i32 12}
!245 = !{ptr @rtw_initmac, !246, !"rtw_initmac", i1 false, i1 false}
!246 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 105, i32 7}
!247 = !{ptr @___asan_gen_.63, !9, !"__param_str_rtw_ips_mode", i1 false, i1 false}
!248 = !{ptr @rtw_ips_mode, !249, !"rtw_ips_mode", i1 false, i1 false}
!249 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 41, i32 12}
!250 = !{ptr @___asan_gen_.75, !20, !"__param_str_ifname", i1 false, i1 false}
!251 = !{ptr @.str.51, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 97, i32 23}
!253 = !{ptr @ifname, !254, !"ifname", i1 false, i1 false}
!254 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 97, i32 14}
!255 = !{ptr @___asan_gen_.78, !25, !"__param_str_if2name", i1 false, i1 false}
!256 = !{ptr @if2name, !257, !"if2name", i1 false, i1 false}
!257 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 101, i32 14}
!258 = !{ptr @___asan_gen_.81, !30, !"__param_str_rtw_initmac", i1 false, i1 false}
!259 = !{ptr @___asan_gen_.84, !33, !"__param_str_rtw_channel_plan", i1 false, i1 false}
!260 = !{ptr @rtw_channel_plan, !261, !"rtw_channel_plan", i1 false, i1 false}
!261 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 80, i32 12}
!262 = !{ptr @___asan_gen_.87, !36, !"__param_str_rtw_chip_version", i1 false, i1 false}
!263 = !{ptr @rtw_chip_version, !264, !"rtw_chip_version", i1 false, i1 false}
!264 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 26, i32 12}
!265 = !{ptr @___asan_gen_.90, !39, !"__param_str_rtw_rfintfs", i1 false, i1 false}
!266 = !{ptr @rtw_rfintfs, !267, !"rtw_rfintfs", i1 false, i1 false}
!267 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 27, i32 12}
!268 = !{ptr @___asan_gen_.93, !42, !"__param_str_rtw_lbkmode", i1 false, i1 false}
!269 = !{ptr @___asan_gen_.96, !45, !"__param_str_rtw_network_mode", i1 false, i1 false}
!270 = !{ptr @rtw_network_mode, !271, !"rtw_network_mode", i1 false, i1 false}
!271 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 29, i32 12}
!272 = !{ptr @___asan_gen_.99, !48, !"__param_str_rtw_channel", i1 false, i1 false}
!273 = !{ptr @rtw_channel, !274, !"rtw_channel", i1 false, i1 false}
!274 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 30, i32 12}
!275 = !{ptr @___asan_gen_.102, !51, !"__param_str_rtw_wmm_enable", i1 false, i1 false}
!276 = !{ptr @rtw_wmm_enable, !277, !"rtw_wmm_enable", i1 false, i1 false}
!277 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 60, i32 12}
!278 = !{ptr @___asan_gen_.105, !54, !"__param_str_rtw_vrtl_carrier_sense", i1 false, i1 false}
!279 = !{ptr @rtw_vrtl_carrier_sense, !280, !"rtw_vrtl_carrier_sense", i1 false, i1 false}
!280 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 32, i32 12}
!281 = !{ptr @___asan_gen_.108, !57, !"__param_str_rtw_vcs_type", i1 false, i1 false}
!282 = !{ptr @rtw_vcs_type, !283, !"rtw_vcs_type", i1 false, i1 false}
!283 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 33, i32 12}
!284 = !{ptr @___asan_gen_.111, !60, !"__param_str_rtw_busy_thresh", i1 false, i1 false}
!285 = !{ptr @rtw_busy_thresh, !286, !"rtw_busy_thresh", i1 false, i1 false}
!286 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 52, i32 12}
!287 = !{ptr @___asan_gen_.114, !63, !"__param_str_rtw_led_enable", i1 false, i1 false}
!288 = !{ptr @rtw_led_enable, !289, !"rtw_led_enable", i1 false, i1 false}
!289 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 68, i32 12}
!290 = !{ptr @___asan_gen_.66, !66, !"__param_str_rtw_ht_enable", i1 false, i1 false}
!291 = !{ptr @___asan_gen_.69, !69, !"__param_str_rtw_cbw40_enable", i1 false, i1 false}
!292 = !{ptr @___asan_gen_.72, !72, !"__param_str_rtw_ampdu_enable", i1 false, i1 false}
!293 = !{ptr @___asan_gen_.117, !75, !"__param_str_rtw_rx_stbc", i1 false, i1 false}
!294 = !{ptr @rtw_rx_stbc, !295, !"rtw_rx_stbc", i1 false, i1 false}
!295 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 73, i32 12}
!296 = !{ptr @___asan_gen_.120, !78, !"__param_str_rtw_ampdu_amsdu", i1 false, i1 false}
!297 = !{ptr @___asan_gen_.123, !81, !"__param_str_rtw_lowrate_two_xmit", i1 false, i1 false}
!298 = !{ptr @rtw_lowrate_two_xmit, !299, !"rtw_lowrate_two_xmit", i1 false, i1 false}
!299 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 76, i32 12}
!300 = !{ptr @___asan_gen_.126, !84, !"__param_str_rtw_power_mgnt", i1 false, i1 false}
!301 = !{ptr @rtw_power_mgnt, !302, !"rtw_power_mgnt", i1 false, i1 false}
!302 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 40, i32 12}
!303 = !{ptr @___asan_gen_.129, !87, !"__param_str_rtw_smart_ps", i1 false, i1 false}
!304 = !{ptr @rtw_smart_ps, !305, !"rtw_smart_ps", i1 false, i1 false}
!305 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 43, i32 12}
!306 = !{ptr @___asan_gen_.132, !90, !"__param_str_rtw_low_power", i1 false, i1 false}
!307 = !{ptr @___asan_gen_.135, !93, !"__param_str_rtw_wifi_spec", i1 false, i1 false}
!308 = !{ptr @___asan_gen_.138, !96, !"__param_str_rtw_antdiv_cfg", i1 false, i1 false}
!309 = !{ptr @rtw_antdiv_cfg, !310, !"rtw_antdiv_cfg", i1 false, i1 false}
!310 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 83, i32 12}
!311 = !{ptr @___asan_gen_.141, !99, !"__param_str_rtw_antdiv_type", i1 false, i1 false}
!312 = !{ptr @___asan_gen_.144, !102, !"__param_str_rtw_hwpdn_mode", i1 false, i1 false}
!313 = !{ptr @rtw_hwpdn_mode, !314, !"rtw_hwpdn_mode", i1 false, i1 false}
!314 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 87, i32 12}
!315 = !{ptr @___asan_gen_.147, !105, !"__param_str_rtw_hwpwrp_detect", i1 false, i1 false}
!316 = !{ptr @___asan_gen_.150, !108, !"__param_str_rtw_hw_wps_pbc", i1 false, i1 false}
!317 = !{ptr @rtw_hw_wps_pbc, !318, !"rtw_hw_wps_pbc", i1 false, i1 false}
!318 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 91, i32 12}
!319 = !{ptr @___asan_gen_.153, !111, !"__param_str_rtw_max_roaming_times", i1 false, i1 false}
!320 = !{ptr @rtw_max_roaming_times, !321, !"rtw_max_roaming_times", i1 false, i1 false}
!321 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 135, i32 13}
!322 = !{ptr @___asan_gen_.156, !116, !"__param_str_rtw_fw_iol", i1 false, i1 false}
!323 = !{ptr @rtw_fw_iol, !324, !"rtw_fw_iol", i1 false, i1 false}
!324 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 139, i32 12}
!325 = !{ptr @___asan_gen_.159, !121, !"__param_str_rtw_mc2u_disable", i1 false, i1 false}
!326 = !{ptr @___asan_gen_.162, !124, !"__param_str_rtw_80211d", i1 false, i1 false}
!327 = !{ptr @___asan_gen_.165, !129, !"__param_str_rtw_notch_filter", i1 false, i1 false}
!328 = !{ptr @rtw_notch_filter, !329, !"rtw_notch_filter", i1 false, i1 false}
!329 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 148, i32 13}
!330 = !{ptr @__param_str_debug, !134, !"__param_str_debug", i1 false, i1 false}
!331 = !{ptr @rtw_debug, !332, !"rtw_debug", i1 false, i1 false}
!332 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 48, i32 12}
!333 = !{ptr @rtw_1d_to_queue, !334, !"rtw_1d_to_queue", i1 false, i1 false}
!334 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 262, i32 18}
!335 = !{ptr @.str.52, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 346, i32 10}
!337 = !{ptr @wlan_type, !338, !"wlan_type", i1 false, i1 false}
!338 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 345, i32 33}
!339 = !{ptr @rtw_netdev_ops, !340, !"rtw_netdev_ops", i1 false, i1 false}
!340 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 324, i32 36}
!341 = !{ptr @.str.53, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 164, i32 34}
!343 = !{ptr @.str.54, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 221, i32 37}
!345 = distinct !{null, !346, !"rtw_wireless_mode", i1 false, i1 false}
!346 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 31, i32 12}
!347 = distinct !{null, !348, !"rtw_rts_thresh", i1 false, i1 false}
!348 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 34, i32 12}
!349 = distinct !{null, !350, !"rtw_frag_thresh", i1 false, i1 false}
!350 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 35, i32 12}
!351 = distinct !{null, !352, !"rtw_preamble", i1 false, i1 false}
!352 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 36, i32 12}
!353 = distinct !{null, !354, !"rtw_scan_mode", i1 false, i1 false}
!354 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 37, i32 12}
!355 = distinct !{null, !356, !"rtw_adhoc_tx_pwr", i1 false, i1 false}
!356 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 38, i32 12}
!357 = distinct !{null, !358, !"rtw_soft_ap", i1 false, i1 false}
!358 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 39, i32 12}
!359 = distinct !{null, !360, !"rtw_radio_enable", i1 false, i1 false}
!360 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 49, i32 12}
!361 = distinct !{null, !362, !"rtw_long_retry_lmt", i1 false, i1 false}
!362 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 50, i32 12}
!363 = distinct !{null, !364, !"rtw_short_retry_lmt", i1 false, i1 false}
!364 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 51, i32 12}
!365 = distinct !{null, !366, !"rtw_ack_policy", i1 false, i1 false}
!366 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 53, i32 12}
!367 = distinct !{null, !368, !"rtw_software_encrypt", i1 false, i1 false}
!368 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 55, i32 12}
!369 = distinct !{null, !370, !"rtw_software_decrypt", i1 false, i1 false}
!370 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 56, i32 12}
!371 = distinct !{null, !372, !"rtw_acm_method", i1 false, i1 false}
!372 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 58, i32 12}
!373 = distinct !{null, !374, !"rtw_uapsd_enable", i1 false, i1 false}
!374 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 61, i32 12}
!375 = distinct !{null, !376, !"rtw_uapsd_max_sp", i1 false, i1 false}
!376 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 62, i32 12}
!377 = distinct !{null, !378, !"rtw_uapsd_acbk_en", i1 false, i1 false}
!378 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 63, i32 12}
!379 = distinct !{null, !380, !"rtw_uapsd_acbe_en", i1 false, i1 false}
!380 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 64, i32 12}
!381 = distinct !{null, !382, !"rtw_uapsd_acvi_en", i1 false, i1 false}
!382 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 65, i32 12}
!383 = distinct !{null, !384, !"rtw_uapsd_acvo_en", i1 false, i1 false}
!384 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 66, i32 12}
!385 = distinct !{null, !386, !"rtw_AcceptAddbaReq", i1 false, i1 false}
!386 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 81, i32 12}
!387 = distinct !{null, !388, !"__warned", i1 false, i1 false}
!388 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!389 = !{ptr @.str.55, !388, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @.str.56, !388, !"<string literal>", i1 false, i1 false}
!391 = distinct !{null, !392, !"__warned", i1 false, i1 false}
!392 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!393 = !{ptr @.str.57, !392, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @.str.58, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 690, i32 2}
!396 = !{ptr @.str.59, !395, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @ips_netdrv_open._entry, !395, !"_entry", i1 false, i1 false}
!398 = !{ptr @ips_netdrv_open._entry_ptr, !395, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.61, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/staging/r8188eu/os_dep/os_intfs.c", i32 709, i32 2}
!401 = !{ptr @ips_netdrv_open._entry.60, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @ips_netdrv_open._entry_ptr.62, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{!"sp"}
!404 = !{i32 1, !"wchar_size", i32 2}
!405 = !{i32 1, !"min_enum_size", i32 4}
!406 = !{i32 8, !"branch-target-enforcement", i32 0}
!407 = !{i32 8, !"sign-return-address", i32 0}
!408 = !{i32 8, !"sign-return-address-all", i32 0}
!409 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!410 = !{i32 7, !"uwtable", i32 1}
!411 = !{i32 7, !"frame-pointer", i32 2}
!412 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!413 = !{i64 2149212367}
!414 = !{i64 807970, i64 808031}
!415 = !{i64 810702}
!416 = !{!"branch_weights", i32 1, i32 2000}
!417 = !{i64 810987}
!418 = !{i64 2149212633}
