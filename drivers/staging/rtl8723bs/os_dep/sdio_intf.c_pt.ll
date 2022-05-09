; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/os_dep/sdio_intf.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/os_dep/sdio_intf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.dvobj_priv = type { ptr, i32, %struct.debug_priv, %struct.spinlock, [32 x i32], %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i32, ptr, %struct.cam_ctl_t, [32 x %struct.cam_entry_cache], [2 x i32], [4 x i32], [8 x i8], i8, %struct.atomic_t, %struct.atomic_t, %struct.pwrctrl_priv, %struct.rtw_traffic_statistics, %struct.sdio_data }
%struct.debug_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cam_ctl_t = type { %struct.spinlock, i64 }
%struct.cam_entry_cache = type { i16, [6 x i8], [16 x i8] }
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.work_struct, i8, %struct.work_struct, %struct.timer_list, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.timer_list, ptr, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i32] }
%struct.rtw_traffic_statistics = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32 }
%struct.sdio_data = type { i8, i8, i8, i32, ptr, ptr }
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
%struct.HT_caps_element = type { %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, i8, ptr, %struct.mutex }
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, ptr }
%struct.io_priv = type { ptr, %struct.intf_hdl }
%struct.intf_hdl = type { ptr, ptr, %struct._io_ops }
%struct._io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, i32, ptr, i8, i8, i8, i64, i64, i64, i64, ptr, i8, [4 x i8], ptr, %struct.completion, %struct.completion, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, [2 x %struct.xmit_buf], i16, i32, %struct.mutex, %struct.submit_ctx, i8, %struct.spinlock }
%struct.xmit_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, %struct.__queue, i8, i8, i8, i8, i8, i16, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.102, i32 }
%union.anon.102 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@sdio_ids = internal constant [7 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 588, i16 1315, i32 0 }, %struct.sdio_device_id { i8 -1, i16 588, i16 1317, i32 0 }, %struct.sdio_device_id { i8 -1, i16 588, i16 1571, i32 0 }, %struct.sdio_device_id { i8 -1, i16 588, i16 1574, i32 0 }, %struct.sdio_device_id { i8 -1, i16 588, i16 1575, i32 0 }, %struct.sdio_device_id { i8 -1, i16 588, i16 -18653, i32 0 }, %struct.sdio_device_id zeroinitializer], align 4
@rtl8723bs_sdio_driver = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str, ptr @sdio_ids, ptr @rtw_drv_init, ptr @rtw_dev_remove, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw_sdio_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtl8723bs\00", [22 x i8] zeroinitializer }, align 32
@rtw_sdio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rtw_sdio_suspend, ptr @rtw_sdio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: sdio_release_irq FAIL(%d)!\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.sdio_free_irq = private unnamed_addr constant [14 x i8] c"sdio_free_irq\00", align 1
@sdio_alloc_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\012%s: sdio_claim_irq FAIL(%d)!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdio_alloc_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/staging/rtl8723bs/os_dep/sdio_intf.c\00", [51 x i8] zeroinitializer }, align 32
@sdio_alloc_irq._entry_ptr = internal global ptr @sdio_alloc_irq._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.5 = private unnamed_addr constant [22 x i8] c"rtl8723bs_sdio_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 37, i32 27 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 40, i32 10 }
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"rtw_sdio_pm_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 32, i32 32 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 103, i32 9 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [48 x i8] c"../drivers/staging/rtl8723bs/os_dep/sdio_intf.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 76, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @sdio_alloc_irq._entry, ptr @sdio_alloc_irq._entry_ptr, ptr @rtl8723bs_sdio_driver, ptr @.str, ptr @rtw_sdio_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723bs_sdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_sdio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_alloc_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@__mod_sdio__sdio_ids_device_table = dso_local alias [7 x %struct.sdio_device_id], ptr @sdio_ids

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_set_hal_ops(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rtw_hal_data_init(ptr noundef %padapter) #7
  tail call void @rtl8723bs_set_hal_ops(ptr noundef %padapter) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_hal_data_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723bs_set_hal_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdio_register_driver(ptr noundef nonnull @rtl8723bs_sdio_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw_ndev_notifier_unregister() #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sdio_unregister_driver(ptr noundef nonnull @rtl8723bs_sdio_driver) #7
  tail call void @rtw_ndev_notifier_unregister() #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_ndev_notifier_unregister() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_drv_init(ptr noundef %func, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devobj_init() #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.exit_crit_edge, label %if.end.i

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end.i:                                         ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %func1.i = getelementptr inbounds %struct.dvobj_priv, ptr %call.i, i32 0, i32 24, i32 4
  %1 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %func, ptr %func1.i, align 4
  tail call void @sdio_claim_host(ptr noundef %func) #7
  %call.i.i = tail call i32 @sdio_enable_func(ptr noundef %func) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.land.lhs.true.critedge.i_crit_edge

if.end.i.land.lhs.true.critedge.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.critedge.i

if.end.i.i:                                       ; preds = %if.end.i
  %call2.i.i = tail call i32 @sdio_set_block_size(ptr noundef %func, i32 noundef 512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end, label %if.end.i.i.land.lhs.true.critedge.i_crit_edge

if.end.i.i.land.lhs.true.critedge.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.critedge.i

land.lhs.true.critedge.i:                         ; preds = %if.end.i.i.land.lhs.true.critedge.i_crit_edge, %if.end.i.land.lhs.true.critedge.i_crit_edge
  %dbg_sdio_init_error_cnt6.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %call.i, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %dbg_sdio_init_error_cnt6.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dbg_sdio_init_error_cnt6.i.i, align 4
  %inc7.i.i = add i32 %3, 1
  store i32 %inc7.i.i, ptr %dbg_sdio_init_error_cnt6.i.i, align 4
  tail call void @sdio_release_host(ptr noundef %func) #7
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @devobj_deinit(ptr noundef nonnull %call.i) #7
  br label %exit

if.end:                                           ; preds = %if.end.i.i
  %block_transfer_len.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %call.i, i32 0, i32 24, i32 3
  %5 = ptrtoint ptr %block_transfer_len.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 512, ptr %block_transfer_len.i.i, align 4
  %tx_block_mode.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %call.i, i32 0, i32 24, i32 1
  %6 = ptrtoint ptr %tx_block_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %tx_block_mode.i.i, align 1
  %rx_block_mode.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %call.i, i32 0, i32 24, i32 2
  %7 = ptrtoint ptr %rx_block_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %rx_block_mode.i.i, align 2
  tail call void @sdio_release_host(ptr noundef %func) #7
  tail call void @rtw_reset_continual_io_error(ptr noundef nonnull %call.i) #7
  %call.i30 = tail call noalias ptr @vzalloc(i32 noundef 17960) #10
  %tobool.not.i31 = icmp eq ptr %call.i30, null
  br i1 %tobool.not.i31, label %if.end.if.then18_crit_edge, label %if.end.i32

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.end.i32:                                       ; preds = %if.end
  %dvobj1.i = getelementptr inbounds %struct.adapter, ptr %call.i30, i32 0, i32 3
  %8 = ptrtoint ptr %dvobj1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %dvobj1.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i30, ptr %call.i, align 8
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %call.i30, i32 0, i32 21
  %10 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %bDriverStopped.i, align 4
  %padapters.i = getelementptr inbounds %struct.dvobj_priv, ptr %call.i, i32 0, i32 13
  %11 = ptrtoint ptr %padapters.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i30, ptr %padapters.i, align 4
  %iface_id.i = getelementptr inbounds %struct.adapter, ptr %call.i30, i32 0, i32 57
  %12 = ptrtoint ptr %iface_id.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %iface_id.i, align 8
  %call2.i = tail call ptr @rtw_init_netdev(ptr noundef nonnull %call.i30) #7
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.else.i, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i32
  %13 = ptrtoint ptr %func1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %func1.i, align 8
  %dev.i.i = getelementptr inbounds %struct.sdio_func, ptr %14, i32 0, i32 1
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call2.i, i32 0, i32 133, i32 1
  %15 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev.i.i, ptr %parent.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %call2.i, i32 2304
  %16 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i.i.i, align 4
  %call.i.i33 = tail call zeroext i8 @rtw_hal_data_init(ptr noundef %17) #7
  tail call void @rtl8723bs_set_hal_ops(ptr noundef %17) #7
  %intf_start.i = getelementptr inbounds %struct.adapter, ptr %17, i32 0, i32 39
  %18 = ptrtoint ptr %intf_start.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sd_intf_start, ptr %intf_start.i, align 8
  %intf_stop.i = getelementptr inbounds %struct.adapter, ptr %17, i32 0, i32 40
  %19 = ptrtoint ptr %intf_stop.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @sd_intf_stop, ptr %intf_stop.i, align 4
  %intf_init.i = getelementptr inbounds %struct.adapter, ptr %17, i32 0, i32 35
  %20 = ptrtoint ptr %intf_init.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @sdio_init, ptr %intf_init.i, align 8
  %intf_deinit.i = getelementptr inbounds %struct.adapter, ptr %17, i32 0, i32 36
  %21 = ptrtoint ptr %intf_deinit.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sdio_deinit, ptr %intf_deinit.i, align 4
  %intf_alloc_irq.i = getelementptr inbounds %struct.adapter, ptr %17, i32 0, i32 37
  %22 = ptrtoint ptr %intf_alloc_irq.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sdio_alloc_irq, ptr %intf_alloc_irq.i, align 8
  %intf_free_irq.i = getelementptr inbounds %struct.adapter, ptr %17, i32 0, i32 38
  %23 = ptrtoint ptr %intf_free_irq.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sdio_free_irq, ptr %intf_free_irq.i, align 4
  %call8.i = tail call i32 @rtw_init_io_priv(ptr noundef %17, ptr noundef nonnull @sdio_set_intf_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp eq i32 %call8.i, 0
  br i1 %cmp.i, label %if.end5.i.land.lhs.true.i_crit_edge, label %if.end10.i

if.end5.i.land.lhs.true.i_crit_edge:              ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.end10.i:                                       ; preds = %if.end5.i
  tail call void @rtw_hal_read_chip_version(ptr noundef %17) #7
  tail call void @rtw_hal_chip_configure(ptr noundef %17) #7
  tail call void @hal_btcoex_Initialize(ptr noundef %17) #7
  tail call void @rtw_hal_read_chip_info(ptr noundef %17) #7
  %call11.i = tail call zeroext i8 @rtw_init_drv_sw(ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call11.i)
  %cmp12.i = icmp eq i8 %call11.i, 0
  br i1 %cmp12.i, label %if.end10.i.land.lhs.true.i_crit_edge, label %rtw_sdio_if1_init.exit

if.end10.i.land.lhs.true.i_crit_edge:             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end10.i.land.lhs.true.i_crit_edge, %if.end5.i.land.lhs.true.i_crit_edge
  %HalData.i = getelementptr inbounds %struct.adapter, ptr %17, i32 0, i32 18
  %24 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %HalData.i, align 8
  %tobool21.not.i = icmp eq ptr %25, null
  br i1 %tobool21.not.i, label %land.lhs.true.i.if.then34.i_crit_edge, label %if.then22.i

land.lhs.true.i.if.then34.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %25) #7
  br label %if.then34.i

if.then34.i:                                      ; preds = %if.then22.i, %land.lhs.true.i.if.then34.i_crit_edge
  %rtw_wdev.i = getelementptr inbounds %struct.adapter, ptr %17, i32 0, i32 47
  %26 = ptrtoint ptr %rtw_wdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtw_wdev.i, align 4
  tail call void @rtw_wdev_unregister(ptr noundef %27) #7
  %28 = ptrtoint ptr %rtw_wdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rtw_wdev.i, align 4
  tail call void @rtw_wdev_free(ptr noundef %29) #7
  tail call void @rtw_free_netdev(ptr noundef nonnull %call2.i) #7
  br label %if.then18

if.else.i:                                        ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @vfree(ptr noundef nonnull %call.i30) #7
  br label %if.then18

rtw_sdio_if1_init.exit:                           ; preds = %if.end10.i
  %30 = ptrtoint ptr %func1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %func1.i, align 8
  %dev.i4.i = getelementptr inbounds %struct.sdio_func, ptr %31, i32 0, i32 1
  %call17.i = tail call i32 @rtw_wdev_alloc(ptr noundef %17, ptr noundef %dev.i4.i) #7
  %32 = ptrtoint ptr %func1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %func1.i, align 4
  %dev18.i = getelementptr inbounds %struct.sdio_func, ptr %33, i32 0, i32 1
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %17, i32 0, i32 15, i32 4
  tail call void @rtw_macaddr_cfg(ptr noundef %dev18.i, ptr noundef %mac_addr.i) #7
  tail call void @rtw_hal_disable_interrupt(ptr noundef %17) #7
  %tobool2.not = icmp eq ptr %17, null
  br i1 %tobool2.not, label %rtw_sdio_if1_init.exit.if.then18_crit_edge, label %if.end4

rtw_sdio_if1_init.exit.if.then18_crit_edge:       ; preds = %rtw_sdio_if1_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.end4:                                          ; preds = %rtw_sdio_if1_init.exit
  %call5 = tail call i32 @rtw_drv_register_netdev(ptr noundef nonnull %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 1
  br i1 %cmp.not, label %if.end7, label %if.then15

if.end7:                                          ; preds = %if.end4
  %34 = ptrtoint ptr %func1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %func1.i, align 4
  tail call void @sdio_claim_host(ptr noundef %35) #7
  %call.i35 = tail call i32 @sdio_claim_irq(ptr noundef %35, ptr noundef nonnull @sd_sync_int_hdl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not.i36 = icmp eq i32 %call.i35, 0
  br i1 %tobool.not.i36, label %if.end11, label %sdio_alloc_irq.exit

sdio_alloc_irq.exit:                              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %dbg_sdio_alloc_irq_error_cnt.i = getelementptr inbounds %struct.dvobj_priv, ptr %call.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %dbg_sdio_alloc_irq_error_cnt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dbg_sdio_alloc_irq_error_cnt.i, align 4
  %inc.i = add i32 %37, 1
  store i32 %inc.i, ptr %dbg_sdio_alloc_irq_error_cnt.i, align 4
  %call2.i37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %call.i35) #11
  tail call void @sdio_release_host(ptr noundef %35) #7
  br label %exit

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %dbg_sdio_alloc_irq_cnt.i = getelementptr inbounds %struct.dvobj_priv, ptr %call.i, i32 0, i32 2, i32 3
  %38 = ptrtoint ptr %dbg_sdio_alloc_irq_cnt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dbg_sdio_alloc_irq_cnt.i, align 4
  %inc4.i = add i32 %39, 1
  store i32 %inc4.i, ptr %dbg_sdio_alloc_irq_cnt.i, align 4
  %irq_alloc.i = getelementptr inbounds %struct.dvobj_priv, ptr %call.i, i32 0, i32 19
  %40 = ptrtoint ptr %irq_alloc.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %irq_alloc.i, align 8
  tail call void @sdio_release_host(ptr noundef %35) #7
  %call12 = tail call i32 @rtw_ndev_notifier_register() #7
  br label %exit

if.then15:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @rtw_sdio_if1_deinit(ptr noundef nonnull %17)
  br label %if.then18

if.then18:                                        ; preds = %if.then15, %rtw_sdio_if1_init.exit.if.then18_crit_edge, %if.else.i, %if.then34.i, %if.end.if.then18_crit_edge
  tail call fastcc void @sdio_dvobj_deinit(ptr noundef %func)
  br label %exit

exit:                                             ; preds = %if.then18, %if.end11, %sdio_alloc_irq.exit, %land.lhs.true.critedge.i, %entry.exit_crit_edge
  %41 = phi i32 [ -19, %if.then18 ], [ 0, %sdio_alloc_irq.exit ], [ 0, %if.end11 ], [ -19, %land.lhs.true.critedge.i ], [ -19, %entry.exit_crit_edge ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_dev_remove(ptr noundef %func) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %processing_dev_remove = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %processing_dev_remove to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %processing_dev_remove, align 4
  tail call void @rtw_unregister_netdevs(ptr noundef %1) #7
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 22
  %5 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #7
  %7 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %err, align 4, !annotation !28
  tail call void @sdio_claim_host(ptr noundef %func) #7
  %call1 = call zeroext i8 @sdio_readb(ptr noundef %func, i32 noundef 0, ptr noundef nonnull %err) #7
  call void @sdio_release_host(ptr noundef %func) #7
  %8 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -123, i32 %9)
  %cmp = icmp eq i32 %9, -123
  br i1 %cmp, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %bSurpriseRemoved, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #7
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  call void @rtw_ps_deny(ptr noundef %3, i32 noundef 30) #7
  %call5 = call i32 @rtw_pm_set_ips(ptr noundef %3, i8 noundef zeroext 0) #7
  %call6 = call i32 @rtw_pm_set_lps(ptr noundef %3, i8 noundef zeroext 0) #7
  call void @LeaveAllPowerSaveMode(ptr noundef %3) #7
  call void @rtw_btcoex_HaltNotify(ptr noundef %3) #7
  call fastcc void @rtw_sdio_if1_deinit(ptr noundef %3)
  call fastcc void @sdio_dvobj_deinit(ptr noundef %func)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_drv_register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_alloc_irq(ptr nocapture noundef %dvobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %func1 = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 24, i32 4
  %0 = ptrtoint ptr %func1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func1, align 4
  tail call void @sdio_claim_host(ptr noundef %1) #7
  %call = tail call i32 @sdio_claim_irq(ptr noundef %1, ptr noundef nonnull @sd_sync_int_hdl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dbg_sdio_alloc_irq_error_cnt = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %dbg_sdio_alloc_irq_error_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dbg_sdio_alloc_irq_error_cnt, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %dbg_sdio_alloc_irq_error_cnt, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %call) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dbg_sdio_alloc_irq_cnt = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %dbg_sdio_alloc_irq_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dbg_sdio_alloc_irq_cnt, align 4
  %inc4 = add i32 %5, 1
  store i32 %inc4, ptr %dbg_sdio_alloc_irq_cnt, align 4
  %irq_alloc = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 19
  %6 = ptrtoint ptr %irq_alloc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %irq_alloc, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @sdio_release_host(ptr noundef %1) #7
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_ndev_notifier_register() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_sdio_if1_deinit(ptr noundef %if1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pnetdev1 = getelementptr inbounds %struct.adapter, ptr %if1, i32 0, i32 41
  %0 = ptrtoint ptr %pnetdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnetdev1, align 8
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %if1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call zeroext i8 @rtw_disassoc_cmd(ptr noundef %if1, i32 noundef 0, i1 noundef zeroext false) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @free_mlme_ap_info(ptr noundef %if1) #7
  tail call void @rtw_cancel_all_timer(ptr noundef %if1) #7
  tail call void @rtw_dev_unload(ptr noundef %if1) #7
  %rtw_wdev = getelementptr inbounds %struct.adapter, ptr %if1, i32 0, i32 47
  %4 = ptrtoint ptr %rtw_wdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtw_wdev, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw_wdev_free(ptr noundef nonnull %5) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %call7 = tail call zeroext i8 @rtw_free_drv_sw(ptr noundef %if1) #7
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw_free_netdev(ptr noundef nonnull %1) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdio_dvobj_deinit(ptr nocapture noundef %func) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  store ptr null, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %func1.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 24, i32 4
  %2 = ptrtoint ptr %func1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func1.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.sdio_deinit.exit_crit_edge, label %if.then.i

if.then.sdio_deinit.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sdio_deinit.exit

if.then.i:                                        ; preds = %if.then
  tail call void @sdio_claim_host(ptr noundef nonnull %3) #7
  %call.i = tail call i32 @sdio_disable_func(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %dbg_sdio_deinit_error_cnt.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %dbg_sdio_deinit_error_cnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dbg_sdio_deinit_error_cnt.i, align 8
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %dbg_sdio_deinit_error_cnt.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %irq_alloc.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %irq_alloc.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %irq_alloc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not.i = icmp eq i8 %7, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then5.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 @sdio_release_irq(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  %drv_dbg9.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2
  %dbg_sdio_free_irq_cnt.i = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2, i32 2
  %drv_dbg9.sink25.i = select i1 %tobool7.not.i, ptr %dbg_sdio_free_irq_cnt.i, ptr %drv_dbg9.i
  %8 = ptrtoint ptr %drv_dbg9.sink25.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %drv_dbg9.sink25.i, align 8
  %inc10.i = add i32 %9, 1
  store i32 %inc10.i, ptr %drv_dbg9.sink25.i, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then5.i, %if.end.i.if.end14.i_crit_edge
  tail call void @sdio_release_host(ptr noundef nonnull %3) #7
  br label %sdio_deinit.exit

sdio_deinit.exit:                                 ; preds = %if.end14.i, %if.then.sdio_deinit.exit_crit_edge
  tail call void @devobj_deinit(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %sdio_deinit.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devobj_init() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_init(ptr nocapture noundef %dvobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %func1 = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 24, i32 4
  %0 = ptrtoint ptr %func1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func1, align 4
  tail call void @sdio_claim_host(ptr noundef %1) #7
  %call = tail call i32 @sdio_enable_func(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.release.thread_crit_edge

entry.release.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %release.thread

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @sdio_set_block_size(ptr noundef %1, i32 noundef 512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %4, label %if.end.release.thread_crit_edge

if.end.release.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %release.thread

release.thread:                                   ; preds = %if.end.release.thread_crit_edge, %entry.release.thread_crit_edge
  %dbg_sdio_init_error_cnt6 = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %dbg_sdio_init_error_cnt6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dbg_sdio_init_error_cnt6, align 4
  %inc7 = add i32 %3, 1
  store i32 %inc7, ptr %dbg_sdio_init_error_cnt6, align 4
  br label %8

4:                                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %block_transfer_len = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 24, i32 3
  %5 = ptrtoint ptr %block_transfer_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 512, ptr %block_transfer_len, align 4
  %tx_block_mode = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 24, i32 1
  %6 = ptrtoint ptr %tx_block_mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %tx_block_mode, align 1
  %rx_block_mode = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 24, i32 2
  %7 = ptrtoint ptr %rx_block_mode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %rx_block_mode, align 2
  br label %8

8:                                                ; preds = %4, %release.thread
  %9 = phi i32 [ 1, %4 ], [ 0, %release.thread ]
  tail call void @sdio_release_host(ptr noundef %1) #7
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_reset_continual_io_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devobj_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_init_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_intf_start(ptr noundef %padapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %padapter, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw_hal_enable_interrupt(ptr noundef nonnull %padapter) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_intf_stop(ptr noundef %padapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %padapter, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw_hal_disable_interrupt(ptr noundef nonnull %padapter) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdio_deinit(ptr nocapture noundef %dvobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %func1 = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 24, i32 4
  %0 = ptrtoint ptr %func1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then:                                          ; preds = %entry
  tail call void @sdio_claim_host(ptr noundef nonnull %1) #7
  %call = tail call i32 @sdio_disable_func(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dbg_sdio_deinit_error_cnt = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %dbg_sdio_deinit_error_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dbg_sdio_deinit_error_cnt, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %dbg_sdio_deinit_error_cnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %irq_alloc = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 19
  %4 = ptrtoint ptr %irq_alloc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_alloc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.end.if.end14_crit_edge, label %if.then5

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @sdio_release_irq(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %drv_dbg9 = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 2
  %dbg_sdio_free_irq_cnt = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 2, i32 2
  %drv_dbg9.sink25 = select i1 %tobool7.not, ptr %dbg_sdio_free_irq_cnt, ptr %drv_dbg9
  %6 = ptrtoint ptr %drv_dbg9.sink25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %drv_dbg9.sink25, align 8
  %inc10 = add i32 %7, 1
  store i32 %inc10, ptr %drv_dbg9.sink25, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then5, %if.end.if.end14_crit_edge
  tail call void @sdio_release_host(ptr noundef nonnull %1) #7
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdio_free_irq(ptr nocapture noundef %dvobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_alloc = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 19
  %0 = ptrtoint ptr %irq_alloc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq_alloc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  %func1 = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 24, i32 4
  %2 = ptrtoint ptr %func1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end8_crit_edge, label %if.then3

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then3:                                         ; preds = %if.then
  tail call void @sdio_claim_host(ptr noundef nonnull %3) #7
  %call = tail call i32 @sdio_release_irq(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %drv_dbg = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 2
  %4 = ptrtoint ptr %drv_dbg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %drv_dbg, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %drv_dbg, align 8
  %6 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvobj, align 8
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %7, i32 0, i32 41
  %8 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.sdio_free_irq, i32 noundef %call) #11
  br label %if.end

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %dbg_sdio_free_irq_cnt = getelementptr inbounds %struct.dvobj_priv, ptr %dvobj, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %dbg_sdio_free_irq_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dbg_sdio_free_irq_cnt, align 8
  %inc7 = add i32 %11, 1
  store i32 %inc7, ptr %dbg_sdio_free_irq_cnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  tail call void @sdio_release_host(ptr noundef nonnull %3) #7
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then.if.end8_crit_edge
  %12 = ptrtoint ptr %irq_alloc to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %irq_alloc, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_init_io_priv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_set_intf_ops(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_read_chip_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_chip_configure(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_Initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_read_chip_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_init_drv_sw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_wdev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_macaddr_cfg(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_disable_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_wdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_wdev_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_enable_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_sync_int_hdl(ptr nocapture noundef readonly %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call i32 @llvm.read_register.i32(metadata !18) #7
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  tail call void @rtw_sdio_set_irq_thd(ptr noundef %1, ptr noundef %7) #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void @sd_int_hdl(ptr noundef %9) #7
  tail call void @rtw_sdio_set_irq_thd(ptr noundef %1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sdio_set_irq_thd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sd_int_hdl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_disassoc_cmd(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_mlme_ap_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_cancel_all_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_dev_unload(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_free_drv_sw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_unregister_netdevs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_ps_deny(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_pm_set_ips(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_pm_set_lps(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @LeaveAllPowerSaveMode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_btcoex_HaltNotify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_sdio_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bInSuspend = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 41
  %6 = ptrtoint ptr %bInSuspend to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bInSuspend, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dbg_suspend_error_cnt = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %dbg_suspend_error_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dbg_suspend_error_cnt, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %dbg_suspend_error_cnt, align 8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw_suspend_common(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_sdio_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dbg_resume_cnt = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %dbg_resume_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dbg_resume_cnt, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %dbg_resume_cnt, align 8
  %dvobj.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvobj.i, align 4
  %bInSuspend.i = getelementptr inbounds %struct.dvobj_priv, ptr %7, i32 0, i32 22, i32 41
  %8 = ptrtoint ptr %bInSuspend.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInSuspend.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dbg_resume_error_cnt.i = getelementptr inbounds %struct.dvobj_priv, ptr %7, i32 0, i32 2, i32 9
  %10 = ptrtoint ptr %dbg_resume_error_cnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dbg_resume_error_cnt.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %dbg_resume_error_cnt.i, align 4
  br label %rtw_resume_process.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @rtw_resume_common(ptr noundef %3) #7
  br label %rtw_resume_process.exit

rtw_resume_process.exit:                          ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ -1, %if.then.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %last_scan_time = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 5, i32 23
  %13 = ptrtoint ptr %last_scan_time to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %last_scan_time, align 8
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_suspend_common(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_resume_common(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @sdio_ids, !1, !"sdio_ids", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/os_dep/sdio_intf.c", i32 16, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/os_dep/sdio_intf.c", i32 40, i32 10}
!4 = !{ptr @rtl8723bs_sdio_driver, !5, !"rtl8723bs_sdio_driver", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8723bs/os_dep/sdio_intf.c", i32 37, i32 27}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/os_dep/sdio_intf.c", i32 103, i32 9}
!8 = !{ptr @__func__.sdio_free_irq, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8723bs/os_dep/sdio_intf.c", i32 104, i32 9}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8723bs/os_dep/sdio_intf.c", i32 76, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @sdio_alloc_irq._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @sdio_alloc_irq._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @rtw_sdio_pm_ops, !17, !"rtw_sdio_pm_ops", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8723bs/os_dep/sdio_intf.c", i32 32, i32 32}
!18 = !{!"sp"}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
