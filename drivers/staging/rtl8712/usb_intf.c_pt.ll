; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/usb_intf.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/usb_intf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drv_priv = type { %struct.usb_driver, i32 }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dvobj_priv = type { ptr, i32, i8, ptr, ptr, ptr }
%struct._adapter = type { %struct.dvobj_priv, %struct.mlme_priv, %struct.cmd_priv, %struct.evt_priv, ptr, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.wlan_acl_pool, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.hal_priv, %struct.led_priv, %struct.mp_priv, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, %struct.net_device_stats, %struct.iw_statistics, i32, %struct.work_struct, i8, %struct.spinlock, ptr, ptr, %struct.mutex, %struct.completion }
%struct.mlme_priv = type { %struct.spinlock, %struct.spinlock, i32, i8, ptr, ptr, %struct.__queue, %struct.__queue, ptr, i32, i8, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, %struct.sitesurvey_ctrl, %struct.timer_list, i32, i32, %struct.timer_list, %struct.timer_list, %struct.qos_priv, %struct.ht_priv, %struct.timer_list }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.NDIS_802_11_CONFIGURATION, i32, [16 x i8], i32, [768 x i8] }
%struct.NDIS_802_11_CONFIGURATION = type { i32, i32, i32, i32, %struct.NDIS_802_11_CONFIGURATION_FH }
%struct.NDIS_802_11_CONFIGURATION_FH = type { i32, i32, i32, i32 }
%struct.sitesurvey_ctrl = type { i64, i32, i32, %struct.timer_list }
%struct.qos_priv = type { i32 }
%struct.ht_priv = type { i32, i32, [16 x i8], i32, i32, i32, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.evt_priv = type { %struct.__queue, i8, ptr, ptr, i32, %struct.tasklet_struct }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.99, i32 }
%struct.atomic_t = type { i32 }
%union.anon.99 = type { ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, i32, i32, %struct.__queue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, i32, ptr, i8, i8, i8, i16, i32, i64, i32, ptr, i8, i8, %struct.tasklet_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32 }
%struct.hw_txqueue = type { i32, i32, i32, i32, [8 x i32], i32, i32, i32 }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, %struct.smooth_rssi_data, %struct.smooth_rssi_data }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.smooth_rssi_data = type { [100 x i32], i32, i32, i32 }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i32, i32, [2 x %union.Keytype], [2 x %union.Keytype], [2 x %union.Keytype], %union.pn48, %union.pn48, i8, i8, [512 x i8], i32, i8, i8, %struct.timer_list, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.NDIS_802_11_WEP, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.RT_PMKID_LIST], i8 }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.NDIS_802_11_WEP = type { i32, i32, i32, [16 x i8] }
%struct.RT_PMKID_LIST = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
%struct.registry_priv = type { i8, i8, i8, i8, i8, %struct.ndis_802_11_ssid, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wlan_bssid_ex, i8, i8, i8, i8, i8, i8 }
%struct.wlan_acl_pool = type { [64 x %struct.wlan_acl_node] }
%struct.wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.work_struct, %struct.work_struct, %struct.timer_list, i8, i32, %struct.spinlock, i32, i8, i8 }
%struct.eeprom_priv = type { i8, i8, i8, [6 x i8], i8, i16, [3 x i8], [15 x i8], [15 x i8], [201 x i8], [256 x i8], i32 }
%struct.hal_priv = type { [10 x ptr], ptr }
%struct.led_priv = type { %struct.LED_871x, %struct.LED_871x, i32, i8, ptr }
%struct.LED_871x = type { ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, %struct.timer_list, %struct.work_struct }
%struct.mp_priv = type { ptr, %struct.mp_wiparam, i8, i8, i32, i32, i32, i32, %struct.recv_stat, i32, i32, i8, i8, i8, i32, i16, i16, i8, i8, i32, %struct.wlan_network, [6 x i8], i32, i32, ptr, ptr, %struct.__queue, i32 }
%struct.mp_wiparam = type { i32, i32, i32, i32 }
%struct.recv_stat = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.101, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.115, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.101 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.115 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@drvpriv = internal global { %struct.drv_priv, [40 x i8] } { %struct.drv_priv { %struct.usb_driver { ptr @.str, ptr @r871xu_drv_init, ptr @r871xu_dev_remove, ptr null, ptr @r871x_suspend, ptr @r871x_resume, ptr null, ptr null, ptr null, ptr @rtl871x_usb_id_tbl, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, i32 0 }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_r8712u__344_638_r8712u_drv_entry6 = internal global ptr @r8712u_drv_entry, section ".initcall6.init", align 4
@__exitcall_r8712u_drv_halt = internal global ptr @r8712u_drv_halt, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"r8712u\00", [25 x i8] zeroinitializer }, align 32
@rtl871x_usb_id_tbl = internal constant { [79 x %struct.usb_device_id], [472 x i8] } { [79 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3034, i16 -32399, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3034, i16 -32397, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3034, i16 -30958, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3034, i16 -30957, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3034, i16 -15086, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 -32376, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 6022, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2821, i16 6033, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -27558, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 4593, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 71, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 13062, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 13062, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29586, i16 30225, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -27133, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 22, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1784, i16 -8140, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1784, i16 -8142, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1929, i16 359, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8217, i16 -21720, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8217, i16 -4842, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 87, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 69, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 89, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 75, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 91, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 93, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 99, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6015, i16 340, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3034, i16 20599, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5776, i16 1874, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8436, i16 25707, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -15086, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 9684, i16 19617, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 9684, i16 19627, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3034, i16 -32398, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3034, i16 -32366, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3760, i16 -28575, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13091, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13073, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13122, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13107, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13108, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13109, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13110, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13065, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -32417, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 13058, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 13056, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 13059, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29586, i16 30226, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5952, i16 -27131, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1784, i16 -8143, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 21, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13062, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8217, i16 -4840, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8217, i16 18689, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 88, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 73, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 76, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 108, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3574, i16 100, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 13056, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 13057, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5298, i16 13058, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1266, i16 -20494, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1266, i16 -20491, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1266, i16 -20490, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13121, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13072, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13093, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3034, i16 -32396, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 -31654, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 81, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 29586, i16 30242, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1033, i16 694, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [472 x i8] zeroinitializer }, align 32
@pintf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@wlan_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.22, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@r871xu_drv_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 403, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"r8712u: Boot from %s: Autoload %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"r871xu_drv_init\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/staging/rtl8712/usb_intf.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@r871xu_drv_init._entry_ptr = internal global ptr @r871xu_drv_init._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EEPROM\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EFUSE\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Failed\00", [25 x i8] zeroinitializer }, align 32
@r8712_initmac = external dso_local local_unnamed_addr global ptr, align 4
@r871xu_drv_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 503, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"r8712u: CustomerID = 0x%.4x\0A\00", [35 x i8] zeroinitializer }, align 32
@r871xu_drv_init._entry_ptr.12 = internal global ptr @r871xu_drv_init._entry.10, section ".printk_index", align 4
@r871xu_drv_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 561, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"r8712u: MAC Address from user = %pM\0A\00", [59 x i8] zeroinitializer }, align 32
@r871xu_drv_init._entry_ptr.15 = internal global ptr @r871xu_drv_init._entry.13, section ".printk_index", align 4
@r871xu_drv_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 564, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"r8712u: MAC Address from efuse = %pM\0A\00", [58 x i8] zeroinitializer }, align 32
@r871xu_drv_init._entry_ptr.18 = internal global ptr @r871xu_drv_init._entry.16, section ".printk_index", align 4
@r871xu_drv_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&padapter->lock_rx_ff0_filter\00", [34 x i8] zeroinitializer }, align 32
@r871xu_drv_init.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&padapter->mutex_start\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wlan\00", [27 x i8] zeroinitializer }, align 32
@r8712_usb_dvobj_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 255, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"r8712u: USB_SPEED_HIGH with %d endpoints\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"r8712_usb_dvobj_init\00", [43 x i8] zeroinitializer }, align 32
@r8712_usb_dvobj_init._entry_ptr = internal global ptr @r8712_usb_dvobj_init._entry, section ".printk_index", align 4
@r8712_usb_dvobj_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 259, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"r8712u: USB_SPEED_LOW with %d endpoints\0A\00", [55 x i8] zeroinitializer }, align 32
@r8712_usb_dvobj_init._entry_ptr.27 = internal global ptr @r8712_usb_dvobj_init._entry.25, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Suspending...\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Resuming...\0A\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 8, i64 1, i64 3, i64 5, i64 8, i64 9, i64 11, i64 12, i64 14, i64 15, i64 18, i64 19, i64 254]
@__sancov_gen_cov_switch_values.30 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 6, i64 8, i64 14, i64 15, i64 16, i64 20, i64 21, i64 27]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.32 = private unnamed_addr constant [8 x i8] c"drvpriv\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 228, i32 24 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 229, i32 21 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"rtl871x_usb_id_tbl\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 38, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"pintf\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 31, i32 30 }
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"wlan_type\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 334, i32 33 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 401, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 502, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 560, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 563, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 571, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 572, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 335, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 254, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 258, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 197, i32 23 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [38 x i8] c"../drivers/staging/rtl8712/usb_intf.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 218, i32 24 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__exitcall_r8712u_drv_halt, ptr @__initcall__kmod_r8712u__344_638_r8712u_drv_entry6, ptr @r8712_usb_dvobj_init._entry, ptr @r8712_usb_dvobj_init._entry.25, ptr @r8712_usb_dvobj_init._entry_ptr, ptr @r8712_usb_dvobj_init._entry_ptr.27, ptr @r8712u_drv_halt, ptr @r871xu_drv_init._entry, ptr @r871xu_drv_init._entry.10, ptr @r871xu_drv_init._entry.13, ptr @r871xu_drv_init._entry.16, ptr @r871xu_drv_init._entry_ptr, ptr @r871xu_drv_init._entry_ptr.12, ptr @r871xu_drv_init._entry_ptr.15, ptr @r871xu_drv_init._entry_ptr.18, ptr @drvpriv, ptr @.str, ptr @rtl871x_usb_id_tbl, ptr @pintf, ptr @wlan_type, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @r871xu_drv_init.__key, ptr @.str.19, ptr @r871xu_drv_init.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drvpriv to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl871x_usb_id_tbl to i32), i32 1896, i32 2368, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pintf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlan_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r871xu_drv_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r871xu_drv_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r871xu_drv_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r871xu_drv_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r871xu_drv_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r871xu_drv_init.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_usb_dvobj_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8712_usb_dvobj_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl871x_intf_stop(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %inirp_deinit = getelementptr inbounds %struct.dvobj_priv, ptr %padapter, i32 0, i32 4
  %0 = ptrtoint ptr %inirp_deinit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inirp_deinit, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %entry.if.end5_crit_edge, label %if.then2

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %1(ptr noundef %padapter) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %entry.if.end5_crit_edge
  tail call void @r8712_usb_write_port_cancel(ptr noundef %padapter) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_usb_write_port_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r871x_dev_unload(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bup = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 25
  %0 = ptrtoint ptr %bup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  %driver_stopped = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 16
  %2 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %driver_stopped, align 4
  %inirp_deinit.i = getelementptr inbounds %struct.dvobj_priv, ptr %padapter, i32 0, i32 4
  %3 = ptrtoint ptr %inirp_deinit.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %inirp_deinit.i, align 8
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %if.then.rtl871x_intf_stop.exit_crit_edge, label %if.then2.i

if.then.rtl871x_intf_stop.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl871x_intf_stop.exit

if.then2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %4(ptr noundef %padapter) #6
  br label %rtl871x_intf_stop.exit

rtl871x_intf_stop.exit:                           ; preds = %if.then2.i, %if.then.rtl871x_intf_stop.exit_crit_edge
  tail call void @r8712_usb_write_port_cancel(ptr noundef %padapter) #6
  tail call void @r8712_stop_drv_threads(ptr noundef %padapter) #6
  %surprise_removed = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 17
  %5 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %surprise_removed, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.then2, label %rtl871x_intf_stop.exit.if.end_crit_edge

rtl871x_intf_stop.exit.if.end_crit_edge:          ; preds = %rtl871x_intf_stop.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then2:                                         ; preds = %rtl871x_intf_stop.exit
  call void @__sanitizer_cov_trace_pc() #8
  %hw_init_completed = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 20
  %7 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %hw_init_completed, align 8
  %call = tail call i32 @rtl8712_hal_deinit(ptr noundef %padapter) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %rtl871x_intf_stop.exit.if.end_crit_edge
  %dvobj_deinit = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 23
  %8 = ptrtoint ptr %dvobj_deinit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvobj_deinit, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %9(ptr noundef %padapter) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %10 = ptrtoint ptr %bup to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %bup, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_stop_drv_threads(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8712_hal_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @r8712u_drv_halt() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  store i32 0, ptr getelementptr inbounds (%struct.drv_priv, ptr @drvpriv, i32 0, i32 1), align 4
  tail call void @usb_deregister(ptr noundef nonnull @drvpriv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @r8712u_drv_entry() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 1, ptr getelementptr inbounds (%struct.drv_priv, ptr @drvpriv, i32 0, i32 1), align 4
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @drvpriv, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r871xu_drv_init(ptr noundef %pusb_intf, ptr nocapture noundef readonly %pdid) #0 align 64 {
entry:
  %mac = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %call1 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #6
  store ptr %pusb_intf, ptr @pintf, align 4
  %call2 = tail call ptr @r8712_init_netdev() #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.put_dev_crit_edge, label %if.end

entry.put_dev_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_dev

if.end:                                           ; preds = %entry
  %add.ptr.i337 = getelementptr i8, ptr %call2, i32 2304
  %idVendor4.i = getelementptr inbounds %struct.usb_device_id, ptr %pdid, i32 0, i32 1
  %idProduct8.i = getelementptr inbounds %struct.usb_device_id, ptr %pdid, i32 0, i32 2
  %ht_enable.i = getelementptr i8, ptr %call2, i32 12712
  %cbw40_enable.i = getelementptr i8, ptr %call2, i32 12713
  %ampdu_enable.i = getelementptr i8, ptr %call2, i32 12714
  %2 = ptrtoint ptr %idVendor4.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idVendor4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2821, i16 %3)
  %cmp6.i = icmp eq i16 %3, 2821
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end.for.inc.i_crit_edge

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %idProduct8.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %idProduct8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6033, i16 %5)
  %cmp11.not.i = icmp eq i16 %5, 6033
  br i1 %cmp11.not.i, label %if.then.i, label %land.lhs.true.i.disable_ht_for_spec_devid.exit_crit_edge

land.lhs.true.i.disable_ht_for_spec_devid.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_ht_for_spec_devid.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %ht_enable.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ht_enable.i, align 8
  %7 = ptrtoint ptr %cbw40_enable.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %cbw40_enable.i, align 1
  %8 = ptrtoint ptr %ampdu_enable.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ampdu_enable.i, align 2
  %9 = ptrtoint ptr %idVendor4.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %.pr.i = load i16, ptr %idVendor4.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.end.for.inc.i_crit_edge
  %10 = phi i16 [ %3, %if.end.for.inc.i_crit_edge ], [ %.pr.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 3574, i16 %10)
  %cmp6.1.i = icmp eq i16 %10, 3574
  br i1 %cmp6.1.i, label %land.lhs.true.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %11 = ptrtoint ptr %idProduct8.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %idProduct8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 89, i16 %12)
  %cmp11.1.not.i = icmp eq i16 %12, 89
  br i1 %cmp11.1.not.i, label %if.then.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %ht_enable.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %ht_enable.i, align 8
  %14 = ptrtoint ptr %cbw40_enable.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %cbw40_enable.i, align 1
  %15 = ptrtoint ptr %ampdu_enable.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %ampdu_enable.i, align 2
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %16 = ptrtoint ptr %idVendor4.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %.pr46.i = load i16, ptr %idVendor4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5075, i16 %.pr46.i)
  %cmp6.2.i = icmp eq i16 %.pr46.i, 5075
  br i1 %cmp6.2.i, label %land.lhs.true.2.i, label %for.inc.1.i.disable_ht_for_spec_devid.exit_crit_edge

for.inc.1.i.disable_ht_for_spec_devid.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_ht_for_spec_devid.exit

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %17 = ptrtoint ptr %idProduct8.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %idProduct8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 13062, i16 %18)
  %cmp11.2.not.i = icmp eq i16 %18, 13062
  br i1 %cmp11.2.not.i, label %for.inc.2.i, label %land.lhs.true.2.i.land.lhs.true.3.i_crit_edge

land.lhs.true.2.i.land.lhs.true.3.i_crit_edge:    ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.3.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i
  %19 = ptrtoint ptr %ht_enable.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %ht_enable.i, align 8
  %20 = ptrtoint ptr %cbw40_enable.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %cbw40_enable.i, align 1
  %21 = ptrtoint ptr %ampdu_enable.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %ampdu_enable.i, align 2
  %22 = ptrtoint ptr %idVendor4.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %.pr26.i = load i16, ptr %idVendor4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5075, i16 %.pr26.i)
  %cmp6.3.i = icmp eq i16 %.pr26.i, 5075
  br i1 %cmp6.3.i, label %land.lhs.true.3thread-pre-split.i, label %for.inc.2.i.disable_ht_for_spec_devid.exit_crit_edge

for.inc.2.i.disable_ht_for_spec_devid.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_ht_for_spec_devid.exit

land.lhs.true.3thread-pre-split.i:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %idProduct8.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %.pr30.i = load i16, ptr %idProduct8.i, align 4
  br label %land.lhs.true.3.i

land.lhs.true.3.i:                                ; preds = %land.lhs.true.3thread-pre-split.i, %land.lhs.true.2.i.land.lhs.true.3.i_crit_edge
  %24 = phi i16 [ %.pr30.i, %land.lhs.true.3thread-pre-split.i ], [ %18, %land.lhs.true.2.i.land.lhs.true.3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 13073, i16 %24)
  %cmp11.3.not.i = icmp eq i16 %24, 13073
  br i1 %cmp11.3.not.i, label %if.then.3.i, label %land.lhs.true.3.i.for.inc.3.i_crit_edge

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %ht_enable.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %ht_enable.i, align 8
  %26 = ptrtoint ptr %cbw40_enable.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %cbw40_enable.i, align 1
  %27 = ptrtoint ptr %ampdu_enable.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %ampdu_enable.i, align 2
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %land.lhs.true.3.i.for.inc.3.i_crit_edge
  %28 = ptrtoint ptr %idVendor4.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %.pr31.i = load i16, ptr %idVendor4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5075, i16 %.pr31.i)
  %cmp6.4.i = icmp eq i16 %.pr31.i, 5075
  br i1 %cmp6.4.i, label %land.lhs.true.4.i, label %for.inc.3.i.disable_ht_for_spec_devid.exit_crit_edge

for.inc.3.i.disable_ht_for_spec_devid.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_ht_for_spec_devid.exit

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %29 = ptrtoint ptr %idProduct8.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %idProduct8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 13109, i16 %30)
  %cmp11.4.not.i = icmp eq i16 %30, 13109
  br i1 %cmp11.4.not.i, label %for.inc.4.i, label %land.lhs.true.4.i.land.lhs.true.5.i_crit_edge

land.lhs.true.4.i.land.lhs.true.5.i_crit_edge:    ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.5.i

for.inc.4.i:                                      ; preds = %land.lhs.true.4.i
  %31 = ptrtoint ptr %ht_enable.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %ht_enable.i, align 8
  %32 = ptrtoint ptr %cbw40_enable.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %cbw40_enable.i, align 1
  %33 = ptrtoint ptr %ampdu_enable.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %ampdu_enable.i, align 2
  %34 = ptrtoint ptr %idVendor4.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %.pr33.pr.pr.i = load i16, ptr %idVendor4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5075, i16 %.pr33.pr.pr.i)
  %cmp6.5.i = icmp eq i16 %.pr33.pr.pr.i, 5075
  br i1 %cmp6.5.i, label %land.lhs.true.5thread-pre-split.i, label %for.inc.4.i.disable_ht_for_spec_devid.exit_crit_edge

for.inc.4.i.disable_ht_for_spec_devid.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_ht_for_spec_devid.exit

land.lhs.true.5thread-pre-split.i:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %idProduct8.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %.pr37.i = load i16, ptr %idProduct8.i, align 4
  br label %land.lhs.true.5.i

land.lhs.true.5.i:                                ; preds = %land.lhs.true.5thread-pre-split.i, %land.lhs.true.4.i.land.lhs.true.5.i_crit_edge
  %36 = phi i16 [ %.pr37.i, %land.lhs.true.5thread-pre-split.i ], [ %30, %land.lhs.true.4.i.land.lhs.true.5.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 13110, i16 %36)
  %cmp11.5.not.i = icmp eq i16 %36, 13110
  br i1 %cmp11.5.not.i, label %if.then.5.i, label %land.lhs.true.5.i.for.inc.5.i_crit_edge

land.lhs.true.5.i.for.inc.5.i_crit_edge:          ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %ht_enable.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %ht_enable.i, align 8
  %38 = ptrtoint ptr %cbw40_enable.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %cbw40_enable.i, align 1
  %39 = ptrtoint ptr %ampdu_enable.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %ampdu_enable.i, align 2
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i, %land.lhs.true.5.i.for.inc.5.i_crit_edge
  %40 = ptrtoint ptr %idVendor4.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %.pr38.i = load i16, ptr %idVendor4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5075, i16 %.pr38.i)
  %cmp6.6.i = icmp eq i16 %.pr38.i, 5075
  br i1 %cmp6.6.i, label %land.lhs.true.6.i, label %for.inc.5.i.disable_ht_for_spec_devid.exit_crit_edge

for.inc.5.i.disable_ht_for_spec_devid.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_ht_for_spec_devid.exit

land.lhs.true.6.i:                                ; preds = %for.inc.5.i
  %41 = ptrtoint ptr %idProduct8.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %idProduct8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 13120, i16 %42)
  %cmp11.6.not.i = icmp eq i16 %42, 13120
  br i1 %cmp11.6.not.i, label %for.inc.6.i, label %land.lhs.true.6.i.land.lhs.true.7.i_crit_edge

land.lhs.true.6.i.land.lhs.true.7.i_crit_edge:    ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.7.i

for.inc.6.i:                                      ; preds = %land.lhs.true.6.i
  %43 = ptrtoint ptr %ht_enable.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %ht_enable.i, align 8
  %44 = ptrtoint ptr %cbw40_enable.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %cbw40_enable.i, align 1
  %45 = ptrtoint ptr %ampdu_enable.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %ampdu_enable.i, align 2
  %46 = ptrtoint ptr %idVendor4.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %.pr40.pr.pr.i = load i16, ptr %idVendor4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5075, i16 %.pr40.pr.pr.i)
  %cmp6.7.i = icmp eq i16 %.pr40.pr.pr.i, 5075
  br i1 %cmp6.7.i, label %land.lhs.true.7thread-pre-split.i, label %for.inc.6.i.disable_ht_for_spec_devid.exit_crit_edge

for.inc.6.i.disable_ht_for_spec_devid.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_ht_for_spec_devid.exit

land.lhs.true.7thread-pre-split.i:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %idProduct8.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %.pr44.i = load i16, ptr %idProduct8.i, align 4
  br label %land.lhs.true.7.i

land.lhs.true.7.i:                                ; preds = %land.lhs.true.7thread-pre-split.i, %land.lhs.true.6.i.land.lhs.true.7.i_crit_edge
  %48 = phi i16 [ %.pr44.i, %land.lhs.true.7thread-pre-split.i ], [ %42, %land.lhs.true.6.i.land.lhs.true.7.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 13121, i16 %48)
  %cmp11.7.not.i = icmp eq i16 %48, 13121
  br i1 %cmp11.7.not.i, label %if.then.7.i, label %land.lhs.true.7.i.disable_ht_for_spec_devid.exit_crit_edge

land.lhs.true.7.i.disable_ht_for_spec_devid.exit_crit_edge: ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_ht_for_spec_devid.exit

if.then.7.i:                                      ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %ht_enable.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %ht_enable.i, align 8
  %50 = ptrtoint ptr %cbw40_enable.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %cbw40_enable.i, align 1
  %51 = ptrtoint ptr %ampdu_enable.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %ampdu_enable.i, align 2
  br label %disable_ht_for_spec_devid.exit

disable_ht_for_spec_devid.exit:                   ; preds = %if.then.7.i, %land.lhs.true.7.i.disable_ht_for_spec_devid.exit_crit_edge, %for.inc.6.i.disable_ht_for_spec_devid.exit_crit_edge, %for.inc.5.i.disable_ht_for_spec_devid.exit_crit_edge, %for.inc.4.i.disable_ht_for_spec_devid.exit_crit_edge, %for.inc.3.i.disable_ht_for_spec_devid.exit_crit_edge, %for.inc.2.i.disable_ht_for_spec_devid.exit_crit_edge, %for.inc.1.i.disable_ht_for_spec_devid.exit_crit_edge, %land.lhs.true.i.disable_ht_for_spec_devid.exit_crit_edge
  %pusbdev = getelementptr i8, ptr %call2, i32 2324
  %52 = ptrtoint ptr %pusbdev to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr.i, ptr %pusbdev, align 4
  %pusb_intf6 = getelementptr i8, ptr %call2, i32 16200
  %53 = ptrtoint ptr %pusb_intf6 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %pusb_intf, ptr %pusb_intf6, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 7, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 7
  %parent = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 133, i32 1
  %55 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %dev, ptr %parent, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 133, i32 4
  %56 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @wlan_type, ptr %type, align 4
  %dvobj_init = getelementptr i8, ptr %call2, i32 15960
  %57 = ptrtoint ptr %dvobj_init to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @r8712_usb_dvobj_init, ptr %dvobj_init, align 8
  %dvobj_deinit = getelementptr i8, ptr %call2, i32 15964
  %58 = ptrtoint ptr %dvobj_deinit to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @r8712_usb_dvobj_deinit, ptr %dvobj_deinit, align 4
  %hal_bus_init = getelementptr i8, ptr %call2, i32 14608
  %59 = ptrtoint ptr %hal_bus_init to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @r8712_usb_hal_bus_init, ptr %hal_bus_init, align 8
  %inirp_init = getelementptr i8, ptr %call2, i32 2316
  %60 = ptrtoint ptr %inirp_init to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @r8712_usb_inirp_init, ptr %inirp_init, align 4
  %inirp_deinit = getelementptr i8, ptr %call2, i32 2320
  %61 = ptrtoint ptr %inirp_deinit to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @r8712_usb_inirp_deinit, ptr %inirp_deinit, align 8
  %62 = load ptr, ptr %pusbdev, align 4
  %63 = ptrtoint ptr %add.ptr.i337 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr.i337, ptr %add.ptr.i337, align 4
  %eeprom_address_size.i = getelementptr i8, ptr %call2, i32 15951
  %64 = ptrtoint ptr %eeprom_address_size.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 6, ptr %eeprom_address_size.i, align 1
  %65 = load ptr, ptr @pintf, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cur_altsetting.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bNumEndpoints.i, align 1
  %conv.i = zext i8 %69 to i32
  %nr_endpoint.i = getelementptr i8, ptr %call2, i32 2308
  %70 = ptrtoint ptr %nr_endpoint.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv.i, ptr %nr_endpoint.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 4
  %71 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %72)
  %cmp.i = icmp eq i32 %72, 3
  %ishighspeed.i = getelementptr i8, ptr %call2, i32 2312
  %..i = zext i1 %cmp.i to i8
  %.str.23..str.26.i = select i1 %cmp.i, ptr @.str.23, ptr @.str.26
  %73 = ptrtoint ptr %ishighspeed.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %..i, ptr %ishighspeed.i, align 4
  %dev8.i = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8.i, ptr noundef nonnull %.str.23..str.26.i, i32 noundef %conv.i) #9
  %call.i = tail call i32 @r8712_alloc_io_queue(ptr noundef %add.ptr.i337) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp10.i.not, label %disable_ht_for_spec_devid.exit.free_netdev_crit_edge, label %if.end14

disable_ht_for_spec_devid.exit.free_netdev_crit_edge: ; preds = %disable_ht_for_spec_devid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_netdev

if.end14:                                         ; preds = %disable_ht_for_spec_devid.exit
  %call15 = tail call i32 @r8712_init_drv_sw(ptr noundef %add.ptr.i337) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.dvobj_deinit245_crit_edge

if.end14.dvobj_deinit245_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvobj_deinit245

if.end18:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #6
  %74 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 1
  %75 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 2
  %76 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 3
  %77 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %78 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 5
  %79 = call ptr @memset(ptr %mac, i32 255, i32 6)
  %call19 = tail call zeroext i8 @r8712_read8(ptr noundef %add.ptr.i337, i32 noundef 270860298) #6
  %conv = zext i8 %call19 to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool21.not, ptr @.str.7, ptr @.str.6
  %and23 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %cond25 = select i1 %tobool24.not, ptr @.str.9, ptr @.str.8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond, ptr noundef nonnull %cond25) #9
  br i1 %tobool24.not, label %if.end18.if.end146_crit_edge, label %if.then29

if.end18.if.end146_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

if.then29:                                        ; preds = %if.end18
  %efuse_eeprom_data = getelementptr i8, ptr %call2, i32 14306
  %call30 = tail call zeroext i8 @r8712_read8(ptr noundef %add.ptr.i337, i32 noundef 270860343) #6
  %or = or i8 %call30, -128
  tail call void @r8712_write8(ptr noundef %add.ptr.i337, i32 noundef 270860343, i8 noundef zeroext %or) #6
  tail call void @msleep(i32 noundef 20) #6
  %80 = and i8 %call30, 127
  tail call void @r8712_write8(ptr noundef %add.ptr.i337, i32 noundef 270860343, i8 noundef zeroext %80) #6
  %call36 = tail call i32 @r8712_read32(ptr noundef %add.ptr.i337, i32 noundef 270860292) #6
  %shr = lshr i32 %call36, 15
  %conv38 = and i32 %shr, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv38)
  %cmp40 = icmp eq i32 %conv38, 3
  %81 = lshr i32 %conv38, 1
  %82 = trunc i32 %81 to i8
  %conv45 = add nuw nsw i8 %82, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %82)
  %switch.inv = icmp ugt i8 %82, 2
  %spec.select = select i1 %switch.inv, i8 2, i8 %conv45
  %storemerge = select i1 %cmp40, i8 3, i8 %spec.select
  %83 = getelementptr i8, ptr %call2, i32 11752
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %storemerge, ptr %83, align 8
  %call57 = tail call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %add.ptr.i337, i8 noundef zeroext 0, ptr noundef %efuse_eeprom_data) #6
  %arrayidx.1 = getelementptr i8, ptr %call2, i32 14314
  %call57.1 = tail call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %add.ptr.i337, i8 noundef zeroext 1, ptr noundef %arrayidx.1) #6
  %arrayidx.2 = getelementptr i8, ptr %call2, i32 14322
  %call57.2 = tail call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %add.ptr.i337, i8 noundef zeroext 2, ptr noundef %arrayidx.2) #6
  %arrayidx.3 = getelementptr i8, ptr %call2, i32 14330
  %call57.3 = tail call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %add.ptr.i337, i8 noundef zeroext 3, ptr noundef %arrayidx.3) #6
  %arrayidx.4 = getelementptr i8, ptr %call2, i32 14338
  %call57.4 = tail call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %add.ptr.i337, i8 noundef zeroext 4, ptr noundef %arrayidx.4) #6
  %arrayidx.5 = getelementptr i8, ptr %call2, i32 14346
  %call57.5 = tail call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %add.ptr.i337, i8 noundef zeroext 5, ptr noundef %arrayidx.5) #6
  %arrayidx.6 = getelementptr i8, ptr %call2, i32 14354
  %call57.6 = tail call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %add.ptr.i337, i8 noundef zeroext 6, ptr noundef %arrayidx.6) #6
  %arrayidx.7 = getelementptr i8, ptr %call2, i32 14362
  %call57.7 = tail call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %add.ptr.i337, i8 noundef zeroext 7, ptr noundef %arrayidx.7) #6
  %arrayidx.8 = getelementptr i8, ptr %call2, i32 14370
  %call57.8 = tail call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %add.ptr.i337, i8 noundef zeroext 8, ptr noundef %arrayidx.8) #6
  %arrayidx.9 = getelementptr i8, ptr %call2, i32 14378
  %call57.9 = tail call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %add.ptr.i337, i8 noundef zeroext 9, ptr noundef %arrayidx.9) #6
  %arrayidx.10 = getelementptr i8, ptr %call2, i32 14386
  %call57.10 = tail call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %add.ptr.i337, i8 noundef zeroext 10, ptr noundef %arrayidx.10) #6
  %arrayidx.11 = getelementptr i8, ptr %call2, i32 14394
  %call57.11 = tail call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %add.ptr.i337, i8 noundef zeroext 11, ptr noundef %arrayidx.11) #6
  %arrayidx.12 = getelementptr i8, ptr %call2, i32 14402
  %call57.12 = tail call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %add.ptr.i337, i8 noundef zeroext 12, ptr noundef %arrayidx.12) #6
  %arrayidx.13 = getelementptr i8, ptr %call2, i32 14410
  %call57.13 = tail call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %add.ptr.i337, i8 noundef zeroext 13, ptr noundef %arrayidx.13) #6
  %arrayidx.14 = getelementptr i8, ptr %call2, i32 14418
  %call57.14 = tail call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %add.ptr.i337, i8 noundef zeroext 14, ptr noundef %arrayidx.14) #6
  %arrayidx.15 = getelementptr i8, ptr %call2, i32 14426
  %call57.15 = tail call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %add.ptr.i337, i8 noundef zeroext 15, ptr noundef %arrayidx.15) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @r8712_initmac to i32))
  %85 = load ptr, ptr @r8712_initmac, align 4
  %tobool59.not = icmp eq ptr %85, null
  br i1 %tobool59.not, label %if.then29.if.then62_crit_edge, label %lor.lhs.false

if.then29.if.then62_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

lor.lhs.false:                                    ; preds = %if.then29
  %call61 = call zeroext i1 @mac_pton(ptr noundef nonnull %85, ptr noundef nonnull %mac) #6
  br i1 %call61, label %lor.lhs.false.if.end65_crit_edge, label %lor.lhs.false.if.then62_crit_edge

lor.lhs.false.if.then62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

lor.lhs.false.if.end65_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then62:                                        ; preds = %lor.lhs.false.if.then62_crit_edge, %if.then29.if.then62_crit_edge
  %arrayidx64 = getelementptr i8, ptr %call2, i32 14324
  %86 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx64, align 4
  %88 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %mac, align 4
  %add.ptr.i338 = getelementptr i8, ptr %call2, i32 14328
  %89 = ptrtoint ptr %add.ptr.i338 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %add.ptr.i338, align 2
  %91 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %77, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %lor.lhs.false.if.end65_crit_edge
  %arrayidx66 = getelementptr i8, ptr %call2, i32 14388
  %92 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx66, align 1
  %94 = zext i8 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values)
  switch i8 %93, label %sw.default100 [
    i8 1, label %if.end65.do.end106.sink.split_crit_edge
    i8 8, label %sw.bb70
    i8 9, label %sw.bb73
    i8 11, label %sw.bb76
    i8 3, label %sw.bb79
    i8 12, label %sw.bb82
    i8 14, label %sw.bb85
    i8 18, label %sw.bb88
    i8 -2, label %if.end65.do.end106_crit_edge
    i8 5, label %sw.bb91
    i8 15, label %sw.bb94
    i8 19, label %sw.bb97
  ]

if.end65.do.end106_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end106

if.end65.do.end106.sink.split_crit_edge:          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end106.sink.split

sw.bb70:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end106.sink.split

sw.bb73:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end106.sink.split

sw.bb76:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end106.sink.split

sw.bb79:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end106.sink.split

sw.bb82:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end106.sink.split

sw.bb85:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end106.sink.split

sw.bb88:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end106.sink.split

sw.bb91:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end106.sink.split

sw.bb94:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end106.sink.split

sw.bb97:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end106.sink.split

sw.default100:                                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end106.sink.split

do.end106.sink.split:                             ; preds = %sw.default100, %sw.bb97, %sw.bb94, %sw.bb91, %sw.bb88, %sw.bb85, %sw.bb82, %sw.bb79, %sw.bb76, %sw.bb73, %sw.bb70, %if.end65.do.end106.sink.split_crit_edge
  %.sink = phi i32 [ 6, %sw.bb70 ], [ 16, %sw.bb73 ], [ 14, %sw.bb76 ], [ 8, %sw.bb79 ], [ 20, %sw.bb82 ], [ 21, %sw.bb85 ], [ 27, %sw.bb88 ], [ 10, %sw.bb91 ], [ 22, %sw.bb94 ], [ 28, %sw.bb97 ], [ 0, %sw.default100 ], [ 15, %if.end65.do.end106.sink.split_crit_edge ]
  %CustomerID = getelementptr i8, ptr %call2, i32 14564
  %95 = ptrtoint ptr %CustomerID to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %.sink, ptr %CustomerID, align 4
  br label %do.end106

do.end106:                                        ; preds = %do.end106.sink.split, %if.end65.do.end106_crit_edge
  %CustomerID109 = getelementptr i8, ptr %call2, i32 14564
  %96 = ptrtoint ptr %CustomerID109 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %CustomerID109, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %97) #9
  %98 = ptrtoint ptr %CustomerID109 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %CustomerID109, align 4
  %100 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %99, label %sw.default139 [
    i32 0, label %do.end106.if.end146.sink.split_crit_edge
    i32 15, label %do.end106.if.end146.sink.split_crit_edge349
    i32 6, label %do.end106.if.end146.sink.split_crit_edge350
    i32 16, label %sw.bb114
    i32 14, label %do.end106.sw.bb119_crit_edge
    i32 8, label %do.end106.sw.bb119_crit_edge351
    i32 20, label %sw.bb124
    i32 21, label %sw.bb129
    i32 27, label %sw.bb134
  ]

do.end106.sw.bb119_crit_edge351:                  ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb119

do.end106.sw.bb119_crit_edge:                     ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb119

do.end106.if.end146.sink.split_crit_edge350:      ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146.sink.split

do.end106.if.end146.sink.split_crit_edge349:      ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146.sink.split

do.end106.if.end146.sink.split_crit_edge:         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146.sink.split

sw.bb114:                                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146.sink.split

sw.bb119:                                         ; preds = %do.end106.sw.bb119_crit_edge, %do.end106.sw.bb119_crit_edge351
  br label %if.end146.sink.split

sw.bb124:                                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146.sink.split

sw.bb129:                                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146.sink.split

sw.bb134:                                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146.sink.split

sw.default139:                                    ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146.sink.split

if.end146.sink.split:                             ; preds = %sw.default139, %sw.bb134, %sw.bb129, %sw.bb124, %sw.bb119, %sw.bb114, %do.end106.if.end146.sink.split_crit_edge, %do.end106.if.end146.sink.split_crit_edge349, %do.end106.if.end146.sink.split_crit_edge350
  %.sink348 = phi i32 [ 2, %sw.bb114 ], [ 3, %sw.bb119 ], [ 4, %sw.bb124 ], [ 5, %sw.bb129 ], [ 6, %sw.bb134 ], [ 0, %sw.default139 ], [ 1, %do.end106.if.end146.sink.split_crit_edge ], [ 1, %do.end106.if.end146.sink.split_crit_edge349 ], [ 1, %do.end106.if.end146.sink.split_crit_edge350 ]
  %.sink347 = phi i8 [ 1, %sw.bb114 ], [ 1, %sw.bb119 ], [ 1, %sw.bb124 ], [ 1, %sw.bb129 ], [ 1, %sw.bb134 ], [ 0, %sw.default139 ], [ 1, %do.end106.if.end146.sink.split_crit_edge ], [ 1, %do.end106.if.end146.sink.split_crit_edge349 ], [ 1, %do.end106.if.end146.sink.split_crit_edge350 ]
  %LedStrategy = getelementptr i8, ptr %call2, i32 14852
  %101 = ptrtoint ptr %LedStrategy to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %.sink348, ptr %LedStrategy, align 4
  %bRegUseLed = getelementptr i8, ptr %call2, i32 14856
  %102 = ptrtoint ptr %bRegUseLed to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %.sink347, ptr %bRegUseLed, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.end146.sink.split, %if.end18.if.end146_crit_edge
  %103 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %mac, align 4
  %105 = zext i8 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %104, label %if.end146.lor.lhs.false205_crit_edge [
    i8 -1, label %land.lhs.true
    i8 0, label %land.lhs.true180
  ]

if.end146.lor.lhs.false205_crit_edge:             ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false205

land.lhs.true:                                    ; preds = %if.end146
  %106 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %107)
  %cmp153 = icmp eq i8 %107, -1
  br i1 %cmp153, label %land.lhs.true155, label %land.lhs.true.lor.lhs.false205_crit_edge

land.lhs.true.lor.lhs.false205_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false205

land.lhs.true155:                                 ; preds = %land.lhs.true
  %108 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %75, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %109)
  %cmp158 = icmp eq i8 %109, -1
  br i1 %cmp158, label %land.lhs.true160, label %land.lhs.true155.lor.lhs.false205_crit_edge

land.lhs.true155.lor.lhs.false205_crit_edge:      ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false205

land.lhs.true160:                                 ; preds = %land.lhs.true155
  %110 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %76, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %111)
  %cmp163 = icmp eq i8 %111, -1
  br i1 %cmp163, label %land.lhs.true165, label %land.lhs.true160.lor.lhs.false205_crit_edge

land.lhs.true160.lor.lhs.false205_crit_edge:      ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false205

land.lhs.true165:                                 ; preds = %land.lhs.true160
  %112 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %77, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %113)
  %cmp168 = icmp eq i8 %113, -1
  br i1 %cmp168, label %land.lhs.true170, label %land.lhs.true165.lor.lhs.false205_crit_edge

land.lhs.true165.lor.lhs.false205_crit_edge:      ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false205

land.lhs.true170:                                 ; preds = %land.lhs.true165
  %114 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %115)
  %cmp173 = icmp eq i8 %115, -1
  %brmerge341 = select i1 %cmp173, i1 true, i1 %tobool24.not
  br i1 %brmerge341, label %land.lhs.true170.if.then207_crit_edge, label %land.lhs.true170.if.end214_crit_edge

land.lhs.true170.if.end214_crit_edge:             ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end214

land.lhs.true170.if.then207_crit_edge:            ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then207

land.lhs.true180:                                 ; preds = %if.end146
  %116 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %cmp183 = icmp eq i8 %117, 0
  br i1 %cmp183, label %land.lhs.true185, label %land.lhs.true180.lor.lhs.false205_crit_edge

land.lhs.true180.lor.lhs.false205_crit_edge:      ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false205

land.lhs.true185:                                 ; preds = %land.lhs.true180
  %118 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %75, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp188 = icmp eq i8 %119, 0
  br i1 %cmp188, label %land.lhs.true190, label %land.lhs.true185.lor.lhs.false205_crit_edge

land.lhs.true185.lor.lhs.false205_crit_edge:      ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false205

land.lhs.true190:                                 ; preds = %land.lhs.true185
  %120 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %76, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %cmp193 = icmp eq i8 %121, 0
  br i1 %cmp193, label %land.lhs.true195, label %land.lhs.true190.lor.lhs.false205_crit_edge

land.lhs.true190.lor.lhs.false205_crit_edge:      ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false205

land.lhs.true195:                                 ; preds = %land.lhs.true190
  %122 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %77, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp198 = icmp eq i8 %123, 0
  br i1 %cmp198, label %land.lhs.true200, label %land.lhs.true195.lor.lhs.false205_crit_edge

land.lhs.true195.lor.lhs.false205_crit_edge:      ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false205

land.lhs.true200:                                 ; preds = %land.lhs.true195
  %124 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp203 = icmp eq i8 %125, 0
  %brmerge = select i1 %cmp203, i1 true, i1 %tobool24.not
  br i1 %brmerge, label %land.lhs.true200.if.then207_crit_edge, label %land.lhs.true200.if.end214_crit_edge

land.lhs.true200.if.end214_crit_edge:             ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end214

land.lhs.true200.if.then207_crit_edge:            ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then207

lor.lhs.false205:                                 ; preds = %land.lhs.true195.lor.lhs.false205_crit_edge, %land.lhs.true190.lor.lhs.false205_crit_edge, %land.lhs.true185.lor.lhs.false205_crit_edge, %land.lhs.true180.lor.lhs.false205_crit_edge, %land.lhs.true165.lor.lhs.false205_crit_edge, %land.lhs.true160.lor.lhs.false205_crit_edge, %land.lhs.true155.lor.lhs.false205_crit_edge, %land.lhs.true.lor.lhs.false205_crit_edge, %if.end146.lor.lhs.false205_crit_edge
  br i1 %tobool24.not, label %lor.lhs.false205.if.then207_crit_edge, label %lor.lhs.false205.if.end214_crit_edge

lor.lhs.false205.if.end214_crit_edge:             ; preds = %lor.lhs.false205
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end214

lor.lhs.false205.if.then207_crit_edge:            ; preds = %lor.lhs.false205
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then207

if.then207:                                       ; preds = %lor.lhs.false205.if.then207_crit_edge, %land.lhs.true200.if.then207_crit_edge, %land.lhs.true170.if.then207_crit_edge
  %126 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %mac, align 4
  %127 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -32, ptr %74, align 1
  %128 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 76, ptr %75, align 2
  %129 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -121, ptr %76, align 1
  %130 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %77, align 4
  %131 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %78, align 1
  br label %if.end214

if.end214:                                        ; preds = %if.then207, %lor.lhs.false205.if.end214_crit_edge, %land.lhs.true200.if.end214_crit_edge, %land.lhs.true170.if.end214_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @r8712_initmac to i32))
  %132 = load ptr, ptr @r8712_initmac, align 4
  %tobool215.not = icmp eq ptr %132, null
  br i1 %tobool215.not, label %if.end214.if.end232_crit_edge, label %if.then216

if.end214.if.end232_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end232

if.then216:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #8
  %133 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %mac, align 4
  %135 = and i8 %134, -2
  store i8 %135, ptr %mac, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.then216, %if.end214.if.end232_crit_edge
  %.str.17.sink = phi ptr [ @.str.14, %if.then216 ], [ @.str.17, %if.end214.if.end232_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull %.str.17.sink, ptr noundef nonnull %mac) #9
  call void @dev_addr_mod(ptr noundef nonnull %call2, i32 noundef 0, ptr noundef nonnull %mac, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #6
  %call234 = call i32 @rtl871x_load_fw(ptr noundef %add.ptr.i337) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %do.body238, label %deinit_drv_sw

do.body238:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #8
  %lock_rx_ff0_filter = getelementptr i8, ptr %call2, i32 16152
  call void @__raw_spin_lock_init(ptr noundef %lock_rx_ff0_filter, ptr noundef nonnull @.str.19, ptr noundef nonnull @r871xu_drv_init.__key, i16 noundef signext 3) #6
  %mutex_start = getelementptr i8, ptr %call2, i32 16204
  call void @__mutex_init(ptr noundef %mutex_start, ptr noundef nonnull @.str.21, ptr noundef nonnull @r871xu_drv_init.__key.20) #6
  br label %cleanup

deinit_drv_sw:                                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #8
  call void @r8712_free_drv_sw(ptr noundef %add.ptr.i337) #6
  br label %dvobj_deinit245

dvobj_deinit245:                                  ; preds = %deinit_drv_sw, %if.end14.dvobj_deinit245_crit_edge
  %136 = ptrtoint ptr %dvobj_deinit to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dvobj_deinit, align 4
  call void %137(ptr noundef %add.ptr.i337) #6
  br label %free_netdev

free_netdev:                                      ; preds = %dvobj_deinit245, %disable_ht_for_spec_devid.exit.free_netdev_crit_edge
  call void @free_netdev(ptr noundef nonnull %call2) #6
  br label %put_dev

put_dev:                                          ; preds = %free_netdev, %entry.put_dev_crit_edge
  call void @usb_put_dev(ptr noundef %add.ptr.i) #6
  %driver_data.i.i339 = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 7, i32 8
  %138 = ptrtoint ptr %driver_data.i.i339 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %driver_data.i.i339, align 4
  br label %cleanup

cleanup:                                          ; preds = %put_dev, %do.body238
  %retval.0 = phi i32 [ -19, %put_dev ], [ 0, %do.body238 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r871xu_dev_remove(ptr nocapture noundef %pusb_intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %add.ptr.i23 = getelementptr i8, ptr %1, i32 2304
  %rtl8712_fw_ready = getelementptr i8, ptr %1, i32 16296
  tail call void @wait_for_completion(ptr noundef %rtl8712_fw_ready) #6
  %reg_state = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 121
  %4 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp.not = icmp eq i8 %bf.load, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @unregister_netdev(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %driver_data.i.i, align 4
  %fw = getelementptr i8, ptr %1, i32 16196
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw, align 4
  tail call void @release_firmware(ptr noundef %7) #6
  %8 = load i32, ptr getelementptr inbounds (%struct.drv_priv, ptr @drvpriv, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %surprise_removed = getelementptr i8, ptr %1, i32 15949
  %9 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %surprise_removed, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @r8712_flush_rwctrl_works(ptr noundef %add.ptr.i23) #6
  tail call void @r8712_flush_led_works(ptr noundef %add.ptr.i23) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #6
  tail call void @r8712_stop_drv_timers(ptr noundef %add.ptr.i23) #6
  %bup.i = getelementptr i8, ptr %1, i32 15972
  %11 = ptrtoint ptr %bup.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end4.r871x_dev_unload.exit_crit_edge, label %if.then.i

if.end4.r871x_dev_unload.exit_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %r871x_dev_unload.exit

if.then.i:                                        ; preds = %if.end4
  %driver_stopped.i = getelementptr i8, ptr %1, i32 15948
  %13 = ptrtoint ptr %driver_stopped.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %driver_stopped.i, align 4
  %inirp_deinit.i.i = getelementptr i8, ptr %1, i32 2320
  %14 = ptrtoint ptr %inirp_deinit.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %inirp_deinit.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i.i, label %if.then.i.rtl871x_intf_stop.exit.i_crit_edge, label %if.then2.i.i

if.then.i.rtl871x_intf_stop.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl871x_intf_stop.exit.i

if.then2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 %15(ptr noundef %add.ptr.i23) #6
  br label %rtl871x_intf_stop.exit.i

rtl871x_intf_stop.exit.i:                         ; preds = %if.then2.i.i, %if.then.i.rtl871x_intf_stop.exit.i_crit_edge
  tail call void @r8712_usb_write_port_cancel(ptr noundef %add.ptr.i23) #6
  tail call void @r8712_stop_drv_threads(ptr noundef %add.ptr.i23) #6
  %surprise_removed.i = getelementptr i8, ptr %1, i32 15949
  %16 = ptrtoint ptr %surprise_removed.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %surprise_removed.i, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool1.not.i = icmp eq i8 %17, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %rtl871x_intf_stop.exit.i.if.end.i_crit_edge

rtl871x_intf_stop.exit.i.if.end.i_crit_edge:      ; preds = %rtl871x_intf_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then2.i:                                       ; preds = %rtl871x_intf_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %hw_init_completed.i = getelementptr i8, ptr %1, i32 15952
  %18 = ptrtoint ptr %hw_init_completed.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %hw_init_completed.i, align 8
  %call.i = tail call i32 @rtl8712_hal_deinit(ptr noundef %add.ptr.i23) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %rtl871x_intf_stop.exit.i.if.end.i_crit_edge
  %dvobj_deinit.i = getelementptr i8, ptr %1, i32 15964
  %19 = ptrtoint ptr %dvobj_deinit.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dvobj_deinit.i, align 4
  %tobool3.not.i = icmp eq ptr %20, null
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %20(ptr noundef %add.ptr.i23) #6
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %21 = ptrtoint ptr %bup.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %bup.i, align 4
  br label %r871x_dev_unload.exit

r871x_dev_unload.exit:                            ; preds = %if.end6.i, %if.end4.r871x_dev_unload.exit_crit_edge
  tail call void @r8712_free_drv_sw(ptr noundef %add.ptr.i23) #6
  tail call void @free_netdev(ptr noundef %1) #6
  tail call void @usb_put_dev(ptr noundef %add.ptr.i) #6
  %state = getelementptr i8, ptr %3, i32 -104
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp5.not = icmp eq i32 %23, 0
  br i1 %cmp5.not, label %r871x_dev_unload.exit.if.end8_crit_edge, label %if.then6

r871x_dev_unload.exit.if.end8_crit_edge:          ; preds = %r871x_dev_unload.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %r871x_dev_unload.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @usb_reset_device(ptr noundef %add.ptr.i) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %r871x_dev_unload.exit.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r871x_suspend(ptr nocapture noundef readonly %pusb_intf, [1 x i32] %state.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.28) #9
  %suspended = getelementptr i8, ptr %1, i32 15950
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %suspended, align 2
  %inirp_deinit.i = getelementptr i8, ptr %1, i32 2320
  %3 = ptrtoint ptr %inirp_deinit.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %inirp_deinit.i, align 8
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %entry.rtl871x_intf_stop.exit_crit_edge, label %if.then2.i

entry.rtl871x_intf_stop.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl871x_intf_stop.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %4(ptr noundef %add.ptr.i) #6
  br label %rtl871x_intf_stop.exit

rtl871x_intf_stop.exit:                           ; preds = %if.then2.i, %entry.rtl871x_intf_stop.exit_crit_edge
  tail call void @r8712_usb_write_port_cancel(ptr noundef %add.ptr.i) #6
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev_ops, align 8
  %ndo_stop = getelementptr inbounds %struct.net_device_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ndo_stop to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndo_stop, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %rtl871x_intf_stop.exit.if.end_crit_edge, label %if.then

rtl871x_intf_stop.exit.if.end_crit_edge:          ; preds = %rtl871x_intf_stop.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %rtl871x_intf_stop.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 %8(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %rtl871x_intf_stop.exit.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #6
  tail call void @netif_device_detach(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r871x_resume(ptr nocapture noundef readonly %pusb_intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %pusb_intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.29) #9
  tail call void @netif_device_attach(ptr noundef %1) #6
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  %ndo_open = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ndo_open to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_open, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 %5(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %suspended = getelementptr i8, ptr %1, i32 15950
  %6 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %suspended, align 2
  %inirp_init.i = getelementptr i8, ptr %1, i32 2316
  %7 = ptrtoint ptr %inirp_init.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inirp_init.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.rtl871x_intf_resume.exit_crit_edge, label %if.then.i

if.end.rtl871x_intf_resume.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl871x_intf_resume.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %8(ptr noundef %add.ptr.i) #6
  br label %rtl871x_intf_resume.exit

rtl871x_intf_resume.exit:                         ; preds = %if.then.i, %if.end.rtl871x_intf_resume.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_init_netdev() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8712_usb_dvobj_init(ptr noundef %padapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pusbdev = getelementptr inbounds %struct.dvobj_priv, ptr %padapter, i32 0, i32 5
  %0 = ptrtoint ptr %pusbdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pusbdev, align 4
  %2 = ptrtoint ptr %padapter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %padapter, ptr %padapter, align 4
  %eeprom_address_size = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 19
  %3 = ptrtoint ptr %eeprom_address_size to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 6, ptr %eeprom_address_size, align 1
  %4 = load ptr, ptr @pintf, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bNumEndpoints, align 1
  %conv = zext i8 %8 to i32
  %nr_endpoint = getelementptr inbounds %struct.dvobj_priv, ptr %padapter, i32 0, i32 1
  %9 = ptrtoint ptr %nr_endpoint to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %nr_endpoint, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp = icmp eq i32 %11, 3
  %ishighspeed = getelementptr inbounds %struct.dvobj_priv, ptr %padapter, i32 0, i32 2
  %. = zext i1 %cmp to i8
  %.str.23..str.26 = select i1 %cmp, ptr @.str.23, ptr @.str.26
  %12 = ptrtoint ptr %ishighspeed to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %., ptr %ishighspeed, align 4
  %dev8 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull %.str.23..str.26, i32 noundef %conv) #9
  %call = tail call i32 @r8712_alloc_io_queue(ptr noundef %padapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp ne i32 %call, 0
  %spec.select = zext i1 %cmp10 to i32
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @r8712_usb_dvobj_deinit(ptr nocapture noundef %padapter) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_usb_hal_bus_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_usb_inirp_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_usb_inirp_deinit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_init_drv_sw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_read8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_read32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mac_pton(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl871x_load_fw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_free_drv_sw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_alloc_io_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_flush_rwctrl_works(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_flush_led_works(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_stop_drv_timers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_r8712u__344_638_r8712u_drv_entry6, !1, !"__initcall__kmod_r8712u__344_638_r8712u_drv_entry6", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 638, i32 1}
!2 = !{ptr @__exitcall_r8712u_drv_halt, !3, !"__exitcall_r8712u_drv_halt", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 639, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 229, i32 21}
!6 = !{ptr @drvpriv, !7, !"drvpriv", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 228, i32 24}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 401, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @r871xu_drv_init._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @r871xu_drv_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !9, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 502, i32 4}
!22 = !{ptr @r871xu_drv_init._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @r871xu_drv_init._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 560, i32 4}
!26 = !{ptr @r871xu_drv_init._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @r871xu_drv_init._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 563, i32 4}
!30 = !{ptr @r871xu_drv_init._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @r871xu_drv_init._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @r871xu_drv_init.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 571, i32 2}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @r871xu_drv_init.__key.20, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 572, i32 2}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @pintf, !39, !"pintf", i1 false, i1 false}
!39 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 31, i32 30}
!40 = distinct !{null, !41, !"specific_device_id_tbl", i1 false, i1 false}
!41 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 166, i32 34}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 335, i32 10}
!44 = !{ptr @wlan_type, !45, !"wlan_type", i1 false, i1 false}
!45 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 334, i32 33}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 254, i32 3}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @r8712_usb_dvobj_init._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @r8712_usb_dvobj_init._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 258, i32 3}
!53 = !{ptr @r8712_usb_dvobj_init._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @r8712_usb_dvobj_init._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 197, i32 23}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 218, i32 24}
!59 = !{ptr @rtl871x_usb_id_tbl, !60, !"rtl871x_usb_id_tbl", i1 false, i1 false}
!60 = !{!"../drivers/staging/rtl8712/usb_intf.c", i32 38, i32 35}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i8 0, i8 2}
