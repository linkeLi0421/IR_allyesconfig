; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/os_dep/xmit_linux.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/os_dep/xmit_linux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pkt_file = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, i32, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.xmit_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i16, i16, i32, i32, ptr, i32, [8 x ptr], i32, [8 x i8], [8 x i32] }
%struct.list_head = type { ptr, ptr }
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
%struct.HT_caps_element = type { %union.anon.118 }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i8, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.io_priv = type { ptr, %struct.intf_hdl }
%struct.intf_hdl = type { ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.semaphore, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, i32, ptr, i8, i8, i8, i64, i64, i64, i64, i64, ptr, i8, [4 x i8], %struct.semaphore, i8, %struct.tasklet_struct, i32, i32, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i16, i32, %struct.mutex, %struct.submit_ctx }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, i32, i32, i32, i32, %struct.semaphore, i8, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, i8, i8, i8, [2 x i32], [2 x i8], i32, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.br_ext_info = type { i32, i32, i32, i32, [6 x i8], i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.96, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.96 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.hw_xmit = type { ptr, i32 }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }

@_rtw_open_pktfile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 24, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0138188eu: pktptr is NULL\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_rtw_open_pktfile\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/staging/r8188eu/os_dep/xmit_linux.c\00", [52 x i8] zeroinitializer }, align 32
@_rtw_open_pktfile._entry_ptr = internal global ptr @_rtw_open_pktfile._entry, section ".printk_index", align 4
@_rtw_open_pktfile._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\0138188eu: pfile is NULL\0A\00", [39 x i8] zeroinitializer }, align 32
@_rtw_open_pktfile._entry_ptr.5 = internal global ptr @_rtw_open_pktfile._entry.3, section ".printk_index", align 4
@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@rtw_os_xmit_resource_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016R8188EU: pxmitbuf->pxmit_urb[i]==NULL\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtw_os_xmit_resource_alloc\00", [37 x i8] zeroinitializer }, align 32
@rtw_os_xmit_resource_alloc._entry_ptr = internal global ptr @rtw_os_xmit_resource_alloc._entry, section ".printk_index", align 4
@rtw_mc2u_disable = external dso_local local_unnamed_addr global i32, align 4
@rtw_mlcst2unicst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016R8188EU: %s()-%d: rtw_xmit() return error!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtw_mlcst2unicst\00", [47 x i8] zeroinitializer }, align 32
@rtw_mlcst2unicst._entry_ptr = internal global ptr @rtw_mlcst2unicst._entry, section ".printk_index", align 4
@rtw_mlcst2unicst._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016R8188EU: %s-%d: skb_copy() failed!\0A\00", [58 x i8] zeroinitializer }, align 32
@rtw_mlcst2unicst._entry_ptr.12 = internal global ptr @rtw_mlcst2unicst._entry.10, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 51]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 24, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 28, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 82, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 191, i32 5 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [47 x i8] c"../drivers/staging/r8188eu/os_dep/xmit_linux.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 198, i32 4 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @_rtw_open_pktfile._entry, ptr @_rtw_open_pktfile._entry.3, ptr @_rtw_open_pktfile._entry_ptr, ptr @_rtw_open_pktfile._entry_ptr.5, ptr @rtw_mlcst2unicst._entry, ptr @rtw_mlcst2unicst._entry.10, ptr @rtw_mlcst2unicst._entry_ptr, ptr @rtw_mlcst2unicst._entry_ptr.12, ptr @rtw_os_xmit_resource_alloc._entry, ptr @rtw_os_xmit_resource_alloc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_open_pktfile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_open_pktfile._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_os_xmit_resource_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_mlcst2unicst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_mlcst2unicst._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_remainder_len(ptr nocapture noundef readonly %pfile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_len = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 5
  %0 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_len, align 4
  %cur_addr = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 4
  %2 = ptrtoint ptr %cur_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_addr, align 4
  %4 = ptrtoint ptr %3 to i32
  %buf_start = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 3
  %5 = ptrtoint ptr %buf_start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf_start, align 4
  %7 = ptrtoint ptr %6 to i32
  %sub.neg = sub i32 %1, %4
  %sub1 = add i32 %sub.neg, %7
  ret i32 %sub1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtw_open_pktfile(ptr noundef %pktptr, ptr noundef %pfile) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pktptr, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %return

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %pfile, null
  br i1 %tobool1.not, label %do.end4, label %if.end7

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %return

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %pfile to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pktptr, ptr %pfile, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %pktptr, i32 0, i32 19
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %cur_addr = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 4
  %3 = ptrtoint ptr %cur_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %cur_addr, align 4
  %4 = load ptr, ptr %data, align 4
  %buf_start = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 3
  %5 = ptrtoint ptr %buf_start to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %buf_start, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %pktptr, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %pkt_len = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 1
  %8 = ptrtoint ptr %pkt_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pkt_len, align 4
  %9 = load i32, ptr %len, align 4
  %buf_len = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 5
  %10 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %buf_len, align 4
  %cur_buffer = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 2
  %11 = ptrtoint ptr %cur_buffer to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %4, ptr %cur_buffer, align 4
  br label %return

return:                                           ; preds = %if.end7, %do.end4, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_rtw_pktfile_read(ptr nocapture noundef %pfile, ptr noundef %rmem, i32 noundef %rlen) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_len.i = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 5
  %0 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_len.i, align 4
  %cur_addr.i = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 4
  %2 = ptrtoint ptr %cur_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_addr.i, align 4
  %4 = ptrtoint ptr %3 to i32
  %buf_start.i = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 3
  %5 = ptrtoint ptr %buf_start.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf_start.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %sub.neg.i = sub i32 %1, %4
  %sub1.i = add i32 %sub.neg.i, %7
  %8 = tail call i32 @llvm.umin.i32(i32 %sub1.i, i32 %rlen)
  %tobool.not = icmp eq ptr %rmem, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %pfile to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pfile, align 4
  %pkt_len = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 1
  %11 = ptrtoint ptr %pkt_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pkt_len, align 4
  %sub = sub i32 %1, %12
  %call1 = tail call i32 @skb_copy_bits(ptr noundef %10, i32 noundef %sub, ptr noundef nonnull %rmem, i32 noundef %8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %cur_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur_addr.i, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %8
  store ptr %add.ptr, ptr %cur_addr.i, align 4
  %pkt_len2 = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 1
  %15 = ptrtoint ptr %pkt_len2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pkt_len2, align 4
  %sub3 = sub i32 %16, %8
  store i32 %sub3, ptr %pkt_len2, align 4
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_endofpktfile(ptr nocapture noundef readonly %pfile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt_len = getelementptr inbounds %struct.pkt_file, ptr %pfile, i32 0, i32 1
  %0 = ptrtoint ptr %pkt_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pkt_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_os_xmit_resource_alloc(ptr nocapture noundef readnone %padapter, ptr nocapture noundef writeonly %pxmitbuf, i32 noundef %alloc_sz) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %alloc_sz, i32 noundef 3520) #12
  %pallocated_buf = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 2
  %0 = ptrtoint ptr %pallocated_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9.i.i, ptr %pallocated_buf, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pbuf = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 3
  %1 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9.i.i, ptr %pbuf, align 4
  %dma_transfer_addr = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 12
  %2 = ptrtoint ptr %dma_transfer_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dma_transfer_addr, align 4
  %call3 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %arrayidx = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 11, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %call3, null
  br i1 %tobool6.not, label %if.end.do.body_crit_edge, label %for.cond

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.cond:                                         ; preds = %if.end
  %call3.1 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %arrayidx.1 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3.1, ptr %arrayidx.1, align 4
  %tobool6.not.1 = icmp eq ptr %call3.1, null
  br i1 %tobool6.not.1, label %for.cond.do.body_crit_edge, label %for.cond.1

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.cond.1:                                       ; preds = %for.cond
  %call3.2 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %arrayidx.2 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 11, i32 2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3.2, ptr %arrayidx.2, align 4
  %tobool6.not.2 = icmp eq ptr %call3.2, null
  br i1 %tobool6.not.2, label %for.cond.1.do.body_crit_edge, label %for.cond.2

for.cond.1.do.body_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.cond.2:                                       ; preds = %for.cond.1
  %call3.3 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %arrayidx.3 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 11, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3.3, ptr %arrayidx.3, align 4
  %tobool6.not.3 = icmp eq ptr %call3.3, null
  br i1 %tobool6.not.3, label %for.cond.2.do.body_crit_edge, label %for.cond.3

for.cond.2.do.body_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.cond.3:                                       ; preds = %for.cond.2
  %call3.4 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %arrayidx.4 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 11, i32 4
  %7 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3.4, ptr %arrayidx.4, align 4
  %tobool6.not.4 = icmp eq ptr %call3.4, null
  br i1 %tobool6.not.4, label %for.cond.3.do.body_crit_edge, label %for.cond.4

for.cond.3.do.body_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.cond.4:                                       ; preds = %for.cond.3
  %call3.5 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %arrayidx.5 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 11, i32 5
  %8 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3.5, ptr %arrayidx.5, align 4
  %tobool6.not.5 = icmp eq ptr %call3.5, null
  br i1 %tobool6.not.5, label %for.cond.4.do.body_crit_edge, label %for.cond.5

for.cond.4.do.body_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.cond.5:                                       ; preds = %for.cond.4
  %call3.6 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %arrayidx.6 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 11, i32 6
  %9 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call3.6, ptr %arrayidx.6, align 4
  %tobool6.not.6 = icmp eq ptr %call3.6, null
  br i1 %tobool6.not.6, label %for.cond.5.do.body_crit_edge, label %for.cond.6

for.cond.5.do.body_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.cond.6:                                       ; preds = %for.cond.5
  %call3.7 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %arrayidx.7 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 11, i32 7
  %10 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3.7, ptr %arrayidx.7, align 4
  %tobool6.not.7 = icmp eq ptr %call3.7, null
  br i1 %tobool6.not.7, label %for.cond.6.do.body_crit_edge, label %for.cond.6.cleanup_crit_edge

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.6.do.body_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %for.cond.6.do.body_crit_edge, %for.cond.5.do.body_crit_edge, %for.cond.4.do.body_crit_edge, %for.cond.3.do.body_crit_edge, %for.cond.2.do.body_crit_edge, %for.cond.1.do.body_crit_edge, %for.cond.do.body_crit_edge, %if.end.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %11 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp8 = icmp ugt i32 %11, 4
  br i1 %cmp8, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 1, %for.cond.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_os_xmit_resource_free(ptr nocapture noundef readnone %padapter, ptr nocapture noundef readonly %pxmitbuf, i32 noundef %free_sz) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 11, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %1) #8
  %arrayidx.1 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_free_urb(ptr noundef %3) #8
  %arrayidx.2 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_free_urb(ptr noundef %5) #8
  %arrayidx.3 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 11, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_free_urb(ptr noundef %7) #8
  %arrayidx.4 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 11, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  tail call void @usb_free_urb(ptr noundef %9) #8
  %arrayidx.5 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 11, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  tail call void @usb_free_urb(ptr noundef %11) #8
  %arrayidx.6 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 11, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.6, align 4
  tail call void @usb_free_urb(ptr noundef %13) #8
  %arrayidx.7 = getelementptr %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 11, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.7, align 4
  tail call void @usb_free_urb(ptr noundef %15) #8
  %pallocated_buf = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 2
  %16 = ptrtoint ptr %pallocated_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pallocated_buf, align 4
  tail call void @kfree(ptr noundef %17) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_os_pkt_complete(ptr nocapture noundef readonly %padapter, ptr noundef %pkt) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 44
  %2 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %pnetdev4 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %4 = ptrtoint ptr %pnetdev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pnetdev4, align 4
  %conv.i22 = zext i16 %1 to i32
  %_tx.i.i23 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i23, align 128
  %state.i.i24 = getelementptr %struct.netdev_queue, ptr %7, i32 %conv.i22, i32 13
  %8 = ptrtoint ptr %state.i.i24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i.i24, align 4
  %and1.i.i.i25 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i25)
  %tobool.i.i26.not = icmp eq i32 %and1.i.i.i25, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.i.i26.not, label %if.then.if.end9_crit_edge, label %land.lhs.true

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true:                                    ; preds = %if.then
  %hwxmits = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 21
  %10 = ptrtoint ptr %hwxmits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwxmits, align 8
  %accnt = getelementptr %struct.hw_xmit, ptr %11, i32 %conv.i22, i32 1
  %12 = ptrtoint ptr %accnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %accnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %13)
  %cmp = icmp slt i32 %13, 102
  br i1 %cmp, label %land.lhs.true.if.end9.sink.split_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true.if.end9.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.sink.split

if.else:                                          ; preds = %entry
  br i1 %tobool.i.i26.not, label %if.else.if.end9_crit_edge, label %if.else.if.end9.sink.split_crit_edge

if.else.if.end9.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.sink.split

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9.sink.split:                               ; preds = %if.else.if.end9.sink.split_crit_edge, %land.lhs.true.if.end9.sink.split_crit_edge
  %arrayidx.i.i29 = getelementptr %struct.netdev_queue, ptr %7, i32 %conv.i22
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i29) #8
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.else.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %if.then.if.end9_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %pkt, i32 noundef 1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_os_xmit_complete(ptr nocapture noundef readonly %padapter, ptr nocapture noundef %pxframe) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt = getelementptr inbounds %struct.xmit_frame, ptr %pxframe, i32 0, i32 2
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_mapping.i.i, align 8
  %wifi_spec.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13, i32 44
  %4 = ptrtoint ptr %wifi_spec.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wifi_spec.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %pnetdev4.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %6 = ptrtoint ptr %pnetdev4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pnetdev4.i, align 4
  %conv.i22.i = zext i16 %3 to i32
  %_tx.i.i23.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i23.i, align 128
  %state.i.i24.i = getelementptr %struct.netdev_queue, ptr %9, i32 %conv.i22.i, i32 13
  %10 = ptrtoint ptr %state.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i.i24.i, align 4
  %and1.i.i.i25.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i25.i)
  %tobool.i.i26.not.i = icmp eq i32 %and1.i.i.i25.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  br i1 %tobool.i.i26.not.i, label %if.then.i.rtw_os_pkt_complete.exit_crit_edge, label %land.lhs.true.i

if.then.i.rtw_os_pkt_complete.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_os_pkt_complete.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %hwxmits.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 21
  %12 = ptrtoint ptr %hwxmits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwxmits.i, align 8
  %accnt.i = getelementptr %struct.hw_xmit, ptr %13, i32 %conv.i22.i, i32 1
  %14 = ptrtoint ptr %accnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %accnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %15)
  %cmp.i = icmp slt i32 %15, 102
  br i1 %cmp.i, label %land.lhs.true.i.if.end9.sink.split.i_crit_edge, label %land.lhs.true.i.rtw_os_pkt_complete.exit_crit_edge

land.lhs.true.i.rtw_os_pkt_complete.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_os_pkt_complete.exit

land.lhs.true.i.if.end9.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.sink.split.i

if.else.i:                                        ; preds = %if.then
  br i1 %tobool.i.i26.not.i, label %if.else.i.rtw_os_pkt_complete.exit_crit_edge, label %if.else.i.if.end9.sink.split.i_crit_edge

if.else.i.if.end9.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.sink.split.i

if.else.i.rtw_os_pkt_complete.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_os_pkt_complete.exit

if.end9.sink.split.i:                             ; preds = %if.else.i.if.end9.sink.split.i_crit_edge, %land.lhs.true.i.if.end9.sink.split.i_crit_edge
  %arrayidx.i.i29.i = getelementptr %struct.netdev_queue, ptr %9, i32 %conv.i22.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i29.i) #8
  br label %rtw_os_pkt_complete.exit

rtw_os_pkt_complete.exit:                         ; preds = %if.end9.sink.split.i, %if.else.i.rtw_os_pkt_complete.exit_crit_edge, %land.lhs.true.i.rtw_os_pkt_complete.exit_crit_edge, %if.then.i.rtw_os_pkt_complete.exit_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %rtw_os_pkt_complete.exit, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pkt, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_os_xmit_schedule(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %padapter, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %xmitpriv) #8
  %call = tail call i32 @rtw_txframes_pending(ptr noundef nonnull %padapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 26, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then2.if.end3_crit_edge

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %xmit_tasklet = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 26
  tail call void @__tasklet_hi_schedule(ptr noundef %xmit_tasklet) #8
  br label %if.end3

if.end3:                                          ; preds = %if.then.i, %if.then2.if.end3_crit_edge, %if.end.if.end3_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_txframes_pending(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_xmit_entry(ptr noundef %pkt, ptr nocapture noundef readonly %pnetdev) local_unnamed_addr #1 align 64 {
entry:
  %pkt.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pkt, ptr %pkt.addr, align 4
  %add.ptr.i = getelementptr i8, ptr %pnetdev, i32 2304
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %call1 = tail call i32 @rtw_if_up(ptr noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.drop_packet_crit_edge, label %if.end

entry.drop_packet_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop_packet

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pkt.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pkt.addr, align 4
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %queue_mapping.i.i, align 8
  %wifi_spec.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 13, i32 44
  %7 = ptrtoint ptr %wifi_spec.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wifi_spec.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %hwxmits.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 9, i32 21
  %9 = ptrtoint ptr %hwxmits.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwxmits.i, align 8
  %idxprom.i = zext i16 %6 to i32
  %accnt.i = getelementptr %struct.hw_xmit, ptr %10, i32 %idxprom.i, i32 1
  %11 = ptrtoint ptr %accnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %accnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %12)
  %cmp.i = icmp sgt i32 %12, 102
  br i1 %cmp.i, label %if.then1.i, label %if.then.i.rtw_check_xmit_resource.exit_crit_edge

if.then.i.rtw_check_xmit_resource.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_check_xmit_resource.exit

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %pnetdev.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 37
  %13 = ptrtoint ptr %pnetdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pnetdev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %16, i32 %idxprom.i, i32 13
  br label %if.end11.sink.split.i

if.else.i:                                        ; preds = %if.end
  %free_xmitframe_cnt.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 9, i32 9
  %17 = ptrtoint ptr %free_xmitframe_cnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %free_xmitframe_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %18)
  %cmp2.i = icmp ult i32 %18, 5
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i.rtw_check_xmit_resource.exit_crit_edge

if.else.i.rtw_check_xmit_resource.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_check_xmit_resource.exit

if.then3.i:                                       ; preds = %if.else.i
  %pnetdev4.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 37
  %19 = ptrtoint ptr %pnetdev4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pnetdev4.i, align 4
  %conv.i = zext i16 %6 to i32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %22, i32 %conv.i, i32 13
  %23 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then3.i.if.end11.sink.split.i_crit_edge, label %if.then3.i.rtw_check_xmit_resource.exit_crit_edge

if.then3.i.rtw_check_xmit_resource.exit_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_check_xmit_resource.exit

if.then3.i.if.end11.sink.split.i_crit_edge:       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.sink.split.i

if.end11.sink.split.i:                            ; preds = %if.then3.i.if.end11.sink.split.i_crit_edge, %if.then1.i
  %state.i.sink.i = phi ptr [ %state.i.i.i, %if.then1.i ], [ %state.i.i, %if.then3.i.if.end11.sink.split.i_crit_edge ]
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.sink.i) #8
  br label %rtw_check_xmit_resource.exit

rtw_check_xmit_resource.exit:                     ; preds = %if.end11.sink.split.i, %if.then3.i.rtw_check_xmit_resource.exit_crit_edge, %if.else.i.rtw_check_xmit_resource.exit_crit_edge, %if.then.i.rtw_check_xmit_resource.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rtw_mc2u_disable to i32))
  %25 = load i32, ptr @rtw_mc2u_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool2.not = icmp eq i32 %25, 0
  br i1 %tobool2.not, label %land.lhs.true, label %rtw_check_xmit_resource.exit.if.end49_crit_edge

rtw_check_xmit_resource.exit.if.end49_crit_edge:  ; preds = %rtw_check_xmit_resource.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

land.lhs.true:                                    ; preds = %rtw_check_xmit_resource.exit
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fw_state.i, align 4
  %28 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool4.not = icmp eq i32 %28, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end49_crit_edge, label %land.lhs.true5

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

land.lhs.true5:                                   ; preds = %land.lhs.true
  %29 = ptrtoint ptr %pkt.addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pkt.addr, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 19
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i8 %34, label %land.lhs.true5.if.end49_crit_edge [
    i8 1, label %land.lhs.true7
    i8 51, label %land.lhs.true24
  ]

land.lhs.true5.if.end49_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %arrayidx9 = getelementptr i8, ptr %32, i32 1
  %36 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp11 = icmp eq i8 %37, 0
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true7.if.end49_crit_edge

land.lhs.true7.if.end49_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

land.lhs.true13:                                  ; preds = %land.lhs.true7
  %arrayidx15 = getelementptr i8, ptr %32, i32 2
  %38 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %39)
  %cmp17 = icmp eq i8 %39, 94
  br i1 %cmp17, label %land.lhs.true13.land.lhs.true36_crit_edge, label %land.lhs.true13.if.end49_crit_edge

land.lhs.true13.if.end49_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

land.lhs.true13.land.lhs.true36_crit_edge:        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36

land.lhs.true24:                                  ; preds = %land.lhs.true5
  %arrayidx26 = getelementptr i8, ptr %32, i32 1
  %40 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %41)
  %cmp28 = icmp eq i8 %41, 51
  br i1 %cmp28, label %land.lhs.true30, label %land.lhs.true24.if.end49_crit_edge

land.lhs.true24.if.end49_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

land.lhs.true30:                                  ; preds = %land.lhs.true24
  %arrayidx32 = getelementptr i8, ptr %32, i32 2
  %42 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %cmp34.not = icmp eq i8 %43, -1
  br i1 %cmp34.not, label %land.lhs.true30.if.end49_crit_edge, label %land.lhs.true30.land.lhs.true36_crit_edge

land.lhs.true30.land.lhs.true36_crit_edge:        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36

land.lhs.true30.if.end49_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

land.lhs.true36:                                  ; preds = %land.lhs.true30.land.lhs.true36_crit_edge, %land.lhs.true13.land.lhs.true36_crit_edge
  %44 = ptrtoint ptr %wifi_spec.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %wifi_spec.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp38 = icmp eq i8 %45, 0
  br i1 %cmp38, label %if.then40, label %land.lhs.true36.if.end49_crit_edge

land.lhs.true36.if.end49_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then40:                                        ; preds = %land.lhs.true36
  %free_xmitframe_cnt = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 9, i32 9
  %46 = ptrtoint ptr %free_xmitframe_cnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %free_xmitframe_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %47)
  %cmp41 = icmp ugt i32 %47, 64
  br i1 %cmp41, label %if.then43, label %if.then40.if.end49_crit_edge

if.then40.if.end49_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then43:                                        ; preds = %if.then40
  %call44 = tail call fastcc i32 @rtw_mlcst2unicst(ptr noundef %2, ptr noundef %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then43.if.end49_crit_edge, label %if.then43.exit_crit_edge

if.then43.exit_crit_edge:                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then43.if.end49_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.end49:                                         ; preds = %if.then43.if.end49_crit_edge, %if.then40.if.end49_crit_edge, %land.lhs.true36.if.end49_crit_edge, %land.lhs.true30.if.end49_crit_edge, %land.lhs.true24.if.end49_crit_edge, %land.lhs.true13.if.end49_crit_edge, %land.lhs.true7.if.end49_crit_edge, %land.lhs.true5.if.end49_crit_edge, %land.lhs.true.if.end49_crit_edge, %rtw_check_xmit_resource.exit.if.end49_crit_edge
  %call50 = call i32 @rtw_xmit(ptr noundef %2, ptr noundef nonnull %pkt.addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end49.drop_packet_crit_edge, label %if.end54

if.end49.drop_packet_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop_packet

if.end54:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %tx_pkts = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 9, i32 17
  %48 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %tx_pkts, align 8
  %inc = add i64 %49, 1
  store i64 %inc, ptr %tx_pkts, align 8
  br label %exit

drop_packet:                                      ; preds = %if.end49.drop_packet_crit_edge, %entry.drop_packet_crit_edge
  %tx_drop = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 9, i32 18
  %50 = ptrtoint ptr %tx_drop to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %tx_drop, align 8
  %inc55 = add i64 %51, 1
  store i64 %inc55, ptr %tx_drop, align 8
  %52 = ptrtoint ptr %pkt.addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pkt.addr, align 4
  call void @__dev_kfree_skb_any(ptr noundef %53, i32 noundef 1) #8
  br label %exit

exit:                                             ; preds = %drop_packet, %if.end54, %if.then43.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_if_up(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw_mlcst2unicst(ptr noundef %padapter, ptr noundef %skb) unnamed_addr #1 align 64 {
entry:
  %newskb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newskb) #8
  %0 = ptrtoint ptr %newskb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %newskb, align 4, !annotation !33
  %asoc_list_lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %asoc_list_lock) #8
  %asoc_list = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 10
  %1 = ptrtoint ptr %asoc_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %asoc_list, align 4
  %cmp.not57 = icmp eq ptr %asoc_list, %2
  br i1 %cmp.not57, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %tx_pkts = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 17
  %tx_drop = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 18
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %plist.058 = phi ptr [ %2, %while.body.lr.ph ], [ %4, %while.cond.backedge.while.body_crit_edge ]
  %3 = ptrtoint ptr %plist.058 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %plist.058, align 4
  %hwaddr = getelementptr i8, ptr %plist.058, i32 -2216
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %6, i32 6
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %hwaddr, ptr noundef dereferenceable(6) %arrayidx, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %while.body.while.cond.backedge_crit_edge, label %if.end

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %call2 = call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #8
  %7 = ptrtoint ptr %newskb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %newskb, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.body22, label %if.then4

if.then4:                                         ; preds = %if.end
  %data5 = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 19
  %8 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data5, align 4
  %10 = call ptr @memcpy(ptr %9, ptr %hwaddr, i32 6)
  %call8 = call i32 @rtw_xmit(ptr noundef %padapter, ptr noundef nonnull %newskb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.body, label %if.else

do.body:                                          ; preds = %if.then4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %11 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp11 = icmp ugt i32 %11, 4
  br i1 %cmp11, label %do.end, label %do.body.do.end18_crit_edge

do.body.do.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 191) #11
  br label %do.end18

do.end18:                                         ; preds = %do.end, %do.body.do.end18_crit_edge
  %12 = ptrtoint ptr %tx_drop to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_drop, align 8
  %inc = add i64 %13, 1
  store i64 %inc, ptr %tx_drop, align 8
  %14 = ptrtoint ptr %newskb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %newskb, align 4
  call void @__dev_kfree_skb_any(ptr noundef %15, i32 noundef 1) #8
  br label %while.cond.backedge

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tx_pkts, align 8
  %inc19 = add i64 %17, 1
  store i64 %inc19, ptr %tx_pkts, align 8
  br label %while.cond.backedge

do.body22:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %18 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp23 = icmp ugt i32 %18, 4
  br i1 %cmp23, label %do.end27, label %do.body22.do.end32_crit_edge

do.body22.do.end32_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32

do.end27:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef 198) #11
  br label %do.end32

do.end32:                                         ; preds = %do.end27, %do.body22.do.end32_crit_edge
  %19 = ptrtoint ptr %tx_drop to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tx_drop, align 8
  %inc34 = add i64 %20, 1
  store i64 %inc34, ptr %tx_drop, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #8
  br label %cleanup

while.cond.backedge:                              ; preds = %if.else, %do.end18, %while.body.while.cond.backedge_crit_edge
  %cmp.not = icmp eq ptr %asoc_list, %4
  br i1 %cmp.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %asoc_list_lock) #8
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end32
  %retval.0 = phi i32 [ 0, %do.end32 ], [ 1, %while.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newskb) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_xmit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/os_dep/xmit_linux.c", i32 24, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @_rtw_open_pktfile._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @_rtw_open_pktfile._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/r8188eu/os_dep/xmit_linux.c", i32 28, i32 3}
!8 = !{ptr @_rtw_open_pktfile._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @_rtw_open_pktfile._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/r8188eu/os_dep/xmit_linux.c", i32 82, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rtw_os_xmit_resource_alloc._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @rtw_os_xmit_resource_alloc._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/r8188eu/os_dep/xmit_linux.c", i32 191, i32 5}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rtw_mlcst2unicst._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @rtw_mlcst2unicst._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/r8188eu/os_dep/xmit_linux.c", i32 198, i32 4}
!22 = !{ptr @rtw_mlcst2unicst._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @rtw_mlcst2unicst._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"auto-init"}
