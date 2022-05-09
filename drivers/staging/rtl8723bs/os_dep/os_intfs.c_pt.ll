; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/os_dep/os_intfs.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/os_dep/os_intfs.c"
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
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.spinlock, %struct.registry_priv, %struct.eeprom_priv, ptr, i32, ptr, i32, %struct.hal_ops, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, %struct.rtw_wdev_priv, i32, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, i8, i32, i32, [6 x i8], ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.timer_list, %struct.atomic_t, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect_t, %struct.timer_list, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i8, i32 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.wlan_bcn_info }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.ndis_802_11_conf, i32, [16 x i8], %struct.wlan_phy_info, i32, [768 x i8] }
%struct.ndis_802_11_conf = type { i32, i32, i32, i32 }
%struct.wlan_phy_info = type { i8, i8, i8, i8 }
%struct.wlan_bcn_info = type { i8, i32, i32, i32, i16, i8 }
%struct.qos_priv = type { i32 }
%struct.ht_priv = type { i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.rt_link_detect_t = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.mlme_ext_priv = type { ptr, i8, %struct.atomic_t, i16, i16, i64, i64, i8, i8, i8, i8, i8, [14 x %struct.rt_channel_info], %struct.p2p_channels, [13 x i8], [13 x i8], [16 x i8], %struct.ss_res, %struct.mlme_ext_info, %struct.timer_list, %struct.timer_list, %struct.timer_list, i16, i32, i8, i8, i32, i64, i8, [9 x i32], [9 x i32], i32, i8, i8, i8, i8, i8, i16, i8 }
%struct.rt_channel_info = type { i8, i32 }
%struct.p2p_channels = type { [10 x %struct.p2p_reg_class], i32 }
%struct.p2p_reg_class = type { i8, [20 x i8], i32 }
%struct.ss_res = type { i32, i32, i32, i32, i8, i8, [9 x %struct.ndis_802_11_ssid], [51 x %struct.rtw_ieee80211_channel] }
%struct.rtw_ieee80211_channel = type { i16, i32 }
%struct.mlme_ext_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i8], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ADDBA_request, %struct.WMM_para_element, %struct.HT_caps_element, %struct.HT_info_element, %struct.wlan_bssid_ex, [32 x %struct.FW_Sta_Info] }
%struct.ADDBA_request = type <{ i8, i16, i16, i16 }>
%struct.WMM_para_element = type { i8, i8, [4 x %struct.AC_param] }
%struct.AC_param = type { i8, i8, i16 }
%struct.HT_caps_element = type { %union.anon.128 }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, i8, ptr, %struct.mutex }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, ptr }
%struct.io_priv = type { ptr, %struct.intf_hdl }
%struct.intf_hdl = type { ptr, ptr, %struct._io_ops }
%struct._io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, i32, ptr, i8, i8, i8, i64, i64, i64, i64, ptr, i8, [4 x i8], ptr, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, [2 x %struct.xmit_buf], i16, i32, %struct.mutex, %struct.submit_ctx, i8, %struct.spinlock }
%struct.xmit_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, %struct.__queue, i8, i8, i8, i8, i8, i16, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.131, i32 }
%union.anon.131 = type { ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.signal_stat = type { i8, i8, i32, i32 }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, i8, i8, i32, i32, i32, [32 x ptr], i16, i16, i16, %struct.wlan_acl_pool }
%struct.wlan_acl_pool = type { i32, i32, [16 x %struct.rtw_wlan_acl_node], %struct.__queue }
%struct.rtw_wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i8, i32, i32, [5 x %union.Keytype], [5 x %union.Keytype], [5 x %union.Keytype], %union.pn48, %union.pn48, i32, [6 x %union.Keytype], %union.pn48, %union.pn48, i32, i32, i32, i32, i32, i32, [512 x i8], i32, %struct.arc4_ctx, %struct.arc4_ctx, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.ndis_802_11_wep, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.rt_pmkid_list], i8, i8 }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.ndis_802_11_wep = type { i32, i32, i32, [16 x i8] }
%struct.rt_pmkid_list = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.registry_priv = type <{ i8, i8, i8, i8, %struct.ndis_802_11_ssid, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wlan_bssid_ex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }>
%struct.eeprom_priv = type { i8, i8, i8, i8, [6 x i8], i16, i16, [512 x i8], i8, i8, i8, i8, i32, [17 x i8], [50 x i8] }
%struct.hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rereg_nd_name_data = type { ptr, [16 x i8], i8 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.rtw_wdev_priv = type { ptr, ptr, ptr, %struct.spinlock, ptr, [17 x i8], i8, i8, %struct.rtw_wdev_invit_info, %struct.rtw_wdev_nego_info, i8, i8, i8 }
%struct.rtw_wdev_invit_info = type { i8, [6 x i8], i8, i8, i8, i8, i8, i8 }
%struct.rtw_wdev_nego_info = type { i8, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.dvobj_priv = type { ptr, i32, %struct.debug_priv, %struct.spinlock, [32 x i32], %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i32, ptr, %struct.cam_ctl_t, [32 x %struct.cam_entry_cache], [2 x i32], [4 x i32], [8 x i8], i8, %struct.atomic_t, %struct.atomic_t, %struct.pwrctrl_priv, %struct.rtw_traffic_statistics, %struct.sdio_data }
%struct.debug_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cam_ctl_t = type { %struct.spinlock, i64 }
%struct.cam_entry_cache = type { i16, [6 x i8], [16 x i8] }
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.work_struct, i8, %struct.work_struct, %struct.timer_list, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.timer_list, ptr, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i32] }
%struct.rtw_traffic_statistics = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32 }
%struct.sdio_data = type { i8, i8, i8, i32, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@__UNIQUE_ID_license345 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description346 = internal constant [40 x i8] c"description=Realtek Wireless Lan Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author347 = internal constant [35 x i8] c"author=Realtek Semiconductor Corp.\00", section ".modinfo", align 1
@__UNIQUE_ID_version348 = internal constant [52 x i8] c"version=v4.3.5.5_12290.20140916_BTCOEX20140507-4E40\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 128
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@rtw_ips_mode = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_ips_mode = internal constant %struct.kernel_param { ptr @___asan_gen_.40, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_ips_mode } }, section "__param", align 4
@__UNIQUE_ID_rtw_ips_modetype349 = internal constant [26 x i8] c"parmtype=rtw_ips_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rtw_ips_mode350 = internal constant [39 x i8] c"parm=rtw_ips_mode:The default IPS mode\00", section ".modinfo", align 1
@rtw_usb_rxagg_mode = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_rtw_usb_rxagg_mode = internal constant %struct.kernel_param { ptr @___asan_gen_.43, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_usb_rxagg_mode } }, section "__param", align 4
@__UNIQUE_ID_rtw_usb_rxagg_modetype351 = internal constant [32 x i8] c"parmtype=rtw_usb_rxagg_mode:int\00", section ".modinfo", align 1
@rtw_ht_enable = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@rtw_ant_num = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_ant_num = internal constant %struct.kernel_param { ptr @___asan_gen_.49, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_ant_num } }, section "__param", align 4
@__UNIQUE_ID_rtw_ant_numtype352 = internal constant [25 x i8] c"parmtype=rtw_ant_num:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rtw_ant_num353 = internal constant [40 x i8] c"parm=rtw_ant_num:Antenna number setting\00", section ".modinfo", align 1
@rtw_qos_opt_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_qos_opt_enable = internal constant %struct.kernel_param { ptr @___asan_gen_.52, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_qos_opt_enable } }, section "__param", align 4
@__UNIQUE_ID_rtw_qos_opt_enabletype354 = internal constant [32 x i8] c"parmtype=rtw_qos_opt_enable:int\00", section ".modinfo", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@ifname = internal global { ptr, [28 x i8] } { ptr @.str.29, [28 x i8] zeroinitializer }, align 32
@__param_ifname = internal constant %struct.kernel_param { ptr @___asan_gen_.55, ptr @__this_module, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @ifname } }, section "__param", align 4
@__UNIQUE_ID_ifnametype355 = internal constant [22 x i8] c"parmtype=ifname:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_ifname356 = internal constant [61 x i8] c"parm=ifname:The default name to allocate for first interface\00", section ".modinfo", align 1
@rtw_initmac = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_rtw_initmac = internal constant %struct.kernel_param { ptr @___asan_gen_.58, ptr @__this_module, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_initmac } }, section "__param", align 4
@__UNIQUE_ID_rtw_initmactype357 = internal constant [27 x i8] c"parmtype=rtw_initmac:charp\00", section ".modinfo", align 1
@rtw_channel_plan = internal global { i32, [28 x i8] } { i32 88, [28 x i8] zeroinitializer }, align 32
@__param_rtw_channel_plan = internal constant %struct.kernel_param { ptr @___asan_gen_.61, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_channel_plan } }, section "__param", align 4
@__UNIQUE_ID_rtw_channel_plantype358 = internal constant [30 x i8] c"parmtype=rtw_channel_plan:int\00", section ".modinfo", align 1
@rtw_chip_version = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_chip_version = internal constant %struct.kernel_param { ptr @___asan_gen_.64, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_chip_version } }, section "__param", align 4
@__UNIQUE_ID_rtw_chip_versiontype359 = internal constant [30 x i8] c"parmtype=rtw_chip_version:int\00", section ".modinfo", align 1
@rtw_rfintfs = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_rtw_rfintfs = internal constant %struct.kernel_param { ptr @___asan_gen_.67, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_rfintfs } }, section "__param", align 4
@__UNIQUE_ID_rtw_rfintfstype360 = internal constant [25 x i8] c"parmtype=rtw_rfintfs:int\00", section ".modinfo", align 1
@rtw_lbkmode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_lbkmode = internal constant %struct.kernel_param { ptr @___asan_gen_.70, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_lbkmode } }, section "__param", align 4
@__UNIQUE_ID_rtw_lbkmodetype361 = internal constant [25 x i8] c"parmtype=rtw_lbkmode:int\00", section ".modinfo", align 1
@rtw_network_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_network_mode = internal constant %struct.kernel_param { ptr @___asan_gen_.73, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_network_mode } }, section "__param", align 4
@__UNIQUE_ID_rtw_network_modetype362 = internal constant [30 x i8] c"parmtype=rtw_network_mode:int\00", section ".modinfo", align 1
@rtw_channel = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_channel = internal constant %struct.kernel_param { ptr @___asan_gen_.76, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_channel } }, section "__param", align 4
@__UNIQUE_ID_rtw_channeltype363 = internal constant [25 x i8] c"parmtype=rtw_channel:int\00", section ".modinfo", align 1
@rtw_wmm_enable = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_wmm_enable = internal constant %struct.kernel_param { ptr @___asan_gen_.79, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_wmm_enable } }, section "__param", align 4
@__UNIQUE_ID_rtw_wmm_enabletype364 = internal constant [28 x i8] c"parmtype=rtw_wmm_enable:int\00", section ".modinfo", align 1
@rtw_vrtl_carrier_sense = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_rtw_vrtl_carrier_sense = internal constant %struct.kernel_param { ptr @___asan_gen_.82, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_vrtl_carrier_sense } }, section "__param", align 4
@__UNIQUE_ID_rtw_vrtl_carrier_sensetype365 = internal constant [36 x i8] c"parmtype=rtw_vrtl_carrier_sense:int\00", section ".modinfo", align 1
@rtw_vcs_type = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_vcs_type = internal constant %struct.kernel_param { ptr @___asan_gen_.85, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_vcs_type } }, section "__param", align 4
@__UNIQUE_ID_rtw_vcs_typetype366 = internal constant [26 x i8] c"parmtype=rtw_vcs_type:int\00", section ".modinfo", align 1
@rtw_busy_thresh = internal global { i32, [28 x i8] } { i32 40, [28 x i8] zeroinitializer }, align 32
@__param_rtw_busy_thresh = internal constant %struct.kernel_param { ptr @___asan_gen_.88, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_busy_thresh } }, section "__param", align 4
@__UNIQUE_ID_rtw_busy_threshtype367 = internal constant [29 x i8] c"parmtype=rtw_busy_thresh:int\00", section ".modinfo", align 1
@__param_rtw_ht_enable = internal constant %struct.kernel_param { ptr @___asan_gen_.46, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_ht_enable } }, section "__param", align 4
@__UNIQUE_ID_rtw_ht_enabletype368 = internal constant [27 x i8] c"parmtype=rtw_ht_enable:int\00", section ".modinfo", align 1
@rtw_bw_mode = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_bw_mode = internal constant %struct.kernel_param { ptr @___asan_gen_.91, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_bw_mode } }, section "__param", align 4
@__UNIQUE_ID_rtw_bw_modetype369 = internal constant [25 x i8] c"parmtype=rtw_bw_mode:int\00", section ".modinfo", align 1
@rtw_ampdu_enable = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_ampdu_enable = internal constant %struct.kernel_param { ptr @___asan_gen_.94, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_ampdu_enable } }, section "__param", align 4
@__UNIQUE_ID_rtw_ampdu_enabletype370 = internal constant [30 x i8] c"parmtype=rtw_ampdu_enable:int\00", section ".modinfo", align 1
@rtw_rx_stbc = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_rx_stbc = internal constant %struct.kernel_param { ptr @___asan_gen_.97, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_rx_stbc } }, section "__param", align 4
@__UNIQUE_ID_rtw_rx_stbctype371 = internal constant [25 x i8] c"parmtype=rtw_rx_stbc:int\00", section ".modinfo", align 1
@rtw_ampdu_amsdu = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_ampdu_amsdu = internal constant %struct.kernel_param { ptr @___asan_gen_.100, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_ampdu_amsdu } }, section "__param", align 4
@__UNIQUE_ID_rtw_ampdu_amsdutype372 = internal constant [29 x i8] c"parmtype=rtw_ampdu_amsdu:int\00", section ".modinfo", align 1
@rtw_lowrate_two_xmit = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_lowrate_two_xmit = internal constant %struct.kernel_param { ptr @___asan_gen_.103, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_lowrate_two_xmit } }, section "__param", align 4
@__UNIQUE_ID_rtw_lowrate_two_xmittype373 = internal constant [34 x i8] c"parmtype=rtw_lowrate_two_xmit:int\00", section ".modinfo", align 1
@rtw_power_mgnt = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_power_mgnt = internal constant %struct.kernel_param { ptr @___asan_gen_.106, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_power_mgnt } }, section "__param", align 4
@__UNIQUE_ID_rtw_power_mgnttype374 = internal constant [28 x i8] c"parmtype=rtw_power_mgnt:int\00", section ".modinfo", align 1
@rtw_smart_ps = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_rtw_smart_ps = internal constant %struct.kernel_param { ptr @___asan_gen_.109, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_smart_ps } }, section "__param", align 4
@__UNIQUE_ID_rtw_smart_pstype375 = internal constant [26 x i8] c"parmtype=rtw_smart_ps:int\00", section ".modinfo", align 1
@rtw_low_power = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_low_power = internal constant %struct.kernel_param { ptr @___asan_gen_.112, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_low_power } }, section "__param", align 4
@__UNIQUE_ID_rtw_low_powertype376 = internal constant [27 x i8] c"parmtype=rtw_low_power:int\00", section ".modinfo", align 1
@rtw_wifi_spec = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_wifi_spec = internal constant %struct.kernel_param { ptr @___asan_gen_.115, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_wifi_spec } }, section "__param", align 4
@__UNIQUE_ID_rtw_wifi_spectype377 = internal constant [27 x i8] c"parmtype=rtw_wifi_spec:int\00", section ".modinfo", align 1
@rtw_antdiv_cfg = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_antdiv_cfg = internal constant %struct.kernel_param { ptr @___asan_gen_.118, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_antdiv_cfg } }, section "__param", align 4
@__UNIQUE_ID_rtw_antdiv_cfgtype378 = internal constant [28 x i8] c"parmtype=rtw_antdiv_cfg:int\00", section ".modinfo", align 1
@rtw_antdiv_type = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_antdiv_type = internal constant %struct.kernel_param { ptr @___asan_gen_.121, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_antdiv_type } }, section "__param", align 4
@__UNIQUE_ID_rtw_antdiv_typetype379 = internal constant [29 x i8] c"parmtype=rtw_antdiv_type:int\00", section ".modinfo", align 1
@rtw_hw_wps_pbc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_hw_wps_pbc = internal constant %struct.kernel_param { ptr @___asan_gen_.124, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_hw_wps_pbc } }, section "__param", align 4
@__UNIQUE_ID_rtw_hw_wps_pbctype380 = internal constant [28 x i8] c"parmtype=rtw_hw_wps_pbc:int\00", section ".modinfo", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@rtw_max_roaming_times = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_rtw_max_roaming_times = internal constant %struct.kernel_param { ptr @___asan_gen_.127, ptr @__this_module, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_max_roaming_times } }, section "__param", align 4
@__UNIQUE_ID_rtw_max_roaming_timestype381 = internal constant [36 x i8] c"parmtype=rtw_max_roaming_times:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rtw_max_roaming_times382 = internal constant [56 x i8] c"parm=rtw_max_roaming_times:The max roaming times to try\00", section ".modinfo", align 1
@rtw_mc2u_disable = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_mc2u_disable = internal constant %struct.kernel_param { ptr @___asan_gen_.130, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_mc2u_disable } }, section "__param", align 4
@__UNIQUE_ID_rtw_mc2u_disabletype383 = internal constant [30 x i8] c"parmtype=rtw_mc2u_disable:int\00", section ".modinfo", align 1
@rtw_80211d = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_80211d = internal constant %struct.kernel_param { ptr @___asan_gen_.133, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_80211d } }, section "__param", align 4
@__UNIQUE_ID_rtw_80211dtype384 = internal constant [24 x i8] c"parmtype=rtw_80211d:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rtw_80211d385 = internal constant [41 x i8] c"parm=rtw_80211d:Enable 802.11d mechanism\00", section ".modinfo", align 1
@rtw_notch_filter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_notch_filter = internal constant %struct.kernel_param { ptr @___asan_gen_.136, ptr @__this_module, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_notch_filter } }, section "__param", align 4
@__UNIQUE_ID_rtw_notch_filtertype386 = internal constant [31 x i8] c"parmtype=rtw_notch_filter:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rtw_notch_filter387 = internal constant [65 x i8] c"parm=rtw_notch_filter:0:Disable, 1:Enable, 2:Enable only for P2P\00", section ".modinfo", align 1
@rtw_hiq_filter = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rtw_hiq_filter = internal constant %struct.kernel_param { ptr @___asan_gen_.139, ptr @__this_module, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_hiq_filter } }, section "__param", align 4
@__UNIQUE_ID_rtw_hiq_filtertype388 = internal constant [29 x i8] c"parmtype=rtw_hiq_filter:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rtw_hiq_filter389 = internal constant [61 x i8] c"parm=rtw_hiq_filter:0:allow all, 1:allow special, 2:deny all\00", section ".modinfo", align 1
@rtw_tx_pwr_lmt_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_tx_pwr_lmt_enable = internal constant %struct.kernel_param { ptr @___asan_gen_.142, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_tx_pwr_lmt_enable } }, section "__param", align 4
@__UNIQUE_ID_rtw_tx_pwr_lmt_enabletype390 = internal constant [35 x i8] c"parmtype=rtw_tx_pwr_lmt_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rtw_tx_pwr_lmt_enable391 = internal constant [67 x i8] c"parm=rtw_tx_pwr_lmt_enable:0:Disable, 1:Enable, 2: Depend on efuse\00", section ".modinfo", align 1
@rtw_tx_pwr_by_rate = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rtw_tx_pwr_by_rate = internal constant %struct.kernel_param { ptr @___asan_gen_.145, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtw_tx_pwr_by_rate } }, section "__param", align 4
@__UNIQUE_ID_rtw_tx_pwr_by_ratetype392 = internal constant [32 x i8] c"parmtype=rtw_tx_pwr_by_rate:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rtw_tx_pwr_by_rate393 = internal constant [64 x i8] c"parm=rtw_tx_pwr_by_rate:0:Disable, 1:Enable, 2: Depend on efuse\00", section ".modinfo", align 1
@rtw_1d_to_queue = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 2, i16 3, i16 3, i16 2, i16 1, i16 1, i16 0, i16 0], [16 x i8] zeroinitializer }, align 32
@rtw_ndev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @rtw_ndev_notifier_call, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@rtw_init_netdev_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013dev_alloc_name, fail for %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtw_init_netdev_name\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/staging/rtl8723bs/os_dep/os_intfs.c\00", [52 x i8] zeroinitializer }, align 32
@rtw_init_netdev_name._entry_ptr = internal global ptr @rtw_init_netdev_name._entry, section ".printk_index", align 4
@rtw_init_netdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016pnetdev = %p\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw_init_netdev\00", [16 x i8] zeroinitializer }, align 32
@rtw_init_netdev._entry_ptr = internal global ptr @rtw_init_netdev._entry, section ".printk_index", align 4
@rtw_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @rtw_ndev_init, ptr @rtw_ndev_uninit, ptr @netdev_open, ptr @netdev_close, ptr @rtw_xmit_entry, ptr null, ptr @rtw_select_queue, ptr null, ptr null, ptr @rtw_net_set_mac_address, ptr null, ptr @rtw_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw_net_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RTW_XMIT_THREAD\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RTW_CMD_THREAD\00", [17 x i8] zeroinitializer }, align 32
@devobj_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&pdvobj->hw_init_mutex\00", [41 x i8] zeroinitializer }, align 32
@devobj_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&pdvobj->h2c_fwcmd_mutex\00", [39 x i8] zeroinitializer }, align 32
@devobj_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&pdvobj->setch_mutex\00", [43 x i8] zeroinitializer }, align 32
@devobj_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&pdvobj->setbw_mutex\00", [43 x i8] zeroinitializer }, align 32
@devobj_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&pdvobj->lock\00", [18 x i8] zeroinitializer }, align 32
@devobj_init.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&pdvobj->cam_ctl.lock\00", [42 x i8] zeroinitializer }, align 32
@rtw_init_drv_sw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&padapter->security_key_mutex\00", [34 x i8] zeroinitializer }, align 32
@rtw_dev_unload.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 1, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8723bs\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtw_dev_unload\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: driver in IPS-FWLPS\0A\00", [39 x i8] zeroinitializer }, align 32
@rtw_dev_unload.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 1, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: driver not in IPS\0A\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rtw_suspend_common.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 1, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw_suspend_common\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" suspend start\0A\00", [16 x i8] zeroinitializer }, align 32
@rtw_suspend_common.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 1, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtw suspend success in %d ms\0A\00", [34 x i8] zeroinitializer }, align 32
@rtw_resume_common.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 1, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtw_resume_common\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"resume start\0A\00", [18 x i8] zeroinitializer }, align 32
@rtw_resume_common.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.26, ptr @.str.2, ptr @.str.28, i8 1, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s:%d in %d ms\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlan%d\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(%s) state:%lu\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.rtw_ndev_notifier_call = private unnamed_addr constant [23 x i8] c"rtw_ndev_notifier_call\00", align 1
@rtw_ndev_init.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtw_ndev_init\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%s)\0A\00", [24 x i8] zeroinitializer }, align 32
@rtw_ndev_uninit.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.33, ptr @.str.2, ptr @.str.32, i8 0, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw_ndev_uninit\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ANY\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@rtw_suspend_normal.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 1, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw_suspend_normal\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: ### ERROR #### driver in IPS ####ERROR###!!!\0A\00", [46 x i8] zeroinitializer }, align 32
@rtw_suspend_free_assoc_resource.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 1, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtw_suspend_free_assoc_resource\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: fw_under_linking\0A\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private constant [13 x i8] c"rtw_ips_mode\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 36, i32 12 }
@___asan_gen_.43 = private constant [19 x i8] c"rtw_usb_rxagg_mode\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 44, i32 12 }
@___asan_gen_.46 = private constant [14 x i8] c"rtw_ht_enable\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 67, i32 5 }
@___asan_gen_.49 = private constant [12 x i8] c"rtw_ant_num\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 96, i32 12 }
@___asan_gen_.52 = private constant [19 x i8] c"rtw_qos_opt_enable\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 111, i32 12 }
@___asan_gen_.55 = private constant [7 x i8] c"ifname\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 114, i32 14 }
@___asan_gen_.58 = private constant [12 x i8] c"rtw_initmac\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 118, i32 7 }
@___asan_gen_.61 = private constant [17 x i8] c"rtw_channel_plan\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 94, i32 12 }
@___asan_gen_.64 = private constant [17 x i8] c"rtw_chip_version\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 17, i32 12 }
@___asan_gen_.67 = private constant [12 x i8] c"rtw_rfintfs\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 18, i32 12 }
@___asan_gen_.70 = private constant [12 x i8] c"rtw_lbkmode\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 19, i32 12 }
@___asan_gen_.73 = private constant [17 x i8] c"rtw_network_mode\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 22, i32 12 }
@___asan_gen_.76 = private constant [12 x i8] c"rtw_channel\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 24, i32 12 }
@___asan_gen_.79 = private constant [15 x i8] c"rtw_wmm_enable\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 59, i32 12 }
@___asan_gen_.82 = private constant [23 x i8] c"rtw_vrtl_carrier_sense\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 26, i32 12 }
@___asan_gen_.85 = private constant [13 x i8] c"rtw_vcs_type\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 27, i32 12 }
@___asan_gen_.88 = private constant [16 x i8] c"rtw_busy_thresh\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 50, i32 12 }
@___asan_gen_.91 = private constant [12 x i8] c"rtw_bw_mode\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 73, i32 12 }
@___asan_gen_.94 = private constant [17 x i8] c"rtw_ampdu_enable\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 74, i32 12 }
@___asan_gen_.97 = private constant [12 x i8] c"rtw_rx_stbc\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 75, i32 12 }
@___asan_gen_.100 = private constant [16 x i8] c"rtw_ampdu_amsdu\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 76, i32 12 }
@___asan_gen_.103 = private constant [21 x i8] c"rtw_lowrate_two_xmit\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 90, i32 12 }
@___asan_gen_.106 = private constant [15 x i8] c"rtw_power_mgnt\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 35, i32 12 }
@___asan_gen_.109 = private constant [13 x i8] c"rtw_smart_ps\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 40, i32 12 }
@___asan_gen_.112 = private constant [14 x i8] c"rtw_low_power\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 92, i32 12 }
@___asan_gen_.115 = private constant [14 x i8] c"rtw_wifi_spec\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 93, i32 12 }
@___asan_gen_.118 = private constant [15 x i8] c"rtw_antdiv_cfg\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 100, i32 12 }
@___asan_gen_.121 = private constant [16 x i8] c"rtw_antdiv_type\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 101, i32 12 }
@___asan_gen_.124 = private constant [15 x i8] c"rtw_hw_wps_pbc\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 105, i32 12 }
@___asan_gen_.127 = private constant [22 x i8] c"rtw_max_roaming_times\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 151, i32 13 }
@___asan_gen_.130 = private constant [17 x i8] c"rtw_mc2u_disable\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 107, i32 5 }
@___asan_gen_.133 = private constant [11 x i8] c"rtw_80211d\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 109, i32 12 }
@___asan_gen_.136 = private constant [17 x i8] c"rtw_notch_filter\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 160, i32 13 }
@___asan_gen_.139 = private constant [15 x i8] c"rtw_hiq_filter\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 166, i32 13 }
@___asan_gen_.142 = private constant [22 x i8] c"rtw_tx_pwr_lmt_enable\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 170, i32 12 }
@___asan_gen_.145 = private constant [19 x i8] c"rtw_tx_pwr_by_rate\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 171, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant [16 x i8] c"rtw_1d_to_queue\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 317, i32 18 }
@___asan_gen_.151 = private unnamed_addr constant [18 x i8] c"rtw_ndev_notifier\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 398, i32 30 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 445, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 464, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [15 x i8] c"rtw_netdev_ops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 430, i32 36 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 505, i32 25 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 509, i32 24 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 600, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 601, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 602, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 603, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 605, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 613, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 703, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1048, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1053, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1140, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1170, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1243, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1252, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 114, i32 23 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 392, i32 19 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 417, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 427, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 191, i32 34 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 261, i32 37 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1120, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.287 = private constant [47 x i8] c"../drivers/staging/rtl8723bs/os_dep/os_intfs.c\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1100, i32 3 }
@llvm.compiler.used = appending global [170 x ptr] [ptr @__UNIQUE_ID_author347, ptr @__UNIQUE_ID_description346, ptr @__UNIQUE_ID_ifname356, ptr @__UNIQUE_ID_ifnametype355, ptr @__UNIQUE_ID_license345, ptr @__UNIQUE_ID_rtw_80211d385, ptr @__UNIQUE_ID_rtw_80211dtype384, ptr @__UNIQUE_ID_rtw_ampdu_amsdutype372, ptr @__UNIQUE_ID_rtw_ampdu_enabletype370, ptr @__UNIQUE_ID_rtw_ant_num353, ptr @__UNIQUE_ID_rtw_ant_numtype352, ptr @__UNIQUE_ID_rtw_antdiv_cfgtype378, ptr @__UNIQUE_ID_rtw_antdiv_typetype379, ptr @__UNIQUE_ID_rtw_busy_threshtype367, ptr @__UNIQUE_ID_rtw_bw_modetype369, ptr @__UNIQUE_ID_rtw_channel_plantype358, ptr @__UNIQUE_ID_rtw_channeltype363, ptr @__UNIQUE_ID_rtw_chip_versiontype359, ptr @__UNIQUE_ID_rtw_hiq_filter389, ptr @__UNIQUE_ID_rtw_hiq_filtertype388, ptr @__UNIQUE_ID_rtw_ht_enabletype368, ptr @__UNIQUE_ID_rtw_hw_wps_pbctype380, ptr @__UNIQUE_ID_rtw_initmactype357, ptr @__UNIQUE_ID_rtw_ips_mode350, ptr @__UNIQUE_ID_rtw_ips_modetype349, ptr @__UNIQUE_ID_rtw_lbkmodetype361, ptr @__UNIQUE_ID_rtw_low_powertype376, ptr @__UNIQUE_ID_rtw_lowrate_two_xmittype373, ptr @__UNIQUE_ID_rtw_max_roaming_times382, ptr @__UNIQUE_ID_rtw_max_roaming_timestype381, ptr @__UNIQUE_ID_rtw_mc2u_disabletype383, ptr @__UNIQUE_ID_rtw_network_modetype362, ptr @__UNIQUE_ID_rtw_notch_filter387, ptr @__UNIQUE_ID_rtw_notch_filtertype386, ptr @__UNIQUE_ID_rtw_power_mgnttype374, ptr @__UNIQUE_ID_rtw_qos_opt_enabletype354, ptr @__UNIQUE_ID_rtw_rfintfstype360, ptr @__UNIQUE_ID_rtw_rx_stbctype371, ptr @__UNIQUE_ID_rtw_smart_pstype375, ptr @__UNIQUE_ID_rtw_tx_pwr_by_rate393, ptr @__UNIQUE_ID_rtw_tx_pwr_by_ratetype392, ptr @__UNIQUE_ID_rtw_tx_pwr_lmt_enable391, ptr @__UNIQUE_ID_rtw_tx_pwr_lmt_enabletype390, ptr @__UNIQUE_ID_rtw_usb_rxagg_modetype351, ptr @__UNIQUE_ID_rtw_vcs_typetype366, ptr @__UNIQUE_ID_rtw_vrtl_carrier_sensetype365, ptr @__UNIQUE_ID_rtw_wifi_spectype377, ptr @__UNIQUE_ID_rtw_wmm_enabletype364, ptr @__UNIQUE_ID_version348, ptr @__param_ifname, ptr @__param_rtw_80211d, ptr @__param_rtw_ampdu_amsdu, ptr @__param_rtw_ampdu_enable, ptr @__param_rtw_ant_num, ptr @__param_rtw_antdiv_cfg, ptr @__param_rtw_antdiv_type, ptr @__param_rtw_busy_thresh, ptr @__param_rtw_bw_mode, ptr @__param_rtw_channel, ptr @__param_rtw_channel_plan, ptr @__param_rtw_chip_version, ptr @__param_rtw_hiq_filter, ptr @__param_rtw_ht_enable, ptr @__param_rtw_hw_wps_pbc, ptr @__param_rtw_initmac, ptr @__param_rtw_ips_mode, ptr @__param_rtw_lbkmode, ptr @__param_rtw_low_power, ptr @__param_rtw_lowrate_two_xmit, ptr @__param_rtw_max_roaming_times, ptr @__param_rtw_mc2u_disable, ptr @__param_rtw_network_mode, ptr @__param_rtw_notch_filter, ptr @__param_rtw_power_mgnt, ptr @__param_rtw_qos_opt_enable, ptr @__param_rtw_rfintfs, ptr @__param_rtw_rx_stbc, ptr @__param_rtw_smart_ps, ptr @__param_rtw_tx_pwr_by_rate, ptr @__param_rtw_tx_pwr_lmt_enable, ptr @__param_rtw_usb_rxagg_mode, ptr @__param_rtw_vcs_type, ptr @__param_rtw_vrtl_carrier_sense, ptr @__param_rtw_wifi_spec, ptr @__param_rtw_wmm_enable, ptr @rtw_init_netdev._entry, ptr @rtw_init_netdev._entry_ptr, ptr @rtw_init_netdev_name._entry, ptr @rtw_init_netdev_name._entry_ptr, ptr @rtw_ips_mode, ptr @rtw_usb_rxagg_mode, ptr @rtw_ht_enable, ptr @rtw_ant_num, ptr @rtw_qos_opt_enable, ptr @ifname, ptr @rtw_initmac, ptr @rtw_channel_plan, ptr @rtw_chip_version, ptr @rtw_rfintfs, ptr @rtw_lbkmode, ptr @rtw_network_mode, ptr @rtw_channel, ptr @rtw_wmm_enable, ptr @rtw_vrtl_carrier_sense, ptr @rtw_vcs_type, ptr @rtw_busy_thresh, ptr @rtw_bw_mode, ptr @rtw_ampdu_enable, ptr @rtw_rx_stbc, ptr @rtw_ampdu_amsdu, ptr @rtw_lowrate_two_xmit, ptr @rtw_power_mgnt, ptr @rtw_smart_ps, ptr @rtw_low_power, ptr @rtw_wifi_spec, ptr @rtw_antdiv_cfg, ptr @rtw_antdiv_type, ptr @rtw_hw_wps_pbc, ptr @rtw_max_roaming_times, ptr @rtw_mc2u_disable, ptr @rtw_80211d, ptr @rtw_notch_filter, ptr @rtw_hiq_filter, ptr @rtw_tx_pwr_lmt_enable, ptr @rtw_tx_pwr_by_rate, ptr @rtw_1d_to_queue, ptr @rtw_ndev_notifier, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rtw_netdev_ops, ptr @.str.5, ptr @.str.6, ptr @devobj_init.__key, ptr @.str.7, ptr @devobj_init.__key.8, ptr @.str.9, ptr @devobj_init.__key.10, ptr @.str.11, ptr @devobj_init.__key.12, ptr @.str.13, ptr @devobj_init.__key.14, ptr @.str.15, ptr @devobj_init.__key.16, ptr @.str.17, ptr @rtw_init_drv_sw.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ips_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_usb_rxagg_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ht_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ant_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_qos_opt_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifname to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_initmac to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_channel_plan to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_chip_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_rfintfs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_lbkmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_network_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_channel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wmm_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_vrtl_carrier_sense to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_vcs_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_busy_thresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_bw_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ampdu_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_rx_stbc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ampdu_amsdu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_lowrate_two_xmit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_power_mgnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_smart_ps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_low_power to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wifi_spec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_antdiv_cfg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_antdiv_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_hw_wps_pbc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_max_roaming_times to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_mc2u_disable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_80211d to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_notch_filter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_hiq_filter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_tx_pwr_lmt_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_tx_pwr_by_rate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_1d_to_queue to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ndev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_netdev_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_netdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devobj_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devobj_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devobj_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devobj_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devobj_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devobj_init.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_init_drv_sw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @rtw_recv_select_queue(ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
define dso_local i32 @rtw_ndev_notifier_register() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @rtw_ndev_notifier) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_ndev_notifier_unregister() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @rtw_ndev_notifier) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_init_netdev_name(ptr noundef %pnetdev, ptr noundef %ifname) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dev_alloc_name(ptr noundef %pnetdev, ptr noundef %ifname) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %ifname) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_carrier_off(ptr noundef %pnetdev) #8
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_init_netdev(ptr noundef %old_padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %old_padapter, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @rtw_alloc_etherdev_with_old_priv(i32 noundef 17960, ptr noundef nonnull %old_padapter) #8
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call ptr @rtw_alloc_etherdev(i32 noundef 17960) #8
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %pnetdev.0 = phi ptr [ %call, %if.then ], [ %call1, %if.else ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %pnetdev.0) #11
  %tobool3.not = icmp eq ptr %pnetdev.0, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %pnetdev.0, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %pnetdev7 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %pnetdev7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pnetdev.0, ptr %pnetdev7, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %pnetdev.0, i32 0, i32 16
  %3 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @rtw_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %pnetdev.0, i32 0, i32 115
  %4 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 300, ptr %watchdog_timeo, align 4
  %registrypriv.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14
  %5 = load i32, ptr @rtw_chip_version, align 4
  %conv.i = trunc i32 %5 to i8
  %6 = ptrtoint ptr %registrypriv.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %registrypriv.i, align 4
  %7 = load i32, ptr @rtw_rfintfs, align 4
  %conv1.i = trunc i32 %7 to i8
  %rfintfs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %rfintfs.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv1.i, ptr %rfintfs.i, align 1
  %9 = load i32, ptr @rtw_lbkmode, align 4
  %conv2.i = trunc i32 %9 to i8
  %lbkmode.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 2
  %10 = ptrtoint ptr %lbkmode.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv2.i, ptr %lbkmode.i, align 2
  %11 = load i32, ptr @rtw_network_mode, align 4
  %conv3.i = trunc i32 %11 to i8
  %network_mode.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 5
  %12 = ptrtoint ptr %network_mode.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3.i, ptr %network_mode.i, align 4
  %ssid.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 4
  %ssid4.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 4, i32 1
  %13 = call ptr @memcpy(ptr %ssid4.i, ptr @.str.34, i32 3)
  %14 = ptrtoint ptr %ssid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %ssid.i, align 4
  %15 = load i32, ptr @rtw_channel, align 4
  %conv6.i = trunc i32 %15 to i8
  %channel.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 6
  %16 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv6.i, ptr %channel.i, align 1
  %wireless_mode.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 7
  %17 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 11, ptr %wireless_mode.i, align 2
  %18 = load i32, ptr @rtw_vrtl_carrier_sense, align 4
  %conv8.i = trunc i32 %18 to i8
  %vrtl_carrier_sense.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 11
  %19 = ptrtoint ptr %vrtl_carrier_sense.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv8.i, ptr %vrtl_carrier_sense.i, align 2
  %20 = load i32, ptr @rtw_vcs_type, align 4
  %conv9.i = trunc i32 %20 to i8
  %vcs_type.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 12
  %21 = ptrtoint ptr %vcs_type.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv9.i, ptr %vcs_type.i, align 1
  %rts_thresh.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 13
  %22 = ptrtoint ptr %rts_thresh.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 2347, ptr %rts_thresh.i, align 4
  %frag_thresh.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 14
  %23 = ptrtoint ptr %frag_thresh.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2346, ptr %frag_thresh.i, align 2
  %preamble.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 10
  %24 = ptrtoint ptr %preamble.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %preamble.i, align 1
  %scan_mode.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 8
  %25 = ptrtoint ptr %scan_mode.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %scan_mode.i, align 1
  %adhoc_tx_pwr.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 15
  %26 = ptrtoint ptr %adhoc_tx_pwr.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %adhoc_tx_pwr.i, align 4
  %soft_ap.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 16
  %27 = ptrtoint ptr %soft_ap.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %soft_ap.i, align 1
  %28 = load i32, ptr @rtw_smart_ps, align 4
  %conv16.i = trunc i32 %28 to i8
  %smart_ps.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 19
  %29 = ptrtoint ptr %smart_ps.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv16.i, ptr %smart_ps.i, align 4
  %check_fw_ps.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 70
  %30 = ptrtoint ptr %check_fw_ps.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %check_fw_ps.i, align 2
  %31 = load i32, ptr @rtw_power_mgnt, align 4
  %conv18.i = trunc i32 %31 to i8
  %power_mgnt.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 17
  %32 = ptrtoint ptr %power_mgnt.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv18.i, ptr %power_mgnt.i, align 2
  %33 = load i32, ptr @rtw_ips_mode, align 4
  %conv19.i = trunc i32 %33 to i8
  %ips_mode.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 18
  %34 = ptrtoint ptr %ips_mode.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv19.i, ptr %ips_mode.i, align 1
  %radio_enable.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 9
  %35 = ptrtoint ptr %radio_enable.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %radio_enable.i, align 4
  %long_retry_lmt.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 21
  %36 = ptrtoint ptr %long_retry_lmt.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 7, ptr %long_retry_lmt.i, align 2
  %short_retry_lmt.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 22
  %37 = ptrtoint ptr %short_retry_lmt.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 7, ptr %short_retry_lmt.i, align 1
  %38 = load i32, ptr @rtw_busy_thresh, align 4
  %conv23.i = trunc i32 %38 to i16
  %busy_thresh.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 23
  %39 = ptrtoint ptr %busy_thresh.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv23.i, ptr %busy_thresh.i, align 4
  %ack_policy.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 24
  %40 = ptrtoint ptr %ack_policy.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %ack_policy.i, align 2
  %software_encrypt.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 26
  %41 = ptrtoint ptr %software_encrypt.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %software_encrypt.i, align 4
  %software_decrypt.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 27
  %42 = ptrtoint ptr %software_decrypt.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %software_decrypt.i, align 1
  %acm_method.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 28
  %43 = ptrtoint ptr %acm_method.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %acm_method.i, align 2
  %44 = load i32, ptr @rtw_usb_rxagg_mode, align 4
  %conv28.i = trunc i32 %44 to i8
  %usb_rxagg_mode.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 20
  %45 = ptrtoint ptr %usb_rxagg_mode.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv28.i, ptr %usb_rxagg_mode.i, align 1
  %46 = load i32, ptr @rtw_wmm_enable, align 4
  %conv29.i = trunc i32 %46 to i8
  %wmm_enable.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 29
  %47 = ptrtoint ptr %wmm_enable.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv29.i, ptr %wmm_enable.i, align 1
  %uapsd_enable.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 30
  %48 = call ptr @memset(ptr %uapsd_enable.i, i32 0, i32 6)
  %49 = load i32, ptr @rtw_ht_enable, align 4
  %conv36.i = trunc i32 %49 to i8
  %ht_enable.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 37
  %50 = ptrtoint ptr %ht_enable.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv36.i, ptr %ht_enable.i, align 2
  %51 = load i32, ptr @rtw_bw_mode, align 4
  %conv37.i = trunc i32 %51 to i8
  %bw_mode.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 38
  %52 = ptrtoint ptr %bw_mode.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv37.i, ptr %bw_mode.i, align 1
  %53 = load i32, ptr @rtw_ampdu_enable, align 4
  %conv38.i = trunc i32 %53 to i8
  %ampdu_enable.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 39
  %54 = ptrtoint ptr %ampdu_enable.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv38.i, ptr %ampdu_enable.i, align 4
  %55 = load i32, ptr @rtw_rx_stbc, align 4
  %conv39.i = trunc i32 %55 to i8
  %rx_stbc.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 40
  %56 = ptrtoint ptr %rx_stbc.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv39.i, ptr %rx_stbc.i, align 1
  %57 = load i32, ptr @rtw_ampdu_amsdu, align 4
  %conv40.i = trunc i32 %57 to i8
  %ampdu_amsdu.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 41
  %58 = ptrtoint ptr %ampdu_amsdu.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv40.i, ptr %ampdu_amsdu.i, align 2
  %short_gi.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 42
  %59 = ptrtoint ptr %short_gi.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 15, ptr %short_gi.i, align 1
  %ldpc_cap.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 43
  %60 = ptrtoint ptr %ldpc_cap.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 51, ptr %ldpc_cap.i, align 4
  %stbc_cap.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 44
  %61 = ptrtoint ptr %stbc_cap.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 19, ptr %stbc_cap.i, align 1
  %beamform_cap.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 45
  %62 = ptrtoint ptr %beamform_cap.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 2, ptr %beamform_cap.i, align 2
  %63 = load i32, ptr @rtw_lowrate_two_xmit, align 4
  %conv45.i = trunc i32 %63 to i8
  %lowrate_two_xmit.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 46
  %64 = ptrtoint ptr %lowrate_two_xmit.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv45.i, ptr %lowrate_two_xmit.i, align 1
  %65 = load i32, ptr @rtw_low_power, align 4
  %conv46.i = trunc i32 %65 to i8
  %low_power.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 47
  %66 = ptrtoint ptr %low_power.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv46.i, ptr %low_power.i, align 4
  %67 = load i32, ptr @rtw_wifi_spec, align 4
  %conv47.i = trunc i32 %67 to i8
  %wifi_spec.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 48
  %68 = ptrtoint ptr %wifi_spec.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv47.i, ptr %wifi_spec.i, align 1
  %69 = load i32, ptr @rtw_channel_plan, align 4
  %conv48.i = trunc i32 %69 to i8
  %channel_plan.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 49
  %70 = ptrtoint ptr %channel_plan.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv48.i, ptr %channel_plan.i, align 2
  %71 = load i32, ptr @rtw_ant_num, align 4
  %conv49.i = trunc i32 %71 to i8
  %ant_num.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 50
  %72 = ptrtoint ptr %ant_num.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv49.i, ptr %ant_num.i, align 1
  %accept_addba_req.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 51
  %73 = ptrtoint ptr %accept_addba_req.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %accept_addba_req.i, align 4
  %74 = load i32, ptr @rtw_antdiv_cfg, align 4
  %conv50.i = trunc i32 %74 to i8
  %antdiv_cfg.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 52
  %75 = ptrtoint ptr %antdiv_cfg.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv50.i, ptr %antdiv_cfg.i, align 1
  %76 = load i32, ptr @rtw_antdiv_type, align 4
  %conv51.i = trunc i32 %76 to i8
  %antdiv_type.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 53
  %77 = ptrtoint ptr %antdiv_type.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv51.i, ptr %antdiv_type.i, align 2
  %78 = load i32, ptr @rtw_hw_wps_pbc, align 4
  %conv52.i = trunc i32 %78 to i8
  %hw_wps_pbc.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 57
  %79 = ptrtoint ptr %hw_wps_pbc.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv52.i, ptr %hw_wps_pbc.i, align 2
  %80 = load i32, ptr @rtw_max_roaming_times, align 4
  %conv53.i = trunc i32 %80 to i8
  %max_roaming_times.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 58
  %81 = ptrtoint ptr %max_roaming_times.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv53.i, ptr %max_roaming_times.i, align 1
  %82 = load i32, ptr @rtw_80211d, align 4
  %conv54.i = trunc i32 %82 to i8
  %enable80211d.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 59
  %83 = ptrtoint ptr %enable80211d.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv54.i, ptr %enable80211d.i, align 4
  %ifname.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 60
  %84 = load ptr, ptr @ifname, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ifname.i, i32 noundef 16, ptr noundef nonnull @.str.35, ptr noundef %84) #8
  %85 = load i32, ptr @rtw_notch_filter, align 4
  %conv56.i = trunc i32 %85 to i8
  %notch_filter.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 61
  %86 = ptrtoint ptr %notch_filter.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv56.i, ptr %notch_filter.i, align 1
  %87 = load i32, ptr @rtw_tx_pwr_lmt_enable, align 4
  %conv57.i = trunc i32 %87 to i8
  %RegEnableTxPowerLimit.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 62
  %88 = ptrtoint ptr %RegEnableTxPowerLimit.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv57.i, ptr %RegEnableTxPowerLimit.i, align 2
  %89 = load i32, ptr @rtw_tx_pwr_by_rate, align 4
  %conv58.i = trunc i32 %89 to i8
  %RegEnableTxPowerByRate.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 63
  %90 = ptrtoint ptr %RegEnableTxPowerByRate.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv58.i, ptr %RegEnableTxPowerByRate.i, align 1
  %RegPowerBase.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 64
  %91 = ptrtoint ptr %RegPowerBase.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 14, ptr %RegPowerBase.i, align 4
  %TxBBSwing_2G.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 66
  %92 = ptrtoint ptr %TxBBSwing_2G.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -1, ptr %TxBBSwing_2G.i, align 2
  %bEn_RFE.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 68
  %93 = ptrtoint ptr %bEn_RFE.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %bEn_RFE.i, align 4
  %RFE_Type.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 69
  %94 = ptrtoint ptr %RFE_Type.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 64, ptr %RFE_Type.i, align 1
  %95 = load i32, ptr @rtw_qos_opt_enable, align 4
  %conv59.i = trunc i32 %95 to i8
  %qos_opt_enable.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 71
  %96 = ptrtoint ptr %qos_opt_enable.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv59.i, ptr %qos_opt_enable.i, align 1
  %97 = load i32, ptr @rtw_hiq_filter, align 4
  %conv60.i = trunc i32 %97 to i8
  %hiq_filter.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 72
  %98 = ptrtoint ptr %hiq_filter.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv60.i, ptr %hiq_filter.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end.cleanup_crit_edge
  ret ptr %pnetdev.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_etherdev_with_old_priv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_etherdev(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_unregister_netdevs(ptr nocapture noundef readonly %dvobj) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %padapters = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 13
  %0 = ptrtoint ptr %padapters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %padapters, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pnetdev1 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %pnetdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pnetdev1, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  %tobool2.not = icmp eq ptr %3, null
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_netdev(ptr noundef nonnull %3) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %rtw_wdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 47
  %6 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtw_wdev, align 4
  tail call void @rtw_wdev_unregister(ptr noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_wdev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_start_drv_threads(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @rtw_xmit_thread, ptr noundef %padapter, i32 noundef -1, ptr noundef nonnull @.str.5) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @wake_up_process(ptr noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %xmitThread = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 33
  %0 = ptrtoint ptr %xmitThread to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %xmitThread, align 8
  %call8 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @rtw_cmd_thread, ptr noundef %padapter, i32 noundef -1, ptr noundef nonnull @.str.6) #8
  %cmp.i30 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.end12.thread, label %if.else

if.end12.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cmdThread32 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 31
  %1 = ptrtoint ptr %cmdThread32 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8, ptr %cmdThread32, align 8
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %not.cmp.i = xor i1 %cmp.i, true
  %spec.select = zext i1 %not.cmp.i to i32
  %call11 = tail call i32 @wake_up_process(ptr noundef %call8) #8
  %cmdThread = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 31
  %2 = ptrtoint ptr %cmdThread to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %cmdThread, align 8
  %terminate_cmdthread_comp = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6, i32 1
  tail call void @wait_for_completion(ptr noundef %terminate_cmdthread_comp) #8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end12.thread
  %_status.1 = phi i32 [ %spec.select, %if.else ], [ 0, %if.end12.thread ]
  tail call void @rtw_hal_start_thread(ptr noundef %padapter) #8
  ret i32 %_status.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_xmit_thread(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_cmd_thread(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_start_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_stop_drv_threads(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw_stop_cmd_thread(ptr noundef %padapter) #8
  %xmit_comp = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 1
  tail call void @complete(ptr noundef %xmit_comp) #8
  %terminate_xmitthread_comp = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 2
  tail call void @wait_for_completion(ptr noundef %terminate_xmitthread_comp) #8
  tail call void @rtw_hal_stop_thread(ptr noundef %padapter) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_stop_cmd_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_stop_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devobj_init() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @_rtw_zmalloc(i32 noundef 2120) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hw_init_mutex = getelementptr inbounds %struct.dvobj_priv, ptr %call, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %hw_init_mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @devobj_init.__key) #8
  %h2c_fwcmd_mutex = getelementptr inbounds %struct.dvobj_priv, ptr %call, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %h2c_fwcmd_mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @devobj_init.__key.8) #8
  %setch_mutex = getelementptr inbounds %struct.dvobj_priv, ptr %call, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %setch_mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @devobj_init.__key.10) #8
  %setbw_mutex = getelementptr inbounds %struct.dvobj_priv, ptr %call, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %setbw_mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @devobj_init.__key.12) #8
  %lock = getelementptr inbounds %struct.dvobj_priv, ptr %call, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @devobj_init.__key.14, i16 noundef signext 3) #8
  %arrayidx = getelementptr %struct.dvobj_priv, ptr %call, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %arrayidx, align 4
  %processing_dev_remove = getelementptr inbounds %struct.dvobj_priv, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %processing_dev_remove to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %processing_dev_remove, align 4
  %disable_func = getelementptr inbounds %struct.dvobj_priv, ptr %call, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %disable_func, i32 noundef 4) #8
  %2 = ptrtoint ptr %disable_func to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %disable_func, align 4
  %cam_ctl = getelementptr inbounds %struct.dvobj_priv, ptr %call, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %cam_ctl, ptr noundef nonnull @.str.17, ptr noundef nonnull @devobj_init.__key.16, i16 noundef signext 3) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_zmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devobj_deinit(ptr noundef %pdvobj) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pdvobj, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hw_init_mutex = getelementptr inbounds %struct.dvobj_priv, ptr %pdvobj, i32 0, i32 5
  tail call void @mutex_destroy(ptr noundef %hw_init_mutex) #8
  %h2c_fwcmd_mutex = getelementptr inbounds %struct.dvobj_priv, ptr %pdvobj, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %h2c_fwcmd_mutex) #8
  %setch_mutex = getelementptr inbounds %struct.dvobj_priv, ptr %pdvobj, i32 0, i32 7
  tail call void @mutex_destroy(ptr noundef %setch_mutex) #8
  %setbw_mutex = getelementptr inbounds %struct.dvobj_priv, ptr %pdvobj, i32 0, i32 8
  tail call void @mutex_destroy(ptr noundef %setbw_mutex) #8
  tail call void @kfree(ptr noundef nonnull %pdvobj) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_reset_drv_sw(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  tail call void @rtw_hal_def_value_init(ptr noundef %padapter) #8
  %2 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj, align 4
  %disable_func.i = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 21
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %disable_func.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %disable_func.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %disable_func.i, align 4
  %and.i = and i32 %5, -3
  %6 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvobj, align 4
  %disable_func2.i = getelementptr inbounds %struct.dvobj_priv, ptr %7, i32 0, i32 21
  %call.i.i5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %disable_func2.i, i32 noundef 4) #8
  %8 = ptrtoint ptr %disable_func2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %and.i, ptr %disable_func2.i, align 4
  %9 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dvobj, align 4
  %disable_func.i19 = getelementptr inbounds %struct.dvobj_priv, ptr %10, i32 0, i32 21
  %call.i.i.i20 = tail call zeroext i1 @__kasan_check_read(ptr noundef %disable_func.i19, i32 noundef 4) #8
  %11 = ptrtoint ptr %disable_func.i19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %disable_func.i19, align 4
  %and.i21 = and i32 %12, -2
  %13 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dvobj, align 4
  %disable_func2.i22 = getelementptr inbounds %struct.dvobj_priv, ptr %14, i32 0, i32 21
  %call.i.i5.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %disable_func2.i22, i32 noundef 4) #8
  %15 = ptrtoint ptr %disable_func2.i22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %and.i21, ptr %disable_func2.i22, align 4
  %bLinkInfoDump = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 53
  %16 = ptrtoint ptr %bLinkInfoDump to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %bLinkInfoDump, align 1
  %tx_pkts = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 22
  %17 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %tx_pkts, align 8
  %rx_pkts = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 10
  %18 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %rx_pkts, align 8
  %bBusyTraffic = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 3
  %19 = ptrtoint ptr %bBusyTraffic to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %bBusyTraffic, align 4
  %TrafficTransitionCount = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 9
  %20 = ptrtoint ptr %TrafficTransitionCount to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %TrafficTransitionCount, align 2
  %LowPowerTransitionCount = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 10
  %21 = ptrtoint ptr %LowPowerTransitionCount to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %LowPowerTransitionCount, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw_state.i, align 4
  %and.i24 = and i32 %23, -2177
  store i32 %and.i24, ptr %fw_state.i, align 4
  %pwr_state_check_cnts = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 51
  %24 = ptrtoint ptr %pwr_state_check_cnts to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %pwr_state_check_cnts, align 4
  %sitesurvey_res = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17
  %25 = ptrtoint ptr %sitesurvey_res to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %sitesurvey_res, align 8
  %signal_stat_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 31
  %signal_stat_sampling_interval = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 32
  %26 = ptrtoint ptr %signal_stat_sampling_interval to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %signal_stat_sampling_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %mul.i = mul i32 %27, 100
  %div.i = udiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %28
  %call.i = tail call i32 @mod_timer(ptr noundef %signal_stat_timer, i32 noundef %add.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_def_value_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_init_drv_sw(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %securitypriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12
  %vrtl_carrier_sense.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 11
  %0 = ptrtoint ptr %vrtl_carrier_sense.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vrtl_carrier_sense.i, align 2
  %vcs_setting.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 18
  %2 = ptrtoint ptr %vcs_setting.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %vcs_setting.i, align 8
  %vcs_type.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 12
  %3 = ptrtoint ptr %vcs_type.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vcs_type.i, align 1
  %vcs.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 19
  %5 = ptrtoint ptr %vcs.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %vcs.i, align 1
  %vcs_type2.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 20
  %6 = ptrtoint ptr %vcs_type2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %4, ptr %vcs_type2.i, align 2
  %frag_thresh.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 14
  %7 = ptrtoint ptr %frag_thresh.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %frag_thresh.i, align 2
  %conv.i = zext i16 %8 to i32
  %frag_len.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 16
  %9 = ptrtoint ptr %frag_len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %frag_len.i, align 8
  %scan_mode.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 38
  %10 = ptrtoint ptr %scan_mode.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %scan_mode.i, align 4
  %ampdu_enable.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 33, i32 1
  %11 = ptrtoint ptr %ampdu_enable.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %ampdu_enable.i, align 1
  %binstallGrpkey.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 27
  %12 = ptrtoint ptr %binstallGrpkey.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %binstallGrpkey.i, align 4
  %software_encrypt.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 26
  %13 = ptrtoint ptr %software_encrypt.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %software_encrypt.i, align 4
  %conv3.i = zext i8 %14 to i32
  %sw_encrypt.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 32
  %15 = ptrtoint ptr %sw_encrypt.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv3.i, ptr %sw_encrypt.i, align 4
  %software_decrypt.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 27
  %16 = ptrtoint ptr %software_decrypt.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %software_decrypt.i, align 1
  %conv4.i = zext i8 %17 to i32
  %sw_decrypt.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 33
  %18 = ptrtoint ptr %sw_decrypt.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv4.i, ptr %sw_decrypt.i, align 8
  %19 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %securitypriv.i, align 8
  %dot11PrivacyAlgrthm.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 1
  %20 = ptrtoint ptr %dot11PrivacyAlgrthm.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %dot11PrivacyAlgrthm.i, align 4
  %dot11PrivacyKeyIndex.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 2
  %21 = ptrtoint ptr %dot11PrivacyKeyIndex.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %dot11PrivacyKeyIndex.i, align 8
  %dot118021XGrpPrivacy.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 6
  %22 = ptrtoint ptr %dot118021XGrpPrivacy.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %dot118021XGrpPrivacy.i, align 8
  %dot118021XGrpKeyid.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 7
  %23 = ptrtoint ptr %dot118021XGrpKeyid.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %dot118021XGrpKeyid.i, align 4
  %ndisauthtype.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 35
  %24 = ptrtoint ptr %ndisauthtype.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ndisauthtype.i, align 8
  %ndisencryptstatus.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 36
  %25 = ptrtoint ptr %ndisencryptstatus.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %ndisencryptstatus.i, align 4
  tail call void @rtw_init_registrypriv_dev_network(ptr noundef %padapter) #8
  tail call void @rtw_update_registrypriv_dev_network(ptr noundef %padapter) #8
  tail call void @rtw_hal_def_value_init(ptr noundef %padapter) #8
  %dvobj.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %26 = ptrtoint ptr %dvobj.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dvobj.i.i, align 4
  %disable_func.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %27, i32 0, i32 21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %disable_func.i.i, i32 noundef 4) #8
  %28 = ptrtoint ptr %disable_func.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %disable_func.i.i, align 4
  %and.i.i = and i32 %29, -3
  %30 = ptrtoint ptr %dvobj.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dvobj.i.i, align 4
  %disable_func2.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %31, i32 0, i32 21
  %call.i.i5.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %disable_func2.i.i, i32 noundef 4) #8
  %32 = ptrtoint ptr %disable_func2.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %and.i.i, ptr %disable_func2.i.i, align 4
  %33 = ptrtoint ptr %dvobj.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dvobj.i.i, align 4
  %disable_func.i37.i = getelementptr inbounds %struct.dvobj_priv, ptr %34, i32 0, i32 21
  %call.i.i.i38.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %disable_func.i37.i, i32 noundef 4) #8
  %35 = ptrtoint ptr %disable_func.i37.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %disable_func.i37.i, align 4
  %and.i39.i = and i32 %36, -2
  %37 = ptrtoint ptr %dvobj.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dvobj.i.i, align 4
  %disable_func2.i40.i = getelementptr inbounds %struct.dvobj_priv, ptr %38, i32 0, i32 21
  %call.i.i5.i41.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %disable_func2.i40.i, i32 noundef 4) #8
  %39 = ptrtoint ptr %disable_func2.i40.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %and.i39.i, ptr %disable_func2.i40.i, align 4
  %bLinkInfoDump.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 53
  %40 = ptrtoint ptr %bLinkInfoDump.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %bLinkInfoDump.i, align 1
  %bNotifyChannelChange.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 55
  %41 = ptrtoint ptr %bNotifyChannelChange.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %bNotifyChannelChange.i, align 1
  %fix_rate.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 58
  %42 = ptrtoint ptr %fix_rate.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %fix_rate.i, align 1
  %driver_ampdu_spacing.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 61
  %43 = ptrtoint ptr %driver_ampdu_spacing.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %driver_ampdu_spacing.i, align 4
  %driver_rx_ampdu_factor.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 62
  %44 = ptrtoint ptr %driver_rx_ampdu_factor.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %driver_rx_ampdu_factor.i, align 1
  tail call void @rtw_init_hal_com_default_value(ptr noundef %padapter) #8
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  %call = tail call i32 @rtw_init_cmd_priv(ptr noundef %cmdpriv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end:                                           ; preds = %entry
  %padapter2 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6, i32 13
  %45 = ptrtoint ptr %padapter2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %padapter, ptr %padapter2, align 4
  %evtpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 7
  %call3 = tail call i32 @rtw_init_evt_priv(ptr noundef %evtpriv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @rtw_init_mlme_priv(ptr noundef %padapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.end6.exit_crit_edge, label %if.end9

if.end6.exit_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end9:                                          ; preds = %if.end6
  tail call void @init_mlme_ext_priv(ptr noundef %padapter) #8
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %call10 = tail call i32 @_rtw_init_xmit_priv(ptr noundef %xmitpriv, ptr noundef %padapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.end9.exit_crit_edge, label %if.end13

if.end9.exit_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end13:                                         ; preds = %if.end9
  %recvpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10
  %call14 = tail call i32 @_rtw_init_recv_priv(ptr noundef %recvpriv, ptr noundef %padapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.end13.exit_crit_edge, label %do.body

if.end13.exit_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

do.body:                                          ; preds = %if.end13
  %security_key_mutex = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %security_key_mutex, ptr noundef nonnull @.str.18, ptr noundef nonnull @rtw_init_drv_sw.__key, i16 noundef signext 3) #8
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call19 = tail call i32 @_rtw_init_sta_priv(ptr noundef %stapriv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %do.body.exit_crit_edge, label %if.end22

do.body.exit_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end22:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %padapter24 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11, i32 8
  %46 = ptrtoint ptr %padapter24 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %padapter, ptr %padapter24, align 4
  %setband = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 17
  %47 = ptrtoint ptr %setband to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %setband, align 4
  %48 = ptrtoint ptr %fix_rate.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %fix_rate.i, align 1
  %call25 = tail call i32 @rtw_init_bcmc_stainfo(ptr noundef %padapter) #8
  tail call void @rtw_init_pwrctrl_priv(ptr noundef %padapter) #8
  tail call void @rtw_hal_dm_init(ptr noundef %padapter) #8
  br label %exit

exit:                                             ; preds = %if.end22, %do.body.exit_crit_edge, %if.end13.exit_crit_edge, %if.end9.exit_crit_edge, %if.end6.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %ret8.0 = phi i8 [ 1, %if.end22 ], [ 0, %entry.exit_crit_edge ], [ 0, %if.end.exit_crit_edge ], [ 0, %if.end6.exit_crit_edge ], [ 0, %if.end9.exit_crit_edge ], [ 0, %if.end13.exit_crit_edge ], [ 0, %do.body.exit_crit_edge ]
  ret i8 %ret8.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_init_hal_com_default_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_init_cmd_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_init_evt_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_init_mlme_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_mlme_ext_priv(ptr noundef) local_unnamed_addr #2

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
declare dso_local void @rtw_hal_dm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_cancel_all_timer(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %assoc_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 23
  %call = tail call i32 @del_timer_sync(ptr noundef %assoc_timer) #8
  %scan_to_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26
  %call2 = tail call i32 @del_timer_sync(ptr noundef %scan_to_timer) #8
  %dynamic_chk_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 35
  %call4 = tail call i32 @del_timer_sync(ptr noundef %dynamic_chk_timer) #8
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %pwr_state_check_timer = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 48
  %call5 = tail call i32 @del_timer_sync(ptr noundef %pwr_state_check_timer) #8
  %set_scan_deny_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 28
  %call7 = tail call i32 @del_timer_sync(ptr noundef %set_scan_deny_timer) #8
  tail call void @rtw_clear_scan_deny(ptr noundef %padapter) #8
  %signal_stat_timer = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 31
  %call8 = tail call i32 @del_timer_sync(ptr noundef %signal_stat_timer) #8
  tail call void @rtw_hal_dm_deinit(ptr noundef %padapter) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_clear_scan_deny(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_dm_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_free_drv_sw(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mlmeextpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5
  tail call void @free_mlme_ext_priv(ptr noundef %mlmeextpriv) #8
  %cmdpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6
  tail call void @rtw_free_cmd_priv(ptr noundef %cmdpriv) #8
  %evtpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 7
  tail call void @rtw_free_evt_priv(ptr noundef %evtpriv) #8
  %mlmepriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4
  tail call void @rtw_free_mlme_priv(ptr noundef %mlmepriv) #8
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  tail call void @_rtw_free_xmit_priv(ptr noundef %xmitpriv) #8
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %call = tail call i32 @_rtw_free_sta_priv(ptr noundef %stapriv) #8
  %recvpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10
  tail call void @_rtw_free_recv_priv(ptr noundef %recvpriv) #8
  tail call void @rtw_free_pwrctrl_priv(ptr noundef %padapter) #8
  tail call void @rtw_hal_free_data(ptr noundef %padapter) #8
  %rereg_nd_name_priv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 43
  %0 = ptrtoint ptr %rereg_nd_name_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rereg_nd_name_priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @free_netdev(ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %rereg_nd_name_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rereg_nd_name_priv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pbuddy_adapter = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 56
  %3 = ptrtoint ptr %pbuddy_adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pbuddy_adapter, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pbuddy_adapter8 = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 56
  %5 = ptrtoint ptr %pbuddy_adapter8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pbuddy_adapter8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
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
declare dso_local void @rtw_free_pwrctrl_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_free_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_drv_register_netdev(ptr noundef %if1) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %if1, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj1, align 4
  %padapters = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %padapters to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %padapters, align 4
  %ifname = getelementptr inbounds %struct.adapter, ptr %if1, i32 0, i32 14, i32 60
  %pnetdev1.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 41
  %4 = ptrtoint ptr %pnetdev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pnetdev1.i, align 8
  %call.i.i = tail call i32 @dev_alloc_name(ptr noundef %5, ptr noundef %ifname) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %rtw_init_netdev_name.exit.i, label %if.end.i

rtw_init_netdev_name.exit.i:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %ifname) #11
  br label %_rtw_drv_register_netdev.exit

if.end.i:                                         ; preds = %entry
  tail call void @netif_carrier_off(ptr noundef %5) #8
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 15, i32 4
  tail call void @dev_addr_mod(ptr noundef %5, i32 noundef 0, ptr noundef %mac_addr.i, i32 noundef 6) #8
  %call2.i = tail call i32 @register_netdev(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.not.i, label %if.end.i._rtw_drv_register_netdev.exit_crit_edge, label %if.then3.i

if.end.i._rtw_drv_register_netdev.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtw_drv_register_netdev.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = tail call zeroext i8 @rtw_free_drv_sw(ptr noundef %3) #8
  tail call void @rtw_free_netdev(ptr noundef %5) #8
  br label %_rtw_drv_register_netdev.exit

_rtw_drv_register_netdev.exit:                    ; preds = %if.then3.i, %if.end.i._rtw_drv_register_netdev.exit_crit_edge, %rtw_init_netdev_name.exit.i
  %retval.0.i = phi i32 [ 0, %if.then3.i ], [ 0, %rtw_init_netdev_name.exit.i ], [ 1, %if.end.i._rtw_drv_register_netdev.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netdev_open(ptr noundef %pnetdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %pnetdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %dvobj = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj, align 4
  %bInSuspend = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 41
  %4 = ptrtoint ptr %bInSuspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInSuspend, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_init_mutex = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 5
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %hw_init_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call fastcc i32 @_netdev_open(ptr noundef %pnetdev)
  %6 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvobj, align 4
  %hw_init_mutex8 = getelementptr inbounds %struct.dvobj_priv, ptr %7, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %hw_init_mutex8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ 0, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_netdev_open(ptr noundef %pnetdev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %pnetdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %dvobj = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj, align 4
  %netif_up = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 50
  %4 = ptrtoint ptr %netif_up to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %netif_up, align 4
  %ps_flag = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 52
  %5 = ptrtoint ptr %ps_flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ps_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %net_closed = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 49
  %7 = ptrtoint ptr %net_closed to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %net_closed, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bup = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 44
  %8 = ptrtoint ptr %bup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then2:                                         ; preds = %if.end
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %bDriverStopped, align 4
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  %11 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bSurpriseRemoved, align 8
  %bCardDisableWOHSM = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %bCardDisableWOHSM to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %bCardDisableWOHSM, align 4
  %call3 = tail call i32 @rtw_hal_init(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then2.netdev_open_error_crit_edge, label %if.end5

if.then2.netdev_open_error_crit_edge:             ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_open_error

if.end5:                                          ; preds = %if.then2
  %call6 = tail call i32 @rtw_start_drv_threads(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.end5.netdev_open_error_crit_edge, label %if.end9

if.end5.netdev_open_error_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_open_error

if.end9:                                          ; preds = %if.end5
  %intf_start = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 39
  %13 = ptrtoint ptr %intf_start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf_start, align 8
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %14(ptr noundef %1) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  tail call void @rtw_cfg80211_init_wiphy(ptr noundef %1) #8
  %15 = ptrtoint ptr %bup to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %bup, align 4
  %bips_processing = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 26
  %16 = ptrtoint ptr %bips_processing to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %bips_processing, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.end.if.end15_crit_edge
  %net_closed16 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 49
  %17 = ptrtoint ptr %net_closed16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %net_closed16, align 8
  %dynamic_chk_timer = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %18, 200
  %call.i = tail call i32 @mod_timer(ptr noundef %dynamic_chk_timer, i32 noundef %add.i) #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %pnetdev, i32 0, i32 103
  %19 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end15.if.then19_crit_edge, label %land.lhs.true.i

if.end15.if.then19_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

land.lhs.true.i:                                  ; preds = %if.end15
  %state.i13.i = getelementptr %struct.netdev_queue, ptr %20, i32 1, i32 13
  %23 = ptrtoint ptr %state.i13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i13.i, align 4
  %and1.i.i14.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i14.i)
  %tobool.i15.not.i = icmp eq i32 %and1.i.i14.i, 0
  br i1 %tobool.i15.not.i, label %land.lhs.true.i.if.then19_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.then19_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %state.i18.i = getelementptr %struct.netdev_queue, ptr %20, i32 2, i32 13
  %25 = ptrtoint ptr %state.i18.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i18.i, align 4
  %and1.i.i19.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i19.i)
  %tobool.i20.not.i = icmp eq i32 %and1.i.i19.i, 0
  br i1 %tobool.i20.not.i, label %land.lhs.true4.i.if.then19_crit_edge, label %rtw_netif_queue_stopped.exit

land.lhs.true4.i.if.then19_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

rtw_netif_queue_stopped.exit:                     ; preds = %land.lhs.true4.i
  %state.i23.i = getelementptr %struct.netdev_queue, ptr %20, i32 3, i32 13
  %27 = ptrtoint ptr %state.i23.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state.i23.i, align 4
  %and1.i.i24.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i24.i)
  %tobool18.not = icmp eq i32 %and1.i.i24.i, 0
  br i1 %tobool18.not, label %rtw_netif_queue_stopped.exit.if.then19_crit_edge, label %if.else

rtw_netif_queue_stopped.exit.if.then19_crit_edge: ; preds = %rtw_netif_queue_stopped.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

if.then19:                                        ; preds = %rtw_netif_queue_stopped.exit.if.then19_crit_edge, %land.lhs.true4.i.if.then19_crit_edge, %land.lhs.true.i.if.then19_crit_edge, %if.end15.if.then19_crit_edge
  %num_tx_queues.i.i = getelementptr inbounds %struct.net_device, ptr %pnetdev, i32 0, i32 104
  %29 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp4.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp4.not.i.i, label %if.then19.cleanup_crit_edge, label %if.then19.for.body.i.i_crit_edge

if.then19.for.body.i.i_crit_edge:                 ; preds = %if.then19
  br label %for.body.i.i

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then19.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then19.for.body.i.i_crit_edge ]
  %31 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %32, i32 %i.05.i.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #8
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %33 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_tx_queues.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %34
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.cleanup_crit_edge

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.else:                                          ; preds = %rtw_netif_queue_stopped.exit
  %num_tx_queues.i.i47 = getelementptr inbounds %struct.net_device, ptr %pnetdev, i32 0, i32 104
  %35 = ptrtoint ptr %num_tx_queues.i.i47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_tx_queues.i.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp4.not.i.i48 = icmp eq i32 %36, 0
  br i1 %cmp4.not.i.i48, label %if.else.cleanup_crit_edge, label %if.else.for.body.i.i54_crit_edge

if.else.for.body.i.i54_crit_edge:                 ; preds = %if.else
  br label %for.body.i.i54

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.i54:                                   ; preds = %for.body.i.i54.for.body.i.i54_crit_edge, %if.else.for.body.i.i54_crit_edge
  %i.05.i.i51 = phi i32 [ %inc.i.i52, %for.body.i.i54.for.body.i.i54_crit_edge ], [ 0, %if.else.for.body.i.i54_crit_edge ]
  %37 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i.i = getelementptr %struct.netdev_queue, ptr %38, i32 %i.05.i.i51
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i.i) #8
  %inc.i.i52 = add nuw i32 %i.05.i.i51, 1
  %39 = ptrtoint ptr %num_tx_queues.i.i47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_tx_queues.i.i47, align 4
  %cmp.i.i53 = icmp ult i32 %inc.i.i52, %40
  br i1 %cmp.i.i53, label %for.body.i.i54.for.body.i.i54_crit_edge, label %for.body.i.i54.cleanup_crit_edge

for.body.i.i54.cleanup_crit_edge:                 ; preds = %for.body.i.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.i54.for.body.i.i54_crit_edge:          ; preds = %for.body.i.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i54

netdev_open_error:                                ; preds = %if.end5.netdev_open_error_crit_edge, %if.then2.netdev_open_error_crit_edge
  %41 = ptrtoint ptr %bup to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %bup, align 4
  tail call void @netif_carrier_off(ptr noundef %pnetdev) #8
  tail call void @netif_tx_stop_all_queues(ptr noundef %pnetdev) #8
  br label %cleanup

cleanup:                                          ; preds = %netdev_open_error, %for.body.i.i54.cleanup_crit_edge, %if.else.cleanup_crit_edge, %for.body.i.i.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -1, %netdev_open_error ], [ 0, %if.then ], [ 0, %if.then19.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %for.body.i.i.cleanup_crit_edge ], [ 0, %for.body.i.i54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_ips_pwr_up(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %net_closed.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 49
  %0 = ptrtoint ptr %net_closed.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %net_closed.i, align 8
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %1 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %bDriverStopped.i, align 4
  %bCardDisableWOHSM.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 23
  %2 = ptrtoint ptr %bCardDisableWOHSM.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bCardDisableWOHSM.i, align 4
  %call.i = tail call i32 @rtw_hal_init(ptr noundef %padapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %entry.ips_netdrv_open.exit_crit_edge, label %if.end.i

entry.ips_netdrv_open.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ips_netdrv_open.exit

if.end.i:                                         ; preds = %entry
  %intf_start.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 39
  %3 = ptrtoint ptr %intf_start.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf_start.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then1.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %4(ptr noundef %padapter) #8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i.if.end3.i_crit_edge
  %dynamic_chk_timer.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %5, 200
  %call.i.i = tail call i32 @mod_timer(ptr noundef %dynamic_chk_timer.i, i32 noundef %add.i.i) #8
  br label %ips_netdrv_open.exit

ips_netdrv_open.exit:                             ; preds = %if.end3.i, %entry.ips_netdrv_open.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end3.i ], [ 0, %entry.ips_netdrv_open.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_ips_pwr_down(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bCardDisableWOHSM = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 23
  %0 = ptrtoint ptr %bCardDisableWOHSM to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %bCardDisableWOHSM, align 4
  %net_closed = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 49
  %1 = ptrtoint ptr %net_closed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %net_closed, align 8
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %2 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.rtw_ips_dev_unload.exit_crit_edge

entry.rtw_ips_dev_unload.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_ips_dev_unload.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @rtw_hal_deinit(ptr noundef %padapter) #8
  br label %rtw_ips_dev_unload.exit

rtw_ips_dev_unload.exit:                          ; preds = %if.then.i, %entry.rtw_ips_dev_unload.exit_crit_edge
  %4 = ptrtoint ptr %bCardDisableWOHSM to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bCardDisableWOHSM, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_ips_dev_unload(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %0 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @rtw_hal_deinit(ptr noundef %padapter) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_ndev_destructor(ptr nocapture noundef readonly %ndev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_dev_unload(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %bup = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 44
  %2 = ptrtoint ptr %bup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end60_crit_edge, label %if.then

entry.if.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then:                                          ; preds = %entry
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %4 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %bDriverStopped, align 4
  %ack_tx = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 42
  %5 = ptrtoint ptr %ack_tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ack_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  tail call void @rtw_ack_tx_done(ptr noundef %xmitpriv, i32 noundef 9) #8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %intf_stop = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 40
  %7 = ptrtoint ptr %intf_stop to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf_stop, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %8(ptr noundef %padapter) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %bInternalAutoSuspend = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 40
  %9 = ptrtoint ptr %bInternalAutoSuspend to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bInternalAutoSuspend, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not = icmp eq i8 %10, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtw_stop_cmd_thread(ptr noundef %padapter) #8
  %xmit_comp.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 1
  tail call void @complete(ptr noundef %xmit_comp.i) #8
  %terminate_xmitthread_comp.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 2
  tail call void @wait_for_completion(ptr noundef %terminate_xmitthread_comp.i) #8
  tail call void @rtw_hal_stop_thread(ptr noundef %padapter) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %cmdthd_running = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 6, i32 11
  %call.i.i88 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmdthd_running, i32 noundef 4) #8
  %11 = ptrtoint ptr %cmdthd_running to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %cmdthd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not89 = icmp eq i32 %12, 0
  br i1 %tobool12.not89, label %if.end11.while.end_crit_edge, label %if.else

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.else:                                          ; preds = %if.end11
  tail call void @msleep(i32 noundef 10) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmdthd_running, i32 noundef 4) #8
  %13 = ptrtoint ptr %cmdthd_running to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %cmdthd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp eq i32 %14, 0
  br i1 %tobool12.not, label %if.else.while.end_crit_edge, label %if.else.1

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.else.1:                                        ; preds = %if.else
  tail call void @msleep(i32 noundef 10) #8
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmdthd_running, i32 noundef 4) #8
  %15 = ptrtoint ptr %cmdthd_running to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %cmdthd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.not.1 = icmp eq i32 %16, 0
  br i1 %tobool12.not.1, label %if.else.1.while.end_crit_edge, label %if.else.2

if.else.1.while.end_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.else.2:                                        ; preds = %if.else.1
  tail call void @msleep(i32 noundef 10) #8
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmdthd_running, i32 noundef 4) #8
  %17 = ptrtoint ptr %cmdthd_running to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %cmdthd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.not.2 = icmp eq i32 %18, 0
  br i1 %tobool12.not.2, label %if.else.2.while.end_crit_edge, label %if.else.3

if.else.2.while.end_crit_edge:                    ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.else.3:                                        ; preds = %if.else.2
  tail call void @msleep(i32 noundef 10) #8
  %call.i.i.3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmdthd_running, i32 noundef 4) #8
  %19 = ptrtoint ptr %cmdthd_running to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %cmdthd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.not.3 = icmp eq i32 %20, 0
  br i1 %tobool12.not.3, label %if.else.3.while.end_crit_edge, label %if.else.4

if.else.3.while.end_crit_edge:                    ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.else.4:                                        ; preds = %if.else.3
  tail call void @msleep(i32 noundef 10) #8
  %call.i.i.4 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmdthd_running, i32 noundef 4) #8
  %21 = ptrtoint ptr %cmdthd_running to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %cmdthd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool12.not.4 = icmp eq i32 %22, 0
  br i1 %tobool12.not.4, label %if.else.4.while.end_crit_edge, label %if.else.5

if.else.4.while.end_crit_edge:                    ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.else.5:                                        ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 10) #8
  %call.i.i.5 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmdthd_running, i32 noundef 4) #8
  %23 = ptrtoint ptr %cmdthd_running to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %cmdthd_running, align 4
  br label %while.end

while.end:                                        ; preds = %if.else.5, %if.else.4.while.end_crit_edge, %if.else.3.while.end_crit_edge, %if.else.2.while.end_crit_edge, %if.else.1.while.end_crit_edge, %if.else.while.end_crit_edge, %if.end11.while.end_crit_edge
  %call16 = tail call zeroext i8 @rtw_hal_check_ips_status(ptr noundef %padapter) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call16)
  %tobool18.not = icmp eq i8 %call16, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %while.end.do.body22_crit_edge

while.end.do.body22_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

lor.lhs.false:                                    ; preds = %while.end
  %rf_pwrstate = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 53
  %25 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rf_pwrstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp19 = icmp eq i32 %26, 2
  br i1 %cmp19, label %lor.lhs.false.do.body22_crit_edge, label %do.body34

lor.lhs.false.do.body22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

do.body22:                                        ; preds = %lor.lhs.false.do.body22_crit_edge, %while.end.do.body22_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_dev_unload.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_dev_unload, %if.then27)) #8
          to label %do.end30 [label %if.then27], !srcloc !390

if.then27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %27 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_dev_unload.__UNIQUE_ID_ddebug396, ptr noundef %28, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %do.body22
  %dbg_dev_unload_inIPS_cnt = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2, i32 14
  %29 = ptrtoint ptr %dbg_dev_unload_inIPS_cnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dbg_dev_unload_inIPS_cnt, align 8
  %inc31 = add i32 %30, 1
  store i32 %inc31, ptr %dbg_dev_unload_inIPS_cnt, align 8
  tail call void @LeaveAllPowerSaveMode(ptr noundef %padapter) #8
  br label %if.end53

do.body34:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_dev_unload.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_dev_unload, %if.then46)) #8
          to label %if.end53 [label %if.then46], !srcloc !390

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %pnetdev47 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %31 = ptrtoint ptr %pnetdev47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pnetdev47, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_dev_unload.__UNIQUE_ID_ddebug397, ptr noundef %32, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20) #8
  br label %if.end53

if.end53:                                         ; preds = %if.then46, %do.body34, %do.end30
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %33 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool54.not = icmp eq i32 %34, 0
  br i1 %tobool54.not, label %if.then55, label %if.end53.if.end58_crit_edge

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %ips_mode_req = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 25
  %35 = ptrtoint ptr %ips_mode_req to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ips_mode_req, align 2
  tail call void @hal_btcoex_IpsNotify(ptr noundef %padapter, i8 noundef zeroext %36) #8
  %call56 = tail call i32 @rtw_hal_deinit(ptr noundef %padapter) #8
  %37 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %bSurpriseRemoved, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end53.if.end58_crit_edge
  %38 = ptrtoint ptr %bup to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %bup, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end58, %entry.if.end60_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_ack_tx_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_hal_check_ips_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @LeaveAllPowerSaveMode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_IpsNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_suspend_common(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_suspend_common.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_suspend_common, %if.then)) #8
          to label %do.end5 [label %if.then], !srcloc !390

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %3 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_suspend_common.__UNIQUE_ID_ddebug400, ptr noundef %4, ptr noundef nonnull @.str.24) #8
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %dbg_suspend_cnt = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2, i32 7
  %5 = ptrtoint ptr %dbg_suspend_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dbg_suspend_cnt, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %dbg_suspend_cnt, align 4
  %bInSuspend = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 41
  %7 = ptrtoint ptr %bInSuspend to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %bInSuspend, align 2
  %bips_processing = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 26
  %8 = ptrtoint ptr %bips_processing to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bips_processing, align 1, !range !391
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not70 = icmp eq i8 %9, 0
  br i1 %tobool6.not70, label %do.end5.while.end_crit_edge, label %do.end5.while.body_crit_edge

do.end5.while.body_crit_edge:                     ; preds = %do.end5
  br label %while.body

do.end5.while.end_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end5.while.body_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %10 = ptrtoint ptr %bips_processing to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bips_processing, align 1, !range !391
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end5.while.end_crit_edge
  %bup = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 44
  %12 = ptrtoint ptr %bup to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %while.end.if.then11_crit_edge, label %lor.lhs.false

while.end.if.then11_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

lor.lhs.false:                                    ; preds = %while.end
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %14 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %16 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not = icmp eq i32 %17, 0
  br i1 %tobool10.not, label %if.end13, label %lor.lhs.false9.if.then11_crit_edge

lor.lhs.false9.if.then11_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false9.if.then11_crit_edge, %lor.lhs.false.if.then11_crit_edge, %while.end.if.then11_crit_edge
  %dbg_suspend_error_cnt = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2, i32 6
  %18 = ptrtoint ptr %dbg_suspend_error_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dbg_suspend_error_cnt, align 8
  %inc12 = add i32 %19, 1
  store i32 %inc12, ptr %dbg_suspend_error_cnt, align 8
  br label %exit

if.end13:                                         ; preds = %lor.lhs.false9
  tail call void @rtw_ps_deny(ptr noundef %padapter, i32 noundef 4) #8
  %assoc_timer.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 23
  %call.i = tail call i32 @del_timer_sync(ptr noundef %assoc_timer.i) #8
  %scan_to_timer.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 26
  %call2.i = tail call i32 @del_timer_sync(ptr noundef %scan_to_timer.i) #8
  %dynamic_chk_timer.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 35
  %call4.i = tail call i32 @del_timer_sync(ptr noundef %dynamic_chk_timer.i) #8
  %20 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dvobj, align 4
  %pwr_state_check_timer.i = getelementptr inbounds %struct.dvobj_priv, ptr %21, i32 0, i32 22, i32 48
  %call5.i = tail call i32 @del_timer_sync(ptr noundef %pwr_state_check_timer.i) #8
  %set_scan_deny_timer.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 28
  %call7.i = tail call i32 @del_timer_sync(ptr noundef %set_scan_deny_timer.i) #8
  tail call void @rtw_clear_scan_deny(ptr noundef %padapter) #8
  %signal_stat_timer.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 31
  %call8.i = tail call i32 @del_timer_sync(ptr noundef %signal_stat_timer.i) #8
  tail call void @rtw_hal_dm_deinit(ptr noundef %padapter) #8
  tail call void @LeaveAllPowerSaveModeDirect(ptr noundef %padapter) #8
  tail call void @rtw_stop_cmd_thread(ptr noundef %padapter) #8
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw_state.i, align 4
  %24 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool15.not = icmp eq i32 %24, 0
  br i1 %tobool15.not, label %if.else, label %if.end13.if.end21.sink.split_crit_edge

if.end13.if.end21.sink.split_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.sink.split

if.else:                                          ; preds = %if.end13
  %25 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool18.not = icmp eq i32 %25, 0
  br i1 %tobool18.not, label %if.else.if.end21_crit_edge, label %if.else.if.end21.sink.split_crit_edge

if.else.if.end21.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.sink.split

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21.sink.split:                              ; preds = %if.else.if.end21.sink.split_crit_edge, %if.end13.if.end21.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.end13.if.end21.sink.split_crit_edge ], [ 1, %if.else.if.end21.sink.split_crit_edge ]
  tail call void @hal_btcoex_SuspendNotify(ptr noundef %padapter, i8 noundef zeroext %.sink) #8
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.else.if.end21_crit_edge
  tail call void @rtw_ps_deny_cancel(ptr noundef %padapter, i32 noundef 4) #8
  tail call fastcc void @rtw_suspend_normal(ptr noundef %padapter)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_suspend_common.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_suspend_common, %if.then35)) #8
          to label %exit [label %if.then35], !srcloc !390

if.then35:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %pnetdev36 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %26 = ptrtoint ptr %pnetdev36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pnetdev36, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %28, %2
  %call37 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_suspend_common.__UNIQUE_ID_ddebug401, ptr noundef %27, ptr noundef nonnull @.str.25, i32 noundef %call37) #8
  br label %exit

exit:                                             ; preds = %if.then35, %if.end21, %if.then11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_ps_deny(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @LeaveAllPowerSaveModeDirect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_SuspendNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_ps_deny_cancel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_suspend_normal(ptr noundef %padapter) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pnetdev1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %0 = ptrtoint ptr %pnetdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnetdev1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_carrier_off(ptr noundef nonnull %1) #8
  tail call void @netif_tx_stop_all_queues(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @rtw_suspend_free_assoc_resource(ptr noundef %padapter)
  %call2 = tail call zeroext i8 @rtw_hal_check_ips_status(ptr noundef %padapter) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call2)
  %tobool3.not = icmp eq i8 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.do.body6_crit_edge

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

lor.lhs.false:                                    ; preds = %if.end
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %2 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj, align 4
  %rf_pwrstate = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 53
  %4 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rf_pwrstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %lor.lhs.false.do.body6_crit_edge, label %lor.lhs.false.if.end16_crit_edge

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

lor.lhs.false.do.body6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

do.body6:                                         ; preds = %lor.lhs.false.do.body6_crit_edge, %if.end.do.body6_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_suspend_normal.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_suspend_normal, %if.then11)) #8
          to label %if.end16 [label %if.then11], !srcloc !390

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %pnetdev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pnetdev1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_suspend_normal.__UNIQUE_ID_ddebug399, ptr noundef %7, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %do.body6, %lor.lhs.false.if.end16_crit_edge
  tail call void @rtw_dev_unload(ptr noundef %padapter)
  %intf_deinit = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 36
  %8 = ptrtoint ptr %intf_deinit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf_deinit, align 4
  %tobool17.not = icmp eq ptr %9, null
  br i1 %tobool17.not, label %if.end16.if.end21_crit_edge, label %if.then18

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %dvobj20 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %10 = ptrtoint ptr %dvobj20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dvobj20, align 4
  tail call void %9(ptr noundef %11) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end16.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_resume_common(ptr noundef %padapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %1 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dvobj, align 4
  %pwrctl_priv = getelementptr inbounds %struct.dvobj_priv, ptr %2, i32 0, i32 22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_resume_common.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_resume_common, %if.then)) #8
          to label %do.end5 [label %if.then], !srcloc !390

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %3 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_resume_common.__UNIQUE_ID_ddebug402, ptr noundef %4, ptr noundef nonnull @.str.27) #8
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %tobool.not.i = icmp eq ptr %padapter, null
  br i1 %tobool.not.i, label %do.end5.rtw_resume_process_normal.exit_crit_edge, label %if.end.i

do.end5.rtw_resume_process_normal.exit_crit_edge: ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_resume_process_normal.exit

if.end.i:                                         ; preds = %do.end5
  %pnetdev1.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %5 = ptrtoint ptr %pnetdev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pnetdev1.i, align 8
  %7 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dvobj, align 4
  %intf_init.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 35
  %9 = ptrtoint ptr %intf_init.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf_init.i, align 8
  %tobool3.not.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call.i = tail call i32 %10(ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end7.i_crit_edge, label %land.lhs.true.i.rtw_resume_process_normal.exit_crit_edge

land.lhs.true.i.rtw_resume_process_normal.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_resume_process_normal.exit

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  tail call void @rtw_hal_disable_interrupt(ptr noundef nonnull %padapter) #8
  %intf_alloc_irq.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 37
  %11 = ptrtoint ptr %intf_alloc_irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf_alloc_irq.i, align 8
  %tobool8.not.i = icmp eq ptr %12, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end15.i_crit_edge, label %land.lhs.true9.i

if.end7.i.if.end15.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

land.lhs.true9.i:                                 ; preds = %if.end7.i
  %13 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dvobj, align 4
  %call12.i = tail call i32 %12(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 1
  br i1 %cmp13.not.i, label %land.lhs.true9.i.if.end15.i_crit_edge, label %land.lhs.true9.i.rtw_resume_process_normal.exit_crit_edge

land.lhs.true9.i.rtw_resume_process_normal.exit_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_resume_process_normal.exit

land.lhs.true9.i.if.end15.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.end15.i:                                       ; preds = %land.lhs.true9.i.if.end15.i_crit_edge, %if.end7.i.if.end15.i_crit_edge
  %15 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dvobj, align 4
  tail call void @rtw_hal_def_value_init(ptr noundef nonnull %padapter) #8
  %17 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dvobj, align 4
  %disable_func.i.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %18, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %disable_func.i.i.i, i32 noundef 4) #8
  %19 = ptrtoint ptr %disable_func.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %disable_func.i.i.i, align 4
  %and.i.i.i = and i32 %20, -3
  %21 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dvobj, align 4
  %disable_func2.i.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %22, i32 0, i32 21
  %call.i.i5.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %disable_func2.i.i.i, i32 noundef 4) #8
  %23 = ptrtoint ptr %disable_func2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %and.i.i.i, ptr %disable_func2.i.i.i, align 4
  %24 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dvobj, align 4
  %disable_func.i19.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %25, i32 0, i32 21
  %call.i.i.i20.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %disable_func.i19.i.i, i32 noundef 4) #8
  %26 = ptrtoint ptr %disable_func.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %disable_func.i19.i.i, align 4
  %and.i21.i.i = and i32 %27, -2
  %28 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dvobj, align 4
  %disable_func2.i22.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %29, i32 0, i32 21
  %call.i.i5.i23.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %disable_func2.i22.i.i, i32 noundef 4) #8
  %30 = ptrtoint ptr %disable_func2.i22.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %and.i21.i.i, ptr %disable_func2.i22.i.i, align 4
  %bLinkInfoDump.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 53
  %31 = ptrtoint ptr %bLinkInfoDump.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %bLinkInfoDump.i.i, align 1
  %tx_pkts.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 22
  %32 = ptrtoint ptr %tx_pkts.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %tx_pkts.i.i, align 8
  %rx_pkts.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 10
  %33 = ptrtoint ptr %rx_pkts.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %rx_pkts.i.i, align 8
  %bBusyTraffic.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 3
  %34 = ptrtoint ptr %bBusyTraffic.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %bBusyTraffic.i.i, align 4
  %TrafficTransitionCount.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 9
  %35 = ptrtoint ptr %TrafficTransitionCount.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %TrafficTransitionCount.i.i, align 2
  %LowPowerTransitionCount.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 10
  %36 = ptrtoint ptr %LowPowerTransitionCount.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %LowPowerTransitionCount.i.i, align 4
  %fw_state.i.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %fw_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fw_state.i.i.i, align 4
  %and.i24.i.i = and i32 %38, -2177
  store i32 %and.i24.i.i, ptr %fw_state.i.i.i, align 4
  %pwr_state_check_cnts.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %16, i32 0, i32 22, i32 51
  %39 = ptrtoint ptr %pwr_state_check_cnts.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %pwr_state_check_cnts.i.i, align 4
  %sitesurvey_res.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 17
  %40 = ptrtoint ptr %sitesurvey_res.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %sitesurvey_res.i.i, align 8
  %signal_stat_timer.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 31
  %signal_stat_sampling_interval.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 32
  %41 = ptrtoint ptr %signal_stat_sampling_interval.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %signal_stat_sampling_interval.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %mul.i.i.i = mul i32 %42, 100
  %div.i.i.i = udiv i32 %mul.i.i.i, 1000
  %add.i.i.i = add i32 %div.i.i.i, %43
  %call.i.i.i = tail call i32 @mod_timer(ptr noundef %signal_stat_timer.i.i, i32 noundef %add.i.i.i) #8
  %bkeepfwalive.i = getelementptr inbounds %struct.dvobj_priv, ptr %8, i32 0, i32 22, i32 57
  %44 = ptrtoint ptr %bkeepfwalive.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %bkeepfwalive.i, align 2
  %add.ptr.i.i.i.i = getelementptr i8, ptr %6, i32 2304
  %45 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %dvobj.i1.i = getelementptr inbounds %struct.adapter, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %dvobj.i1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dvobj.i1.i, align 4
  %hw_init_mutex.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %48, i32 0, i32 5
  %call1.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %hw_init_mutex.i.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %pm_netdev_open.exit.i, label %if.end15.i.if.then18.i_crit_edge

if.end15.i.if.then18.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18.i

pm_netdev_open.exit.i:                            ; preds = %if.end15.i
  %call3.i.i = tail call fastcc i32 @_netdev_open(ptr noundef %6) #8
  %49 = ptrtoint ptr %dvobj.i1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dvobj.i1.i, align 4
  %hw_init_mutex5.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %50, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %hw_init_mutex5.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp17.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %cmp17.not.i, label %if.end19.i, label %pm_netdev_open.exit.i.if.then18.i_crit_edge

pm_netdev_open.exit.i.if.then18.i_crit_edge:      ; preds = %pm_netdev_open.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18.i

if.then18.i:                                      ; preds = %pm_netdev_open.exit.i.if.then18.i_crit_edge, %if.end15.i.if.then18.i_crit_edge
  %dbg_resume_error_cnt.i = getelementptr inbounds %struct.dvobj_priv, ptr %8, i32 0, i32 2, i32 9
  %51 = ptrtoint ptr %dbg_resume_error_cnt.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dbg_resume_error_cnt.i, align 4
  %inc.i = add i32 %52, 1
  store i32 %inc.i, ptr %dbg_resume_error_cnt.i, align 4
  br label %rtw_resume_process_normal.exit

if.end19.i:                                       ; preds = %pm_netdev_open.exit.i
  tail call void @netif_device_attach(ptr noundef %6) #8
  tail call void @netif_carrier_on(ptr noundef %6) #8
  %arrayidx.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp20.not.i = icmp eq i32 %54, 0
  br i1 %cmp20.not.i, label %if.end19.i.if.end26.i_crit_edge, label %if.then21.i

if.end19.i.if.end26.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i = tail call ptr @find_vpid(i32 noundef %54) #8
  %call25.i = tail call i32 @kill_pid(ptr noundef %call24.i, i32 noundef 12, i32 noundef 1) #8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end26.i_crit_edge
  %55 = ptrtoint ptr %fw_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fw_state.i.i.i, align 4
  %57 = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool28.not.i = icmp eq i32 %57, 0
  br i1 %tobool28.not.i, label %if.else.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end26.i
  %roam_flags.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 6
  %58 = ptrtoint ptr %roam_flags.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %roam_flags.i, align 8
  %60 = and i8 %59, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool31.not.i = icmp eq i8 %60, 0
  br i1 %tobool31.not.i, label %if.then29.i.rtw_resume_process_normal.exit_crit_edge, label %if.then32.i

if.then29.i.rtw_resume_process_normal.exit_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_resume_process_normal.exit

if.then32.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtw_roaming(ptr noundef nonnull %padapter, ptr noundef null) #8
  br label %rtw_resume_process_normal.exit

if.else.i:                                        ; preds = %if.end26.i
  %61 = and i32 %56, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool35.not.i = icmp eq i32 %61, 0
  br i1 %tobool35.not.i, label %if.else.i.rtw_resume_process_normal.exit_crit_edge, label %if.then36.i

if.else.i.rtw_resume_process_normal.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_resume_process_normal.exit

if.then36.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtw_ap_restore_network(ptr noundef nonnull %padapter) #8
  br label %rtw_resume_process_normal.exit

rtw_resume_process_normal.exit:                   ; preds = %if.then36.i, %if.else.i.rtw_resume_process_normal.exit_crit_edge, %if.then32.i, %if.then29.i.rtw_resume_process_normal.exit_crit_edge, %if.then18.i, %land.lhs.true9.i.rtw_resume_process_normal.exit_crit_edge, %land.lhs.true.i.rtw_resume_process_normal.exit_crit_edge, %do.end5.rtw_resume_process_normal.exit_crit_edge
  tail call void @hal_btcoex_SuspendNotify(ptr noundef %padapter, i8 noundef zeroext 0) #8
  %tobool7.not = icmp eq ptr %pwrctl_priv, null
  br i1 %tobool7.not, label %rtw_resume_process_normal.exit.do.body11_crit_edge, label %if.then8

rtw_resume_process_normal.exit.do.body11_crit_edge: ; preds = %rtw_resume_process_normal.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

if.then8:                                         ; preds = %rtw_resume_process_normal.exit
  call void @__sanitizer_cov_trace_pc() #10
  %bInSuspend = getelementptr inbounds %struct.dvobj_priv, ptr %2, i32 0, i32 22, i32 41
  %62 = ptrtoint ptr %bInSuspend to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %bInSuspend, align 2
  br label %do.body11

do.body11:                                        ; preds = %if.then8, %rtw_resume_process_normal.exit.do.body11_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_resume_common.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_resume_common, %if.then23)) #8
          to label %do.end30 [label %if.then23], !srcloc !390

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %pnetdev24 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %63 = ptrtoint ptr %pnetdev24 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pnetdev24, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %65, %0
  %call25 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_resume_common.__UNIQUE_ID_ddebug403, ptr noundef %64, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef %call25) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then23, %do.body11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_ndev_notifier_call(ptr nocapture noundef readnone %nb, i32 noundef %state, ptr nocapture noundef readonly %ptr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  %ndo_do_ioctl = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %ndo_do_ioctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_do_ioctl, align 4
  %cmp.not = icmp eq ptr %5, @rtw_ioctl
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.rtw_ndev_notifier_call, ptr noundef %1, i32 noundef %state) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_ioctl(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_ndev_init(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_ndev_init.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_ndev_init, %if.then)) #8
          to label %do.end6 [label %if.then], !srcloc !390

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_ndev_init.__UNIQUE_ID_ddebug394, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, ptr noundef %3) #8
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %old_ifname = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 42
  %call10 = tail call ptr @strncpy(ptr noundef %old_ifname, ptr noundef %dev, i32 noundef 16)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_ndev_uninit(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_ndev_uninit.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_ndev_uninit, %if.then)) #8
          to label %do.end6 [label %if.then], !srcloc !390

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_ndev_uninit.__UNIQUE_ID_ddebug395, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef %3) #8
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_close(ptr noundef %pnetdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %pnetdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %dvobj = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj, align 4
  %bInternalAutoSuspend = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 40
  %4 = ptrtoint ptr %bInternalAutoSuspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInternalAutoSuspend, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  %rf_pwrstate = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 53
  %6 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rf_pwrstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then1, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %ps_flag = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 52
  %8 = ptrtoint ptr %ps_flag to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %ps_flag, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %net_closed = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 49
  %9 = ptrtoint ptr %net_closed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %net_closed, align 8
  %netif_up = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 50
  %10 = ptrtoint ptr %netif_up to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %netif_up, align 4
  %rf_pwrstate3 = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 53
  %11 = ptrtoint ptr %rf_pwrstate3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rf_pwrstate3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp4 = icmp eq i32 %12, 0
  br i1 %cmp4, label %if.then5, label %if.end2.if.end14_crit_edge

if.end2.if.end14_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then5:                                         ; preds = %if.end2
  %tobool6.not = icmp eq ptr %pnetdev, null
  br i1 %tobool6.not, label %if.then5.if.end12_crit_edge, label %if.then7

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then7:                                         ; preds = %if.then5
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %pnetdev, i32 0, i32 103
  %13 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then7.if.then10_crit_edge, label %land.lhs.true.i

if.then7.if.then10_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

land.lhs.true.i:                                  ; preds = %if.then7
  %state.i13.i = getelementptr %struct.netdev_queue, ptr %14, i32 1, i32 13
  %17 = ptrtoint ptr %state.i13.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i13.i, align 4
  %and1.i.i14.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i14.i)
  %tobool.i15.not.i = icmp eq i32 %and1.i.i14.i, 0
  br i1 %tobool.i15.not.i, label %land.lhs.true.i.if.then10_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.then10_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %state.i18.i = getelementptr %struct.netdev_queue, ptr %14, i32 2, i32 13
  %19 = ptrtoint ptr %state.i18.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i18.i, align 4
  %and1.i.i19.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i19.i)
  %tobool.i20.not.i = icmp eq i32 %and1.i.i19.i, 0
  br i1 %tobool.i20.not.i, label %land.lhs.true4.i.if.then10_crit_edge, label %rtw_netif_queue_stopped.exit

land.lhs.true4.i.if.then10_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

rtw_netif_queue_stopped.exit:                     ; preds = %land.lhs.true4.i
  %state.i23.i = getelementptr %struct.netdev_queue, ptr %14, i32 3, i32 13
  %21 = ptrtoint ptr %state.i23.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i23.i, align 4
  %and1.i.i24.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i24.i)
  %tobool9.not = icmp eq i32 %and1.i.i24.i, 0
  br i1 %tobool9.not, label %rtw_netif_queue_stopped.exit.if.then10_crit_edge, label %rtw_netif_queue_stopped.exit.if.end12_crit_edge

rtw_netif_queue_stopped.exit.if.end12_crit_edge:  ; preds = %rtw_netif_queue_stopped.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

rtw_netif_queue_stopped.exit.if.then10_crit_edge: ; preds = %rtw_netif_queue_stopped.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.then10:                                        ; preds = %rtw_netif_queue_stopped.exit.if.then10_crit_edge, %land.lhs.true4.i.if.then10_crit_edge, %land.lhs.true.i.if.then10_crit_edge, %if.then7.if.then10_crit_edge
  tail call void @netif_tx_stop_all_queues(ptr noundef nonnull %pnetdev) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %rtw_netif_queue_stopped.exit.if.end12_crit_edge, %if.then5.if.end12_crit_edge
  tail call void @LeaveAllPowerSaveMode(ptr noundef %1) #8
  %call13 = tail call zeroext i8 @rtw_disassoc_cmd(ptr noundef %1, i32 noundef 500, i1 noundef zeroext false) #8
  tail call void @rtw_indicate_disconnect(ptr noundef %1) #8
  tail call void @rtw_free_assoc_resources(ptr noundef %1, i32 noundef 1) #8
  tail call void @rtw_free_network_queue(ptr noundef %1, i8 noundef zeroext 1) #8
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end2.if.end14_crit_edge
  tail call void @rtw_scan_abort(ptr noundef %1) #8
  %bandroid_scan = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 10
  %23 = ptrtoint ptr %bandroid_scan to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %bandroid_scan, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_xmit_entry(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @rtw_select_queue(ptr nocapture noundef readonly %dev, ptr nocapture noundef %skb, ptr nocapture noundef readnone %sb_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %2 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %priority.i, align 4
  %4 = and i32 %3, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %5 = icmp eq i32 %4, 256
  br i1 %5, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_classify8021d.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
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
  %acm_mask = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 36
  %16 = ptrtoint ptr %acm_mask to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %acm_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.not = icmp eq i8 %17, 0
  br i1 %cmp.not, label %rtw_classify8021d.exit.if.end_crit_edge, label %if.then

rtw_classify8021d.exit.if.end_crit_edge:          ; preds = %rtw_classify8021d.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %rtw_classify8021d.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv5 = trunc i32 %retval.0.i to i8
  %call6 = tail call zeroext i8 @qos_acm(i8 noundef zeroext %17, i8 noundef zeroext %conv5) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %pnetdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %bup = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %bup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %pnetdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tx_pkts = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9, i32 22
  %2 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tx_pkts, align 8
  %conv = trunc i64 %3 to i32
  %stats = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 45
  %tx_packets = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 45, i32 1
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
  store i32 %conv1, ptr %stats, align 8
  %tx_drop = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9, i32 23
  %8 = ptrtoint ptr %tx_drop to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tx_drop, align 8
  %conv3 = trunc i64 %9 to i32
  %tx_dropped = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 45, i32 7
  %10 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv3, ptr %tx_dropped, align 4
  %rx_drop = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 11
  %11 = ptrtoint ptr %rx_drop to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rx_drop, align 8
  %conv5 = trunc i64 %12 to i32
  %rx_dropped = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 45, i32 6
  %13 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv5, ptr %rx_dropped, align 8
  %tx_bytes = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9, i32 21
  %14 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_bytes, align 8
  %conv7 = trunc i64 %15 to i32
  %tx_bytes9 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 45, i32 3
  %16 = ptrtoint ptr %tx_bytes9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv7, ptr %tx_bytes9, align 4
  %rx_bytes = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 9
  %17 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %rx_bytes, align 8
  %conv10 = trunc i64 %18 to i32
  %rx_bytes12 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 45, i32 2
  %19 = ptrtoint ptr %rx_bytes12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv10, ptr %rx_bytes12, align 8
  ret ptr %stats
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_disassoc_cmd(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_indicate_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_assoc_resources(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_network_queue(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_scan_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @qos_acm(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_init_registrypriv_dev_network(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_update_registrypriv_dev_network(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_cfg80211_init_wiphy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_suspend_free_assoc_resource(ptr noundef %padapter) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %roam_flags = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %roam_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %roam_flags, align 8
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i, align 4
  %5 = and i32 %4, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %.not = icmp eq i32 %5, 9
  br i1 %.not, label %if.then5, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtw_set_to_roam(ptr noundef %padapter, i8 noundef zeroext 1) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %fw_state.i5 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %fw_state.i5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_state.i5, align 4
  %8 = and i32 %7, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %8)
  %.not27 = icmp eq i32 %8, 9
  br i1 %.not27, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call zeroext i8 @rtw_disassoc_cmd(ptr noundef %padapter, i32 noundef 0, i1 noundef zeroext false) #8
  tail call void @rtw_indicate_disconnect(ptr noundef %padapter) #8
  br label %if.end18

if.else:                                          ; preds = %if.end6
  %9 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool15.not = icmp eq i32 %9, 0
  br i1 %tobool15.not, label %if.else.if.end18_crit_edge, label %if.then16

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtw_sta_flush(ptr noundef %padapter) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.else.if.end18_crit_edge, %if.then12
  tail call void @rtw_free_assoc_resources(ptr noundef %padapter, i32 noundef 1) #8
  tail call void @rtw_free_network_queue(ptr noundef %padapter, i8 noundef zeroext 1) #8
  %10 = ptrtoint ptr %fw_state.i5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_state.i5, align 4
  %12 = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool20.not = icmp eq i32 %12, 0
  br i1 %tobool20.not, label %if.end18.if.end22_crit_edge, label %if.then21

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtw_indicate_scan_done(ptr noundef %padapter, i1 noundef zeroext true) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  %13 = ptrtoint ptr %fw_state.i5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_state.i5, align 4
  %15 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool24.not = icmp eq i32 %15, 0
  br i1 %tobool24.not, label %if.end22.if.end35_crit_edge, label %do.body26

if.end22.if.end35_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.body26:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_suspend_free_assoc_resource.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_suspend_free_assoc_resource, %if.then31)) #8
          to label %do.end34 [label %if.then31], !srcloc !390

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %16 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_suspend_free_assoc_resource.__UNIQUE_ID_ddebug398, ptr noundef %17, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38) #8
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %do.body26
  tail call void @rtw_indicate_disconnect(ptr noundef %padapter) #8
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %if.end22.if.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_set_to_roam(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sta_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_indicate_scan_done(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_disable_interrupt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_roaming(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_ap_restore_network(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !29, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !110, !111, !113, !114, !116, !118, !119, !121, !123, !124, !126, !128, !129, !131, !133, !134, !136, !138, !139, !140, !141, !142, !144, !145, !146, !147, !149, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !176, !177, !179, !180, !182, !183, !184, !186, !187, !189, !190, !191, !193, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !223, !225, !226, !228, !229, !231, !232, !233, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !252, !253, !255, !256, !258, !259, !261, !262, !264, !265, !266, !268, !269, !271, !272, !274, !275, !276, !278, !279, !281, !282, !284, !285, !286, !287, !289, !290, !291, !292, !294, !295, !296, !297, !298, !300, !301, !302, !304, !306, !308, !310, !312, !314, !315, !316, !318, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !376, !377, !379, !380}
!llvm.module.flags = !{!381, !382, !383, !384, !385, !386, !387, !388}
!llvm.ident = !{!389}

!0 = !{ptr @__UNIQUE_ID_license345, !1, !"__UNIQUE_ID_license345", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 11, i32 1}
!2 = !{ptr @__UNIQUE_ID_description346, !3, !"__UNIQUE_ID_description346", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 12, i32 1}
!4 = !{ptr @__UNIQUE_ID_author347, !5, !"__UNIQUE_ID_author347", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 13, i32 1}
!6 = !{ptr @__UNIQUE_ID_version348, !7, !"__UNIQUE_ID_version348", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 14, i32 1}
!8 = !{ptr @__param_rtw_ips_mode, !9, !"__param_rtw_ips_mode", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 37, i32 1}
!10 = !{ptr @__UNIQUE_ID_rtw_ips_modetype349, !9, !"__UNIQUE_ID_rtw_ips_modetype349", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_rtw_ips_mode350, !12, !"__UNIQUE_ID_rtw_ips_mode350", i1 false, i1 false}
!12 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 38, i32 1}
!13 = !{ptr @__param_rtw_usb_rxagg_mode, !14, !"__param_rtw_usb_rxagg_mode", i1 false, i1 false}
!14 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 45, i32 1}
!15 = !{ptr @__UNIQUE_ID_rtw_usb_rxagg_modetype351, !14, !"__UNIQUE_ID_rtw_usb_rxagg_modetype351", i1 false, i1 false}
!16 = !{ptr @rtw_ht_enable, !17, !"rtw_ht_enable", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 67, i32 5}
!18 = !{ptr @__param_rtw_ant_num, !19, !"__param_rtw_ant_num", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 97, i32 1}
!20 = !{ptr @__UNIQUE_ID_rtw_ant_numtype352, !19, !"__UNIQUE_ID_rtw_ant_numtype352", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_rtw_ant_num353, !22, !"__UNIQUE_ID_rtw_ant_num353", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 98, i32 1}
!23 = !{ptr @__param_rtw_qos_opt_enable, !24, !"__param_rtw_qos_opt_enable", i1 false, i1 false}
!24 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 112, i32 1}
!25 = !{ptr @__UNIQUE_ID_rtw_qos_opt_enabletype354, !24, !"__UNIQUE_ID_rtw_qos_opt_enabletype354", i1 false, i1 false}
!26 = !{ptr @__param_ifname, !27, !"__param_ifname", i1 false, i1 false}
!27 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 115, i32 1}
!28 = !{ptr @__UNIQUE_ID_ifnametype355, !27, !"__UNIQUE_ID_ifnametype355", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_ifname356, !30, !"__UNIQUE_ID_ifname356", i1 false, i1 false}
!30 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 116, i32 1}
!31 = !{ptr @__param_rtw_initmac, !32, !"__param_rtw_initmac", i1 false, i1 false}
!32 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 120, i32 1}
!33 = !{ptr @__UNIQUE_ID_rtw_initmactype357, !32, !"__UNIQUE_ID_rtw_initmactype357", i1 false, i1 false}
!34 = !{ptr @__param_rtw_channel_plan, !35, !"__param_rtw_channel_plan", i1 false, i1 false}
!35 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 121, i32 1}
!36 = !{ptr @__UNIQUE_ID_rtw_channel_plantype358, !35, !"__UNIQUE_ID_rtw_channel_plantype358", i1 false, i1 false}
!37 = !{ptr @__param_rtw_chip_version, !38, !"__param_rtw_chip_version", i1 false, i1 false}
!38 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 122, i32 1}
!39 = !{ptr @__UNIQUE_ID_rtw_chip_versiontype359, !38, !"__UNIQUE_ID_rtw_chip_versiontype359", i1 false, i1 false}
!40 = !{ptr @__param_rtw_rfintfs, !41, !"__param_rtw_rfintfs", i1 false, i1 false}
!41 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 123, i32 1}
!42 = !{ptr @__UNIQUE_ID_rtw_rfintfstype360, !41, !"__UNIQUE_ID_rtw_rfintfstype360", i1 false, i1 false}
!43 = !{ptr @__param_rtw_lbkmode, !44, !"__param_rtw_lbkmode", i1 false, i1 false}
!44 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 124, i32 1}
!45 = !{ptr @__UNIQUE_ID_rtw_lbkmodetype361, !44, !"__UNIQUE_ID_rtw_lbkmodetype361", i1 false, i1 false}
!46 = !{ptr @__param_rtw_network_mode, !47, !"__param_rtw_network_mode", i1 false, i1 false}
!47 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 125, i32 1}
!48 = !{ptr @__UNIQUE_ID_rtw_network_modetype362, !47, !"__UNIQUE_ID_rtw_network_modetype362", i1 false, i1 false}
!49 = !{ptr @__param_rtw_channel, !50, !"__param_rtw_channel", i1 false, i1 false}
!50 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 126, i32 1}
!51 = !{ptr @__UNIQUE_ID_rtw_channeltype363, !50, !"__UNIQUE_ID_rtw_channeltype363", i1 false, i1 false}
!52 = !{ptr @__param_rtw_wmm_enable, !53, !"__param_rtw_wmm_enable", i1 false, i1 false}
!53 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 127, i32 1}
!54 = !{ptr @__UNIQUE_ID_rtw_wmm_enabletype364, !53, !"__UNIQUE_ID_rtw_wmm_enabletype364", i1 false, i1 false}
!55 = !{ptr @__param_rtw_vrtl_carrier_sense, !56, !"__param_rtw_vrtl_carrier_sense", i1 false, i1 false}
!56 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 128, i32 1}
!57 = !{ptr @__UNIQUE_ID_rtw_vrtl_carrier_sensetype365, !56, !"__UNIQUE_ID_rtw_vrtl_carrier_sensetype365", i1 false, i1 false}
!58 = !{ptr @__param_rtw_vcs_type, !59, !"__param_rtw_vcs_type", i1 false, i1 false}
!59 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 129, i32 1}
!60 = !{ptr @__UNIQUE_ID_rtw_vcs_typetype366, !59, !"__UNIQUE_ID_rtw_vcs_typetype366", i1 false, i1 false}
!61 = !{ptr @__param_rtw_busy_thresh, !62, !"__param_rtw_busy_thresh", i1 false, i1 false}
!62 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 130, i32 1}
!63 = !{ptr @__UNIQUE_ID_rtw_busy_threshtype367, !62, !"__UNIQUE_ID_rtw_busy_threshtype367", i1 false, i1 false}
!64 = !{ptr @__param_rtw_ht_enable, !65, !"__param_rtw_ht_enable", i1 false, i1 false}
!65 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 132, i32 1}
!66 = !{ptr @__UNIQUE_ID_rtw_ht_enabletype368, !65, !"__UNIQUE_ID_rtw_ht_enabletype368", i1 false, i1 false}
!67 = !{ptr @__param_rtw_bw_mode, !68, !"__param_rtw_bw_mode", i1 false, i1 false}
!68 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 133, i32 1}
!69 = !{ptr @__UNIQUE_ID_rtw_bw_modetype369, !68, !"__UNIQUE_ID_rtw_bw_modetype369", i1 false, i1 false}
!70 = !{ptr @__param_rtw_ampdu_enable, !71, !"__param_rtw_ampdu_enable", i1 false, i1 false}
!71 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 134, i32 1}
!72 = !{ptr @__UNIQUE_ID_rtw_ampdu_enabletype370, !71, !"__UNIQUE_ID_rtw_ampdu_enabletype370", i1 false, i1 false}
!73 = !{ptr @__param_rtw_rx_stbc, !74, !"__param_rtw_rx_stbc", i1 false, i1 false}
!74 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 135, i32 1}
!75 = !{ptr @__UNIQUE_ID_rtw_rx_stbctype371, !74, !"__UNIQUE_ID_rtw_rx_stbctype371", i1 false, i1 false}
!76 = !{ptr @__param_rtw_ampdu_amsdu, !77, !"__param_rtw_ampdu_amsdu", i1 false, i1 false}
!77 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 136, i32 1}
!78 = !{ptr @__UNIQUE_ID_rtw_ampdu_amsdutype372, !77, !"__UNIQUE_ID_rtw_ampdu_amsdutype372", i1 false, i1 false}
!79 = !{ptr @__param_rtw_lowrate_two_xmit, !80, !"__param_rtw_lowrate_two_xmit", i1 false, i1 false}
!80 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 138, i32 1}
!81 = !{ptr @__UNIQUE_ID_rtw_lowrate_two_xmittype373, !80, !"__UNIQUE_ID_rtw_lowrate_two_xmittype373", i1 false, i1 false}
!82 = !{ptr @__param_rtw_power_mgnt, !83, !"__param_rtw_power_mgnt", i1 false, i1 false}
!83 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 140, i32 1}
!84 = !{ptr @__UNIQUE_ID_rtw_power_mgnttype374, !83, !"__UNIQUE_ID_rtw_power_mgnttype374", i1 false, i1 false}
!85 = !{ptr @__param_rtw_smart_ps, !86, !"__param_rtw_smart_ps", i1 false, i1 false}
!86 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 141, i32 1}
!87 = !{ptr @__UNIQUE_ID_rtw_smart_pstype375, !86, !"__UNIQUE_ID_rtw_smart_pstype375", i1 false, i1 false}
!88 = !{ptr @__param_rtw_low_power, !89, !"__param_rtw_low_power", i1 false, i1 false}
!89 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 142, i32 1}
!90 = !{ptr @__UNIQUE_ID_rtw_low_powertype376, !89, !"__UNIQUE_ID_rtw_low_powertype376", i1 false, i1 false}
!91 = !{ptr @__param_rtw_wifi_spec, !92, !"__param_rtw_wifi_spec", i1 false, i1 false}
!92 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 143, i32 1}
!93 = !{ptr @__UNIQUE_ID_rtw_wifi_spectype377, !92, !"__UNIQUE_ID_rtw_wifi_spectype377", i1 false, i1 false}
!94 = !{ptr @__param_rtw_antdiv_cfg, !95, !"__param_rtw_antdiv_cfg", i1 false, i1 false}
!95 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 145, i32 1}
!96 = !{ptr @__UNIQUE_ID_rtw_antdiv_cfgtype378, !95, !"__UNIQUE_ID_rtw_antdiv_cfgtype378", i1 false, i1 false}
!97 = !{ptr @__param_rtw_antdiv_type, !98, !"__param_rtw_antdiv_type", i1 false, i1 false}
!98 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 146, i32 1}
!99 = !{ptr @__UNIQUE_ID_rtw_antdiv_typetype379, !98, !"__UNIQUE_ID_rtw_antdiv_typetype379", i1 false, i1 false}
!100 = !{ptr @__param_rtw_hw_wps_pbc, !101, !"__param_rtw_hw_wps_pbc", i1 false, i1 false}
!101 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 149, i32 1}
!102 = !{ptr @__UNIQUE_ID_rtw_hw_wps_pbctype380, !101, !"__UNIQUE_ID_rtw_hw_wps_pbctype380", i1 false, i1 false}
!103 = !{ptr @__param_rtw_max_roaming_times, !104, !"__param_rtw_max_roaming_times", i1 false, i1 false}
!104 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 152, i32 1}
!105 = !{ptr @__UNIQUE_ID_rtw_max_roaming_timestype381, !104, !"__UNIQUE_ID_rtw_max_roaming_timestype381", i1 false, i1 false}
!106 = !{ptr @__UNIQUE_ID_rtw_max_roaming_times382, !107, !"__UNIQUE_ID_rtw_max_roaming_times382", i1 false, i1 false}
!107 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 153, i32 1}
!108 = !{ptr @__param_rtw_mc2u_disable, !109, !"__param_rtw_mc2u_disable", i1 false, i1 false}
!109 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 155, i32 1}
!110 = !{ptr @__UNIQUE_ID_rtw_mc2u_disabletype383, !109, !"__UNIQUE_ID_rtw_mc2u_disabletype383", i1 false, i1 false}
!111 = !{ptr @__param_rtw_80211d, !112, !"__param_rtw_80211d", i1 false, i1 false}
!112 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 157, i32 1}
!113 = !{ptr @__UNIQUE_ID_rtw_80211dtype384, !112, !"__UNIQUE_ID_rtw_80211dtype384", i1 false, i1 false}
!114 = !{ptr @__UNIQUE_ID_rtw_80211d385, !115, !"__UNIQUE_ID_rtw_80211d385", i1 false, i1 false}
!115 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 158, i32 1}
!116 = !{ptr @__param_rtw_notch_filter, !117, !"__param_rtw_notch_filter", i1 false, i1 false}
!117 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 161, i32 1}
!118 = !{ptr @__UNIQUE_ID_rtw_notch_filtertype386, !117, !"__UNIQUE_ID_rtw_notch_filtertype386", i1 false, i1 false}
!119 = !{ptr @__UNIQUE_ID_rtw_notch_filter387, !120, !"__UNIQUE_ID_rtw_notch_filter387", i1 false, i1 false}
!120 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 162, i32 1}
!121 = !{ptr @__param_rtw_hiq_filter, !122, !"__param_rtw_hiq_filter", i1 false, i1 false}
!122 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 167, i32 1}
!123 = !{ptr @__UNIQUE_ID_rtw_hiq_filtertype388, !122, !"__UNIQUE_ID_rtw_hiq_filtertype388", i1 false, i1 false}
!124 = !{ptr @__UNIQUE_ID_rtw_hiq_filter389, !125, !"__UNIQUE_ID_rtw_hiq_filter389", i1 false, i1 false}
!125 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 168, i32 1}
!126 = !{ptr @__param_rtw_tx_pwr_lmt_enable, !127, !"__param_rtw_tx_pwr_lmt_enable", i1 false, i1 false}
!127 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 173, i32 1}
!128 = !{ptr @__UNIQUE_ID_rtw_tx_pwr_lmt_enabletype390, !127, !"__UNIQUE_ID_rtw_tx_pwr_lmt_enabletype390", i1 false, i1 false}
!129 = !{ptr @__UNIQUE_ID_rtw_tx_pwr_lmt_enable391, !130, !"__UNIQUE_ID_rtw_tx_pwr_lmt_enable391", i1 false, i1 false}
!130 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 174, i32 1}
!131 = !{ptr @__param_rtw_tx_pwr_by_rate, !132, !"__param_rtw_tx_pwr_by_rate", i1 false, i1 false}
!132 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 176, i32 1}
!133 = !{ptr @__UNIQUE_ID_rtw_tx_pwr_by_ratetype392, !132, !"__UNIQUE_ID_rtw_tx_pwr_by_ratetype392", i1 false, i1 false}
!134 = !{ptr @__UNIQUE_ID_rtw_tx_pwr_by_rate393, !135, !"__UNIQUE_ID_rtw_tx_pwr_by_rate393", i1 false, i1 false}
!135 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 177, i32 1}
!136 = !{ptr @.str, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 445, i32 3}
!138 = !{ptr @.str.1, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.2, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @rtw_init_netdev_name._entry, !137, !"_entry", i1 false, i1 false}
!141 = !{ptr @rtw_init_netdev_name._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.3, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 464, i32 2}
!144 = !{ptr @.str.4, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @rtw_init_netdev._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @rtw_init_netdev._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.5, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 505, i32 25}
!149 = !{ptr @.str.6, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 509, i32 24}
!151 = !{ptr @devobj_init.__key, !152, !"__key", i1 false, i1 false}
!152 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 600, i32 2}
!153 = !{ptr @.str.7, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @devobj_init.__key.8, !155, !"__key", i1 false, i1 false}
!155 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 601, i32 2}
!156 = !{ptr @.str.9, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @devobj_init.__key.10, !158, !"__key", i1 false, i1 false}
!158 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 602, i32 2}
!159 = !{ptr @.str.11, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @devobj_init.__key.12, !161, !"__key", i1 false, i1 false}
!161 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 603, i32 2}
!162 = !{ptr @.str.13, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @devobj_init.__key.14, !164, !"__key", i1 false, i1 false}
!164 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 605, i32 2}
!165 = !{ptr @.str.15, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @devobj_init.__key.16, !167, !"__key", i1 false, i1 false}
!167 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 613, i32 2}
!168 = !{ptr @.str.17, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @rtw_init_drv_sw.__key, !170, !"__key", i1 false, i1 false}
!170 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 703, i32 2}
!171 = !{ptr @.str.18, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.19, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 1048, i32 4}
!174 = !{ptr @.str.20, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.21, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @rtw_dev_unload.__UNIQUE_ID_ddebug396, !173, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!177 = !{ptr @.str.22, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 1053, i32 4}
!179 = !{ptr @rtw_dev_unload.__UNIQUE_ID_ddebug397, !178, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!180 = !{ptr @.str.23, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 1140, i32 2}
!182 = !{ptr @.str.24, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @rtw_suspend_common.__UNIQUE_ID_ddebug400, !181, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!184 = !{ptr @.str.25, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 1170, i32 2}
!186 = !{ptr @rtw_suspend_common.__UNIQUE_ID_ddebug401, !185, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!187 = !{ptr @.str.26, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 1243, i32 2}
!189 = !{ptr @.str.27, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @rtw_resume_common.__UNIQUE_ID_ddebug402, !188, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!191 = !{ptr @.str.28, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 1252, i32 2}
!193 = !{ptr @rtw_resume_common.__UNIQUE_ID_ddebug403, !192, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!194 = !{ptr @rtw_chip_version, !195, !"rtw_chip_version", i1 false, i1 false}
!195 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 17, i32 12}
!196 = !{ptr @rtw_lbkmode, !197, !"rtw_lbkmode", i1 false, i1 false}
!197 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 19, i32 12}
!198 = !{ptr @rtw_ampdu_amsdu, !199, !"rtw_ampdu_amsdu", i1 false, i1 false}
!199 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 76, i32 12}
!200 = !{ptr @rtw_low_power, !201, !"rtw_low_power", i1 false, i1 false}
!201 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 92, i32 12}
!202 = !{ptr @rtw_wifi_spec, !203, !"rtw_wifi_spec", i1 false, i1 false}
!203 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 93, i32 12}
!204 = !{ptr @rtw_antdiv_type, !205, !"rtw_antdiv_type", i1 false, i1 false}
!205 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 101, i32 12}
!206 = !{ptr @rtw_hw_wps_pbc, !207, !"rtw_hw_wps_pbc", i1 false, i1 false}
!207 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 105, i32 12}
!208 = !{ptr @rtw_mc2u_disable, !209, !"rtw_mc2u_disable", i1 false, i1 false}
!209 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 107, i32 5}
!210 = !{ptr @rtw_80211d, !211, !"rtw_80211d", i1 false, i1 false}
!211 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 109, i32 12}
!212 = !{ptr @rtw_qos_opt_enable, !213, !"rtw_qos_opt_enable", i1 false, i1 false}
!213 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 111, i32 12}
!214 = !{ptr @rtw_initmac, !215, !"rtw_initmac", i1 false, i1 false}
!215 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 118, i32 7}
!216 = !{ptr @rtw_notch_filter, !217, !"rtw_notch_filter", i1 false, i1 false}
!217 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 160, i32 13}
!218 = !{ptr @rtw_tx_pwr_lmt_enable, !219, !"rtw_tx_pwr_lmt_enable", i1 false, i1 false}
!219 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 170, i32 12}
!220 = !{ptr @rtw_tx_pwr_by_rate, !221, !"rtw_tx_pwr_by_rate", i1 false, i1 false}
!221 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 171, i32 12}
!222 = !{ptr @___asan_gen_.40, !9, !"__param_str_rtw_ips_mode", i1 false, i1 false}
!223 = !{ptr @rtw_ips_mode, !224, !"rtw_ips_mode", i1 false, i1 false}
!224 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 36, i32 12}
!225 = !{ptr @___asan_gen_.43, !14, !"__param_str_rtw_usb_rxagg_mode", i1 false, i1 false}
!226 = !{ptr @rtw_usb_rxagg_mode, !227, !"rtw_usb_rxagg_mode", i1 false, i1 false}
!227 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 44, i32 12}
!228 = !{ptr @___asan_gen_.49, !19, !"__param_str_rtw_ant_num", i1 false, i1 false}
!229 = !{ptr @rtw_ant_num, !230, !"rtw_ant_num", i1 false, i1 false}
!230 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 96, i32 12}
!231 = !{ptr @___asan_gen_.52, !24, !"__param_str_rtw_qos_opt_enable", i1 false, i1 false}
!232 = !{ptr @___asan_gen_.55, !27, !"__param_str_ifname", i1 false, i1 false}
!233 = !{ptr @.str.29, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 114, i32 23}
!235 = !{ptr @ifname, !236, !"ifname", i1 false, i1 false}
!236 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 114, i32 14}
!237 = !{ptr @___asan_gen_.58, !32, !"__param_str_rtw_initmac", i1 false, i1 false}
!238 = !{ptr @___asan_gen_.61, !35, !"__param_str_rtw_channel_plan", i1 false, i1 false}
!239 = !{ptr @rtw_channel_plan, !240, !"rtw_channel_plan", i1 false, i1 false}
!240 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 94, i32 12}
!241 = !{ptr @___asan_gen_.64, !38, !"__param_str_rtw_chip_version", i1 false, i1 false}
!242 = !{ptr @___asan_gen_.67, !41, !"__param_str_rtw_rfintfs", i1 false, i1 false}
!243 = !{ptr @rtw_rfintfs, !244, !"rtw_rfintfs", i1 false, i1 false}
!244 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 18, i32 12}
!245 = !{ptr @___asan_gen_.70, !44, !"__param_str_rtw_lbkmode", i1 false, i1 false}
!246 = !{ptr @___asan_gen_.73, !47, !"__param_str_rtw_network_mode", i1 false, i1 false}
!247 = !{ptr @rtw_network_mode, !248, !"rtw_network_mode", i1 false, i1 false}
!248 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 22, i32 12}
!249 = !{ptr @___asan_gen_.76, !50, !"__param_str_rtw_channel", i1 false, i1 false}
!250 = !{ptr @rtw_channel, !251, !"rtw_channel", i1 false, i1 false}
!251 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 24, i32 12}
!252 = !{ptr @___asan_gen_.79, !53, !"__param_str_rtw_wmm_enable", i1 false, i1 false}
!253 = !{ptr @rtw_wmm_enable, !254, !"rtw_wmm_enable", i1 false, i1 false}
!254 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 59, i32 12}
!255 = !{ptr @___asan_gen_.82, !56, !"__param_str_rtw_vrtl_carrier_sense", i1 false, i1 false}
!256 = !{ptr @rtw_vrtl_carrier_sense, !257, !"rtw_vrtl_carrier_sense", i1 false, i1 false}
!257 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 26, i32 12}
!258 = !{ptr @___asan_gen_.85, !59, !"__param_str_rtw_vcs_type", i1 false, i1 false}
!259 = !{ptr @rtw_vcs_type, !260, !"rtw_vcs_type", i1 false, i1 false}
!260 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 27, i32 12}
!261 = !{ptr @___asan_gen_.88, !62, !"__param_str_rtw_busy_thresh", i1 false, i1 false}
!262 = !{ptr @rtw_busy_thresh, !263, !"rtw_busy_thresh", i1 false, i1 false}
!263 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 50, i32 12}
!264 = !{ptr @___asan_gen_.46, !65, !"__param_str_rtw_ht_enable", i1 false, i1 false}
!265 = !{ptr @___asan_gen_.91, !68, !"__param_str_rtw_bw_mode", i1 false, i1 false}
!266 = !{ptr @rtw_bw_mode, !267, !"rtw_bw_mode", i1 false, i1 false}
!267 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 73, i32 12}
!268 = !{ptr @___asan_gen_.94, !71, !"__param_str_rtw_ampdu_enable", i1 false, i1 false}
!269 = !{ptr @rtw_ampdu_enable, !270, !"rtw_ampdu_enable", i1 false, i1 false}
!270 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 74, i32 12}
!271 = !{ptr @___asan_gen_.97, !74, !"__param_str_rtw_rx_stbc", i1 false, i1 false}
!272 = !{ptr @rtw_rx_stbc, !273, !"rtw_rx_stbc", i1 false, i1 false}
!273 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 75, i32 12}
!274 = !{ptr @___asan_gen_.100, !77, !"__param_str_rtw_ampdu_amsdu", i1 false, i1 false}
!275 = !{ptr @___asan_gen_.103, !80, !"__param_str_rtw_lowrate_two_xmit", i1 false, i1 false}
!276 = !{ptr @rtw_lowrate_two_xmit, !277, !"rtw_lowrate_two_xmit", i1 false, i1 false}
!277 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 90, i32 12}
!278 = !{ptr @___asan_gen_.106, !83, !"__param_str_rtw_power_mgnt", i1 false, i1 false}
!279 = !{ptr @rtw_power_mgnt, !280, !"rtw_power_mgnt", i1 false, i1 false}
!280 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 35, i32 12}
!281 = !{ptr @___asan_gen_.109, !86, !"__param_str_rtw_smart_ps", i1 false, i1 false}
!282 = !{ptr @rtw_smart_ps, !283, !"rtw_smart_ps", i1 false, i1 false}
!283 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 40, i32 12}
!284 = !{ptr @___asan_gen_.112, !89, !"__param_str_rtw_low_power", i1 false, i1 false}
!285 = !{ptr @___asan_gen_.115, !92, !"__param_str_rtw_wifi_spec", i1 false, i1 false}
!286 = !{ptr @___asan_gen_.118, !95, !"__param_str_rtw_antdiv_cfg", i1 false, i1 false}
!287 = !{ptr @rtw_antdiv_cfg, !288, !"rtw_antdiv_cfg", i1 false, i1 false}
!288 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 100, i32 12}
!289 = !{ptr @___asan_gen_.121, !98, !"__param_str_rtw_antdiv_type", i1 false, i1 false}
!290 = !{ptr @___asan_gen_.124, !101, !"__param_str_rtw_hw_wps_pbc", i1 false, i1 false}
!291 = !{ptr @___asan_gen_.127, !104, !"__param_str_rtw_max_roaming_times", i1 false, i1 false}
!292 = !{ptr @rtw_max_roaming_times, !293, !"rtw_max_roaming_times", i1 false, i1 false}
!293 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 151, i32 13}
!294 = !{ptr @___asan_gen_.130, !109, !"__param_str_rtw_mc2u_disable", i1 false, i1 false}
!295 = !{ptr @___asan_gen_.133, !112, !"__param_str_rtw_80211d", i1 false, i1 false}
!296 = !{ptr @___asan_gen_.136, !117, !"__param_str_rtw_notch_filter", i1 false, i1 false}
!297 = !{ptr @___asan_gen_.139, !122, !"__param_str_rtw_hiq_filter", i1 false, i1 false}
!298 = !{ptr @rtw_hiq_filter, !299, !"rtw_hiq_filter", i1 false, i1 false}
!299 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 166, i32 13}
!300 = !{ptr @___asan_gen_.142, !127, !"__param_str_rtw_tx_pwr_lmt_enable", i1 false, i1 false}
!301 = !{ptr @___asan_gen_.145, !132, !"__param_str_rtw_tx_pwr_by_rate", i1 false, i1 false}
!302 = !{ptr @rtw_1d_to_queue, !303, !"rtw_1d_to_queue", i1 false, i1 false}
!303 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 317, i32 18}
!304 = !{ptr @rtw_ndev_notifier, !305, !"rtw_ndev_notifier", i1 false, i1 false}
!305 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 398, i32 30}
!306 = !{ptr @.str.30, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 392, i32 19}
!308 = !{ptr @__func__.rtw_ndev_notifier_call, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 392, i32 49}
!310 = !{ptr @rtw_netdev_ops, !311, !"rtw_netdev_ops", i1 false, i1 false}
!311 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 430, i32 36}
!312 = !{ptr @.str.31, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 417, i32 2}
!314 = !{ptr @.str.32, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @rtw_ndev_init.__UNIQUE_ID_ddebug394, !313, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!316 = !{ptr @.str.33, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 427, i32 2}
!318 = !{ptr @rtw_ndev_uninit.__UNIQUE_ID_ddebug395, !317, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!319 = !{ptr @.str.34, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 191, i32 34}
!321 = !{ptr @.str.35, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 261, i32 37}
!323 = distinct !{null, !324, !"rtw_wireless_mode", i1 false, i1 false}
!324 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 25, i32 12}
!325 = distinct !{null, !326, !"rtw_rts_thresh", i1 false, i1 false}
!326 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 28, i32 12}
!327 = distinct !{null, !328, !"rtw_frag_thresh", i1 false, i1 false}
!328 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 29, i32 12}
!329 = distinct !{null, !330, !"rtw_preamble", i1 false, i1 false}
!330 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 30, i32 12}
!331 = distinct !{null, !332, !"rtw_scan_mode", i1 false, i1 false}
!332 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 31, i32 12}
!333 = distinct !{null, !334, !"rtw_adhoc_tx_pwr", i1 false, i1 false}
!334 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 32, i32 12}
!335 = distinct !{null, !336, !"rtw_soft_ap", i1 false, i1 false}
!336 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 33, i32 12}
!337 = distinct !{null, !338, !"rtw_check_fw_ps", i1 false, i1 false}
!338 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 42, i32 12}
!339 = distinct !{null, !340, !"rtw_radio_enable", i1 false, i1 false}
!340 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 47, i32 12}
!341 = distinct !{null, !342, !"rtw_long_retry_lmt", i1 false, i1 false}
!342 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 48, i32 12}
!343 = distinct !{null, !344, !"rtw_short_retry_lmt", i1 false, i1 false}
!344 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 49, i32 12}
!345 = distinct !{null, !346, !"rtw_ack_policy", i1 false, i1 false}
!346 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 52, i32 12}
!347 = distinct !{null, !348, !"rtw_software_encrypt", i1 false, i1 false}
!348 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 54, i32 12}
!349 = distinct !{null, !350, !"rtw_software_decrypt", i1 false, i1 false}
!350 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 55, i32 12}
!351 = distinct !{null, !352, !"rtw_acm_method", i1 false, i1 false}
!352 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 57, i32 12}
!353 = distinct !{null, !354, !"rtw_uapsd_enable", i1 false, i1 false}
!354 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 60, i32 12}
!355 = distinct !{null, !356, !"rtw_uapsd_max_sp", i1 false, i1 false}
!356 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 61, i32 12}
!357 = distinct !{null, !358, !"rtw_uapsd_acbk_en", i1 false, i1 false}
!358 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 62, i32 12}
!359 = distinct !{null, !360, !"rtw_uapsd_acbe_en", i1 false, i1 false}
!360 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 63, i32 12}
!361 = distinct !{null, !362, !"rtw_uapsd_acvi_en", i1 false, i1 false}
!362 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 64, i32 12}
!363 = distinct !{null, !364, !"rtw_uapsd_acvo_en", i1 false, i1 false}
!364 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 65, i32 12}
!365 = distinct !{null, !366, !"rtw_short_gi", i1 false, i1 false}
!366 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 82, i32 12}
!367 = distinct !{null, !368, !"rtw_ldpc_cap", i1 false, i1 false}
!368 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 84, i32 12}
!369 = distinct !{null, !370, !"rtw_stbc_cap", i1 false, i1 false}
!370 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 86, i32 12}
!371 = distinct !{null, !372, !"rtw_beamform_cap", i1 false, i1 false}
!372 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 88, i32 12}
!373 = !{ptr @.str.36, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 1120, i32 3}
!375 = !{ptr @.str.37, !374, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @rtw_suspend_normal.__UNIQUE_ID_ddebug399, !374, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!377 = !{ptr @.str.38, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/staging/rtl8723bs/os_dep/os_intfs.c", i32 1100, i32 3}
!379 = !{ptr @.str.39, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @rtw_suspend_free_assoc_resource.__UNIQUE_ID_ddebug398, !378, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!381 = !{i32 1, !"wchar_size", i32 2}
!382 = !{i32 1, !"min_enum_size", i32 4}
!383 = !{i32 8, !"branch-target-enforcement", i32 0}
!384 = !{i32 8, !"sign-return-address", i32 0}
!385 = !{i32 8, !"sign-return-address-all", i32 0}
!386 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!387 = !{i32 7, !"uwtable", i32 1}
!388 = !{i32 7, !"frame-pointer", i32 2}
!389 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!390 = !{i64 2148826252, i64 2148826257, i64 2148826270, i64 2148826314, i64 2148826348, i64 2148826369}
!391 = !{i8 0, i8 2}
